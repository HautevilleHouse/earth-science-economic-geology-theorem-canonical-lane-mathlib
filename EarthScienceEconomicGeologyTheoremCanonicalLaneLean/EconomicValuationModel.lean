import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyTheoremCanonicalLaneLean

structure EconomicValuationModel where
  discountRate : ℝ
  cashFlows : Type
  netPresentValue : Prop
  sensitivityAnalysis : Prop

structure EconomicValuationEvidence (V : EconomicValuationModel) where
  netPresentValueClosed : V.netPresentValue
  sensitivityAnalysisClosed : V.sensitivityAnalysis

def EconomicValuationClosed (V : EconomicValuationModel) : Prop :=
  V.netPresentValue ∧ V.sensitivityAnalysis

theorem economic_valuation_closed_from_evidence
    (V : EconomicValuationModel) (E : EconomicValuationEvidence V) :
    EconomicValuationClosed V := by
  exact And.intro E.netPresentValueClosed E.sensitivityAnalysisClosed

end EarthScienceEconomicGeologyTheoremCanonicalLaneLean
end HautevilleHouse
