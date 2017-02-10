//
//  View.swift
//  UAdivino_MVP
//
//  Created by Otto Colomina Pardo on 10/2/17.
//  Copyright © 2017 Universidad de Alicante. All rights reserved.
//

import Foundation
import UIKit

class UAdivinoView : UIViewController, ViewProtocol {
    var presenter : PresenterProtocol!
    @IBOutlet weak var textoRespuesta: UILabel!
    
    override func viewDidLoad() {
        self.presenter = UAdivinoPresenter(vista:self)
    }
    
    @IBAction func botonPulsado(_ sender: AnyObject) {
        self.presenter.solicitarRespuesta()
    }
    
    func mostrarRespuesta(texto: String, color : ColorRespuesta) {
        let colorUI = (color == .rojo ? UIColor.red : UIColor.green)
        self.textoRespuesta.textColor = colorUI
        self.textoRespuesta.text = texto
    }
    
    
}
