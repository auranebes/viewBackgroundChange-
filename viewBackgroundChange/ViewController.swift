//
//  ViewController.swift
//  viewBackgroundChange
//
//  Created by Arslan Abdullaev on 10.12.2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var viewForColorChange: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    @IBOutlet weak var redLabelValue: UILabel!
    @IBOutlet weak var greenLabelValue: UILabel!
    @IBOutlet weak var blueLabelValue: UILabel!
    
    
    private var globalRed: CGFloat?
    private var globalGreen: CGFloat?
    private var globalBlue: CGFloat?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backView.layer.cornerRadius = 7
        viewForColorChange.layer.cornerRadius = 10
        
        redSlider.value = 0.01
        redSlider.minimumValue = 0.01
        redSlider.maximumValue = 1.0
        redLabelValue.text = String(redSlider.value)
        
        
        greenSlider.value = 0.01
        greenSlider.minimumValue = 0.01
        greenSlider.maximumValue = 1.0
        greenLabelValue.text = String(greenSlider.value)
        
        blueSlider.value = 0.01
        blueSlider.minimumValue = 0.01
        blueSlider.maximumValue = 1.0
        blueLabelValue.text = String(blueSlider.value)
        
        
    }

    @IBAction func redColorAction() {
        redLabelValue.text = String(format:
            "%.2f",redSlider.value)
        let redSliderValue = CGFloat(redSlider.value)
        globalRed = CGFloat(redSlider.value)
        viewForColorChange.backgroundColor = UIColor(red: redSliderValue, green: globalGreen ?? 0.1, blue: globalBlue ?? 0.1, alpha: redSliderValue)
    }
    
    @IBAction func greenColorAction() {
        greenLabelValue.text = String(format: "%.2f",greenSlider.value)
        let greenSliderValue = CGFloat(greenSlider.value)
        globalGreen = CGFloat(greenSlider.value)
        viewForColorChange.backgroundColor = UIColor(red: globalRed ?? 0.1, green: greenSliderValue, blue: globalBlue ?? 0.1, alpha: greenSliderValue)
        
        
    }
    
    @IBAction func blueColorAction() {
        blueLabelValue.text = String(format: "%.2f",blueSlider.value)
        let blueSliderValue = CGFloat(blueSlider.value)
        globalBlue = CGFloat(blueSlider.value)
        viewForColorChange.backgroundColor = UIColor(red: globalRed ?? 0.1, green: globalGreen ?? 0.1, blue: blueSliderValue, alpha: blueSliderValue)
    }
    
    
    @IBAction func takeAnotherScreen() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "SecondViewController")
        self.present(viewController, animated: true, completion: nil)
    }
    
}

/*
 viewForColorChange.backgroundColor = viewForColorChange.backgroundColor?.withAlphaComponent(sliderValue)
*/


