;; PDDL Domain Specification File

(define (domain robot)

	(:requirements :strips :equality :typing)

	(:types room box arm)

	(:predicates
		(robot-at ?x - room)
		(box-at ?x - box ?y - room)
		(free ?x - arm)
		(carry ?x - box ?y - arm)
	)

	(:action move
		:parameters (?x ?y - room)
		:precondition (and (robot-at ?x) (not (= ?x ?y)))
		:effect (and (robot-at ?y) (not (robot-at ?x)))
	)

	(:action pickup
		:parameters (?x - box ?y - arm ?w - room)
		:precondition (and (free ?y) (robot-at ?w) (box-at ?x ?w))
		:effect (and (carry ?x ?y) (not (box-at ?x ?w)) (not(free ?y)))
	)

	(:action putdown
		:parameters (?x - box ?y - arm ?w - room)
		:precondition (and (carry ?x ?y) (robot-at ?w))
		:effect (and (not(carry ?x ?y)) (box-at ?x ?w) (free ?y))
	)
)
