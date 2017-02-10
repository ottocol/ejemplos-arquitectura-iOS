//
//  Presenter.swift
//  UAdivino_MVP
//
//  Created by Otto Colomina Pardo on 10/2/17.
//  Copyright © 2017 Universidad de Alicante. All rights reserved.
//

import Foundation

enum ColorRespuesta {
  case verde
  case rojo
}


class UAdivinoPresenter : PresenterProtocol {
    var modelo : ModelProtocol!
    var vista: ViewProtocol!
    
    init(vista : ViewProtocol) {
        self.vista = vista
        self.modelo = UAdivino(nombre:"Rappel")
    }
    
    func solicitarRespuesta() {
        let respuesta = self.modelo.obtenerRespuesta()
        let colorUI = respuesta.ok ? ColorRespuesta.verde : ColorRespuesta.rojo
        self.vista.mostrarRespuesta(texto: respuesta.texto, color: colorUI)
    }
}
