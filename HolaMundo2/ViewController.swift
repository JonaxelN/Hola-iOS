//
//  ViewController.swift
//  HolaMundo2
//
//  Created by Jonathan Axel Nuñez on 01/12/15.
//  Copyright © 2015 Jonathan Axel Nuñez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: Properties
    
    @IBOutlet weak var labelNombre: UILabel!
    @IBOutlet weak var txtLabel: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Handle the text field’s user input through delegate callbacks.
        txtLabel.delegate = self
    }
    
    // MARK: Actions
    @IBAction func btnCambiar(sender: UIButton) {
        labelNombre.text = "Nombre:"
        
    }
    
    // MARK: UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        // Hide the keyboard
        txtLabel.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        labelNombre.text = txtLabel.text
    }
}

