//
//  MyTabBarViewController.swift
//  toy
//
//  Created by Cherie Li on 11/19/18.
//  Copyright © 2018 Cherie Li. All rights reserved.
//

import UIKit

class MyTabBarViewController: UITabBarController {

   
    @IBOutlet weak var MyUITabBar: UITabBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tabBarItem.title = ""
        self.tabBar.itemPositioning = UITabBar.ItemPositioning.automatic;
        self.tabBar.tintColor = self.view.tintColor
        setTabBarItems()
    }
    func setTabBarItems(){
        
        let myTabBarItem1 = (self.tabBar.items?[0])! as UITabBarItem
        
        myTabBarItem1.title = ""
        myTabBarItem1.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
        myTabBarItem1.image = UIImage(named: "home")
        
        let myTabBarItem2 = (self.tabBar.items?[1])! as UITabBarItem
        myTabBarItem2.title = ""
        myTabBarItem2.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
         myTabBarItem2.image = UIImage(named: "info")
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
