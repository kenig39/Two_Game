
import UIKit

class StartViewController: UIViewController {
    
    let numberButton = UIButton()
    let colorButton = UIButton()
    let wichGamePlayLable = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        
        setup()
       
    }
    
    func setupUI() {
        wichGamePlayLable.text = "Какую игру вы хотите сыграть?"
        wichGamePlayLable.font = UIFont(name: "text", size: 20)
        wichGamePlayLable.textColor = UIColor.black
        wichGamePlayLable.translatesAutoresizingMaskIntoConstraints = false
        
        numberButton.setTitle("Сложи число", for: .normal)
        numberButton.backgroundColor = UIColor.green
        numberButton.setTitleColor(UIColor.yellow, for: .normal)
        numberButton.layer.cornerRadius = 5
        numberButton.addTarget(self, action: #selector(wichNumber), for: .touchUpInside)
        numberButton.translatesAutoresizingMaskIntoConstraints = false
        
        colorButton.setTitle("Что за цвет", for: .normal)
        colorButton.setTitleColor(UIColor.black, for: .normal)
        colorButton.backgroundColor = UIColor.red
        colorButton.layer.cornerRadius = 5
        colorButton.addTarget(self, action: #selector(wichColor), for: .touchUpInside)
        colorButton.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubviews([wichGamePlayLable,numberButton, colorButton])
    }

    
    
    func setup() {
        wichGamePlayLable.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 200).isActive = true
        wichGamePlayLable.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
      
        
        numberButton.topAnchor.constraint(equalTo: wichGamePlayLable.bottomAnchor, constant: 50).isActive = true
        numberButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50).isActive = true
        numberButton.widthAnchor.constraint(equalToConstant: 130).isActive = true
        numberButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        colorButton.topAnchor.constraint(equalTo: wichGamePlayLable.bottomAnchor, constant: 50).isActive = true
        colorButton.leftAnchor.constraint(equalTo: numberButton.rightAnchor, constant: 20).isActive = true
        colorButton.widthAnchor.constraint(equalToConstant: 130).isActive = true
        colorButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }

    @objc func wichNumber() {
        let vc = WichNumberViewController()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
    @objc func wichColor() {
        let vc = WichColorViewController()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }

}
