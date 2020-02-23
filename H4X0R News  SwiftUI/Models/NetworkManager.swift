//
//  NetworkManager.swift
//  H4X0R News  SwiftUI
//
//  Created by 🧔🏻Alikhan Batchaev on 22.02.2020.
//  Copyright © 2020 Alikhan Batchaev. All rights reserved.
//

import Foundation

class  NetworkManager: ObservableObject {
    
    @Published var post = [Post]()
    
    func fetchData() {
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            let results = try decoder.decode(Results.self, from: safeData)
                            DispatchQueue.main.async {
                                self.post = results.hits
                            }
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
