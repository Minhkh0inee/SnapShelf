//
//  ListImage.swift
//  SnapShelf
//
//  Created by Minh Khoi on 11/10/26.
//

import SwiftUI

struct ListImage: View {
    private let columns = [GridItem(.flexible(), spacing: 12),
                           GridItem(.flexible(), spacing: 12),
                           GridItem(.flexible(), spacing: 12)]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(articles) { article in
                    NavigationLink{
                        DetailView()
                    } label: {
                        ImageCard(imageUrl: article.imageURL)
                    }
                    .buttonStyle(.plain)
                }
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 12)
        }
    }
}
