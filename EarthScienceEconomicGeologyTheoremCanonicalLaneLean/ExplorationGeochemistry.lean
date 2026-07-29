import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyTheoremCanonicalLaneLean

structure GeochemicalExplorationPackage where
  soilSampling : Prop
  rockSampling : Prop
  streamSedimentSampling : Prop
  geochemicalAnomalyDetection : Prop
  pathfinderElements : Prop

structure GeochemicalExplorationEvidence (P : GeochemicalExplorationPackage) where
  soilSamplingClosed : P.soilSampling
  rockSamplingClosed : P.rockSampling
  streamSedimentSamplingClosed : P.streamSedimentSampling
  geochemicalAnomalyDetectionClosed : P.geochemicalAnomalyDetection
  pathfinderElementsClosed : P.pathfinderElements

def GeochemicalExplorationClosed (P : GeochemicalExplorationPackage) : Prop :=
  P.soilSampling ∧ P.rockSampling ∧ P.streamSedimentSampling ∧ P.geochemicalAnomalyDetection ∧ P.pathfinderElements

theorem geochemical_exploration_closed_from_evidence (P : GeochemicalExplorationPackage) (E : GeochemicalExplorationEvidence P) :
    GeochemicalExplorationClosed P := by
  exact And.intro E.soilSamplingClosed (And.intro E.rockSamplingClosed (And.intro E.streamSedimentSamplingClosed (And.intro E.geochemicalAnomalyDetectionClosed E.pathfinderElementsClosed)))

end EarthScienceEconomicGeologyTheoremCanonicalLaneLean
end HautevilleHouse