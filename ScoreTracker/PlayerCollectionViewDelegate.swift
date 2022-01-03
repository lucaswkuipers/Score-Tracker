import UIKit

final class PlayerTableViewDelegate: NSObject, UITableViewDelegate, UITableViewDataSource {
    var players: [Player] = [Player(name: "Bruno", score: 4, color: .systemBlue),
                             Player(name: "Lara", score: 7, color: .systemPink),
                             Player(name: "Lucas", score: 3, color: .systemGreen)]

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
        return (tableView.frame.height - 10) / CGFloat(players.count)
    }
}
