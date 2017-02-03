//
//  DatosTableViewController.swift
//  Listas Estaticas en iOs
//
//  Created by alumno on 2/02/17.
//  Copyright © 2017 alg. All rights reserved.
//

import UIKit

class DatosTableViewController: UITableViewController {

    @IBOutlet weak var swReubicacion: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //Seccion = 1
        //Fila = 4
        
        if indexPath.section == 1 && indexPath.row == 4{
            self.performSegue(withIdentifier: "guardarCambios", sender: self)
        }
        
        tableView.deselectRow(at: indexPath, animated: false)
        
    }
    

    // MARK: - Table view data source
/*
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
*/
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    */
    
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let indexPathNombre = IndexPath(row:0, section:0)
        let primeraCelda  = tableView.cellForRow(at: indexPathNombre)
        
        let indexPathContacto = IndexPath(row:1, section:0)
        let segundaCelda  = tableView.cellForRow(at: indexPathContacto)
        
        
        /*let indexPathReubicacion = IndexPath(row:3, section:1)
        let terceraCelda  = tableView.cellForRow(at: indexPathReubicacion)
        */
        
        
        let NombreCompleto = primeraCelda?.textLabel?.text!
        let NumeroContacto = segundaCelda?.detailTextLabel?.text!
        var Reubicacion =  ""
        
        if swReubicacion.isOn{
            Reubicacion = "Si"
        }else{
            Reubicacion = "No"
        }
        
        
        let siguienteViewController:SiguienteViewController = segue.destination as! SiguienteViewController
        
        siguienteViewController.paramNombreCompleto = NombreCompleto!
        
        siguienteViewController.paramNumeroContacto = NumeroContacto!
        
        siguienteViewController.paramReubicacion = Reubicacion
        
    }
    

}
