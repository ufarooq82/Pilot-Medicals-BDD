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
 #  Adama is 3rd class pilot age 50

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
          | Age      | For          |
          | <Age>    | <For>        |
    When  his last medical was on <Last Medical>
    Then  his license status should be dropped to following <Next Level> :
      | Level 0    | | Level 1   | | Level 2     | | Level 3   | | Level 4   | | Level 5    |
      | <Level 0>  | | <Level 1> | | <Level 2>   | | <Level 3> | | <Level 4> | | <Level 5>  |
    And his next medical should be no later than <Next Medical>

   @First-Class-Pilots-Rules-Journey-Scenarios

    Examples: The one where Mike younger than the Age 40
    First Class - commercial airline
    License drops to 3rd class for 48 months after 12 months if not renewed

#      | Class | Age      | For              | Duration   | Level 0    | Level 1   | Level 2     | Level 3   |  Level 4   | Level 5    |
#      | First | Under 40 |Commercial Pilots | 12 months  | Yes        |   No      |  No         |  No       |  No        |  No        |
#      | First | Under 40 |Commercial Pilots | 6 months   | No         |   No      |   No        |  No       |  No        |  No        |
#      | First | Under 40 |Commercial Pilots | 11 months  | No         |   No      |   No        |  No       |  No        |  No        |
#      | First | Under 40 |Commercial Pilots | 5 months   | No         |   No      |   No        |  No       |  No        |  No        |


      | Class | Age      | For              | Last Medical   | Next Level    | Next Medical |
      | First | Under 40 |Commercial Pilots | 12 months      | Level 0       | 48 months    |
      | First | Under 40 |Commercial Pilots | 6 months       |               |              |
      | First | Under 40 |Commercial Pilots | 11 months      |               |              |
      | First | Under 40 |Commercial Pilots | 5 months       |               |              |

#  After 12 Months drops to third class for 48 months

    Examples: The one where Stan over the age 40
    First class - commercial airline pilots
    License drops to 2nd class for 6 months after 6 months

#      | Class | Age      | For               | Duration  | Level 0    | Level 1   | Level 2     | Level 3    |  Level 4   | Level 5    |
#      | First | Over 40  | Commercial Pilots | 6 months  | No         |   Yes     |  No         |  No        |  No        |  No        |
#      | First | Over 40  | Commercial Pilots | 5 months  | No         |   No      |  No         |  No        |  No        |  No        |
#      | First | Over 40  | Commercial Pilots | 4 months  | No         |   No      |  No         |  No        |  No        |  No        |
#      | First | Over 40  |Commercial Pilots  | 1 month   | No         |   No      |  No         |  No        |  No        |  No        |

      | Class | Age      | For               | Last Medical | Next Level       |  Next Medical |
      | First | Over 40  | Commercial Pilots | 6 months     | Level 1          |   6 months    |
      | First | Over 40  | Commercial Pilots | 5 months     | No               |               |
      | First | Over 40  | Commercial Pilots | 4 months     | No               |               |
      | First | Over 40  |Commercial Pilots  | 1 month      | No               |               |




