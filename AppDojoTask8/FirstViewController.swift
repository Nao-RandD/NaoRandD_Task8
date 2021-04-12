//
//  ViewController.swift
//  AppDojoTask8
//
//  Created by Naoyuki Kan on 2021/04/07.
//

import UIKit

var process: SecondScreenProcess!

class FirstViewController: UIViewController {

    @IBOutlet weak var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        process = SecondViewController() as SecondScreenProcess
        process.sendValue(value: label.text ?? " ")
    }

    @IBAction func sliderDidChangeValue(_ sender: UISlider) {
        let value = sender.value
        label.text = String(value)
    }
}

