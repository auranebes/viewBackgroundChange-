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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backView.layer.cornerRadius = 7
        viewForColorChange.layer.cornerRadius = 10
    }


}

