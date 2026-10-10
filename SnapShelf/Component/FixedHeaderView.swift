import SwiftUI

struct FixedHeaderView: View {
    @State private var isDarkMode = false

    var body: some View {

        HStack {
            Text("SnapShelf")
                .font(.title2.bold())

            Spacer()

            Button {
                isDarkMode.toggle()
            } label: {
                Image(systemName: isDarkMode ? "sun.max.fill" : "moon.fill")
                    .font(.title3)
                    .foregroundColor(isDarkMode ? .yellow : .primary)
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 12)

        Divider() // Đường kẻ ngăn cách

    }
//        .preferredColorScheme(isDarkMode ? .dark : .light)
}
