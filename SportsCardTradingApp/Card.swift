//
//  Card.swift
//  SportsCardTradingApp
//
//  Created by Tiger Coder on 4/14/21.
//

import UIKit

public class Card {
    
    var name: String
    var price: Double
    var points: Double
    var rebounds : Double
    var assists : Double
    var picture : UIImage
    
    init(inName : String, inPrice : Double,inPoints : Double,inRebounds : Double,inAssists : Double, inPicture : UIImage) {
        name = inName
        price = inPrice
        points = inPoints
        rebounds = inRebounds
        assists = inAssists
        picture = inPicture
    }
    
    func getName() -> String {
    return name
    }
    
    func getPrice() -> Double {
    return price
    }
    
    func getPoints() -> Double {
    return points
    }
    
    func getRebounds() -> Double {
    return rebounds
    }
    
    func getAssists() -> Double {
    return assists
    }
    
    func getPicture() -> UIImage {
    return picture
    }
}
