# 2025-10-30

- Total course
- Author: Richel

## Course as a whole

Here I mark changes we made to this course:

<!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->
<!-- markdownlint-disable MD055 --><!-- We use three pipes to indicate an empty row -->

Day      |Time       |Teacher|Subject
---------|-----------|-------|-----------------------------------------------------------
Friday  |09:00-10:00|Lars   |Software development life cycle
Friday  |10:15-11:00|Richel |Issues and kanban board
Friday  |11:15-12:00|Richel |assert
Friday  |13:00-14:00|Richel |TDD 1
Friday  |14:15-15:00|Richel |TDD 2
Friday  |15:00-15:40|Richel |Formal testing framework **-> TDD at a bigger scale**
Friday  |15:40-16:00|Lars   |Confidence and retrospect
|||||
Monday|09:00-10:00|Björn  |Formal git workflow, branches
Monday|10:15-11:00|Björn  |Formal git workflow, merge
Monday|11:15-12:00|Björn  |Formal git workflow, contribute & Social coding and sharing
Monday|13:00-14:00|Richel |Pair programming
Monday|14:15-15:00|Richel |Pair programming
Monday|15:15-15:40|Richel |Formal testing framework **-> Pair programming**
Monday|15:40-16:00|Lars   |Confidence and retrospect
|||||
Tuesday |09:00-09:45|Richel |Function design **-> Continuous integration**
Tuesday |10:00-10:45 -> **10:00-11:00**|Richel |Expressive data type **-> Continuous integration**
Tuesday |11:00-12:00 -> **11:15-12:00**|Lars   |Object-oriented design
Tuesday |13:00-14:00|Richel |Has-a relation and class design **-> class design**
Tuesday |14:15-15:00|Lars   |Modular programming 
Tuesday |15:15-15:40|Richel **-> Lars** |Continuous integration **-> Modular programming**
Tuesday |15:40-16:00|Lars   |Confidence and retrospect
|||||
Wednesday|09:00-09:45|Richel |Implement the project as a package
Wednesday|10:00-11:00|Richel |Runtime speed profiles, Improve run-time speed **-> Runtime speed profiles**
Wednesday|11:15-12:00|Björn  |Deployment
Wednesday|13:00-13:30|Björn  |Deployment
Wednesday|13:30-13:50|Björn  |Documentation
Wednesday|14:05-15:00|Björn  |Documentation
Wednesday|15:15-15:40|Lars   |Wrap-up
Wednesday|15:40-16:00|Lars   |Confidence and retrospect

<!-- markdownlint-enable MD013 -->
<!-- markdownlint-enable MD055 -->

- [x] Consider menioning [pyOpenSci](https://github.com/pyopensci/software-submission):
  it results in a paper!

## Commits of teachers

- [Analysis script](commit_analysis.R)

I was interested in the commits: who of us committed when?

![Commits per hour](commit_hours.png)

![Commits per day of the week](commit_wdays.png)

I see that some of us work outside of working hours
and in the weekends. Maybe this puts too much stress on us?

On the other hand: I am super happy with working at my weirder hours :-)

## Commits of learners

- [Analysis script](learners_commit_analysis.R)

I was interested in the commits: who of us committed when?

![Number of commits](learners_n_commits.png)

![The hours commits are done](learners_commit_hours.png)

![The weekdays that commits are done](learners_commit_wdays.png)

I am happy to see no learners worked in the weekend
and most commit under course hours :-)

## To discuss at a meeting

If a coordinator does not have the proper time to do his/her job,
consider reducing the amount of teaching hours for that
teacher, so he/she has the time to do so.

If a teacher does not have the proper time to prepare,
consider reducing the amount of teaching hours for that
teacher, so he/she has the time to focus on those fewer hours.

I think all of us should follow the NBIS 'Train the Trainer' course,
as I think some more knowledge on teaching would help us prepare our lessons
better.

If a teacher does not read the evaluation results,
lets not bother the learners by asking those questions.

