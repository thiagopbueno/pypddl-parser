;; PDDL Problem File

(define (problem box02)
	
	(:domain robot)
	
	(:objects
		room1 room2 - room
		box1 box2 - box
		left right - arm
	)

	(:init
		(robot-at room1)
		(box-at box1 room1)
		(box-at box2 room1)
		(free left)
		(free right)
	)

	(:goal
		(and
			(box-at box1 room2)
			(box-at box2 room2)
		)
	)
)

