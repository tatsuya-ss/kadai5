//
//  ViewController.swift
//  kadai5
//
//  Created by 坂本龍哉 on 2020/12/08.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet private var textField1: UITextField!
    @IBOutlet private var textField2: UITextField!
    @IBOutlet private var kekkaLabel: UILabel!
    
    @IBAction func calculationButton(_ sender: Any) {
        
        guard let number1 = Double(textField1.text!) else {
            presentAlert(message: "割られる数を入力してください")
            return
        }
        guard let number2 = Double(textField2.text!) else {
            presentAlert(message: "割る数を入力してください")
            return
        }
        guard number2 != 0 else {
            presentAlert(message: "割る数には０を入力しないでください")
            return
        }
        kekkaLabel.text = String(number1 / number2)
    }
    
    private func presentAlert(message: String) {
        let dialog = UIAlertController(title: "課題５", message: message, preferredStyle: .alert)
        dialog.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(dialog, animated: true, completion: nil)
    }
}
