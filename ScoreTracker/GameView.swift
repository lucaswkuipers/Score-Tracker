import UIKit

final class GameView: UIView {
    let playerTableView = PlayerTableView()

    init() {
        super.init(frame: .zero)
        setupView()
        setupViewHierarchy()
        setupViewConstraints()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    private func setupView() {
        backgroundColor = .tertiarySystemBackground
        accessibilityLabel = "Game View"
    }

    private func setupViewHierarchy() {
        addSubview(playerTableView)
    }

    private func setupViewConstraints() {
        playerTableView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            playerTableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            playerTableView.leftAnchor.constraint(equalTo: leftAnchor),
            playerTableView.rightAnchor.constraint(equalTo: rightAnchor),
            playerTableView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}
