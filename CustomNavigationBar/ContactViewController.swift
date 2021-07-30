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
        
        view.backgroundColor = #colorLiteral(
            red: 0.9490196078,
            green: 0.9490196078,
            blue: 0.968627451,
            alpha: 1
        )

        setupViews()
    }
    
    private func setupViews() {
        createCustomNavigationBar()
        
        let audioRightButton = createCustomButton(
            imageName: "phone",
            selector: #selector(audioRightButtonTapped)
        )
        let videoRightButton = createCustomButton(
            imageName: "video",
            selector: #selector(videoRightButtonTapped)
        )
        let customBarTitleView = createCustomTitleView(
            contactName: "Swiftbook",
            contactDescription: "New lesson...",
            contactImage: "swift"
        )

        navigationItem.rightBarButtonItems = [audioRightButton, videoRightButton]
        navigationItem.titleView = customBarTitleView
    }
    
    @objc private func audioRightButtonTapped() {
        print("AudioRightButtonTapped")
    }
    
    @objc private func videoRightButtonTapped() {
        print("VideoRightButtonTapped")
    }
}

