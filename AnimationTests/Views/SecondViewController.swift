//
//  SecondViewController.swift
//  AnimationTests
//
//  Created by Michel Anderson Lutz Teixeira on 11/04/2018.
//  Copyright © 2018 Michel Anderson Lutz Teixeira. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var dismissButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        dismissButton.layer.cornerRadius = dismissButton.frame.size.width / 2
    }

    @IBAction func dismissAc(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
