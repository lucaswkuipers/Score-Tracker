import UIKit

final class PlayerCell: UITableViewCell {
    static let identifier = "PlayerCell"

    let containerView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 20
        view.backgroundColor = .magenta
        return view
    }()

    let positionLabel: UILabel = {
        let label = UILabel()
        return label
    }()

    let nameLabel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 18)
        return label
    }()

    let scoreLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 28, weight: .black)
        return label
    }()

    let increaseScoreButton: UIButton = {
        let button = UIButton()
        button.setTitle(" + Increase score ", for: .normal)
        button.setTitleColor(.label, for: .normal)
        button.setTitleColor(.secondaryLabel, for: .selected)
        button.backgroundColor = .gray.withAlphaComponent(0.3)
        button.layer.cornerRadius = 8
        return button
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
        nameLabel.text = model.name
        positionLabel.text = model.position
        scoreLabel.text = "\(model.score)"
    }

    private func setupViewStyle() {
        backgroundColor = .clear
        selectionStyle = .none
    }

    private func setupViewHierarchy() {
        contentView.addSubview(containerView)
        containerView.addSubview(positionLabel)
        containerView.addSubview(nameLabel)
        containerView.addSubview(scoreLabel)
        containerView.addSubview(increaseScoreButton)
    }

    private func setupViewConstraints() {
        containerView.translatesAutoresizingMaskIntoConstraints = false
        positionLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        scoreLabel.translatesAutoresizingMaskIntoConstraints = false
        increaseScoreButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            containerView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 10),
            containerView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            containerView.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -10),

            positionLabel.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            positionLabel.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 15),
            positionLabel.widthAnchor.constraint(equalToConstant: 30),

            nameLabel.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            nameLabel.leftAnchor.constraint(equalTo: positionLabel.rightAnchor, constant: 15),

            scoreLabel.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            scoreLabel.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -20),

            increaseScoreButton.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            increaseScoreButton.rightAnchor.constraint(equalTo: scoreLabel.leftAnchor, constant: -15)
        ])
    }
}
