# DPUA requirement specification

| Requirement ID | Requirement Description | Acceptance Criteria | Test Cases |
|----------------|-------------------------|---------------------|------------|
| R1             | Visual Display         | The program must display a field with particles and a visual cue to runtime settings | - Verify that the program opens a graphical window or interface for displaying particles. |
| R2             | Particle Initialization | Particles must be initialized with positions and speeds and constants relevant to the simulation such as gravity or energy potentials and parameters must be initialized | - Confirm that each particle has a unique position and speed. and that each parameter is set|
| R3             | Particle Interaction   | Particles must interact with each other with at least pair wise interactions | - Implement a chosen interaction (e.g., gravitational attraction, Lennard-Jones potential, or direction alignment). - Verify that particles respond to each other's presence. |
| R4             | Boundary Condition     | Choose a boundary condition for the field  this includes how to handle interactions across borders| - Implement chosen boundary conditions (e.g., bounce, wrap, or elimination). - Confirm that particles behave according to the chosen boundary conditions. |
| R5             | Simulation Step        | The simulation should progress in discrete steps | - Implement a mechanism to advance the simulation step by step. |
| R6             | Real-time Visualization | Draw each simulation step with a suitable frame rate update | - Ensure that the simulation displays each step visually as it progresses. |
| R7             | Maximum Particle Limit  | The simulation should handle a maximum number of particles set in the runtime settings| - Test the simulation with varying numbers of particles up to the maximum limit and verify that it remains stable. |
| R8             | Acceptable Framerate    | The simulation should maintain an acceptable framerate even at maximum number of particles| - Measure and verify that the framerate remains above a defined threshold with the maximum number of particles. |
| R9             | Stop Simulation         | Ability to stop the simulation through interruption of the current main loop  | - Implement a user interface or mechanism to stop the simulation.  and check that the simulation ends when such mechanisms are invoked|
| R10           | Restart simulation| A simulation should be able to restart without restarting the interface| Test that the implementation of the restart function can activate after the simulation has ended|
| R11            | Test-Driven Development | Develop the project using TDD | - Write test cases before implementing each feature or functionality. - Ensure that the tests pass after implementing the code.|

```mermaid
requirementDiagram

requirement VisualDisplay {
    id: R1
    text: The progrma must display a field with particles and a visual cue to runtime settings.
    risk: low
    verifymethod: Test
    }

requirement  Particle_Initialization{
    id: R2
    text: Particles must be initialized with positions and speeds and constants relevant to the simulation such as gravity or energy potentials and parameters must be initialized
    risk: High
    verifymethod: Test
    }

element test_gui {
    type: "visual verification"
    docref: None
    }

element test_settings_cue {
    type: "visual verification"
    docref: None
    }

element test_Initialization {
    type: "simulation"
    docref: None
    }

test_gui - satisfies -> VisualDisplay
test_settings_cue - satisfies -> VisualDisplay
test_Initialization - satisfies -> Particle_Initialization
```
