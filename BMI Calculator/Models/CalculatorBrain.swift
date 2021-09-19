

import UIKit
struct CalculatorBrain{
    var bmi: BMI?
    func getAdvice()->String{
       return bmi?.advice ?? "no advice"
    }
    func getColor()->UIColor{
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    func getBMiValue( )-> String{
        
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    mutating func calulateBMI(height: Float, weight: Float){
        let bmiValue = weight / (height*height)
        if bmiValue < 18.5{
             bmi = BMI(value: bmiValue, advice: "eat more pies", color: #colorLiteral(red: 0.423412971, green: 0.9611584013, blue: 0.9202699351, alpha: 1))
            print("undrer weight")
        }
        else if bmiValue > 18.5 && bmiValue < 24.9{
              bmi = BMI(value: bmiValue, advice: "fit as fiddle", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
            print("normal weight")
        }
        else{
              bmi = BMI(value: bmiValue, advice: "eat less pies other wise you will gonna be fucked up ", color: #colorLiteral(red: 0.9611584013, green: 0.0819178498, blue: 0.04673601382, alpha: 1))
            print("over weight")
        }
       
    }
}

