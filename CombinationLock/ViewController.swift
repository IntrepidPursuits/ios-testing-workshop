//
//  ViewController.swift
//  CombinationLock
//
//  Created by Colin Brash on 6/15/16.
//  Copyright © 2016 Intrepid Pursuits. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let viewModel = ViewModel()
    
    @IBOutlet weak var lockStatusIndicatorLabel: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        updateLockState()
    }
    
    @IBAction func digitButton1Tapped(_ digitButton: UIButton) {
        viewModel.digit1Entered()
        updateLockState()
    }
    
    @IBAction func digitButton2Tapped(_ digitButton: UIButton) {
        viewModel.digit2Entered()
        updateLockState()
    }
    
    @IBAction func digitButton3Tapped(_ digitButton: UIButton) {
        viewModel.digit3Entered()
        updateLockState()
    }
    
    private func updateLockState() {
        lockStatusIndicatorLabel.backgroundColor = viewModel.lockBackgroundColor
        lockStatusIndicatorLabel.text = viewModel.lockText
    }

}
