//
//  Modelo.swift
//  UAdivino_MVP
//
//  Created by Otto Colomina Pardo on 10/2/17.
//  Copyright © 2017 Universidad de Alicante. All rights reserved.
//

import Foundation


struct Respuesta {
    var texto: String
    var ok: Bool
}

class UAdivino : ModelProtocol {
    let nombre : String
    let respuestas = [
        Respuesta(texto: "Si", ok: true),
        Respuesta(texto: "No", ok: false),
        Respuesta(texto: "Ni de coña", ok: false),
        Respuesta(texto: "¡Claro que sí!", ok: true)
    ]
    
    func obtenerRespuesta() -> Respuesta {
        let indice = Int(arc4random_uniform(UInt32(respuestas.count)));
        return respuestas[indice];
    }
    
    init(nombre: String) {
        self.nombre = nombre;
    }
}
