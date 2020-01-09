//
//  TabBarViewController.swift
//  SharedCartViewController
//
//  Created by Guang Lei on 2020/1/8.
//  Copyright © 2020 Guang Lei. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let vc1 = ViewController()
        vc1.title = "ViewController"
        let nvc1 = UINavigationController(rootViewController: vc1)
        
        let vc2 = CartContainerViewController()
        vc2.title = "CartContainer"
        let nvc2 = UINavigationController(rootViewController: vc2)
        
        viewControllers = [nvc1, nvc2]
    }
}
