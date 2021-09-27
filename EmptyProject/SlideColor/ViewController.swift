//
//  ViewController.swift
//  SlideColor
//
//  Created by Вячеслав on 26.09.2021.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: - Outlets TextField and View
    @IBOutlet weak var redTF: UITextField!
    @IBOutlet weak var greenTF: UITextField!
    @IBOutlet weak var blueTF: UITextField!
    @IBOutlet weak var colorView: UIView!
    
    
    //MARK: - Outlets sliders
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redTF.text = String(Int(redSlider.value * 255))
        greenTF.text = String(Int(greenSlider.value * 255))
        blueTF.text = String(Int(blueSlider.value * 255))
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1.0)
        
    }
    //MARK: - slider action
    @IBAction func setRedTint(_ sender: UISlider) {
        redTF.text = String(Int(sender.value * 255))
        colorView.backgroundColor = UIColor(red: CGFloat(sender.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1.0)
    }
    @IBAction func setGreenTint(_ sender: UISlider) {
        greenTF.text = String(Int(sender.value * 255))
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(sender.value), blue: CGFloat(blueSlider.value), alpha: 1.0)
    }
    @IBAction func setBlueTint(_ sender: UISlider) {
        blueTF.text = String(Int(sender.value * 255))
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(sender.value), alpha: 1.0)
    }
    
    @IBAction func setRedTintFromTF(_ sender: UITextField) {
        if let length = sender.text?.count {
            if length > 3 {
                sender.text?.removeLast()
            }
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        let red = Int(redTF.text ?? "127")
        let green = Int(greenTF.text ?? "127")
        let blue = Int(blueTF.text ?? "127")
        
        redSlider.value = Float(red!) / 255
        greenSlider.value = Float(green!) / 255
        blueSlider.value = Float(blue!) / 255
        
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1.0)
        view.endEditing(true)
        return false
    }
}

