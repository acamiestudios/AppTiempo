//
//  MapaViewController.swift
//  AppTiempo
//
//  Created by Yakeline Agudelo on 28/02/15.
//  Copyright (c) 2015 Alejandro Agudelo. All rights reserved.
//

import UIKit
import MapKit

class MapaViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var miMapa: MKMapView!
    
    var Ruta = ""
    
    let ubicacionActual = CLLocationCoordinate2D(latitude: 6.2649594, longitude: -75.5668157)
    let ubicacionCoonatra = CLLocationCoordinate2D(latitude: 6.264042, longitude: -75.563951)
    let ubicacionEnvigado = CLLocationCoordinate2D(latitude: 6.270459, longitude: -75.566157)
    let ubicacionSantra = CLLocationCoordinate2D(latitude: 6.264817, longitude: -75.565492)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        miMapa.delegate = self
        println("la ruta es: \(Ruta)")
//        let span = MKCoordinateSpanMake(0.05, 0.05)
                let span = MKCoordinateSpanMake(0.01, 0.01)
        let region = MKCoordinateRegion(center: ubicacionActual , span: span)
        miMapa.setRegion(region, animated: true)
        let annotation = MKPointAnnotation()
        annotation.setCoordinate(ubicacionActual)
        annotation.title = "Ubicación Actual"
        annotation.subtitle = "Ruta N"
        miMapa.addAnnotation(annotation)
        let annotation2 = Anotacion()
        if (Ruta=="coonatra")
        {
            annotation2.setCoordinate(ubicacionCoonatra)
            annotation2.title = "Coonatra llega en"
            annotation2.subtitle = "4 minutos"
            annotation2.imageName = "uno.jpg"
        }
        if (Ruta=="santra")
        {
            annotation2.setCoordinate(ubicacionEnvigado)
            annotation2.title = "Santra llega en"
            annotation2.subtitle = "6 minutos"
            annotation2.imageName = "dos.jpg"
        }
        if (Ruta=="envigado")
        {
            annotation2.setCoordinate(ubicacionSantra)
            annotation2.title = "Envigado llega en"
            annotation2.subtitle = "1 minuto"
            annotation2.imageName = "tres.jpg"
        }
        
        miMapa.addAnnotation(annotation2)
    }
    
    func mapView(mapView: MKMapView!, viewForAnnotation annotation: MKAnnotation!) -> MKAnnotationView! {
        if !(annotation is Anotacion) {
            return nil
        }
        
        let reuseId = "miPin"
        
        var anView = mapView.dequeueReusableAnnotationViewWithIdentifier(reuseId)
        if anView == nil {
            anView = MKAnnotationView(annotation: annotation, reuseIdentifier: reuseId)
            anView.canShowCallout = true
        }
        else {
            anView.annotation = annotation
        }
        let cpa = annotation as Anotacion
        anView.image = UIImage(named:cpa.imageName)
        
        return anView
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
