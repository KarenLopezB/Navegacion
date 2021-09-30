//
//  ViewController.swift
//  Navegacion
//
//  Created by Alumno on 9/29/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import UIKit

class RosaController: UIViewController {

    var nombre = ""
    var matricula = ""
    var promedio = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func doTapKaren(_ sender: Any) {
        nombre = "Karen"
        matricula = "12345"
        promedio = "10"
        self.performSegue(withIdentifier: "goToAzul", sender: self)
    }
    
    @IBAction func doTapDaniela(_ sender: Any) {
        nombre = "Daniela"
        matricula = "54321"
        promedio = "9.5"
        self.performSegue(withIdentifier: "goToAzul", sender: self)
    }
    
    @IBAction func doTapJose(_ sender: Any) {
        nombre = "Jose"
        matricula = "13542"
        promedio = "8.5"
        self.performSegue(withIdentifier: "goToAzul", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! AzulController
        destino.nombre = nombre
        destino.matricula = matricula
        destino.promedio = promedio
        
    }
}
