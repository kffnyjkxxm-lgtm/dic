#import "@preview/std:0.11.0": *

$$ for(include-before) $$
  $$ include-before $$
$$ endfor $$

$$ if(toc) $$
  #outline(
    title: auto,
    depth: $$ toc-depth $$,
  )
$$ endif $$

#set page(
  paper: "a4",
  margin: (x: 1cm, y: 1.5cm),
  columns: 4,
  footer: context align(center + horizon)[
    #set text(size: 8pt, fill: gray)
    #counter(page).display("1")
  ],
)

#set text(size: 8pt)

$$ body $$

$$ if(citations) $$
  $$ if(csl) $$
    #set bibliography(style: "$$ csl $$")
  $$ elseif(bibliographystyle) $$
    #set bibliography(style: "$$ bibliographystyle $$")
  $$ endif $$
  $$ if(bibliography) $$
    #bibliography("$$ bibliography $$")
  $$ endif $$
$$ endif $$

$$ for(include-after) $$
  $$ include-after $$
$$ endfor $$