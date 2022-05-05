//
//  ScoreViewModel.swift
//  CodeHistory
//
//  Created by Scott Rome on 4/19/22.
//

import Foundation
import SwiftUI

struct ScoreViewModel {
    let correctGuesses: Int
    let incorrectGuesses: Int
    
    var percentage: Int {
        (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
    }
}
