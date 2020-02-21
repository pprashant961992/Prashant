//
//  HomeViewModel.swift
//  Prashant
//
//  Created by apple on 21/02/20.
//  Copyright © 2020 Confidosoft. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import Alamofire

class HomeViewModel: BaseViewModel {
    let arrImages : BehaviorRelay<[CSImage]> = BehaviorRelay(value: [CSImage]())
    
    func getImageList(){
        if !self.isReachableInternetConnection(){
            self.errorMsg.accept("No Internet Connection")
            return
        }
        
        self.isLoading.accept(true)
        let ws = ImageWebservice(token: "")
        let request = ["count" : 30] as [String : Any]
        
        ws.getImages(parameters: request) { (response, error) in
            self.isLoading.accept(false)
            if response != nil {
                self.arrImages.accept(response ?? [CSImage]())
                self.isSuccess.accept(true)
            } else if error != nil {
                self.isSuccess.accept(false)
                self.errorMsg.accept( error?.localizedDescription ?? "")
            }
        }
    }
    
    func isReachableInternetConnection() -> Bool {
        return NetworkReachabilityManager()?.isReachable ?? false
    }
}
