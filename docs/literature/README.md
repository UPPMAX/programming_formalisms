---
tags:
  - papers
  - literature
  - books
  - reading
  - articles
---

# Literature

These are books and academic papers that have influenced the course.

<!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

Reference                     |PDF                                |One-line summary `[1]`
------------------------------|-----------------------------------|------------------------------------
`[Chacon and Straub, 2014]`   |[PDF](chacon_and_straub_2014.pdf)  |The book about `git`
`[Jiménez et al., 2017]`      |[PDF](jimenez_et_al_2017.pdf)      |Best practices in research software
`[Kroll et al., 2013]`        |[PDF](kroll_et_al_2013.pdf)        |Best practices in software development
`[Pastrana et al., 2025]`     |[PDF](pastrana_et_al_2025.pdf)     |Literature review of best practices in Scrum and DevOps
`[Perez-Riverol et al., 2016]`|[PDF](perez_riverol_et_al_2016.pdf)|Recommendations on `git` and GitHub
`[Ram, 2013]`                 |[PDF](ram_2013.pdf)                |Effect of `git` on reproducibility
`[Serban et al., 2020]`       |[PDF](serban_et_al_2020.pdf)       |Recommends some software engineering best practices, in the field of machine learning
`[Stieler and Bauer, 2023]`   |[PDF](stieler_and_bauer_2023.pdf)  |Applies `[Serban et al., 2020]` to rate if a project follows the recommended practices
`[Stodden and Miguez, 2014]`  |[PDF](stodden_and_miguez_2014.pdf) |Best practices for a project
`[Visser et al., 2016]`       |None                               |Ten best practices for effective software development
`[Wilson et al., 2014]`       |[PDF](wilson_et_al_2014.pdf)       |Best practices for a project
`[Wilson et al., 2017]`       |[PDF](wilson_et_al_2017.pdf)       |Good enough practices for a project

<!-- markdownlint-enable MD013 -->

- `[1]` You can find more extensive summaries below

## Summaries

These are summaries of some of the papers mentioned.

## Summary of `[Aniley et al., 2024]

This paper seems useful at first glance:
the authors trained an algorithm
to detect the best software development lifecycle
for projects.

They recommend to use Agile software development models,
but it is unclear where they base this on exactly.

## Summary of `[Forsgren et al., 2018]`

This book is written by some computer scientists,
where they measure software development metrics
to find out what really works.

Their conclusions are summed up in Appendix A,
which has the following headers:

- Continuous Delivery
    - Use version control for all production artifacts
    - Automate your deployment process
    - Implement Continuous Integration
    - Use trunk-based development methods
    - Implement test automation
    - Support test data management
    - Shift Left on Security (i.e. make security part of the software delivery)
    - Implement Continuous Delivery (CD)
- Architecture
    - Use a Loosely Coupled Architecture
    - Architect for Empowered Teams
- Product and Process
    - Gather and Implement Customer Feedback
    - Make the Flow of Work Visible through the Value Stream
    - Work in Small Batches
    - Foster and Enable Team Experimentation
- Lean Management and Monitoring
    - Have a Lightweight Change Approval Processes
    - Monitor across Application and Infrastructure to Inform Business Decisions
    - Check System Health Proactively
    - Improve Processes and Manage Work with Work-In-Process (WIP) Limits
    - Visualize Work to Monitor Quality and Communicate throughout the Team
- Cultural
    - Support a Generative Culture
    - Encourage and Support Learning
    - Support and Facilitate Collaboration among Teams
    - Provide Resources and Tools that Make Work Meaningful
    - Support or Embody Transformational Leadership

## Summary of `[Jiménez et al., 2017]`

These are the 4 recommendations:

- Make source code publicly accessible from day one
- Make software easy to discover by providing software metadata
  via a popular community registry
- Adopt a licence and comply with the licence of third-party dependencies
- Define clear and transparent contribution, governance and
  communication processes

## Summary of `[Kroll et al., 2013]`

