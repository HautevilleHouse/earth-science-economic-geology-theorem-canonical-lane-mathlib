import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyTheoremCanonicalLaneLean

structure MiningEconomicModel where
  miningCost : Float
  processingCost : Float
  metalPrice : Float
  recoveryRate : Float
  netPresentValue : Float

def MiningEconomicModelClosed (M : MiningEconomicModel) : Prop :=
  M.netPresentValue > 0.0 ∧ M.recoveryRate > 0.0 ∧ M.recoveryRate ≤ 1.0

end EarthScienceEconomicGeologyTheoremCanonicalLaneLean
end HautevilleHouse