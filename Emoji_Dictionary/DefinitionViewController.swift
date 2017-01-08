//
//  DefinitionViewController.swift
//  Emoji_Dictionary
//
//  Created by Jose Delgado on 1/8/17.
//  Copyright © 2017 Jose Delgado. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = "NO EMOJI"


    override func viewDidLoad() {
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        if emoji == "😎" {
            definitionLabel.text = "A Cool Muthafucka!"
        }
        if emoji == "🌪" {
            definitionLabel.text = "Run, Bitch!"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
