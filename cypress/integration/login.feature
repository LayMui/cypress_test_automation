Feature: login
    In order to perform authentication to access the system
    As a user based on the role given James
    James want to login to the system

  Background:
    Given James is at the url page

  @rest @web @noLogin
  Scenario Outline: login with correct credentials
    In order to perform authentication to access the KPO system
    As a user based on the role given James
    James wants to login with correct credentials
    When James login with username "<username>" and password "<password>"
    Then James is able to login

    Examples:
      | username | password |
      | admin | pass |
      | admin@mymail.com | pass |

  @rest @web @noLogin
  Scenario Outline: login with incorrect credentials (<hiptest-uid>)
    In order to perform validation to access the system
    As a user based on the role given James
    James is not allowed to login with incorrect credentials
    When James login with username "<username>" and password "<password>"
    Then James is unable to login

    Examples:
      | username | password | hiptest-uid |
      | admin | pass123 | uid 76c662ac-095b-42ec-9d45-2fe1fd0ea99e |
      | adminr@mymail.com | pass123 | uid ec6bb7af-c5f1-4a71-8392-95892c7f92f4 |
