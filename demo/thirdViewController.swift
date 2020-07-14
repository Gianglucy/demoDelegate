//
//  thirdViewController.swift
//  demo
//
//  Created by Apple on 7/14/20.
//  Copyright © 2020 NguyenDucLuu. All rights reserved.
//

import UIKit

protocol ColorDelegate
{
    func changeColor(color: UIColor)
}

class thirdViewController: UIViewController {

//    var myBTN = UIButton()
    @IBOutlet weak var btnYellow: UIButton!
    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var btnGreen: UIButton!
    var delegate:ColorDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnYellow.setTitleColor(.white, for: .normal)
        btnYellow.backgroundColor = .systemYellow
        btnBack.setTitleColor(.white, for: .normal)
        btnBack.backgroundColor = .systemRed
        btnGreen.setTitleColor(.white, for: .normal)
        btnGreen.backgroundColor = .systemGreen
    }

    @IBAction func backYellow(_ sender: Any) {
        delegate?.changeColor(color: .systemYellow)
    }
    @IBAction func back(_ sender: Any) {
        navigationController?.popViewController(animated: true)
        delegate?.changeColor(color: .systemRed)
    }
    @IBAction func backGreen(_ sender: Any) {
        delegate?.changeColor(color: .systemGreen)
    }
}
