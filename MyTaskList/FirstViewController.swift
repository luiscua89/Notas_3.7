//
//  FirstViewController.swift
//  MyTaskList
//
//  Created by Luis Cua Catzin on 12/06/15.
//  Copyright (c) 2015 Luis Cua Catzin. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tblTasks: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Regresar ala vista principal
    override func viewWillAppear(animated: Bool) {
        tblTasks.reloadData()
    }
    
    
    //Para eliminar elementos
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath)
    {
        if(editingStyle == UITableViewCellEditingStyle.Delete)
        {
            taskMgr.tasks.removeAtIndex(indexPath.row)
            tblTasks.reloadData()
        }
    }
    

    //UITableViewDataSource
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return taskMgr.tasks.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell: UITableViewCell = UITableViewCell (style: UITableViewCellStyle.Subtitle, reuseIdentifier: "test")
        
        cell.textLabel?.text = taskMgr.tasks[indexPath.row].name
        cell.detailTextLabel?.text  = taskMgr.tasks[indexPath.row].desc
        return cell
    }

}


/*
func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
let cell:UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "prueba")

cell.textLabel?.text = admin.notas[indexPath.row].nombre
cell.detailTextLabel?.text = admin.notas[indexPath.row].descripcion

return cell
*/
