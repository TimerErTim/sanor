#import "@local/sanor:0.3.0": *

#set page(paper: "presentation-16-9")
#set text(size: 30pt)
// start-example
#slide(s => ([
#import components.cetz as cc // Import the component

= CeTZ Components

#cetz.canvas({
  import cetz.draw: * 
  cc.circle(s, (0, 0))
  // default name is 'c-' + element's function
  line("c-circle.east", (rel: (3, 0)), name: "l1")
  // name of the CeTZ objects will be used as a name in tag too
  cc.rect(s, (6, -1), (8, 1), name: "r1")
})
#s.push("c-circle")
#s.push(apply("c-circle", fill: red, radius: 3))
#s.push("r1")
#s.push(apply("r1", stroke: green + 5pt))
], s))
