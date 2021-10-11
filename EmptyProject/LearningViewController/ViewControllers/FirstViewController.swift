//
//  ViewController.swift
//  LearningViewController
//
//  Created by Вячеслав on 04.10.2021.
//

import UIKit

class FirstViewController: UIViewController {
    private let main = UIStoryboard(name: "Main", bundle: nil)
    enum ViewControllersIdentifiers: String {
        case second = "Second View Controller"
        case third = "Third View Controller"
        case fourth = "Fourth View Controller"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "First View Controller"
    }
    @IBAction func goToSecondViewController(_ sender: UIButton) {
        guard let vc = main.instantiateViewController(withIdentifier: ViewControllersIdentifiers.second.rawValue) as? SecondViewController else { return }
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func goToThirdViewController(_ sender: UIButton) {
        guard let vc = main.instantiateViewController(identifier: ViewControllersIdentifiers.third.rawValue) as? ThirdViewController else { return }
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
    @IBAction func goToFourthViewController(_ sender: UIButton) {
        guard let vc = main.instantiateViewController(withIdentifier: ViewControllersIdentifiers.fourth.rawValue) as? FourthViewController else { return }
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

