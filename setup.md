# Setup

Please check this page!!
<https://uppmax.github.io/programming_formalisms_intro/setup.html>

The text below is also available in the above link but for your convenience it is here as well for you to test the PlantUML browser plugin.

## PlantUML

- We will use the tool PlantUML to render UML code to graphical diagrams and flowcharts.
- If you want PlantUML to render directly from a file on GitHub please install the **extension PlantUML viewer to your web browser**.
- works for multiple browsers [https://github.com/marcozaccari/markdown-diagrams-browser-extension](https://github.com/marcozaccari/markdown-diagrams-browser-extension)
    - Restart browser after installation!
- if the above does not work try
    - Firefox: PlantUML visualizer (is not compatible with !theme _none_ tag)
    - Chrome: Pegmatite,PlantUML viewer
    - Microsoft Edge Markdown Diagrams
- When done you should see the code below as a diagram.

```plantuml
@startuml
!theme superhero
title:"USECASE Diagrams"
skinparam actorStyle awesome
Lecturer -d->(Present slides on UML)
Participant-d->(learn UML from SLIDES)
@enduml
```
