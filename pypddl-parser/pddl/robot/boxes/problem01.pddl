;; PDDL Problem File

(define (problem box01)
	
	(:domain robot)
	
	(:objects
		room1 room2 - room
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
			(box-at box1 room2)
		)
	)
)

