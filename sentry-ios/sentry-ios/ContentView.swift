//
//  ContentView.swift
//  sentry-ios
//
//  Created by Yuhang on 2024/12/15.
//

import SwiftUI
import Sentry

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Button("Request") {
                sendRequest()
            }
        }
        .padding()
    }
    func sendRequest() {
        let url = URL(string: "http://localhost:3000/")!
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        // 如果需要设置请求头
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            print(data, response, error)
        }
        task.resume()
    }
}
