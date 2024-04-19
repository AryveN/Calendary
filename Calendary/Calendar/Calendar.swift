import Foundation
import os

class CalendarHandler {
    // Logger import
    let logger = Logger()
    // Gets current date
    var currentDate: Date = Date()

    // Swift calendar
    var swiftCalendar = Calendar.current

    // Find current day from current date
    func findCurrentDay() -> Int {
        // Separates day from current date
        let components = swiftCalendar.dateComponents([.day], from: currentDate)
        if let day = components.day {
            return day
        } else {
            logger.error("[Error] Cannot find day from current date!")
            return 0
        }
    }

    // Find current month from current date
    func findCurrentMonth() -> Int {
        // Separates month from current date
        let components = swiftCalendar.dateComponents([.month], from: currentDate)
        if let month = components.month {
            return month
        } else {
            logger.error("[Error] Cannot find month from current date!")
            return 0
        }
    }

    // Find current year from current date
    func findCurrentYear() -> Int {
        // Separates year from current date
        let components = swiftCalendar.dateComponents([.year], from: currentDate)
        if let year = components.year {
            return year
        } else {
            logger.error("[Error] Cannot find year from current date!")
            return 0
        }
    }

    // Find number of days in a month
    func findDaysInMonth(for date: Date) -> Int {
        // Get range of days from current date
        if let range = swiftCalendar.range(of: .day, in: .month, for: date) {
            return range.count
        } else {
            logger.error("[Error] Cannot find number of days in month from current date!")
            return 0
        }
    }

    func findFirstDayOfMonth(for date: Date) -> Int {
        let components = swiftCalendar.dateComponents([.year, .month], from: date)
        // Create a date for the first day of the month
        let firstDayOfMonth = swiftCalendar.date(from: components)!
        // Get the weekday component (numerical value)
        var weekdayNumber = swiftCalendar.component(.weekday, from: firstDayOfMonth)

        // Ensures that Monday is the first day
        weekdayNumber = (weekdayNumber == 1 ? 7 : weekdayNumber - 1)
        return weekdayNumber
    }
}