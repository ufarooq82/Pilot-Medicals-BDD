Feature:Certificate expiry
  In order to encourage pilots to renew their medical examinations on time in a fair manner
  As an airline regulator
  I want to pilots to be downgraded to the next lowest status if they don't renew their medicals drops to 3rd class for 48 months after 12 months


  Scenario Outline: : Medical pilots license expiry rule, must renew their licenses

    Given Mark is a <Class> pilot
    And   his <DOB>
    And   <Issue Date>
    When  license <Expires>
    And   <Current Date>
    Then  his license status should be  <Eligible or Not Eligible>
    And   his license should be  <Not Dropped or Drops Once Expired>


    @First-Class-Pilots-Journey-Scenarios

    Examples:The one where first-class commercial airline pilots younger than the age of 40
    License drops to 3rd class for 48 months after 12 months if not renewed

      | Class | DOB        | Issue Date       | Expires     | Current Date | Eligible or Not Eligible | Not Dropped or Drops Once Expired                  |
      | First | 15-01-1990 | 15-01-2008       | 15-01-2009  | 01-01-2009   |   Eligible               | Not Dropped                                        |
      | First | 15-01-1990 | 15-01-2008       | 15-01-2009  | 15-01-2010   |   Not Eligible           | After 12 Months drops to third class for 48 months |

    Examples:The one where first-class commercial airline pilots over the age of 40
    License drops to 2nd class for 6 months after 6 months if not renewed

      | Class | DOB        | Issue Date       | Expires     | Current Date | Eligible or Not Eligible | Not Dropped or Drops Once Expired                  |
      | First | 15-01-1960 | 15-01-2007       | 15-07-2009  | 01-12-2009   |   Eligible               | Not Dropped                                        |
      | First | 15-01-1960 | 15-01-2007       | 15-07-2009  | 15-01-2008   |   Not Eligible           | After 6 Months drops to second class for 6 months  |



    @Second-Class-Pilots-Journey-Scenarios

    Examples:The one where second-class commercial airline pilots younger than the age of 40
    License drops to 3rd class for 48 months after 12 months if not renewed

      | Class  | DOB        | Issue Date       | Expires     | Current Date | Eligible or Not Eligible | Not Dropped or Drops Once Expired                  |
      | Second | 15-01-1989 | 15-01-2007       | 15-01-2008  | 01-01-2008   |   Eligible               | Not Dropped                                        |
      | Second | 15-01-1989 | 15-01-2007       | 15-01-2008  | 15-01-2009   |   Not Eligible           | After 12 Months drops to third class for 48 months |

    Examples:The one where second-class commercial airline pilots over the age of 40
    License drops to 3rd class for 12 months after 12 months if not renewed

      | Class  | DOB        | Issue Date       | Expires     | Current Date | Eligible or Not Eligible | Not Dropped or Drops Once Expired                  |
      | Second | 15-01-1960 | 15-01-2007       | 15-12-2007  | 14-12-2007   |   Eligible               | Not Dropped                                        |
      | Second | 15-01-1960 | 15-01-2007       | 15-12-2007  | 01-01-2008   |   Not Eligible           | After 12 Months drops to third class for 12 months |



    @Third-Class-Pilots-Journey-Scenarios

    Examples:The one where third-class recreational airline pilots younger than the age of 40
    Unable to fly if not renewed

      | Class  | DOB        | Issue Date       | Expires     | Current Date | Eligible or Not Eligible | Not Dropped or Drops Once Expired                  |
      | Third  | 15-01-1990 | 15-01-2007       | 15-12-2012  | 11-12-2012   |   Eligible               | Not Dropped                                        |
      | Third  | 15-01-1990 | 15-01-2007       | 15-12-2012  | 01-01-2013   |   Not Eligible           | Unable to fly                                      |

    Examples:The one where third-class recreational airline pilots over the age of 40
    Unable to fly if not renewed

      | Class  | DOB        | Issue Date       | Expires     | Current Date | Eligible or Not Eligible | Not Dropped or Drops Once Expired                  |
      | Second | 15-01-1960 | 15-01-2007       | 15-12-2009  | 14-12-2009   |   Eligible               | Not Dropped                                        |
      | Second | 15-01-1960 | 15-01-2007       | 15-12-2009  | 15-01-2010   |   Not Eligible           | Unable to fly                                      |





