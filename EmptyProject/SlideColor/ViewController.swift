//
//  ViewController.swift
//  SlideColor
//
//  Created by Вячеслав on 26.09.2021.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: - Outlets TextField and View

    @IBOutlet weak private var redTextField: UITextField!
    @IBOutlet weak private var greenTextField: UITextField!
    @IBOutlet weak private var blueTextField: UITextField!
    @IBOutlet weak private var colorView: UIView!
    
    
    //MARK: - Outlets sliders
    @IBOutlet weak private var redSlider: UISlider!
    @IBOutlet weak private var greenSlider: UISlider!
    @IBOutlet weak private var blueSlider: UISlider!
    
    //MARK: - Variable
    let maxColorValue = Float(255.0)
    let maxLegthValue = 3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
    }
    private func setupUI() {
        redTextField.text = String(Int(redSlider.value * maxColorValue))
        greenTextField.text = String(Int(greenSlider.value * maxColorValue))
        blueTextField.text = String(Int(blueSlider.value * maxColorValue))
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1.0)
    }
    //MARK: - slider action
    @IBAction func setRedTint(_ sender: UISlider) {
        redTextField.text = String(Int(sender.value * maxColorValue))
        colorView.backgroundColor = UIColor(red: CGFloat(sender.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1.0)
    }
    @IBAction func setGreenTint(_ sender: UISlider) {
        greenTextField.text = String(Int(sender.value * maxColorValue))
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(sender.value), blue: CGFloat(blueSlider.value), alpha: 1.0)
    }
    @IBAction func setBlueTint(_ sender: UISlider) {
        blueTextField.text = String(Int(sender.value * maxColorValue))
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(sender.value), alpha: 1.0)
    }
    @IBAction func setRedTintFromTextField(_ sender: UITextField) {
        if let length = sender.text?.count {
            if length > maxLegthValue {
                sender.text?.removeLast()
            }
        }
    }
    @IBAction func setGreenTintFromTextField(_ sender: UITextField) {
        if let length = sender.text?.count {
            if length > maxLegthValue {
                sender.text?.removeLast()
            }
        }
    }
    @IBAction func setBlueTintFromTextField(_ sender: UITextField) {
        if let length = sender.text?.count {
            if length > maxLegthValue {
                sender.text?.removeLast()
            }
        }
    }
    //Функия вызывается при клике на Return
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        guard let red = redTextField.text, let green = greenTextField.text, let blue = blueTextField.text else {
            return false
        }
        if Float(textField.text!)! > maxColorValue {
            setupUI()
            return false
        }
        redSlider.value = Float(red)! / Float(maxColorValue)
        greenSlider.value = Float(green)! / Float(maxColorValue)
        blueSlider.value = Float(blue)! / Float(maxColorValue)
        
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1.0)
        view.endEditing(true)
        return false
    }
}

