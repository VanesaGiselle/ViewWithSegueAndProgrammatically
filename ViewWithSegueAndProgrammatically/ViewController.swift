//
//  ViewController.swift
//  ViewWithSegueAndProgrammatically
//
//  Created by Vanesa Korbenfeld on 10/01/2022.
//

import UIKit

class ViewController: UIViewController {
    var toTheSecondViewController = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemPink
        
        toTheSecondViewController.translatesAutoresizingMaskIntoConstraints = false
        toTheSecondViewController.setTitle("To The Second View Controller", for: .normal)
        toTheSecondViewController.setTitleColor(.white, for: .normal)
        self.view.addSubview(toTheSecondViewController)
        
        toTheSecondViewController.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        toTheSecondViewController.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        toTheSecondViewController.addTarget(self, action: #selector(toTheSecondViewControllerTapped), for: .touchUpInside)
    }

    @objc func toTheSecondViewControllerTapped(){
        let rootSVC = SecondViewController()
        rootSVC.modalPresentationStyle = .fullScreen
        present(rootSVC, animated: true, completion: {   self.toTheSecondViewController.setTitle("Change the name of the button", for: .normal) })
    }
}

