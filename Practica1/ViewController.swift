//
//  ViewController.swift
//  Practica1
//
//  Created by Infraestructura on 30/09/16.
//  Copyright © 2016 dacalo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func btnEntrar(sender: AnyObject) {
        
        if txtEmail.text != ""
        {
            if txtPassword.text != ""
            {
                performSegueWithIdentifier("login", sender: self)
            }
        }
        else
        {
            let ac: UIAlertController = UIAlertController(title: "Error", message: "Todos los campos son requeridos", preferredStyle: .Alert)
            
            let bac = UIAlertAction(title: "Ok", style: .Default, handler: nil)
            
            ac.addAction(bac)
            presentViewController(ac, animated: true, completion: nil)
        }
        
        
        
    }
}

