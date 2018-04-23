##!/usr/bin/python3
# -*- coding: utf-8 -*-

from ConfigParser import SafeConfigParser
import csv
import json
import logging
import mysql.connector


class GetNodes:
    # Feature switch to switch between csv and MySQL during development
    getfromcsv = False

    # Static Data for data definitions allowing iterations of the node tables
    levels = ['University', 'School', 'Department', 'Professor']
    tables = ['University', 'School', 'Dept', 'Professor']

    link_data = []
    node_data = []

    def __init__(self, config):
        if config.get('GetNodes', 'GetDataFromCSV') == 'True':
            logging.debug("Reading data from csv files")
            self.getfromcsv = True
        else:
            logging.debug("Reading data from MySQL Database")
            self.getfromcsv = False
        self.data_dir = config.get('GetNodes', 'DataDirectory')
        return

    # This will pull all the node and link data into a single dataset that can be converted into JSON
    def build_full_dataset(self):
        self.link_data = []
        self.node_data = []

        logging.debug("Start building data set")
        self.build_nodes()
        self.build_links()
        dataset = []
        dataset.append({"Nodes": [self.node_data]})
        dataset.append({"Links": [self.link_data]})
        logging.debug("Start building data set")
        return dataset

    # Read through the data tables to build the nodes
    def build_nodes(self):
        # Build the list of Nodes from the extracted data
        for level in range(0, 4):
            data = self.get_node_data(self.tables[level], level)
            for id, name in sorted(data.items()):
                self.node_data.append({"Id": id, "Name": name, "Level": str(level), "Type": self.levels[level]})
        return self.node_data

    # Read through the link tables and build the connections between nodes
    def build_links(self):
        # Setting this up to iterate through a list proved to be difficult so I call each list individually
        self.get_link_data('SchoolToUniv', 'univID', 0, 'schoolID', 1)
        self.get_link_data('DeptToSchool', 'schoolID', 1, 'deptID', 2)
        self.get_link_data('ProfToDept', 'deptID', 2, 'profID', 3)
        self.get_link_data('ProfToSchool', 'schoolID', 1, 'profID', 3)
        return self.link_data

    @staticmethod
    def generate_node_id(level, item_num):
        return "{}{}".format(level.zfill(2), item_num.zfill(4))

    # encapsulate getting the source data
    def get_node_data(self, table, level):
        data = dict()
        # switch to test from MySQL database or CSV files during development
        if self.getfromcsv:
            csv_file_name = "{}{}{}".format(self.data_dir, table, '.csv')
            with open(csv_file_name) as csv_file:
                for row in csv.DictReader(csv_file):
                    # Ugh - why didn't we use 'name' in all the tables??
                    if table == 'Professor':
                        name = "{} {}".format(row['firstName'], row['lastName'])
                    else:
                        name = row['name']
                    node_id = self.generate_node_id(str(level), str(row['id']))
                    data.update({node_id: name})
        else:
            cnx = mysql.connector.connect(user='root', password='world20lucky', host='localhost', database='kevin')
            cursor = cnx.cursor()
            query = ("SELECT * FROM {}".format(table))
            cursor.execute(query)

            for row in cursor:
                # Ugh - why didn't we use 'name' in all the tables??
                if table == 'Professor':
                    name = "{} {}".format(row[3], row[2])
                else:
                    name = row[1]
                node_id = self.generate_node_id(str(level), str(row[0]))
                data.update({node_id: name})

            cursor.close()
            cnx.close()
        return data

    def get_link_data(self, table, from_column, from_level, to_column, to_level):
        # switch to test from MySQL database or CSV files during development
        if self.getfromcsv:
            csv_file_name = "{}{}{}".format(self.data_dir, table, '.csv')
            with open(csv_file_name) as csv_file:
                for row in csv.DictReader(csv_file):
                    self.link_data.append({"Source": self.generate_node_id(str(from_level), str(row[from_column])),
                                           "Target": self.generate_node_id(str(to_level), str(row[to_column])),
                                           "Value": "0"})
        else:
            cnx = mysql.connector.connect(user='root', password='world20lucky', host='localhost', database='kevin')
            cursor = cnx.cursor()
            query = ("SELECT * FROM {}".format(table))
            cursor.execute(query)

            for row in cursor:
                self.link_data.append({"Source": self.generate_node_id(str(from_level), str(row[2])),
                                       "Target": self.generate_node_id(str(to_level), str(row[1])),
                                       "Value": "0"})

            cursor.close()
            cnx.close()
        return self.link_data


# Main program - here for testing only
if __name__ == '__main__':

    CONFIG_FILE = 'd3ex.ini'
    config = SafeConfigParser()
    config.read(CONFIG_FILE)

    # This is my 'testing' during development.
    logging.basicConfig(level=logging.DEBUG, format='%(asctime)s - %(levelname)s - %(message)s')

    gn = GetNodes(config)
    dataoutput = gn.build_full_dataset()
    print json.dumps(dataoutput)
    with open('output.json', 'w') as outfile:
        json.dump(dataoutput, outfile)

    exit()

    dataoutput = gn.get_node_data('University', 0)
    print json.dumps(dataoutput)
    dataoutput = gn.get_node_data('School', 1)
    print json.dumps(dataoutput)
    dataoutput = gn.get_node_data('Dept', 2)
    print json.dumps(dataoutput)
    dataoutput = gn.get_node_data('Professor', 3)
    print json.dumps(dataoutput)

    dataoutput = gn.build_links()
    print json.dumps(dataoutput)
    print json.dumps(gn.link_data)

    exit(0)

