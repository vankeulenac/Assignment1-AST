Feature: recommend new friends to a person on Facebook

  In order to recommend new friends to a person on Facebook
  As an programmer of 'Facebook'
  I want to have an algorithm to do this for me

  Scenario: with more friendships than people #friendship is wederzijds
    Given a social media network
    And a friendships is a two-way connection
    And 5 people  #with 5 people, the total amount of connections between the nodes is 10. First person, node, can connect with 4 people, than the next 3, the other 2, the last with one other person. Because friendships are a two-way connection.
    And 8 friendships
    When I recommend new friendships
    Then at most 2 new friendships can be recommended

  Scenario: with less friendships than people
    Given a social media network
    And a frienship is a two-way connection
    And 5 people
    And 4 friendships
    When I recommend new friendships
    Then at most 6 new friendships can be recommended
    And at least 2 people do not have a friendship


  Scenario: with more friendships than people
    Given a social media network
    And a friendship is a one-way connection
    And 5 people #within 5 people, the total amount of connection between the nodes is 20. It's the same as in the first scenario but multiplied by 2 since a friendship now consists out of a one-way connection.
    And 15 friendships
    When I recommend new friendships
    Then at most 5 new friendships can be recommended