#    Examples:The one where first-class commercial airline pilots younger than the age of 40
#    License doesn't drops to 3rd class for 48 months after 12months as license is still valid
#
#
#      | Class | DOB        | Issue Date       | Expires     | Current Date | Eligible or Not Eligible | Not Dropped or Drops Once Expired                  |
#      | First | 15-01-1990 | 15-01-2008       | 15-01-2009  | 01-01-2009   |   Eligible               | Not Dropped                                        |
#      | First | 15-01-1995 | 15-01-2013       | 15-01-2014  | 10-01-2014   |   Eligible               | Not Dropped                                        |
#      | First | 15-01-2000 | 15-01-2019       | 15-01-2020  | 01-01-2019   |   Eligible               | Not Dropped                                        |
#      | First | 15-01-1980 | 15-01-2005       | 15-01-2006  | 10-01-2006   |   Eligible               | Not Dropped                                        |
#
#    Examples:The one where first-class commercial airline pilots younger than the age of 40
#    License drops to 3rd class for 48 months after 12months as license if not renewed
#
#
#      | Class | DOB        | Issue Date       | Expires     | Current Date | Eligible or Not Eligible | Not Dropped or Drops Once Expired                  |
#      | First | 15-01-1990 | 15-01-2008       | 15-01-2009  | 16-01-2009   | Not Eligible             | After 12 Months drops to third class for 48 months |
#      | First | 15-01-1995 | 15-01-2013       | 15-01-2014  | 16-01-2014   | Not Eligible             | After 12 Months drops to third class for 48 months |
#      | First | 15-01-2000 | 15-01-2019       | 15-01-2020  | 16-01-2019   | Not Eligible             | After 12 Months drops to third class for 48 months |
#      | First | 15-01-1980 | 15-01-2005       | 15-01-2006  | 11-01-2006   | Not Eligible             | After 12 Months drops to third class for 48 months |
#
#    Examples:The one where first-class commercial airline pilots over than the age of 40
#    License doesn't drops to 2nd class for 6 months after 6months as license is still valid
#
#      | Class  | DOB        | Issue Date       | Expires     | Current Date | Eligible or Not Eligible | Not Dropped or Drops Once Expired                  |
#      | First  | 15-01-1960 | 15-01-2008       | 15-07-2008  | 01-07-2008   |   Eligible               | Not Dropped                                        |
#      | First  | 15-01-1965 | 15-01-2013       | 15-07-2013  | 10-07-2013   |   Eligible               | Not Dropped                                        |
#      | First  | 15-01-1960 | 15-01-2019       | 15-07-2019  | 01-01-2019   |   Eligible               | Not Dropped                                        |
#      | First  | 15-01-1965 | 15-01-2005       | 15-07-2005  | 10-07-2005   |   Eligible               | Not Dropped                                        |
#
#
#    Examples:The one where first-class commercial airline pilots over than the age of 40
#    License drops to 2nd class for 6 months after 6months as license if not renewed
#
#      | Class  | DOB        | Issue Date       | Expires     | Current Date | Eligible or Not Eligible | Not Dropped or Drops Once Expired                  |
#      | First  | 15-01-1960 | 15-01-2008       | 15-07-2008  | 16-07-2008   |   Not Eligible           | After 6 Months drops to second class for 6 months  |
#      | First  | 15-01-1965 | 15-01-2013       | 15-07-2013  | 16-07-2013   |   Not Eligible           | After 6 Months drops to second class for 6 months  |
#      | First  | 15-01-1960 | 15-01-2019       | 15-07-2019  | 16-01-2019   |   Not Eligible           | After 6 Months drops to second class for 6 months  |
#      | First  | 15-01-1965 | 15-01-2005       | 15-07-2005  | 16-07-2005   |   Not Eligible           | After 6 Months drops to second class for 6 months  |



#    Examples:The one where first-class commercial airline pilots younger than the age of 40
#    License drops to 3rd class for 48 months after 12 months if not renewed
#
#      | Class | DOB        | Issue Date       | Expires     | Current Date | Eligible or Not Eligible | Not Dropped or Drops Once Expired                  |
#      | First | 15-01-1990 | 15-01-2008       | 15-01-2009  | 01-01-2009   |   Eligible               | Not Dropped                                        |
#      | First | 15-01-1990 | 15-01-2008       | 15-01-2009  | 15-01-2010   |   Not Eligible           | After 12 Months drops to third class for 48 months |
#
#    Examples:The one where first-class commercial airline pilots over the age of 40
#    License drops to 2nd class for 6 months after 6 months if not renewed
#
#      | Class | DOB        | Issue Date       | Expires     | Current Date | Eligible or Not Eligible | Not Dropped or Drops Once Expired                  |
#      | First | 15-01-1960 | 15-01-2007       | 15-07-2009  | 01-12-2009   |   Eligible               | Not Dropped                                        |
#      | First | 15-01-1960 | 15-01-2007       | 15-07-2009  | 15-01-2008   |   Not Eligible           | After 6 Months drops to second class for 6 months  |



   @Second-Class-Pilots-Journey-Scenarios

    Examples:The one where Browyn under the age 40
      Second class - other commercial airline pilots under the age 40
      License drops to third class for 48 months after 12 months

       | Class | Age      | For                     |  Last Medical | Next Level       |  Next Medical |
       | Second| Under 40 | Other Commercial Pilots | 12 months     | Level 2          |   48 months   |
       | Second| Under 40 | Other Commercial Pilots | 5 months      |                  |               |
       | Second| Under 40 | Other Commercial Pilots | 4 months      |                  |               |
       | Second| Under 40 | Other Commercial Pilots | 1 month       |                  |               |

    Examples:The one where Silvia over the age 40
    Second class - other commercial airline pilots over the age 40
    License drops to third class for 12 months after 12 months

        | Class | Age      | For                     | Last Medical |  Next Level       |  Next Medical |
        | Second| Over 40 | Other Commercial Pilots  | 12 months    | Level 3           |   12 months   |
        | Second| Over 40 | Other Commercial Pilots  | 5 months     |                   |               |
        | Second| Over 40 | Other Commercial Pilots  | 4 months     |                   |               |
        | Second| Over 40 | Other Commercial Pilots  | 1 month      |                   |               |




