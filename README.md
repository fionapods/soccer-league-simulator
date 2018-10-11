![premierleaguelogo](https://user-images.githubusercontent.com/32840208/46785975-bea04200-cd33-11e8-8935-27b1ee8c4a24.jpg)

# Football-League

This is my first project and it is about creating a **Football League** as an OOP example using classes in Swift. I have chosen one of the existing English Football leagues called *"Premier League"* including some of its teams to create matches of the League. I have created different matches for this League where home team and foreign team play against each other. I have also listed scores of each match and have generated the winner of the match. 

#### The idea is to match up home-teams and foreign-teams to play against each other as listed below.

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
 ### Code Structure
 
 I created three different entities;
 
 1. Class Team - that has the name of the team and its winnings.
 
 2. Class Match - that has teams and match results. I created a function called play that randomly generates team scores of the match as seen below in the code snippet below;
 
 ```
func play() {
    let homeTeamScore = Int(arc4random_uniform(6))
    let foreignTeamScore = Int(arc4random_uniform(6))     
```
I also created a function that returns the winner of the match played as seen in the code snippet below;

```
func getWinner() -> String {
        if homeTeamScore > foreignTeamScore {
            homeTeam.winnings += 1
            return homeTeam.name
        } else if foreignTeamScore > homeTeamScore {
            foreignTeam.winnings += 1
            return foreignTeam.name
        } else {
            return "Equalizer"
        }
    }
```
3. Class League - that holds the name of the league, its teams, matches played and scores generated from the match. I created functions start that generates matches where they should play only once against each other. To do this I used the following algorithm;

``` 
for (index, homeTeam) in teams.enumerated() {
    for (indexx, foreignTeam) in teams.enumerated() {
         if index != indexx && index > indexx {
```
Class League is also responsible to print results after the league is finished. 

In the test playground I stored the teams and played the league;

```
let teams: [Team] = [
    Team.init(name: "Arsenal"),
    Team.init(name: "Liverpool"),
    Team.init(name: "Manchester United"),
    Team.init(name: "Chelsea"),
    Team.init(name: "Manchester City")
]

var league = League.init(name: "Premier League", teams: teams)

league.start()
league.end()
league.printResults()
```
 ## Example of random match results
 
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
 
 Swift Playground
 
 ## :]
