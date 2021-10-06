//
//  SecondViewController.swift
//  LearningViewController
//
//  Created by Вячеслав on 04.10.2021.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Second View Controller"
    }
    @IBAction func closeButtonTouchUpInside(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}
