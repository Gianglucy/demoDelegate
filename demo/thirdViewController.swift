//
//  thirdViewController.swift
//  demo
//
//  Created by Apple on 7/14/20.
//  Copyright © 2020 NguyenDucLuu. All rights reserved.
//

import UIKit

class thirdViewController: UIViewController {

//    var myBTN = UIButton()
    @IBOutlet weak var btnYellow: UIButton!
    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var btnGreen: UIButton!
    var delegate:ColorDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnYellow.setTitleColor(.white, for: .normal)
        btnYellow.backgroundColor = .yellow
        btnBack.setTitleColor(.white, for: .normal)
        btnBack.backgroundColor = .red
        btnGreen.setTitleColor(.white, for: .normal)
        btnGreen.backgroundColor = .green
    }

    @IBAction func backYellow(_ sender: Any) {
        delegate?.changeColor(color: .yellow)
    }
    @IBAction func back(_ sender: Any) {
        navigationController?.popViewController(animated: true)
        delegate?.changeColor(color: .red)
    }
    @IBAction func backGreen(_ sender: Any) {
        delegate?.changeColor(color: .green)
    }
}