#
#    Examples:The one where second-class commercial airline pilots younger than the age of 40
#    License doesn't drops to 3rd class for 48 months after 12months as license is still valid
#
#      | Class | DOB        | Issue Date       | Expires     | Current Date | Eligible or Not Eligible | Not Dropped or Drops Once Expired                  |
#      | Second| 15-01-1990 | 15-01-2008       | 15-01-2009  | 01-01-2009   |   Eligible               | Not Dropped                                        |
#      | Second| 15-01-1995 | 15-01-2013       | 15-01-2014  | 10-01-2014   |   Eligible               | Not Dropped                                        |
#      | Second| 15-01-2000 | 15-01-2019       | 15-01-2020  | 01-01-2019   |   Eligible               | Not Dropped                                        |
#      | Second| 15-01-1980 | 15-01-2005       | 15-01-2006  | 10-01-2006   |   Eligible               | Not Dropped                                        |
#
#
#    Examples:The one where second-class commercial airline pilots younger than the age of 40
#    License drops to 3rd class for 48 months after 12months as license if not renewed
#
#      | Class | DOB        | Issue Date       | Expires     | Current Date | Eligible or Not Eligible | Not Dropped or Drops Once Expired                  |
#      | Second| 15-01-1990 | 15-01-2008       | 15-01-2009  | 16-01-2009   | Not Eligible             | After 12 Months drops to third class for 48 months |
#      | Second| 15-01-1995 | 15-01-2013       | 15-01-2014  | 16-01-2014   | Not Eligible             | After 12 Months drops to third class for 48 months |
#      | Second| 15-01-2000 | 15-01-2019       | 15-01-2020  | 16-01-2019   | Not Eligible             | After 12 Months drops to third class for 48 months |
#      | Second| 15-01-1980 | 15-01-2005       | 15-01-2006  | 11-01-2006   | Not Eligible             | After 12 Months drops to third class for 48 months |
#
#    Examples:The one where second-class commercial airline pilots over than the age of 40
#    License doesn't drops to 2nd class for 6 months after 6months as license is still valid
#
#      | Class  | DOB        | Issue Date       | Expires     | Current Date | Eligible or Not Eligible | Not Dropped or Drops Once Expired                  |
#      | Second | 15-01-1960 | 15-01-2008       | 15-07-2008  | 01-07-2008   |   Eligible               | Not Dropped                                        |
#      | Second | 15-01-1965 | 15-01-2013       | 15-07-2013  | 10-07-2013   |   Eligible               | Not Dropped                                        |
#      | Second | 15-01-1960 | 15-01-2019       | 15-07-2019  | 01-01-2019   |   Eligible               | Not Dropped                                        |
#      | Second | 15-01-1965 | 15-01-2005       | 15-07-2005  | 10-07-2005   |   Eligible               | Not Dropped                                        |
#
#    Examples:The one where second-class commercial airline pilots over than the age of 40
#    License drops to 3rd class for 48 months after 12months as license if not renewed
#
#     | Class | DOB        | Issue Date       | Expires     | Current Date | Eligible or Not Eligible | Not Dropped or Drops Once Expired                  |
#     | Second| 15-01-1960 | 15-01-2008       | 15-01-2009  | 16-01-2009   | Not Eligible             | After 12 Months drops to third class for 12 months |
#     | Second| 15-01-1965 | 15-01-2013       | 15-01-2014  | 16-01-2014   | Not Eligible             | After 12 Months drops to third class for 12 months |
#     | Second| 15-01-1960 | 15-01-2019       | 15-01-2020  | 16-01-2019   | Not Eligible             | After 12 Months drops to third class for 12 months |
#     | Second| 15-01-1965 | 15-01-2005       | 15-01-2006  | 11-01-2006   | Not Eligible             | After 12 Months drops to third class for 12 months |




