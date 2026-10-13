//
//  CategoryView.swift
//  SnapShelf
//
//  Created by Minh Khoi on 13/10/26.
//

import SwiftUI

struct CategoryView: View {
    var body: some View {
        FixedHeaderView()

        Spacer()
        ScrollView {
            ScreenHeading(
                title: "Categories", subTitle: "Everything in its own little place."
            )
            CreateCategoryButton(title: "Create New Category") {
                print("Create Click")
            }.padding(.bottom).padding(.horizontal)
            VStack(alignment: .leading, spacing: 16){
                CategoryCard(iconName: "banknote", title: "Transaction", count: 32, previewImages: [
                    "https://picsum.photos/id/10/400/600.jpg",
                    "https://picsum.photos/id/11/400/600.jpg"
                ])
                CategoryCard(iconName: "banknote", title: "Transaction", count: 32, previewImages: [
                    "https://picsum.photos/id/10/400/600.jpg",
                    "https://picsum.photos/id/11/400/600.jpg"
                ])
                CategoryCard(iconName: "banknote", title: "Transaction", count: 32, previewImages: [
                    "https://picsum.photos/id/10/400/600.jpg",
                    "https://picsum.photos/id/11/400/600.jpg"
                ])
                CategoryCard(iconName: "banknote", title: "Transaction", count: 32, previewImages: [
                    "https://picsum.photos/id/10/400/600.jpg",
                    "https://picsum.photos/id/11/400/600.jpg"
                ])
            }.padding(.horizontal)

        }
    }
}

#Preview {
    CategoryView()
}
