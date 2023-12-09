//
//  Student.swift
//  NC3 SwiftUI Repeatable List Of Objects
//
//  Created by Jeremy Skrdlant on 12/9/23.
//

import Foundation

struct Student:CustomStringConvertible, Identifiable {
    // memberwise passed in values.  This means that when you go to create this object, you will be given these variables as options you need to pass in.
    // let s = Student(name: "", interests: [], preferredLearningStyle:"", missedAssignments:[])
    var name: String   //
    var interests: [String]
    var preferredLearningStyle: String
    var missedAssignments: [String]
    
    // properties that have a default value.
    // This variable is required by the Identifiable protocol.  We can create it with Xcode like we did here or we could read it in from a database.  If we read it in, the id would be part of the memberwise initializer.
    var id = UUID()
    
    //This variable is required by the Custom String Convertible protocol.  It allows us to print the object and have this string appear instead of what can be somewhat cryptic messages we get if we don't implement this. One example could be [Object:Object].
    var description: String{
        return "\(name) has a learning style of \(preferredLearningStyle)"
    }
}

// Used to build the interface.  Later on can be replaced with data fetched
// from a server.
// This data was created by ChatGPT.  We prompted it with our struct from above and asked for a single array of 10 students of mock data in Swift. 
let mockData = [
    Student(name: "Alice", interests: ["Math", "Science", "Art"], preferredLearningStyle: "Visual", missedAssignments: ["Homework 1", "Quiz 2"]),
    Student(name: "Bob", interests: ["History", "Sports", "Music"], preferredLearningStyle: "Auditory", missedAssignments: ["Project 3"]),
    Student(name: "Charlie", interests: ["English", "Coding", "Dance"], preferredLearningStyle: "Kinesthetic", missedAssignments: []),
    Student(name: "David", interests: ["Physics", "Reading", "Basketball"], preferredLearningStyle: "Visual", missedAssignments: ["Quiz 1"]),
    Student(name: "Eva", interests: ["Chemistry", "Writing", "Swimming"], preferredLearningStyle: "Auditory", missedAssignments: []),
    Student(name: "Frank", interests: ["Computer Science", "Artificial Intelligence", "Piano"], preferredLearningStyle: "Visual", missedAssignments: ["Homework 2"]),
    Student(name: "Grace", interests: ["Biology", "Painting", "Soccer"], preferredLearningStyle: "Kinesthetic", missedAssignments: ["Project 1"]),
    Student(name: "Harry", interests: ["Geography", "Guitar", "Running"], preferredLearningStyle: "Visual", missedAssignments: []),
    Student(name: "Ivy", interests: ["Economics", "Sculpting", "Volleyball"], preferredLearningStyle: "Kinesthetic", missedAssignments: []),
    Student(name: "Jack", interests: ["Statistics", "Cycling", "Cooking"], preferredLearningStyle: "Auditory", missedAssignments: ["Quiz 3"])
]
