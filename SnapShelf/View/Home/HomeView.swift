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
            ScrollView {
                ScreenHeading(
                    title: "Library", subTitle: "A little order for everything you save."
                )
                SearchBar(text: .constant(""), isFake: true)
                                .padding(.horizontal)
                ListImage(listHeading: "Today", size: .large)
                ListImage(listHeading: "Today", size: .small)
            }

        }
        .toolbar(.hidden, for: .navigationBar)
    }

}

#Preview {
    HomeView()
}
