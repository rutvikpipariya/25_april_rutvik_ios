//
//  APIModel.swift
//  Project_Tops
//
//  Created by Rutvik Pipaliya on 19/01/24.
//

import Foundation
import CoreData
import UIKit

class DMLModel
{
    //let context=(UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    let context: NSManagedObjectContext

        init() {
            self.context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        }
    
    func savestudinfo(data: [String: Any]) {
        let savedata = NSEntityDescription.insertNewObject(forEntityName: "Studinfo", into: context) as! Studinfo
        savedata.name = data["name"] as? String
        savedata.sub = data["sub"] as? String
        savedata.city = data["city"] as? String

        try? context.save() // Add this line to save the changes
    }

    
    func showalldata()-> [Studinfo]
    {
        var data = [Studinfo]()
        let req = NSFetchRequest<NSFetchRequestResult>.init(entityName: "Studinfo")
        do
        {
            data = try! context.fetch(req) as! [Studinfo]
        }
        catch
        {
            print(error.localizedDescription)
        }
        return data
    }
    
    func deletedata(index:Int)->[Studinfo]
    {
        var stdata = showalldata()
        context.delete(stdata[index])
        stdata.remove(at: index)
        try? context.save()
        return stdata
    }
}


struct APIModel
{
    let name:String
    let capital:String
    let lat:Double
    let lng:Double
    let maps:String?
    let flags:String?
}

struct myData{
    
    let list:String

    let content:[String]
    
}
