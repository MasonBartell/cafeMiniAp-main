//
//  ViewController.swift
//  cafeMiniApp
//
//  Created by MASON BARTELL on 9/15/23.
//

import UIKit

class ViewController: UIViewController {
    var ele = 0
    var test = 0
    var total = 0
    var item = ""
    @IBOutlet weak var shoppingCart: UILabel!
    
    @IBOutlet weak var itemTextview: UITextView!
    
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var textview: UITextView!
    
    @IBOutlet weak var textview2: UITextView!
    
    @IBOutlet weak var foodtext: UITextField!
    
    @IBOutlet weak var amountText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        while (ele < food.count){
            let result = food[ele]
            textview.text.append(result + "\n")
            ele += 1
        }
        while (test < price.count){
            let result = price[test]
            textview2.text.append("\(result)" + "\n")
            test += 1
        }
    }
    
    var food : [String] = ["Hotdog","Hamburger","The Grubbb Meal", "Chicken Sandwich","Fries"]
    var price : [Double] = [5.00,5.00,13.95,7.50,2.00]
    
    
    @IBAction func addButton(_ sender: UIButton) {
        var a = amountText.text
        var dict : [String : Double] = [:]
        for foodcheck in food {
            if foodtext.text == foodcheck
            {
                switch foodcheck {
                case "Hotdog" : dict[foodcheck] = price[0]
                    total = total + Int(price[0]) * Int(a!)!
                    item.append("Hotdog \n")
                case "Hamburger" : dict[foodcheck] = price[1]
                    total = total + Int(price[1]) * Int(a!)!
                    item.append("Hamburger \n")
                case "The Grubbb Meal" : dict[foodcheck] = price[2]
                    total = total + Int(price[2]) * Int(a!)!
                    item.append("The Grubbb Meal \n")
                case "Chicken Sandwich" : dict[foodcheck] = price[3]
                    total = total + Int(price[3]) * Int(a!)!
                    item.append("Chicken Sandwich \n")
                case "Fries" : dict[foodcheck] = price[4]
                    total = total + Int(price[4]) * Int(a!)!
                    item.append("Fries" + "\n")
                default : "will never happen"
                }
                }
            if foodtext.text != foodcheck{
                errorLabel.text = "Not Valid Input"
            }
                
            
            }
        shoppingCart.text = "Total Cost: $\(total)"
        itemTextview.text = item
       
        }
        
    }
