//
//  VistaPedir.swift
//  Pizzas
//
//  Created by Rodrigo Rubí Delgado on 04/04/16.
//  Copyright © 2016 Rodrigo Rubí Delgado. All rights reserved.
//

import UIKit

class VistaPedir: UIViewController {
    
    
    @IBOutlet weak var tamaño: UILabel!
    
    @IBOutlet weak var masa: UILabel!
    
    @IBOutlet weak var queso: UILabel!
    
    @IBOutlet weak var ingrediente1: UILabel!
    @IBOutlet weak var ingrediente2: UILabel!
    @IBOutlet weak var ingrediente3: UILabel!
    @IBOutlet weak var ingrediente4: UILabel!
    @IBOutlet weak var ingrediente5: UILabel!
    
    let tamaños = ["Chica","Mediana","Grande"]
    
    var selecTamaño : Int = 0
    
    let masas = ["Delgada","Crujiente","Gruesa"]
    
    var selecMasa : Int = 0
    
    let quesos = ["Mozzarella","Cheddar","Parmesano"]
    
    var selecQueso : Int = 0
    
    let ingredientes = ["Tocino","Champiñones","Peperoni","Piña","Jamón"]
    
    var i : Int = 0
    var mensaje : String = ""
    var selecIngredientes : [Int] = [0,0,0,0,0]
    
    override func viewWillAppear(animated: Bool) {
        tamaño.text = tamaños[selecTamaño]
        masa.text = masas[selecTamaño]
        queso.text = quesos[selecTamaño]
        print(selecIngredientes)
        if selecIngredientes[0]==0 {
            ingrediente1.text = ingredientes[0]
        }
        if selecIngredientes[1]==0 {
            ingrediente2.text = ingredientes[1]
        }
        if selecIngredientes[2]==0 {
            ingrediente3.text = ingredientes[2]
        }
        if selecIngredientes[3]==0 {
            ingrediente4.text = ingredientes[3]
        }
        if selecIngredientes[4]==0 {
            ingrediente4.text = ingredientes[4]
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
