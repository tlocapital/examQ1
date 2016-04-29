//
//  FirstTableVC.swift
//  ExamQ
//
//  Created by Ted on 4/29/16.
//  Copyright © 2016 Ted.Company. All rights reserved.
//

import UIKit
import Firebase
import Alamofire
import SDWebImage
import SwiftyJSON

var fullData: JSON?

class FirstTableVC: UITableViewController {

    
    let myFirebaseRef = Firebase(url: "https://bookstoreexam.firebaseio.com/")
    var rowOfData = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        reset firebase
//        FireFire.init()
        
//        and why doesn't below work?
//        print (returnRow.valueForKey("creatAt"))
        

        
        myFirebaseRef.observeEventType(.Value, withBlock: { snapshot in
            fullData = JSON(snapshot.value)
            self.rowOfData = fullData!.count
            print(fullData!["books"]["creatAt"])
            
            
            self.tableView.reloadData()
            }, withCancelBlock: { error in
                print(error.description)
        })
        
        
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return rowOfData
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell_ID", forIndexPath: indexPath) as! firstTableViewCell

        // Configure the cell...
        let stNum = String(indexPath.row)
        print(indexPath.row)
        
        cell.bookNameLabel.text = "書名 : \(fullData!["books\(stNum)"]["title"].string!)"
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "segToDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationController = segue.destinationViewController as! DetailViewC
                destinationController.passedRow = indexPath.row
            }
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
 

}
