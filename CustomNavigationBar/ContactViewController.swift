//
//  ContactViewController.swift
//  CustomNavigationBar
//
//  Created by Сергей Горбачёв on 29.07.2021.
//

import UIKit

class ContactViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.9490196078, blue: 0.968627451, alpha: 1)

        createCustomNavigationBar()
        
        let AudioRightButton = createCustomButton(imageName: "phone", selector: #selector(AudioRightButtonTapped))
        let VideoRightButton = createCustomButton(imageName: "video", selector: #selector(VideoRightButtonTapped))
        let customBarTitleView = createCustomTitleView(contactName: "Swiftbook", contactDescription: "New lesson...", contactImage: "swift")

        navigationItem.rightBarButtonItems = [AudioRightButton, VideoRightButton]
        navigationItem.titleView = customBarTitleView
    }
    
    @objc func AudioRightButtonTapped() {
        print("AudioRightButtonTapped")
    }
    
    @objc func VideoRightButtonTapped() {
        print("VideoRightButtonTapped")
    }
}

