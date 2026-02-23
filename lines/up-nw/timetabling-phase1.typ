#import "/book.typ": book-page

#show: book-page.with(title: "UP-NW timetabling for phase 1")

= UP-NW timetabling for phase 1

== Goals

- Provide bi-hourly frequency on a clockface schedule to most locations
- Provide for timed meets with buses at key locations (the selection of these locations is explained later)
- Provide easy-to-understand service patterns
- Provide express services at peak times
  - At peak times, if possible, local passengers should be able to transfer to express trains

== Needed runtimes

We use the following sources for runtimes:
- #link("https://schedules.metrarail.com/pdf/UP-NW.pdf")[The current UP-NW timetable]
- #link("http://irm-cta.org/TT/Metra/UP-NW/UP-NW_2019-09-03_(SummerWeekendExt).pdf")[The September 2019 timetable]

We have express trains stop at the following stations:
- Ogilvie
- Clybourn
  - Clybourn was selected due to the transfer with UP-N and its proximity to the Foundry Park (Lincoln Yards) development
- Jefferson Park
- Des Plaines
  - Des Plaines is in a useful location for buses pulsing out of it, is currently a major bus hub, and is the densest suburban station on the corridor
- Palatine
  - Palatine is a useful location for buses pulsing out of it
  - Palatine is the last of the high-ridership stops in the Des Plaines-Palatine stretch
- and all local stops after Palatine

Note that we don't make the locals stop at Gladstone Park. We could and it wouldn't change the timetable too much, but Gladstone Park has low ridership and is located in a hard-to-access freeway-adjacent area.

Here are the runtimes we need:
- Ogilvie to Clybourn: *11 min*
  - See weekday midday train 656
- Clybourn to Jefferson Park:
  - Local: *11 min*
    - See weekday midday inbound train 656
  - Express: *5 min*
    - See weekday reverse-peak inbound train 660
- Jefferson Park to Des Plaines:
  - Local: *19 min*
    - See weekday midday inbound train 656
  - Express: *12 min*
    - See weekday reverse-peak inbound train 660
- Palatine to Des Plaines:
  - Local: *19 min*
    - See weekday midday inbound train 656
  - Express: *14 min*
    - 2019 weekday peak inbound train 620 took 11 min to travel Palatine-Cumberland
    - 2019 weekday peak inbound train 610 took 11 min to travel Arlington Park-Des Plaines
    - Des Plaines is 3 min away from Cumberland by local train
    - Palatine is 4 min away from Arlington Park by local train
- Palatine to Crystal Lake: *27 min*
  - See weekday midday inbound train 656
- Crystal Lake to Harvard: *25 min*
  - See weekday midday inbound train 656
