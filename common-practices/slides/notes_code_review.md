---
marp: true
size: 16:9
paginate: false
style: |
  :root {
    font-family: Montserrat;
    color: #003300;
    font-size: 28px;
  }
  h1 {
    font-size: 1.3rem;
    border-bottom: 1px solid #003300;
  }
  h2 {
    font-size: 0.9rem;
  }
---

<link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'>

<style scoped>
p {
  font-size: 74px;
}
</style>

> What are Code Reviews and how can they help us?

---

# Making code understandable

> The most difficult part of writing code is always to make it understandable to other people, including yourself a few months down the track. There’s certainly no shame in finding out that your code wasn’t as easy to understand or use as you’d hoped, so don’t take it personally when it happens (which it always does, at least in my experience), but treat it as an opportunity to improve.
>
> **Fernando Perez, [Code reviews: the lab meeting for code](http://fperez.org/py4science/code_reviews.html)**

---

# Synchronous - Pair Programming

Consider the following scenario:

- 1. The PI sits down with her student.
- 2. They discuss how the code could better.
- 3. They find and solve issues together.
- 4. The student learns something new.
- 5. The code becomes more reusable.

---

# Pair Programming - Driver and Navigator

<img src="https://martinfowler.com/articles/on-pair-programming/driver_navigator.png" alt="drawing" height="70%" width="70%" style="display: block; margin: 0 auto">

> **Martin Fowler, [On Pair Programming](https://martinfowler.com/articles/on-pair-programming.html)**

---

# Pair Programming - Ping Pong

<img src="https://martinfowler.com/articles/on-pair-programming/ping_pong.png" alt="drawing" height="70%" width="70%" style="display: block; margin: 0 auto">

> **Martin Fowler, [On Pair Programming](https://martinfowler.com/articles/on-pair-programming.html)**

---

# Pair Programming - Strong-Style Pairing

<img src="https://www.thekguy.com/wp-content/uploads/2017/06/StrongStylePairing-1-1024x324.png" alt="drawing" height="75%" width="90%" style="display: block; margin: 0 auto">

> **Keith McDonald, [Strong Style Pairing](https://www.thekguy.com/wp-content/uploads/2017/06/StrongStylePairing-1-1024x324.png)**

---

# Pair Programming - Benefits and challenges

## Benefits

- We can produce better code working together
- We will ship fast for a longer time
- We build a "default" collaborative workflow in the group
- Less interruptions and happier people
- Recovering the flow becomes easier

## Challenges

- ??

---

# Pair Programming - The Pomodoro technique

<img src="https://martinfowler.com/articles/on-pair-programming/pomodoro.png" alt="drawing" height="75%" width="50%" style="display: block; margin: 0 auto">

> **Martin Fowler, [On Pair Programming](https://martinfowler.com/articles/on-pair-programming.html)**

---

# Synchronous - Group Code Tour

Consider the following scenario:

- 1. During a lab meeting, the student presents the steps of her code as logical steps.
- 2. The code is explained both to R programmers and non-experts.
- 3. The group discuss together and improve the code

---

# Suggestions for the meeting leader

- Keep it a safe environment
- Facilitate participation in the session
- Make it clear that your code isn’t perfect
- Patiently explain when things are not wrong but just not ideal

---

# Asynchronous - I'll get back to you on that

Consider the following scenario:

- 1. A postdoc has created a model in Python
- 2. She sends the instructions to test it to her supervisor
- 3. The supervisor can then review it over the next week
- 4. The supervisor makes a PR to the repo with improvements

---

# Branching

> **Branching**: keep a version of the code separate while making experimental changes or keeping track of collaborative work.

<img src="https://i.postimg.cc/6p5v0Nb1/Screenshot-2022-02-10-at-18-52-47.png" alt="drawing" height="70%" style="display: block; margin: 0 auto" />

---

# Pull Requests

> **Pull Request**: a code review request prior to merging the changes made on a branch over to the main branch.

<img src="https://i.postimg.cc/5tgv5Rpm/Screenshot-2022-02-10-at-18-44-07.png" alt="drawing" height="70%" style="display: block; margin: 0 auto" />

---

# Reviewing is not about creating more work

- Part of the scientific process
- An opportunity for everyone to learn better practices
- Reviews are rarely anonymous
- Often public-facing

---

# Where to put the focus? (I)

- Repetitive code
- Code saying one thing, documentation saying another
- Off-by-one errors
- Making sure each function does one thing only
- Lack of tests and sanity checks
- Magic numbers

---

# Where to put the focus? (II)

- Bad variable/method names
- Inconsistent indentation
- The order of the different steps
- Lack of comments and signposting
- Tailor-made and manual steps
- Only works with the given data

*Modified from [*What to look for when code reviewing*](https://www.cs.swarthmore.edu/~alinen/cs71/labs/lab03.html)*

---

# Who should do it?

> "Anyone" should be able to perform code reviews.

<img src="https://the-turing-way.netlify.app/_images/readable-code.jpg" alt="drawing" height="70%" width="70%" style="display: block; margin: 0 auto">

---

# Benefits - a case study

> - In a group of 11 programs developed by the same group of people, the first 5 were developed without reviews.
> - The remaining 6 were developed with reviews. After all the programs were released to production, the first 5 had an average of 4.5 errors per 100 lines of code.
> - The 6 that had been inspected had an average of only 0.82 errors per 100. Reviews cut the errors by over 80 percent.
>
> **[Code Complete](https://www.oreilly.com/library/view/code-complete-2nd/0735619670) by Steve McConnell**

---

# Benefits - software developers

- Less time redoing work or refactoring
- Increased productivity
- Greater confidence in own work
- Learning better techniques
- Reduced time debugging alone
- Knowledge exchange and group cohesion

---

# Benefits - team leaders

- Better understanding of the projects
- Maintainable and better-documented code
- Earlier and better visibility of issues
- Group reviews reduce work burden
- Reusability and modification
- High-quality code that can be released

---

# To bear in mind

- Should not be used to evaluate individuals
- Revealing mistakes should not come with penalties or shame.
- Should also be done early and often

---

# Potential obstacles

- Conflicts of interest
- Strong personal views about non crucial matters
- Misunderstandings and/or misinterpretations
- Code ownership
- Psychological safety

---

# References

This material is based on the Code Review lecture by The Carpentries.

> - [Code Review](https://github.com/carpentries-incubator/managing-computational-projects/blob/gh-pages/_episodes/09-codereview.md) by [The Carpentries](https://carpentries.org/) is licensed under [CC BY 4.0](http://creativecommons.org/licenses/by/4.0/). Modifications were made in several chapters.
> - _The Turing Way_ Community. (2021). The Turing Way: A handbook for reproducible, ethical and collaborative research (1.0.1). Zenodo. https://doi.org/10.5281/zenodo.5671094. [Code Reviewing Process](https://the-turing-way.netlify.app/reproducible-research/reviewing.html) Chapter.
> - Fernando Perez, [Code reviews: the lab meeting for code](http://fperez.org/py4science/code_reviews.html)
> - Martin Fowler, [On Pair Programming](https://martinfowler.com/articles/on-pair-programming.html)
