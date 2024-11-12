# Reflection Richel, 2023-06-02

(note that below there is an interview with a student)

## Adaptation to students

My part of the course turned out to be below the level of the students.
I am happy I noticed this quickly, from an exercise done at my first
course session. I am happy I adapted to this immediately and I knew
it would result in less well-prepared lectures, as I would not
have the time to go deeper than expected.

## One central (non-biology) theme

I feel the course could be streamlined by doing a full academic
research in a formal way: start with paper, then design, then code.
This was the original idea as well: to do a DNA alignment.
Due to us teachers adapting to the students (a good thing!),
the unity of the material was ruffled up a bit.

I will suggest to -as teachers- to work on a simple project together
from start to end. I feel it should not be a biological project,
but something on a simple-to-understand dataset.

## Practicals

I should let the students start working on the bigger project earlier,
so they feel more comfortable working in a more formalized environment.
The first session can then be spent to explain the file structure of that project.

Next time, I should use **one** project:
initially, I felt it was better to split up, but it would be better
if the students don't move between GitHub repos all the time.

When pair programming, always use 30 mins as a minimum:
15 minutes is too short to get a commit in.

Make `ruff` friendlier: just use the default settings;
the students felt it held them back, and in this context
I agree: whitespace errors are not worth it.

Use the bigger project earlier and more often:
add a CI script for big-O and profiling,
that runs from the start,
so the students are comfortable using it for the part
on optimizing.

## Academics are the audience

I agree with some students that it is the academic paper
where the design starts and with other students that we should keep the
industrial approach as well.

I will volunteer to have a more streamlined course order with:

* 1a Academic paper, especially a pre-registered paper as an example
* 1b Industrial design of the same problem
* 2 Design
* 3 TDD
* 4 Programming details
* 5 In the end, go back to the paper again

## Reflections

I am happy we did Reflections, as these help us change the direction
of the course. OTOH, due to this I asked for less feedback and I missed
discussing this openly with students.

I do feel the students have been too mild on me.
Especially the last day, I wanted to hear that I was not as concise
as before (as I wasn't). Due to this, I would enjoy a more ruthless and
anonymous evaluation at the last day.

I feel all teachers could have learned more would the evaluations be
anonymous.

## Course as part of the curriculum

I wonder if we reached our own goals.
Here I evaluate, from the course description:

> This course aims to give life scientists, bioinformaticians,
> and other scientists with some experience in programming and scripting

The audience is clear.

> an understanding of the underlying principles
> of software development, design, and programming.

I think we did.

> The course aims to strengthen the understanding
> of more advanced programming concepts,

Did I?

> ability to produce more reusable scripts through modular programming

Was that so?

> and to enable a better understanding of how to
> evaluate a script or programs performance.

This was done by me, in a meagre way.

> We will cover an introduction to Algorithms and Data structures,

This was done by me, in a meagre way.

> Programming Paradigms especially structured and object oriented programming
> and to give a overview of other paradigms like functional programming.

AFAICS, we did not.

> Modular development

Unsure.

> and (code) reusability,

Unsure.

> testing

This was done by me, quite extensively.

> and optimisation.

This was done by me, in a mediocre way.

> We will cover theory with bridging practical examples and applications

I know the students wanted more practical examples
in parts taught by other teachers.

> to enhance the theoretical understanding of the principles.

Is this really the goal? Should it?
Shouldn't is be: 'to be able to design, write, test and
optimize a research project in a structured way'?

## Definition of quality

I still struggle to see how we answer the question: 'How do we teachers
know we did a good job teaching?'.

## Ideas for next year

* Add an academic starting point, e.g. start from writing a paper.
   It would make the course similar to 'Tools for reproducible research',
   yet more focused on how to use these.
   'Programming formalisms for research/open science/preregistrations'
* As instructors, do one big project together, to align our ideas
* Add a speed profile to the big project
* Add a big-O measurement to the big project
* Get at least 1 anonymous evaluation

## Appendix

### Interview with a student

I contacted a student after the course and asked some questions.

In front of each bullet point, it can be read:
'The student thinks/suggests/feels that ...'

* It was useful to hear the names of all the concepts
* Day 1 was mostly git, which is so common that making this into a course
   requirement would not have been strange
* There should be less theory. 'If there is no time for an exercise applying
   a certain piece of theory, avoid talking about that piece of theory'
* Both academic and industrial practices should be mentioned
* Homework would be a good addition to the course.
