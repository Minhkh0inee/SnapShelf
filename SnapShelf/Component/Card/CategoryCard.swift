//
//  CategoryCard.swift
//  SnapShelf
//
//  Created by Minh Khoi on 13/10/26.
//

import SwiftUI

struct CategoryCard: View {
    let iconName: String
    let title: String
    let count: Int
    let previewImages: [String] // Mảng chứa URL hoặc tên ảnh preview

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack(spacing: 12) {
                ZStack {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color.green.opacity(0.12))
                        .frame(width: 44, height: 44)

                    Image(systemName: iconName)
                        .font(.system(size: 20, weight: .semibold))
                        .foregroundStyle(Color.green.opacity(0.85))
                }

                VStack(alignment: .leading, spacing: 2) {
                    Text(title)
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundStyle(.primary)

                    Text("\(count) screenshots")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }

                Spacer()


                Image(systemName: "chevron.right")
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundStyle(.gray.opacity(0.8))
            }

            HStack(spacing: 10) {
                ForEach(previewImages.prefix(3), id: \.self) { imageUrl in
                    AsyncImage(url: URL(string: imageUrl)) { phase in
                        if let image = phase.image {
                            image
                                .resizable()
                                .scaledToFill()
                        } else if phase.error != nil {
                            Color.gray.opacity(0.2)
                        } else {
                            Color(.systemGray6)
                        }
                    }
                    .frame(width: 100, height: 110)
                    .clipped()
                    .cornerRadius(8)
                }
            }
        }
        .padding(16)
        .background(Color(.systemBackground))
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color(.systemGray5), lineWidth: 1)
        )
    }
}

#Preview {
    CategoryCard(iconName: "banknote", title: "Transaction", count: 32, previewImages: [
        "https://picsum.photos/id/10/400/600.jpg",
        "https://picsum.photos/id/11/400/600.jpg"
    ])
}
