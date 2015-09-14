(define
	(domain grounded-ACTION)
	(:requirements :strips :action-costs)
	(:predicates
		( AT_ROBOT_HALL1 )
		( AT_ROBOT_ROOM6 )
		( AT_ROBOT_HALL2 )
		( AT_ROBOT_ROOM7 )
		( AT_ROBOT_ROOM2 )
		( HAS_MEDKIT_ROBOT )
		( HAS_ROBOT_MK1 )
		( DELIVERED_ROBOT_MK1_ROOM1 )
		( LOC_HAS_MEDKIT_ROOM1 )
		( AT_MK1_ROOM1 )
		( DELIVERED_ROBOT_MK1_ROOM2 )
		( LOC_HAS_MEDKIT_ROOM2 )
		( DELIVERED_ROBOT_MK1_ROOM6 )
		( LOC_HAS_MEDKIT_ROOM6 )
		( AT_MK1_ROOM6 )
		( DELIVERED_ROBOT_MK1_ROOM7 )
		( LOC_HAS_MEDKIT_ROOM7 )
		( AT_MK1_ROOM7 )
		( DELIVERED_ROBOT_MK1_HALL1 )
		( LOC_HAS_MEDKIT_HALL1 )
		( AT_MK1_HALL1 )
		( DELIVERED_ROBOT_MK1_HALL2 )
		( LOC_HAS_MEDKIT_HALL2 )
		( AT_MK1_HALL2 )
		( CONDUCTED_TRIAGE_ROBOT_ROOM1 )
		( CONDUCTED_TRIAGE_ROBOT_ROOM2 )
		( CONDUCTED_TRIAGE_ROBOT_ROOM6 )
		( CONDUCTED_TRIAGE_ROBOT_ROOM7 )
		( CONDUCTED_TRIAGE_ROBOT_HALL1 )
		( CONDUCTED_TRIAGE_ROBOT_HALL2 )
		( AT_ROBOT_HALL3 )
		( AT_ROBOT_HALL5 )
		( AT_ROBOT_HALL4 )
		( AT_ROBOT_ROOM5 )
		( AT_ROBOT_ROOM4 )
		( AT_ROBOT_ROOM3 )
		( HAS_ROBOT_MK2 )
		( HAS_ROBOT_MK3 )
		( HAS_ROBOT_MK4 )
		( DELIVERED_ROBOT_MK1_ROOM3 )
		( LOC_HAS_MEDKIT_ROOM3 )
		( AT_MK1_ROOM3 )
		( DELIVERED_ROBOT_MK1_ROOM4 )
		( LOC_HAS_MEDKIT_ROOM4 )
		( AT_MK1_ROOM4 )
		( DELIVERED_ROBOT_MK1_ROOM5 )
		( LOC_HAS_MEDKIT_ROOM5 )
		( AT_MK1_ROOM5 )
		( DELIVERED_ROBOT_MK1_HALL3 )
		( LOC_HAS_MEDKIT_HALL3 )
		( AT_MK1_HALL3 )
		( DELIVERED_ROBOT_MK1_HALL4 )
		( LOC_HAS_MEDKIT_HALL4 )
		( AT_MK1_HALL4 )
		( DELIVERED_ROBOT_MK1_HALL5 )
		( LOC_HAS_MEDKIT_HALL5 )
		( AT_MK1_HALL5 )
		( DELIVERED_ROBOT_MK2_ROOM1 )
		( AT_MK2_ROOM1 )
		( DELIVERED_ROBOT_MK2_ROOM2 )
		( AT_MK2_ROOM2 )
		( DELIVERED_ROBOT_MK2_ROOM3 )
		( DELIVERED_ROBOT_MK2_ROOM4 )
		( AT_MK2_ROOM4 )
		( DELIVERED_ROBOT_MK2_ROOM5 )
		( AT_MK2_ROOM5 )
		( DELIVERED_ROBOT_MK2_ROOM6 )
		( AT_MK2_ROOM6 )
		( DELIVERED_ROBOT_MK2_ROOM7 )
		( AT_MK2_ROOM7 )
		( DELIVERED_ROBOT_MK2_HALL1 )
		( AT_MK2_HALL1 )
		( DELIVERED_ROBOT_MK2_HALL2 )
		( AT_MK2_HALL2 )
		( DELIVERED_ROBOT_MK2_HALL3 )
		( AT_MK2_HALL3 )
		( DELIVERED_ROBOT_MK2_HALL4 )
		( AT_MK2_HALL4 )
		( DELIVERED_ROBOT_MK2_HALL5 )
		( AT_MK2_HALL5 )
		( DELIVERED_ROBOT_MK3_ROOM1 )
		( AT_MK3_ROOM1 )
		( DELIVERED_ROBOT_MK3_ROOM2 )
		( AT_MK3_ROOM2 )
		( DELIVERED_ROBOT_MK3_ROOM3 )
		( AT_MK3_ROOM3 )
		( DELIVERED_ROBOT_MK3_ROOM4 )
		( DELIVERED_ROBOT_MK3_ROOM5 )
		( AT_MK3_ROOM5 )
		( DELIVERED_ROBOT_MK3_ROOM6 )
		( AT_MK3_ROOM6 )
		( DELIVERED_ROBOT_MK3_ROOM7 )
		( AT_MK3_ROOM7 )
		( DELIVERED_ROBOT_MK3_HALL1 )
		( AT_MK3_HALL1 )
		( DELIVERED_ROBOT_MK3_HALL2 )
		( AT_MK3_HALL2 )
		( DELIVERED_ROBOT_MK3_HALL3 )
		( AT_MK3_HALL3 )
		( DELIVERED_ROBOT_MK3_HALL4 )
		( AT_MK3_HALL4 )
		( DELIVERED_ROBOT_MK3_HALL5 )
		( AT_MK3_HALL5 )
		( DELIVERED_ROBOT_MK4_ROOM1 )
		( AT_MK4_ROOM1 )
		( DELIVERED_ROBOT_MK4_ROOM2 )
		( AT_MK4_ROOM2 )
		( DELIVERED_ROBOT_MK4_ROOM3 )
		( AT_MK4_ROOM3 )
		( DELIVERED_ROBOT_MK4_ROOM4 )
		( AT_MK4_ROOM4 )
		( DELIVERED_ROBOT_MK4_ROOM5 )
		( DELIVERED_ROBOT_MK4_ROOM6 )
		( AT_MK4_ROOM6 )
		( DELIVERED_ROBOT_MK4_ROOM7 )
		( AT_MK4_ROOM7 )
		( DELIVERED_ROBOT_MK4_HALL1 )
		( AT_MK4_HALL1 )
		( DELIVERED_ROBOT_MK4_HALL2 )
		( AT_MK4_HALL2 )
		( DELIVERED_ROBOT_MK4_HALL3 )
		( AT_MK4_HALL3 )
		( DELIVERED_ROBOT_MK4_HALL4 )
		( AT_MK4_HALL4 )
		( DELIVERED_ROBOT_MK4_HALL5 )
		( AT_MK4_HALL5 )
		( CONDUCTED_TRIAGE_ROBOT_ROOM3 )
		( CONDUCTED_TRIAGE_ROBOT_ROOM4 )
		( CONDUCTED_TRIAGE_ROBOT_ROOM5 )
		( CONDUCTED_TRIAGE_ROBOT_HALL3 )
		( CONDUCTED_TRIAGE_ROBOT_HALL4 )
		( CONDUCTED_TRIAGE_ROBOT_HALL5 )
		( NOT-HAS_MEDKIT_ROBOT )
		( AT_MK4_ROOM5 )
		( AT_MK3_ROOM4 )
		( AT_MK2_ROOM3 )
		( AT_MK1_ROOM2 )
		( AT_ROBOT_ROOM1 )
	) 
	(:functions (total-cost))
	(:action NOOP
		:parameters ()
		:precondition
		(and
		)
		:effect
		(and
			(increase (total-cost) 0)
		)
	)
	(:action PICK_UP_MEDKIT_ROBOT_MK4_HALL5
		:parameters ()
		:precondition
		(and
			( AT_MK4_HALL5 )
			( AT_ROBOT_HALL5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_ROBOT )
			( HAS_ROBOT_MK4 )
			(not ( AT_MK4_HALL5 ))
			(not ( LOC_HAS_MEDKIT_HALL5 ))
			(not ( NOT-HAS_MEDKIT_ROBOT ))
		)
	)
	(:action PICK_UP_MEDKIT_ROBOT_MK4_HALL4
		:parameters ()
		:precondition
		(and
			( AT_MK4_HALL4 )
			( AT_ROBOT_HALL4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_ROBOT )
			( HAS_ROBOT_MK4 )
			(not ( AT_MK4_HALL4 ))
			(not ( LOC_HAS_MEDKIT_HALL4 ))
			(not ( NOT-HAS_MEDKIT_ROBOT ))
		)
	)
	(:action PICK_UP_MEDKIT_ROBOT_MK4_HALL3
		:parameters ()
		:precondition
		(and
			( AT_MK4_HALL3 )
			( AT_ROBOT_HALL3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_ROBOT )
			( HAS_ROBOT_MK4 )
			(not ( AT_MK4_HALL3 ))
			(not ( LOC_HAS_MEDKIT_HALL3 ))
			(not ( NOT-HAS_MEDKIT_ROBOT ))
		)
	)
	(:action PICK_UP_MEDKIT_ROBOT_MK4_HALL2
		:parameters ()
		:precondition
		(and
			( AT_MK4_HALL2 )
			( AT_ROBOT_HALL2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_ROBOT )
			( HAS_ROBOT_MK4 )
			(not ( AT_MK4_HALL2 ))
			(not ( LOC_HAS_MEDKIT_HALL2 ))
			(not ( NOT-HAS_MEDKIT_ROBOT ))
		)
	)
	(:action PICK_UP_MEDKIT_ROBOT_MK4_HALL1
		:parameters ()
		:precondition
		(and
			( AT_MK4_HALL1 )
			( AT_ROBOT_HALL1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_ROBOT )
			( HAS_ROBOT_MK4 )
			(not ( AT_MK4_HALL1 ))
			(not ( LOC_HAS_MEDKIT_HALL1 ))
			(not ( NOT-HAS_MEDKIT_ROBOT ))
		)
	)
	(:action PICK_UP_MEDKIT_ROBOT_MK4_ROOM7
		:parameters ()
		:precondition
		(and
			( AT_MK4_ROOM7 )
			( AT_ROBOT_ROOM7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_ROBOT )
			( HAS_ROBOT_MK4 )
			(not ( AT_MK4_ROOM7 ))
			(not ( LOC_HAS_MEDKIT_ROOM7 ))
			(not ( NOT-HAS_MEDKIT_ROBOT ))
		)
	)
	(:action PICK_UP_MEDKIT_ROBOT_MK4_ROOM6
		:parameters ()
		:precondition
		(and
			( AT_MK4_ROOM6 )
			( AT_ROBOT_ROOM6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_ROBOT )
			( HAS_ROBOT_MK4 )
			(not ( AT_MK4_ROOM6 ))
			(not ( LOC_HAS_MEDKIT_ROOM6 ))
			(not ( NOT-HAS_MEDKIT_ROBOT ))
		)
	)
	(:action PICK_UP_MEDKIT_ROBOT_MK4_ROOM4
		:parameters ()
		:precondition
		(and
			( AT_MK4_ROOM4 )
			( AT_ROBOT_ROOM4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_ROBOT )
			( HAS_ROBOT_MK4 )
			(not ( AT_MK4_ROOM4 ))
			(not ( LOC_HAS_MEDKIT_ROOM4 ))
			(not ( NOT-HAS_MEDKIT_ROBOT ))
		)
	)
	(:action PICK_UP_MEDKIT_ROBOT_MK4_ROOM3
		:parameters ()
		:precondition
		(and
			( AT_MK4_ROOM3 )
			( AT_ROBOT_ROOM3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_ROBOT )
			( HAS_ROBOT_MK4 )
			(not ( AT_MK4_ROOM3 ))
			(not ( LOC_HAS_MEDKIT_ROOM3 ))
			(not ( NOT-HAS_MEDKIT_ROBOT ))
		)
	)
	(:action PICK_UP_MEDKIT_ROBOT_MK4_ROOM2
		:parameters ()
		:precondition
		(and
			( AT_MK4_ROOM2 )
			( AT_ROBOT_ROOM2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_ROBOT )
			( HAS_ROBOT_MK4 )
			(not ( AT_MK4_ROOM2 ))
			(not ( LOC_HAS_MEDKIT_ROOM2 ))
			(not ( NOT-HAS_MEDKIT_ROBOT ))
		)
	)
	(:action PICK_UP_MEDKIT_ROBOT_MK4_ROOM1
		:parameters ()
		:precondition
		(and
			( AT_MK4_ROOM1 )
			( AT_ROBOT_ROOM1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_ROBOT )
			( HAS_ROBOT_MK4 )
			(not ( AT_MK4_ROOM1 ))
			(not ( LOC_HAS_MEDKIT_ROOM1 ))
			(not ( NOT-HAS_MEDKIT_ROBOT ))
		)
	)
	(:action PICK_UP_MEDKIT_ROBOT_MK3_HALL5
		:parameters ()
		:precondition
		(and
			( AT_MK3_HALL5 )
			( AT_ROBOT_HALL5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_ROBOT )
			( HAS_ROBOT_MK3 )
			(not ( AT_MK3_HALL5 ))
			(not ( LOC_HAS_MEDKIT_HALL5 ))
			(not ( NOT-HAS_MEDKIT_ROBOT ))
		)
	)
	(:action PICK_UP_MEDKIT_ROBOT_MK3_HALL4
		:parameters ()
		:precondition
		(and
			( AT_MK3_HALL4 )
			( AT_ROBOT_HALL4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_ROBOT )
			( HAS_ROBOT_MK3 )
			(not ( AT_MK3_HALL4 ))
			(not ( LOC_HAS_MEDKIT_HALL4 ))
			(not ( NOT-HAS_MEDKIT_ROBOT ))
		)
	)
	(:action PICK_UP_MEDKIT_ROBOT_MK3_HALL3
		:parameters ()
		:precondition
		(and
			( AT_MK3_HALL3 )
			( AT_ROBOT_HALL3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_ROBOT )
			( HAS_ROBOT_MK3 )
			(not ( AT_MK3_HALL3 ))
			(not ( LOC_HAS_MEDKIT_HALL3 ))
			(not ( NOT-HAS_MEDKIT_ROBOT ))
		)
	)
	(:action PICK_UP_MEDKIT_ROBOT_MK3_HALL2
		:parameters ()
		:precondition
		(and
			( AT_MK3_HALL2 )
			( AT_ROBOT_HALL2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_ROBOT )
			( HAS_ROBOT_MK3 )
			(not ( AT_MK3_HALL2 ))
			(not ( LOC_HAS_MEDKIT_HALL2 ))
			(not ( NOT-HAS_MEDKIT_ROBOT ))
		)
	)
	(:action PICK_UP_MEDKIT_ROBOT_MK3_HALL1
		:parameters ()
		:precondition
		(and
			( AT_MK3_HALL1 )
			( AT_ROBOT_HALL1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_ROBOT )
			( HAS_ROBOT_MK3 )
			(not ( AT_MK3_HALL1 ))
			(not ( LOC_HAS_MEDKIT_HALL1 ))
			(not ( NOT-HAS_MEDKIT_ROBOT ))
		)
	)
	(:action PICK_UP_MEDKIT_ROBOT_MK3_ROOM7
		:parameters ()
		:precondition
		(and
			( AT_MK3_ROOM7 )
			( AT_ROBOT_ROOM7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_ROBOT )
			( HAS_ROBOT_MK3 )
			(not ( AT_MK3_ROOM7 ))
			(not ( LOC_HAS_MEDKIT_ROOM7 ))
			(not ( NOT-HAS_MEDKIT_ROBOT ))
		)
	)
	(:action PICK_UP_MEDKIT_ROBOT_MK3_ROOM6
		:parameters ()
		:precondition
		(and
			( AT_MK3_ROOM6 )
			( AT_ROBOT_ROOM6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_ROBOT )
			( HAS_ROBOT_MK3 )
			(not ( AT_MK3_ROOM6 ))
			(not ( LOC_HAS_MEDKIT_ROOM6 ))
			(not ( NOT-HAS_MEDKIT_ROBOT ))
		)
	)
	(:action PICK_UP_MEDKIT_ROBOT_MK3_ROOM5
		:parameters ()
		:precondition
		(and
			( AT_MK3_ROOM5 )
			( AT_ROBOT_ROOM5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_ROBOT )
			( HAS_ROBOT_MK3 )
			(not ( AT_MK3_ROOM5 ))
			(not ( LOC_HAS_MEDKIT_ROOM5 ))
			(not ( NOT-HAS_MEDKIT_ROBOT ))
		)
	)
	(:action PICK_UP_MEDKIT_ROBOT_MK3_ROOM3
		:parameters ()
		:precondition
		(and
			( AT_MK3_ROOM3 )
			( AT_ROBOT_ROOM3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_ROBOT )
			( HAS_ROBOT_MK3 )
			(not ( AT_MK3_ROOM3 ))
			(not ( LOC_HAS_MEDKIT_ROOM3 ))
			(not ( NOT-HAS_MEDKIT_ROBOT ))
		)
	)
	(:action PICK_UP_MEDKIT_ROBOT_MK3_ROOM2
		:parameters ()
		:precondition
		(and
			( AT_MK3_ROOM2 )
			( AT_ROBOT_ROOM2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_ROBOT )
			( HAS_ROBOT_MK3 )
			(not ( AT_MK3_ROOM2 ))
			(not ( LOC_HAS_MEDKIT_ROOM2 ))
			(not ( NOT-HAS_MEDKIT_ROBOT ))
		)
	)
	(:action PICK_UP_MEDKIT_ROBOT_MK3_ROOM1
		:parameters ()
		:precondition
		(and
			( AT_MK3_ROOM1 )
			( AT_ROBOT_ROOM1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_ROBOT )
			( HAS_ROBOT_MK3 )
			(not ( AT_MK3_ROOM1 ))
			(not ( LOC_HAS_MEDKIT_ROOM1 ))
			(not ( NOT-HAS_MEDKIT_ROBOT ))
		)
	)
	(:action PICK_UP_MEDKIT_ROBOT_MK2_HALL5
		:parameters ()
		:precondition
		(and
			( AT_MK2_HALL5 )
			( AT_ROBOT_HALL5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_ROBOT )
			( HAS_ROBOT_MK2 )
			(not ( AT_MK2_HALL5 ))
			(not ( LOC_HAS_MEDKIT_HALL5 ))
			(not ( NOT-HAS_MEDKIT_ROBOT ))
		)
	)
	(:action PICK_UP_MEDKIT_ROBOT_MK2_HALL4
		:parameters ()
		:precondition
		(and
			( AT_MK2_HALL4 )
			( AT_ROBOT_HALL4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_ROBOT )
			( HAS_ROBOT_MK2 )
			(not ( AT_MK2_HALL4 ))
			(not ( LOC_HAS_MEDKIT_HALL4 ))
			(not ( NOT-HAS_MEDKIT_ROBOT ))
		)
	)
	(:action PICK_UP_MEDKIT_ROBOT_MK2_HALL3
		:parameters ()
		:precondition
		(and
			( AT_MK2_HALL3 )
			( AT_ROBOT_HALL3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_ROBOT )
			( HAS_ROBOT_MK2 )
			(not ( AT_MK2_HALL3 ))
			(not ( LOC_HAS_MEDKIT_HALL3 ))
			(not ( NOT-HAS_MEDKIT_ROBOT ))
		)
	)
	(:action PICK_UP_MEDKIT_ROBOT_MK2_HALL2
		:parameters ()
		:precondition
		(and
			( AT_MK2_HALL2 )
			( AT_ROBOT_HALL2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_ROBOT )
			( HAS_ROBOT_MK2 )
			(not ( AT_MK2_HALL2 ))
			(not ( LOC_HAS_MEDKIT_HALL2 ))
			(not ( NOT-HAS_MEDKIT_ROBOT ))
		)
	)
	(:action PICK_UP_MEDKIT_ROBOT_MK2_HALL1
		:parameters ()
		:precondition
		(and
			( AT_MK2_HALL1 )
			( AT_ROBOT_HALL1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_ROBOT )
			( HAS_ROBOT_MK2 )
			(not ( AT_MK2_HALL1 ))
			(not ( LOC_HAS_MEDKIT_HALL1 ))
			(not ( NOT-HAS_MEDKIT_ROBOT ))
		)
	)
	(:action PICK_UP_MEDKIT_ROBOT_MK2_ROOM7
		:parameters ()
		:precondition
		(and
			( AT_MK2_ROOM7 )
			( AT_ROBOT_ROOM7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_ROBOT )
			( HAS_ROBOT_MK2 )
			(not ( AT_MK2_ROOM7 ))
			(not ( LOC_HAS_MEDKIT_ROOM7 ))
			(not ( NOT-HAS_MEDKIT_ROBOT ))
		)
	)
	(:action PICK_UP_MEDKIT_ROBOT_MK2_ROOM6
		:parameters ()
		:precondition
		(and
			( AT_MK2_ROOM6 )
			( AT_ROBOT_ROOM6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_ROBOT )
			( HAS_ROBOT_MK2 )
			(not ( AT_MK2_ROOM6 ))
			(not ( LOC_HAS_MEDKIT_ROOM6 ))
			(not ( NOT-HAS_MEDKIT_ROBOT ))
		)
	)
	(:action PICK_UP_MEDKIT_ROBOT_MK2_ROOM5
		:parameters ()
		:precondition
		(and
			( AT_MK2_ROOM5 )
			( AT_ROBOT_ROOM5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_ROBOT )
			( HAS_ROBOT_MK2 )
			(not ( AT_MK2_ROOM5 ))
			(not ( LOC_HAS_MEDKIT_ROOM5 ))
			(not ( NOT-HAS_MEDKIT_ROBOT ))
		)
	)
	(:action PICK_UP_MEDKIT_ROBOT_MK2_ROOM4
		:parameters ()
		:precondition
		(and
			( AT_MK2_ROOM4 )
			( AT_ROBOT_ROOM4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_ROBOT )
			( HAS_ROBOT_MK2 )
			(not ( AT_MK2_ROOM4 ))
			(not ( LOC_HAS_MEDKIT_ROOM4 ))
			(not ( NOT-HAS_MEDKIT_ROBOT ))
		)
	)
	(:action PICK_UP_MEDKIT_ROBOT_MK2_ROOM2
		:parameters ()
		:precondition
		(and
			( AT_MK2_ROOM2 )
			( AT_ROBOT_ROOM2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_ROBOT )
			( HAS_ROBOT_MK2 )
			(not ( AT_MK2_ROOM2 ))
			(not ( LOC_HAS_MEDKIT_ROOM2 ))
			(not ( NOT-HAS_MEDKIT_ROBOT ))
		)
	)
	(:action PICK_UP_MEDKIT_ROBOT_MK2_ROOM1
		:parameters ()
		:precondition
		(and
			( AT_MK2_ROOM1 )
			( AT_ROBOT_ROOM1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_ROBOT )
			( HAS_ROBOT_MK2 )
			(not ( AT_MK2_ROOM1 ))
			(not ( LOC_HAS_MEDKIT_ROOM1 ))
			(not ( NOT-HAS_MEDKIT_ROBOT ))
		)
	)
	(:action PICK_UP_MEDKIT_ROBOT_MK1_HALL5
		:parameters ()
		:precondition
		(and
			( AT_MK1_HALL5 )
			( AT_ROBOT_HALL5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_ROBOT )
			( HAS_ROBOT_MK1 )
			(not ( AT_MK1_HALL5 ))
			(not ( LOC_HAS_MEDKIT_HALL5 ))
			(not ( NOT-HAS_MEDKIT_ROBOT ))
		)
	)
	(:action PICK_UP_MEDKIT_ROBOT_MK1_HALL4
		:parameters ()
		:precondition
		(and
			( AT_MK1_HALL4 )
			( AT_ROBOT_HALL4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_ROBOT )
			( HAS_ROBOT_MK1 )
			(not ( AT_MK1_HALL4 ))
			(not ( LOC_HAS_MEDKIT_HALL4 ))
			(not ( NOT-HAS_MEDKIT_ROBOT ))
		)
	)
	(:action PICK_UP_MEDKIT_ROBOT_MK1_HALL3
		:parameters ()
		:precondition
		(and
			( AT_MK1_HALL3 )
			( AT_ROBOT_HALL3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_ROBOT )
			( HAS_ROBOT_MK1 )
			(not ( AT_MK1_HALL3 ))
			(not ( LOC_HAS_MEDKIT_HALL3 ))
			(not ( NOT-HAS_MEDKIT_ROBOT ))
		)
	)
	(:action PICK_UP_MEDKIT_ROBOT_MK1_ROOM5
		:parameters ()
		:precondition
		(and
			( AT_MK1_ROOM5 )
			( AT_ROBOT_ROOM5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_ROBOT )
			( HAS_ROBOT_MK1 )
			(not ( AT_MK1_ROOM5 ))
			(not ( LOC_HAS_MEDKIT_ROOM5 ))
			(not ( NOT-HAS_MEDKIT_ROBOT ))
		)
	)
	(:action PICK_UP_MEDKIT_ROBOT_MK1_ROOM4
		:parameters ()
		:precondition
		(and
			( AT_MK1_ROOM4 )
			( AT_ROBOT_ROOM4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_ROBOT )
			( HAS_ROBOT_MK1 )
			(not ( AT_MK1_ROOM4 ))
			(not ( LOC_HAS_MEDKIT_ROOM4 ))
			(not ( NOT-HAS_MEDKIT_ROBOT ))
		)
	)
	(:action PICK_UP_MEDKIT_ROBOT_MK1_ROOM3
		:parameters ()
		:precondition
		(and
			( AT_MK1_ROOM3 )
			( AT_ROBOT_ROOM3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_ROBOT )
			( HAS_ROBOT_MK1 )
			(not ( AT_MK1_ROOM3 ))
			(not ( LOC_HAS_MEDKIT_ROOM3 ))
			(not ( NOT-HAS_MEDKIT_ROBOT ))
		)
	)
	(:action MOVE_ROBOT_ROOM3_ROOM4
		:parameters ()
		:precondition
		(and
			( AT_ROBOT_ROOM3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_ROBOT_ROOM4 )
			(not ( AT_ROBOT_ROOM3 ))
		)
	)
	(:action MOVE_ROBOT_ROOM4_HALL4
		:parameters ()
		:precondition
		(and
			( AT_ROBOT_ROOM4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_ROBOT_HALL4 )
			(not ( AT_ROBOT_ROOM4 ))
		)
	)
	(:action MOVE_ROBOT_ROOM5_HALL5
		:parameters ()
		:precondition
		(and
			( AT_ROBOT_ROOM5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_ROBOT_HALL5 )
			(not ( AT_ROBOT_ROOM5 ))
		)
	)
	(:action MOVE_ROBOT_HALL3_HALL4
		:parameters ()
		:precondition
		(and
			( AT_ROBOT_HALL3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_ROBOT_HALL4 )
			(not ( AT_ROBOT_HALL3 ))
		)
	)
	(:action MOVE_ROBOT_HALL4_HALL5
		:parameters ()
		:precondition
		(and
			( AT_ROBOT_HALL4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_ROBOT_HALL5 )
			(not ( AT_ROBOT_HALL4 ))
		)
	)
	(:action CONDUCT_TRIAGE_ROBOT_HALL5
		:parameters ()
		:precondition
		(and
			( HAS_MEDKIT_ROBOT )
			( AT_ROBOT_HALL5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CONDUCTED_TRIAGE_ROBOT_HALL5 )
		)
	)
	(:action CONDUCT_TRIAGE_ROBOT_HALL4
		:parameters ()
		:precondition
		(and
			( HAS_MEDKIT_ROBOT )
			( AT_ROBOT_HALL4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CONDUCTED_TRIAGE_ROBOT_HALL4 )
		)
	)
	(:action CONDUCT_TRIAGE_ROBOT_HALL3
		:parameters ()
		:precondition
		(and
			( HAS_MEDKIT_ROBOT )
			( AT_ROBOT_HALL3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CONDUCTED_TRIAGE_ROBOT_HALL3 )
		)
	)
	(:action CONDUCT_TRIAGE_ROBOT_ROOM5
		:parameters ()
		:precondition
		(and
			( HAS_MEDKIT_ROBOT )
			( AT_ROBOT_ROOM5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CONDUCTED_TRIAGE_ROBOT_ROOM5 )
		)
	)
	(:action CONDUCT_TRIAGE_ROBOT_ROOM4
		:parameters ()
		:precondition
		(and
			( HAS_MEDKIT_ROBOT )
			( AT_ROBOT_ROOM4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CONDUCTED_TRIAGE_ROBOT_ROOM4 )
		)
	)
	(:action CONDUCT_TRIAGE_ROBOT_ROOM3
		:parameters ()
		:precondition
		(and
			( HAS_MEDKIT_ROBOT )
			( AT_ROBOT_ROOM3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CONDUCTED_TRIAGE_ROBOT_ROOM3 )
		)
	)
	(:action DROP_OFF_ROBOT_MK4_HALL5
		:parameters ()
		:precondition
		(and
			( HAS_ROBOT_MK4 )
			( AT_ROBOT_HALL5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( NOT-HAS_MEDKIT_ROBOT )
			( DELIVERED_ROBOT_MK4_HALL5 )
			( LOC_HAS_MEDKIT_HALL5 )
			( AT_MK4_HALL5 )
			(not ( HAS_ROBOT_MK4 ))
			(not ( HAS_MEDKIT_ROBOT ))
		)
	)
	(:action DROP_OFF_ROBOT_MK4_HALL4
		:parameters ()
		:precondition
		(and
			( HAS_ROBOT_MK4 )
			( AT_ROBOT_HALL4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( NOT-HAS_MEDKIT_ROBOT )
			( DELIVERED_ROBOT_MK4_HALL4 )
			( LOC_HAS_MEDKIT_HALL4 )
			( AT_MK4_HALL4 )
			(not ( HAS_ROBOT_MK4 ))
			(not ( HAS_MEDKIT_ROBOT ))
		)
	)
	(:action DROP_OFF_ROBOT_MK4_HALL3
		:parameters ()
		:precondition
		(and
			( HAS_ROBOT_MK4 )
			( AT_ROBOT_HALL3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( NOT-HAS_MEDKIT_ROBOT )
			( DELIVERED_ROBOT_MK4_HALL3 )
			( LOC_HAS_MEDKIT_HALL3 )
			( AT_MK4_HALL3 )
			(not ( HAS_ROBOT_MK4 ))
			(not ( HAS_MEDKIT_ROBOT ))
		)
	)
	(:action DROP_OFF_ROBOT_MK4_HALL2
		:parameters ()
		:precondition
		(and
			( HAS_ROBOT_MK4 )
			( AT_ROBOT_HALL2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( NOT-HAS_MEDKIT_ROBOT )
			( DELIVERED_ROBOT_MK4_HALL2 )
			( LOC_HAS_MEDKIT_HALL2 )
			( AT_MK4_HALL2 )
			(not ( HAS_ROBOT_MK4 ))
			(not ( HAS_MEDKIT_ROBOT ))
		)
	)
	(:action DROP_OFF_ROBOT_MK4_HALL1
		:parameters ()
		:precondition
		(and
			( HAS_ROBOT_MK4 )
			( AT_ROBOT_HALL1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( NOT-HAS_MEDKIT_ROBOT )
			( DELIVERED_ROBOT_MK4_HALL1 )
			( LOC_HAS_MEDKIT_HALL1 )
			( AT_MK4_HALL1 )
			(not ( HAS_ROBOT_MK4 ))
			(not ( HAS_MEDKIT_ROBOT ))
		)
	)
	(:action DROP_OFF_ROBOT_MK4_ROOM7
		:parameters ()
		:precondition
		(and
			( HAS_ROBOT_MK4 )
			( AT_ROBOT_ROOM7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( NOT-HAS_MEDKIT_ROBOT )
			( DELIVERED_ROBOT_MK4_ROOM7 )
			( LOC_HAS_MEDKIT_ROOM7 )
			( AT_MK4_ROOM7 )
			(not ( HAS_ROBOT_MK4 ))
			(not ( HAS_MEDKIT_ROBOT ))
		)
	)
	(:action DROP_OFF_ROBOT_MK4_ROOM6
		:parameters ()
		:precondition
		(and
			( HAS_ROBOT_MK4 )
			( AT_ROBOT_ROOM6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( NOT-HAS_MEDKIT_ROBOT )
			( DELIVERED_ROBOT_MK4_ROOM6 )
			( LOC_HAS_MEDKIT_ROOM6 )
			( AT_MK4_ROOM6 )
			(not ( HAS_ROBOT_MK4 ))
			(not ( HAS_MEDKIT_ROBOT ))
		)
	)
	(:action DROP_OFF_ROBOT_MK4_ROOM5
		:parameters ()
		:precondition
		(and
			( HAS_ROBOT_MK4 )
			( AT_ROBOT_ROOM5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( NOT-HAS_MEDKIT_ROBOT )
			( DELIVERED_ROBOT_MK4_ROOM5 )
			( LOC_HAS_MEDKIT_ROOM5 )
			( AT_MK4_ROOM5 )
			(not ( HAS_ROBOT_MK4 ))
			(not ( HAS_MEDKIT_ROBOT ))
		)
	)
	(:action DROP_OFF_ROBOT_MK4_ROOM4
		:parameters ()
		:precondition
		(and
			( HAS_ROBOT_MK4 )
			( AT_ROBOT_ROOM4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( NOT-HAS_MEDKIT_ROBOT )
			( DELIVERED_ROBOT_MK4_ROOM4 )
			( LOC_HAS_MEDKIT_ROOM4 )
			( AT_MK4_ROOM4 )
			(not ( HAS_ROBOT_MK4 ))
			(not ( HAS_MEDKIT_ROBOT ))
		)
	)
	(:action DROP_OFF_ROBOT_MK4_ROOM3
		:parameters ()
		:precondition
		(and
			( HAS_ROBOT_MK4 )
			( AT_ROBOT_ROOM3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( NOT-HAS_MEDKIT_ROBOT )
			( DELIVERED_ROBOT_MK4_ROOM3 )
			( LOC_HAS_MEDKIT_ROOM3 )
			( AT_MK4_ROOM3 )
			(not ( HAS_ROBOT_MK4 ))
			(not ( HAS_MEDKIT_ROBOT ))
		)
	)
	(:action DROP_OFF_ROBOT_MK4_ROOM2
		:parameters ()
		:precondition
		(and
			( HAS_ROBOT_MK4 )
			( AT_ROBOT_ROOM2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( NOT-HAS_MEDKIT_ROBOT )
			( DELIVERED_ROBOT_MK4_ROOM2 )
			( LOC_HAS_MEDKIT_ROOM2 )
			( AT_MK4_ROOM2 )
			(not ( HAS_ROBOT_MK4 ))
			(not ( HAS_MEDKIT_ROBOT ))
		)
	)
	(:action DROP_OFF_ROBOT_MK4_ROOM1
		:parameters ()
		:precondition
		(and
			( HAS_ROBOT_MK4 )
			( AT_ROBOT_ROOM1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( NOT-HAS_MEDKIT_ROBOT )
			( DELIVERED_ROBOT_MK4_ROOM1 )
			( LOC_HAS_MEDKIT_ROOM1 )
			( AT_MK4_ROOM1 )
			(not ( HAS_ROBOT_MK4 ))
			(not ( HAS_MEDKIT_ROBOT ))
		)
	)
	(:action DROP_OFF_ROBOT_MK3_HALL5
		:parameters ()
		:precondition
		(and
			( HAS_ROBOT_MK3 )
			( AT_ROBOT_HALL5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( NOT-HAS_MEDKIT_ROBOT )
			( DELIVERED_ROBOT_MK3_HALL5 )
			( LOC_HAS_MEDKIT_HALL5 )
			( AT_MK3_HALL5 )
			(not ( HAS_ROBOT_MK3 ))
			(not ( HAS_MEDKIT_ROBOT ))
		)
	)
	(:action DROP_OFF_ROBOT_MK3_HALL4
		:parameters ()
		:precondition
		(and
			( HAS_ROBOT_MK3 )
			( AT_ROBOT_HALL4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( NOT-HAS_MEDKIT_ROBOT )
			( DELIVERED_ROBOT_MK3_HALL4 )
			( LOC_HAS_MEDKIT_HALL4 )
			( AT_MK3_HALL4 )
			(not ( HAS_ROBOT_MK3 ))
			(not ( HAS_MEDKIT_ROBOT ))
		)
	)
	(:action DROP_OFF_ROBOT_MK3_HALL3
		:parameters ()
		:precondition
		(and
			( HAS_ROBOT_MK3 )
			( AT_ROBOT_HALL3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( NOT-HAS_MEDKIT_ROBOT )
			( DELIVERED_ROBOT_MK3_HALL3 )
			( LOC_HAS_MEDKIT_HALL3 )
			( AT_MK3_HALL3 )
			(not ( HAS_ROBOT_MK3 ))
			(not ( HAS_MEDKIT_ROBOT ))
		)
	)
	(:action DROP_OFF_ROBOT_MK3_HALL2
		:parameters ()
		:precondition
		(and
			( HAS_ROBOT_MK3 )
			( AT_ROBOT_HALL2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( NOT-HAS_MEDKIT_ROBOT )
			( DELIVERED_ROBOT_MK3_HALL2 )
			( LOC_HAS_MEDKIT_HALL2 )
			( AT_MK3_HALL2 )
			(not ( HAS_ROBOT_MK3 ))
			(not ( HAS_MEDKIT_ROBOT ))
		)
	)
	(:action DROP_OFF_ROBOT_MK3_HALL1
		:parameters ()
		:precondition
		(and
			( HAS_ROBOT_MK3 )
			( AT_ROBOT_HALL1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( NOT-HAS_MEDKIT_ROBOT )
			( DELIVERED_ROBOT_MK3_HALL1 )
			( LOC_HAS_MEDKIT_HALL1 )
			( AT_MK3_HALL1 )
			(not ( HAS_ROBOT_MK3 ))
			(not ( HAS_MEDKIT_ROBOT ))
		)
	)
	(:action DROP_OFF_ROBOT_MK3_ROOM7
		:parameters ()
		:precondition
		(and
			( HAS_ROBOT_MK3 )
			( AT_ROBOT_ROOM7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( NOT-HAS_MEDKIT_ROBOT )
			( DELIVERED_ROBOT_MK3_ROOM7 )
			( LOC_HAS_MEDKIT_ROOM7 )
			( AT_MK3_ROOM7 )
			(not ( HAS_ROBOT_MK3 ))
			(not ( HAS_MEDKIT_ROBOT ))
		)
	)
	(:action DROP_OFF_ROBOT_MK3_ROOM6
		:parameters ()
		:precondition
		(and
			( HAS_ROBOT_MK3 )
			( AT_ROBOT_ROOM6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( NOT-HAS_MEDKIT_ROBOT )
			( DELIVERED_ROBOT_MK3_ROOM6 )
			( LOC_HAS_MEDKIT_ROOM6 )
			( AT_MK3_ROOM6 )
			(not ( HAS_ROBOT_MK3 ))
			(not ( HAS_MEDKIT_ROBOT ))
		)
	)
	(:action DROP_OFF_ROBOT_MK3_ROOM5
		:parameters ()
		:precondition
		(and
			( HAS_ROBOT_MK3 )
			( AT_ROBOT_ROOM5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( NOT-HAS_MEDKIT_ROBOT )
			( DELIVERED_ROBOT_MK3_ROOM5 )
			( LOC_HAS_MEDKIT_ROOM5 )
			( AT_MK3_ROOM5 )
			(not ( HAS_ROBOT_MK3 ))
			(not ( HAS_MEDKIT_ROBOT ))
		)
	)
	(:action DROP_OFF_ROBOT_MK3_ROOM4
		:parameters ()
		:precondition
		(and
			( HAS_ROBOT_MK3 )
			( AT_ROBOT_ROOM4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( NOT-HAS_MEDKIT_ROBOT )
			( DELIVERED_ROBOT_MK3_ROOM4 )
			( LOC_HAS_MEDKIT_ROOM4 )
			( AT_MK3_ROOM4 )
			(not ( HAS_ROBOT_MK3 ))
			(not ( HAS_MEDKIT_ROBOT ))
		)
	)
	(:action DROP_OFF_ROBOT_MK3_ROOM3
		:parameters ()
		:precondition
		(and
			( HAS_ROBOT_MK3 )
			( AT_ROBOT_ROOM3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( NOT-HAS_MEDKIT_ROBOT )
			( DELIVERED_ROBOT_MK3_ROOM3 )
			( LOC_HAS_MEDKIT_ROOM3 )
			( AT_MK3_ROOM3 )
			(not ( HAS_ROBOT_MK3 ))
			(not ( HAS_MEDKIT_ROBOT ))
		)
	)
	(:action DROP_OFF_ROBOT_MK3_ROOM2
		:parameters ()
		:precondition
		(and
			( HAS_ROBOT_MK3 )
			( AT_ROBOT_ROOM2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( NOT-HAS_MEDKIT_ROBOT )
			( DELIVERED_ROBOT_MK3_ROOM2 )
			( LOC_HAS_MEDKIT_ROOM2 )
			( AT_MK3_ROOM2 )
			(not ( HAS_ROBOT_MK3 ))
			(not ( HAS_MEDKIT_ROBOT ))
		)
	)
	(:action DROP_OFF_ROBOT_MK3_ROOM1
		:parameters ()
		:precondition
		(and
			( HAS_ROBOT_MK3 )
			( AT_ROBOT_ROOM1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( NOT-HAS_MEDKIT_ROBOT )
			( DELIVERED_ROBOT_MK3_ROOM1 )
			( LOC_HAS_MEDKIT_ROOM1 )
			( AT_MK3_ROOM1 )
			(not ( HAS_ROBOT_MK3 ))
			(not ( HAS_MEDKIT_ROBOT ))
		)
	)
	(:action DROP_OFF_ROBOT_MK2_HALL5
		:parameters ()
		:precondition
		(and
			( HAS_ROBOT_MK2 )
			( AT_ROBOT_HALL5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( NOT-HAS_MEDKIT_ROBOT )
			( DELIVERED_ROBOT_MK2_HALL5 )
			( LOC_HAS_MEDKIT_HALL5 )
			( AT_MK2_HALL5 )
			(not ( HAS_ROBOT_MK2 ))
			(not ( HAS_MEDKIT_ROBOT ))
		)
	)
	(:action DROP_OFF_ROBOT_MK2_HALL4
		:parameters ()
		:precondition
		(and
			( HAS_ROBOT_MK2 )
			( AT_ROBOT_HALL4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( NOT-HAS_MEDKIT_ROBOT )
			( DELIVERED_ROBOT_MK2_HALL4 )
			( LOC_HAS_MEDKIT_HALL4 )
			( AT_MK2_HALL4 )
			(not ( HAS_ROBOT_MK2 ))
			(not ( HAS_MEDKIT_ROBOT ))
		)
	)
	(:action DROP_OFF_ROBOT_MK2_HALL3
		:parameters ()
		:precondition
		(and
			( HAS_ROBOT_MK2 )
			( AT_ROBOT_HALL3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( NOT-HAS_MEDKIT_ROBOT )
			( DELIVERED_ROBOT_MK2_HALL3 )
			( LOC_HAS_MEDKIT_HALL3 )
			( AT_MK2_HALL3 )
			(not ( HAS_ROBOT_MK2 ))
			(not ( HAS_MEDKIT_ROBOT ))
		)
	)
	(:action DROP_OFF_ROBOT_MK2_HALL2
		:parameters ()
		:precondition
		(and
			( HAS_ROBOT_MK2 )
			( AT_ROBOT_HALL2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( NOT-HAS_MEDKIT_ROBOT )
			( DELIVERED_ROBOT_MK2_HALL2 )
			( LOC_HAS_MEDKIT_HALL2 )
			( AT_MK2_HALL2 )
			(not ( HAS_ROBOT_MK2 ))
			(not ( HAS_MEDKIT_ROBOT ))
		)
	)
	(:action DROP_OFF_ROBOT_MK2_HALL1
		:parameters ()
		:precondition
		(and
			( HAS_ROBOT_MK2 )
			( AT_ROBOT_HALL1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( NOT-HAS_MEDKIT_ROBOT )
			( DELIVERED_ROBOT_MK2_HALL1 )
			( LOC_HAS_MEDKIT_HALL1 )
			( AT_MK2_HALL1 )
			(not ( HAS_ROBOT_MK2 ))
			(not ( HAS_MEDKIT_ROBOT ))
		)
	)
	(:action DROP_OFF_ROBOT_MK2_ROOM7
		:parameters ()
		:precondition
		(and
			( HAS_ROBOT_MK2 )
			( AT_ROBOT_ROOM7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( NOT-HAS_MEDKIT_ROBOT )
			( DELIVERED_ROBOT_MK2_ROOM7 )
			( LOC_HAS_MEDKIT_ROOM7 )
			( AT_MK2_ROOM7 )
			(not ( HAS_ROBOT_MK2 ))
			(not ( HAS_MEDKIT_ROBOT ))
		)
	)
	(:action DROP_OFF_ROBOT_MK2_ROOM6
		:parameters ()
		:precondition
		(and
			( HAS_ROBOT_MK2 )
			( AT_ROBOT_ROOM6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( NOT-HAS_MEDKIT_ROBOT )
			( DELIVERED_ROBOT_MK2_ROOM6 )
			( LOC_HAS_MEDKIT_ROOM6 )
			( AT_MK2_ROOM6 )
			(not ( HAS_ROBOT_MK2 ))
			(not ( HAS_MEDKIT_ROBOT ))
		)
	)
	(:action DROP_OFF_ROBOT_MK2_ROOM5
		:parameters ()
		:precondition
		(and
			( HAS_ROBOT_MK2 )
			( AT_ROBOT_ROOM5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( NOT-HAS_MEDKIT_ROBOT )
			( DELIVERED_ROBOT_MK2_ROOM5 )
			( LOC_HAS_MEDKIT_ROOM5 )
			( AT_MK2_ROOM5 )
			(not ( HAS_ROBOT_MK2 ))
			(not ( HAS_MEDKIT_ROBOT ))
		)
	)
	(:action DROP_OFF_ROBOT_MK2_ROOM4
		:parameters ()
		:precondition
		(and
			( HAS_ROBOT_MK2 )
			( AT_ROBOT_ROOM4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( NOT-HAS_MEDKIT_ROBOT )
			( DELIVERED_ROBOT_MK2_ROOM4 )
			( LOC_HAS_MEDKIT_ROOM4 )
			( AT_MK2_ROOM4 )
			(not ( HAS_ROBOT_MK2 ))
			(not ( HAS_MEDKIT_ROBOT ))
		)
	)
	(:action DROP_OFF_ROBOT_MK2_ROOM3
		:parameters ()
		:precondition
		(and
			( HAS_ROBOT_MK2 )
			( AT_ROBOT_ROOM3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( NOT-HAS_MEDKIT_ROBOT )
			( DELIVERED_ROBOT_MK2_ROOM3 )
			( LOC_HAS_MEDKIT_ROOM3 )
			( AT_MK2_ROOM3 )
			(not ( HAS_ROBOT_MK2 ))
			(not ( HAS_MEDKIT_ROBOT ))
		)
	)
	(:action DROP_OFF_ROBOT_MK2_ROOM2
		:parameters ()
		:precondition
		(and
			( HAS_ROBOT_MK2 )
			( AT_ROBOT_ROOM2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( NOT-HAS_MEDKIT_ROBOT )
			( DELIVERED_ROBOT_MK2_ROOM2 )
			( LOC_HAS_MEDKIT_ROOM2 )
			( AT_MK2_ROOM2 )
			(not ( HAS_ROBOT_MK2 ))
			(not ( HAS_MEDKIT_ROBOT ))
		)
	)
	(:action DROP_OFF_ROBOT_MK2_ROOM1
		:parameters ()
		:precondition
		(and
			( HAS_ROBOT_MK2 )
			( AT_ROBOT_ROOM1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( NOT-HAS_MEDKIT_ROBOT )
			( DELIVERED_ROBOT_MK2_ROOM1 )
			( LOC_HAS_MEDKIT_ROOM1 )
			( AT_MK2_ROOM1 )
			(not ( HAS_ROBOT_MK2 ))
			(not ( HAS_MEDKIT_ROBOT ))
		)
	)
	(:action DROP_OFF_ROBOT_MK1_HALL5
		:parameters ()
		:precondition
		(and
			( HAS_ROBOT_MK1 )
			( AT_ROBOT_HALL5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( NOT-HAS_MEDKIT_ROBOT )
			( DELIVERED_ROBOT_MK1_HALL5 )
			( LOC_HAS_MEDKIT_HALL5 )
			( AT_MK1_HALL5 )
			(not ( HAS_ROBOT_MK1 ))
			(not ( HAS_MEDKIT_ROBOT ))
		)
	)
	(:action DROP_OFF_ROBOT_MK1_HALL4
		:parameters ()
		:precondition
		(and
			( HAS_ROBOT_MK1 )
			( AT_ROBOT_HALL4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( NOT-HAS_MEDKIT_ROBOT )
			( DELIVERED_ROBOT_MK1_HALL4 )
			( LOC_HAS_MEDKIT_HALL4 )
			( AT_MK1_HALL4 )
			(not ( HAS_ROBOT_MK1 ))
			(not ( HAS_MEDKIT_ROBOT ))
		)
	)
	(:action DROP_OFF_ROBOT_MK1_HALL3
		:parameters ()
		:precondition
		(and
			( HAS_ROBOT_MK1 )
			( AT_ROBOT_HALL3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( NOT-HAS_MEDKIT_ROBOT )
			( DELIVERED_ROBOT_MK1_HALL3 )
			( LOC_HAS_MEDKIT_HALL3 )
			( AT_MK1_HALL3 )
			(not ( HAS_ROBOT_MK1 ))
			(not ( HAS_MEDKIT_ROBOT ))
		)
	)
	(:action DROP_OFF_ROBOT_MK1_ROOM5
		:parameters ()
		:precondition
		(and
			( HAS_ROBOT_MK1 )
			( AT_ROBOT_ROOM5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( NOT-HAS_MEDKIT_ROBOT )
			( DELIVERED_ROBOT_MK1_ROOM5 )
			( LOC_HAS_MEDKIT_ROOM5 )
			( AT_MK1_ROOM5 )
			(not ( HAS_ROBOT_MK1 ))
			(not ( HAS_MEDKIT_ROBOT ))
		)
	)
	(:action DROP_OFF_ROBOT_MK1_ROOM4
		:parameters ()
		:precondition
		(and
			( HAS_ROBOT_MK1 )
			( AT_ROBOT_ROOM4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( NOT-HAS_MEDKIT_ROBOT )
			( DELIVERED_ROBOT_MK1_ROOM4 )
			( LOC_HAS_MEDKIT_ROOM4 )
			( AT_MK1_ROOM4 )
			(not ( HAS_ROBOT_MK1 ))
			(not ( HAS_MEDKIT_ROBOT ))
		)
	)
	(:action DROP_OFF_ROBOT_MK1_ROOM3
		:parameters ()
		:precondition
		(and
			( HAS_ROBOT_MK1 )
			( AT_ROBOT_ROOM3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( NOT-HAS_MEDKIT_ROBOT )
			( DELIVERED_ROBOT_MK1_ROOM3 )
			( LOC_HAS_MEDKIT_ROOM3 )
			( AT_MK1_ROOM3 )
			(not ( HAS_ROBOT_MK1 ))
			(not ( HAS_MEDKIT_ROBOT ))
		)
	)
	(:action PICK_UP_MEDKIT_ROBOT_MK4_ROOM5
		:parameters ()
		:precondition
		(and
			( AT_MK4_ROOM5 )
			( AT_ROBOT_ROOM5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_ROBOT )
			( HAS_ROBOT_MK4 )
			(not ( AT_MK4_ROOM5 ))
			(not ( LOC_HAS_MEDKIT_ROOM5 ))
			(not ( NOT-HAS_MEDKIT_ROBOT ))
		)
	)
	(:action PICK_UP_MEDKIT_ROBOT_MK3_ROOM4
		:parameters ()
		:precondition
		(and
			( AT_MK3_ROOM4 )
			( AT_ROBOT_ROOM4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_ROBOT )
			( HAS_ROBOT_MK3 )
			(not ( AT_MK3_ROOM4 ))
			(not ( LOC_HAS_MEDKIT_ROOM4 ))
			(not ( NOT-HAS_MEDKIT_ROBOT ))
		)
	)
	(:action PICK_UP_MEDKIT_ROBOT_MK2_ROOM3
		:parameters ()
		:precondition
		(and
			( AT_MK2_ROOM3 )
			( AT_ROBOT_ROOM3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_ROBOT )
			( HAS_ROBOT_MK2 )
			(not ( AT_MK2_ROOM3 ))
			(not ( LOC_HAS_MEDKIT_ROOM3 ))
			(not ( NOT-HAS_MEDKIT_ROBOT ))
		)
	)
	(:action PICK_UP_MEDKIT_ROBOT_MK1_HALL2
		:parameters ()
		:precondition
		(and
			( AT_MK1_HALL2 )
			( AT_ROBOT_HALL2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_ROBOT )
			( HAS_ROBOT_MK1 )
			(not ( AT_MK1_HALL2 ))
			(not ( LOC_HAS_MEDKIT_HALL2 ))
			(not ( NOT-HAS_MEDKIT_ROBOT ))
		)
	)
	(:action PICK_UP_MEDKIT_ROBOT_MK1_HALL1
		:parameters ()
		:precondition
		(and
			( AT_MK1_HALL1 )
			( AT_ROBOT_HALL1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_ROBOT )
			( HAS_ROBOT_MK1 )
			(not ( AT_MK1_HALL1 ))
			(not ( LOC_HAS_MEDKIT_HALL1 ))
			(not ( NOT-HAS_MEDKIT_ROBOT ))
		)
	)
	(:action PICK_UP_MEDKIT_ROBOT_MK1_ROOM7
		:parameters ()
		:precondition
		(and
			( AT_MK1_ROOM7 )
			( AT_ROBOT_ROOM7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_ROBOT )
			( HAS_ROBOT_MK1 )
			(not ( AT_MK1_ROOM7 ))
			(not ( LOC_HAS_MEDKIT_ROOM7 ))
			(not ( NOT-HAS_MEDKIT_ROBOT ))
		)
	)
	(:action PICK_UP_MEDKIT_ROBOT_MK1_ROOM6
		:parameters ()
		:precondition
		(and
			( AT_MK1_ROOM6 )
			( AT_ROBOT_ROOM6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_ROBOT )
			( HAS_ROBOT_MK1 )
			(not ( AT_MK1_ROOM6 ))
			(not ( LOC_HAS_MEDKIT_ROOM6 ))
			(not ( NOT-HAS_MEDKIT_ROBOT ))
		)
	)
	(:action PICK_UP_MEDKIT_ROBOT_MK1_ROOM1
		:parameters ()
		:precondition
		(and
			( AT_MK1_ROOM1 )
			( AT_ROBOT_ROOM1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_ROBOT )
			( HAS_ROBOT_MK1 )
			(not ( AT_MK1_ROOM1 ))
			(not ( LOC_HAS_MEDKIT_ROOM1 ))
			(not ( NOT-HAS_MEDKIT_ROBOT ))
		)
	)
	(:action MOVE_REVERSE_ROBOT_ROOM4_ROOM3
		:parameters ()
		:precondition
		(and
			( AT_ROBOT_ROOM4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_ROBOT_ROOM3 )
			(not ( AT_ROBOT_ROOM4 ))
		)
	)
	(:action MOVE_REVERSE_ROBOT_HALL4_ROOM4
		:parameters ()
		:precondition
		(and
			( AT_ROBOT_HALL4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_ROBOT_ROOM4 )
			(not ( AT_ROBOT_HALL4 ))
		)
	)
	(:action MOVE_REVERSE_ROBOT_HALL5_ROOM5
		:parameters ()
		:precondition
		(and
			( AT_ROBOT_HALL5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_ROBOT_ROOM5 )
			(not ( AT_ROBOT_HALL5 ))
		)
	)
	(:action MOVE_REVERSE_ROBOT_HALL5_ROOM7
		:parameters ()
		:precondition
		(and
			( AT_ROBOT_HALL5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_ROBOT_ROOM7 )
			(not ( AT_ROBOT_HALL5 ))
		)
	)
	(:action MOVE_REVERSE_ROBOT_HALL3_HALL2
		:parameters ()
		:precondition
		(and
			( AT_ROBOT_HALL3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_ROBOT_HALL2 )
			(not ( AT_ROBOT_HALL3 ))
		)
	)
	(:action MOVE_REVERSE_ROBOT_HALL4_HALL3
		:parameters ()
		:precondition
		(and
			( AT_ROBOT_HALL4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_ROBOT_HALL3 )
			(not ( AT_ROBOT_HALL4 ))
		)
	)
	(:action MOVE_REVERSE_ROBOT_HALL5_HALL4
		:parameters ()
		:precondition
		(and
			( AT_ROBOT_HALL5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_ROBOT_HALL4 )
			(not ( AT_ROBOT_HALL5 ))
		)
	)
	(:action MOVE_ROBOT_ROOM2_HALL2
		:parameters ()
		:precondition
		(and
			( AT_ROBOT_ROOM2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_ROBOT_HALL2 )
			(not ( AT_ROBOT_ROOM2 ))
		)
	)
	(:action MOVE_ROBOT_ROOM7_HALL5
		:parameters ()
		:precondition
		(and
			( AT_ROBOT_ROOM7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_ROBOT_HALL5 )
			(not ( AT_ROBOT_ROOM7 ))
		)
	)
	(:action MOVE_ROBOT_ROOM7_ROOM6
		:parameters ()
		:precondition
		(and
			( AT_ROBOT_ROOM7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_ROBOT_ROOM6 )
			(not ( AT_ROBOT_ROOM7 ))
		)
	)
	(:action MOVE_ROBOT_HALL2_HALL3
		:parameters ()
		:precondition
		(and
			( AT_ROBOT_HALL2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_ROBOT_HALL3 )
			(not ( AT_ROBOT_HALL2 ))
		)
	)
	(:action CONDUCT_TRIAGE_ROBOT_HALL2
		:parameters ()
		:precondition
		(and
			( HAS_MEDKIT_ROBOT )
			( AT_ROBOT_HALL2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CONDUCTED_TRIAGE_ROBOT_HALL2 )
		)
	)
	(:action CONDUCT_TRIAGE_ROBOT_HALL1
		:parameters ()
		:precondition
		(and
			( HAS_MEDKIT_ROBOT )
			( AT_ROBOT_HALL1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CONDUCTED_TRIAGE_ROBOT_HALL1 )
		)
	)
	(:action CONDUCT_TRIAGE_ROBOT_ROOM7
		:parameters ()
		:precondition
		(and
			( HAS_MEDKIT_ROBOT )
			( AT_ROBOT_ROOM7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CONDUCTED_TRIAGE_ROBOT_ROOM7 )
		)
	)
	(:action CONDUCT_TRIAGE_ROBOT_ROOM6
		:parameters ()
		:precondition
		(and
			( HAS_MEDKIT_ROBOT )
			( AT_ROBOT_ROOM6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CONDUCTED_TRIAGE_ROBOT_ROOM6 )
		)
	)
	(:action CONDUCT_TRIAGE_ROBOT_ROOM2
		:parameters ()
		:precondition
		(and
			( HAS_MEDKIT_ROBOT )
			( AT_ROBOT_ROOM2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CONDUCTED_TRIAGE_ROBOT_ROOM2 )
		)
	)
	(:action CONDUCT_TRIAGE_ROBOT_ROOM1
		:parameters ()
		:precondition
		(and
			( HAS_MEDKIT_ROBOT )
			( AT_ROBOT_ROOM1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CONDUCTED_TRIAGE_ROBOT_ROOM1 )
		)
	)
	(:action DROP_OFF_ROBOT_MK1_HALL2
		:parameters ()
		:precondition
		(and
			( HAS_ROBOT_MK1 )
			( AT_ROBOT_HALL2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( NOT-HAS_MEDKIT_ROBOT )
			( DELIVERED_ROBOT_MK1_HALL2 )
			( LOC_HAS_MEDKIT_HALL2 )
			( AT_MK1_HALL2 )
			(not ( HAS_ROBOT_MK1 ))
			(not ( HAS_MEDKIT_ROBOT ))
		)
	)
	(:action DROP_OFF_ROBOT_MK1_HALL1
		:parameters ()
		:precondition
		(and
			( HAS_ROBOT_MK1 )
			( AT_ROBOT_HALL1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( NOT-HAS_MEDKIT_ROBOT )
			( DELIVERED_ROBOT_MK1_HALL1 )
			( LOC_HAS_MEDKIT_HALL1 )
			( AT_MK1_HALL1 )
			(not ( HAS_ROBOT_MK1 ))
			(not ( HAS_MEDKIT_ROBOT ))
		)
	)
	(:action DROP_OFF_ROBOT_MK1_ROOM7
		:parameters ()
		:precondition
		(and
			( HAS_ROBOT_MK1 )
			( AT_ROBOT_ROOM7 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( NOT-HAS_MEDKIT_ROBOT )
			( DELIVERED_ROBOT_MK1_ROOM7 )
			( LOC_HAS_MEDKIT_ROOM7 )
			( AT_MK1_ROOM7 )
			(not ( HAS_ROBOT_MK1 ))
			(not ( HAS_MEDKIT_ROBOT ))
		)
	)
	(:action DROP_OFF_ROBOT_MK1_ROOM6
		:parameters ()
		:precondition
		(and
			( HAS_ROBOT_MK1 )
			( AT_ROBOT_ROOM6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( NOT-HAS_MEDKIT_ROBOT )
			( DELIVERED_ROBOT_MK1_ROOM6 )
			( LOC_HAS_MEDKIT_ROOM6 )
			( AT_MK1_ROOM6 )
			(not ( HAS_ROBOT_MK1 ))
			(not ( HAS_MEDKIT_ROBOT ))
		)
	)
	(:action DROP_OFF_ROBOT_MK1_ROOM2
		:parameters ()
		:precondition
		(and
			( HAS_ROBOT_MK1 )
			( AT_ROBOT_ROOM2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( NOT-HAS_MEDKIT_ROBOT )
			( DELIVERED_ROBOT_MK1_ROOM2 )
			( LOC_HAS_MEDKIT_ROOM2 )
			( AT_MK1_ROOM2 )
			(not ( HAS_ROBOT_MK1 ))
			(not ( HAS_MEDKIT_ROBOT ))
		)
	)
	(:action DROP_OFF_ROBOT_MK1_ROOM1
		:parameters ()
		:precondition
		(and
			( HAS_ROBOT_MK1 )
			( AT_ROBOT_ROOM1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( NOT-HAS_MEDKIT_ROBOT )
			( DELIVERED_ROBOT_MK1_ROOM1 )
			( LOC_HAS_MEDKIT_ROOM1 )
			( AT_MK1_ROOM1 )
			(not ( HAS_ROBOT_MK1 ))
			(not ( HAS_MEDKIT_ROBOT ))
		)
	)
	(:action PICK_UP_MEDKIT_ROBOT_MK1_ROOM2
		:parameters ()
		:precondition
		(and
			( AT_MK1_ROOM2 )
			( AT_ROBOT_ROOM2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_ROBOT )
			( HAS_ROBOT_MK1 )
			(not ( AT_MK1_ROOM2 ))
			(not ( LOC_HAS_MEDKIT_ROOM2 ))
			(not ( NOT-HAS_MEDKIT_ROBOT ))
		)
	)
	(:action MOVE_REVERSE_ROBOT_HALL2_ROOM2
		:parameters ()
		:precondition
		(and
			( AT_ROBOT_HALL2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_ROBOT_ROOM2 )
			(not ( AT_ROBOT_HALL2 ))
		)
	)
	(:action MOVE_REVERSE_ROBOT_ROOM6_ROOM7
		:parameters ()
		:precondition
		(and
			( AT_ROBOT_ROOM6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_ROBOT_ROOM7 )
			(not ( AT_ROBOT_ROOM6 ))
		)
	)
	(:action MOVE_REVERSE_ROBOT_HALL2_HALL1
		:parameters ()
		:precondition
		(and
			( AT_ROBOT_HALL2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_ROBOT_HALL1 )
			(not ( AT_ROBOT_HALL2 ))
		)
	)
	(:action MOVE_ROBOT_ROOM6_HALL1
		:parameters ()
		:precondition
		(and
			( AT_ROBOT_ROOM6 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_ROBOT_HALL1 )
			(not ( AT_ROBOT_ROOM6 ))
		)
	)
	(:action MOVE_ROBOT_HALL1_HALL2
		:parameters ()
		:precondition
		(and
			( AT_ROBOT_HALL1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_ROBOT_HALL2 )
			(not ( AT_ROBOT_HALL1 ))
		)
	)
	(:action MOVE_REVERSE_ROBOT_HALL1_ROOM1
		:parameters ()
		:precondition
		(and
			( AT_ROBOT_HALL1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_ROBOT_ROOM1 )
			(not ( AT_ROBOT_HALL1 ))
		)
	)
	(:action MOVE_REVERSE_ROBOT_HALL1_ROOM6
		:parameters ()
		:precondition
		(and
			( AT_ROBOT_HALL1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_ROBOT_ROOM6 )
			(not ( AT_ROBOT_HALL1 ))
		)
	)
	(:action MOVE_ROBOT_ROOM1_HALL1
		:parameters ()
		:precondition
		(and
			( AT_ROBOT_ROOM1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_ROBOT_HALL1 )
			(not ( AT_ROBOT_ROOM1 ))
		)
	)

)
