//
//  ViewController.swift
//  MVVMsimple
//
//  Created by Togrul Hashimov on 07.01.26.
//

import UIKit
import RxSwift

class ViewController: UIViewController {
    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    var viewModel = MainPageModel()
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.result.subscribe(onNext: { data in
            self.resultLabel.text = data
        })
        .disposed(by: disposeBag)
    }
    
    @IBAction func addButtonClicked(_ sender: Any) {
        
        if let inputNumber1 = firstTextField.text , let inputNumber2 = secondTextField.text {
            viewModel.doAdd(inputNumber1: inputNumber1, inputNumber2: inputNumber2)
        }
    }
    
        @IBAction func multiplyButtonClicked(_ sender: Any) {
        
        if let inputNumber1 = firstTextField.text , let inputNumber2 = secondTextField.text {
            viewModel.doMultiply(inputNumber1: inputNumber1, inputNumber2: inputNumber2)
        }
    }
    
    @IBAction func minusButtonClicked(_ sender: Any) {
        if let inputNumber1 = firstTextField.text , let inputNumber2 = secondTextField.text {
            viewModel.doMinus(inputNumber1: inputNumber1, inputNumber2: inputNumber2)
        }
    }
    
        @IBAction func divideButtonClicked(_ sender: Any) {
            if let inputNumber1 = firstTextField.text , let inputNumber2 = secondTextField.text {
                viewModel.doDivide(inputNumber1: inputNumber1, inputNumber2: inputNumber2)
            }
        }
        
    
}
