//
//  MenuViewController.swift
//  StaffMen
//
//  Created by Andrex on 13/03/2018.
//  Copyright © 2018 Andrex. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController, ElasticMenuTransitionDelegate {
    
    var contentLength:CGFloat = 320
    var dismissByBackgroundTouch = true
    var dismissByBackgroundDrag = true
    var dismissByForegroundDrag = true
    
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var codeView2: UITextView!
    @IBAction func btn_tap_Logout(_ sender: Any) {
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.switchViewControllers()
        UserDefaults.standard.set("0", forKey: "userstatus")
        
        let LoginViewController = viewController(from: "LoginViewController")
        present(LoginViewController, animated: true)
    }
    //x present
    func viewController(from storyboardID: String) -> UIViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: storyboardID)
        return viewController
    }
    override func viewDidLoad() {
        super.viewDidLoad()
//        let tm = transitioningDelegate as! ElasticTransition
    }
    
    
    override var preferredStatusBarStyle: UIStatusBarStyle { return UIStatusBarStyle.lightContent }
}
