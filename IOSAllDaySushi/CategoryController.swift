//
//  CategoryController.swift
//  IOSAllDaySushi
//
//  Created by Student on 04/10/2019.
//  Copyright © 2019 Student. All rights reserved.
//

import UIKit

class CategoryController: UITableViewController {

 //   @IBOutlet weak var titleName: UILabel!
    let sushi = ["Nigiri", "Shasimi", "Uramaki", "Maki"]
    let descriptions = [
        "Nigiri is een sushi soort waarbij een stukje vis op een bedje van rijst wordt gelegd. De warmte van de rijst vult de koud vis aan.",
        "Sashimi is rauwe vis die zonder rijst wordt opgediend. De plakjes vis worden gegageerd met wat zeewier onder de vis. Geserveerd als setje van zes plakjes.",
        "Bij deze sushi wordt er meestal gebruik gemaakt van twee of meer soorten vullingen. Bij de Uramaki zitten de vulling En de zeeweer aan de binnenkant. Het is een maki die binnenstebuiten is gekeerd.",
        "De Maki wordt gemaakt van rijst en een vulling van vis, groente of ei en gerold in zeewier. De sushi-chef snijdt de rol vervolgens in vier of acht kleinere stukjes"]
    
    let catergoryImages = [UIImage(named: "nigiri-cat"),UIImage(named: "shasimi-cat"),UIImage(named: "maki-cat"),UIImage(named: "nigiri-cat")]
    
    let cellSpacingHeight : CGFloat = 5

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 220
    }

    // MARK: - Table view data source.

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return sushi.count
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = UIColor.clear
        return headerView
    }
    

    
    
   
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = tableView.dequeueReusableCell(withIdentifier: "NigiriCell", for: indexPath) as! SushiCell
        
//        cell.textLabel?.text = sushi[indexPath.item]
        cell.titleName?.text = sushi[indexPath.item]
        cell.desc?.text = descriptions[indexPath.item]
        cell.categoryImg?.image = self.catergoryImages[indexPath .row]
        cell.backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.9490196078, blue: 0.9490196078, alpha: 1)
        cell.clipsToBounds = true

        
          return cell

        // Configure the cell..
    }
}
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


