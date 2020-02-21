//
//  BaseViewController.swift
//  Prashant
//
//  Created by apple on 20/02/20.
//  Copyright © 2020 Prashant. All rights reserved.
//

import UIKit
import KRProgressHUD

protocol BaseViewControllerProtocol {
    func createViewModelBinding()
    func createCallbacks ()
}

class BaseViewController: UIViewController {
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
  
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor(named: "themeColor")!
    }
    
    func alertView(title : String , msg : String, view : UIViewController)  {
        let alert = UIAlertController(title: title, message: msg, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        view.present(alert, animated: true, completion: nil)
    }
    
    func showHud(message : String = "Please wait...")  {
        KRProgressHUD.set(style: .custom(background: .black, text: .white, icon: nil)).show(withMessage: message)
    }
    
    func hideHud() {
        KRProgressHUD.dismiss()
    }
    
}
