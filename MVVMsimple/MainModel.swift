//
//  MainModel.swift
//  MVVMsimple
//
//  Created by Togrul Hashimov on 07.01.26.
//

import Foundation
import RxSwift

class MainPageViewModel {
    
    
      private let resultSubject = BehaviorSubject<String>(value: "0")

        var result: Observable<String> {
          resultSubject.asObservable()
      }

      func calculate(_ operation: Operation, _ a: String, _ b: String) {
          guard let x = Double(a),
                let y = Double(b) else {
              resultSubject.onNext("_____!_____")
              return
          }

          let value: Double

          switch operation {
          case .add:
              value = x + y
          case .subtract:
              value = x - y
          case .multiply:
              value = x * y
          case .divide:
              value = y == 0 ? 0 : x / y
          }

          resultSubject.onNext(String(value))
      }
    
   
}
