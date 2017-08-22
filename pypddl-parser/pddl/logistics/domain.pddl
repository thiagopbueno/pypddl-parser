(define (domain logistics)

  (:requirements :strips :typing :equality) 

  (:types object truck location airplane city airport)   ; default object

  (:predicates 
    (at ?obj - object ?loc - location)
    (in ?obj1 ?obj2 - object)
    (in-city ?loc - location ?city - city))
 
  (:action LOAD-TRUCK
    :parameters
     (?obj - object
      ?truck - truck
      ?loc - location)
    :precondition
     (and (at ?truck ?loc) (at ?obj ?loc))
    :effect
     (and (not (at ?obj ?loc)) (in ?obj ?truck)))

  (:action LOAD-AIRPLANE
    :parameters
     (?obj - object
      ?airplane - airplane
      ?loc - location)
    :precondition
     (and (at ?obj ?loc) (at ?airplane ?loc))
    :effect
     (and (not (at ?obj ?loc)) (in ?obj ?airplane)))

  (:action UNLOAD-TRUCK
    :parameters
     (?obj - object
      ?truck - truck
      ?loc - location)
    :precondition
     (and (at ?truck ?loc) (in ?obj ?truck))
    :effect
     (and (not (in ?obj ?truck)) (at ?obj ?loc)))

  (:action UNLOAD-AIRPLANE
    :parameters
     (?obj - object
      ?airplane - airplane
      ?loc - location)
    :precondition
     (and (in ?obj ?airplane) (at ?airplane ?loc))
    :effect
     (and (not (in ?obj ?airplane)) (at ?obj ?loc)))

  (:action DRIVE-TRUCK
    :parameters
     (?truck - truck
      ?loc-from ?loc-to - location
      ?city - city)
    :precondition
     (and 
      (not (= ?loc-from ?loc-to))
      (at ?truck ?loc-from)
      (in-city ?loc-from ?city)
      (in-city ?loc-to ?city))
    :effect
     (and (not (at ?truck ?loc-from)) (at ?truck ?loc-to)))

  (:action FLY-AIRPLANE
    :parameters
     (?airplane - airplane
      ?loc-from ?loc-to - airport)
    :precondition
     (and
      (not (= ?loc-from ?loc-to))
      (at ?airplane ?loc-from))
    :effect
     (and (not (at ?airplane ?loc-from)) (at ?airplane ?loc-to)))
)
