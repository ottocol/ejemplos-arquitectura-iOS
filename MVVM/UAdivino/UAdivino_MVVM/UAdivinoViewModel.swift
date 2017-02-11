//
//  UAdivinoViewModel.swift
//  UAdivino_MVVM
//
//  Created by Otto Colomina Pardo on 11/2/17.
//  Copyright © 2017 Universidad de Alicante. All rights reserved.
//

import Foundation
import Bond

enum ColorRespuesta {
    case verde
    case rojo
}


class UAdivinoViewModel {
    let model = UAdivinoModel(nombre: "Rappel")
    let textoResp = Observable<String>("")
    let colorResp = Observable<ColorRespuesta>(.verde)
    
    func solicitarRespuesta() {
        let resp = model.obtenerRespuesta()
        textoResp.value = resp.texto
        colorResp.value = resp.ok ? .verde : .rojo
    }
    
}
