//
//  ValidationViewModel.swift
//  Prashant
//
//  Created by apple on 20/02/20.
//  Copyright © 2020 Prashant. All rights reserved.
//
import RxSwift
import Foundation
import RxCocoa

protocol ValidationViewModel{
    var errorMessage: String { get }
    
    // Observables
    var data: BehaviorRelay<String> { get set }
    var errorValue: BehaviorRelay<String?> { get}
    
    // Validation
    func validateCredentials() -> Bool
}
