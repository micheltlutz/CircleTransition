//
//  ViewController.swift
//  AnimationTests
//
//  Created by Michel Anderson Lutz Teixeira on 11/04/2018.
//  Copyright © 2018 Michel Anderson Lutz Teixeira. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

    @IBOutlet weak var menuButton: UIButton!
    let transition = CircularTransition()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuButton.layer.cornerRadius = menuButton.frame.size.width / 2
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secontVC = segue.destination as! SecondViewController
        
        secontVC.transitioningDelegate = self
        secontVC.modalPresentationStyle = .custom
    }
}

extension ViewController: UIViewControllerTransitioningDelegate {
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.transitionMode = .present
        transition.startingPoint = menuButton.center
        transition.circleColor = menuButton.backgroundColor!
        
        return transition
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.transitionMode = .dismiss
        transition.startingPoint = menuButton.center
        transition.circleColor = menuButton.backgroundColor!
        
        return transition
    }
}

