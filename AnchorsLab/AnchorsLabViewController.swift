//
//  ViewController.swift
//  AnchorsLab
//
//  Created by Dean Thompson on 2022/05/10.
//

import UIKit

class AnchorsLabViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setupViews()
    }
    
    func setupViews() {
        
        let upperLeftLabel = makeLabel(withText: "upperLeft")
        let upperRightLabel = makeLabel(withText: "upperRight")
        let bottomLeftLabel = makeSecondaryLabel(withText: "bottomLeft")
        let bottomRightButton = makeButton(withText: "Button")
        let redView = makeView()
        
        view.addSubview(upperLeftLabel)
        view.addSubview(upperRightLabel)
        view.addSubview(bottomLeftLabel)
        view.addSubview(bottomRightButton)
        view.addSubview(redView)
        
        NSLayoutConstraint.activate([
            upperLeftLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            upperLeftLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            
            upperRightLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            upperRightLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            
            bottomLeftLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            bottomLeftLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -8),
            
            bottomRightButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            bottomRightButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -8),
            
            
            redView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            redView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            // explicitly lay out redview
//            redView.widthAnchor.constraint(equalToConstant: 50),
//            redView.heightAnchor.constraint(equalToConstant: 100)
            
            redView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            redView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -100),
            redView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            redView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            
            
            
        ])
        
    }
    func makeLabel(withText text: String) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.backgroundColor = .yellow
        
        return label
    }
    
    func makeSecondaryLabel(withText text: String) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.backgroundColor = .yellow
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = .gray
        
        return label
    }
    
    func makeButton(withText text: String) -> UIButton {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(text, for: .normal)
        button.backgroundColor = .blue
        
        return button
    }
    
    func makeView() -> UIView {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        
        return view
    }
}

