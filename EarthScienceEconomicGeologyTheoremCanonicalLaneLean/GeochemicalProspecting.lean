import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyTheorem

structure GeochemicalProspectingPackage (G : GeologicTerrainPackage) (M : MineralDepositPackage G) where
  soilSamplingGrid : Prop
  streamSedimentAnomalies : Prop
  geochemicalPathfinders : Prop
  backgroundThresholds : Prop

structure GeochemicalProspectingEvidence {G : GeologicTerrainPackage} {M : MineralDepositPackage G} (P : GeochemicalProspectingPackage G M) where
  soilSamplingGridClosed : P.soilSamplingGrid
  streamSedimentAnomaliesClosed : P.streamSedimentAnomalies
  geochemicalPathfindersClosed : P.geochemicalPathfinders
  backgroundThresholdsClosed : P.backgroundThresholds

def GeochemicalProspectingClosed {G : GeologicTerrainPackage} {M : MineralDepositPackage G} (P : GeochemicalProspectingPackage G M) : Prop :=
  P.soilSamplingGrid ∧ P.streamSedimentAnomalies ∧ P.geochemicalPathfinders ∧ P.backgroundThresholds

theorem geochemical_prospecting_closed_from_evidence {G : GeologicTerrainPackage} {M : MineralDepositPackage G} (P : GeochemicalProspectingPackage G M) (E : GeochemicalProspectingEvidence P) : GeochemicalProspectingClosed P := by
  exact And.intro E.soilSamplingGridClosed (And.intro E.streamSedimentAnomaliesClosed (And.intro E.geochemicalPathfindersClosed E.backgroundThresholdsClosed))

end EarthScienceEconomicGeologyTheorem
end HautevilleHouse