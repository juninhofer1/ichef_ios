//
//  MainViewController.swift
//  IChef
//
//  Created by Dev Wilson Fernandes on 03/04/23.
//

import Foundation
import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var buttonDelivery: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "iChef"
    }
    
    @IBAction func didTouchDelivery(_ sender: Any) {
        let vc = HomeViewController(nibName: "HomeViewController", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
