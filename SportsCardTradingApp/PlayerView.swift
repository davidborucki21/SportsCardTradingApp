//
//  PlayerView.swift
//  SportsCardTradingApp
//
//  Created by Tiger Coder on 4/12/21.
//

import UIKit

class PlayerView: UIViewController {
    
    @IBOutlet weak var nameOutlet: UILabel!
    @IBOutlet weak var pointsOutlet: UILabel!
    @IBOutlet weak var reboundsOutlet: UILabel!
    @IBOutlet weak var assistsOutlet: UILabel!
    @IBOutlet weak var cardOutlet: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameOutlet.text = ViewController.athlete?.getName()
        pointsOutlet.text = String(ViewController.athlete!.getPoints())
        reboundsOutlet.text = String(ViewController.athlete!.getRebounds())
        assistsOutlet.text = String(ViewController.athlete!.getAssists())
        cardOutlet.image = ViewController.athlete?.getPicture()
        // Do any additional setup after loading the view.
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
