//
//  ViewController.swift
//  WWCTipCalculator
//
//  Created by Amy Giver on 6/22/17.
//  Copyright © 2017 Amy Giver Squid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var bill: String = "0"
    var numberBill: Double = 0.00
    var tipValue : Int = 10
    var groupSize: Int = 1
    
    @IBOutlet weak var billDisplay: UILabel!
    
    
    @IBOutlet weak var lowTipLabel: UILabel!
    @IBOutlet weak var midTipLabel: UILabel!
    @IBOutlet weak var highTipLabel: UILabel!
    @IBOutlet weak var tenTip: UILabel!
    @IBOutlet weak var fifteenTip: UILabel!
    @IBOutlet weak var twentyTip: UILabel!
    
    
    @IBOutlet weak var tenBill: UILabel!
    @IBOutlet weak var fifteenBill: UILabel!
    @IBOutlet weak var twentyBill: UILabel!
    
    @IBOutlet weak var decimalButton: UIButton!
    
    @IBOutlet weak var groupSizeLabel: UILabel!
    
    @IBAction func tipSlider(_ sender: UISlider) {
        tipValue = Int(sender.value)
       
        lowTipLabel.text = "\(tipValue - 5)%"
        midTipLabel.text = "\(tipValue)%"
        highTipLabel.text = "\(tipValue + 5)%"
        updateDisplay()
    }
    
    
    @IBAction func sizeSliderSlid(_ sender: UISlider) {
        groupSize = Int(sender.value)
        groupSizeLabel.text = String(groupSize)
        updateDisplay()
        
    }
    
    
    @IBAction func calculatorButtonWasPressed(_ sender: UIButton) {
        print("button pressed", sender.tag)
        if(sender.tag >= 0 && sender.tag <= 9){
            if(bill == "0"){
                bill = String(sender.tag)
            }
            else {
                bill += String(sender.tag)

            }
        }
        else if(sender.tag == 10){
            bill = "0"
            decimalButton.isEnabled = true
        }
        else if(sender.tag == 11){
            bill += "."
            sender.isEnabled = false

        }
        updateDisplay()

    }
    
    func updateDisplay(){
        billDisplay.text = bill
        numberBill = Double(bill)!
        let tenTipNumber = numberBill * (Double(tipValue - 5) * 0.01)
        let fifteenTipNumber = numberBill * Double(tipValue) * 0.01
        let twentyTipNumber = numberBill * (Double(tipValue + 5) * 0.01)

        tenTip.text = String(format: "%.2f", tenTipNumber/Double(groupSize))
        fifteenTip.text = String(format: "%.2f", fifteenTipNumber/Double(groupSize))
        twentyTip.text = String(format: "%.2f", twentyTipNumber/Double(groupSize))
        
        tenBill.text = String(format: "%.2f", (numberBill + tenTipNumber)/Double(groupSize))
        fifteenBill.text = String(format: "%.2f", (numberBill + fifteenTipNumber)/Double(groupSize))
        twentyBill.text = String(format: "%.2f", (numberBill + twentyTipNumber)/Double(groupSize))
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        billDisplay.text = bill
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


