//
//  ViewController4.swift
//  LearningViewController
//
//  Created by Вячеслав on 04.10.2021.
//

import UIKit

class ViewController4: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func goToFifthViewController(_ sender: UIButton) {
        let main = UIStoryboard(name: "Main", bundle: nil)
        let vc = main.instantiateViewController(withIdentifier: "Fifth View Controller") as! ViewController5
        vc.title = "Fifth View Controller"
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func closeButtonTouchUpInside(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}
