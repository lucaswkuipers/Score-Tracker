import UIKit

final class PlayerTableView: UITableView {
    let tableViewDelegate = PlayerTableViewDelegate()

    init() {
        super.init(frame: .zero, style: .plain)
        backgroundColor = .clear
        separatorStyle = .none
        delegate = tableViewDelegate
        dataSource = tableViewDelegate
        register(PlayerCell.self, forCellReuseIdentifier: PlayerCell.identifier)
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
