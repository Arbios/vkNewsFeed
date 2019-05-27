//
//  FeedViewController.swift
//  VKNewsFeed
//
//  Created by ARBI BASHAEV on 26/05/2019.
//  Copyright © 2019 ARBI BASHAEV. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController {

    
    private var fetcher: DataFetcher = NetworkDataFetcher(networking: NetworkService())
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        
        fetcher.getFeed { (feedResponse) in
            guard let feedResponse = feedResponse else { return }
            feedResponse.items.map({ (feedItem) in
                print(feedItem.text)
            })
        }
    }

}
