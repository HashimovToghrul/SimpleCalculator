//
//  MainModel.swift
//  MVVMsimple
//
//  Created by Togrul Hashimov on 07.01.26.
//

import Foundation
import RxSwift

class MainPageModel {
    
    var result = BehaviorSubject<String>(value: "0")
    
    func doAdd(inputNumber1: String, inputNumber2: String) {
        
        if let number1 = Int(inputNumber1), let number2 = Int(inputNumber2) {
            let add = "\(number1 + number2)"
            result.onNext(add)
        }
    }
    
    func doMultiply(inputNumber1: String, inputNumber2: String) {
        if let number1 = Int(inputNumber1), let number2 = Int(inputNumber2) {
            let mult = "\(number1 * number2)"
            result.onNext(mult)
        }
    }
    
    func doMinus(inputNumber1: String, inputNumber2: String) {
        if let number1 = Int(inputNumber1), let number2 = Int(inputNumber2) {
            let minus = "\(number1 - number2)"
            result.onNext(minus)
        }
    }
    
    func doDivide(inputNumber1: String, inputNumber2: String) {
        if let number1 = Int(inputNumber1), let number2 = Int(inputNumber2) {
            let divide = "\(number1 / number2)"
            result.onNext(divide)
            
            
        }
    }
    
}
