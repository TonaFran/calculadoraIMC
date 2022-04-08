//
//  CerebroCalculadora.swift
//  Calculadora
//
//  Created by mac14 on 02/03/22.
//

import Foundation
import UIKit

struct CerebroCalculadora {
    var imc: IMC?
    
    mutating func calcularIMC(peso: Float, altura: Float){
        let valorIMC = peso / (altura * altura)
        
        if valorIMC < 18.5{
            imc = IMC(valor: valorIMC, mensaje: "Bajo de peso", color: UIColor.green, imagen: UIImage(named: "bajopeso")!)
        } else if valorIMC < 24.9{
            imc = IMC(valor: valorIMC, mensaje: "Peso normal", color: UIColor.red, imagen: UIImage(named: "pesonormal")!)
        } else if valorIMC < 29.9{
            imc = IMC(valor: valorIMC, mensaje: "Tienes Sobrepeso", color: UIColor.gray, imagen: UIImage(named: "sobrepeso")!)
        } else if valorIMC < 30.0{
            imc = IMC(valor: valorIMC, mensaje: "Tienes Obesidad", color: UIColor.black, imagen: UIImage(named: "obesidad")!)
        }
    }
    
    //Calcula el IMC
    func retornarValorStringIMC() -> String {
        let imcCon2Decimales = String(format: "%.2F", imc?.valor ?? 0.0)
        return imcCon2Decimales
    }
    
    func darAviso() -> String {
        return imc?.mensaje ?? "no hay mensaje"
    }
    
    func retornarColor() -> UIColor {
        return imc?.color ?? UIColor.blue
    }
    
    func retornarImagen() -> UIImage {
        return imc?.imagen ?? UIImage(named: "Problemas-Bajo-Peso")!
    }
    
}
