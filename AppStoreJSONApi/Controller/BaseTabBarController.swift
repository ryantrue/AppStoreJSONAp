//
//  BaseTabBarController.swift
//  AppStoreJSONApi
//
//  Created by Rayen on 06.10.2021.
//

import UIKit

class  BaseTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers = [
            createNavController(viewController: TodayController(), title: "Today", imageName: "today"),
            createNavController(viewController: UIViewController(), title: "Apps", imageName: "apps"),
            createNavController(viewController: AppsSearchController(), title: "Search", imageName: "search")
        ]
    }
    
    fileprivate func createNavController(viewController: UIViewController, title: String, imageName: String) -> UIViewController {
        let navController = UINavigationController(rootViewController: viewController)
        viewController.view.backgroundColor = .white
        viewController.navigationItem.title = title
        navController.tabBarItem.title = title
        navController.tabBarItem.image = UIImage(named: imageName)
        navController.navigationBar.prefersLargeTitles = true
        navController.navigationBar.scrollEdgeAppearance = navController.navigationBar.standardAppearance
        return navController
    }
    
}