This paper is a literature review, tailored to best practices in
Follow-the-sun software development. Below is a table that shows
how many papers (`n`) recommend a specific practice.

`n`|Best practice
---|-----------------------------------------------------------------------
6  |Agile methods
6  |Use of technology for knowledge sharing
3  |Process documentation
3  |Use of an FTP Server (or data repository) to exchange code and documents
3  |Time window


## Summary of `[Leau et al., 2012]`

This paper compares Agile versus traditional software development,
with Table 1 (see below) sums up the findings:

<!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

Parameter                            |Agile                                          |Traditional
-------------------------------------|-----------------------------------------------|-----------------------------------------------------------------------
User requirement                     |Iterative acquisition                          |Detailed user requirements are welldefined before coding/implementation
Rework cost                          |Low                                            |High
Development direction                |Readily changeable                             |Fixed
Testing                              |On every iteration                             |After coding phase completed
Customer involvement                 |High                                           |Low
Extra quality required for developers|Interpersonal skills & basic business knowledge|Nothing in particular
Suitable Project scale               |Low to medium-scaled                           |Large-scaled

<!-- markdownlint-enable MD013 -->


## Summary of `[Pastrana et al., 2025]`

This is a literature review paper on Scrum and DevOps.

Box 11 shows the benefits of Scrum and DevOps practices.
Here is an adapted version of box 11:

<!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

Benefits              | Improvement Observed
----------------------|---------------------------------------------------------
Scrum adoption        | Actively involved stakeholders
.                     | Transparent communication channels
.                     | Increased team collaboration
.                     | Improved predictability
.                     | Creation of a collaborative culture
.                     | Continuous improvement
.                     | Constant quality measurement or concurrent testing
DevOps adoption       | Early and continuous feedback
.                     | Productivity increased by 20%
.                     | Deployment time decreased by 30%
Faster release cycles | Time to market decreased by 25%
.                     | Incident resolution time decreased by 40%
.                     | Quality deliverable
.                     | Early and continuous feedback
Continuous integration| Quality deliverable
.                     | Time to market decreased by 25%
.                     | Incident resolution time decreased by 40%
.                     | Transparent communication channels
Automated testing     | Test execution speed increased by 35%
.                     | Defect detection increased by 18%
Security automation   | Security vulnerabilities decreased by 30%
.                     | response time decreased by 50%
Agile transformation  | The development cycle decreased by 25%
.                     | Project success rates increased by 18%

<!-- markdownlint-enable MD013 -->

I removed the conclusion to `[Sravani et al., 2023]` (`[117]` in the paper)
as that paper does not supply these numbers at all.

I used
[the Doc2Lang image to table converter](https://doc2lang.com/image-to-table)
to convert the image to a table.


## Summary of `[Perez-Riverol et al., 2016]`

This paper shared 10 simple rules to take advantage of `git` and GitHub:

- Rule 1: Use GitHub to Track Your Projects
- Rule 2: GitHub for Single Users, Teams, and Organizations
- Rule 3: Developing and Collaborating on New Features:
  Branching and Forking
- Rule 4: Naming Branches and Commits: Tags and Semantic Versions
- Rule 5: Let GitHub Do Some Tasks for You: Integrate
- Rule 6: Let GitHub Do More Tasks for You: Automate
- Rule 7: Use GitHub to Openly and Collaboratively Discuss,
  Address, and Close Issues
- Rule 8: Make Your Code Easily Citable, and Cite Source Code!
- Rule 9: Promote and Discuss Your Projects: Web Page and More
- Rule 10: Use GitHub to Be Social: Follow and Watch

## Summary of `[Ram, 2013]`

This paper supplies these 8 use cases for Git in science:

- Lab notebook
- Facilitating collaboration
- Backup and failsafe against data loss
- Freedom to explore new ideas and methods
- Mechanism to solicit feedback and reviews
- Increase transparency and verifiability
- Managing large data
- Lowering barriers to reuse

## Summary of `[Serban et al., 2020]`

This article shows the importance of a practice
and how much it is adopted, in the context of a machine learning project:

![Serban et al., 2020, figure 3, annotation mine](serban_et_al_2020_fig_3_annotated.png)

Note that there are 2x a 28, where 29 is absent. I assume that the
28 to the right, with and orange circle and an importance of 0.2
had to be 29. I assume so, as the 28 with a green triangle
should indeed be a green triangle. This has been clearly annotated :-)

