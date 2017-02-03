//
//  SiguienteViewController.swift
//  Listas Estaticas en iOs
//
//  Created by alumno on 2/02/17.
//  Copyright © 2017 alg. All rights reserved.
//

import UIKit

class SiguienteViewController: UIViewController {
    
    @IBOutlet weak var lblNombreCompleto: UILabel!
    
    @IBOutlet weak var lblNumeroContacto: UILabel!

    @IBOutlet weak var lblReubicacion: UILabel!
    
    var paramNombreCompleto = ""
    var paramNumeroContacto = ""
    var paramReubicacion = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblNombreCompleto.text=paramNombreCompleto
        lblNumeroContacto.text=paramNumeroContacto
        lblReubicacion.text=paramReubicacion
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnRegresarTouch(_ sender: UIButton) {
    
        self.dismiss(animated: true) { 
        
        }
    
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
