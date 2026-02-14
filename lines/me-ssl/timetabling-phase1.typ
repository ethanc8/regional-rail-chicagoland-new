#import "/book.typ": book-page

#show: book-page.with(title: "ME/SSL timetabling for phase 1")

= ME/SSL timetabling for phase 1

Importantly, *we only provide an off-peak timetable for ME/SSL* due to the capacity constraints at Kensington. During peak hours, the more traditional method of having a very unsymmetric timetable should probably be maintained. However, adjustments to the current timetable to have more understandable service patterns and maintain bus pulse points should be considered, if feasible.

== Goals

- Provide hourly frequency on a clockface schedule to important locations
- Provide for timed meets with buses at key locations (the selection of these locations is explained later)
- Provide as much frequency as we can to Hyde Park, to the inner ME Main Line, and to the South Chicago branch
  - These are some of the densest parts of the corridor, and are denser than much of the Dan Ryan branch of the Red Line
  - These are urban areas not well-served by rapid transit
- Provide easy-to-understand service patterns

== Selecting bus pulse points

// TODO - Write why pulsing the buses is important

To be a useful bus pulse point, a station needs to be:
- accessible by the road network without significant details
- a location where useful buses could radiate from
- if it's a train station, served by trains in both directions meeting at the same time
- pulsing at the even intervals, for both inbound and outbound trips
  - For example, it could pulse at :00 and :30, at :15 and :45, or at :00, :20, and :40
  - This means that many different services all converge at the same time, so that riders can easily transfer between them.

=== Kensington

// TODO - write up why Kensington might be a good pulse point

However, capacity constraints at Kensington, explained below, prevent us from making good timetables where Kensington is served at even intervals.

=== Final pulse point selection

Note that the feasibility of these depends on our timetabling efforts below. Thus, we might need to eliminate some pulse points if the trains are not able to meet the buses at that time.

- Harvey
- Blue Island (Vermont St)
- Hammond Gateway
- Gary Metro Center
- Michigan City, 11th St

Additionally, a few pulse points appeared "accidentally" after our timetabling activity:
- Munster/Dyer Main St

== Assumptions

- We ignore the capacity problem at Millennium Station
  - It is hard to understand this problem, and we need to find solutions for this in any case
  - This timetable might be used for a later phase, after Millennium Station capacity improvements are done but before Kensington capacity improvements
- At Kensington, only 2 trains may be in the area at a time.
- If two trains are using the same track, they must be spaced at least 2 minutes apart in the timetable
  - This is a general rule of thumb; the 2015 ME timetable had trains spaced 1.5 minutes apart immediately south of Kensington, according to the stringline graphs in the 2015 capacity study // TODO - Cite the study
  - We assume this does not apply to the terminal at Millennium
- The infrastructure available will be the same as today, except that Monon Corridor will be fully operational
- The same tickets can be used to travel on NICTD and Metra trains between Kensington and Millennium, so customers will not care too much about which operator's train they take on that segment

=== Kensington capacity issues

// TODO

== Runtimes

We use the following sources for runtimes:
- #link("https://schedules.metrarail.com/pdf/ME.pdf")[The current ME timetable]
- #link("http://irm-cta.org/TT/Metra/ME/ME_2014-06-29_(2015-02-01).pdf")[The 2015 ME timetable]
- #link("https://mysouthshoreline.com/wp-content/uploads/2025/11/Monon-Draft-Schedule.pdf")[The draft SSL/Monon timetable]
- #link("https://web.archive.org/web/20100331050743if_/http://www.nictd.com/pdf/Schedules.pdf")[The 2010 SSL timetable]

Most of these are taken from inbound trains, for consistency.

We want to have all the express trains make the same stops, as this increases the effective frequency and makes the timetable easy for customers to understand. We propose the following stops:
- Millennium
- Van Buren
- Museum Campus/11th St
- 57th St
- Kensington/115th St

Most trains will go local after this, as this is off-peak, but later on we discovered that it was impossible to serve Harvey at both :00 and :30 without introducing express trains or removing cross-platform local-express transfers at Kensington. Thus, one train per hour stops at:
- Kensington/115th St
- Harvey
- Homewood
- and all local stops south of Homewood

And here are the runtimes we need:
- Millennium Station to 11th St: *6 min*
  - This travel time is followed by nearly all trains on the current ME timetable
- 11th St to 57th St
  - Express: *8 min*
    - See the current ME inbound peak train \#724
  - Local: *11 min*
    - See the current ME inbound off-peak train \#216
- (Local) 57th St to 63rd St: *3 min*
  - See the current ME inbound off-peak train \#216
- 63rd St to 93rd/South Chicago: *23 min*
  - See the current ME inbound off-peak train \#318
- (Local) 63rd St to Kensington/115th St: *17 min* (excl. Kensington dwell)
  - See the current ME inbound off-peak train \#216
  - Note that it took 37 min in 2015, I'm not sure why there is a discrepancy
- (Express) 57th St to Kensington/115th St: *10 min* (excl. Kensington dwell)
  - See the current ME inbound peak train \#724
- Kensington/115th St to Blue Island: *14 min* (excl. Kensington dwell)
  - See the current ME outbound off-peak train \#205
  - Outbound trains were used to avoid including the Kensington dwell time
- Kensington/115th St to Harvey (excl. Kensington dwell)
  - Local: *10-11 min*
    - See the current ME outbound off-peak trains \#105 and \#111
    - Outbound trains were used to avoid including the Kensington dwell time
  - Express: *8 min*
    - Calculated using #link("https://github.com/ethanc8/simple-rail-sim")[simple-rail-sim] with 7% schedule padding
    // TODO talk about the parameters used for simulation
- Harvey to Homewood
  - Local: *7 min*
    - See the current ME inbound off-peak train \#118
  - Express: *5 min*
    - Calculated using #link("https://github.com/ethanc8/simple-rail-sim")[simple-rail-sim] with 7% schedule padding
- Homewood to University Park: *16 min*
  - See the current ME inbound off-peak train \#118
- Kensington/115th St to Hammond Gateway: *14 min*
  - According to the 2010 timetable it's 10 minutes from Kensington to Hegewisch, in either direction
  - Under the Monon draft timetable it takes 4 minutes from Hammond Gateway to Hegewisch
- Hammond Gateway to Dyer: *15 min*
  - See any Hammond Gateway-Dyer shuttle in the Monon draft timetable
- Hammond Gateway to Gary Metro Center: *15 min*
  - See train \#122 in the Monon draft timetable
- Gary Metro Center to Michigan City, 11th St: *28 min*
  - See train \#122 in the Monon draft timetable
- Michigan City, 11th St to South Bend Airport: *49 min*
  - See weekend train \#512 in the Monon draft timetable

Note that the above runtimes include dwell times. At a most locations, we can just treat these dwell times as part of the runtimes, but at a few locations the dwell times are significant.

