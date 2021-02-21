//
//  ViewController.swift
//  demo2
//
//  Created by Lucas Ho on 07/02/2021.
//

import UIKit

class ViewController: UIViewController {

    var grocery: UILabel!
    var item: String = ""
    var inList = false
    var addButton: UIButton!

   // var textView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .white
        
        setupViews()
        setupConstraints()
    }
    
    func setupViews() {
        
        grocery = UILabel()
        grocery.text = "Grocery list"
 //       grocery.textColor = UIColor.black
        grocery.textColor = .black
//        nameLabel.textAlignment = NSTextAlignment.center
        grocery.textAlignment = .center
        grocery.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        grocery.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(grocery)

        
        addButton = UIButton()
        addButton.setTitle("open", for: .normal)
        addButton.setTitleColor(.blue, for: .normal)
        addButton.translatesAutoresizingMaskIntoConstraints = false
        addButton.layer.borderWidth = 1
        addButton.layer.borderColor = UIColor.black.cgColor
        //addButton.addTarget(self, action: #selector(addButtonTapped), for: .touchUpinside)
        view.addSubview(addButton)
        
        /*
        textView = UITextView()
        textView.text = "your grocery list: "
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.isEditable = false
        view.addSubview(textView)
        */
        
    }
    
    func setupConstraints() {
        
        NSLayoutConstraint.activate([
            grocery.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            grocery.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            addButton.topAnchor.constraint(equalTo: grocery.bottomAnchor, constant: 15),
            addButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            addButton.widthAnchor.constraint(equalToConstant: 100),
            addButton.heightAnchor.constraint(equalToConstant: 15)
        ])
        
        /*
        NSLayoutConstraint.activate([
            textView.topAnchor.constraint(equalTo: followButton.bottomAnchor, constant : 15),
            textView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            textView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            textView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -15)
        ])
        */
        
    }


    @objc func addButtonTapped() {
        
        if addButton.currentTitle == "Add" {
            addButton.setTitle("Add", for: .normal)
            addButton.setTitleColor(.white, for: .normal)
            addButton.backgroundColor = .white
        } else {
            addButton.setTitle("Add", for: .normal)
            addButton.setTitleColor(.white, for: .normal)
            addButton.backgroundColor = .white
        }
    }
}

