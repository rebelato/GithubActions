//
//  FirstViewController.swift
//  CoordinatorApp
//
//  Created by lucas.r.rebelato on 09/07/20.
//  Copyright © 2020 Lucas Rebelato. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

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
        view = FirstView(frame: .zero)
    }

    internal override func viewDidLoad() {
        super.viewDidLoad()
        title = navigationTitle
        self.view.backgroundColor = .purple
        updateView()
    }

    internal override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        coordinator?.handleEvent(with: FirstEvent.back)
    }

    private func updateView() {
        if let view = view as? FirstView {
            view.delegate = self
        }
    }

}

extension FirstViewController: FirstViewDelegate {

    func didTapSecond() {
        coordinator?.handleEvent(with: FirstEvent.second("SecondViewController"))
    }

    func didTapThird() {
        coordinator?.handleEvent(with: FirstEvent.third("ThirdViewController"))
    }

}

