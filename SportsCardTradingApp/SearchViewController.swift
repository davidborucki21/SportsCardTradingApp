//
//  SearchViewController.swift
//  SportsCardTradingApp
//
//  Created by Tiger Coder on 4/14/21.
//

import UIKit

class SearchViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate {
 
    @IBOutlet weak var tableOutlet: UITableView!
    @IBOutlet weak var textFieldOutlet: UITextField!
    
    var data = [String]()
    var filteredData = [String]()
    var filtered = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupData()
        tableOutlet.delegate = self
        tableOutlet.dataSource = self
        textFieldOutlet.delegate = self
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        if let text = textField.text {
            filterText(text+string)
        print("text \(text)")
        print("string \(string)")
        print("range \(range)")
        print("upperbound \(range.upperBound)")
        print("lowerbound \(range.lowerBound)")
        //if the string is empty, that means that a character has been deleted, the range seems like it takes the position where it is from, and if it is 0 it appends to the total string and if it is one or more, it deletes that many characters from that range
            
        }
        return true
    }
    
    @IBAction func textFieldAction(_ sender: UITextField) {
    
    }
    
    
    func filterText(_ query: String) {
        filteredData.removeAll()
        for string in data {
            if string.lowercased().starts(with: query.lowercased()) {
                filteredData.append(string)
            }
        }
        tableOutlet.reloadData()
        filtered = true
    }
    
    private func setupData() {
        data.append("LeBron James")
        data.append("Luka Doncic")
        data.append("Stephen Curry")
        data.append("Kevin Durant")
        data.append("Jayson Tatum")
        data.append("Giannis Antetokounmpo")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if !filteredData.isEmpty {
            return filteredData.count
        }
        return filtered ? 0 : data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        
//        if (indexPath.row % 2 == 0) {
//            cell.backgroundColor = UIColor(red: 12, green: 31, blue: 65, alpha: 1)
//        } else {
//            cell.backgroundColor = UIColor(red: 23, green: 50, blue: 61, alpha: 1)
//        }
        
        if !filteredData.isEmpty {
            cell.textLabel?.text = filteredData[indexPath.row]

        } else {
            cell.textLabel?.text = data[indexPath.row]

        }
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedCell = tableView.cellForRow(at: indexPath)
        
        if (selectedCell?.textLabel!.text == "LeBron James") {
        ViewController.athlete = Card(inName: "LeBron James", inPrice: 100.00, inPoints: 25.4, inRebounds: 7.9, inAssists: 7.9, inPicture: UIImage(named: "LebronJamesCard")!)
        performSegue(withIdentifier: "toPlayerViewController", sender: nil)
        }
        
        if (selectedCell?.textLabel!.text == "Luka Doncic") {
        ViewController.athlete = Card(inName: "Luka Doncic", inPrice: 7.50, inPoints: 28.6, inRebounds: 8.0, inAssists: 8.6, inPicture: UIImage(named: "LukaDoncicCard")!)
        performSegue(withIdentifier: "toPlayerViewController", sender: nil)
        }
        
        if (selectedCell?.textLabel!.text == "Stephen Curry") {
        ViewController.athlete = Card(inName: "Stephen Curry", inPrice: 40.50, inPoints: 30.4, inRebounds: 5.5, inAssists: 5.9, inPicture: UIImage(named: "StephenCurryCard")!)
        performSegue(withIdentifier: "toPlayerViewController", sender: nil)
        }
        
        if (selectedCell?.textLabel!.text == "Kevin Durant") {
            ViewController.athlete = Card(inName: "Kevin Durant", inPrice: 15.00, inPoints: 28.2, inRebounds: 7.1, inAssists: 5.2, inPicture: UIImage(named:"KevinDurantCard")!)
            performSegue(withIdentifier: "toPlayerViewController", sender: nil)
        }
        
        if (selectedCell?.textLabel!.text == "Jayson Tatum") {
            ViewController.athlete = Card(inName: "Jayson Tatum", inPrice: 5.00, inPoints: 25.9, inRebounds: 7.1, inAssists: 4.2, inPicture: UIImage(named: "JaysonTatumCard")!)
            performSegue(withIdentifier: "toPlayerViewController", sender: nil)
        }
        
        if (selectedCell?.textLabel!.text == "Giannis Antetokounmpo") {
            ViewController.athlete = Card(inName: "Giannis Antetokounmpo", inPrice: 13.00, inPoints: 28.8, inRebounds: 11.4, inAssists: 6.2, inPicture: UIImage(named: "GiannisCard")!)
            performSegue(withIdentifier: "toPlayerViewController", sender: nil)
        }
    }

}
