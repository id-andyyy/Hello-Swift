//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Андрей Обрезков on 04.10.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var mainText: UILabel!
    let buttonPhrases = ["Получилось!", "Ура!", "Кнопка нажата", "Ещё раз!", "✅", "Круто!", "Swift?"]
    var count = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buttonTapped(_ sender: Any) {
        var buttonText: String?
        repeat {
            buttonText = buttonPhrases.randomElement()
        } while buttonText == mainText.text
                    
        mainText.text = buttonText
        startButton.setTitle("Вы нажали \(count) раз", for: .normal)
        count += 1
    }
    
}

