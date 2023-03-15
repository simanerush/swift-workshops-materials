//
//  ContentView.swift
//  ReedSocial
//
//  Created by Sima Nerush on 3/15/23.
//

import SwiftUI

struct ProfileView: View {
  @State private var image = Image(systemName: "person")
  @State private var text = "Sima Nerush"
  
  var body: some View {
    NavigationStack {
      VStack {
        NavigationLink {
          ProfileDetailView(text: $text)
        } label: {
          HStack {
            image
            Text(text)
          }
        }
        .buttonStyle(.bordered)
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ProfileView()
  }
}
