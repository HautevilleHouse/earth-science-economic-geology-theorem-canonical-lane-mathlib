import EarthScienceEconomicGeologyTheoremCanonicalLaneLean.MagnaticHydrothermalSystem

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyTheoremCanonicalLaneLean

structure GeochemicalReactiveTransportPackage {G : GeologicalSystemPackage} (P : PoreFluidFlowPackage G) where
  advectionDispersionEq: Prop
  chemicalReactions: Prop
  mineralDissolution: Prop
  mineralPrecipitation: Prop
  equilibriumKinetics: Prop

structure GeochemicalReactiveTransportEvidence {G : GeologicalSystemPackage} {P : PoreFluidFlowPackage G} (T : GeochemicalReactiveTransportPackage P) where
  advectionDispersionEqClosed: T.advectionDispersionEq
  chemicalReactionsClosed: T.chemicalReactions
  mineralDissolutionClosed: T.mineralDissolution
  mineralPrecipitationClosed: T.mineralPrecipitation
  equilibriumKineticsClosed: T.equilibriumKinetics

def GeochemicalReactiveTransportClosed {G : GeologicalSystemPackage} {P : PoreFluidFlowPackage G} (T : GeochemicalReactiveTransportPackage P) : Prop :=
  T.advectionDispersionEq ∧ T.chemicalReactions ∧ T.mineralDissolution ∧ T.mineralPrecipitation ∧ T.equilibriumKinetics

theorem geochemical_reactive_transport_closed_from_evidence {G : GeologicalSystemPackage} {P : PoreFluidFlowPackage G} (T : GeochemicalReactiveTransportPackage P) (E : GeochemicalReactiveTransportEvidence T) : GeochemicalReactiveTransportClosed T := by
  exact And.intro E.advectionDispersionEqClosed (And.intro E.chemicalReactionsClosed (And.intro E.mineralDissolutionClosed (And.intro E.mineralPrecipitationClosed E.equilibriumKineticsClosed)))

end EarthScienceEconomicGeologyTheoremCanonicalLaneLean
end HautevilleHouse