;; PDDL Problem File

(define (problem room01)
	
	(:domain robot)
	
	(:objects
		room1 - room
		box1 - box
		left right - arm
	)

	(:init
		(robot-at room1)
		(box-at box1 room1)
		(free left)
		(free right)
	)

	(:goal
		(and
			(box-at box1 room1)
		)
	)
)

