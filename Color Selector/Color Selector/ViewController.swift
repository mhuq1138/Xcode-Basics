//
//  ViewController.swift
//  Color Selector
//
//  Created by Mazharul Huq on 1/30/19.
//  Copyright © 2019 Mazharul Huq. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var myView: UIView!
    @IBOutlet var redSliderLabel: UILabel!
    @IBOutlet var greenSliderLabel: UILabel!
    @IBOutlet var blueSliderLabel: UILabel!
    
    var red:CGFloat = 0.50
    var green:CGFloat = 0.50
    var blue:CGFloat = 0.50
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setBackgroundColor()
    }
    
    func setBackgroundColor(){
        self.myView.backgroundColor = UIColor(red: self.red, green: self.green, blue: self.blue, alpha: 1.0)
    }
    
    
    @IBAction func redSliderChanged(_ sender: UISlider) {
        self.red = CGFloat(sender.value)
        self.redSliderLabel.text = String(format: "%.2f", self.red)
        self.setBackgroundColor()
        
    }
    
    @IBAction func greenSliderChanged(_ sender: UISlider) {
        self.green = CGFloat(sender.value)
        self.greenSliderLabel.text = String(format: "%.2f", self.green)
        self.setBackgroundColor()
        
    }
    
    @IBAction func blueSliderChanged(_ sender: UISlider) {
        self.blue = CGFloat(sender.value)
        self.blueSliderLabel.text = String(format: "%.2f", self.blue)
        self.setBackgroundColor()
        
    }
    
}

