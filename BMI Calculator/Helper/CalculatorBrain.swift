//  CalculateViewController.swift
//  BMI Calculator
//
//  Created by Shasanka Sahoo on 08/01/21.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    var advice: String {
        return bmi?.advice ?? "No advice"
    }
    
    var color: UIColor {
        return bmi?.color ?? .white
    }
    
    var bmiValue: String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        switch bmiValue {
        case ..<18.5:
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: AppColors.underWeightColor)
        case 18.5..<24.9:
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle", color: AppColors.normalWeightColor)
        default:
            bmi = BMI(value: bmiValue, advice: "Eat less pies otherwise you will be at risk", color: AppColors.overWeightColor)
        }
    }
}
