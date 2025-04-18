//
//  ChatView.swift
//  Chat Dooms
//
//  Created by Adib Anwar on 19/4/25.
//
import SwiftUI

struct ChatView: View {
    @State private var message = ""
    @State private var messages: [String] = []
    @State private var selectedServer: String? = "chat.polau.win"

    var body: some View {
        VStack {
            Text("Chat with \(selectedServer ?? "Server")")
                .font(.headline)
                .foregroundColor(.white)
                .padding()

            ScrollView {
                ForEach(messages, id: \.self) { msg in
                    Text(msg)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.gray.opacity(0.5))
                        .cornerRadius(8)
                        .padding(2)
                }
            }

            HStack {
                TextField("Type a message", text: $message)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .foregroundColor(.white)
                    .background(Color.gray.opacity(0.3))
                    .cornerRadius(8)
                    .padding()

                Button("Send") {
                    sendMessage()
                }
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
                .cornerRadius(8)
            }
            .padding()
        }
        .background(Color.black)
        .edgesIgnoringSafeArea(.all)
    }

    func sendMessage() {
        guard let server = selectedServer else { return }
        let msg = message.trimmingCharacters(in: .whitespaces)
        if !msg.isEmpty {
            messages.append("Me: \(msg)")
            message = ""
            // Send the message to the server (WebSocket/UDP connection)
            // Simulate sending the message for now
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                messages.append("\(server): Response to '\(msg)'")
            }
        }
    }
}

