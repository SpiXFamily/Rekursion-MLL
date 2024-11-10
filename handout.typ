//#set text(font: "Inter")
#set text(
  lang: "de"
)
#set figure.caption(position: top)
#set page(numbering: "1")
#set page(
header: [
  _Thanh Viet Nguyen_ //\ Matrikelnummer:  1810099  
  #h(1fr)
  Handout zur Rekursions Vortrag
])

#show figure.where(
  kind: table
): set figure.caption(position: top)


#set page(margin: (
  top: 2.5cm,
  bottom: 2.5cm,
  x: 1.5cm,
))

#set figure.caption(position: top)


== Zusatzaufgaben:

==== 3.10
 Diese rekursiv definierte Folge wird betrachtet: \
$b_n 
cases(
  1, "für" n =1 
  \ sqrt(1 + b_n) "für " n > 2 
).  
$
\ Zu zeigen ist, dass diese Folge gegen den Goldenenschnitt konvergiert: \
$lim_(n -> infinity) b_n = = (1+sqrt(5))/2 "für" n > 2$

==
- https://www.geeksforgeeks.org/recursive-functions/
