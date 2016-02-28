//
//  Problem.swift
//  Competitive-Programming-Appp
//
//  Created by Harun Gunaydin on 2/28/16.
//  Copyright © 2016 harungunaydin. All rights reserved.
//

import Foundation

class Problem {
    
    var objectId: String!
    var name: String!
    var url: String!
    var tags = [String]()
    var contestId: String!
    var solutionUrl: String!
    var difficulty: Int16!
    var rating: Double!
    var websiteId: String!
    
    init() {
        objectId = ""
        name = ""
        url = ""
        tags = [String]()
        contestId = ""
        solutionUrl = ""
        difficulty = -1
        rating = -1
        websiteId = ""
    }
    
    init( id: String, name: String, url: String, tags: [String], contestId: String, solutionUrl: String, websiteId: String, difficulty: Int16, rating: Double ){
        
        self.objectId = id
        self.name = name
        self.url = url
        self.tags = tags
        self.contestId = contestId
        self.solutionUrl = solutionUrl
        self.websiteId = websiteId
        self.difficulty = difficulty
        self.rating = rating
        
    }
    
}