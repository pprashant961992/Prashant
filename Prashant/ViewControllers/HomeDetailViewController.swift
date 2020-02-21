//
//  HomeDetailViewController.swift
//  Prashant
//
//  Created by apple on 21/02/20.
//  Copyright © 2020 Confidosoft. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import Kingfisher

class HomeDetailViewController: BaseViewController {
    
    let viewModel : HomeDetailViewModel = HomeDetailViewModel()
    let disposeBag = DisposeBag()
    @IBOutlet weak var tblImageDetail: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        createViewModelBinding()
        createCallbacks()
    }
    
}

extension HomeDetailViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if self.viewModel.image.value.id != nil {
            return 1
        }else{
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ImageDetailTableViewCell", for: indexPath) as! ImageDetailTableViewCell
        cell.setData(data: self.viewModel.image.value)
        return cell
    }
}

extension HomeDetailViewController {
    func createViewModelBinding(){
        
    }
    
    func createCallbacks (){
        viewModel.image.asObservable()
            .bind{ value in
                self.tblImageDetail.reloadData()
        }.disposed(by: disposeBag)
    }
}
