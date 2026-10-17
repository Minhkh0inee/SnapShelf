//
//  DetailView.swift
//  SnapShelf
//
//  Created by Minh Khoi on 11/10/26.
//

import SwiftUI

struct DetailView: View {
    let imageUrl: String

    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                ImageDetail(imageUrl: imageUrl)
            }
            .padding(.horizontal)


            VStack(alignment: .leading, spacing: 16) {
                Text("Sunny Coffee").font(.title)
                    .fontWeight(.semibold)
                Text("Today · 9:32 AM").font(.default).foregroundColor(.gray)
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)

            InfoSection().padding(.horizontal)

        }
        .padding(.vertical)
        .navigationTitle("ScreenShot Detail")
        .navigationBarTitleDisplayMode(.inline)


    }
}

#Preview {
    DetailView(imageUrl: "https://picsum.photos/id/28/400/600.jpg")
}
