//
//  ViewController.swift
//  changeColor
//
//  Created by Вероника Карпова on 21.09.2023.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var coloredView: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    // MARK: - Life Cycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        coloredView.backgroundColor = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        coloredView.layer.cornerRadius = 12
    }
    
    // MARK: - IBActions
    
    @IBAction func redSliderChanged(_ sender: UISlider) { //valueChanged
        redLabel.text = String(format: "%.2f", redSlider.value)
        changeColor()
    }
    @IBAction func greenSliderChanged(_ sender: UISlider) { //valueChanged
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        changeColor()
    }
    @IBAction func blueSliderChanged(_ sender: UISlider) { //valueChanged
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        changeColor()
    }
    
    // MARK: - Private Methods
    
    private func changeColor() {
        coloredView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
}

