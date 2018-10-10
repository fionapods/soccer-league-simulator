
import Foundation

/// Entity Match
public class Match {
    var homeTeam: Team
    var foreignTeam: Team
    var homeTeamScore: Int
    var foreignTeamScore: Int
    
    /// Matches' init
    ///
    /// - Parameters:
    ///   - homeTeam: name of homeTeam
    ///   - foreignTeam: name of foreignTeam
    init(homeTeam: Team, foreignTeam: Team) {
        self.homeTeam = homeTeam
        self.foreignTeam  = foreignTeam
        self.homeTeamScore = 0
        self.foreignTeamScore = 0
        
    }
    
    /// Func to generate teamScores of homeTeam and foreignTeam
    func play() {
        let homeTeamScore = Int(arc4random_uniform(6))
        let foreignTeamScore = Int(arc4random_uniform(6))
        
        self.homeTeamScore = homeTeamScore
        self.foreignTeamScore = foreignTeamScore
    }
    
    /// Func to generate Winner from the match
    /// if condition to determine which team is winning
    /// - Returns: winning team's name
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
}
