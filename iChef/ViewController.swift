//
//  ViewController.swift
//  IChef
//
//  Created by Dev Wilson Fernandes on 03/04/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let when = DispatchTime.now() + 1.0
        DispatchQueue.main.asyncAfter(deadline: when) {
            self.showViewLogin()
        }
    }

    
    private func showViewLogin() {
        let viewController = MainViewController(nibName: "MainViewController", bundle: nil)
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
        let navigationController = UINavigationController(rootViewController: viewController)
        
        appDelegate.window!.rootViewController = navigationController
        appDelegate.window!.makeKeyAndVisible()
        UIView.transition(with: appDelegate.window!,
                          duration: 0.5,
                          options: .transitionCrossDissolve,
                          animations: nil,
                          completion: nil)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
//        if #available(iOS 13.0, *) {
//            return .darkContent
//        }
        return .lightContent
    }


}

