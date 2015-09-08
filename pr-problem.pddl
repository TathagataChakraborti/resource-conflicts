(define
	(problem grounded-HALLWAY1)
	(:domain grounded-ACTION)
	(:init
		(= (total-cost) 0)
		( NOT-HAS_MEDKIT_HUMAN )
		( AT_MK2_HALL4 )
		( AT_MK1_ROOM1 )
		( AT_HUMAN_ROOM5 )
		( NOT_EXPLAINED_MOVE_HUMAN_ROOM5_HALL1_1 )
		( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
	)
	(:goal
		(and 
		( NOT-HAS_MEDKIT_HUMAN )
		( CONDUCTED_TRIAGE_HUMAN_ROOM4 )
		( EXPLAINED_FULL_OBS_SEQUENCE )
		)
	)
	(:metric minimize (total-cost))

)
