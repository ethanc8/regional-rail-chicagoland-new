#import "@preview/shiroa:0.3.1": *

#show: book

#book-meta(
  title: "Regional Rail for Chicagoland",
  authors: ("Ethan C",),
  summary: [
    #prefix-chapter("index.typ")[Introduction]
    = Overview
    - #chapter("overview/overview.typ")[Overview]
    = Core concepts
    - #chapter("core-concepts/fare-integration.typ")[Fare integration]
    - #chapter(none)[Electrification]
    - #chapter(none)[High platforms]
    - #chapter(none)[Rolling stock]
    - #chapter(none)[Improved timetabling]
    
    = Phase 1: No new infrastructure
    - #chapter("phase-1/introduction.typ")[Introduction]
    - #chapter("core-concepts/fare-integration.typ")[Fare integration]
    - #chapter(none)[ME/SSL]
    - #chapter(none)[RI]

    // = Phase 2: Capacity improvements

    // = Vision of the future network

    = Concepts and costs
    - #chapter("concepts-and-costs/stations.typ")[Stations]
  ]
)



// re-export page template
#import "/templates/page.typ": project
#let book-page = project
