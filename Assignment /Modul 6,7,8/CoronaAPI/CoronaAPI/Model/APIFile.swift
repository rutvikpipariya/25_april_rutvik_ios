//
//  APIFile.swift
//  CoronaAPI
//
//  Created by Rutvik Pipaliya on 22/09/23.
//

import Foundation

struct NewData: Decodable {
    
    var statewise: [APIModel]?=[]
    
}

struct APIModel:Decodable
{
    let state:String?
    let statecode:String?
    let lastupdatedtime:String?
    let active:String?
    let confirmed:String?
    let deaths:String?
    let recovered:String?

}


