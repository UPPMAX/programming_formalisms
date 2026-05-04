!!! info "Learning outcomes"

    Learners ...

    - understand what a Risk is
    - understand how to evaluate risk and creating a risk matrix
    - Have added risks to the requirements of an SRS including mitigation

## Risk analysis

Risk analysis is central in some systems like RDD(Risk Driven Development),
FDA(FDA-1997-D-0029) splits into two types Business risks and Technical risk.
Where Business risk relates to direct requirements while technical risks
are from derived requirements.
One type of risk assessment is the Failure modes and effects analysis
commonly abbreviated FMEA
which calculate the risk in Probability of occurrence x severity of
risk **RISK=PxS** a risk matrix is used to define what level of severity
and occurrence warrants what action.

!!! hint "How big should the risk analysis matrix be?"

    It is common is to divide it in 5 severity categories and 5 probability
    levels then establishing a table as below to asses which needs are the
    most important to address.
    Risk probability goes from P1 (very unlikely to
    occur) - P5(Happens in all execution)
    Risk severity goes from S1(minor or no effect),
    S2(Some Impact or noticeable by user),
    S3(Major impact on execution of program or result with minor loss of
    resources at end user),
    S4(Prevents execution of software or cause major loss of resources to user),
    S5(major injury or death cause by unhandled risk)

<table>
 <tr>
    <th>Probability/Severity</th>
    <th>S1</th>
    <th>S2</th>
    <th>S3</th>
    <th>S4</th>
    <th>S5</th>
  </tr>
  <tr>
    <td>P5</td>
    <td style="background-color: DARKGOLDENROD">
      <p align=center>5</p>Supplementary issue
    </td>
    <td style="background-color: ORANGE">
      <p align=center>10</p>Issue
    </td>
    <td style="background-color: RED">
      <p align=center>15</p>Unacceptable
    </td>
    <td style="background-color: RED">
      <p align=center>20</p>Unacceptable
    </td>
    <td style="background-color: RED">
      <p align=center>25</p>Unacceptable
    </td>

  </tr>
  <tr>
    <td>P4</td>
    <td style="background-color: GREEN">
     <p align=center>4</p>Acceptable
    </td>
    <td style="background-color: DARKGOLDENROD">
      <p align=center>8</p>Supplementary issue
    </td>
    <td style="background-color: ORANGE">
      <p align=center>12</p>Issue
    </td>
    <td style="background-color: RED">
    <p align=center>16</p>Unacceptable
    </td>
    <td style="background-color: RED">
    <p align=center>20</p>Unacceptable
    </td>

  </tr>
  <tr>
    <td>P3</td>
   <td style="background-color: GREEN">
   <p align=center>3</p>Acceptable
   </td>
    <td style="background-color: DARKGOLDENROD">
    <p align=center>6</p>Supplementary issue
    </td>
    <td style="background-color: DARKGOLDENROD">
      <p align=center>9</p>Supplementary issue
    </td>
    <td style="background-color: ORANGE">
      <p align=center>12</p>Issue
    </td>
    <td style="background-color: RED">
    <p align=center>15</p>Unacceptable
    </td>
  </tr>
  <tr>
    <td>P2</td>
    <td style="background-color: GREEN">
    <p align=center>2</p>Acceptable
    </td>
    <td style="background-color: GREEN">
    <p align=center>4</p>Acceptable
    </td>
    <td style="background-color: DARKGOLDENROD">
    <p align=center>6</p>Supplementary issue
    </td>
    <td style="background-color: DARKGOLDENROD">
    <p align=center>8</p>Supplementary issue
    </td>
    <td style="background-color: ORANGE">
    <p align=center>10</p>issue
    </td>
  </tr>
  <tr>
    <td>P1</td>
    <td style="background-color: GREEN">
    <p align=center>1</p>Acceptable
    </td>
    <td style="background-color: GREEN">
    <p align=center>2</p>Acceptable
    </td>
    <td style="background-color: GREEN">
    <p align=center>3</p>Acceptable
    </td>
    <td style="background-color: GREEN">
    <p align=center>4</p>Acceptable
    </td>
    <td style="background-color: DARKGOLDENROD">
    <p align=center>5</p>Supplementary issue
    </td>
  </tr>
</table>

!!! hint "Where to focus?"

    Focus on the risks  that are issues or unacceptable first.
    Then develop towards risks that are acceptable

???- "Turning Requirements and Risk matrix into actionable Feature list"
  Using the Requirements and risk matrix we can design a feature list
  which can be tracked using issues or project tab in Git or in a separate
  document. The feature list describes how to solve a requirement in
  plaintext english and with flowcharts This initiates a design phase in
  the development
