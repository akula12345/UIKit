//
//  ViewController.swift
//  LearningViewController
//
//  Created by Вячеслав on 04.10.2021.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet private weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func pushRedButton(_ sender: UIButton) {
        showResult(color: .red)
    }
    @IBAction func pushGreenButton(_ sender: UIButton) {
        showResult(color: .green)
    }
    @IBAction func pushBlueButton(_ sender: UIButton) {
        showResult(color: .blue)
    }
    private func showResult(color: UIColor) {
        let main = UIStoryboard(name: "Main", bundle: nil)
        let vc = main.instantiateViewController(withIdentifier: "Result View") as! ResultViewController
        vc.view.backgroundColor = color
        vc.label.text = textField.text
        self.navigationController?.pushViewController(vc, animated: true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
}

