 # You can see the big picture in the following diagram:
 #Please check  readme.md file for big picture
 README.md:40


 #1)-------------------> Start with Story<-----------------------------------------------------
Feature:FAA Medical Pilot Certificate Expiry
  In order to encourage pilots to renew their medical examinations on time in a fair manner
  As an airline regulator
  I want to pilots to be downgraded to the next lowest status if they don't renew their medicals drops to 3rd class for 48 months after 12 months

  For full description of the feature, see https://expansion.serenity-dojo.com/courses/take/serenity-dojo-agile-and-bdd-requirements-discovery/texts/37229814-bdd-challenge-pilot-medicals

  #2) ---------------> After describe our stories, need to a few high level AC to go with user stories<-----------------------------------------------------
  # 1st write user stories then bullet points
  # The key constraints , the key AC
  The key acceptance criteria:
  #Please check  readme.md file for High level AC converted into Table Diagram
    README.md:83
  - License should only be  valid for reminder of the month
  - FAA validations should be measured from the last day of month
  - PILOTS     AGE       EXPIRES    DROPS ONCE EXPIRED / RULES
    1ST CLASS  UNDER 40  12 MONTHS  3RD CLASS FOR 48 MONTHS
    2ND CLASS  UNDER 40  12 MONTHS  3RD CLASS FOR 48 MONTHS
    1ST CLASS  OVER 40   6 MONTHS   2ND CLASS FOR 6 MONTHS
    2ND CLASS  OVER 40   12 MONTHS  3RD CLASS FOR 12 MONTHS
    3RD CLASS  UNDER 40  5 YEARS    CAN'T FLY
    3RD CLASS  OVER 40   2 YEARS    CAN'T FLY


  #3--------------------> We understand the actors<-----------------------------------------------------
  Most stories involve at least one, and sometimes several, actors.
  Understanding what actors are involved helps us reason about the tasks they need to perform to achieve the story goals.
  In our case, we can identify six actors:

  Actor / Personas:-
  Mike is 1st class pilot age 25
  Stan is 2nd class pilot age30
  Browyn is 1st class pilot age 41
  Silvia is second class pilot age 45
  Adam is 3rd class pilot age 29
  Adama is 3rd class pilot age 50

  #4-------------------> We break the feature into tasks or steps<-----------------------------------------------------
  Next we break the feature into steps or tasks.
  How does the actor (or actors) interact with the application to achieve the goal of this story?
  What tasks do they need to perform?
  If you were manually demonstrating how this feature worked, or that it worked, what are the steps you would need to do?
  This is like Story Mapping,
  but we are focusing on a particular feature or story, rather than trying to get a high level view of the application.

  In the story shown above ("Pilots to be downgraded to the next lowest status if they don't renew their medicals"), we might identify five main tasks:

  a) Pilot submits his license to FAA for review
  b) FAA officer opens the license details
  c) FAA officer checks license for each class category
  d) FAA officer returns the license to the pilot for renewal
  e) FAA officer saves and update the license results
  #Please check  README.MD file for Figure 2: We break a story into tasks or steps
  README.md:98

  #5-------------------> Examples, Rules and Questions<-----------------------------------------------------
  #Finding examples
  Once we have an idea of the tasks or steps involved in achieving the story goal, we talk through concrete examples of these steps.
  Each example illustrates a different flow through the steps.
  For our first example, we explore what happens when Mike submits a valid license:

  - Mike is first class pilot younger then 40 with valid license, so his license is saved and result updated as valid

  If we map this out into the various tasks we identified earlier, we would get something like this:

  #Please check  README.MD file for Figure 3: We map our various tasks
  README.md:111

  This example might be called a "happy path", but we don't stop here. We look for other examples that illustrate different flows through the story. At each step or task, we can ask questions like: "what else could happen here?" and "what other inputs would change the outcomes?"

  For example, what happens if Mike submits expired license? We could write another example, like the following:

  Mike license is expired and returned to apply for renewal

  If we map this on our feature map, we might get something like this:

   #Please check  README.MD file for Figure 4: Adding c counter-example
  README.md:123

  #6-------------------> Examples and Consequences<-----------------------------------------------------

  Sometimes the map reads more clearly if you have a consequence for each example row.

  This is especially good for examples that involve calculations.

  Sometimes you want to record the consequences for each example more explicitly.

  #Please check  README.MD file for Figure for @First-Class-Pilots-Rules-Journey-Scenarios
  README.md:152
  #Please check  README.MD file for Figure for @Second-Class-Pilots-Rules-Journey-Scenarios
  README.md:156
  #Please check  README.MD file for Figure for @Third-Class-Pilots-Rules-Journey-Scenarios
  README.md:160


  # 7 -------------------> Rules explain the examples, examples illustrate the rules<-----------------------------------------------------

  In Example Mapping, we say that examples illustrate business rules, and business rules explain (or give context to) the examples.

  Both of the previous examples illustrate the same business rule:

  To make this clearer, we can add a card to represent this rule at over the example title cards, as we do with Example Mapping:

  #Please check  README.MD file for Figure for RULES@First-Class-Pilots-Rules-Journey-Scenarios
  README.md:187
  #Please check  README.MD file for Figure for RULES@Second-Class-Pilots-Rules-Journey-Scenarios
  README.md:191
  #Please check  README.MD file for Figure for RULES@Third-Class-Pilots-Rules-Journey-Scenarios
  README.md:195

  # 8 ------------------->Questions highlight uncertainty <-----------------------------------------------------

  The third element of Example Mapping comes into play when you discover something that no one knows.

  #Please check  README.MD file for Figure for @Questions-Highlight-Uncertainty-Scenarios
  README.md:212

  # 9 ------------------->Working with negative cases <-----------------------------------------------------

  The examples we've seen so far could be described as "happy-day cases", smooth flows through the story.

  But our acceptance criteria should also describe negative scenarios, especially if they are important to the business.

  Negative scenarios help understand the positive scenarios better, and help flush out incorrect assumptions or missing details.

  Mick records license for pilot as expired and tries to return it, but he is not allowed to.

  #Please check  README.MD file for Figure for NegativeCases@First-Class-Pilots-Rules-Journey-Scenarios
  README.md:238
  #Please check  README.MD file for Figure for NegativeCases@Second-Class-Pilots-Rules-Journey-Scenarios
  README.md:242
  #Please check  README.MD file for Figure for NegativeCases@Third-Class-Pilots-Rules-Journey-Scenarios
  README.md:246

  #9.1) ------------#Counter-examples complete the picture ^^^^-------------------------------------------------

  #9.2) --------------Let’s look at another requirement-------------------------------------------------------

  Let’s look at another requirement.

  Suppose, after some investigation, we learn that where license cannot be used to fly

  Furthermore, our system needs to cater for license cannot be used to fly.

  To illustrate this rule properly, we really need two examples:

  one that shows that you can't record status for expired license  for pilots over/under 40 age,
  and another to show that can record status for non-expired license for other pilots.

  We could use examples like these:

  Mick records license for Mike's  and  it is marked as valid and is allowed to save the result
  Mick records license for Mike's  but he is not allowed save the result for expired license

  We could add all of these examples to the feature map as shown here:
  #Please check  README.MD file for Figure for Representing negative scenarios@Third-Class-Pilots-Rules-Journey-Scenarios
  README.md:267
  #Please check  README.MD file for Figure for Representing negative scenarios two@Third-Class-Pilots-Rules-Journey-Scenarios
  README.md:271

 # 10----------------------------- >From Feature Mapping to Test Automation<-----------------------------------------------------
  One of the nice things about this approach is that we can start automation immediately.

  Each example maps to a clear sequence of business-level tasks, which in turn are easy to automate.

  # Feature Mapping with Cucumber

  In Cucumber, for example, we can map the steps more-or-less directly to steps in the Cucumber scenario:

  Background:
    Given the following FAA license rules
      |  Pilot Licenses Categories Levels |  Expiry Rules                                                     ||     Medical certificates expires  |
      |  Level 0                          |  First class, Under 40 ,license drops to 3rd class for 48 months  ||      Every 12 months              |
      |  Level 1                          |  First class, Over 40  ,license drops to 2nd class for 6 months   ||      Every 6 months               |
      |  Level 2                          |  Second class, Under 40,license drops to 3rd class for 48 months  ||      Every 12 months              |
      |  Level 3                          |  Second class, Over 40 ,license drops to 3rd class for 12 months  ||      Every 12 months              |
      |  Level 4                          |  Third class, Under 40,license cannot be used to fly              ||      Every 60 months              |
      |  Level 5                          |  Third class, Over 40 ,license cannot be used to fly              ||      Every 24 months              |
    And Mark is a FAA Officer

  Scenario Outline:Medical pilots license expiry rule, must renew their licenses
    Given Mike is a <Class> pilot
    And   his personal details are as followings:
          | Age      | Pilot Category          |
          | <Age>    | <Pilot Category>        |
    When  his last medical was on the <Last Medical>
    Then  his license status should be dropped to following <Current Level>  :
      | Level 0    | | Level 1   | | Level 2     | | Level 3   | | Level 4   | | Level 5    |
      | <Level 0>  | | <Level 1> | | <Level 2>   | | <Level 3> | | <Level 4> | | <Level 5>  |
    And Mike should renew his <Next Medical> 

   @First-Class-Pilots-Rules-Journey-Scenarios

    Examples: The one where Mike younger than the Age 40
    First Class - commercial airline
    License drops to 3rd class for 48 months after 12 months if not renewed

      | Class | Age      | Pilot Category   | Last Medical   | Current Level | Next Medical |
      | First | Under 40 |Commercial Pilots | 12 months      | Level 0       | 48 months    |
      | First | Under 40 |Commercial Pilots | 6 months       | Unchanged     | 6 months     |
      | First | Under 40 |Commercial Pilots | 11 months      | Unchanged     | 1 month      |
      | First | Under 40 |Commercial Pilots | 5 months       | Unchanged     | 7 months     |

    Examples: The one where Stan over the age 40
    First class - commercial airline pilots
    License drops to 2nd class for 6 months after 6 months

      | Class | Age      | Pilot Category    | Last Medical | Current Level   | Next Medical |
      | First | Over 40  | Commercial Pilots | 6 months     | Level 1         | 6 months     |
      | First | Over 40  | Commercial Pilots | 5 months     | Unchanged       | 1 month      |
      | First | Over 40  | Commercial Pilots | 4 months     | Unchanged       | 2 months     |
      | First | Over 40  |Commercial Pilots  | 1 month      | Unchanged       | 5 month      |

   @Second-Class-Pilots-Journey-Scenarios

    Examples:The one where Browyn under the age 40
      Second class - other commercial airline pilots under the age 40
      License drops to third class for 48 months after 12 months

       | Class | Age      | Pilot Category          |  Last Medical | Current Level | Next Medical |
       | Second| Under 40 | Other Commercial Pilots | 12 months     | Level 2       | 48 months    |
       | Second| Under 40 | Other Commercial Pilots | 5 months      | Unchanged     | 7 months     |
       | Second| Under 40 | Other Commercial Pilots | 4 months      | Unchanged     | 8 months     |
       | Second| Under 40 | Other Commercial Pilots | 1 month       | Unchanged     | 11 months    |

    Examples:The one where Silvia over the age 40
    Second class - other commercial airline pilots over the age 40
    License drops to third class for 12 months after 12 months

        | Class | Age     | Pilot Category           | Last Medical | Current Level | Next Medical |
        | Second| Over 40 | Other Commercial Pilots  | 12 months    | Level 3       | 12 months    |
        | Second| Over 40 | Other Commercial Pilots  | 5 months     | Unchanged     | 7 months     |
        | Second| Over 40 | Other Commercial Pilots  | 4 months     | Unchanged     | 8 months     |
        | Second| Over 40 | Other Commercial Pilots  | 1 month      | Unchanged     | 11 months    |


    @Third-Class-Pilots-Journey-Scenarios

    Examples:The one where Adam under the age 40
    Third class - Private / Recreational airline pilots under the age 40
    License cannot cannot be used to fly after 60 months

        | Class | Age      | Pilot Category          | Last Medical |  Current Level | Next Medical  |
        | Third | Under 40 | Private / Recreational  | 60 months    | Level 4        | Unable to fly |
        | Third | Under 40 | Private / Recreational  | 55 months    | Unchanged      | 5 months      |
        | Third | Under 40 | Private / Recreational  | 44 months    | Unchanged      | 16 months     |
        | Third | Under 40 | Private / Recreational  | 1 month      | Unchanged      | 59 months     |

    Examples:The one where Adama over the age 40
    Third class - Private / Recreational airline pilots over the age 40
    License cannot cannot be used to fly after 24 months

        | Class | Age      | Pilot Category          | Last Medical  |  Current Level| Next Medical  |
        | Third | Over 40  | Private / Recreational  | 24 months     |  Level 5      | Unable to fly |
        | Third | Over 40  | Private / Recreational  | 20 months     |  Unchanged    | 4 months      |
        | Third | Over 40  | Private / Recreational  | 10 months     |  Unchanged    | 14 months     |
        | Third | Over 40  | Private / Recreational  | 1 month       |  Unchanged    | 23 months     |














