(define
	(problem grounded-HALLWAY1)
	(:domain grounded-ACTION)
	(:init
		(= (total-cost) 0)
		( NOT-HAS_MEDKIT_HUMAN )
		( AT_MK2_ROOM3 )
		( AT_MK1_ROOM2 )
		( AT_HUMAN_ROOM7 )
		( NOT_EXPLAINED_MOVE_HUMAN_ROOM7_ROOM6_1 )
		( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
	)
	(:goal
		(and 
		( NOT-HAS_MEDKIT_HUMAN )
		( CONDUCTED_TRIAGE_HUMAN_ROOM5 )
		( EXPLAINED_FULL_OBS_SEQUENCE )
		)
	)
	(:metric minimize (total-cost))

)
