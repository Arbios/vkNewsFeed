//
//  NewsfeedPresenter.swift
//  VKNewsFeed
//
//  Created by ARBI BASHAEV on 27/05/2019.
//  Copyright (c) 2019 ARBI BASHAEV. All rights reserved.
//

import UIKit

protocol NewsfeedPresentationLogic {
  func presentData(response: Newsfeed.Model.Response.ResponseType)
}

class NewsfeedPresenter: NewsfeedPresentationLogic {
  weak var viewController: NewsfeedDisplayLogic?
  
  func presentData(response: Newsfeed.Model.Response.ResponseType) {
    switch response {
    case .some:
        print(".some Presenter")
    case .presentNewsFeed:
        print(".presentNewsFeed Presenter")
        viewController?.displayData(viewModel: .displayNewsFeed)
    }
  
  }
  
}
