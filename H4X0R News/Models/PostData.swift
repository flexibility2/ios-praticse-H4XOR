//
//  PostData.swift
//  H4X0R News
//
//  Created by xt w on 2024/8/31.
//

import Foundation

struct Results: Decodable{
    let hits: [Post]		
}

struct Post: Decodable, Identifiable{
    var id : String{
        return objectID
    }	
    let objectID: String
    let points: Int
    let title: String
    let 	url: String?
}
struct Title: Decodable{
    let value: String
}
struct Url: Decodable{
    let value: String
}