#    Examples:The one where second-class commercial airline pilots younger than the age of 40
#    License drops to 3rd class for 48 months after 12 months if not renewed
#
#      | Class  | DOB        | Issue Date       | Expires     | Current Date | Eligible or Not Eligible | Not Dropped or Drops Once Expired                  |
#      | Second | 15-01-1989 | 15-01-2007       | 15-01-2008  | 01-01-2008   |   Eligible               | Not Dropped                                        |
#      | Second | 15-01-1989 | 15-01-2007       | 15-01-2008  | 15-01-2009   |   Not Eligible           | After 12 Months drops to third class for 48 months |
#
#    Examples:The one where second-class commercial airline pilots over the age of 40
#    License drops to 3rd class for 12 months after 12 months if not renewed
#
#      | Class  | DOB        | Issue Date       | Expires     | Current Date | Eligible or Not Eligible | Not Dropped or Drops Once Expired                  |
#      | Second | 15-01-1960 | 15-01-2007       | 15-12-2007  | 14-12-2007   |   Eligible               | Not Dropped                                        |
#      | Second | 15-01-1960 | 15-01-2007       | 15-12-2007  | 01-01-2008   |   Not Eligible           | After 12 Months drops to third class for 12 months |



    @Third-Class-Pilots-Journey-Scenarios

    Examples:The one where Adam under the age 40
    Third class - Private / Recreational airline pilots under the age 40
    License cannot cannot be used to fly after 60 months

        | Class | Age      | For                     | Duration  |  Level 0    | Level 1   | Level 2     | Level 3   |  Level 4   | Level 5    |
        | Third | Under 40 | Private / Recreational  | 60 months |  No         |   No      |  No         |  No       |  YES       |  No        |
        | Third | Under 40 | Private / Recreational  | 55 months |  No         |   No      |  No         |  No       |  No        |  No        |
        | Third | Under 40 | Private / Recreational  | 44 months |  No         |   No      |  No         |  No       |  No        |  No        |
        | Third | Under 40 | Private / Recreational  | 1 month   |  No         |   No      |  No         |  No       |  No        |  No        |

    Examples:The one where Adama over the age 40
    Third class - Private / Recreational airline pilots over the age 40
    License cannot cannot be used to fly after 24 months

        | Class | Age      | For                     | Duration  |  Level 0    | Level 1   | Level 2     | Level 3   |  Level 4   | Level 5    |
        | Third | Over 40  | Private / Recreational  | 24 months |  No         |   No      |  No         |  No       |  No        |  Yes       |
        | Third | Over 40  | Private / Recreational  | 20 months |  No         |   No      |  No         |  No       |  No        |  No        |
        | Third | Over 40  | Private / Recreational  | 10 months |  No         |   No      |  No         |  No       |  No        |  No        |
        | Third | Over 40  | Private / Recreational  | 1 month   |  No         |   No      |  No         |  No       |  No        |  No        |





