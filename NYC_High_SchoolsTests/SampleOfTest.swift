//
//  SampleOfTest.swift
//  NYC_High_SchoolsTests
//
//  Created by Nick Pavlov on 8/31/23.
//

import XCTest
@testable import NYC_High_Schools

// This is a sample of Unit testing
final class SampleOfTest: XCTestCase {

    @MainActor
    func testDataArrayShouldBeEmpty() {
        // There is 3 main steps
        
        // Given (Arrange)
       
        // When (Act)
        let vm = MainViewViewModel()
        
        // Then (Assert)
        XCTAssertTrue(vm.highSchools.isEmpty)
        // we can also put multiple asserts
    }
    
    @MainActor
    func testDataArrayShouldNotAddBlankName() {
        // There is 3 main steps
        
        // Given (Arrange)
        let vm = DetailViewViewModel()
       
        // When (Act)
        vm.defineSatScoreOfSchool(schoolName: "Denver University")
        
        // Then (Assert)
        XCTAssertTrue(vm.satScoreOfSchool == nil)
        
    }
}
