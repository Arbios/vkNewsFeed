//
//  AuthViewController.swift
//  VKNewsFeed
//
//  Created by ARBI BASHAEV on 26/05/2019.
//  Copyright © 2019 ARBI BASHAEV. All rights reserved.
//

import UIKit

class AuthViewController: UIViewController {

    var authService: AuthService!
    
    @IBAction func signInTouch() {
        authService.wakeUpSession()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        authService = AppDelegate.shared().authService
    }

}