As we do not actually work on a project,
I suggest to remove pretending to do so
or add more time for this.
In any case, I do think we should keep working on a shared repository.

I suggest to expand the programming languages we use, i.e. R and Bash,
as per request of some future learners. This will mainly affect Richel.
This will be easiest to do if there is no shared project.

As we do not use issues in practice,
I suggest to remove the session on issues.

As we do not use the kanban board in practice,
I suggest to remove the session on kanban board.

As we do not use the risk assessment in practice,
I suggest to remove that section.

As we do not use the requirements document in practice,
I suggest to remove that section.

As our learners are academics,
I suggest to replace a requirements document
by a draft paper.

As we do not apply the content of 'Modularity' in practice,
I suggest to remove this session.

As I think there is too big of a gap between the content of 'Object oriented
development' and all other lectures, I suggest to rewrite or remove it.

As I think there should be enough time for function design,
I suggest to remove all sessions on OOP, unless functions can be
discussed properly.

## Course feedback

For 1 and 2 i think you could add some more illustation to make them less bland
and help differenciate the different parts.

I like that there is a summary at the end of the first one and
i think the other two could also use a summary to make it simpler
to remind yourself without having to read the whole thing all over again.
Also i think they should go deeper into what you are expected to learn
in the learning outcomes for all of them and
maybe add some learning outcomes for 1.
Not really needed but it could be a good idea to add some more
difficult problems for those who are ahead to solve

### 1. [Deploy your code](https://uppmax.github.io/programming_formalisms/deployment/deploy/)

- Add some illustrations
- Add more learning outcomes
- Explain deeper what you will learn
- Consider adding more difficult problems for the quicker learners

### 2. [Improve runtime speed](https://uppmax.github.io/programming_formalisms/optimisation/improve_runtime_speed/)

- [X] Add some illustrations
- Add a summary
- Explain deeper in the outcomes
- Consider adding more difficult problems for the quicker learners

### 3. [Object Oriented development](https://uppmax.github.io/programming_formalisms/design_develop/OO_development/)

- Add summary
- Explain further in the outcomes
- Consider adding more difficult problems for the quicker learners

## Course feedback

For each course material i would like to see a summary,
that in the course material it says what you will be learning.

I would like if there were some questions that can prepair
you for what's comming.

I would also like some images that shows how to do some steps
or to make the the course material more intresting to read about.

Looking at images is also a way to get a quick glance
of what the course material is about.

And of course i want there to be some information about
what you will be learning.

### 1. [Documentation](https://uppmax.github.io/programming_formalisms/deployment/documentation/)

The course material looks interesting and it does make me want to take the course.
I like how in the begining it shows what you will be learning
in the course and with the summary at the end it makes it clear
what you will be learning.
It does have some group questions that you are going to do,
but not questions that you can take or try to solve before you start the course.
And the course doesn't have any images,
which is okay but it does make the course material look pretty bland
and not very interesting to look at. 

- [ ] Consider adding (more) images

### 2. [Package](https://uppmax.github.io/programming_formalisms/package/)

It has a learning outcome that tells what students will be learning,
and it has questions about the material,
and where to find the answers.
And if you are still not sure if you did correct it has answer button
that shows you if you got it correct.
It does also have a image,
but it's not that clear of what it is about.
It has no text that's conected to the picture,
the only thing that can be connected is the word "Why?"
So that's a little confusing.

- [x] Make it clear what the image is about
- [x] Make the header 'Why?' more descriptive

And there wasn't that much information about anything really.
The whole course material is almost only exercises,
no text or imformation at all.
It does have some webpages with the information and that's good
but i really would like for the course material to have more information.

### 3. [Refactoring and Modular programming](https://uppmax.github.io/programming_formalisms/modularity/modular/)

I like how it has a learning outcome
for both part's of the programs, one for refactoring and
one for modular programming.
It dosn't have a summary, which is one of the most iportant things.
It does have images that are clear what they are about.
They have a text that very clearly explains what the picture is about.
It does also have some exercises with the answers.
But i dosn't have a summary.
