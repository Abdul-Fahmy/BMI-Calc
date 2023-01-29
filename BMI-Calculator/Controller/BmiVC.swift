//
//  ViewController.swift
//  BMI-Calculator
//
//  Created by mac on 20/12/2022.
//

import UIKit

class BmiVC: UIViewController {
    @IBOutlet weak var maleBtn: UIButton!
    
    @IBOutlet weak var femaleBtn: UIButton!
    
    @IBOutlet weak var heightLbl: UILabel!
    
    @IBOutlet weak var sliderDesgin: UISlider!
    
    @IBOutlet weak var weightLbl: UILabel!
    
    @IBOutlet weak var ageLbl: UILabel!
    
    
   var height = 150
    var weight = 70
    var age = 19
    var result = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func sliderPressed(_ sender: UISlider) {
        height = Int(sender.value.rounded())
        heightLbl.text = String(height)
    }
    
    
    @IBAction func pressedMale(_ sender: Any) {
        maleBtn.isEnabled = true
        maleBtn.isHighlighted = true
        femaleBtn.isEnabled = false
    }
    @IBAction func pressedFemale(_ sender: Any) {
        femaleBtn.isEnabled = true
        femaleBtn.isHighlighted = true
    }
    
    @IBAction func onpressedMinus(_ sender: Any) {
        if weight > 0 {
        weight -= 1
        weightLbl.text = String(weight)
        }
    }
    
    @IBAction func onPressedPlus(_ sender: Any) {
        weight += 1
        weightLbl.text = String(weight)
        
    }
    @IBAction func onPressedMinusAge(_ sender: Any) {
        if age > 0 {
        age -= 1
        ageLbl.text = String(age)
        
        }
        
    }
        
    @IBAction func onPressedPlusAge(_ sender: Any) {
        age += 1
        ageLbl.text = String(age)
    }
    
    
    @IBAction func onPressedCalc(_ sender: Any) {
        popAlertInfo()
        print(result)
    }
    
    
    func calcBMI()->String{
        
        result = String(BMIModel.getBMI(ForWeight: Double(weightLbl.text!)!, andHeight: Double(heightLbl.text!)!))
    
        return result

        }
    
        
    
    func popAlertInfo(){
        let alert = UIAlertController(title: "BMI Result", message: "Your BMI Result is \(calcBMI())", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel)
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
    }
    
    


}


