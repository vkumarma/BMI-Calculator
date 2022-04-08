//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Vivek Kumar on 6/11/20.

//

import UIKit
struct CalculatorBrain {
    
    var bmi: BMI? //This optional actual bmi object is a var because it is mutable as the bmi object mutates later in calculateBMI function.The properties change or mutate.
    func getBMIValue() -> String{
        let bmiTo1DecimalPlace = String(format:"%.1f",bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    func getAdvice() -> String{
        return bmi?.advice ?? "No advice" //If advice property nil then No advice will get printed as a default value.
    }
    func getColor() -> UIColor{
        return bmi?.color ?? UIColor.white
    }
    mutating func calculateBMI(height:Float,weight:Float){
        let bmiValue = weight / (pow(height,2))
        if bmiValue < 18.5{
            bmi = BMI(value:bmiValue,advice:"Eat more pies!",color:#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        }
        else if bmiValue < 24.9{
            bmi = BMI(value:bmiValue,advice:"Fit as a Fiddle!",color:#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        }
        else{
            bmi = BMI(value:bmiValue,advice:"Eat less pies!",color:#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1))
        }
    }
}
