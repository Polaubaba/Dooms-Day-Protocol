//
//  ServerView.swift
//  Chat Dooms
//
//  Created by Adib Anwar on 19/4/25.
//
import SwiftUI

struct ServerView: View {
    @State private var servers = ["chat.polau.win", "server2.example.com"]
    @State private var newServer = ""
    @State private var selectedServer: String?

    var body: some View {
        VStack {
            Text("Select Server")
                .font(.title)
                .foregroundColor(.white)
                .padding()

            List(servers, id: \.self, selection: $selectedServer) { server in
                Text(server)
                    .foregroundColor(.white)
                    .padding()
                    .background(selectedServer == server ? Color.gray : Color.clear)
                    .cornerRadius(8)
            }

            HStack {
                TextField("Add New Server", text: $newServer)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .foregroundColor(.white)
                    .background(Color.gray.opacity(0.3))
                    .cornerRadius(8)
                    .padding()

                Button("Add") {
                    if !newServer.isEmpty {
                        servers.append(newServer)
                        newServer = ""
                    }
                }
                .foregroundColor(.white)
                .padding()
                .background(Color.green)
                .cornerRadius(8)
            }
            .padding()
        }
        .background(Color.black)
        .edgesIgnoringSafeArea(.all)
    }
}

