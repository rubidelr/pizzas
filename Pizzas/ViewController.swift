//
//  ViewController.swift
//  Pizzas
//
//  Created by Rodrigo Rubí Delgado on 03/04/16.
//  Copyright © 2016 Rodrigo Rubí Delgado. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {

    @IBOutlet weak var tamaño: UIPickerView!
    
    let tamaños = ["Chica","Mediana","Grande"]
    
    var seleccionado : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tamaño.delegate = self
        tamaño.dataSource = self
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigMasa = segue.destinationViewController as! VistaMasa
        sigMasa.selecTamaño = obtenerTamaño()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        seleccionado = row
        return tamaños[row]
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tamaños.count
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func obtenerTamaño() -> Int{
        seleccionado = tamaño.selectedRowInComponent(0)
        return seleccionado
    }

    @IBAction func sigTamaño(sender: AnyObject) {
        obtenerTamaño()
    }

}

