//  CalculateViewController.swift
//  BMI Calculator
//
//  Created by Shasanka Sahoo on 08/01/21.
//


import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    
    var bmiValue: String?
    var color: UIColor?
    var advice: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    @IBAction func recaluclatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}

extension ResultViewController {
    
    func setUpUI() {
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
    }
}
