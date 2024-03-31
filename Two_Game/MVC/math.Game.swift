//
//  math.Game.swift
//  Two_Game
//
//  Created by Alexander on 01.04.2024.
//

import Foundation


protocol GameProtocol {
    
    var score: Int {get}
    
    var number1: Int {get}
    
    var number2: Int {get}
    
//    var isGameEnded: Bool {get}
    
    func gameOver()
    
    func multiplay(num1: Int, num2: Int) -> Int
    
    func randomNumbers()
}

