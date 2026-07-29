import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyTheoremCanonicalLaneLean

structure EconomicValuationPackage where
  netPresentValue : Prop
  internalRateOfReturn : Prop
  paybackPeriod : Prop
  sensitivityAnalysis : Prop
  riskAssessment : Prop

structure EconomicValuationEvidence (P : EconomicValuationPackage) where
  netPresentValueClosed : P.netPresentValue
  internalRateOfReturnClosed : P.internalRateOfReturn
  paybackPeriodClosed : P.paybackPeriod
  sensitivityAnalysisClosed : P.sensitivityAnalysis
  riskAssessmentClosed : P.riskAssessment

def EconomicValuationClosed (P : EconomicValuationPackage) : Prop :=
  P.netPresentValue ∧ P.internalRateOfReturn ∧ P.paybackPeriod ∧ P.sensitivityAnalysis ∧ P.riskAssessment

theorem economic_valuation_closed_from_evidence (P : EconomicValuationPackage) (E : EconomicValuationEvidence P) :
    EconomicValuationClosed P := by
  exact And.intro E.netPresentValueClosed (And.intro E.internalRateOfReturnClosed (And.intro E.paybackPeriodClosed (And.intro E.sensitivityAnalysisClosed E.riskAssessmentClosed)))

end EarthScienceEconomicGeologyTheoremCanonicalLaneLean
end HautevilleHouse