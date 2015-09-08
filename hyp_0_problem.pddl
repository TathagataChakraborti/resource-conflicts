(define (problem hallway1) (:domain ACTION)
(:objects
human - agent
room3 hall4 room1 room4 hall1 hall2 hall3 hall5 room2 room5 - location
bxl - box
mk1 mk2 mk3 mk4 mk5 - medkit
)

(:init
(at human room5)
(at mk1 room1)
(at mk2 room2)
(at mk3 room3)
(at mk4 room4)
(at mk5 room5)
(connected room1 hall1)
(connected hall1 hall2)
(connected hall2 hall3)
(connected hall3 hall4)
(connected hall4 hall5)
(connected room2 hall2)
(connected room3 room4)
(connected room4 hall4)
(connected room5 hall5)
(connected room5 hall1)
)

(:goal (and
(conducted_triage human room1)
(not (has_medkit human))
))

)

