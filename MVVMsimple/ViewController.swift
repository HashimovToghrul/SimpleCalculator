//
//  ViewController.swift
//  MVVMsimple
//
//  Created by Togrul Hashimov on 07.01.26.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {
    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    var viewModel = MainPageViewModel()
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.result
            .bind(to: resultLabel.rx.text)
            .disposed(by: disposeBag)
    }
    
    @IBAction func addButtonClicked(_ sender: Any) {
        calculate(.add)
    }
    
        @IBAction func multiplyButtonClicked(_ sender: Any) {
            calculate(.multiply)
        
    }
    
    @IBAction func minusButtonClicked(_ sender: Any) {
        calculate(.subtract)
    }
    
        @IBAction func divideButtonClicked(_ sender: Any) {
            calculate(.divide)
        }
        
    private func calculate(_ operation: Operation) {
            viewModel.calculate(
                operation,
                firstTextField.text ?? "",
                secondTextField.text ?? ""
            )
        }
}
