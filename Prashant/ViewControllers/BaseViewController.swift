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
  
    func showSnackbar(_ message : String) {
//        let snackbar = TTGSnackbar.init(message: message, duration: .long)
//        snackbar.containerView = self.view
//        snackbar.animationType = .slideFromTopBackToTop
//        snackbar.show()
    }
    
    func showHud(message : String = "Please wait...")  {
        KRProgressHUD.set(style: .custom(background: .black, text: .white, icon: nil)).show(withMessage: message)
    }
    
    func hideHud() {
        KRProgressHUD.dismiss()
    }
    
}
