//
//  DetailViewC.swift
//  ExamQ
//
//  Created by Ted on 4/29/16.
//  Copyright © 2016 Ted.Company. All rights reserved.
//

import UIKit

class DetailViewC: UIViewController {

    @IBOutlet weak var bookNameLabel: UILabel!
    @IBOutlet weak var addLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var urlLabel: UILabel!
    @IBOutlet weak var reviewLabel: UILabel!
    var passedRow = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bookNameLabel.text = fullData!["books\(passedRow)"]["title"].string
        addLabel.text = fullData!["books\(passedRow)"]["address"].string
        phoneLabel.text = fullData!["books\(passedRow)"]["phone"].string
        urlLabel.text = fullData!["books\(passedRow)"]["website"].string
        reviewLabel.text = fullData!["books\(passedRow)"]["bookreview"].string
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
