;; PDDL Problem File

(define (problem box17)
	
	(:domain robot)
	
	(:objects
		room1 room2 - room
		box1 box2 box3 box4 box5 box6 box7 box8 box9 box10 box11 box12 box13 box14 box15 box16 box17 - box
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
		(box-at box7 room1)
		(box-at box8 room1)
		(box-at box9 room1)
		(box-at box10 room1)
		(box-at box11 room1)
		(box-at box12 room1)
		(box-at box13 room1)
		(box-at box14 room1)
		(box-at box15 room1)
		(box-at box16 room1)
		(box-at box17 room1)
		(free left)
		(free right)
	)

	(:goal
		(and
			(box-at box1 room2)
			(box-at box2 room2)
			(box-at box3 room2)
			(box-at box4 room2)
			(box-at box5 room2)
			(box-at box6 room2)
			(box-at box7 room2)
			(box-at box8 room2)
			(box-at box9 room2)
			(box-at box10 room2)
			(box-at box11 room2)
			(box-at box12 room2)
			(box-at box13 room2)
			(box-at box14 room2)
			(box-at box15 room2)
			(box-at box16 room2)
			(box-at box17 room2)
		)
	)
)

