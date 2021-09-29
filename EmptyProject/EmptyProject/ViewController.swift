//
//  ViewController.swift
//  EmptyProject
//
//  Created by Вячеслав on 27.09.2021.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    //MARK: - Outlets
    @IBOutlet weak var genderTextField: UITextField!
    @IBOutlet weak var genderButton: UIButton!
    @IBOutlet weak var dateOfBirthTextField: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var avaterBGView: UIView!
    
    //MARK: - Variable
    let gender = ["Female", "Male", "Unknown"] // создаем массив элементов для пикера выбора пола
    let genderPickerView = UIPickerView() // создаем пикер вью
    
    override func viewDidLoad() {
        super.viewDidLoad()
        genderTextField.inputView = genderPickerView
        genderPickerView.delegate = self
        avaterBGView.layer.cornerRadius = 120
        datePicker.maximumDate = Date()
        
    }
    //Задаем количество компонентво("барабанов") в PickerView
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    //Задаем количество элементов в PickerView
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return gender.count
    }
    //Задаем отображение элемента в PickerView
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return gender[row]
    }
    //Функция, которая срабатыет при выборе элемента PickerView
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        genderButton.isEnabled = true
        genderButton.setTitle(gender[row], for: .normal)
    }
    //При клике на экран, закрывается клавиатура
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        genderButton.isEnabled = false
        view.endEditing(true)
    }
}

