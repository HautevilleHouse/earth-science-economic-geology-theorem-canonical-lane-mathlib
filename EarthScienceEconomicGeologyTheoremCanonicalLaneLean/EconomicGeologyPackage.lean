import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyTheoremCanonicalLaneLean

structure EconomicGeologyPackage where
  depositModel : Type u
  resourceEstimation : Prop
  gradeDistribution : Prop
  formationProcess : Prop
  economicViability : Prop

structure EconomicGeologyEvidence (P : EconomicGeologyPackage) where
  resourceEstimationClosed : P.resourceEstimation
  gradeDistributionClosed : P.gradeDistribution
  formationProcessClosed : P.formationProcess
  economicViabilityClosed : P.economicViability

def EconomicGeologyClosed (P : EconomicGeologyPackage) : Prop :=
  P.resourceEstimation ∧ P.gradeDistribution ∧ P.formationProcess ∧ P.economicViability

theorem economic_geology_closed_from_evidence (P : EconomicGeologyPackage) (E : EconomicGeologyEvidence P) :
    EconomicGeologyClosed P := by
  exact And.intro E.resourceEstimationClosed (And.intro E.gradeDistributionClosed (And.intro E.formationProcessClosed E.economicViabilityClosed))

end EarthScienceEconomicGeologyTheoremCanonicalLaneLean
end HautevilleHouse