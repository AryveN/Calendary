import SwiftUI

struct DefaultView: View {
    var body: some View {
        VStack {
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 50, height: 50)
                .background {
                    Image(systemName: "calendar")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 50, height: 50)
                        .foregroundColor(.purple)
                        .clipped()
                }
                .padding(20)
            Text("Hello, World!")
                .foregroundColor(.white)
        }
    }
}

#Preview {
    DefaultView()
}