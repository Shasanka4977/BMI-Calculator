
import UIKit

class CalculateViewController: UIViewController {
    var calculatorBrain = CalculatorBrain()
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
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
        let height  = heightSlider.value
        let weight = weightSlider.value
        
        calculatorBrain.calulateBMI(height: height, weight: weight)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMiValue()
            destinationVC.advice = calculatorBrain . getAdvice()
            destinationVC.color = calculatorBrain . getColor()
    }
           
 }

}
