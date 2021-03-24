//
//  ThirdViewController.swift
//  CoordinatorApp
//
//  Created by lucas.r.rebelato on 09/07/20.
//  Copyright © 2020 Lucas Rebelato. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    let navigationTitle: String

    internal init(title: String) {
        navigationTitle = title
        super.init(nibName: nil, bundle: nil)
    }

    internal required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = navigationTitle
        self.view.backgroundColor = .green
    }

}
