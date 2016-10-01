//
//  DetalleEstado.swift
//  Practica1
//
//  Created by Infraestructura on 30/09/16.
//  Copyright © 2016 dacalo. All rights reserved.
//

import UIKit

class DetalleEstado: UIViewController {
    
    var info : NSDictionary?
    @IBOutlet weak var txtInfo: UITextView!
    
    
    
    override func viewWillAppear(animated: Bool) {
        
        let infoCompleta = NSMutableString()
        infoCompleta.appendString(info?["entidad"] as! String)
        
        let munArray = info?["municipios"] as! NSArray
        infoCompleta.appendString("\n Princiopales Municipios \n\n")
        
        for munNombre in munArray{
            infoCompleta.appendString("* \(munNombre as! String) \n")
        }
        
        txtInfo!.text = infoCompleta as String
        
        //txtInfo!.text = info?.description
        //txtInfo!.text = info?["entidad"] as! String
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func btnVerMas(sender: AnyObject) {
        let nombreSinEspacio = (info?["entidad"] as! String).stringByReplacingOccurrencesOfString(" ", withString: "%20")
        
        let laURL = "https://www.google.com.mx/search?q=\(nombreSinEspacio)"
        
        UIApplication.sharedApplication().openURL(NSURL(string:laURL)!)
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
