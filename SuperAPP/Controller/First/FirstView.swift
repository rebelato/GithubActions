//
//  FirstView.swift
//  CoordinatorApp
//
//  Created by lucas.r.rebelato on 09/07/20.
//  Copyright © 2020 Lucas Rebelato. All rights reserved.
//

import UIKit

internal protocol FirstViewDelegate: class {
    func didTapSecond()
    func didTapThird()
}

internal class FirstView: UIView {

    internal weak var delegate: FirstViewDelegate?

    private let secondViewButton: UIButton
    private let thirdViewButton: UIButton

    internal override init(frame: CGRect) {
        secondViewButton = UIButton()
        thirdViewButton = UIButton()
        super.init(frame: frame)
        setupView()
    }

    @available(*, unavailable)
    internal required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    @objc internal func pressSecondViewButton() {
        delegate?.didTapSecond()
    }

    @objc internal func pressThirdViewButton() {
        delegate?.didTapThird()
    }

}

extension FirstView: ViewCodable {
    
    internal func buildHierarchy() {
        addView(
            secondViewButton,
            thirdViewButton
        )
    }

    internal func buildConstraints() {
        secondViewButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24).isActive = true
        secondViewButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24).isActive = true
        secondViewButton.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -48).isActive = true
        secondViewButton.heightAnchor.constraint(equalToConstant: 48).isActive = true

        thirdViewButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24).isActive = true
        thirdViewButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24).isActive = true
        thirdViewButton.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 48).isActive = true
        thirdViewButton.heightAnchor.constraint(equalToConstant: 48).isActive = true
    }

    internal func render() {
        secondViewButton.backgroundColor = .brown
        secondViewButton.setTitleColor(.white, for: .normal)
        secondViewButton.setTitle("Second ViewController", for: .normal)

        thirdViewButton.backgroundColor = . brown
        thirdViewButton.setTitleColor(.white, for: .normal)
        thirdViewButton.setTitle("Third ViewController", for: .normal)
    }

    internal func configure() {
        secondViewButton.addTarget(self, action: #selector(pressSecondViewButton), for: .touchUpInside)
        thirdViewButton.addTarget(self, action: #selector(pressThirdViewButton), for: .touchUpInside)
    }
    
}
