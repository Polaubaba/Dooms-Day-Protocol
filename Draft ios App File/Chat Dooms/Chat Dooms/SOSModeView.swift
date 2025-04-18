//
//  SOSModeView.swift
//  Chat Dooms
//
//  Created by Adib Anwar on 19/4/25.
//

import SwiftUI

struct SOSModeView: View {
    @State private var servers = ["chat.polau.win", "server2.example.com"]
    @State private var isEmergencySent = false

    var body: some View {
        VStack {
            Text("SOS Mode")
                .font(.title)
                .foregroundColor(.white)
                .padding()

            Button(action: sendSOS) {
                Text("Send Emergency SOS")
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding()
                    .frame(width: 300, height: 60)
                    .background(Color.red)
                    .cornerRadius(12)
                    .shadow(radius: 10)
            }

            if isEmergencySent {
                Text("Emergency SOS Sent!")
                    .foregroundColor(.green)
                    .padding()
            }
        }
        .background(Color.black)
        .edgesIgnoringSafeArea(.all)
    }

    func sendSOS() {
        isEmergencySent = true
        // Simulate sending the emergency text to all known servers
        for server in servers {
            print("Sending SOS to \(server)")
        }
        // Here you could implement actual logic to send the message to each server
    }
}
