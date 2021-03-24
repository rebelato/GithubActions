//
//  SecondViewController.swift
//  CoordinatorApp
//
//  Created by lucas.r.rebelato on 09/07/20.
//  Copyright © 2020 Lucas Rebelato. All rights reserved.
//

import UIKit
import Coordinator

class SecondViewController: UIViewController {

    let navigationTitle: String

    internal init(title: String) {
        navigationTitle = title
        super.init(nibName: nil, bundle: nil)
    }

    @available(*, unavailable)
    internal required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    internal override func loadView() {
        view = SecondView(frame: UIScreen.main.bounds)
    }

    internal override func viewDidLoad() {
        super.viewDidLoad()
        title = navigationTitle
        self.view.backgroundColor = .yellow
        updateView()
    }

    internal override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        coordinator?.handleEvent(with: SecondEvent.back)
    }

    private func updateView() {
        if let view = view as? SecondView {
            view.delegate = self
        }
    }

}

extension SecondViewController: SecondViewDelegate {

    func didTapFirst() {
        coordinator?.handleEvent(with: SecondEvent.first("FirstViewController"))
    }

    func didTapThird() {
        coordinator?.handleEvent(with: SecondEvent.third("ThirdViewController"))
    }

}
