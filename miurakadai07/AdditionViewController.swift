//
//  additionViewController.swift
//  miurakadai07
//
//  Created by 三浦貴文 on 2023/05/24.
//

import UIKit

class additionViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // キーボードのタイプをナンバーパッドに設定
        valueTextField1.keyboardType = .numberPad
        valueTextField2.keyboardType = .numberPad
    }
    
    // アウトレット作成
    @IBOutlet private weak var valueTextField1: UITextField!
    @IBOutlet private weak var valueTextField2: UITextField!
    @IBOutlet private weak var valueLabel: UILabel!
    
    // ボタン押下時に足し算を行う
    @IBAction private func pressedButton(_ sender: Any) {
        // テキストフィールドの値をInt型に変換して定数に代入
        let number1 = Int(valueTextField1.text ?? "") ?? 0
        let number2 = Int(valueTextField2.text ?? "") ?? 0
        
        // 計算結果をラベルに表示する
        valueLabel.text = String(number1 + number2)
        
        // キーボードを非表示にする
        valueTextField1.resignFirstResponder()
        valueTextField2.resignFirstResponder()
    }
}