#    Examples:The one where third-class recreational airline pilots younger than the age of 40
#    License doesn't drops to Unable to Fly as license is still valid
#
#      | Class | DOB        | Issue Date       | Expires     | Current Date | Eligible or Not Eligible | Not Dropped or Drops Once Expired                  |
#      | Second| 15-01-1990 | 15-01-2008       | 15-01-2009  | 01-01-2009   |   Eligible               | Not Dropped                                        |
#      | Second| 15-01-1995 | 15-01-2013       | 15-01-2014  | 10-01-2014   |   Eligible               | Not Dropped                                        |
#      | Second| 15-01-2000 | 15-01-2019       | 15-01-2020  | 01-01-2019   |   Eligible               | Not Dropped                                        |
#      | Second| 15-01-1980 | 15-01-2005       | 15-01-2006  | 10-01-2006   |   Eligible               | Not Dropped                                        |
#
#
#    Examples:The one where second-class commercial airline pilots younger than the age of 40
#    License drops to Unable to Fly if not renewed
#
#      | Class | DOB        | Issue Date       | Expires     | Current Date | Eligible or Not Eligible | Not Dropped or Drops Once Expired                  |
#      | Second| 15-01-1990 | 15-01-2008       | 15-01-2009  | 16-01-2009   | Not Eligible             | Unable to fly                                      |
#      | Second| 15-01-1995 | 15-01-2013       | 15-01-2014  | 16-01-2014   | Not Eligible             | Unable to fly                                      |
#      | Second| 15-01-2000 | 15-01-2019       | 15-01-2020  | 16-01-2019   | Not Eligible             | Unable to fly                                      |
#      | Second| 15-01-1980 | 15-01-2005       | 15-01-2006  | 11-01-2006   | Not Eligible             | Unable to Fly                                      |
#
#
#    Examples:The one where third-class recreational airline pilots over than the age of 40
#    License doesn't drops to Unable to Fly as license is still valid
#
#      | Class | DOB        | Issue Date       | Expires     | Current Date | Eligible or Not Eligible | Not Dropped or Drops Once Expired                  |
#      | Second| 15-01-1960 | 15-01-2008       | 15-01-2009  | 01-01-2009   |   Eligible               | Not Dropped                                        |
#      | Second| 15-01-1965 | 15-01-2013       | 15-01-2014  | 10-01-2014   |   Eligible               | Not Dropped                                        |
#      | Second| 15-01-1960 | 15-01-2019       | 15-01-2020  | 01-01-2019   |   Eligible               | Not Dropped                                        |
#      | Second| 15-01-1965 | 15-01-2005       | 15-01-2006  | 10-01-2006   |   Eligible               | Not Dropped                                        |
#
#
#    Examples:The one where second-class commercial airline pilots over than the age of 40
#    License drops to Unable to Fly if not renewed
#
#      | Class | DOB        | Issue Date       | Expires     | Current Date | Eligible or Not Eligible | Not Dropped or Drops Once Expired                  |
#      | Second| 15-01-1990 | 15-01-2008       | 15-01-2009  | 16-01-2009   | Not Eligible             | Unable to fly                                      |
#      | Second| 15-01-1995 | 15-01-2013       | 15-01-2014  | 16-01-2014   | Not Eligible             | Unable to fly                                      |
#      | Second| 15-01-2000 | 15-01-2019       | 15-01-2020  | 16-01-2019   | Not Eligible             | Unable to fly                                      |
#      | Second| 15-01-1980 | 15-01-2005       | 15-01-2006  | 11-01-2006   | Not Eligible             | Unable to Fly                                      |
#
#
#




#    Examples:The one where third-class recreational airline pilots younger than the age of 40
#    Unable to fly if not renewed
#
#      | Class  | DOB        | Issue Date       | Expires     | Current Date | Eligible or Not Eligible | Not Dropped or Drops Once Expired                  |
#      | Third  | 15-01-1990 | 15-01-2007       | 15-12-2012  | 11-12-2012   |   Eligible               | Not Dropped                                        |
#      | Third  | 15-01-1990 | 15-01-2007       | 15-12-2012  | 01-01-2013   |   Not Eligible           | Unable to fly                                      |
#
#    Examples:The one where third-class recreational airline pilots over the age of 40
#    Unable to fly if not renewed
#
#      | Class  | DOB        | Issue Date       | Expires     | Current Date | Eligible or Not Eligible | Not Dropped or Drops Once Expired                  |
#      | Second | 15-01-1960 | 15-01-2007       | 15-12-2009  | 14-12-2009   |   Eligible               | Not Dropped                                        |
#      | Second | 15-01-1960 | 15-01-2007       | 15-12-2009  | 15-01-2010   |   Not Eligible           | Unable to fly                                      |





