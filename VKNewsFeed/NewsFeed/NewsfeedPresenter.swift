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
    case .presentNewsFeed(let feed):
        
        let cells = feed.items.map { (feedItem) in
            cellViewModel(from: feedItem)
        }
        
        let feedViewModel = FeedViewModel.init(cells: cells)
        viewController?.displayData(viewModel: Newsfeed.Model.ViewModel.ViewModelData.displayNewsFeed(feedViewModel: feedViewModel))
    }
  
  }
    
    private func cellViewModel(from feedItem: FeedItem) -> FeedViewModel.Cell {
        return FeedViewModel.Cell.init(iconUrlString: "",
                                       name: "future name",
                                       date: "future date",
                                       text: feedItem.text,
                                       likes: String(feedItem.likes?.count ?? 0),
                                       comments: String(feedItem.commnets?.count ?? 0),
                                       shares: String(feedItem.reposts?.count ?? 0),
                                       views: String(feedItem.views?.count ?? 0))
    }
  
}
