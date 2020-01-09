//
//  CartContainerViewController.swift
//  SharedCartViewController
//
//  Created by Guang Lei on 2020/1/9.
//  Copyright © 2020 Guang Lei. All rights reserved.
//

import UIKit

class CartContainerViewController: UIViewController {

    static var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "CartContainer \(Self.index)"
        Self.index += 1
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        addCartViewController()
    }
    
    
    /// Note:
    ///
    /// Don't remove cart view controller in `viewDidDisappear(_:)` method.
    /// It will cause a bug when switching directly from one CartContainer page to another CartContainer page.
    /// Because the `viewWillAppear(_:)` method on next CartContainer page will be called first than method `viewDidDisappear(_:)` on current CartContainer page.
    ///
//    override func viewDidDisappear(_ animated: Bool) {
//        super.viewDidDisappear(animated)
//    }
    
    
    func addCartViewController() {
        let cartVC = CartViewController.shared
        
        if cartVC.parent == self {
            return
        }

        if cartVC.parent != nil {
            removeCartViewController()
        }
        
        addChild(cartVC)
        cartVC.view.frame = view.bounds
        view.addSubview(cartVC.view)
        cartVC.didMove(toParent: self)
    }
    
    func removeCartViewController() {
        let cartVC = CartViewController.shared
        
        if cartVC.parent == nil {
            return
        }
        
        cartVC.willMove(toParent: nil)
        cartVC.view.removeFromSuperview()
        cartVC.removeFromParent()
    }
}
