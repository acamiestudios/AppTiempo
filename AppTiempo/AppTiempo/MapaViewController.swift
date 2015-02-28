//
//  MapaViewController.swift
//  AppTiempo
//
//  Created by Yakeline Agudelo on 28/02/15.
//  Copyright (c) 2015 Alejandro Agudelo. All rights reserved.
//

import UIKit
import MapKit

class MapaViewController: UIViewController {
    
    @IBOutlet weak var miMapa: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ubicacionActual = CLLocationCoordinate2D(latitude: 6.2649594, longitude: -75.5668157)
        let span = MKCoordinateSpanMake(0.05, 0.05)
        let region = MKCoordinateRegion(center: ubicacionActual , span: span)
        miMapa.setRegion(region, animated: true)
        let annotation = MKPointAnnotation()
        annotation.setCoordinate(ubicacionActual)
        annotation.title = "Ubicación Actual"
        annotation.subtitle = "Ruta N"
        miMapa.addAnnotation(annotation)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
