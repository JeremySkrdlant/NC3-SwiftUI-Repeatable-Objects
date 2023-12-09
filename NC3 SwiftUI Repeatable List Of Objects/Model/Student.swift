//
//  Student.swift
//  NC3 SwiftUI Repeatable List Of Objects
//
//  Created by Jeremy Skrdlant on 12/9/23.
//

import Foundation

struct Student:CustomStringConvertible, Identifiable {
    // memberwise passed in values
    var name: String
    var interests: [String]
    var preferredLearningStyle: String
    var missedAssignments: [String]
    
    // properties that have a default value.
    var id = UUID()
    var description: String{
        return "\(name) has a learning style of \(preferredLearningStyle)"
    }
}

// Used to build the interface.  Later on can be replaced with data fetched
// from a server.
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
