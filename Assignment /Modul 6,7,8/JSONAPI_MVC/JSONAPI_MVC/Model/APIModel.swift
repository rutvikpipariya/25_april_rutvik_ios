//
//  APIModel.swift
//  JSONAPI_MVC
//
//  Created by Rutvik Pipaliya on 20/09/23.
//

import Foundation


struct restModel:Decodable
{
    let name:String?
    let capital:String?
    let region:String?
    let subregion:String?
}
