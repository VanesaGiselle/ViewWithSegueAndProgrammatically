//
//  SecondViewController.swift
//  ViewWithSegueAndProgrammatically
//
//  Created by Vanesa Korbenfeld on 10/01/2022.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {
    var toTheFirstViewController = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .black
        
        toTheFirstViewController.translatesAutoresizingMaskIntoConstraints = false
        toTheFirstViewController.setTitle("To The First View Controller", for: .normal)
        toTheFirstViewController.setTitleColor(.white, for: .normal)
        self.view.addSubview(toTheFirstViewController)
        
        toTheFirstViewController.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        toTheFirstViewController.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        toTheFirstViewController.addTarget(self, action: #selector(toTheFirstViewControllerTapped), for: .touchUpInside)
    }

    @objc func toTheFirstViewControllerTapped(){
        dismiss(animated: false, completion: nil)
    }
}
