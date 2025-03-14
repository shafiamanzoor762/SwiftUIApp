//
//  Date+Extensions.swift
//  SwiftUIApp
//
//  Created by apple on 21/10/2024.
//

import SwiftUI
/// Date Extensions Needed for Building UI

extension Date{
    /// Custom Date Format
    func format(_ format: String) -> String{
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.string(from: self)
    }
    /// Checking Whether the Date is Today
    var isToday: Bool{
        return Calendar.current.isDateInToday(self)
    }
    
    /// Checking if the date id Same Hour
    var isSameHour: Bool{
        return Calendar.current.compare(self, to: .init(), toGranularity: .hour) == .orderedSame
    }
    
    /// Checking if the date id Past Hours
    var isPast: Bool{
        return Calendar.current.compare(self, to: .init(), toGranularity: .hour) == .orderedDescending
    }
    
    /// Fetching Week Based on given Date
    func fetchWeek(_ date: Date = .init()) ->[WeekDay]{
        let calendar = Calendar.current
        let startOfDate = calendar.startOfDay(for: date)
        
        var week: [WeekDay] = []
        let weekForDate = calendar.dateInterval(of: .weekOfMonth, for: startOfDate)
        guard let startOfWeek = weekForDate?.start else{
            return []
        }
        
        ///Iterating to get the Full Week
        (0..<7).forEach{ index in if let weekDay = calendar.date(byAdding: .day, value: index, to: startOfWeek){
            week.append(.init(date: weekDay))
        }
    }
    return week
}
    
    /// Creating Next Week, based on Last Current Week's Date
    func createNextWeek() -> [WeekDay] {
        let calendar = Calendar.current
        let startOfLastDate = calendar.startOfDay(for: self)
        guard let nextDate = calendar.date(byAdding: .day, value: 1, to: startOfLastDate) else {
            return []
        }
        return fetchWeek(nextDate)
    }
    
    /// Creating Previous Week, based on First Current Week's Date
    func createPreviousWeek() -> [WeekDay] {
        let calendar = Calendar.current
        let startOfFirstDate = calendar.startOfDay(for: self)
        guard let previousDate = calendar.date(byAdding: .day, value: -1, to: startOfFirstDate) else {
            return []
        }
        return fetchWeek(previousDate)
    }
    
    struct WeekDay: Identifiable{
        var id: UUID = .init()
        var date: Date
    }
}
