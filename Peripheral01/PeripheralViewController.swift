//
//  ViewController.swift
//  Peripheral01
//
//  Created by Jay Bergonia on 30/5/2018.
//  Copyright © 2018 Tektos Limited. All rights reserved.
//

import UIKit

class PeripheralViewController: UIViewController, TransferServiceDelegate {

    @IBOutlet weak var mainTextLabel: UILabel!
    @IBOutlet weak var bluetoothSwitchLabel: UILabel!
    @IBOutlet weak var advertiseSwitch: UISwitch!
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func advertiseSwitchMoved(_ sender: UISwitch) {
    
    
    }
    
    func didPowerOn() {
        mainTextLabel.text = "Now Ready to Send"
    }
    
    func didPowerOff() {
        mainTextLabel.text = "Not Ready to Send"
        advertiseSwitch.setOn(false, animated: true)
    }
    
    func getDataToSend() -> NSData {
        return textView.text.data(using: String.Encoding.utf8)! as NSData
    }
    

}

