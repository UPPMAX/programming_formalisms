# Introduction

!!! questions

    - What is the Purpose of Formalism in Computer Science?

    - What is software development life cycle

    - There seem to be many concepts in this course. What do they mean?


!!! info "Content"

    We start with a more **theoretical introduction** covering the software and tools and mindsets for software development.


!!! info "Learning objectives of 'SDLC tools'"

    - Identify the main topics and objectives for the week's lessons.
    - Evaluate the importance of engaging with course content and identify strategies to maintain interest and motivation throughout the week.
    - We will set the start in why a formalized development of software is needed.

!!! note "Instructor notes"

    Prerequisites are:

    The [Pre-requirements](prereqs.md): 
    - Learners know basic Git
    - Learners know basic Python
    - Learners have installed necessary tools

    Teaching goals are:

    - Learners can can understand why a formalized development of software is important.

    Lesson Plan: 
    
    - **Total** 30 min
    - Theory 20
    - Discussions 10 min

!!! info "TOC"

    - What is software?
        - software concepts
        - types
        - outcome
            - correct, reusable, efficient, changable
        - modularity  
        - functional vs object-orientation
    - Example
    - SLDC   


## What is software?
*Wikipedia*
- set of computer programs and associated documentation and data.
- This is in contrast to hardware, from which the system is built and which actually performs the work. 
- **User-written software: End-user development**
  - Users create this software themselves and _often overlook how important it may be to others_.

### Some software concepts
- program
- script (directly interpreted at run time)
- tool
- model
- application
---

```{admonition} Scripting vs programming
  - **Python** is an **interpreted language**.
    - Python uses an interpreter to translate and run its code. Hence Python is a **scripting language**.
  - Programs written in **C++** are **compiled** and then the compiled code runs to generate the output.
    - Hence, C++ is  a **programming language** and not a scripting language, since scripting languages are directly interpreted at run time and no prior compilation of the code takes place.
---

```{Note}
   We will not be very definite in the course in when to use scripting, program or tools 
```

### Outcome of a Program
- **Correct**
  - and _flawless_
- **Efficient**
  - _Utilize_ the computer system's resources
- **Reusable**
  - Finished _components_
  - Lower _development_ _costs_
  - _Faster_
  - Higher _quality_
  - _packaging_ technology
- **Changeable**
  - _Maintenance_ cost
    - Fix errors, bugs
    - Adapt to _new requirements_
    - Independent _modules_
    - Encapsulation/_information hiding_
   
## Code Example???
```{Discussion}
**What do you develop for?**
- Use Menti
```

???+ exercise

    **Planet application**
    - Make a program that simulates the Earth's change of orbit due to the interaction with other planets-

    - This was done in MATLAB with no thought of best practices, just trying to solve the problem!

    ???- Code

         ```Matlab
         %planet
         clear all
         close all
         %constants
         G=6.6743e-11
         AU=149.597871e9
         AU1=150.8e9
         dJ=5.203*AU
         mj=5.97219e24
         mJ=1.899e27
         M=1.9891e30
         day=86400;
         year=31556926;

         %init
         %Earth
         v0=AU*2*pi/year;
         Fg=G*M*mj/AU^2
         ag=Fg/mj
         Fc=mj*v0^2/AU
         ac=Fc/mj

         %Jupiter
         v0J=dJ*2*pi/(11.86*year);
         FgJ=G*M*mJ/dJ^2
         agJ=FgJ/mJ
         FcJ=mJ*v0J^2/dJ
         acJ=FcJ/mJ

         L=10e4;
         %def
         x=zeros(365*L,1);
         y=zeros(365*L,1);
         xJ=zeros(365*L,1);
         yJ=zeros(365*L,1);
         u=zeros(365*L,1);
         v=zeros(365*L,1);
         uJ=zeros(365*L,1);
         vJ=zeros(365*L,1);
         %init
         x0=AU1;
         y0=0;
         u0=0;
         x=x0;
         y=y0;
         u=u0;
         v=v0;
         x0J=dJ;
         y0J=0;
         u0J=0;
         xJ=x0J;
         yJ=y0J;
         uJ=u0J;
         vJ=v0J;

         for i=1:365*L
             if rem(i,365*1000)==0
                 i/365
             end
             x(i+1)=x(i)+day*u(i);
             y(i+1)=y(i)+day*v(i);
             xJ(i+1)=xJ(i)+day*uJ(i);
             yJ(i+1)=yJ(i)+day*vJ(i);

             ax=-G*M/abs(x(i+1)^2+y(i+1)^2)^(3/2)*x(i+1);
             ay=-G*M/abs(x(i+1)^2+y(i+1)^2)^(3/2)*y(i+1);
             dxJ=x(i+1)-xJ(i+1);
             dyJ=y(i+1)-yJ(i+1);
             axjJ=-G*mJ/abs(dxJ^2+dyJ^2)^(3/2)*dxJ;
             ayjJ=-G*mJ/abs(dxJ^2+dyJ^2)^(3/2)*dyJ;
             ax=ax+axjJ;
             ay=ay+ayjJ;
             u(i+1)=u(i)+ax*day;
             v(i+1)=v(i)+ay*day;

             xJ(i+1)=xJ(i)+day*uJ(i);
             yJ(i+1)=yJ(i)+day*vJ(i);
             axJ=-G*M/abs(xJ(i+1)^2+yJ(i+1)^2)^(3/2)*xJ(i+1);
             ayJ=-G*M/abs(xJ(i+1)^2+yJ(i+1)^2)^(3/2)*yJ(i+1);
             uJ(i+1)=uJ(i)+axJ*day;
             vJ(i+1)=vJ(i)+ayJ*day;

         end

         figure(1)
         plot(x,y)
         hold on
         plot(xJ,yJ)
         plot (0,0,'o')
         axis equal


         rj=(x.^2+y.^2).^.5;
         rJ=(x.^2+y.^2).^.5;
         aJ=max(rJ)
         bJ=min(rJ)
         eJ=1-2/(aJ/bJ+1)
         relJ=(aJ/bJ-1)

         l=1000;
         for i=1:L/l
             range=(i-1)*L+1:i*L;
             a=max(rj(range));
             b=min(rj(range));
             e(i)=1-2/(a/b+1);
             rel(i)=(a/b-1);
         end

         %return

         figure(2)
         plot(1:L/l,e)

         ```

    - What are the problems?
    - Discuss!
        - **Readability?**
        - **Correct**?
        - **Efficient**?
        - **Reusable**?
        - **Changeable**?
    



   
## Software Development Life Cycle (SDLC)

- We need a workflow in our programming projects!

### Some common steps 

- Planning
  - Analysis and design
- Development
  - Source control
  - Algorithms
  - In-code documentation
  - Optimization
    - Parallelism
- Test
- Development and maintenance
  - Documentation
  - Reproducibility and sharing
--- 
- ... and **Iterations**
---
### Agile development
  - Division of tasks into **short phases of work** and frequent **re-assessment** and adaptation of plans.

```{seealso}
More about life cycles in next session and later this week
```

```{todo}
Links
```

## Summary of Introduction
- Now after the overview you are ready to dig deeper in the topics and try it out yourself!

```{Keypoints}
- A program shall be or have content/components that is:
  - Correct
  - Efficient
  - Reusable
  - Changeable

- Software development is both series of steps: 
     1.	Requirements
     2.	Analysis and design
     3.	Development
     4.	Test
     5.	Development and maintenance
- ... and iteration of these

```
