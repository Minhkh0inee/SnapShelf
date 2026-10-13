//
//  MainTabView.swift
//  MyApp
//
//  Created by Minh Khoi on 10/10/26.
//

import Foundation
import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            NavigationStack {
                HomeView()
            }
            .tabItem {
                Label("Trang chủ", systemImage: "house")
            }

            NavigationStack {
                CategoryView()
            }
            .tabItem {
                Label("Thư mục", systemImage: "folder")
            }

            NavigationStack {
                SearchView()
            }
            .tabItem {
                Label("Tìm Kiếm", systemImage: "magnifyingglass")
            }

            NavigationStack {
                SettingView()
            }
            .tabItem {
                Label("Cài đặt", systemImage: "gear")
            }
        }
    }
}
