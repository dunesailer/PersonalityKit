//  Created by B.T. Franklin on 8/24/19

public struct BigFiveExtraversion: BigFivePersonalityTrait {
    
    public let score: Double
    
    public let assertivenessScore: Double
    public let sociabilityScore: Double
    public let energyLevelScore: Double
    
    public init(assertivenessScore: Double,
                sociabilityScore: Double,
                energyLevelScore: Double) {
        
        guard unitRange.contains(assertivenessScore)
            && unitRange.contains(sociabilityScore)
            && unitRange.contains(energyLevelScore) else {
                fatalError("All trait components must be in the range 0.0...1.0")
        }
        
        self.assertivenessScore = assertivenessScore
        self.sociabilityScore = sociabilityScore
        self.energyLevelScore = energyLevelScore
        
        self.score = (0.34 * assertivenessScore) + (0.33 * sociabilityScore) + (0.33 * energyLevelScore)
    }
}

extension BigFiveExtraversion {
    public static func random(for lifeStage: LifeStage) -> BigFiveExtraversion {
        let extraversion: BigFiveExtraversion
        switch lifeStage {
        case .child:
            extraversion = BigFiveExtraversion(assertivenessScore: Double.randomGaussian(withStandardDeviation: 0.27,
                                                                                         withMean: 0.72,
                                                                                         withMaximum: 1.0,
                                                                                         withMinimum: 0.01),
                                               sociabilityScore: Double.randomGaussian(withStandardDeviation: 0.27,
                                                                                       withMean: 0.70,
                                                                                       withMaximum: 1.0,
                                                                                       withMinimum: 0.01),
                                               energyLevelScore: Double.randomGaussian(withStandardDeviation: 0.27,
                                                                                       withMean: 0.72,
                                                                                       withMaximum: 1.0,
                                                                                       withMinimum: 0.01))
        case .youngAdult:
            extraversion = BigFiveExtraversion(assertivenessScore: Double.randomGaussian(withStandardDeviation: 0.27,
                                                                                         withMean: 0.62,
                                                                                         withMaximum: 1.0,
                                                                                         withMinimum: 0.01),
                                               sociabilityScore: Double.randomGaussian(withStandardDeviation: 0.27,
                                                                                       withMean: 0.60,
                                                                                       withMaximum: 1.0,
                                                                                       withMinimum: 0.01),
                                               energyLevelScore: Double.randomGaussian(withStandardDeviation: 0.27,
                                                                                       withMean: 0.62,
                                                                                       withMaximum: 1.0,
                                                                                       withMinimum: 0.01))
        case .adult:
            extraversion = BigFiveExtraversion(assertivenessScore: Double.randomGaussian(withStandardDeviation: 0.27,
                                                                                         withMean: 0.52,
                                                                                         withMaximum: 1.0,
                                                                                         withMinimum: 0.01),
                                               sociabilityScore: Double.randomGaussian(withStandardDeviation: 0.27,
                                                                                       withMean: 0.50,
                                                                                       withMaximum: 1.0,
                                                                                       withMinimum: 0.01),
                                               energyLevelScore: Double.randomGaussian(withStandardDeviation: 0.27,
                                                                                       withMean: 0.52,
                                                                                       withMaximum: 1.0,
                                                                                       withMinimum: 0.01))
        }
        
        return extraversion
    }
}