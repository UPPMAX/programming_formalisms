# Day Two Q&A Fall 2023

<!--- I remind you that these documents will be uploaded to the repository branch that will be created and that the NBIS training code of conduct should be followed. Be respectfull to eachother so you do not edit others posts. Hack md alows for simultaions editing. -->
<!--- Reminder do not edit anothers post, please use a fresh paragraph when typing hack md is a simultations editing tool-->
- Zoom: <https://uu-se.zoom.us/j/66409709879>
Passcode: 583470
- Material: <https://uppmax.github.io/programming_formalisms/index.html>


## General and technical questions

- Q: Does the SDLC apply to academia as well?
    - A: [Lars]: Yes, usually done implicitly
    - A: [Richel] Yes, usually done implicitly. The draft of your paper are kind of a Need/Requirement Analysis. Also being clear about the End Of Life of your software will be social: it may prevent a poor PhD/postdoc/researcher being forced to be dependent on your code by his/her professor; where you do not have the time to help that PhD (I have had this; it cost me!)


## What is Software?

- A:


## General Questions

- Q:
    - A:

---------------------------------------------------

## SDLC and methods

- Q:
    - A:


## UML

- Q: what is the difference between ":" and "-" at the beginning of a statement in an activity diagram?
    - A: - is a connector and :is a general node start if you have parantheses in the text you wish to have on your node : will not work

- Q: I'm not able to render the plantUML diagrams, but get the error "No PlantUML server, specify one with "plantuml.server"." Any idea on how to fix this?
    - A [Lars]: Which extension are you using
    - C: PlantUML and PlantUML previewer. Also Markdown and Markdown All in One. Do I need any more?
    -A [Lars]: What browser, you could try running this <https://github.com/marcozaccari/markdown-diagrams-browser-extension> instead of PlantUML previewer
    -A [Lars]:remember the plantUML desktop jar file needs graphviz to render
    -A [Lars]:Planttext.com is a online renderer that works well and lets you easyl change style
    -A [Richel] I cannot get it to render in my browser (Ubuntu, nor Firefox nor Chrome). Instead I use planttext.com or a Visual Studio Code extention (search 'PlantUML', first one, then press CTRL-D when having a .puml file open)


- Q: Is it possible to have nested diagram? Like that a new more detailed one come up when you click on a function
    - A:In most software for UML, yes for plantuml you can use !include this will include the contents from the other file into the current file.

- Q: Is it possible to generate a UML from actual (e.g. Python) code?
    - A [Richel]: Yes, for example, [Doxygen](https://www.doxygen.nl/manual/docblocks.html#pythonblocks) 
        makes a class diagram from documentation, but there are more ways, e.g. [Stack Overflow](https://stackoverflow.com/a/7554457). I predict that ChatGPT can do a reasonable job.
    - A: [Lars]ChatGPT can do a reasonable job as well, there are also other more specialiced software that deal with this issue it is called Reverse Engeneering
         and is nowadays a much more complete proces. When you then develop new diagrams from this that influcese the code it is what is called Roundtrip Engineering

## Social coding

- Q:  understand that the coder is coding, but what is the driver actually doing? Does the driver sit next to the coder and give instructions?
    - A [Richel]: the driver is coding, the navigator actively questions what the driver is doing. This is needed: they need to switch roles later, hence the navigator needs to know what to do in the future.

- Q:  Who is more responsible?
    - A [Richel]: equally, as the driver and navigator switch roles all the time

- Q: What is the assertion statement ``` assert sum() == 3 ```
    - A: [Lars]: Assertion is a conditional statement that raises an AssertionError. An unhandeld Assertion will generate a system exit
        Assertion should always end the program but preferably in a ordered manner
        <https://www.w3schools.com/python/ref_keyword_assert.asp>
        `https://documentation.help/Python-PEP/assert.html` (now a broken link)
    - A: [Richel] `assert` is used for debugging. `assert sum() == 3` is the same as

```
# if (![what is the assert]): exit()
if (!(sum() == 3)): exit()
```


## Questions above this line

-----------------------------------------------------------------

# Day *3* feedback

## What went well?

- Interactive activities were great hands-on experience
- Nice to live-view pair programming! +2
- Right amount of content in lectures, not too dense
- pair programming is fun +1
- Exposure myself to the new environment(pair-programming) +1
- More theories and practice of software development
- Pair programming
- Pair programming has a lot of fun!
- I think it is nice to try out with people from different field. +1
- More interactivity, less pure lecturing
- presentation slides available

## What held us back?


- Some of the lectures were too long with little opportunity to discuss
    - Thanks for the feed back, this is somthing we will be working on
- Still a bit too little practice time +2
- It was a bit difficult to follow the slides on pair programming
- Technichal issues (sharing code, )
- I couldn't find the slides for pair programming (PDF)
- First time forking repo during pair programming exercise +1
- As a beginner, fixing the environmnt and knowlage gap for pair-programming.
- No time for exercise 2 and 3 during the morning +1
    - Thank you this is one of the main issues I will look into
- Less detailed documentation on GitHub than yesterday, though topics more complex
- Pair-programming exercise could have been better guided (suggest platforms before sending to breakout rooms)


## What can we improve?

- When discussing programming paradigms in the morning, it would be interesting to hear about how the different strategies are viewed and have been viewed by programmers over time, especially since they are to some extent not compatible with each other.
- Tell exactly where to find the material on github (-1)
- SSH stopped working for me :(
- The content from the lectures this morning looked interesting but too dense for beginners. I think a reduced version would have been more effective.
- Some of the 'handover' for the activities were unclear. We spent 5 minutes or so trying to figure what we were supposed to be doing. (+1)
- Summary of content from slides, key takeaway points.
- Have a summary session in the end of each day? I was absent for a session and would be good to know. (-1)
- Would be good to have more bathroom breaks (+2)
- If there is a an on and off suppervision, which can facilitate or enhance the coding in abetter way.
- Some breakout rooms could be cut in favor of longer discussions, alternatively menti first and discussions afterward
- make it clear when we are moving to Menti

x
