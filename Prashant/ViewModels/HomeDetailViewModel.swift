//
//  HomeDetailViewModel.swift
//  Prashant
//
//  Created by apple on 21/02/20.
//  Copyright © 2020 Confidosoft. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class HomeDetailViewModel: BaseViewModel {
    let image : BehaviorRelay<CSImage> = BehaviorRelay(value: CSImage())
}
