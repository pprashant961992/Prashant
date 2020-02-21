//
//  BaseViewModel.swift
//  Prashant
//
//  Created by apple on 20/02/20.
//  Copyright © 2020 Prashant. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class BaseViewModel: NSObject {
    let disposebag = DisposeBag()
    // Fields that bind to our view's
    let isSuccess : BehaviorRelay<Bool> = BehaviorRelay(value: false)
    let isLoading : BehaviorRelay<Bool> = BehaviorRelay(value: false)
    let errorMsg : BehaviorRelay<String> = BehaviorRelay(value: "")
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate

}
