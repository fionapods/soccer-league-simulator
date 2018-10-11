![premierleaguelogo](https://user-images.githubusercontent.com/32840208/46785975-bea04200-cd33-11e8-8935-27b1ee8c4a24.jpg)

# Football-League

This is my first project and it is about creating a **Football League** as an Object Oriented Programming- (OOP) example using classes in Swift. I have chosen one of the existing English Football leagues called *"Premier League"* including some of its teams to create matches of the league. I have randomly created different matches of this league where home-team and foreign- team play against each other. Also, listed scores of each match and have generated the winner of the match. 

## Motivation 

Considering the fact that OOP is of wide use nowdays, understanding its principles is crucial in becoming a programmer. I have not only learned how to apply these concepts in code; but, also learned to organize my thoughts and translate them in code. Moreover, I worked on this proejct for a month so I also learned code documentation which helped me be more clear and consistent. 

## Challenges 

One of the challenges that I faced in the beggining were organizing classes and adding its functionality. Another challenge was finding a way to randomly generate two items within one array; thereby, creating matches. Moreover, I struggled in thinking of an algorithm that would generate matches were teams would be playing against each other without repeating any of the matches (please see table below). 

#### The idea was to match up home-teams and foreign-teams to play against each other as listed below.

```
| Home Team         | Foreign Team      |
| ----------------- | ----------------- |
| Manchester City   | Arsenal           |
| Manchester City   | Liverpool         |
| Manchester City   | Manchester United |
| Manchester City   | Chelsea           |
| Chelsea           | Manchester United |
| Chelsea           | Liverpool         |
| Chelsea           | Arsenal           |
| Manchester United | Liverpool         |
| Manchester United | Arsenal           |
| Liverpool         | Arsenal           |
 
 ```
 ## Source files- Code Structure 
 
 I created three different entities;
 
 1. Class Team - that has the name of the team and its winnings.
 
 2. Class Match - that has teams and match results. I created a function called play that randomly generates team scores of the match. I created a function that returns the winner of the match played using if statements.

3. Class League - that holds the name of the league, its teams, matches played and scores generated from the match. Created a function that generates matches where they should play only *once* against each other. To do this I used two for loops that would randomly match-up two items within one array (please see below the following algorithm). Moreover, in order to not repeat the matches I have used conditional statements where the index of the first item and the index of the second item should no be the same (please see the code snipped written below).

``` 
 public func start() {
        for (index, homeTeam) in teams.enumerated() {
            for (indexx, foreignTeam) in teams.enumerated() {
                if index != indexx && index > indexx {
                    
                    let matchObj = Match.init(homeTeam: homeTeam, foreignTeam: foreignTeam)
                    matches.append(matchObj)
                }
            }
        }
    }
```
Moreover, class League is also responsible to print results after the league is finished. 

### Test file

In the test playground I stored the teams in a constant called teams of type Team array and created a league object where the teams are passed in one of the paramaters of the league object as written below.

` let teams: [Team] = [ Team.init(name: "name")]`

`var league = League.init(name: "Premier League", teams: teams)`
```
league.start()
league.end()
league.printResults()
```
 ### Example of random match results
 
 ```
| Home Team         |      Score        | Foreign Team      |
| ----------------- | ----------------- | ----------------- |
| Liverpool         |      3 - 0        | Arsenal           |
| Manchester United |      2 - 2        | Arsenal           |
| Manchester United |      5 - 2        | Liverpool         |
| Chelsea           |      0 - 3        | Arsenal           |
| Chelsea           |      4 - 4        | Liverpool         |
| Chelsea           |      0 - 4        | Manchester United |
| Manchester City   |      2 - 2        | Arsenal           |
| Manchester City   |      0 - 3        | Liverpool         |
| Manchester City   |      2 - 3        | Manchester United |
| Manchester City   |      2 - 5        | Chelsea           |
 
```
 ## Built with
 
 Swift's Playground 

