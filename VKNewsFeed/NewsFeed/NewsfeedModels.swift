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
        case some
        case getFeed
      }
    }
    struct Response {
      enum ResponseType {
        case some
        case presentNewsFeed
      }
    }
    struct ViewModel {
      enum ViewModelData {
        case some
        case displayNewsFeed
      }
    }
  }
  
}
