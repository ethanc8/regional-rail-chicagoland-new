// https://github.com/freecomputinglab/rheo.ohrg.org/blob/main/pages/index.typ

#let div(_class, ..body) = html.elem("div", attrs: (class: _class), ..body)
#let button(_class, _aria, ..body) = html.elem("button", attrs: (class: _class, aria-label: _aria), ..body)
#let ul(_class, ..body) = html.elem("ul", attrs: (class: _class), ..body)
#let li(_class, ..body) = html.elem("li", attrs: (class: _class), ..body)
#let a(_href, ..body) = html.elem("a", attrs: (href: _href), ..body)
#let a-with-class(_href, _class, ..body) = html.elem("a", attrs: (href: _href, class: _class), ..body)
#let nav(_class, ..body) = html.elem("nav", attrs: (class: _class), ..body)
#let span(_class, ..body) = html.elem("span", attrs: (class: _class), ..body)

#let rheo-source-url = "https://github.com/freecomputinglab/rheo"
#let rheo-docs-source-url = "https://github.com/freecomputinglab/rheo.ohrg.org"
#let rheo-docs-url = "https://rheo.ohrg.org"
#let fcl-zulip-join-url = "https://freecomputinglab.zulipchat.com/join/dit724hcwgbhic3xxwkdpkqs/"

// NOTE: in the future, this can perhaps be provided by rheo
#let rheobook(current-page: none, doc) = {

  set text(font: ("Inter", "San Francisco", "Arial"))

  // NOTE: this links cannot be specified as ".typ" currently, as rheo only transforms links that
  // are registered in Typst's AST. As these links are directly rendered into HTML using `html.elem`,
  // rheo will just reproduce the URLs as specified.
  let pages = (
    (id: "index", title: "Introduction", file: "./"),
    (id: "fare-integration", title: "Fare integration", file: "./fare-integration.html"),
  )

  // Calculate previous and next pages for navigation
  let current-index = if current-page != none {
    pages.position(p => p.id == current-page)
  } else {
    none
  }

  // Set document title based on current page
  let page-title = if current-index != none {
    let ext = context if target() == "html" { "| Rheo" } else { "" }
    pages.at(current-index).title + ext 
  } else {
    "Rheo"
  }
  set document(title: page-title)

  let prev-page = if current-index != none and current-index > 0 {
    pages.at(current-index - 1)
  } else {
    none
  }

  let next-page = if current-index != none and current-index < pages.len() - 1 {
    pages.at(current-index + 1)
  } else {
    none
  }

  // RHEO_HACK: if_epub_start 
  // RHEO_HACK: if_epub_end 

  context if target() == "html" {
    div("topbar")[
      #button("sidebar-toggle", "Toggle sidebar")[
        #span("hamburger")
      ]
    // #a("/")[#div("topbar-title")[#image("img/header.svg", alt: "Rheo", height: 24pt)]]
      Regional Rail for Chicagoland DRAFT
    ]

    nav("sidebar")[
      // banner
      #div("banner")[
        #a("#")[]
      ]

      // sidebar
      #ul("sidebar-nav")[
        #for page in pages {
          let class = if page.id == current-page {"active"} else {""}
          li(class)[
            #a(page.file)[#page.title]
          ]
        }
      ]
    ]

    div("content")[
      // Main content
      #doc
    ]

    // Desktop navigation arrows - after all content including footnotes
    div("nav-arrows desktop-nav")[
      #if prev-page != none {
        a-with-class(prev-page.file, "nav-arrow prev-arrow")[
          #span("arrow-icon")[←]
          #span("arrow-text")[#prev-page.title]
        ]
      }
      #if next-page != none {
        a-with-class(next-page.file, "nav-arrow next-arrow")[
          #span("arrow-text")[#next-page.title]
          #span("arrow-icon")[→]
        ]
      }
    ]

    // Mobile navigation arrows - after all content including footnotes
    div("nav-arrows mobile-nav")[
      #if prev-page != none {
        a-with-class(prev-page.file, "nav-arrow prev-arrow")[
          #span("arrow-icon")[←]
          #span("arrow-text")[Previous]
        ]
      }
      #if next-page != none {
        a-with-class(next-page.file, "nav-arrow next-arrow")[
          #span("arrow-text")[Next]
          #span("arrow-icon")[→]
        ]
      }
    ]

    // Sidebar toggle script
    // Source: sidebar-toggle-source.js (human-readable)
    // Encoded: sidebar-toggle.js (base64-encoded to avoid HTML entity escaping)
    // To update: edit sidebar-toggle-source.js, then run: bash encode-js.sh
    html.elem("script")[#read("sidebar-toggle.js")];

  } else {
    context if target() == "paged" {
      set heading(numbering: "1.")
    }

    // Style code blocks with light border and background
    show raw.where(block: true): set block(fill: luma(250), stroke: 0.5pt + luma(200), radius: 2pt, inset: 8pt)

    doc
  }
}