These are the top 10 most important practices, after which I show
the full table:

`n`|Title
---|----------------------------------------------------------------------
25 |Log Production Predictions with the Model's Version and Input Data
27 |Work Against a Shared Backlog
21 |Continuously Monitor the Behaviour of Deployed Models
18 |Use Continuous Integration
20 |Automate Model Deployment
16 |Use Versioning for Data, Model, Configurations and Training Scripts
26 |Use A Collaborative Development Platform
29 |Enforce Fairness and Privacy
17 |Run Automated Regression Tests
12 |Enable Parallel Training Experiments

Here is the full table:

`n`|Title
---|----------------------------------------------------------------------
1  |Use Sanity Checks for All External Data Sources
2  |Check that Input Data is Complete, Balanced and Well Distributed
3  |Write Reusable Scripts for Data Cleaning and Merging
4  |Ensure Data Labelling is Performed in a Strictly Controlled Process
5  |Make Data Sets Available on Shared Infrastructure (private or public)
6  |Share a Clearly Defined Training Objective within the Team
7  |Capture the Training Objective in a Metric that is Easy to Measure and Understand
8  |Test all Feature Extraction Code
9  |Assign an Owner to Each Feature and Document its Rationale
10 |Actively Remove or Archive Features That are Not Used
11 |Peer Review Training Scripts
12 |Enable Parallel Training Experiments
13 |Automate Hyper-Parameter Optimisation and Model Selection
14 |Continuously Measure Model Quality and Performance
15 |Share Status and Outcomes of Experiments Within the Team
16 |Use versioning for Data, Model, Configurations and Training Scripts
17 |Run Automated Regression Tests
18 |Use Continuous Integration
19 |Use Static Analysis to Check Code Quality
20 |Automate Model Deployment
21 |Continuously Monitor the Behaviour of Deployed Models
22 |Enable Shadow Deployment
23 |Perform Checks to Detect Skews between Models
24 |Enable Automatic Roll Backs for Production Models
25 |Log Production Predictions with the Model's Version and Input Data
26 |Use A Collaborative Development Platform
27 |Work Against a Shared Backlog
28 |Communicate, Align, and Collaborate With Multidisciplinary Team Members
29 |Enforce Fairness and Privacy

