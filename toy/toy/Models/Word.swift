//
//  Astro.swift
//  toy
//
//  Created by Cherie Li on 10/20/18.
//  Copyright © 2018 Cherie Li. All rights reserved.
//

import UIKit

class Word: NSObject {
    struct WordCellInfo {
        let name : String!
        let meaning : UIImage!
        let potentialform : String!
        let teform : String!
    }
    
    static var count : Int = 0
    static var wordArr = [WordCellInfo]()
    
    class func addVerb(name : String!, meaning: UIImage,
                       potentialform: String!, teform: String!) -> Void {
        wordArr.append(WordCellInfo(name: name, meaning: meaning, potentialform: potentialform, teform: teform))
        count += 1
    }
    class func loadVerb(completion : @escaping (Array<Dictionary<String,String>>) -> Void)
        -> Void{
        let url = URL(string: "https://raw.githubusercontent.com/licherie/ios-appdev-Assignments/master/toy/Words.json")
        let session = URLSession(configuration: .default)
        var request = URLRequest(url :url!)
        request.httpMethod = "GET"
        let task = session.dataTask(with: request) { (data, response, error)
            in
            if (error != nil) {
                print("Cannot retrieve data")
                return
            }
            print("Got verbs")
            let result =
                try? JSONSerialization.jsonObject(with: data!, options: [])
                    as! Array<Dictionary<String,String>>
            completion(result!)

            }
        task.resume()
    }

}
