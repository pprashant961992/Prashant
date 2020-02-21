//
//  ImageWebservice.swift
//  Prashant
//
//  Created by apple on 21/02/20.
//  Copyright © 2020 Confidosoft. All rights reserved.
//

import UIKit
import Alamofire

class ImageWebservice: NSObject {
    var ws : BaseWebservice?
    init(token : String) {
        ws  = BaseWebservice(aToken: token)
    }
    
    func getImages(parameters : [String : Any], result : @escaping (_ value: [CSImage]?, _ error: Error?) -> Void)  {
        ws?.call(url: "photos/random/", method: HTTPMethod.get , parameters: parameters, result: { (value, error) in
            if value != nil {
                var images = [CSImage]()
                
                for img  in value as! [[String:Any]] {
                    images.append(CSImage.init(fromDictionary: img))
                }
                
                result(images, error)
            } else {
                result(nil, error)
            }
            
        })
    }
    
    
    
}
