;; PDDL Problem File

(define (problem room06)
	
	(:domain robot)
	
	(:objects
		room1 room2 room3 room4 room5 room6 - room
		box1 box2 box3 box4 box5 box6 - box
		left right - arm
	)

	(:init
		(robot-at room1)
		(box-at box1 room1)
		(box-at box2 room1)
		(box-at box3 room1)
		(box-at box4 room1)
		(box-at box5 room1)
		(box-at box6 room1)
		(free left)
		(free right)
	)

	(:goal
		(and
			(box-at box1 room1)
			(box-at box2 room2)
			(box-at box3 room3)
			(box-at box4 room4)
			(box-at box5 room5)
			(box-at box6 room6)
		)
	)
)

