//
//  PostData.swift
//  HackerNewsiOS-13-14
//
//  Created by Sonali Patel on 12/1/20.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
