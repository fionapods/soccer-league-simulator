
import Foundation

/// Entity League
public class League {
    var name: String
    var teams: [Team]
    var matches: [Match]
    
    /// League's init
    ///
    /// - Parameters:
    ///   - name: String of League's name
    ///   - teams: Array of all League's teams
    public init(name: String, teams: [Team]) {
        self.name = name
        self.teams = teams
        self.matches = []
    }
    
    /// Matches up teams to play with each other and the matches should not be repeated
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
    
    /// Generates matches' scores
    public func end() {
        for(_, match) in matches.enumerated() {
            match.play()
        }
    }
    
    /// Prints results of the matches
    public func printResults() {
        for(_, match) in matches.enumerated() {
            print("\(match.homeTeam.name) \(match.homeTeamScore) \(match.foreignTeam.name) \(match.foreignTeamScore) and the winner is \(match.getWinner())")
        }
    }
}

