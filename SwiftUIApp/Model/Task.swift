//
//  Untitled.swift
//  SwiftUIApp
//
//  Created by apple on 21/10/2024.
//

import SwiftUI
import SwiftData

@Model
class Task: Identifiable {
    var id: UUID
    var taskTitle: String
    var creationDate: Date
    var isCompleted: Bool
    var tint: String
    
    init(id: UUID = .init(), taskTitle: String, creationDate: Date = .init(), isCompleted: Bool = false, tint: String) {
        self.id = id
        self.taskTitle = taskTitle
        self.creationDate = creationDate
        self.isCompleted = isCompleted
        self.tint = tint
    }
    var tintColor: Color{
        switch tint{
            case "TaskColor1": return .taskColor1
            case "TaskColor2": return .taskColor2
            case "TaskColor3": return .taskColor3
            case "TaskColor4": return .taskColor4
            case "TaskColor5": return .taskColor5
            default: return .black
        }
    }
}


//var sampleTasks: [Task] = [
//    .init(taskTitle: "Record Video", creationDate: Date.updateHour(-5), isCompleted: false, tint: .taskColor1),
//    .init(taskTitle: "Design Website", creationDate: Date.updateHour(-3), isCompleted: true, tint: .taskColor2),
//    .init(taskTitle: "Go for a Walk", creationDate: Date.updateHour(-4), isCompleted: true, tint: .taskColor3),
//    .init(taskTitle: "Edit Video", creationDate: Date.updateHour(0), isCompleted: true, tint: .taskColor4),
//    .init(taskTitle: "Publish Video", creationDate: Date.updateHour(2), isCompleted: false, tint: .taskColor1),
//    .init(taskTitle: "Tweet about new Video!", creationDate: Date.updateHour(1), isCompleted: false, tint: .taskColor5)
//    
//]

extension Date {
    static func updateHour(_ value:Int) -> Date{
        let calendar = Calendar.current
        return calendar.date(byAdding: .hour, value: value, to: .init()) ?? .init()
    }
}
