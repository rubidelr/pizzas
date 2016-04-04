//
//  VistaQueso.swift
//  Pizzas
//
//  Created by Rodrigo Rubí Delgado on 04/04/16.
//  Copyright © 2016 Rodrigo Rubí Delgado. All rights reserved.
//

import UIKit

class VistaQueso: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    
    let tamaños = ["Chica","Mediana","Grande"]
    
    var selecTamaño : Int = 0
    
    let masas = ["Delgada","Crujiente","Gruesa"]
    
    var selecMasa : Int = 0
    
    let quesos = ["Mozzarella","Cheddar","Parmesano"]
    
    var seleccionado : Int = 0
    
    @IBOutlet weak var labelTamaño: UILabel!
    
    @IBOutlet weak var labelMasa: UILabel!
    
    @IBOutlet weak var queso: UIPickerView!
    
    override func viewWillAppear(animated: Bool) {
        labelTamaño.text = tamaños[selecTamaño]
        labelMasa.text = masas[selecMasa]
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigIngredientes = segue.destinationViewController as! VistaIngredientes
        sigIngredientes.selecTamaño = selecTamaño
        sigIngredientes.selecMasa = selecMasa
        sigIngredientes.selecQueso = obtenerQueso()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        queso.delegate = self
        queso.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return quesos[row]
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return quesos.count
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func obtenerQueso() -> Int{
        seleccionado = queso.selectedRowInComponent(0)
        return seleccionado
    }
    
    @IBAction func sigQueso(sender: AnyObject) {
        obtenerQueso()
    }

}
