import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyTheoremCanonicalLaneLean

structure GeochemicalExplorationPackage where
  soilSampling : Prop
  rockChipSampling : Prop
  streamSedimentSampling : Prop
  geochemicalAnomaly : Prop

def GeochemicalExplorationClosed (G : GeochemicalExplorationPackage) : Prop :=
  G.soilSampling ∧ G.rockChipSampling ∧ G.streamSedimentSampling ∧ G.geochemicalAnomaly

end EarthScienceEconomicGeologyTheoremCanonicalLaneLean
end HautevilleHouse