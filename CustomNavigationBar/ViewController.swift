//
//  ViewController.swift
//  CustomNavigationBar
//
//  Created by Сергей Горбачёв on 29.07.2021.
//

import UIKit

class ViewController: UIViewController {
    
    let contactButton: UIButton = {
        let button = UIButton()
        button.setTitle("Go to contact", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.9490196078, blue: 0.968627451, alpha: 1)
        
        title = "Custom NavBar"
        
        setConstraint()
        
        contactButton.addTarget(self, action: #selector(contactButtonTapped), for: .touchUpInside)
    }
    
    @objc func contactButtonTapped() {
        let contactViewController = ContactViewController()
        navigationController?.navigationBar.topItem?.title = ""
        navigationController?.pushViewController(contactViewController, animated: true)
    }
    
    func setConstraint() {
        view.addSubview(contactButton)
        NSLayoutConstraint.activate([
            contactButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            contactButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            contactButton.heightAnchor.constraint(equalToConstant: 50),
            contactButton.widthAnchor.constraint(equalToConstant: 150)
        ])
    }
}
