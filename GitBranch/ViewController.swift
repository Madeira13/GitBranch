//
//  ViewController.swift
//  GitBranch
//
//  Created by Swift on 15/01/2018.
//  Copyright © 2018 Swift. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelMensagem: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Exibir msg na label
        labelMensagem.text = mensage()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    //MARK: Methods
    func mensage() -> String {
        
        //resgatar hora atual
        let agora = Date()
        
        //Criar as datas de comparação
        guard let meioDia = Calendar.current.date(bySettingHour: 12, minute: 00, second: 00, of: agora) else { return "" }
        
        guard let seisHoras = Calendar.current.date(bySettingHour: 18, minute: 00, second: 00, of: agora) else { return "" }
        
        //Comparações para definir mensagem
        if agora >= meioDia && agora <= seisHoras {
            return "Boa Tarde.."
        } else if agora >= seisHoras {
            return "Boa Noite..."
        } else {
            return "Bom Dia..."
        }
    }
    
}

