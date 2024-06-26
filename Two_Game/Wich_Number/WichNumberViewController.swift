

import UIKit

class WichNumberViewController: UIViewController, GameProtocol {
    var score: Int = 0
    
    func restartGame() {
        round = 0
        score = 0
    }
    
    var number1 = Int()
    var number2 = Int()
  
    var result: Int = 0
    
    var round: Int = 0
    
    var points: Int = 0
    
    let insertNumber = UITextField()
    let checkButton = UIButton()
    let exerciseLabel = UILabel()
    let exerciseNameLabel = UILabel()
    let resultNameLabel =  UILabel()
    let roundLabel = UILabel()
    let roundCount = UILabel()
    


    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Назад", style: .done, target: self, action: #selector(back))
        
        setupUI()
        
        setting()
        
        randomNumbers()
       
    }
    
    
    func gameOver() {
        let alert = UIAlertController(title: "Игра Окончена",
                                      message: "Вы набрани \(self.points) очков ",
                                      preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Начать заного",
                                      style: .default))
        present(alert, animated: true)
         round = 1
         points = 0
    }
    
    func randomNumbers() {
        number1 = Int.random(in: 1...50)
        number2 = Int.random(in: 1...50)
        
        self.exerciseLabel.text = String("\(number1) +  \(number2)")
    }
    
    func  multiplay(num1: Int, num2: Int) -> Int{
       result = num1 + num2
      return result
    }
    
   
    @objc func checkNumbers() {
        
        guard let numberTextField = Int(self.insertNumber.text ?? "") else {
            return
        }
        
        if numberTextField == multiplay(num1: number1, num2: number2) {
            
            round += 0
            points += 50
            
            
        } else if numberTextField != multiplay(num1: number1, num2: number2) {
            round += 1
            points -= 50
            
        } else {
            points += 50
        }
           if round == 5 {
               gameOver()
           } else {
               round += 0
           }
        
        self.randomNumbers()
       
        self.roundLabel.text = String(self.round)
        
    }
    
    @objc func back() {
       dismiss(animated: true)
    }
    
    func setupUI() {
        insertNumber.placeholder = "Insert Ansver"
        insertNumber.translatesAutoresizingMaskIntoConstraints = false
        
        checkButton.setTitle("Check", for: .normal)
        checkButton.setTitleColor(.black, for: .normal)
        checkButton.backgroundColor = .yellow
        checkButton.layer.cornerRadius = 5
        checkButton.layer.borderWidth = 2
        checkButton.addTarget(self, action: #selector(checkNumbers), for: .touchUpInside)
        checkButton.translatesAutoresizingMaskIntoConstraints = false
        
    
        exerciseLabel.font = UIFont(name: "Text", size: 20)
        exerciseLabel.textColor = UIColor.black
        exerciseLabel.translatesAutoresizingMaskIntoConstraints = false
        
        exerciseNameLabel.font = UIFont(name: "Text", size: 20)
        exerciseNameLabel.text = "Пример: "
        exerciseNameLabel.textColor = UIColor.black
        exerciseNameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        resultNameLabel.font = UIFont(name: "Text", size: 20)
        resultNameLabel.text = "Результат: "
        resultNameLabel.textColor = UIColor.black
        resultNameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        roundLabel.font = UIFont(name: "Text", size: 20)
        roundLabel.textColor = UIColor.black
        roundLabel.translatesAutoresizingMaskIntoConstraints = false
        
        roundCount.font = UIFont(name: "Text", size: 20)
        roundCount.text = "Раунд: "
        roundCount.textColor = UIColor.black
        roundCount.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubviews([roundCount,roundLabel,resultNameLabel,exerciseNameLabel,exerciseLabel,checkButton, insertNumber])
    }
    
    func setting() {

        exerciseLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        exerciseLabel.heightAnchor.constraint(equalToConstant: 25).isActive = true
        exerciseLabel.widthAnchor.constraint(equalToConstant: 80).isActive = true
        exerciseLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
        exerciseNameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        exerciseNameLabel.rightAnchor.constraint(equalTo: view.leftAnchor, constant: 110 ).isActive = true
        
        
        insertNumber.topAnchor.constraint(equalTo: exerciseLabel.bottomAnchor, constant: 15).isActive = true
        insertNumber.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
        resultNameLabel.topAnchor.constraint(equalTo: exerciseLabel.bottomAnchor, constant: 15).isActive = true
        resultNameLabel.rightAnchor.constraint(equalTo: view.leftAnchor, constant: 110 ).isActive = true
        
      
        checkButton.topAnchor.constraint(equalTo: insertNumber.bottomAnchor, constant: 15).isActive = true
        checkButton.widthAnchor.constraint(equalToConstant: 70).isActive = true
        checkButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        checkButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
        roundLabel.topAnchor.constraint(equalTo: checkButton.bottomAnchor, constant: 20).isActive = true
        roundLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
        roundCount.topAnchor.constraint(equalTo: checkButton.bottomAnchor, constant: 20).isActive = true
        roundCount.rightAnchor.constraint(equalTo: view.leftAnchor, constant: 100).isActive = true
    }

}

