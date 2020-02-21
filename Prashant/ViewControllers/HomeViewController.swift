//
//  HomeViewController.swift
//  Prashant
//
//  Created by apple on 21/02/20.
//  Copyright © 2020 Confidosoft. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import Kingfisher

class HomeViewController: BaseViewController {
    let viewModel : HomeViewModel = HomeViewModel()
    let disposeBag = DisposeBag()
    private let spacing : CGFloat = 15.0
    
    @IBOutlet weak var clsHome: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createViewModelBinding()
        createCallbacks()
        viewModel.getImageList()
    }
    
}

extension HomeViewController : UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.viewModel.arrImages.value.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCollectionViewCell", for: indexPath) as! ImageCollectionViewCell
        let data = self.viewModel.arrImages.value[indexPath.row]
        let url = URL(string: data.urls.thumb ?? "")
        cell.imgThumb.kf.setImage(with: url)
        cell.layer.borderWidth = 1.0
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let numberOfItemsPerRow: CGFloat = 2
        let spacingBetweenCells: CGFloat = 15
        let totalSpacing = (2 * self.spacing) + ((numberOfItemsPerRow - 1) * spacingBetweenCells) //Amount of total spacing in a row
        if let collection = self.clsHome{
            let width = (collection.bounds.width - totalSpacing)/numberOfItemsPerRow
            return CGSize(width: width, height: width)
        }else{
            return CGSize(width: 0, height: 0)
        }
    }
}

extension HomeViewController {
    func createViewModelBinding(){
           
           let layout = UICollectionViewFlowLayout()
           layout.sectionInset = UIEdgeInsets(top: spacing, left: spacing, bottom: spacing, right: spacing)
           layout.minimumLineSpacing = spacing
           layout.minimumInteritemSpacing = spacing
           self.clsHome?.collectionViewLayout = layout
           
       }
       
       func createCallbacks (){
           
           // success
           viewModel.arrImages.asObservable()
               .bind{ value in
                   if value.count > 0{
                       self.clsHome.reloadData()
                   }
               }.disposed(by: disposeBag)
           // success
           viewModel.isSuccess.asObservable()
               .bind{ value in
                   if value{
                       NSLog("Successfull")
                       self.navigationController?.popViewController(animated: true)
                   }
               }.disposed(by: disposeBag)
           
           // errors
           viewModel.errorMsg.asObservable()
               .bind { errorMessage in
                   if errorMessage.count > 0 {
                   // Show error
                       NSLog("Failure : " + errorMessage)
                       
                   }
               }.disposed(by: disposeBag)
           
           viewModel.isLoading.asObservable()
               .bind { value in
                   if value {
                       self.showHud()
                   } else {
                       self.hideHud()
                   }
           }.disposed(by: disposeBag)
           
       }
}
