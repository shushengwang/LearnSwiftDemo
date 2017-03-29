//
//  ViewController.swift
//  Demo03-LoginPageAnimation
//
//  Created by Wss on 2017/3/29.
//  Copyright © 2017年 Wss. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameTextFiled: UITextField!
    @IBOutlet weak var passWordTextFiled: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTextFiled.layer.cornerRadius = 5
        passWordTextFiled.layer.cornerRadius = 5
        loginButton.layer.cornerRadius = 5
        
    }

    override func viewWillAppear(_ animated: Bool) {
        userNameTextFiled.center = CGPoint(x:0.0 - view.layer.bounds.width/2.0,y:userNameTextFiled.center.y)
        passWordTextFiled.center = CGPoint(x:0.0 - view.layer.bounds.width/2.0,y:passWordTextFiled.center.y)
        loginButton.alpha = 0

    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 0.29, delay: 0, options: UIViewAnimationOptions(), animations: {
            self.userNameTextFiled.center = CGPoint(x:self.view.center.x,y:self.userNameTextFiled.center.y)
        }, completion: nil)
        UIView.animate(withDuration: 0.29, delay: 0.3, options: UIViewAnimationOptions(), animations: {
            self.passWordTextFiled.center = CGPoint(x:self.view.center.x,y:self.passWordTextFiled.center.y)
        }, completion: nil)
        UIView.animate(withDuration: 0.29, delay: 0.6, options: UIViewAnimationOptions(), animations: {
            self.loginButton.alpha = 1
        }, completion: nil)

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func loginAction(_ sender: Any) {

        if  userNameTextFiled.text?.isEmpty == false ||
            passWordTextFiled.text?.isEmpty == false {
            return
        }
        
        let bounds = self.loginButton.bounds

        UIView.animate(withDuration: 1.0, delay: 0.00, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: UIViewAnimationOptions.curveLinear, animations: {
            
            self.loginButton.bounds = CGRect(x: bounds.origin.x - 20, y: bounds.origin.y, width: bounds.size.width + 80, height: bounds.size.height)

        }, completion: nil )
    }

    @IBAction func backAction(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}

