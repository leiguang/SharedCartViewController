//
//  CartViewController.swift
//  SharedCartViewController
//
//  Created by Guang Lei on 2020/1/8.
//  Copyright © 2020 Guang Lei. All rights reserved.
//

import UIKit

class CartViewController: UIViewController {
    
    static let shared = CartViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        printInfo()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        printInfo()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        printInfo()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        printInfo()
    }
    
    // MARK: - Helper
    
    func printInfo(methodName: StaticString = #function) {
        print("Cart", methodName)
    }
}
