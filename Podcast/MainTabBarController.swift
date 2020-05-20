//
//  MainTabBarController.swift
//  Podcast
//
//  Created by Umer Khan on 20/05/2020.
//  Copyright © 2020 Umer Khan. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.tintColor = .purple
        
        viewControllers = [
            
            generateNavigationController(for: ViewController(), title: "Favorites", image: #imageLiteral(resourceName: "Home")),
            generateNavigationController(for: ViewController(), title: "Search", image: #imageLiteral(resourceName: "Search")),
            generateNavigationController(for: ViewController(), title: "Downloads", image: #imageLiteral(resourceName: "Favourite"))
        ]
    }
    
    fileprivate func generateNavigationController(for rootViewController: UIViewController, title: String, image: UIImage) -> UIViewController {
        
        let navController = UINavigationController(rootViewController: rootViewController)
        
        navController.tabBarItem.title                  = title
        navController.tabBarItem.image                  = image
        rootViewController.navigationItem.title         = title
        navController.navigationBar.prefersLargeTitles  = true
        
        return navController
    }
}
