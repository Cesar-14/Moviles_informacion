//
//  ViewController.swift
//  Informacion
//
//  Created by Cesar Escobedo on 20/10/22.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var lblTexto: UILabel!
    @IBOutlet weak var lblAdvertenciaSwitch: UILabel!
    @IBOutlet weak var swPermisoNavegacion: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblAdvertenciaSwitch.isHidden = true
    }

    @IBAction func doTapIrOtroVC(_ sender: Any) {
        let destino = segue.destination as! ModificarController
        destino.texto = lblTexto.text
        lblAdvertenciaSwitch.isHidden = true
        if swPermisoNavegacion.isOn {
            performSegue(withIdentifier: "gotoModificar", sender: self)
        } else {
            lblAdvertenciaSwitch.isHidden = true
        }
    }
    func actualizarTexto(texto: String) {
        lblTexto.text = texto
    }

}

