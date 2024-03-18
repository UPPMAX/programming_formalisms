# Software Development Lifecycle (SDLC) models

## Take aways from other methods 
### [The Agile manifest](https://agilemanifesto.org/)

```{admonition} Values
- **Individuals and interactions** over processes and tools
- **Working software** over comprehensive documentation
- **Customer collaboration** over contract negotiation
- **Responding to change** over following a plan
```

Or:
"Agile = characterized by the division of tasks into short phases of work and frequent re-assessment and adaptation of plans."

**Most of the following models are Agile...**

### Dynamic system development method (DSDM)
- Timeboxing
- MoSCoW prioritization: 
   - must-have
   - should-have
   - could-have
   - and won’t-have, or will not have right now. 
     - Some companies also use the “W” in MoSCoW to mean “wish.”
- Iterative and incremental approach

### Feature-driven development (FDD)
- Feature teams
- Parallel development
- Tracking completion status (reporting, milestones, percentage completion)

### Crystal methods
- People-centric
- Frequent delivery
- No "one size fits all"
- Modern principles: automated tests, frequent integration

### Scrum (For very large projects)
- Business value-driven comprehensive framework
- Scrum roles
  - Owner 
  - development team:
  - testers
  - documenters
  - DB admins 
  - scrum master: agile coach, servant leader, removes barriers, coaches and convinces; does not manage
- scrum workflow
  - sprint planning->sprint->review->retrospective
- Potentially shippable product increment each sprint
- Suitable for very large projects

#### Lean 
- **Minimize waste**, visualize production, look for bottlenecks, inefficiencies
- **Last responsible moment**: wait ‘til we have enough facts
    - not make decisions based on preset timelines.
- Deliver as fast as possible: small iterations are easier to manage

### Kanban
- Visualize your work, **limit work in progress**

### Extreme Programming
-	[https://www.agilealliance.org/glossary/xp](https://www.agilealliance.org/glossary/xp)
-	Just In Time design

```{admonition} Branching and merging is not listed as a core XP practice
-	is generally not a favorable practice in Agile approaches. 
-	Branching has the potential for creating technical debt if changes are not merged frequently. 
-	The risks an be somewhat mitigated by merging frequently. 
-	In any case, branching and merging .
```

##### Pair programming
- Collaborate, continuous code inspection
- real-time development technique to increase algorithm implementation

#### Test-driven development
- Write test
- Write function to fail test
- Write code to pass test

### Spotify
- Culture
  - Innovation: hackathons
  - Learning from each other
  - Failure-friendly culture
  - (internal) code repositories, visible and open for other teams
  - Minimize handoffs (help from other teams)
  - Bureaucracy minimized


### DevOps (Development Operations)
- **Dev**elopers and testers
- **Ops** (operations): people working with release, servers, middleware, network, storage configs, monitoring techniques
- DevOps aims to extend fast and frequent software feature development approach to build an efficient delivery pipeline.
- Phases: development --> test --> stage --> production
  -  development: unit testing (code)
  -  test: integration testing (User-interface, web server, app server, back-end)
  -  stage: user acceptance 
  -  production
- **Continuous**...
  - **Integration**: Central repository
    - development + test
  - **Development**: Ensuring stable product after every release
    - development + test + stage
  - **Deployment**: automating updates to production
    - development + test + stage + production

**And more...**
