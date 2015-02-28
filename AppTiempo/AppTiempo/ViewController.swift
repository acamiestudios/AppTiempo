//
//  ViewController.swift
//  AppTiempo
//
//  Created by Yakeline Agudelo on 28/02/15.
//  Copyright (c) 2015 Alejandro Agudelo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func coontra(sender: UIButton) {
        performSegueWithIdentifier("miPase", sender: sender)
        
        
    }

    @IBAction func santra(sender: UIButton) {
        performSegueWithIdentifier("miPase", sender: sender)
    }
    
    @IBAction func envigado(sender: UIButton) {
        performSegueWithIdentifier("miPase", sender: sender)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier=="miPase")
        {
            let vc = segue.destinationViewController as MapaViewController
            if (sender?.tag==1)
            {
                vc.Ruta = "coonatra"
            }
            if (sender?.tag==2)
            {
                vc.Ruta = "santra"
            }
            if (sender?.tag==3)
            {
                vc.Ruta = "envigado"
            }
            
        }
    }


}

