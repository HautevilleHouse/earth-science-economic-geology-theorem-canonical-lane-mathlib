import EarthScienceEconomicGeologyTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyTheoremCanonicalLaneLean

structure GeologicalResourceModelPackage where
  resourceType : Type u
  gradeDistribution : Type v
  spatialLocation : Type w
  tonnage : Prop
  grade : Prop
  geologicalControls : Prop
  economicCutoff : Prop

structure GeologicalResourceModelEvidence (G : GeologicalResourceModelPackage) where
  tonnageClosed : G.tonnage
  gradeClosed : G.grade
  geologicalControlsClosed : G.geologicalControls
  economicCutoffClosed : G.economicCutoff

def GeologicalResourceModelClosed (G : GeologicalResourceModelPackage) : Prop :=
  G.tonnage ∧ G.grade ∧ G.geologicalControls ∧ G.economicCutoff

theorem geological_resource_model_closed_from_evidence
    (G : GeologicalResourceModelPackage) (E : GeologicalResourceModelEvidence G) :
    GeologicalResourceModelClosed G := by
  exact And.intro E.tonnageClosed (And.intro E.gradeClosed (And.intro E.geologicalControlsClosed E.economicCutoffClosed))

end EarthScienceEconomicGeologyTheoremCanonicalLaneLean
end HautevilleHouse