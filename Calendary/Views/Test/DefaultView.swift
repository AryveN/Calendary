import SwiftUI

struct DefaultView: View {
    let calendarValues = CalendarHandler()
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
            Text("Debug Info:")
                .foregroundColor(.white)
            Text("Day: \(calendarValues.findCurrentDay())")
            Text("Month: \(calendarValues.findCurrentMonth())")
            Text("Year: \(calendarValues.findCurrentYear())")
            Text("Days in Month: \(calendarValues.findDaysInMonth(for: Date()))")
            Text("First day in Month: \(calendarValues.findFirstDayOfMonth(for: Date()))")
        }
    }
}

#Preview {
    DefaultView()
}