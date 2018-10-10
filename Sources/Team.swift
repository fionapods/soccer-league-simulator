
import Foundation

/// Enity Team
public class Team {
    var name: String
    public var winnings: Int
    
    /// Team's init
    ///
    /// - Parameter name: put the name of the team
    public init(name: String) {
        self.name = name
        self.winnings = 0
    }
}
