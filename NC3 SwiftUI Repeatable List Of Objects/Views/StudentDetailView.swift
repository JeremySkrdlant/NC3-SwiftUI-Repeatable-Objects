//
//  StudentDetailView.swift
//  NC3 SwiftUI Repeatable List Of Objects
//
//  Created by admin on 12/9/23.
//

import SwiftUI

struct StudentDetailView: View {
    // This variable helps make this view be unique.
    var student:Student
    
    // Every struct that uses the View protocol has to implement the body variable.
    var body: some View {
        //This is the outer VStack that goes edge to edge on the screen.
        VStack (spacing: 0) {
            
            // This will allow us to put the users name on top of the picture. By default, ZStacks will align everything to the center.
            ZStack {
                // This image was downloaded from
                // https://www.pexels.com/photo/anonymous-person-with-miniature-airplane-on-chalkboard-3769120/
                // It has a free to use license.
                Image("chalkboard")
                    .resizable() // lets you change size
                    .aspectRatio(contentMode: .fill) // we can do fit or fill, fill will fill up the area but part of the picture might get clipped off.
                    .frame(height: 150) // We are setting the height, the width will be the default value of the content inside of it.
                    .clipped() // this will fix the image from overflowing the frame. This happens some times.  You will set a height on a frame but the image will still spill over.  The clipping fixes this.
                
                // We are using the students name centered in front of the picture. Items lower in a ZStack appear on top of the previous items.
                Text(student.name)
                    .bold()
                    .font(.system(size: 40))
                    .foregroundStyle(Color.white)
                    .shadow(color: .black, radius: 3) // There are multiple ways to call a shadow. the radius is required but he rest of the options like color are optional.
            }
            
            // This is the internal VStack that has padding and a leading alignment.
            VStack(alignment: .leading) {
                // Control + Command + Space will give you the emoji keyboard. 😁
                Text("📖 \(student.preferredLearningStyle)")
                    .bold()
                    .kerning(3) // Kerning will put space between your letters.
                Divider()
                    .padding(.top, 30) // This adds padding only to the top of the divider.
                Text("Interests")
                    .font(.headline) // We have many default values that can be useful for our fonts.  This is much more descriptive for screen readers.
                
                // Our for each could be made simpler if our array of objects used the Identifiable protocol.  Strings do not though so we need to set an ID, we are using the \.self option.
                ForEach(student.interests, id:\.self){
                    interest in
                    // interst is a single word from the array as we iterate though it.
                    Text(interest)
                        .offset(x: 15) // This will indent in our text by 15 points.
                }
                Divider()
                    .padding(.top, 30)
                // Have the students try to do this section on their own without any help.
                Text("Missed Assignments")
                    .font(.headline)
                ForEach(student.missedAssignments, id:\.self){
                    assignment in
                    Text(assignment)
                        .offset(x: 15)
                }
                // This final Spacer() will push all of our content to the top of the screen.  This will keep our design the same even on larger phones.
                Spacer()
            }.padding() // This is the padding on our internal VStack. This prevents our text from being right next to the edge. 
        }
    }
}

#Preview {
    //Note we are passing in the first student from out array here.  We can change the 0 to any number between 0 and 9 to see what the different data looks like in this view.
    StudentDetailView(student: mockData[0])
}
