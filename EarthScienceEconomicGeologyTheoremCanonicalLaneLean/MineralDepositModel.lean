import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyTheoremCanonicalLaneLean

structure MineralDepositModel where
  oreBodyGeometry : Type
  gradeTonnageCurve : Prop
  geneticModelConsistent : Prop
  explorationPotential : Prop

structure MineralDepositEvidence (M : MineralDepositModel) where
  gradeTonnageCurveClosed : M.gradeTonnageCurve
  geneticModelConsistentClosed : M.geneticModelConsistent
  explorationPotentialClosed : M.explorationPotential

def MineralDepositClosed (M : MineralDepositModel) : Prop :=
  M.gradeTonnageCurve ∧ M.geneticModelConsistent ∧ M.explorationPotential

theorem mineral_deposit_closed_from_evidence
    (M : MineralDepositModel) (E : MineralDepositEvidence M) :
    MineralDepositClosed M := by
  exact And.intro E.gradeTonnageCurveClosed
    (And.intro E.geneticModelConsistentClosed E.explorationPotentialClosed)

end EarthScienceEconomicGeologyTheoremCanonicalLaneLean
end HautevilleHouse
