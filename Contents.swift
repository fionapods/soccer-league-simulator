
import Foundation

/// Constant named: teams which holds all League's teams
let teams: [Team] = [
    Team.init(name: "Arsenal"),
    Team.init(name: "Liverpool"),
    Team.init(name: "Manchester United"),
    Team.init(name: "Chelsea"),
    Team.init(name: "Manchester City")
]

/// Variable named: league that loads League's name and its teams
var league = League.init(name: "Premier League", teams: teams)

league.start()
league.end()
league.printResults()
