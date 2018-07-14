//
//  ViewController.swift
//  TipsyCalcApp
//
//  Created by Erwin Warkentin on 11.07.18.
//  Copyright © 2018 Erwin Warkentin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TextField: UITextField!
    @IBOutlet weak var tipPercentageSlider: UISlider!
    @IBOutlet weak var TipPercentageLbl: UILabel!
    @IBOutlet weak var TipLbl: UILabel!
    @IBOutlet weak var TotalLbl: UILabel!
    
    var tip = TipModell(billAmount: 0.0, tipPercent: 0.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
setTipCalculationValues()
        updateUI()
    }
    
    func setTipCalculationValues() {
        tip.tipPercent = Double(tipPercentageSlider.value)
        tip.billAmount = ((TextField.text)! as NSString).doubleValue
        tip.calculateTip()
    }
    
    func updateUI() {
        TipLbl.text = String(format: "$%0.2f", tip.tipAmount)
        TotalLbl.text = String(format: "$%0.2f", tip.totalAmount)
        TipPercentageLbl.text = "Tip: \(Int(tipPercentageSlider.value * 100))%"
    }
    
    @IBAction func BillAmountWasChanged(_ sender: Any) {
        setTipCalculationValues()
        updateUI()
    }
    
    @IBAction func tipPercentageDidChange(_ sender: UISlider) {
        let steps: Float = 100
        let roundedValue = round(sender.value * steps) / steps
        sender.value = roundedValue
        
        setTipCalculationValues()
        updateUI()
    }
    
    @IBAction func tipPercentDidChanged(_ sender: Any) {
        setTipCalculationValues()
        updateUI()
    }
}

