//
//  StudentRowView.swift
//  NC3 SwiftUI Repeatable List Of Objects
//
//  Created by admin on 12/9/23.
//

import SwiftUI

struct StudentRowView: View {
    var student:Student
    var body: some View {
        HStack {
            Text("\(student.missedAssignments.count)")
                .foregroundStyle(student.missedAssignments.count == 0 ? Color.gray : Color.red)
                .bold()
                .font(.system(size: 25))
            .shadow(radius: 2)
            .frame(width: 50)
            Text("|  \(student.name)")
                .bold()
                .font(.system(size: 25))
            Spacer()
        }
        .padding(.vertical, 5)
    }
}

#Preview {
    StudentRowView(student: mockData[0])
}
