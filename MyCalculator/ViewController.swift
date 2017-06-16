//
//  ViewController.swift
//  MyCalculator
//
//  Created by Thomas Kueny on 6/14/17.
//  Copyright © 2017 ThomasKueny. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var brain = CalculatorBrain()
	
    @IBAction private func touchDigit(_ sender: UIButton){
		let digit = sender.currentTitle!
		let textCurrentlyInDisplay = display!.text!
		if userIsInTheMiddleOfTyping {
			let textCurrentlyInDisplay = display!.text!
			display!.text = textCurrentlyInDisplay + digit
		}
		else{
			display!.text = digit
		}
		userIsInTheMiddleOfTyping = true
	}

    private var displayValue: Double {
        get{
            return Double(display.text!)!
        }
        set {
            display.text = String(newValue)
        }
    }
	@IBAction private func performOperation(_ sender: UIButton) {
        if userIsInTheMiddleOfTyping {
            brain.setOperand(operand: displayValue)
        }
        userIsInTheMiddleOfTyping = false
		if let mathematicalSymbol = sender.currentTitle {
			brain.performOperation(symbol: mathematicalSymbol)
		}
        displayValue = brain.result
	}
	@IBOutlet private weak var display: UILabel!
	private var userIsInTheMiddleOfTyping = false
}

