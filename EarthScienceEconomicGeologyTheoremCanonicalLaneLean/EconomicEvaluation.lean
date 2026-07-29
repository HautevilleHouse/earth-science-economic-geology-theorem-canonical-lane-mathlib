import EarthScienceEconomicGeologyTheoremCanonicalLaneLean.GeologicalResourceModel

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyTheoremCanonicalLaneLean

structure EconomicEvaluationPackage {G : GeologicalResourceModelPackage} (R : GeologicalResourceModelEvidence G) where
  netPresentValue : Prop
  internalRateOfReturn : Prop
  paybackPeriod : Prop
  discountRate : Prop
  priceForecast : Prop
  costEstimate : Prop

structure EconomicEvaluationEvidence {G : GeologicalResourceModelPackage} {R : GeologicalResourceModelEvidence G}
    (E : EconomicEvaluationPackage R) where
  netPresentValueClosed : E.netPresentValue
  internalRateOfReturnClosed : E.internalRateOfReturn
  paybackPeriodClosed : E.paybackPeriod
  discountRateClosed : E.discountRate
  priceForecastClosed : E.priceForecast
  costEstimateClosed : E.costEstimate

def EconomicEvaluationClosed {G : GeologicalResourceModelPackage} {R : GeologicalResourceModelEvidence G}
    (E : EconomicEvaluationPackage R) : Prop :=
  E.netPresentValue ∧ E.internalRateOfReturn ∧ E.paybackPeriod ∧ E.discountRate ∧ E.priceForecast ∧ E.costEstimate

theorem economic_evaluation_closed_from_evidence
    {G : GeologicalResourceModelPackage} {R : GeologicalResourceModelEvidence G}
    (E : EconomicEvaluationPackage R) (Ev : EconomicEvaluationEvidence E) :
    EconomicEvaluationClosed E := by
  exact And.intro Ev.netPresentValueClosed (And.intro Ev.internalRateOfReturnClosed
    (And.intro Ev.paybackPeriodClosed (And.intro Ev.discountRateClosed
      (And.intro Ev.priceForecastClosed Ev.costEstimateClosed))))

end EarthScienceEconomicGeologyTheoremCanonicalLaneLean
end HautevilleHouse