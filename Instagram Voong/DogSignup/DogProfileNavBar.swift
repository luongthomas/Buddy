//
//  DogProfileNavBar.swift
//  Instagram Voong
//
//  Created by Puroof on 9/18/17.
//  Copyright © 2017 ModalApps. All rights reserved.
//

import UIKit

class DogProfileNavBar: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        
        let homeController = DogSignupController()
        //let homeController = ProfileCreationController()
        viewControllers = [homeController]
        
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

}
