//
//  secondViewController.swift
//  demo
//
//  Created by Apple on 7/14/20.
//  Copyright © 2020 NguyenDucLuu. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {

    @IBOutlet weak var myBTN: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "second"
        myBTN.setTitleColor(.white, for: .normal)
        myBTN.backgroundColor = .systemBlue
        
    }

    @IBAction func next(_ sender: Any) {
        let third = thirdViewController()
        third.delegate = self
        navigationController?.pushViewController(third, animated: true)
    }
}

extension secondViewController:ColorDelegate {
    func changeColor(color: UIColor) {
        self.myBTN.backgroundColor = color
    }
}
