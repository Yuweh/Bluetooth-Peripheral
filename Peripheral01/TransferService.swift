//
//  TransferService.swift
//  Peripheral01
//
//  Created by Jay Bergonia on 30/5/2018.
//  Copyright © 2018 Tektos Limited. All rights reserved.
//

import UIKit
import CoreBluetooth

protocol TransferServiceDelegate: NSObjectProtocol {
    func didPowerOn()
    func didPowerOff()
    func getDataToSend() -> NSData
}


class TransferService: NSObject, CBPeripheralDelegate, CBPeripheralManagerDelegate {    
    
    var peripheralManager: CBPeripheralManager!
    var transferCharacteristic: CBMutableCharacteristic!
    var dataToSend: NSData?
    var sendDataIndex: Int?
    
    weak var delegate: TransferServiceDelegate?
    
    init(delegate: TransferServiceDelegate?) {
        super.init()
        peripheralManager = CBPeripheralManager(delegate: self, queue: nil)
        self.delegate = delegate
    }
    
    func peripheralManagerDidUpdateState(_ peripheral: CBPeripheralManager) {
        switch (peripheral.state) {
        case .poweredOn:
            
        case .poweredOff:
            
        default:
            <#code#>
        }
    }
    
    
    
    
    
}
