//
//  AddCarViewController.swift
//  Core_Data
//
//  Created by YE002 on 07/03/23.
//

import UIKit

class AddCarViewController: UIViewController {
    @IBOutlet weak var brandTF: UITextField!
    @IBOutlet weak var colorTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func save(){
        let brand: String = brandTF.text!
        let color: String = colorTF.text!
        
    }
    @IBAction func clear(){
        brandTF.text=""
        colorTF.text=""
    }
    
}
