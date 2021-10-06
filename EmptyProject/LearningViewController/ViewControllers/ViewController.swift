//
//  ViewController.swift
//  LearningViewController
//
//  Created by Вячеслав on 04.10.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "First View Controller"
    }
    @IBAction func goToSecondViewController(_ sender: UIButton) {
        let main = UIStoryboard(name: "Main", bundle: nil)
        let vc = main.instantiateViewController(withIdentifier: "Second View Controller") as! SecondViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func goToThirdViewController(_ sender: UIButton) {
        let main = UIStoryboard(name: "Main", bundle: nil)
        let vc = main.instantiateViewController(identifier: "Third View Controller") as! ThirdViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
    @IBAction func goToFourthViewController(_ sender: UIButton) {
        let main = UIStoryboard(name: "Main", bundle: nil)
        let vc = main.instantiateViewController(withIdentifier: "Fourth View Controller") as! ViewController4
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

