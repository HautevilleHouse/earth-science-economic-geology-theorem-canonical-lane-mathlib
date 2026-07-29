import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyTheoremCanonicalLaneLean

structure ReserveAssessmentPackage where
  geologicalModel : Type
  resourceEstimate : Prop
  economicCutoff : Prop
  classificationReliable : Prop

structure ReserveAssessmentEvidence (R : ReserveAssessmentPackage) where
  resourceEstimateClosed : R.resourceEstimate
  economicCutoffClosed : R.economicCutoff
  classificationReliableClosed : R.classificationReliable

def ReserveAssessmentClosed (R : ReserveAssessmentPackage) : Prop :=
  R.resourceEstimate ∧ R.economicCutoff ∧ R.classificationReliable

theorem reserve_assessment_closed_from_evidence
    (R : ReserveAssessmentPackage) (E : ReserveAssessmentEvidence R) :
    ReserveAssessmentClosed R := by
  exact And.intro E.resourceEstimateClosed
    (And.intro E.economicCutoffClosed E.classificationReliableClosed)

end EarthScienceEconomicGeologyTheoremCanonicalLaneLean
end HautevilleHouse
