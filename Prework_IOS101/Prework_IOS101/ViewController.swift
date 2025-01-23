//
//  ViewController.swift
//  Prework_IOS101
//
//  Created by Maiwand Raheem on 1/19/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var senderButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Text3.font = UIFont(name:"HelveticaNeue-Bold", size: 18)
        Text3.textAlignment = .center
        
        
        text2.font = UIFont(name: "Menlo-Bold", size: 22)
        text2.textAlignment = .center
        
        text1.font = UIFont(name: "HelveticaNeue-Bold", size: 30)
        text1.textAlignment = .center
        
        pfp.image = UIImage(named: "pic" )
        pfp.layer.cornerRadius = pfp.frame.size.width / 2
        pfp.layer.masksToBounds = true // This is like "clip-path" in HTML/CSS
        pfp.layer.borderWidth = 3 // Set the border thickness
        pfp.layer.borderColor = UIColor.black.cgColor // Set the border color (black in this case)
        
        terp.image = UIImage(named: "turtle")
        
        
        senderButton.backgroundColor = UIColor.lightGray
        senderButton.layer.cornerRadius = senderButton.frame.size.height / 5
    }

    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        func changeColor() -> UIColor{

                let red = CGFloat.random(in: 0...1)
                let green = CGFloat.random(in: 0...1)
                let blue = CGFloat.random(in: 0...1)

                return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
            }
        
        let randomColor = changeColor()
        view.backgroundColor = randomColor
        pfp.layer.borderColor = randomColor.withAlphaComponent(1).cgColor
        text1.textColor = randomColor.withAlphaComponent(1.0)
        text2.textColor = randomColor.withAlphaComponent(1.0)
        Text3.textColor = randomColor.withAlphaComponent(1.0)
        sender.backgroundColor = randomColor
        sender.layer.cornerRadius = sender.frame.size.height / 5
        sender.setTitleColor(randomColor.withAlphaComponent(1.0), for: .normal)
        
    }
    
    @IBOutlet weak var terp: UIImageView!
    @IBOutlet weak var pfp: UIImageView!
    @IBOutlet weak var text2: UILabel!
    
    @IBOutlet weak var text1: UILabel!
    @IBOutlet weak var Text3: UILabel!
}

