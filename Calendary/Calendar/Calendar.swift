import Foundation
import os

struct CalendarValues {
    var currentDate: Date = Date()
    var currentDay: Int = 0
    var currentMonth: Int = 0
    var currentYear: Int = 0
    var firstDayOfMonth: Int = 0
    var daysInMonth: Int = 0
}

class CalendarHandler {
    let logger = Logger()

    //Custom calendar values
    var calendarValues = CalendarValues()
    //Swift calendar
    var swiftCalendar = Calendar.current

    //Find current day from current date
    func findCurrentDay() -> Int {
        let components = swiftCalendar.dateComponents([.day], from: calendarValues.currentDate)
        if let day = components.day {
            calendarValues.currentDay = day
            return day
        } else {
            logger.error("[Error] Cannot find day from current date!")
            return 0
        }
    }

    //Find current month from current date
    func findCurrentMonth() -> Int {
        let components = swiftCalendar.dateComponents([.month], from: calendarValues.currentDate)
        if let month = components.month {
            calendarValues.currentMonth = month
            return month
        } else {
            logger.error("[Error] Cannot find month from current date!")
            return 0
        }
    }

    //Find current year from current date
    func findCurrentYear() -> Int {
        let components = swiftCalendar.dateComponents([.year], from: calendarValues.currentDate)
        if let year = components.year {
            calendarValues.currentYear = year
            return year
        } else {
            logger.error("[Error] Cannot find year from current date!")
            return 0
        }
    }

    //Find number of days in a month
    func findDaysInMonth() -> Int {
        if let range = swiftCalendar.range(of: .day, in: .month, for: calendarValues.currentDate) {
            calendarValues.daysInMonth = range.count
            return range.count
        } else {
            logger.error("[Error] Cannot find number of days in month from current date!")
            return 0
        }
        
    }

    func findFirstDayOfMonth() -> Int {
        let components = swiftCalendar.firstWeekday()
    }
}