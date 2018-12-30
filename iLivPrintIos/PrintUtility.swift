//
//  PrintUtility.swift
//  iLivPrintIos
//
//  Created by Anubhav Malik on 30/12/18.
//  Copyright © 2018 Anubhav Malik. All rights reserved.
//

import Foundation
import UIKit
class PrintUtility{
    class func initiateAirPrint(filePath: String) -> Void{
        print("Print utility called")
        let printController = UIPrintInteractionController.shared
        let printInfo = UIPrintInfo(dictionary : nil)
        printInfo.duplex = .longEdge
        printInfo.outputType = .general
        printInfo.jobName = "Test"
        printController.printInfo = printInfo
        printController.printingItem = filePath
        printController.present(animated : true, completionHandler : nil)
    }
}
