//
//  NewsfeedInteractor.swift
//  VKNewsFeed
//
//  Created by ARBI BASHAEV on 27/05/2019.
//  Copyright (c) 2019 ARBI BASHAEV. All rights reserved.
//

import UIKit

protocol NewsfeedBusinessLogic {
  func makeRequest(request: Newsfeed.Model.Request.RequestType)
}

class NewsfeedInteractor: NewsfeedBusinessLogic {

  var presenter: NewsfeedPresentationLogic?
  var service: NewsfeedService?
  
    private var fetcher: DataFetcher = NetworkDataFetcher(networking: NetworkService())
  func makeRequest(request: Newsfeed.Model.Request.RequestType) {
    if service == nil {
      service = NewsfeedService()
    }
    
    switch request {
        
    case .getNewsFeed:
        fetcher.getFeed { [weak self] (feedResponse) in
            guard let feedResponse = feedResponse else { return }
            self?.presenter?.presentData(response: Newsfeed.Model.Response.ResponseType.presentNewsFeed(feed: feedResponse))
        }
    }
  }
  
}
