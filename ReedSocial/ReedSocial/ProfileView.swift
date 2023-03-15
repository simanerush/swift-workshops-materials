//
//  ContentView.swift
//  ReedSocial
//
//  Created by Sima Nerush on 3/15/23.
//

import SwiftUI

struct ProfileView: View {
  @State private var image = Image(systemName: "person.circle")
  @State private var text = "Sima Nerush"
  
  var body: some View {
    NavigationStack {
      VStack {
        NavigationLink {
          ProfileDetailView(text: $text, image: $image)
        } label: {
          HStack {
            image
              .resizable()
              .scaledToFill()
              .frame(width: 70, height: 70)
              .clipShape(Circle())
              .padding()
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
