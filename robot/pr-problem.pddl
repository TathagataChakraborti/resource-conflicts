(define
	(problem grounded-HALLWAY1)
	(:domain grounded-ACTION)
	(:init
		(= (total-cost) 0)
		( NOT-HAS_MEDKIT_ROBOT )
		( AT_MK4_ROOM5 )
		( AT_MK3_ROOM4 )
		( AT_MK2_ROOM3 )
		( AT_MK1_ROOM2 )
		( AT_ROBOT_ROOM1 )
	)
	(:goal
		(and 
		( NOT-HAS_MEDKIT_ROBOT )
		( CONDUCTED_TRIAGE_ROBOT_ROOM1 )
		)
	)
	(:metric minimize (total-cost))

)
