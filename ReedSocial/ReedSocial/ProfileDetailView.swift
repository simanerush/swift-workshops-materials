//
//  ProfileDetailView.swift
//  ReedSocial
//
//  Created by Sima Nerush on 3/15/23.
//

import SwiftUI
import PhotosUI

struct ProfileDetailView: View {
  @Binding var text: String
  @Binding var image: Image
  
  @State var imageItem: PhotosPickerItem?
  
  var body: some View {
    VStack {
      PhotosPicker("select your profile pic!", selection: $imageItem, matching: .images)
      image
        .resizable()
        .scaledToFill()
        .frame(width: 200, height: 200)
        .clipShape(Circle())
        .padding(8)
      TextField("", text: $text)
        .textFieldStyle(.roundedBorder)
        .padding(.horizontal, 70)
      
    }
    .onChange(of: imageItem) { _ in
      Task {
        if let data = try? await imageItem?.loadTransferable(type: Data.self) {
          if let uiImage = UIImage(data: data) {
            image = Image(uiImage: uiImage)
            return
          }
        }
        fatalError("failed to pick the photo")
      }
    }
  }
}
