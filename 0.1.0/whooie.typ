#let indentlen = 1em

#let maketitle(
  title: none,
  author: none,
  date: none,
) = {
  if title != none { pad(align(center, text(size: 18pt, title)), bottom: 0.5mm) }
  if author != none { pad(align(center, text(size: 12pt, author)), bottom: 0.5mm) }
  if date != none { pad(align(center, text(size: 10pt, date)), bottom: 0.5mm) }
  if (title, author, date).any(thing => thing != none) { v(9mm) }
}

#let document(
  title: none,
  author: none,
  date: none,
  papersize: "us-letter",
  margins: (x: 0.8in, y: 0.8in),
  latexfont: true,
  numeq: true,
  linkcolor: rgb(0, 0, 255),
  refcolor: rgb(0, 0, 255),
  doc,
) = {
  set page(paper: papersize, margin: margins)
  set text(font: "New Computer Modern") if latexfont
  set math.equation(numbering: "(1)") if numeq
  set math.op(limits: true)
  set heading(numbering: "1.1.1")
  show heading: set block(above: 1.4em, below: 1em)
  set par(justify: true, leading: 0.55em, first-line-indent: indentlen)
  show par: set block(spacing: 0.55em)
  show link: it => text(fill: linkcolor, it)
  show ref: it => text(fill: refcolor, it)

  show "Schrodinger": "Schrödinger"

  maketitle(title: title, author: author, date: date)
  doc
}

#let indent = h(indentlen)
#let pheq = hide([$=$])
#let mkeq = [$accent(=, !)$]
#let pm = [$plus.minus$]
#let mp = [$minus.plus$]
#let text(x) = [$upright(#x)$]
#let slashed(x) = [$cancel(#x, rotation: #165deg)$]

// #import "@preview/babble-bubbles" // callouts
// #import "@preview/codetastic" // bar/qr codes
// #import "@preview/digraph" // graphviz
// #import "@preview/funarray" // array processing
// #import "@preview/i-figured" // figure numbering
// #import "@preview/lovelace" // algorithms/pseudocode
// #import "@preview/ouset" // over/underset
// #import "@preview/oxifmt" // rust-style string formatting
// #import "@preview/physica" // physics
// #import "@preview/plotst" // plotting
// #import "@preview/polylux" // presentation slides
// #import "@preview/quill" // quantum circuit diagrams
// #import "@preview/rubby" // furigana overset
// #import "@preview/showybox" // fancy boxes
// #import "@preview/splash" // colors
// #import "@preview/statastic" // statistics functions
// #import "@preview/tablex" // table rendering
// #import "@preview/tbl" // ```tbl concise table rendering
// #import "@preview/unify" // units
// #import "@preview/xarray" // variable-length arrows

