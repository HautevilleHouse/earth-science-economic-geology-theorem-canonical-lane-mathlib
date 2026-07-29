import EarthScienceEconomicGeologyTheoremCanonicalLaneLean.ResourceExtraction

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyTheoremCanonicalLaneLean

structure MarketAnalysisPackage {G : GeologicalResourceModelPackage} {R : GeologicalResourceModelEvidence G}
    {E : EconomicEvaluationPackage R} {Ev : EconomicEvaluationEvidence E}
    {X : ResourceExtractionPackage Ev} (Ex : ResourceExtractionEvidence X) where
  commodityPrice : Prop
  demandForecast : Prop
  supplyForecast : Prop
  marketEquilibrium : Prop
  priceVolatility : Prop

structure MarketAnalysisEvidence {G : GeologicalResourceModelPackage} {R : GeologicalResourceModelEvidence G}
    {E : EconomicEvaluationPackage R} {Ev : EconomicEvaluationEvidence E}
    {X : ResourceExtractionPackage Ev} {Ex : ResourceExtractionEvidence X}
    (M : MarketAnalysisPackage Ex) where
  commodityPriceClosed : M.commodityPrice
  demandForecastClosed : M.demandForecast
  supplyForecastClosed : M.supplyForecast
  marketEquilibriumClosed : M.marketEquilibrium
  priceVolatilityClosed : M.priceVolatility

def MarketAnalysisClosed {G : GeologicalResourceModelPackage} {R : GeologicalResourceModelEvidence G}
    {E : EconomicEvaluationPackage R} {Ev : EconomicEvaluationEvidence E}
    {X : ResourceExtractionPackage Ev} {Ex : ResourceExtractionEvidence X}
    (M : MarketAnalysisPackage Ex) : Prop :=
  M.commodityPrice ∧ M.demandForecast ∧ M.supplyForecast ∧ M.marketEquilibrium ∧ M.priceVolatility

theorem market_analysis_closed_from_evidence
    {G : GeologicalResourceModelPackage} {R : GeologicalResourceModelEvidence G}
    {E : EconomicEvaluationPackage R} {Ev : EconomicEvaluationEvidence E}
    {X : ResourceExtractionPackage Ev} {Ex : ResourceExtractionEvidence X}
    (M : MarketAnalysisPackage Ex) (Me : MarketAnalysisEvidence M) :
    MarketAnalysisClosed M := by
  exact And.intro Me.commodityPriceClosed (And.intro Me.demandForecastClosed
    (And.intro Me.supplyForecastClosed (And.intro Me.marketEquilibriumClosed Me.priceVolatilityClosed)))

end EarthScienceEconomicGeologyTheoremCanonicalLaneLean
end HautevilleHouse