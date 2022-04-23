//
////  URLRequest.swift
////  tipsytracker
////
////  Created by Lauren Jones on 4/20/22.
//
//
//import Foundation
//
//enum NetworkError: String, Error {
//    case invalidUrl = "Invalid URL."
//    case failedRequest = "The network request failed."
//    case missingData = "Did not receive expected data."
//}
//
//enum DrinkService {
//    static func getDrinks(term: String, completion: @escaping (Result<[Drink], NetworkError>) -> Void) {
//        let baseUrl = "the-cocktail-db.p.rapidapi.com"
//        let components = URLComponents(string: baseUrl)
//
//        guard let url = components?.url else {
//            completion(.failure(.invalidUrl))
//            return
//        }
//
//        var request = URLRequest(url: url)
//        request.httpMethod = "GET"
//        request.setValue("Bearer \(APILink.drinksAPIKey)", forHTTPHeaderField: "Authorization")
//
//        URLSession.shared.dataTask(with: request) { data, response, error in
//            guard error == nil, let data = data else {
//                completion(.failure(.failedRequest))
//                return
//            }
//
//            print(String(data: data, encoding: .utf8)!)
//            
//            do {
//                let response = try JSONDecoder().decode(Response.self, from: data)
//                completion(.success(response.drinks))
//            } catch {
//                print(String(describing: error))
//                completion(.failure(.missingData))
//            }
//
//        }.resume()
//    }
//}
