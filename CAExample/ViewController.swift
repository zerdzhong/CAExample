//
//  ViewController.swift
//  CAExample
//
//  Created by zhongzhendong on 4/12/16.
//  Copyright © 2016 zhongzhendong. All rights reserved.
//

import UIKit

enum AnimationType: String {
    case Keyframe = "帧动画"
}

class ViewController: UITableViewController {
    
    var listDataSource: Array<AnimationType>!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        listDataSource = [.Keyframe]
        self.tableView.tableFooterView = UIView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let detailVC = segue.destinationViewController as! DetailViewController
        let cell = sender as! UITableViewCell
        
        let indexPath = tableView.indexPathForCell(cell)
        
        detailVC.animationType = listDataSource[indexPath!.row]
    }
    
}

extension ViewController {
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listDataSource.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ListCell")
        cell?.textLabel?.text = listDataSource[indexPath.row].rawValue
        return cell!
    }
}

