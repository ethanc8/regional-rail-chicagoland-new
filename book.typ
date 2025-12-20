#import "@preview/shiroa:0.3.1": *

#show: book

#book-meta(
  title: "Regional Rail for Chicagoland",
  authors: ("Ethan C",),
  summary: [
    #prefix-chapter("index.typ")[Introduction]
    // = Overview
    // - #chapter(none)[Overview]
    // = Improvement types
    // - #chapter(none)[Electrification]
    // - #chapter(none)[High platforms]
    // - #chapter(none)[Rolling stock]
    // - #chapter(none)[Fare integration]
    = Lines
    - #chapter("lines/ic-ssl.typ")[Illinois Central/South Shore Line system]
  ]
)



// re-export page template
#import "/templates/page.typ": project
#let book-page = project
