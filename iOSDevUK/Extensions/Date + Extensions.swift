//
//  Date + Extensions.swift
//  iOSDevUK
//
//  Created by David Kababyan on 29/09/2022.
//

import Foundation

//needed to save Date to AppStorage
extension Date: RawRepresentable {
    private static let formatter = ISO8601DateFormatter()
    
    public var rawValue: String {
        Date.formatter.string(from: self)
    }
    
    public init?(rawValue: String) {
        self = Date.formatter.date(from: rawValue) ?? Date()
    }
}

extension Date {
    
    func date(with year: Int, month: Int, day: Int = 1) -> Date {
        Calendar.current.date(from: DateComponents(year: year, month: month, day: day)) ?? Date()
    }
    
    var tomorrow: Date {
        Calendar.current.date(byAdding: .day, value: 1, to: Date())!
    }
    
    var longDate: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd MMM yyyy"
        return dateFormatter.string(from: self)
    }
    
    var weekDayTime: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EE HH:mm"
        return dateFormatter.string(from: self)
    }
    
    var dateAndWeekDay: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "d EE"
        return dateFormatter.string(from: self)
    }

    var dayOfTheMonth: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "d"
        return dateFormatter.string(from: self)
    }
    
    var dayAndMonth: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "d MMMM"
        return dateFormatter.string(from: self)
    }
    
    var weekDay: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EE"
        return dateFormatter.string(from: self)
    }
    
    var time: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm"
        return dateFormatter.string(from: self)
    }
    
    func isInRange(startDate: Date, endDate: Date) -> Bool {
        self >= startDate && self <= endDate
    }
}
