import UIKit
import CoreData

class ViewController: UIViewController {
    
    
    @IBOutlet var txtUsario: UITextField!
    @IBOutlet var txtPassword: UITextField!
    
    
    @IBAction func btnGrabar(sender: UIButton) {
        
        let appDel:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let context:NSManagedObjectContext = appDel.managedObjectContext!
        
        let ent = NSEntityDescription.entityForName("Usuarios", inManagedObjectContext: context)
        
        var nuevoUsuario = Usuarios (entity: ent!, insertIntoManagedObjectContext: context)
        
        nuevoUsuario.usuario = txtUsario.text
        nuevoUsuario.password = txtPassword.text
        
        context.save(nil)
        
        println(nuevoUsuario)
        println("Objeto Salvado")
    }
    
    
    @IBAction func btnCargar(sender: UIButton) {
        
        let appDel:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let context:NSManagedObjectContext = appDel.managedObjectContext!
        
        let request = NSFetchRequest(entityName: "Usuarios")
        request.returnsObjectsAsFaults = false
        request.predicate = NSPredicate(format: "usuario = %@", txtUsario.text)
        
        var resultado:NSArray = context.executeFetchRequest(request, error: nil)!
        
        if resultado.count > 0 {
            for usuario in resultado {
                var esteUsuario = usuario as! Usuarios
                println(esteUsuario.toString())
                esteUsuario.addFunnyPrefix("Jojo-")
                println(esteUsuario.toString())
            }
            
            println("\(resultado.count) resultados encontrados")
            
        } else {
            println("No se encontraron resultados")
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

