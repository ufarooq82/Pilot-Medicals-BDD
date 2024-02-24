Feature:Certificate expiry
  In order to encourage pilots to renew their medical examinations on time in a fair manner
  As an airline regulator
  I want to pilots to be downgraded to the next lowest status if they don't renew their medicals drops to 3rd class for 48 months after 12 months

  For full description of the feature, see https://expansion.serenity-dojo.com/courses/take/serenity-dojo-agile-and-bdd-requirements-discovery/texts/37229814-bdd-challenge-pilot-medicals

 #  Personas
 #  Mike is 1st class pilot age 25
 #  Stan is 2nd class pilot age30
 #  Browyn is 1st class pilot age 41
 #  Silvia is second class pilot age 45
 #  Adam is 3rd class pilot age 29
 #  Adama is 3rd class pilot age 50 --





  Background:
    Given the following FAA license rules :
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
    Then  his license status should be dropped to following <Next Level>  :
      | Level 0    | | Level 1   | | Level 2     | | Level 3   | | Level 4   | | Level 5    |
      | <Level 0>  | | <Level 1> | | <Level 2>   | | <Level 3> | | <Level 4> | | <Level 5>  |
    And his next medical should be no later than <Next Medical>

   @First-Class-Pilots-Rules-Journey-Scenarios

    Examples: The one where Mike younger than the Age 40
    First Class - commercial airline
    License drops to 3rd class for 48 months after 12 months if not renewed

      | Class | Age      | Pilot Category   | Last Medical   | Next Level    | Next Medical |
      | First | Under 40 |Commercial Pilots | 12 months      | Level 0       | 48 months    |
      | First | Under 40 |Commercial Pilots | 6 months       |               |              |
      | First | Under 40 |Commercial Pilots | 11 months      |               |              |
      | First | Under 40 |Commercial Pilots | 5 months       |               |              |

    Examples: The one where Stan over the age 40
    First class - commercial airline pilots
    License drops to 2nd class for 6 months after 6 months

      | Class | Age      | Pilot Category    | Last Medical | Next Level      |  Next Medical |
      | First | Over 40  | Commercial Pilots | 6 months     | Level 1         |   6 months    |
      | First | Over 40  | Commercial Pilots | 5 months     | No              |               |
      | First | Over 40  | Commercial Pilots | 4 months     | No              |               |
      | First | Over 40  |Commercial Pilots  | 1 month      | No              |               |

   @Second-Class-Pilots-Journey-Scenarios

    Examples:The one where Browyn under the age 40
      Second class - other commercial airline pilots under the age 40
      License drops to third class for 48 months after 12 months

       | Class | Age      | Pilot Category          |  Last Medical | Next Level |  Next Medical |
       | Second| Under 40 | Other Commercial Pilots | 12 months     | Level 2    |   48 months   |
       | Second| Under 40 | Other Commercial Pilots | 5 months      |            |               |
       | Second| Under 40 | Other Commercial Pilots | 4 months      |            |               |
       | Second| Under 40 | Other Commercial Pilots | 1 month       |            |               |

    Examples:The one where Silvia over the age 40
    Second class - other commercial airline pilots over the age 40
    License drops to third class for 12 months after 12 months

        | Class | Age     | Pilot Category           | Last Medical |  Next Level |  Next Medical |
        | Second| Over 40 | Other Commercial Pilots  | 12 months    | Level 3     |  12 months    |
        | Second| Over 40 | Other Commercial Pilots  | 5 months     |             |               |
        | Second| Over 40 | Other Commercial Pilots  | 4 months     |             |               |
        | Second| Over 40 | Other Commercial Pilots  | 1 month      |             |               |


    @Third-Class-Pilots-Journey-Scenarios

    Examples:The one where Adam under the age 40
    Third class - Private / Recreational airline pilots under the age 40
    License cannot cannot be used to fly after 60 months

        | Class | Age      | Pilot Category          | Last Medical |  Next Level    | Next Medical  |
        | Third | Under 40 | Private / Recreational  | 60 months    |  Level 4       | Unable to fly |
        | Third | Under 40 | Private / Recreational  | 55 months    |                |               |
        | Third | Under 40 | Private / Recreational  | 44 months    |                |               |
        | Third | Under 40 | Private / Recreational  | 1 month      |                |               |

    Examples:The one where Adama over the age 40
    Third class - Private / Recreational airline pilots over the age 40
    License cannot cannot be used to fly after 24 months

        | Class | Age      | Pilot Category          | Last Medical  |  Next Level   | Next Medical  |
        | Third | Over 40  | Private / Recreational  | 24 months     |  Level 5      | Unable to fly |
        | Third | Over 40  | Private / Recreational  | 20 months     |  No           |   No          |
        | Third | Over 40  | Private / Recreational  | 10 months     |  No           |   No          |
        | Third | Over 40  | Private / Recreational  | 1 month       |  No           |   No          |









