//
//  TabView.swift
//  Chat Dooms
//
//  Created by Adib Anwar on 19/4/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ChatView()
                .tabItem {
                    Image(systemName: "bubble.left.and.bubble.right.fill")
                    Text("Chat")
                }
            ServerView()
                .tabItem {
                    Image(systemName: "server.rack.fill")
                    Text("Server")
                }
            SOSModeView()
                .tabItem {
                    Image(systemName: "exclamationmark.circle.fill")
                    Text("SOS")
                }
        }
        .accentColor(.white)  // For consistent theme across the app
        .background(Color.black)
        .edgesIgnoringSafeArea(.all)
    }
}
#Preview {
    ContentView()
}
