//
//  ViewController.swift
//  iLivPrintIos
//  Created by Anubhav Malik on 30/12/18.
//  Copyright © 2018 Anubhav Malik. All rights reserved.

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var printButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    func printFile() -> Void{
        createPdfFromView()
    }
    
func createPdfFromView(){
         DownloadUtility.load()
    }
    @IBAction func initiatePrintProcess(_ sender: UIButton) {
        printFile()
    }
}
                

