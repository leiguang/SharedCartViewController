//
//  ViewController.swift
//  SharedCartViewController
//
//  Created by Guang Lei on 2020/1/8.
//  Copyright © 2020 Guang Lei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pushButton = UIButton(frame: CGRect(x: 100, y: 200, width: 100, height: 100))
        pushButton.setTitle("push", for: .normal)
        pushButton.backgroundColor = .purple
        pushButton.addTarget(self, action: #selector(tapPushButton), for: .touchUpInside)
        view.addSubview(pushButton)
        
        let presentButton = UIButton(frame: CGRect(x: 100, y: 400, width: 100, height: 100))
        presentButton.setTitle("present", for: .normal)
        presentButton.backgroundColor = .purple
        presentButton.addTarget(self, action: #selector(tapPresentButton), for: .touchUpInside)
        view.addSubview(presentButton)
    }

    @objc func tapPushButton() {
        let vc = CartContainerViewController()
        navigationController?.show(vc, sender: nil)
    }
    
    @objc func tapPresentButton() {
        let vc = CartContainerViewController()
        let nvc = UINavigationController(rootViewController: vc)
        present(nvc, animated: true, completion: nil)
    }
}

