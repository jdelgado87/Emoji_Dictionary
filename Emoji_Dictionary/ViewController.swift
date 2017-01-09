//
//  ViewController.swift
//  Emoji_Dictionary
//
//  Created by Jose Delgado on 1/8/17.
//  Copyright © 2017 Jose Delgado. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var dacooltableview: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        dacooltableview.dataSource = self
        dacooltableview.delegate = self
        emojis = makeEmojiArray()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
            cell.textLabel?.text = emoji.stringEmoji
            return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        tableView.deselectRow(at: indexPath, animated: true)
    let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
        
    }
    
    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😎"
        emoji1.birthYear = 2010
        emoji1.category = "Cool Mofos"
        emoji1.definition = "A Cool Muthafucka!"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "💩"
        emoji2.birthYear = 2017
        emoji2.category = "Cool Shit"
        emoji2.definition = "Crappy Crap!"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "👽"
        emoji3.birthYear = 2010
        emoji3.category = "UFOs"
        emoji3.definition = "Take Me To Your Bitch!"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "🖕🏼"
        emoji4.birthYear = 2010
        emoji4.category = "Nice Things"
        emoji4.definition = "Fuck Off!"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🐶"
        emoji5.birthYear = 2010
        emoji5.category = "Bark Bark"
        emoji5.definition = "Gordo!"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "🌨"
        emoji6.birthYear = 2010
        emoji6.category = "Natural Distasters"
        emoji6.definition = "Get Yo Ass Back Inside!"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

