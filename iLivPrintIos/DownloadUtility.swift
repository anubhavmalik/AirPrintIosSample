//
//  DownloadUtility.swift
//  iLivPrintIos
//
//  Created by Anubhav Malik on 30/12/18.
//  Copyright © 2018 Anubhav Malik. All rights reserved.
//

import Foundation
class DownloadUtility {
    class func load () -> Void{
        let url = URL(string: "https://firebasestorage.googleapis.com/v0/b/fir-demo-4b982.appspot.com/o/Anubhav%20Resume%20PDF.pdf?alt=media&token=3f0c3f45-7662-490e-ab29-51c73011bf61")
        if let pdfData = NSData(contentsOf: url!) {
            let resourceDocPath = NSHomeDirectory().appendingFormat("/Documents/MyPDF.pdf")
            unlink(resourceDocPath)
            if(pdfData.write(toFile: resourceDocPath, atomically: true)){
                print("data downloaded")
                PrintUtility.initiateAirPrint(filePath: resourceDocPath)
                return
            }
            else{
                return
            }
        }
        else{
        return
        }
    }
}
