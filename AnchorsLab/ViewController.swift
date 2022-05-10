//
//  ViewController.swift
//  AnchorsLab
//
//  Created by Dean Thompson on 2022/05/10.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setupViews()
    }
    
    func setupViews() {
        
        let upperLeftLabel = makeLabel(withText: "upperLeft")
        let upperRightLabel = makeLabel(withText: "upperRight")
        
        view.addSubview(upperLeftLabel)
        view.addSubview(upperRightLabel)
        
        NSLayoutConstraint.activate([
            upperLeftLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            upperLeftLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            
            upperRightLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            view.trailingAnchor.constraint(equalTo: upperRightLabel.trailingAnchor, constant: 8cd)
            
        ])
        
    }
    func makeLabel(withText text: String) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.backgroundColor = .yellow
        
        return label
    }
}

