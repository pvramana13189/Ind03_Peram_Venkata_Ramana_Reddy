//
//  TableViewController.swift
//  Ind03_Peram_Venkata_Ramana_Reddy
//
//  Created by OSU APP CENTER on 3/31/24.
//

import UIKit

class TableViewController: UITableViewController {

    let myDataSource: [(String, String, String)] =
    [
        (stateName: "Alabama", nickName: "Yellowhammer State", stateArea: "52,420"),
        (stateName: "Alaska", nickName: "The Last Frontier", stateArea: "665,384"),
        (stateName: "Arizona", nickName: "The Grand Canyon State", stateArea: "113,990"),
        (stateName: "Arkansas", nickName: "The Natural State", stateArea: "53,179"),
        (stateName: "California", nickName: "The Golden State", stateArea: "163,695"),
        (stateName: "Colorado", nickName: "The Contennial State", stateArea: "104,094"),
        (stateName: "Connecticut", nickName: "The Constitution State", stateArea: "5,543"),
        (stateName: "Delaware", nickName: "The First State", stateArea: "2,489"),
        (stateName: "Florida", nickName: "The Sunshine State", stateArea: "65,758"),
        (stateName: "Georgia", nickName: "The Peach State", stateArea: "59,425"),
        (stateName: "Hawaii", nickName: "The Aloha State", stateArea: "10,932"),
        (stateName: "Idaho", nickName: "The Gem State", stateArea: "83,569"),
        (stateName: "Illinois", nickName: "Prairie State", stateArea: "57,914"),
        (stateName: "Indiana", nickName: "The Hoosier State", stateArea: "36,420"),
        (stateName: "Iowa", nickName: "The Hawkeye State", stateArea: "56,273"),
        (stateName: "Kansas", nickName: "The Sunflower State", stateArea: "82,278"),
        (stateName: "Kentucky", nickName: "The Bluegrass State", stateArea: "40,408"),
        (stateName: "Louisiana", nickName: "The Pelican State", stateArea: "52,378"),
        (stateName: "Maine", nickName: "The Pine Tree State", stateArea: "35,380"),
        (stateName: "Maryland", nickName: "The Old Line State", stateArea: "12,406"),
        (stateName: "Massachusetts", nickName: "The Bay State", stateArea: "10,554"),
        (stateName: "Michigan", nickName: "The Great Lakes State", stateArea: "96,714"),
        (stateName: "Minnesota", nickName: "The North Star State", stateArea: "86,936"),
        (stateName: "Mississippi", nickName: "The Magnolia State", stateArea: "48,432"),
        (stateName: "Missouri", nickName: "The Show Me State", stateArea: "69,707"),
        (stateName: "Montana", nickName: "The Treasure State", stateArea: "147,040"),
        (stateName: "Nebraska", nickName: "The Cornhusker State", stateArea: "77,348"),
        (stateName: "Nevada", nickName: "The Silver State", stateArea: "110,572"),
        (stateName: "New Hampshire", nickName: "The Granite State", stateArea: "9,349"),
        (stateName: "New Jersey", nickName: "The Garden State", stateArea: "8,723"),
        (stateName: "New Mexico", nickName: "The Land of Enchantment", stateArea: "121,590"),
        (stateName: "New York", nickName: "The Empire State", stateArea: "54,555"),
        (stateName: "North Carolina", nickName: "The Tar Heel State", stateArea: "53,819"),
        (stateName: "North Dakota", nickName: "The Peace Garden State", stateArea: "70,698"),
        (stateName: "Ohio", nickName: "The Buckeye State", stateArea: "44,826"),
        (stateName: "Oklahoma", nickName: "The Sooner State", stateArea: "69,899"),
        (stateName: "Oregon", nickName: "The Beaver State", stateArea: "98,379"),
        (stateName: "Pennsylvania", nickName: "The Keystone State", stateArea: "46,054"),
        (stateName: "Rhode Island", nickName: "The Ocean State", stateArea: "1,545"),
        (stateName: "South Carolina", nickName: "The Palmetto State", stateArea: "32,020"),
        (stateName: "South Dakota", nickName: "Mount Rushmore State", stateArea: "77,116"),
        (stateName: "Tennessee", nickName: "The Volunteer State", stateArea: "42,144"),
        (stateName: "Texas", nickName: "The Lone Star State", stateArea: "268,596"),
        (stateName: "Utah", nickName: "The Beehive State", stateArea: "84,897"),
        (stateName: "Vermont", nickName: "The Green Mountain State", stateArea: "9,616"),
        (stateName: "Virginia", nickName: "The Old Dominion State", stateArea: "42,775"),
        (stateName: "Washington", nickName: "The Evergreen State", stateArea: "71,298"),
        (stateName: "West Virginia", nickName: "The Mountain State", stateArea: "24,230"),
        (stateName: "Wisconsin", nickName: "The Badger State", stateArea: "65,496"),
        (stateName: "Wyoming", nickName: "The Equality or Cowboy State", stateArea: "97,813")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return myDataSource.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "My Table Cell", for: indexPath)

     // Get the data for this cell from the array.
     let cellData: (stateName: String, nickName: String, stateArea: String) = myDataSource[indexPath[0]]
     
     // Configure the cell...
     cell.textLabel?.text = cellData.stateName
     cell.detailTextLabel?.text = cellData.nickName

        return cell
    }
    
    //make the navigation bar appear in other screen and disappear in the main screen
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    //make the navigation bar disappear in main screen and appear in other screen
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        let indexPath = tableView.indexPathForSelectedRow!
        let main = segue.destination as! ViewController
        main.stateName = myDataSource[indexPath[0]].0
        main.stateArea = myDataSource[indexPath[0]].2
        main.stateFlag = UIImage(named: main.stateName + "-flag.png")!
        main.stateMap = UIImage(named: main.stateName + "-map.png")!
    }
    

}
