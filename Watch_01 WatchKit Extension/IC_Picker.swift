//
//  IC_Picker.swift
//  Watch_01
//
//  Created by Rubens Gondek on 3/3/16.
//  Copyright © 2016 Gondek. All rights reserved.
//

import WatchKit
import Foundation


class IC_Picker: WKInterfaceController {
    
    @IBOutlet var fruitPicker: WKInterfacePicker!
    @IBOutlet var lblValue: WKInterfaceLabel!
    
    let fruits: [(String,String,String)] = [("Banana", "Banana", "Paixão dos Minions"), ("Cereja", "Cereja", "Topo do Bolo"), ("Kiwi", "Kiwi", "Cabeludo"), ("Limao", "Limão", "Azedo Pakas"), ("Maca", "Maçã", "Torta de Maça"), ("Morango", "Morango", "Morangotango")]
    
    var fruitItems: [WKPickerItem] = []
    var items: [WKPickerItem] = []
    var items2: [WKPickerItem] = []
    
    var selectedItem = 0
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Clock
        for i in 0...10 {
            for j in 0...10 {
                for k in 0...10 {
                    let it = WKPickerItem()
                    it.contentImage = WKImage(imageName: "tripleRadial\(i)-\(j)-\(k)")
                    it.title = "\(i)"
                    it.caption = "Tá Rodando"
                    items.append(it)
                }
            }
        }
        
        // Full Length
        for i in 0...10 {
            let it = WKPickerItem()
            it.contentImage = WKImage(imageName: "tripleRadial\(0)-\(0)-\(i)")
            it.title = "\(i)"
            it.caption = "Tá Rodando"
            items2.append(it)
        }
        for j in 1...10 {
            let it = WKPickerItem()
            it.contentImage = WKImage(imageName: "tripleRadial\(0)-\(j)-\(10)")
            it.title = "\(j)"
            it.caption = "Tá Rodando"
            items2.append(it)
        }
        for k in 1...10 {
            let it = WKPickerItem()
            it.contentImage = WKImage(imageName: "tripleRadial\(k)-\(10)-\(10)")
            it.title = "\(k)"
            it.caption = "Tá Rodando"
            items2.append(it)
        }

        // Fruits
        for ft in fruits {
            let it = WKPickerItem()
//            it.contentImage = WKImage(imageName: ft.0)
            it.accessoryImage = WKImage(imageName: ft.0)
            it.title = ft.1
            it.caption = ft.2
            fruitItems.append(it)
        }
        
//        fruitPicker.setItems(fruitItems)
//        fruitPicker.setItems(items)
        fruitPicker.setItems(items2)
        
        // Configure interface objects here.
    }
    
    @IBAction func pickerChanged(value: Int) {
        if value <= 10 {
            lblValue.setText("0-0-\(value)")
        }
        else if value <= 20 {
            lblValue.setText("0-\(value-10)-10")
        }
        else {
            lblValue.setText("\(value-20)-10-10")
        }
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
}
