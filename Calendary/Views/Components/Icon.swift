import SwiftUI

struct Icon: View {
    var body: some View {
        Rectangle()
                .foregroundColor(.clear)
                .frame(width: 100, height: 100)
                .background(
                    Image(systemName: "calendar")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 100)
                        .foregroundColor(.white)
                        .clipped()
                )
    }
}

#Preview {
    Icon()
}