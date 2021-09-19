
import UIKit

class ResultViewController: UIViewController {
    var bmiValue: String?
    var color: UIColor?
    var advice: String?
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
    }
    @IBAction func recaluclatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
}
