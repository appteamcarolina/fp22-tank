//
//  GivenURLRequest.swift
//  tipsytracker
//
//  Created by Lauren Jones on 4/20/22.
//

import Foundation

enum NetworkError: String, Error {
    case invalidUrl = "Invalid URL."
    case failedRequest = "The network request failed."
    case missingData = "Did not receive expected data."
}

let headers = [
    "X-RapidAPI-Host": "the-cocktail-db.p.rapidapi.com",
    "X-RapidAPI-Key": "6340634b58msh128c05a8109ccbdp1019bbjsn5475e199fb07"
]

enum DrinkService {
    static func getDrinks(term: String, completion: @escaping (Result<[Drink], NetworkError>) -> Void) {
        let headers = [
            "X-RapidAPI-Host": "the-cocktail-db.p.rapidapi.com",
            "X-RapidAPI-Key": "6340634b58msh128c05a8109ccbdp1019bbjsn5475e199fb07"
        ]

        let request = NSMutableURLRequest(url: NSURL(string: "https://the-cocktail-db.p.rapidapi.com/filter.php?i=Gin")! as URL,
                    cachePolicy: .useProtocolCachePolicy,
                    timeoutInterval: 10.0)

        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers
        
        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
            guard error == nil, let data = data else {
                completion(.failure(.failedRequest))
                return
            }

            print(String(data: data, encoding: .utf8)!)
            
            do {
                let response = try JSONDecoder().decode(Response.self, from: data)
                completion(.success(response.drinks))
            } catch {
                print(String(describing: error))
                completion(.failure(.missingData))
            }

        })
        dataTask.resume()
    }
}
