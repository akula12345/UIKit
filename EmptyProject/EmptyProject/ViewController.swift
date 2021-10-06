//
//  ViewController.swift
//  EmptyProject
//
//  Created by Вячеслав on 27.09.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func simpleAlertButton(_ sender: UIButton) {
        let alert = UIAlertController(title: "Sign out?", message: "You can always access your content by singin back in", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "Sign out", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    @IBAction func simpleActionSheetButton(_ sender: UIButton) {
        let alert = UIAlertController(title: "Title", message: "Plese Select an Option", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Approve", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "Edit", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "Delete", style: .destructive, handler: nil))
        alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    @IBAction func alertWithDestructiveButton(_ sender: UIButton) {
        let alert = UIAlertController(title: "Sign out?", message: "You can always access your content by singin back in", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "Sign out", style: .destructive, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    @IBAction func alertWithMoreThanTwoButtons(_ sender: UIButton) {
        let alert = UIAlertController(title: "Alert", message: "Alert with more than 2 buttons", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Default", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "Destructive", style: .destructive, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}

