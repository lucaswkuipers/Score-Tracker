import UIKit

final class PlayerCell: UITableViewCell {
    static let identifier = "PlayerCell"

    let containerView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 20
        view.backgroundColor = .magenta
        view.accessibilityIdentifier = "Player Cell Container View"
        return view
    }()

    let playerNameLabel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 18)
        return label
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViewStyle()
        setupViewHierarchy()
        setupViewConstraints()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    func setupData(with model: Player) {
        containerView.backgroundColor = model.color
        playerNameLabel.text = model.name
    }

    private func setupViewStyle() {
        backgroundColor = .clear
        selectionStyle = .none
    }

    private func setupViewHierarchy() {
        contentView.addSubview(containerView)
    }

    private func setupViewConstraints() {
        containerView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            containerView.leftAnchor.constraint(equalTo: contentView.leftAnchor),
            containerView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            containerView.rightAnchor.constraint(equalTo: contentView.rightAnchor)
        ])
    }
}
