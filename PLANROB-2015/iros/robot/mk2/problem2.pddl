(define
	(problem grounded-HALLWAY1)
	(:domain grounded-ACTION)
	(:init
		(= (total-cost) 0)
		( AT_MK2_ROOM3 )
		( AT_MK1_ROOM2 )
		( AT_ROBOT_ROOM4 )
	)
	(:goal
		(and 
		( CONDUCTED_TRIAGE_ROBOT_ROOM1 )
		(not ( HAS_MEDKIT_ROBOT ))
		)
	)
	(:metric minimize (total-cost))

)
