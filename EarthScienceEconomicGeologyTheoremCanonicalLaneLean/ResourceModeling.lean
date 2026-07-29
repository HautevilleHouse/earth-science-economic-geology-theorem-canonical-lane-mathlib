import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyTheoremCanonicalLaneLean

structure GeostatisticalModel where
  variogram : Prop
  kriging : Prop
  simulation : Prop

structure ResourceModelingPackage where
  model : GeostatisticalModel
  tonnageGradeCurve : Prop
  resourceClassification : Prop

structure ResourceModelingEvidence (P : ResourceModelingPackage) where
  modelClosed : P.model.variogram ∧ P.model.kriging ∧ P.model.simulation
  tonnageGradeCurveClosed : P.tonnageGradeCurve
  resourceClassificationClosed : P.resourceClassification

def ResourceModelingClosed (P : ResourceModelingPackage) : Prop :=
  (P.model.variogram ∧ P.model.kriging ∧ P.model.simulation) ∧
  P.tonnageGradeCurve ∧ P.resourceClassification

theorem resource_modeling_closed_from_evidence (P : ResourceModelingPackage) (E : ResourceModelingEvidence P) :
    ResourceModelingClosed P := by
  exact And.intro E.modelClosed (And.intro E.tonnageGradeCurveClosed E.resourceClassificationClosed)

end EarthScienceEconomicGeologyTheoremCanonicalLaneLean
end HautevilleHouse