//
//  ViewController.swift
//  CosmosRatingTutorial
//
//  Created by 윤병일 on 2021/05/31.
//

import UIKit
import Cosmos
import SnapKit

class ViewController: UIViewController {
  
  //MARK: - Properties
  lazy var cosmosView : CosmosView = {
    var view = CosmosView()
    view.settings.updateOnTouch = true // 클릭 가능 하게 true 가 defualt, false 이면 터치 안됨
//    view.settings.filledImage = UIImage(named: "")?.withRenderingMode(.alwaysOriginal) // filledImage 설정 가능
//    view.settings.emptyImage = UIImage(named: "") // emtyImage 설정 가능
    view.settings.totalStars = 5
    view.settings.starSize = 30// height
    view.settings.starMargin = 3.3 // distance each star
    view.settings.fillMode = .full  // precise 는 완전 소수점 까지
    
    view.text = "Rate me"
    view.settings.textColor = .gray
//    view.settings.textFont
    view.settings.textMargin = 10 // distance between star
    return view
  }()

  //MARK: - Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    setUI()
  }

  //MARK: - Functions
  private func setUI() {
    view.backgroundColor = .white
    
    view.addSubview(cosmosView)
    
    cosmosView.snp.makeConstraints {
      $0.center.equalToSuperview()
    }
    
    cosmosView.didTouchCosmos = { rating in
      print("Rated : \(rating)")
    }
  }

}

