//
//  SplashScreenViewController.swift
//  Guess the Fighter, Угадай Бойца
//
//  Created by Artem on 12/9/16.
//  Copyright © 2016 piqapp. All rights reserved.
//

import UIKit

class SplashScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        /////GAMECONTROLLER/////
        theGameController = GameController()
        theGameController.soundMute = false

        let splashScreenTime = 3
        let triggerTime = (Int64(NSEC_PER_SEC) * Int64(splashScreenTime))
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + Double(triggerTime) / Double(NSEC_PER_SEC), execute: { () -> Void in
            self.performSegue(withIdentifier: "showStartScreen", sender: nil)
        })

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
