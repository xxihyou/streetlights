//
//  ViewController.swift
//  streetlights2
//
//  Created by Maria Berger on 07.07.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.layer.cornerRadius = 75
        yellowView.layer.cornerRadius = 75
        greenView.layer.cornerRadius = 75

        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
        
        
    }

    @IBAction func startButtonPressed() {
        switch startButton.isEnabled {
        case yellowView.alpha == 0.3 || redView.alpha == 1:
            startButton.setTitle("NEXT", for: .normal)
            yellowView.alpha = 1
            redView.alpha = 0.3
        case greenView.alpha == 0.3 || yellowView.alpha == 1:
            startButton.setTitle("NEXT", for: .normal)
            greenView.alpha = 1
            yellowView.alpha = 0.3
        default:
            startButton.setTitle("NEXT", for: .normal)
            redView.alpha = 1
            greenView.alpha = 0.3
        }
    }
}
