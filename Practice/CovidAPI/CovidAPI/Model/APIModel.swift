//
//  APIModel.swift
//  CovidAPI
//
//  Created by Rutvik Pipaliya on 22/09/23.
//

import Foundation


struct APIModel:Decodable
{
    let active:String?
    let state:String?
    let statecode:String?
}
