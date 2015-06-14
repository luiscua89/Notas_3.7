//
//  TaskManager.swift
//  MyTaskList
//
//  Created by Luis Cua Catzin on 12/06/15.
//  Copyright (c) 2015 Luis Cua Catzin. All rights reserved.
//

import UIKit

var taskMgr : TaskManager = TaskManager()

struct task {
    var name = "Sin nombre"
    var desc = "Sin descripcion"
}

class TaskManager: NSObject {
    var tasks = [task]()
    
    func addTask (name:String, desc: String){
        tasks.append(task(name: name, desc:desc))
    }
}

/*
var admin:administradorNotas = administradorNotas()

struct 	nota {
var nombre = "Por defecto"
var descripcion = "Por defecto"
}

class administradorNotas: NSObject {


var notas = [nota]()

func agregarNotas(nombre:String, descripcion:String)
{
notas.append(nota(nombre: nombre, descripcion: descripcion))
}
}
*/
