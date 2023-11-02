//
//  ExerciseRowItemView.swift
//  f23-academy-playground
//
//  Created by AlecNipp on 11/2/23.
//

import SwiftUI

struct ExerciseRowItemView: View {
    var exercise: Exercise
    var body: some View {
        VStack {
            Text(exercise.name)
            HStack {
                Text("\(exercise.reps)")
                Text("\(exercise.sets)")
                Text("\(exercise.weight)")
            }
        }
    }
}

#Preview {
    ExerciseRowItemView(exercise: .example)
}
