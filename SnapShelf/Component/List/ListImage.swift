//
//  ListImage.swift
//  SnapShelf
//
//  Created by Minh Khoi on 11/10/26.
//

import SwiftUI

enum ListImageSize {
    case small
    case large

    var limit: Int {
        switch self {
        case .small: return 3
        case .large: return 6
        }
    }
}

struct ListImage: View {
    private let columns = [GridItem(.flexible(), spacing: 12),
                           GridItem(.flexible(), spacing: 12),
                           GridItem(.flexible(), spacing: 12)]
    let listHeading: String
    var size: ListImageSize = .small

    private var displayedArticles: [Article] {
        Array(articles.prefix(size.limit))
    }

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(listHeading)
                    .font(.title2)
                    .bold()
                Spacer()
                Text("\(articles.count) screenshot")
                    .font(.subheadline)
                    .foregroundStyle(.gray)
            }
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(displayedArticles) { article in
                    NavigationLink{
                        DetailView(imageUrl: article.imageURL)
                    } label: {
                        ImageCard(imageUrl: article.imageURL)
                    }
                    .buttonStyle(.plain)
                }
            }

        }
        .padding(.horizontal, 16)
        .padding(.vertical, 12)

    }
}

#Preview {
    ListImage(listHeading: "Today")
}
