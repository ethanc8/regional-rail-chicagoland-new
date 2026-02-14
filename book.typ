#import "@preview/shiroa:0.2.3": *

#show: book

#book-meta(
  title: "Regional Rail for Chicagoland DRAFT",
  authors: ("Ethan C",),
  summary: [
    #prefix-chapter("index.typ")[Introduction]
    #prefix-chapter("acknowledgements.typ")[Acknowledgements]
    = Overview
    - #chapter("overview/overview.typ")[Overview]
    = Core concepts
    - #chapter("core-concepts/fare-integration.typ")[Fare integration]
    - #chapter(none)[Electrification]
    - #chapter(none)[High platforms]
    - #chapter(none)[Rolling stock]
    - #chapter(none)[Improved timetabling]
    
    = Phase 1: The infrastructure of 2027
    - #chapter("phase-1/introduction.typ")[Introduction]
    - #chapter("core-concepts/fare-integration.typ")[Fare integration]
    - #chapter("lines/me-ssl/timetabling-phase1.typ")[ME/SSL]
    - #chapter(none)[RI]

    // = Phase 2: Capacity improvements

    // = Vision of the future network

    = Lines
    - #chapter("lines/me-ssl/index.typ")[ME/SSL]
      - #chapter("lines/me-ssl/timetabling-phase1.typ")[Timetabling for Phase 1]

    = Concepts and costs
    - #chapter("concepts-and-costs/stations.typ")[Stations]
  ]
)



// re-export page template
#import "/templates/page.typ": project
#let book-page = project
