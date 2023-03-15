//
//  ProfileDetailView.swift
//  ReedSocial
//
//  Created by Sima Nerush on 3/15/23.
//

import SwiftUI

struct ProfileDetailView: View {
  @Binding var text: String
    var body: some View {
      VStack {
        Image(systemName: "person")
        TextField("", text: $text)
          .textFieldStyle(.roundedBorder)
          .padding(.horizontal, 70)
      }
    }
}
