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
            ListImage()
        }
        .toolbar(.hidden, for: .navigationBar)
    }

}
