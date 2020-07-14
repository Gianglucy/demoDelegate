//
//  ViewController.swift
//  demo
//
//  Created by Apple on 7/14/20.
//  Copyright © 2020 NguyenDucLuu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    @IBOutlet weak var myBTN: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goTo(_ sender: Any) {
        let second = secondViewController()
        let navController = UINavigationController(rootViewController: second)
        navController.modalPresentationStyle = .fullScreen
        self.present(navController, animated: true, completion: nil)
    }
    

}

