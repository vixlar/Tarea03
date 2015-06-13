import UIKit
import CoreData

@objc (Usuarios)
class Usuarios: NSManagedObject {
   
    @NSManaged var usuario:String
    @NSManaged var password:String
    
    func toString() -> String{
        return "El usuario se llama \(usuario) y su clave de acceso es \(password)"
    }
    
    func addFunnyPrefix(prefix: String){
        usuario = "\(prefix)\(usuario)"
    }
    
    func validatePassword (inputPassword: String) -> Bool {
        if inputPassword == password {
            return true
        } else {
            return false
        }
    }
}
