function encode_as_img_and_link(id){
 // Add some critical information
 var svg = d3.select(id).node().cloneNode(true);
 desaturate(svg);
 d3.select(svg)
    .attr('version', '1.1')
    .attr('xmlns',"http://www.w3.org/2000/svg")
  .select('g')
    .style('filter','url(#desaturate)')
 ;
 console.log(svg);
    
 var b64 = window.btoa(unescape(encodeURIComponent(svg.outerHTML)));

 // Works in recent Webkit(Chrome)
  $("body").append($("<img src='data:image/svg+xml;base64,\n"+b64+"' alt='chrome-file.svg'/>"));

 // Works in Firefox 3.6 and Webkit and possibly any browser which supports the data-uri
  $("body").append($("<a href-lang='image/svg+xml' href='data:image/svg+xml;base64,\n"+b64+"' title='chart.svg'>FF/webkit Download</a>"));
}

// add desaturation filter
desaturate = function(on) { d3.select(on).append('filter')
  .attr('id','desaturate')
  .append('feColorMatrix')
  .attr('type','matrix')
  .attr('values',"0.3333 0.3333 0.3333 0 0 0.3333 0.3333 0.3333 0 0 0.3333 0.3333 0.3333 0 0 0 0 0 1 0");
}
