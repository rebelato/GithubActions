//
//  UIView+AddViews.swift
//  CoordinatorApp
//
//  Created by lucas.r.rebelato on 09/07/20.
//  Copyright © 2020 Lucas Rebelato. All rights reserved.
//

import UIKit

extension UIView {

    func addView(_ views: UIView...) {
        views.forEach { view in
            addSubview(view)
            view.translatesAutoresizingMaskIntoConstraints = false
        }
    }
    
}
