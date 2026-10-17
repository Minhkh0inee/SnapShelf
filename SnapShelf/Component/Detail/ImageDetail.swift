//
//  ImageDetail.swift
//  SnapShelf
//
//  Created by Minh Khoi on 17/10/26.
//

import SwiftUI

struct ImageDetail: View {
    let imageUrl: String
    var body: some View {
        AsyncImage(url: URL(string: imageUrl)) { phase in
            if let image = phase.image {
                image
                    .resizable()
                    .scaledToFit()
            } else if phase.error != nil {
                Color.gray.opacity(0.3)
            } else {
                ProgressView()
            }
        }
        .frame(maxWidth: .infinity)
        .cornerRadius(12)
    }
}
