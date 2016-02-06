//
//  ViewController.swift
//  FizzBuzzSwift
//
//  Created by Hickman on 11/3/15.
//  Copyright © 2015 Hickman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldMin: UITextField!
    @IBOutlet weak var textFieldMax: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textFieldMin.becomeFirstResponder()
    }

    func fizzBuzzTime(min : Int , max : Int)
    {
        var fizzCounter:Int = 0
        var buzzCounter:Int = 0
        var fizzBuzzCounter:Int = 0
        
        for number in min...max
        {
            if number % 3 == 0
            {
                if number % 5 == 0
                {
                    NSLog("FIZZBUZZ")
                    fizzBuzzCounter++
                }
                else
                {
                    NSLog("fizz")
                    fizzCounter++
                }
            }
            else if number % 5 == 0
            {
                NSLog("Buzz")
                buzzCounter++
            }
            else
            {
                NSLog("\(number)")
            }
        }
        NSLog("There are \(fizzCounter) fizz's, \(buzzCounter) buzz's and \(fizzBuzzCounter) FIZZBUZZ's")
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool
    {
        if self.textFieldMin.isFirstResponder()
        {
            self.textFieldMax.becomeFirstResponder()
            return true
        }
        if textFieldMax.isFirstResponder()
        {
            self.textFieldMin.becomeFirstResponder()
            return true
        }
        return true
    }
    
    @IBAction func buttonPressed(sender: UIButton)
    {
        
    self.fizzBuzzTime(Int(self.textFieldMin.text!)!, max: Int(self.textFieldMax.text!)!)
    
    }


}

