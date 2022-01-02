import UIKit

final class ScoreView: UIView {

    init() {
        super.init(frame: .zero)
        backgroundColor = .systemPink
        accessibilityLabel = "Score View"
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
