//
//  TipModell.swift
//  TipsyCalcApp
//
//  Created by Erwin Warkentin on 12.07.18.
//  Copyright © 2018 Erwin Warkentin. All rights reserved.
//

import Foundation

class TipModell {
    private var _billAmount: Double = 0
    private var _tipPercent: Double = 0
    private var _tipAmount: Double = 0
    private var _totalAmount: Double = 0
    
    var billAmount: Double {
        get {
            return _billAmount
        } set {
            return _billAmount = newValue
        }
    }
    
    var tipPercent: Double {
        get {
            return _tipPercent
        } set {
            return _tipPercent = newValue
        }
    }
    
    var tipAmount: Double {
        return _tipAmount
    }
    
    var totalAmount: Double {
        return _totalAmount
    }
    
    init(billAmount: Double, tipPercent: Double) {
        self._billAmount = billAmount
        self._tipPercent = tipPercent
    
}
    func calculateTip () {
        _tipAmount = billAmount * tipPercent
        _totalAmount = tipAmount + billAmount
    }

}


