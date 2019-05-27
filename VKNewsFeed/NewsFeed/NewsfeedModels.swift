//
//  NewsfeedModels.swift
//  VKNewsFeed
//
//  Created by ARBI BASHAEV on 27/05/2019.
//  Copyright (c) 2019 ARBI BASHAEV. All rights reserved.
//

import UIKit

enum Newsfeed {
   
  enum Model {
    struct Request {
      enum RequestType {
        case getNewsFeed
      }
    }
    struct Response {
      enum ResponseType {
        case presentNewsFeed(feed: FeedResponse)
      }
    }
    struct ViewModel {
      enum ViewModelData {
        case displayNewsFeed(feedViewModel: FeedViewModel)
      }
    }
  }
  
}

struct FeedViewModel {
    struct Cell: FeedCellViewModel {
        var iconUrlString: String
        var name: String
        var date: String
        var text: String?
        var likes: String?
        var comments: String?
        var shares: String?
        var views: String?
    }
    
    let cells: [Cell]
}
