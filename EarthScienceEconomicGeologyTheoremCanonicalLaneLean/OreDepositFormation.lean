import EarthScienceEconomicGeologyTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyTheoremCanonicalLaneLean

structure OreDepositFormationPackage {G : GeologicalSystemPackage} {P : PoreFluidFlowPackage G} {R : ReactiveTransportPackage P} (C : CrustalScalePackage R) where
  sourceRegion: Type u
  fluidPathways: Type v
  metalSource: Prop
  fluidMigration: Prop
  precipitationMechanism: Prop
  structuralTrap: Prop

structure OreDepositFormationEvidence {G : GeologicalSystemPackage} {P : PoreFluidFlowPackage G} {R : ReactiveTransportPackage P} {C : CrustalScalePackage R} (F : OreDepositFormationPackage C) where
  metalSourceClosed: F.metalSource
  fluidMigrationClosed: F.fluidMigration
  precipitationMechanismClosed: F.precipitationMechanism
  structuralTrapClosed: F.structuralTrap

def OreDepositFormationClosed {G : GeologicalSystemPackage} {P : PoreFluidFlowPackage G} {R : ReactiveTransportPackage P} {C : CrustalScalePackage R} (F : OreDepositFormationPackage C) : Prop :=
  F.metalSource ∧ F.fluidMigration ∧ F.precipitationMechanism ∧ F.structuralTrap

theorem ore_deposit_formation_closed_from_evidence {G : GeologicalSystemPackage} {P : PoreFluidFlowPackage G} {R : ReactiveTransportPackage P} {C : CrustalScalePackage R} (F : OreDepositFormationPackage C) (E : OreDepositFormationEvidence F) : OreDepositFormationClosed F := by
  exact And.intro E.metalSourceClosed (And.intro E.fluidMigrationClosed (And.intro E.precipitationMechanismClosed E.structuralTrapClosed))

end EarthScienceEconomicGeologyTheoremCanonicalLaneLean
end HautevilleHouse