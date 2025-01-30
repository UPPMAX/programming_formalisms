---
tags:
  - shared
  - document
  - HackMD
---

# Day *4* Q&A

<!--- I remind you that these documents will be uploaded to the repository branch that will be created and that the NBIS training code of conduct should be followed. Be respectfull to eachother so you do not edit others posts. Hack md alows for simultaions editing. -->
<!--- Reminder do not edit anothers post, please use a fresh paragraph when typing hack md is a simultations editing tool-->
- Zoom: <https://uu-se.zoom.us/j/66409709879>
Passcode: 583470
- Material:


---------------------------------------------------

## A coordinate in 3 dimensions

What are their elements?

- Richel: left, right, personnumber
- Camille: cartesian or polar or spherical system of coordinates? You can pick, maybe a coordinathas x, y, z, system?
- Pontus: x, y, z.
- Harald: x, y, z/radius, azimuth, elevation
- Jesper: x,y,z
- .

- x,y,z
- [x,y,z]
- Urs: x, y, z (struct)
-
- RJD : [x,y,z]
-
- bz: x, y, z
-
- ah: x, y, z


## A speed in two dimensions

- Jesper: x,y; like a vector from origo (struct)
- Pontus: x, y. ~~Class (x > 0, y > 0) ~~
- RJD: direction, velocity, acceleration;
- direction, dx\/dt, dy\/dt
- Urs: v (> 0, class)
- Harald: v_x, v_y / angle, amplitude
- Veector X, Vector y
- v_x, v_y, both class
- ah: x, y, speed/velocity
-
-
-
-
-


## A circle

- RJD: radius (non-negative, class); coord of centre (structure)
- Camille: coordinates of the center (reusing the first class of the exercise?), radius > 0 --> class
- Jesper: radius (>0), position of center (x,y) (class)
- Pontus: radius > 0. Class
- Urs: radius (> 0, class) + center coordinates x, y (struct)
- Radius & center, class due to non-negative radius
- Harald: center coordinate, radius (class) / list of coordinates (class?)
- center (x, y), radius (r)
- radius (diameter), x, y
- radius (>0), origin (x,y)
- A list of arbertrary coordinates that are on the rim of the circle[Lars trhowing a spanner in the works]

## A square

- Camille: position of one corner + which corner + length of 1 side (>0) --> class
- Urs: side length (> 0, class) + coordinates of a corner or the center x, y (struct)
- position (x,y), side length (>0) (class)
- coords for the four ends, restrictions on distance between points, non-negative distances or area so class
- length, center
- Pontus: width, height > 0. Class
- corner point (x,y), length, width


## Class design?

Which classes does the project need?
Together:

- make an alphabetic list of structures in the shared document
- add exactly 1 maintainer to each struct

Put the list on the GitHub project repository

Form:

- Bacteria (Bacterium): Camille - it looks like there is a duplicate below, isn't it? +1
- BactParam: bacterial characteristics - in case of different species e.g no of flagella, wall thickness, sugar preference (alex)
- Bacterium (class): Pontus
- Coordinate (x, y): Pontus
- Environment (Space, nutrients, bacteria, temperature), Harald
- Food concentration (class), Cormac - we have this redundantly (nutrients)
- Motion type (run/tumble, timer): Jesper
- Nutrients (coordinates, concentration), Urs
- Run (length, direction, rotation), Josefine
- Spin direction, Thanadol
- Speed: Camille
- Shape: Shape, size of the bacteria, Yuhe
- Threshold : RJD: concentration threshold for initiating tumble
- Tempreture put in enviromnt?, Harald
- Tumble (direction, rotation), Josefine

# Day 4 feedback

## What went well?

- The pull request part was really imprssive
- Found the pull request aspect of the practical useful +1
- Git pairing is more efficient
- .
- Hands on
- Refelcting on earlier feedback +1
- CI is quite cool. HackMD is good for discussion
- Testing proper git workflow +1
- Practising with opening issues, assigning them, opening pull requests on GitHub, as well as dealing with merge conflicts
- Interactive
- enthusiastic teaching! +2
- Nice practice time and pair coding
- Going back to revise the pull requests. I learnt alot from that. +1
- Responded to feedback
- Frequent breaks. +1

## What held us back?

- Made a mistake on a pull request and got time shortage for merge part
- PR opened when the develop branch failed seems not update automatically when develop was fixed
- correct pull request was overwirtten
- exercise goals not always clear
- Material should be more informative
- Screensharing on linux
- [Richel moved this to here] I couldn't start my own HackMD doc for live coding with subscribing.

## What can we improve?

- Speed a litte bit to make decrease in the lecture part
- More discussion around appopriate classes/structs for solving project.
- Work with an established exercise
- I would have liked more indept discussion about data structures and algorithms. Here you didn't say much more than that they are concepts you can use. (+1)
- write some light program thats can actually do something, e.g., visualize the bacteria moving?
- explain how to setup CI locally? so it automatically check the sutomation before push
- It may sometimes make sense to be in groups of 3 (vs 2) - but I guess this is subjective
- HackMD pages for shared coding? Maybe I missed it but I think it could be better than screensharing. - Students get thier own mini projects to go thru all the practices. Rather than scattered excercises.
- state goals before each break out room
