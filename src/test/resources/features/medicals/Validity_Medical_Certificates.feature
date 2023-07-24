Feature:Certificate expiry
  In order to encourage pilots to renew their medical examinations on time in a fair manner
  As an airline regulator
  I want to pilots to be downgraded to the next lowest status if they don't renew their medicalsdrops to 3rd class for 48 months after 12 months

  Scenario:Commercial Pilots 1st class: Every 12 months if younger than age 40 need to renew their license, Every 6 months over 40

    Rule:Pilots  1st class : Every 12 months if younger than age 40 : license drops to 3rd class for 48 months after 12 months
      @journey-scenario

      Background:
      Given Pilot 1 is first class pilot under age of 40 for commercial airline


    Example: The one where Pilot 1 younger than the age 40
        First class - commercial airline pilots under the age 40
        License drops to 3rd class for 48 months after 12 months if not renewed


        When Pilot 1 license renewed on 31 December 2021 with following details:
             | Class       | Age     | Date of Birth | Duration ||License Expires|
             | First Class | Under 40| 01 Jan 1985   | 12 Months||31st December  |

        And  Pilot 1 license will be expired after 31st December 2022
        Then Pilot 1 license drops to 3rd class for 48 months after 12 months if not renewed
            | Class       | Age     | Date of Birth | Duration ||License Expires|| Drops To |
            | First Class | Under 40| 01 Jan 1985   | 12 Months||31st December  || After 12 Months drops to third class for 48 months|

      Scenario Outline: First class Medical pilots license expiry rules

        When  Pilot 1 <Class> for <For> who is <Age> license expires after <Duration>
        Then  his license status  drops to <Drops To>
        Examples:
            | Class | Age      | For              | Duration   | Drops To |
            | First | Under 40 |Commercial Pilots | 12 months  | After 12 Months drops to third class for 48 months |
            | First | Under 40 |Commercial Pilots | 6 months   |                                                    |
            | First | Under 40 |Commercial Pilots | 11 months  |                                                    |
            | First | Under 40 |Commercial Pilots | 5 months   |                                                    |



    Rule:1st class: Every 6 months over 40 : license drops to 2nd class for 6months after 6months
      Background:
        Given Pilot 2 is first class pilot over the age of 40 for commercial airline

      Example: The one where Pilot 2 over the age 40
      First class - commercial airline pilots over the age 40
      License drops to 2nd class for 6 months after 6 months

        When Pilot 2 license renewed on 31 December 2021 with following details:
          | Class       | Age     | Date of Birth | Duration | Drops To |
          | First Class | Over  40| 01 Jan 1980    | 6 Months | After 6 Months drops to second class for 6 months|
        And Pilot 2 license expires on 31 June 2022

        Then Pilot 2 license drops to 2nd class for 6 months
          | Class       | Age     | Date of Birth | Duration ||License Expires|| Drops To |
          | First Class | Over 40 | 01 Jan 1980   | 6 Months || 30 June 2022  || After 6 Months drops to second class for 6 months|


      Scenario Outline: First class Medical pilots license expiry rules for over 40.

        When  Pilot 2 <Class> for <For> who is <Age> license expires after <Duration>
        Then  his license status  drops to <Drops To>
        Examples:
          | Class | Age      | For               | Duration   | Drops To |
          | First | Over 40 | Commercial Pilots | 6 months  | After 6 Months drops to second class for 6 months |
          | First | Over 40 | Commercial Pilots | 5 months  |                                                    |
          | First | Over 40 | Commercial Pilots | 4 months  |                                                    |
          | First | Over 40 |Commercial Pilots  | 1 month   |                                                    |



      Scenario:2nd class Commercial Pilots : Every 12 months

      Rule:For 2nd class pilots under 40: license drops to 3rd class for 48 months after 12 months

        Background:
          Given Pilot 3 is second class pilot under the age of 40 for commercial airline whom license expires every 12 months

      Example:The one where Pilot 3 under the age 40
      Second class - other commercial airline pilots under the age 40
      License drops to third class for 48 months after 12 months

        When Pilot 3 license renewed on 31 December 2021 with following details:
          | Class       | Age     | Date of Birth | Duration | Drops To |
          | Second Class| Under 40| 01 Jan 1985   | 12 Months | After 12 Months drops to third class for 48 months|
        And Pilot 3 license expires on  01 Jan 2023

        Then Pilot 3 license drops to 3rd class for 48 months
          | Class       | Age     | Date of Birth | Duration ||License Expires|| Drops To |
          | Second Class | Under 40 | 01 Jan 1985  | 12 Months || 01 Jan 2023  || After 12 Months drops to third class for 48 months|


      Scenario Outline: Second class Medical pilots license expiry rules for under 40.

        When  Pilot 3 <Class> for <For> who is <Age> license expires after <Duration>
        Then  his license status  drops to <Drops To>
        Examples:
          | Class | Age      | For                     | Duration  | Drops To |
          | Second| Under 40 | Other Commercial Pilots | 12 months  | After 12 Months drops to third class for 48 months |
          | Second| Under 40 | Other Commercial Pilots | 5 months  |                                                   |
          | Second| Under 40 | Other Commercial Pilots | 4 months  |                                                   |
          | Second| Under 40 | Other Commercial Pilots | 1 month   |                                                   |




    Rule:For 2nd class commercial pilots over 40: license drops to 3rd class for 12 months

      Background:
        Given Given Pilot 4 is second class pilot over the age of 40 for commercial whom license expires every 12 months

    Example:The one where Pilot 4 over the age 40
    Second class - other commercial airline pilots over the age 40
    License drops to third class 12 months after 12 months

      When Pilot 4 license renewed on 31 December 2021 with following details:
        | Class       | Age     | Date of Birth | Duration | Drops To |
        | Second Class| Over 40 | 01 Jan 1980   | 12 Months | After 12 Months drops to third class for 12 months|
      And Pilot 4 license expires on  01 Jan 2023

      Then Pilot 4 license drops to 3rd class for 12 months
        | Class       | Age     | Date of Birth | Duration ||License Expires|| Drops To |
        | Second Class| Over 40 | 01 Jan 1980   | 12 Months|| 01 Jan 2023  || After 12 Months drops to third class for 12 months|


    Scenario Outline: Second class Medical pilots license expiry rules for over 40.

      When  Pilot 4 <Class> for <For> who is <Age> license expires after <Duration>
      Then  his license status  drops to <Drops To>
      Examples:
        | Class | Age      | For                     | Duration  | Drops To |
        | Second| Over 40 | Other Commercial Pilots | 12 months  | After 12 Months drops to third class for 12 months|
        | Second| Over 40 | Other Commercial Pilots | 5 months  |                                                    |
        | Second| Over 40 | Other Commercial Pilots | 4 months  |                                                    |
        | Second| Over 40 | Other Commercial Pilots | 1 month   |                                                    |




  Scenario:Recreational Pilots 3rd class: 2 Years if over 40 , 5 years if under 40

  Rule:For Recreational Pilots under 40: license expires cannot be used to fly

    Background:
      Given Pilot 5 is recreational pilot whom license expires after 60 months

    Example:The one where Pilot 5 under the age 40
    Third class - Private / Recreational airline pilots under the age 40
    License cannot cannot be used to fly after 60 months

      When Pilot 5 license renewed on 31 December 2021 with following details:
        | Class       | Age     | Date of Birth | Duration | Drops To |
        | Third Class | Under 40| 01 Jan 1985   | 60 Months | After 60 Months license |
      And Pilot 5 license expires on  01 Jan 2026

      Then Pilot 5 license cannot be used to fly after expired
        | Class       | Age     | Date of Birth | Duration ||License Expires|| Drops To                              |
        | Third Class | Under 40| 01 Jan 1985   | 60 Months|| 01 Jan 2026   || After 60 Months cannot be used to fly |


    Scenario Outline: Third class Medical pilots license expiry rules for under 40.

      When  Pilot 5 <Class> for <For> who is <Age> license expires after <Duration>
      Then  his license status  drops to <Drops To>
      Examples:
        | Class | Age      | For                     | Duration  | Drops To |
        | Third | Under 40 | Private / Recreational  | 60 months | After 60 Months cannot be used to fly              |
        | Third | Under 40 | Private / Recreational  | 55 months |                                                    |
        | Third | Under 40 | Private / Recreational  | 44 months |                                                    |
        | Third | Under 40 | Private / Recreational  | 1 month   |                                                    |



  Rule:For Recreational Pilots over 40: license expires cannot be used to fly

    Example:The one where Pilot 6 over the age 40
    Third class - Private / Recreational airline pilots over the age 40
    License cannot cannot be used to fly after 24 months
      Given Pilot 6 is recreational pilot whom license expires after 24 months
      When Pilot 6 license renewed on 31 December 2021 with following details:
        | Class       | Age     | Date of Birth | Duration | Drops To |
        | Third Class | Under 40| 01 Jan 1985   | 24 Months | After 24 Months license cannot be used to fly |
      And Pilot 6 license expires on  01 Jan 2023

      Then Pilot 6 license cannot be used to fly after expired
        | Class       | Age     | Date of Birth | Duration ||License Expires|| Drops To                              |
        | Third Class | Over 40 | 01 Jan 1980   | 24 Months|| 01 Jan 2023   || After 24 Months cannot be used to fly |


    Scenario Outline: Third class Medical pilots license expiry rules for over 40.

      When  Pilot 6 <Class> for <For> who is <Age> license expires after <Duration>
      Then  his license status  drops to <Drops To>
      Examples:
        | Class | Age      | For                     | Duration  | Drops To |
        | Third | Over 40  | Private / Recreational  | 24 months | After 24 Months cannot be used to fly              |
        | Third | Over 40  | Private / Recreational  | 20 months |                                                    |
        | Third | Over 40  | Private / Recreational  | 10 months |                                                    |
        | Third | Over 40  | Private / Recreational  | 1 month   |                                                    |


