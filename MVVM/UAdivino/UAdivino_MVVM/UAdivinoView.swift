//
//  UAdivinoView.swift
//  UAdivino_MVVM
//
//  Created by Otto Colomina Pardo on 11/2/17.
//  Copyright © 2017 Universidad de Alicante. All rights reserved.
//

import Foundation
import UIKit
import Bond


class UAdivinoView : UIViewController {
    @IBOutlet weak var labelRespuesta: UILabel!
    
    
    let viewModel = UAdivinoViewModel()
    
    override func viewDidLoad() {
        self.bindViewModel()
    }
    
    @IBAction func botonPulsado(_ sender: AnyObject) {
       self.viewModel.solicitarRespuesta()
    }
 
    func bindViewModel() {
        //conectamos viewModel.textoResp -> texto del label
        viewModel.textoResp.bind(to: self.labelRespuesta.reactive.text)
        //conectamos viewModel.colorResp -> color del label
        viewModel.colorResp
            .map {
                color in
                return (color == .verde ? UIColor.green : UIColor.red)
            }
            .bind(to: self.labelRespuesta.reactive.textColor)
    }
}
