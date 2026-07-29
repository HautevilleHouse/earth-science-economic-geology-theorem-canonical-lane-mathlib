import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyTheorem

structure GeophysicalExplorationPackage (G : GeologicTerrainPackage) (M : MineralDepositPackage G) where
  magneticSurvey : Prop
  gravitySurvey : Prop
  electricalResistivity : Prop
  seismicReflection : Prop

structure GeophysicalExplorationEvidence {G : GeologicTerrainPackage} {M : MineralDepositPackage G} (P : GeophysicalExplorationPackage G M) where
  magneticSurveyClosed : P.magneticSurvey
  gravitySurveyClosed : P.gravitySurvey
  electricalResistivityClosed : P.electricalResistivity
  seismicReflectionClosed : P.seismicReflection

def GeophysicalExplorationClosed {G : GeologicTerrainPackage} {M : MineralDepositPackage G} (P : GeophysicalExplorationPackage G M) : Prop :=
  P.magneticSurvey ∧ P.gravitySurvey ∧ P.electricalResistivity ∧ P.seismicReflection

theorem geophysical_exploration_closed_from_evidence {G : GeologicTerrainPackage} {M : MineralDepositPackage G} (P : GeophysicalExplorationPackage G M) (E : GeophysicalExplorationEvidence P) : GeophysicalExplorationClosed P := by
  exact And.intro E.magneticSurveyClosed (And.intro E.gravitySurveyClosed (And.intro E.electricalResistivityClosed E.seismicReflectionClosed))

end EarthScienceEconomicGeologyTheorem
end HautevilleHouse