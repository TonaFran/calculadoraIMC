//
//  SegundoViewController.swift
//  Calculadora
//
//  Created by Mac14 on 25/02/22.
//

import UIKit

class SegundoViewController: UIViewController {
    
    var ValorIMC: String?
    var mensaje: String?
    var color: UIColor?
    var image: UIImage?
    
    
    @IBOutlet weak var valorIMCLbl: UILabel!
    @IBOutlet weak var mensajeLbl: UILabel!
    @IBOutlet weak var RetratoIMCIV: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(ValorIMC ?? "")
        print(mensaje ?? "")
        valorIMCLbl.text = ValorIMC
        mensajeLbl.text = mensaje
        self.view.backgroundColor = color
        RetratoIMCIV.image = image


        // Do any additional setup after loading the view.
    }
    
    @IBAction func calcularNuevo(_ sender: UIButton) {
        dismiss(animated: true)
        
    }
    

}
