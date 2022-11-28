//
//  ViewController.swift
//  TomCalculator
//
//  Created by 1 on 2022/11/28.
//

import UIKit

enum Operation {
    case Add
    case Subtract
    case Divide
    case Multiply
    case unknow
}

class ViewController: UIViewController {

    @IBOutlet weak var numberOutputLabel: UILabel!
    
    var displayNumber = ""
    var firstOperand = ""
    var secondOperand = ""
    var result = ""
    var currentOperation: Operation = .unknow
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
   
    @IBAction func tapNumberButton(_ sender: UIButton) {
        guard let numberValue = sender.title(for: .normal) else { return }
            if self.displayNumber.count < 9 {
                self.displayNumber += numberValue
                self.numberOutputLabel.text = self.displayNumber
            }
    }
    
   
    
    @IBAction func tapClearButton(_ sender: UIButton) {
        self.displayNumber = ""
        self.firstOperand = ""
        self.secondOperand = ""
        self.result = ""
        self.currentOperation = .unknow
        self.numberOutputLabel.text = "0"
    }
    
    @IBAction func tapDotButton(_ sender: UIButton) {
//        if self.displayNumber.count < 8, !self.displayNumber.contains(".") {
//            self.displayNumbber += self.displayNumbber.isEmpty ? "0"÷
//        }
    }
    
    
    @IBAction func tapDivideButton(_ sender: UIButton) {
    }
    
    @IBAction func tapMultiplyButton(_ sender: UIButton) {
    }
    
    
    @IBAction func tapSubtractButton(_ sender: UIButton) {
    }
    
    @IBAction func tapAddButton(_ sender: UIButton) {
    }
    
    
}

