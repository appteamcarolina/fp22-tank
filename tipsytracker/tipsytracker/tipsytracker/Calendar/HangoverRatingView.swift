//
//  HangoverRating.swift
//  tipsytracker
//
//  Created by Lauren Jones on 4/22/22.
//

import SwiftUI

struct HangoverRatingView: View {
    @Binding var rating: Int
    @Binding var hangoverInput: String
    var label = ""
    var maximumRating = 5
    var offImage: Image?
    var onImage = Image(systemName: "star.fill")
    var offColor = Color.gray
    var onColor = Color.yellow

    var body: some View {
        HStack {
            if label.isEmpty == false {
                Text(label)
            }

            ForEach(1..<maximumRating + 1, id: \.self) { number in
                image(for: number)
                    .foregroundColor(number > rating ? offColor : onColor)
                    .onTapGesture {
                        rating = number
                    }
            }
            TextField("How are you feeling today?", text: $hangoverInput)
        }
    }
    func image(for number: Int) -> Image {
        if number > rating {
            return offImage ?? onImage
        } else {
            return onImage
        }
    }
}

struct HangoverRating_Previews: PreviewProvider {
    static var previews: some View {
        HangoverRatingView(rating: .constant(4), hangoverInput: .constant("ouch"))
    }
}
