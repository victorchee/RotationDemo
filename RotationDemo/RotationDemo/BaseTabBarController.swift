//
//  BaseTabBarController.swift
//  RotationDemo
//
//  Created by Migu on 2016/11/3.
//  Copyright © 2016年 VictorChee. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    override var shouldAutorotate: Bool {
        get {
            return self.selectedViewController?.shouldAutorotate ?? super.shouldAutorotate
        }
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        get {
            return self.selectedViewController?.supportedInterfaceOrientations ?? super.supportedInterfaceOrientations
        }
    }
}
