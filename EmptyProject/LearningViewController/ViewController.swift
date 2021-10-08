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
        let main = UIStoryboard(name: "Main", bundle: nil)
        let vc = main.instantiateViewController(withIdentifier: "Result View") as! ResultViewController
        vc.view.backgroundColor = .red
        vc.label.text = textField.text
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func pushGreenButton(_ sender: UIButton) {
        let main = UIStoryboard(name: "Main", bundle: nil)
        let vc = main.instantiateViewController(withIdentifier: "Result View") as! ResultViewController
        vc.view.backgroundColor = .green
        vc.label.text = textField.text
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func pushBlueButton(_ sender: UIButton) {
        let main = UIStoryboard(name: "Main", bundle: nil)
        let vc = main.instantiateViewController(withIdentifier: "Result View") as! ResultViewController
        vc.view.backgroundColor = .blue
        vc.label.text = textField.text
        self.navigationController?.pushViewController(vc, animated: true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
}

