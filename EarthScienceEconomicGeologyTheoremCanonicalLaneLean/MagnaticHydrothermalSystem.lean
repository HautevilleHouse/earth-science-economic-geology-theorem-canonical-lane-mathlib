import EarthScienceEconomicGeologyTheoremCanonicalLaneLean.OreDepositFormation

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyTheoremCanonicalLaneLean

structure MagmaticHydrothermalSystemPackage {G : GeologicalSystemPackage} {P : PoreFluidFlowPackage G} {R : ReactiveTransportPackage P} {C : CrustalScalePackage R} {F : OreDepositFormationPackage C} (M : MagmaChamberPackage) where
  magmaChamberCrystallization: Prop
  fluidExsolution: Prop
  metalPartitioning: Prop
  hydrothermalCirculation: Prop

structure MagmaticHydrothermalSystemEvidence {G : GeologicalSystemPackage} {P : PoreFluidFlowPackage G} {R : ReactiveTransportPackage P} {C : CrustalScalePackage R} {F : OreDepositFormationPackage C} {M : MagmaChamberPackage} (H : MagmaticHydrothermalSystemPackage M) where
  magmaChamberCrystallizationClosed: H.magmaChamberCrystallization
  fluidExsolutionClosed: H.fluidExsolution
  metalPartitioningClosed: H.metalPartitioning
  hydrothermalCirculationClosed: H.hydrothermalCirculation

def MagmaticHydrothermalSystemClosed {G : GeologicalSystemPackage} {P : PoreFluidFlowPackage G} {R : ReactiveTransportPackage P} {C : CrustalScalePackage R} {F : OreDepositFormationPackage C} {M : MagmaChamberPackage} (H : MagmaticHydrothermalSystemPackage M) : Prop :=
  H.magmaChamberCrystallization ∧ H.fluidExsolution ∧ H.metalPartitioning ∧ H.hydrothermalCirculation

theorem magmatic_hydrothermal_system_closed_from_evidence {G : GeologicalSystemPackage} {P : PoreFluidFlowPackage G} {R : ReactiveTransportPackage P} {C : CrustalScalePackage R} {F : OreDepositFormationPackage C} {M : MagmaChamberPackage} (H : MagmaticHydrothermalSystemPackage M) (E : MagmaticHydrothermalSystemEvidence H) : MagmaticHydrothermalSystemClosed H := by
  exact And.intro E.magmaChamberCrystallizationClosed (And.intro E.fluidExsolutionClosed (And.intro E.metalPartitioningClosed E.hydrothermalCirculationClosed))

end EarthScienceEconomicGeologyTheoremCanonicalLaneLean
end HautevilleHouse