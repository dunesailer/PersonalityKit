//  Created by B.T. Franklin on 9/2/19

import XCTest
@testable import PersonalityKit

final class BigFiveNeuroticismTests: XCTestCase {
    
    func testInitializer() {
        let testTrait1 = BigFiveNeuroticism(anxietyScore: 1.0,
                                            emotionalVolatilityScore: 1.0,
                                            depressionScore: 1.0)
        XCTAssertEqual(1.0, testTrait1.score, accuracy: 0)
        
        let testTrait2 = BigFiveNeuroticism(anxietyScore: 0,
                                            emotionalVolatilityScore: 0,
                                            depressionScore: 0)
        XCTAssertEqual(0, testTrait2.score, accuracy: 0)

        let testTrait3 = BigFiveNeuroticism(anxietyScore: 0.5,
                                            emotionalVolatilityScore: 0.5,
                                            depressionScore: 0.5)
        XCTAssertEqual(0.5, testTrait3.score, accuracy: 0.01)
    }
    
    func testRandom() {
        let testTrait1 = BigFiveNeuroticism.random(for: .child)
        print("Child neuroticism:")
        print(testTrait1)
        print("----------------------")
        
        let testTrait2 = BigFiveNeuroticism.random(for: .youngAdult)
        print("Young adult neuroticism:")
        print(testTrait2)
        print("----------------------")

        let testTrait3 = BigFiveNeuroticism.random(for: .adult)
        print("Adult neuroticism:")
        print(testTrait3)
        print("----------------------")
    }
}
