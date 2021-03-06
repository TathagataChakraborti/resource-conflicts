(define (problem hallway1) (:domain ACTION)
(:objects
	robot - agent
	room1 room2 room3 room4 room5 room6 room7 hall1 hall2 hall3 hall4 hall5 - location
	mk1 mk2 - medkit
)
 
(:init
	(at robot room1)                                                             
	(at mk1 room2)
	(at mk2 room3)
	(connected room1 hall1)
	(connected room2 hall2)
	(connected room3 room4)
	(connected room4 hall4)
	(connected room5 hall5)
	(connected room7 hall5)
	(connected room6 hall1)
	(connected room7 room6)
	(connected hall1 hall2)
	(connected hall2 hall3)
	(connected hall3 hall4)
	(connected hall4 hall5)
)

(:goal (and  
	(conducted_triage robot room1)
	(not (has_medkit robot))
))

)

