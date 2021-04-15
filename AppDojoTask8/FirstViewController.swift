//
//  ViewController.swift
//  AppDojoTask8
//
//  Created by Naoyuki Kan on 2021/04/07.
//

import UIKit


class FirstViewController: UIViewController {

    @IBOutlet private weak var label: UILabel!
    @IBOutlet private weak var slider: UISlider!

    private let delegete = UIApplication.shared.delegate
        as! AppDelegate

    private var number: Float {
        get {
            delegete.number
        }
        set {
            delegete.number = newValue
        }
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        label.text = String(number)
        slider.value = number
    }

    @IBAction func sliderDidChangeValue(_ sender: UISlider) {
        let value = sender.value
        label.text = String(value)
        number = Float(value)
    }
}
