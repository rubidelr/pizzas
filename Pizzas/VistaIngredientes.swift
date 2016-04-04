//
//  VistaIngredientes.swift
//  Pizzas
//
//  Created by Rodrigo Rubí Delgado on 04/04/16.
//  Copyright © 2016 Rodrigo Rubí Delgado. All rights reserved.
//

import UIKit

class VistaIngredientes: UIViewController {
    
    @IBOutlet weak var labelTamaño: UILabel!
    
    @IBOutlet weak var labelMasa: UILabel!
    
    @IBOutlet weak var labelQueso: UILabel!
    
    let tamaños = ["Chica","Mediana","Grande"]
    
    var selecTamaño : Int = 0
    
    let masas = ["Delgada","Crujiente","Gruesa"]
    
    var selecMasa : Int = 0
    
    let quesos = ["Mozzarella","Cheddar","Parmesano"]
    
    var selecQueso : Int = 0
    
    var ingredientes:[Int] = []
    
    @IBOutlet weak var ingrediente1: UISwitch!
    
    @IBOutlet weak var ingrediente2: UISwitch!
    
    @IBOutlet weak var ingrediente3: UISwitch!
    
    @IBOutlet weak var ingrediente4: UISwitch!
    
    @IBOutlet weak var ingrediente5: UISwitch!
    
    override func viewWillAppear(animated: Bool) {
        labelTamaño.text = tamaños[selecTamaño]
        labelMasa.text = masas[selecTamaño]
        labelQueso.text = quesos[selecTamaño]
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigPedir = segue.destinationViewController as! VistaPedir
        sigPedir.selecTamaño = selecTamaño
        sigPedir.selecMasa = selecMasa
        sigPedir.selecQueso = selecQueso
        sigPedir.selecIngredientes = obtenerIngredientes()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func obtenerIngredientes() -> Array<Int> {
        var a : Int = 1
        var b : Int = 1
        var c : Int = 1
        var d : Int = 1
        var e : Int = 1
        
        if ingrediente1.on {
            a = 0
        }
        if ingrediente2.on{
            b = 0
        }
        if ingrediente3.on{
            c = 0
        }
        if ingrediente4.on{
            d = 0
        }
        if ingrediente5.on{
            e = 0
        }
        
        ingredientes = [a,b,c,d,e]
        return ingredientes
    }
    
    @IBAction func sigIngredientes(sender: AnyObject) {
        obtenerIngredientes()
    }

}
