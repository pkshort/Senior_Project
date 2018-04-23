var width = 1200,
    height = 700

// Define the div for the tooltip
var div = d3.select("body").append("div")	
    .attr("class", "tooltip")				
    .style("opacity", 0);

var svg = d3.select("body").append("svg")
    .attr("width", width)
    .attr("height", height);

var color = d3.scale.category20();

var force = d3.layout.force()
    .gravity(.5)
    .distance(10)
    .charge(-200)
    .size([width, height]);



// Generating API KEY - 

var url = 'http://neptune:8080/v1/getdata'


// turn this into a function
d3.json(url, function(error, json) {
  var edges = [];
    json.Links.forEach(function(e) { 
    var sourceNode = json.Nodes.filter(function(n) { return n.Id === e.Source; })[0],
    targetNode = json.Nodes.filter(function(n) { return n.Id === e.Target; })[0];
    	
    edges.push({source: sourceNode, target: targetNode, value: e.Value});
    });
    
  force
      .nodes(json.Nodes)
      .links(edges)
      .start();

  var link = svg.selectAll(".link")
      .data(edges)
    .enter().append("line")
      .attr("class", "link");

  var node = svg.selectAll(".node")
      .data(json.Nodes)
    .enter().append("g")
      .attr("class", "node")
  
      .call(force.drag);

    // 
  node.append("circle")
      .attr("class", "node")
      .attr("r", 5)
    .style("fill", function(d) { return color(d.Level); })
    .on("mouseover", function(d) {		
            div.transition()		
                .duration(200)		
                .style("opacity", .9);		
            div	.html(d.Name)	
                .style("left", (d3.event.pageX) + "px")		
                .style("top", (d3.event.pageY - 28) + "px");	
            })					
        .on("mouseout", function(d) {		
            div.transition()		
                .duration(500)		
                .style("opacity", 0);
    });

  // force function for placing nodes
  force.on("tick", function(e) {
      var k = e.alpha;
    link
        //.each(function(d) { d.source.y += k, d.target.y -= k; })
        .attr("x1", function(d) { return d.source.x; })
        .attr("y1", function(d) { return d.source.y; })
        .attr("x2", function(d) { return d.target.x; })
        .attr("y2", function(d) { return d.target.y; });

    node.attr("transform", function(d) { return "translate(" + d.x + "," + d.y + ")"; });
  });
});