//
//  ViewController.swift
//  RGBpallete
//
//  Created by Aiza on 22.08.2021.
//

import UIKit

class ViewController: UIViewController {
 
    @IBOutlet private var palette: UIView!
    
    @IBOutlet private var redSlider: UISlider!
    @IBOutlet private var greenSlider: UISlider!
    @IBOutlet private var blueSlider: UISlider!
    
    @IBOutlet private var redLabel: UILabel!
    @IBOutlet private var greenLabel: UILabel!
    @IBOutlet private var blueLabel: UILabel!

    @IBAction private func paletteUpdate() {
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)
        
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        
        palette.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
    }
}

//Округление String(format: "%.2f", redSlider.value) взято отсюда https://stackoverflow.com/questions/34929932/round-up-double-to-2-decimal-places/34930127
