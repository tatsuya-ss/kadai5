//
//  ViewController.swift
//  kadai5
//
//  Created by 坂本龍哉 on 2020/12/08.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private var textField1: UITextField!
    @IBOutlet private var textField2: UITextField!
    @IBOutlet private var kekkaLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculationButton(_ sender: Any) {
        
        guard let number1 = Double(textField1.text!) else {
            alertWararerukazu()
            return
        }
        guard let number2 = Double(textField2.text!) else {
            alertWarukazu()
            return
        }
        guard number2 != 0 else {
            alertZero()
            return
        }
        kekkaLabel.text = String(number1 / number2)
    }
    
    func alertWararerukazu() {
        let dialog = UIAlertController(title: "課題５", message: "割られる数を入力してください", preferredStyle: .alert)
        dialog.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(dialog, animated: true, completion: nil)
    }
    
    func alertWarukazu() {
        let dialog = UIAlertController(title: "課題５", message: "割る数を入力してください", preferredStyle: .alert)
        dialog.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(dialog, animated: true, completion: nil)
    }
    
    func alertZero() {
        let dialog = UIAlertController(title: "課題５", message: "割る数には０を入力しないでください", preferredStyle: .alert)
        dialog.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(dialog, animated: true, completion: nil)
    }
}

