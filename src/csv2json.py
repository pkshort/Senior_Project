
import csv
import json


output = {'children': [], 'name': 'Ithaca College'}
school_out = {}
dept_out = {}
school = ''
department = ''
prof_name = None
prof_type = None

with open('csv_file.csv') as csv_file:
    for row in csv.DictReader(csv_file):
        if row['School'] != school:
            # New School found
            if school != '':
                output['children'].append(school_out)
            school_out = {'children': [], 'name': row['School']}
            school = row['School']

        if row['Department'] != department:
            # New department found
            if department != '':
                output['children'].append(dept_out)
            dept_out = {'name': row['Department'], 'children': []}
            department = row['Department']
        dept_out['children'].append({'name': row['Name'], 'type': row['profType'], })

with open('csv_file.json', 'w') as outfile:
    outfile.write(output, outfile)