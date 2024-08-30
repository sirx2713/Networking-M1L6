//
//  ContentView.swift
//  Networking M1L6
//
//  Created by Chris Ching on 2023-08-03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .onAppear {
            
            Task {
                await apiCall()
            }
            
        }
    }
    
    func apiCall() async {
        
        // 1. URL
        if let url = URL(string: "https://api.pexels.com/v1/search?query=nature&per_page=1") {
            
            // 2. URLRequest
            var request = URLRequest(url: url)
            request.addValue("cLrF4BrCSWCD9L6lVPjJB9JW9UZ0HBXCx4IaMLfI7S5l81jjWBgW5bg2", forHTTPHeaderField: "Authorization")
            
            // 3. URLSession
            do {
                let (data, response) = try await URLSession.shared.data(for: request)
                
                print(data)
                print(response)
            }
            catch {
                print(error)
            }
            
        }
        
        
    }
}

