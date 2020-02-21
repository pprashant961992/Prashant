//
//  BaseWebservice.swift
//  Prashant
//
//  Created by apple on 20/02/20.
//  Copyright © 2020 Prashant. All rights reserved.
//

import UIKit
import Alamofire

class BaseWebservice: NSObject {
    
    let baseUrl = "https://api.unsplash.com/"
    var token = ""
    var headers : HTTPHeaders = [
        "Authorization": "Client-ID 1k_8vQyaUOCgK69o_qgsTVxWP76Hf7l6-vEtyOziOx0"
    ]
    
    init(aToken : String) {
        
    }
    
    func call(url : String, isdictionaryRequired : Bool = true , method : HTTPMethod, parameters :  Any, result : @escaping (_ value: Any?, _ error: NSError?) -> Void)  {
        
        var data : Data? = nil
        
        let tempURL = URL(string: baseUrl + url)!
        var finalURL : URL? = nil
        
        if method == HTTPMethod.get || method == HTTPMethod.delete {
            var urlComponents = URLComponents(url: tempURL, resolvingAgainstBaseURL: false)
            if let peram = parameters as? [String : Any] {
                let queryItems = peram.map{
                    return URLQueryItem(name: "\($0)", value: "\($1)")
                }
                urlComponents?.queryItems = queryItems
                finalURL = urlComponents?.url
            }
        } else {
            finalURL = tempURL
            data = try! JSONSerialization.data(withJSONObject: parameters)
        }
        var request = URLRequest(url: finalURL!)
        request.httpMethod = method.rawValue
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.setValue("Bearer " + token, forHTTPHeaderField: "Authorization")

        request.allHTTPHeaderFields = headers
        request.httpBody = data
        
        let aRequest = Alamofire.request(request)
        
        aRequest.validate().responseString { response in
            switch response.result {
            case .success:
                let data : Any?
                if(isdictionaryRequired){
                    data = self.convertToDictionary(text: response.result.value ?? "")
                }
                else{
                    data = response.result.value ?? ""
                }
                result(data, nil)
            case .failure(let error):
                var message = ""
                var tCode = -1
                if let error = error as? AFError {
                    switch error {
                    case .invalidURL(let url):
                        message = "Invalid URL: \(url) - \(error.localizedDescription)"
                        print(message)
                    case .parameterEncodingFailed(let reason):
                        message = "Parameter encoding failed: \(error.localizedDescription)"
                        print(message)
                        print("Failure Reason: \(reason)")
                    case .multipartEncodingFailed(let reason):
                        message = "Multipart encoding failed: \(error.localizedDescription)"
                        print(message)
                        print("Failure Reason: \(reason)")
                    case .responseValidationFailed(let reason):
                        message = "Response validation failed: \(error.localizedDescription)"
                        print(message)
                        print("Failure Reason: \(reason)")
                        
                        switch reason {
                        case .dataFileNil, .dataFileReadFailed:
                            message = "Downloaded file could not be read"
                            print(message)
                        case .missingContentType(let acceptableContentTypes):
                            message = "Content Type Missing: \(acceptableContentTypes)"
                            print(message)
                        case .unacceptableContentType(let acceptableContentTypes, let responseContentType):
                            message = "Response content type: \(responseContentType) was unacceptable: \(acceptableContentTypes)"
                            print(message)
                        case .unacceptableStatusCode(let code):
                            message = "Response status code was unacceptable: \(code)"
                            print(message)
                            if response.data != nil{
                                print("Error response : \n" + (String(data: response.data!, encoding: String.Encoding.utf8) ?? "some error"))
                            }
                            
                        }
                    case .responseSerializationFailed(let reason):
                        message = "Response serialization failed: \(error.localizedDescription)"
                        print(message)
                        print("Failure Reason: \(reason)")
                    }
                    tCode = error.responseCode ?? -1
                    print("Underlying error: \(String(describing: error.underlyingError))")
                } else if let error = error as? URLError {
                    message = "Please check your Internet connection OR try after some time"
                    print("URLError occurred: \(error)")
                } else {
                    print("Unknown error: \(error)")
                }
                let errorTemp = NSError(domain:message, code:tCode, userInfo:nil)
                result(nil, errorTemp)
            }
        }
    }
     
    public func convertToDictionary(text: String) -> Any? {
        if let data = text.data(using: .utf8) {
            do {
                let pd = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
                
                if pd == nil {
                    
                    let pa = try JSONSerialization.jsonObject(with: data, options: []) as? [[String: Any]]
                    if pa == nil {
                        return text
                    }
                    return pa
                    
                }
                return pd
            } catch {
                
                print(error.localizedDescription)
                return text
            }
        }
        return nil
    }
}
