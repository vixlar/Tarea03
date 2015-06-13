//
//  ViewController.swift
//  Tarea0309
//
//  Created by modelo on 11/06/15.
//  Copyright (c) 2015 modelo. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    
    @IBOutlet var txtUsuario: UITextField!
    @IBOutlet var txtPassword: UITextField!
    
    
    @IBAction func btnGrabar(sender: UIButton) {
        var appDel:AppDelegate = (UIApplication.sharedApplication().delegate as! AppDelegate)
        var context:NSManagedObjectContext = appDel.managedObjectContext!
        
        var nuevoUsuario = NSEntityDescription.insertNewObjectForEntityForName("Usuarios", inManagedObjectContext: context) as! NSManagedObject
        nuevoUsuario.setValue(txtUsuario.text, forKey: "usuario")
        nuevoUsuario.setValue(txtPassword.text, forKey: "password")
        
        context.save(nil)
        
        println(nuevoUsuario)
        println("Objeto grabado")
    }
    
    @IBAction func btnCargar(sender: UIButton) {
        var appDel:AppDelegate = (UIApplication.sharedApplication().delegate as! AppDelegate)
        var context:NSManagedObjectContext = appDel.managedObjectContext!
        
        var request = NSFetchRequest(entityName: "Usuarios")
        request.returnsObjectsAsFaults = false
        request.predicate = NSPredicate(format: "usuario = %@", txtUsuario.text)
        
        var results:NSArray = context.executeFetchRequest(request, error: nil)!
        
        if (results.count > 0) {
            var res = results[0] as! NSManagedObject
            txtUsuario.text = res.valueForKey("usuario") as! String
            txtPassword.text = res.valueForKey("password") as! String
        } else {
            println("0 resultados. Posible error")
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

