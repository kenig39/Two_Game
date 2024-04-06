//
//  WichColorViewController.swift
//  Two_Game
//
//  Created by Alexander on 01.04.2024.
//

import UIKit




class WichColorViewController: UIViewController {
    
    
    
    let showColorlable = UILabel()
    let chose1Button = UIButton()
    let chose2Button = UIButton()
    let chose3Button = UIButton()
    let chose4Button = UIButton()
    let showAnsverLabel = UILabel()
    
   
    var ifIsTrue = true

    override func loadView() {
        super.loadView()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Назад", style: .done, target: self, action: #selector(back))
        
        setupUI()
        
        setting()
        
    }
    
    func reloadColor() -> UIColor {
        
        let randomCGFloat = UIColor(red: CGFloat.random(in: 0...250)/255.0, green: CGFloat.random(in: 0...250.0)/255.0, blue: CGFloat.random(in: 0...250.0)/255.0, alpha:CGFloat.random(in: 0...1))
        
        return randomCGFloat
    }
    
    
     func rgbtoHex(color: UIColor) -> String {
        var hexColor = String()
        
        let rgb = color
        
       hexColor = String(format: "#%02x", rgb)
         print(hexColor)
        return hexColor
         
    }
    
    @objc func back() {
        dismiss(animated: true)
    }

//    func checkBackground(buttons: [UIButton]) -> String {
//
//        var check = String()
//        var color = UIColor()
//        for i in buttons {
//            if i.tag ==
//
//        }
//
//        return check
//    }

    @objc func checkColor() {
       
    }
    
    
    
    func setupUI() {
        showColorlable.text = rgbtoHex(color: reloadColor())
        showColorlable.font = UIFont(name: "Text", size: 20)
        showColorlable.textColor = UIColor.black
        showColorlable.translatesAutoresizingMaskIntoConstraints = false
        
        chose1Button.setTitle("Вариан 1", for: .normal)
        chose1Button.setTitleColor(.black, for: .normal)
        chose1Button.backgroundColor = reloadColor()
        chose1Button.layer.cornerRadius = 5
        chose1Button.layer.borderWidth = 2
        chose1Button.addTarget(self, action: #selector(checkColor), for: .touchUpInside)
        chose1Button.translatesAutoresizingMaskIntoConstraints = false
        chose1Button.reloadInputViews()
        
    
        chose2Button.setTitle("Вариант 2", for: .normal)
        chose2Button.setTitleColor(.black, for: .normal)
        chose2Button.backgroundColor = reloadColor()
        chose2Button.layer.cornerRadius = 5
        chose2Button.layer.borderWidth = 2
        chose2Button.addTarget(self, action: #selector(checkColor), for: .touchUpInside)
        chose2Button.translatesAutoresizingMaskIntoConstraints = false
        
        chose3Button.setTitle("Вариант 3", for: .normal)
        chose3Button.setTitleColor(.black, for: .normal)
        chose3Button.backgroundColor = reloadColor()
        chose3Button.layer.cornerRadius = 5
        chose3Button.layer.borderWidth = 2
        chose3Button.addTarget(self, action: #selector(checkColor), for: .touchUpInside)
        chose3Button.translatesAutoresizingMaskIntoConstraints = false
        
        chose4Button.setTitle("Вариант 4", for: .normal)
        chose4Button.setTitleColor(.black, for: .normal)
        chose4Button.backgroundColor = reloadColor()
        chose4Button.layer.cornerRadius = 5
        chose4Button.layer.borderWidth = 2
       chose4Button.addTarget(self, action: #selector(checkColor), for: .touchUpInside)
        chose4Button.translatesAutoresizingMaskIntoConstraints = false
        
        showAnsverLabel.text = ""
        showAnsverLabel.textColor = UIColor.black
        showAnsverLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubviews([showColorlable,chose1Button, chose2Button, chose3Button, chose4Button])
        
    }
    
   
    func setting() {
        showColorlable.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        showColorlable.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        chose1Button.topAnchor.constraint(equalTo: showColorlable.bottomAnchor, constant: 20).isActive = true
        chose1Button.widthAnchor.constraint(equalToConstant: 100).isActive = true
        chose1Button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        chose1Button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        chose2Button.topAnchor.constraint(equalTo: chose1Button.bottomAnchor, constant: 20).isActive = true
        chose2Button.widthAnchor.constraint(equalToConstant: 100).isActive = true
        chose2Button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        chose2Button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        chose3Button.topAnchor.constraint(equalTo: chose2Button.bottomAnchor, constant: 20).isActive = true
        chose3Button.widthAnchor.constraint(equalToConstant: 100).isActive = true
        chose3Button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        chose3Button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        chose4Button.topAnchor.constraint(equalTo: chose3Button.bottomAnchor, constant: 20).isActive = true
        chose4Button.widthAnchor.constraint(equalToConstant: 100).isActive = true
        chose4Button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        chose4Button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        showAnsverLabel.topAnchor.constraint(equalTo: chose4Button.bottomAnchor, constant: 50).isActive = true
        showAnsverLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
    }
}
