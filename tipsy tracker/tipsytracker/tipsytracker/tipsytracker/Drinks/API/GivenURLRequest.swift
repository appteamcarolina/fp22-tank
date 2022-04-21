//
//  GivenURLRequest.swift
//  tipsytracker
//
//  Created by Lauren Jones on 4/20/22.
//

//import Foundation

//let headers = [
//    "X-RapidAPI-Host": "the-cocktail-db.p.rapidapi.com",
//    "X-RapidAPI-Key": "6340634b58msh128c05a8109ccbdp1019bbjsn5475e199fb07"
//]
//
//let request = NSMutableURLRequest(url: NSURL(string: "https://the-cocktail-db.p.rapidapi.com/filter.php?i=Gin")! as URL,
//                                        cachePolicy: .useProtocolCachePolicy,
//                                    timeoutInterval: 10.0)
//request.httpMethod = "GET"
//request.allHTTPHeaderFields = headers
//
//let session = URLSession.shared
//let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
//    if (error != nil) {
//        print(error)
//    } else {
//        let httpResponse = response as? HTTPURLResponse
//        print(httpResponse)
//    }
//})
//
//dataTask.resume()