I used
[the Doc2Lang image to table converter](https://doc2lang.com/image-to-table)
to convert the image to a table

## Summary of `[Stieler and Bauer, 2023]`

Applies `[Serban et al., 2020]` for a data-centric AI project called GW4AL.
It is irrelevant for us.


## Summary of `[Stodden and Miguez, 2014]`

This paper suggests these best practices about how to setup
your infrastructure to achieve reproducible research:

- Open licensing should be used for data and code
- Workflow tracking should be carried out during the research process.
- Data must be available and accessible
- Code and methods must be available and accessible
- All 3rd party data and software should be cited

## Summary of `[Visser et al., 2016]`

This closed-access paper has the following table of content:

- Derive Metrics from Your Measurement Goals
- Make Definition of Done Explicit
- Control Code Versions and Development Branches
- Control Development, Test, Acceptance, and Production Environments
- Automate Tests
- Use Continuous Integration
- Automate Deployment
- Standardize the Development Environment
- Manage Usage of Third-Party Code
- Document Just Enough

## Summary of `[Wilson et al., 2014]`

This paper summarizes best practices.
Here is (a slightly adapted) box 1 from that paper:

<!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

`n`|Theme                                           |Recommendatation
---|------------------------------------------------|---------------------------------------------
1  |Write programs for people, not computers        |A program should not require its readers to hold more than a handful of facts in memory at once.
.  |.                                               |Make names consistent, distinctive, and meaningful.
.  |.                                               |Make code style and formatting consistent.
2  |Let the computer do the work                    |Make the computer repeat tasks.
.  |.                                               |Save recent commands in a file for re-use.
.  |.                                               |Use a build tool to automate workflows.
3  |Make incremental changes                        |Work in small steps with frequent feedback and course correction.
.  |.                                               |Use a version control system.
.  |.                                               |Put everything that has been created manually in version control.
4  |Don't repeat yourself (or others)               |Every piece of data must have a single authoritative representation in the system.
.  |.                                               |Modularize code rather than copying and pasting.
.  |.                                               |Re-use code instead of rewriting it.
5  |Plan for mistakes                               |Add assertions to programs to check their operation.
.  |.                                               |Use an off-the-shelf unit testing library.
.  |.                                               |Turn bugs into test cases.
.  |.                                               |Use a symbolic debugger.
6  |Optimize software only after it works correctly |Use a profiler to identify bottlenecks.
.  |.                                               |Write code in the highest-level language possible.
7  |Document design and purpose, not mechanics      |Document interfaces and reasons, not implementations.
.  |.                                               |Refactor code in preference to explaining how it works.
.  |.                                               |Embed the documentation for a piece of software in that software.
8  |Collaborate                                     |Use pre-merge code reviews.
.  |.                                               |Use pair programming when bringing someone new up to speed and when tackling particularly tricky problems.
.  |.                                               |Use an issue tracking tool.

<!-- markdownlint-enable MD013 -->

## Summary of `[Wilson et al., 2017]`

This paper summarizes best practices that are good enough.
Here is (a slightly adapted) box 1 from that paper:

<!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

`n`|Theme                   |Recommendatation
---|------------------------|---------------------------------------------
1  |Data management         |Save the raw data.
.  |.                       |Ensure that raw data are backed up in more than one location.
.  |.                       |Create the data you wish to see in the world.
.  |.                       |Create analysis-friendly data.
.  |.                       |Record all the steps used to process data.
.  |.                       |Anticipate the need to use multiple tables, and use a unique identifier for every record.
.  |.                       |Submit data to a reputable DOI-issuing repository so that others can access and cite it.
2  |Software                |Place a brief explanatory comment at the start of every program.
.  |.                       |Decompose programs into functions.
.  |.                       |Be ruthless about eliminating duplication.
.  |.                       |Always search for well-maintained software libraries that do what you need.
.  |.                       |Test libraries before relying on them.
.  |.                       |Give functions and variables meaningful names.
.  |.                       |Make dependencies and requirements explicit.
.  |.                       |Do not comment and uncomment sections of code to control a program's behavior.
.  |.                       |Provide a simple example or test data set.
.  |.                       |Submit code to a reputable DOI-issuing repository.
3  |Collaboration           |Create an overview of your project.
.  |.                       |Create a shared "to-do" list for the project.
.  |.                       |Decide on communication strategies.
.  |.                       |Make the license explicit.
.  |.                       |Make the project citable.
4  |Project organization    |Put each project in its own directory, which is named after the project.
.  |.                       |Put text documents associated with the project in the doc directory.
.  |.                       |Put raw data and metadata in a data directory and files generated during cleanup and analysis in a results directory.
.  |.                       |Put project source code in the src directory.
.  |.                       |Put external scripts or compiled programs in the bin directory.
.  |.                       |Name all files to reflect their content or function.
5  |Keeping track of changes|Back up (almost) everything created by a human being as soon as it is created.
.  |.                       |Keep changes small.
.  |.                       |Share changes frequently.
.  |.                       |Create, maintain, and use a checklist for saving and sharing changes to the project.
.  |.                       |Store each project in a folder that is mirrored off the researcher's working machine.
.  |.                       |Add a file called CHANGELOG.txt to the project's docs subfolder.
.  |.                       |Copy the entire project whenever a significant change has been made.
.  |.                       |Use a version control system.
6  |Manuscripts             |Write manuscripts using online tools with rich formatting, change tracking, and reference management.
.  |.                       |Write the manuscript in a plain text format that permits version control.

<!-- markdownlint-enable MD013 -->


## References

- `[Aniley et al., 2024]` Aniley, D. Bitew, E. Alemneh Jalew,
  and G. Abeba Agegnehu. "Selection of software development life cycle
  models using machine learning approach." Int J Comput Appl 186 (2024): 36-43.

- `[Barker, M., Chue Hong, N.P., Katz, D.S. et al. ]`
  Barker, M., Chue Hong, N.P., Katz, D.S. et al.
  Introducing the FAIR Principles for research software.
  Sci Data 9, 622 (2022). [Fair4RS](https://rdcu.be/eNhd1)

- `[Bertram, 2009]` Bertram, Dane.
  "The social nature of issue tracking in software engineering."
  University of Calgary (2009).

- `[Booch 2007]` Grady Booch et al.,
  Object-oriented analysis and design with applications - 3rd ed,
  Addison-wesley 2007.

- `[Chacon and Straub, 2014]` Chacon, Scott, and Ben Straub.
  Pro git. Springer Nature, 2014.
  [Book homepage](https://git-scm.com/book/en/v2).

- `[Church, 1941]` The  Calculi of lambda-conversion, Princeton,
  Princeton University Press,
  Londos: Humphrey Milford Oxford University Press, 1941

- `[Coad et al., 1999]` Coad, Peter and Luca, Jeff de and Lefebvre,
  Eric Java Modeling Color with Uml: Enterprise Components
  and Process with CD-ROM, Prentice Hall PTR, 1999

- `[Dijkstra, 1970]` Notes On Structured Programming,
  T.H. - Report 70-WSK-03,Second edition April 1970

- `[Forsgren et al., 2018]` Forsgren, Nicole, Jez Humble, and Gene Kim.
  Accelerate: The science of lean software and devops:
  Building and scaling high performing technology organizations.
  IT Revolution, 2018.

- `[Gamma et al., 1995]` Gamma, Erich, et al.
  "Elements of reusable object-oriented software." Design Patterns (1995).

- `[Gunderloy, 2007]` Gunderloy, Mike, ed.
  Painless project management with FogBugz. Berkeley, CA: Apress, 2007.

- `[ISO 12207:2017]`
  [ISO/IEC/IEEE 12207:2017 Systems and software engineering — Software life cycle processes](https://www.iso.org/standard/63712.html)

- `[Jacobson, 1992]`
  Jacobson, Ivar, et al.
  Object-Oriented Software Engineering,
  a usecase driven approach, Addison-wesley 1992

- `[Jiménez et al., 2017]` Jiménez, Rafael C., et al.
  "Four simple recommendations to encourage best practices
  in research software." F1000Research 6 (2017): ELIXIR-876.
  [Paper homepage](https://pubmed.ncbi.nlm.nih.gov/28751965/)

- `[Jones et al., 2001]`
  [Jones JW, Keating BA, Porter CH. Approaches to modular model development. Agricultural Systems. 2001 Nov 1;70(2):421–43](https://www.sciencedirect.com/science/article/pii/S0308521X01000543)

- `[Kroll et al., 2013]` Kroll, Josiane, et al.
  "A systematic literature review of best practices and challenges in
  follow-the-sun software development."
  2013 IEEE 8th International Conference on Global Software Engineering
  Workshops. IEEE, 2013.
  [Paper homepage](https://doi-org.ezproxy.its.uu.se/10.1109/ICGSEW.2013.10)

- `[Leau et al., 2012]` Leau, Yu Beng, et al.
  "Software development life cycle AGILE vs traditional approaches."
  International Conference on Information and Network Technology.
  Vol. 37. No. 1. 2012.

- `[Ordoñez-Pacheco et al., 2021]`
  Ordoñez-Pacheco, Rodrigo, Karen Cortes-Verdin, and Jorge Octavio
  Ocharán-Hernández.
  "Best practices for software development: A systematic literature review."
  International Conference on Software Process Improvement.
  Springer, Cham, 2021.
  Note: this paper does not exist. It is not part of the book
  'Advances in Intelligent Informatics', volume 320,
  ISBN 978-3-319-11217-6.

- `[Pastrana et al., 2025]` Pastrana, Manuel, et al.
  "Best Practices Evidenced for Software Development Based on DevOps
  and Scrum: A Literature Review."
  Applied Sciences 15.10 (2025): 5421.
  [Paper homepage](https://doi.org/10.3390/app15105421)

- `[Perez-Riverol et al., 2016]`
  Perez-Riverol, Yasset, et al. "Ten simple rules for taking advantage
  of Git and GitHub." PLoS computational biology 12.7 (2016): e1004947.
  [Paper homepage](https://doi.org/10.1371/journal.pcbi.1004947)

- `[Ram, 2013]` Ram, Karthik.
  "Git can facilitate greater reproducibility and increased transparency
  in science." Source code for biology and medicine 8.1 (2013): 7.
  [Paper homepage](https://link.springer.com/article/10.1186/1751-0473-8-7)

- `[Rumbaugh, 1991]` Rumbaugh et. al,
  Object-oriented modeling and design, Prentice-Hall, Inc. 1991

- `[Serban et al., 2020]` Serban, Alex, et al.
  "Adoption and effects of software engineering best practices
  in machine learning." Proceedings of the 14th ACM/IEEE
  International Symposium on Empirical Software Engineering and
  Measurement (ESEM). 2020.
  [Paper homepage](https://doi.org/10.1145/3382494.3410681)

- `[Sravani et al., 2023]` Sravani, Diyyala, et al.
  "Python security in devOps: Best practices for secure coding,
  configuration management, and continuous testing and monitoring."
  2023 4th International Conference on Electronics and Sustainable
  Communication Systems (ICESC). IEEE, 2023.

- `[Stieler and Bauer, 2023]` Stieler, Fabian, and Bernhard Bauer.
  "Git workflow for active learning-a development methodology proposal
  for data-centric AI projects." (2023).
  [Paper homepage](https://doi.org/10.5220/0011988400003464)

- `[Stodden and Miguez, 2014]` Stodden, Victoria, and Sheila Miguez.
  "Best practices for computational science:
  Software infrastructure and environments for reproducible and
  extensible research." (2014).
  [Paper homepage](https://openresearchsoftware.metajnl.com/articles/jors.ay)

- `[Stroustrup, 1998]` Stroustrup B. What is “Object-oriented Programming”?
  Software, IEEE. 1988 Jun 1;5:10–20.

- `[Visser et al., 2016]` Visser, Joost, et al.
  Building software teams: Ten best practices for
  effective software development. " O'Reilly Media, Inc.", 2016.

- `[Wilson et al., 2014]` Wilson, Greg, et al.
  "Best practices for scientific computing."
  PLoS biology 12.1 (2014): e1001745.
  [Paper homepage](https://doi.org/10.1371/journal.pbio.1001745)

- `[Wilson et al., 2017]` Wilson, Greg, et al.
  "Good enough practices in scientific computing."
  PLoS computational biology 13.6 (2017): e1005510.
  [Paper homepage](https://doi.org/10.1371/journal.pcbi.1005510)

- `[Yas et al., 2023]` Yas, Qahtan M., Abdulbasit Alazzawi, and
  Bahbibi Rahmatullah. "A comprehensive review of software development
  life cycle methodologies: Pros, cons, and future directions."
  Iraqi Journal for Computer Science and Mathematics 4.4 (2023): 14.
