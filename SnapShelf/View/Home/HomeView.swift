//
//  HomeView.swift
//  MyApp
//
//  Created by Minh Khoi on 10/10/26.
//

import Foundation
import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(spacing: 0) {
            FixedHeaderView()

            Spacer()
            ScreenHeading(
                title: "Library", subTitle: "A little order for everything you save."
            )
            SearchBar(text: .constant(""), isFake: true)
                            .padding(.horizontal)
            ScrollView {
                VStack(spacing: 12) {
                    ForEach(1...30, id: \.self) { index in
                        Text("Dòng nội dung \(index)")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                            .background(Color(.secondarySystemBackground))
                            .cornerRadius(8)
                    }
                }
                .padding()
            }
        }
        .toolbar(.hidden, for: .navigationBar)
    }

}
