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
    - #chapter("lines/up-n/index.typ")[UP-N]
      - #chapter(none)[Current and future demand]
      - #chapter(none)[Existing conditions]
      - #chapter(none)[Bus connections]
        - #chapter(none)[The Kenosha bus system]
        - #chapter(none)[The Waukegan bus system]
        - #chapter(none)[The North Shore bus system]
        - #chapter(none)[The Evanston bus system]
      - #chapter(none)[Phase 1 - the current infrastructure]
      - #chapter(none)[Transformative improvement]
        - #chapter(none)[Electrification]
        - #chapter(none)[Level boarding]
        - #chapter(none)[Infill stations and other station facilities]
        - #chapter(none)[Reaching Milwaukee]
        - #chapter(none)[UP-N as the intercity route?]
        - #chapter(none)[Quad-tracking]
        - #chapter(none)[Cross-platform transfers with Purple]
        - #chapter(none)[Phasing the transformative improvements]

    = Concepts and costs
    - #chapter("concepts-and-costs/stations.typ")[Stations]
  ]
)



// re-export page template
#import "/templates/page.typ": project
#let book-page = project
