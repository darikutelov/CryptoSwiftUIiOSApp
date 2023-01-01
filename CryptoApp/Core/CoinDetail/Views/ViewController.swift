//
//  ViewController.swift
//  CalculatorHomework

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    
    var calculator = Calculator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func operatorSignTapped(_ sender: UIButton) {
        guard calculator.CurrentOperand != "" else { return }
        
        guard let operatorSign = sender.titleLabel?.text else { return }
        
        if let result = calculator.executeOperationAndGetResult(with: operatorSign) {
            resultLabel.text = result
        }
    }
    
    @IBAction func numberButtonTapped(_ sender: UIButton) {
        guard var numberTyped = sender.titleLabel?.text else { return }
        
        if numberTyped == "." &&
            (calculator.CurrentOperand == "" || calculator.CurrentOperand == "-") {
            numberTyped = "0."
        }
        
        calculator.CurrentOperand = numberTyped
        resultLabel.text = calculator.CurrentOperand
    }
    
    @IBAction func clearButtonTapped(_ sender: UIButton) {
        calculator.resetState()
        resultLabel.text = "0"
    }
    
    @IBAction func plusMinusSignTapped(_ sender: UIButton) {
        calculator.changeCurrentOperandSign()
        resultLabel.text = calculator.CurrentOperand
    }
    
    @IBAction func backspaceButtonTapped(_ sender: UIButton) {
        calculator.deleteBackwards()
        
        guard calculator.CurrentOperand != "" else {
            resultLabel.text = "0"
            return
        }
        
        resultLabel.text = calculator.CurrentOperand
    }
}

