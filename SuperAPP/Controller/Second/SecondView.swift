//
//  SecondView.swift
//  CoordinatorApp
//
//  Created by lucas.r.rebelato on 09/07/20.
//  Copyright © 2020 Lucas Rebelato. All rights reserved.
//

import UIKit

internal protocol SecondViewDelegate: class {
    func didTapFirst()
    func didTapThird()
}

internal class SecondView: UIView {

    internal weak var delegate: SecondViewDelegate?

    private let firstViewButton: UIButton
    private let thirdViewButton: UIButton

    internal override init(frame: CGRect) {
        firstViewButton = UIButton()
        thirdViewButton = UIButton()
        super.init(frame: frame)
        setupView()
    }

    @available(*, unavailable)
    internal required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    @objc private func pressFirstViewButton() {
        delegate?.didTapFirst()
    }

    @objc private func pressThirdViewButton() {
        delegate?.didTapThird()
    }

}

extension SecondView: ViewCodable {

    internal func buildHierarchy() {
        addView(
            firstViewButton,
            thirdViewButton
        )
    }

    internal func buildConstraints() {
        firstViewButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24).isActive = true
        firstViewButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24).isActive = true
        firstViewButton.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -48).isActive = true
        firstViewButton.heightAnchor.constraint(equalToConstant: 48).isActive = true

        thirdViewButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24).isActive = true
        thirdViewButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24).isActive = true
        thirdViewButton.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 48).isActive = true
        thirdViewButton.heightAnchor.constraint(equalToConstant: 48).isActive = true
    }

    internal func render() {
        firstViewButton.backgroundColor = .brown
        firstViewButton.setTitleColor(.white, for: .normal)
        firstViewButton.setTitle("First ViewController", for: .normal)

        thirdViewButton.backgroundColor = . brown
        thirdViewButton.setTitleColor(.white, for: .normal)
        thirdViewButton.setTitle("Third ViewController", for: .normal)
    }

    internal func configure() {
        firstViewButton.addTarget(self, action: #selector(pressFirstViewButton), for: .touchUpInside)
        thirdViewButton.addTarget(self, action: #selector(pressThirdViewButton), for: .touchUpInside)
    }

}
