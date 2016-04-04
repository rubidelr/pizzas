//
//  VistaMasa.swift
//  Pizzas
//
//  Created by Rodrigo Rubí Delgado on 04/04/16.
//  Copyright © 2016 Rodrigo Rubí Delgado. All rights reserved.
//

import UIKit

class VistaMasa: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    let tamaños = ["Chica","Mediana","Grande"]
    
    var selecTamaño : Int = 0
    
    let masas = ["Delgada","Crujiente","Gruesa"]
    
    var seleccionado : Int = 0
    
    @IBOutlet weak var valorTamaño: UILabel!
    
    @IBOutlet weak var masa: UIPickerView!
    
    
    override func viewWillAppear(animated: Bool) {
        valorTamaño.text = tamaños[selecTamaño]
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigQueso = segue.destinationViewController as! VistaQueso
        sigQueso.selecTamaño = selecTamaño
        sigQueso.selecMasa = obtenerMasa()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        masa.delegate = self
        masa.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return masas[row]
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return masas.count
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func obtenerMasa() -> Int{
        seleccionado = masa.selectedRowInComponent(0)
        return seleccionado
    }
    
    @IBAction func sigMasa(sender: AnyObject) {
        obtenerMasa()
    }

}
