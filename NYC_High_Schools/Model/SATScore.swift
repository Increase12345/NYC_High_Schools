//
//  SATScore.swift
//  NYC_High_Schools
//
//  Created by Nick Pavlov on 8/31/23.
//

import Foundation

// Signed to Sendable protocor, even if structs are value type and they are thread safe we still can mark it as Sendable for the slight perfomance.
struct SATScore: Identifiable, Codable, Sendable {
    var id: UUID { UUID() }
    
    let schoolName: String
    let numOfSatTestTakers: String
    let satCriticalReadingAvgScore: String
    let satMathAvgScore: String
    let satWritingAvgScore: String
}
