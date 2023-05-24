//  CalculateViewController.swift
//  BMI Calculator
//
//  Created by Shasanka Sahoo on 08/01/21.
//


//  CalculateViewController.swift
//  BMI Calculator
//
//  Created by Shasanka Sahoo on 08/01/21.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    var calculatorBrain: CalculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
    }
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight =  String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight)kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        self.calculateBMI()
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.bmiValue
            destinationVC.advice = calculatorBrain.advice
            destinationVC.color = calculatorBrain.color
        }
    }
}

private extension CalculateViewController {
    
    func calculateBMI() {
        let height  = heightSlider.value
        let weight = weightSlider.value
        calculatorBrain.calculateBMI(height: height, weight: weight)
    }
}
