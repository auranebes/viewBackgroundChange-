//
//  ViewControllerSecond.swift
//  viewBackgroundChange
//
//  Created by Arslan Abdullaev on 11.12.2021.
//

import UIKit

class ViewControllerSecond: UIViewController {

    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var changeView: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeView.layer.cornerRadius = 15
        backView.layer.cornerRadius = 7
        
        setColor()
        setValue(for: redLabel, greenLabel, blueLabel)

    }
    

    @IBAction func rgbSlider(_ sender: UISlider) {
        setColor()
        
        switch sender {
        case redSlider: setValue(for: redLabel)
        case greenSlider: setValue(for: greenLabel)
        default: setValue(for: blueLabel)
        }
        
    }
    
    
    private func setColor() {
        changeView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
    }
    
    private func setValue(for labels: UILabel...) {
        
        labels.forEach { label in
            switch label {
            case redLabel:
                label.text = string(from: redSlider)
            case greenLabel:
                label.text = string(from: greenSlider)
            default:
                label.text = string(from: blueSlider)
            }
        }
    }
        
    private func string(from slider: UISlider) -> String {
            String(format: "%.2f", slider.value)
        }
        
    @IBAction func takeAnother() {
        self.dismiss(animated: true, completion: nil)
    }
    
    }


