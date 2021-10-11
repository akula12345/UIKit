//
//  ViewController4.swift
//  LearningViewController
//
//  Created by Вячеслав on 04.10.2021.
//

import UIKit

class FourthViewController: UIViewController {
    @IBAction func goToFifthViewController(_ sender: UIButton) {
        let main = UIStoryboard(name: "Main", bundle: nil)
        guard let vc = main.instantiateViewController(withIdentifier: "Fifth View Controller") as? FifthViewController else { return }
        vc.title = "Fifth View Controller"
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
