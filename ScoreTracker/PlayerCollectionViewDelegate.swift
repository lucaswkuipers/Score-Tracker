import UIKit

final class PlayerTableViewDelegate: NSObject, UITableViewDelegate, UITableViewDataSource {
    var players: [Player] = [Player(name: "Bruno", score: 4, position: "1st", color: .systemCyan),
                             Player(name: "Lara", score: 7, position: "2nd", color: .systemTeal),
                             Player(name: "Lara", score: 7, position: "3rd", color: .systemPink),
                             Player(name: "Lara", score: 7, position: "4th", color: .systemPink),
                             Player(name: "Lara", score: 7, position: "5th", color: .systemTeal),
                             Player(name: "Lara", score: 7, position: "6th", color: .systemCyan),
                             Player(name: "Lucas", score: 3, position: "7h", color: .systemGreen)]

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: PlayerCell.identifier, for: indexPath) as? PlayerCell else { return PlayerCell() }
        let player = players[indexPath.row]
        cell.setupData(with: player)
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return max((tableView.frame.height - 10) / CGFloat(players.count), 80)
    }
}
