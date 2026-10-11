//
//  ImageCard.swift
//  SnapShelf
//
//  Created by Minh Khoi on 11/10/26.
//

import SwiftUI

struct ImageCard: View {
    let imageUrl: String

    var body: some View{
        AsyncImage(url: URL(string: imageUrl)) { phase in
            if let image = phase.image {
                image
                    .resizable()
                    .scaledToFill()
            } else if phase.error != nil {
                Color.gray.opacity(0.3)
            } else {
                ProgressView()
            }
        }
        .frame(height: 180)
        .frame(maxWidth: .infinity)
        .clipped()
        .cornerRadius(12)
    }
}
