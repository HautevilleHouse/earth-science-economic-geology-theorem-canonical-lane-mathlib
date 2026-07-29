import EarthScienceEconomicGeologyTheoremCanonicalLaneLean.ReserveResourceEstimation

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyTheoremCanonicalLaneLean

structure ExplorationTargetingPackage {G : GeologicalSystemPackage} {P : PoreFluidFlowPackage G} {R : ReactiveTransportPackage P} {C : CrustalScalePackage R} {F : OreDepositFormationPackage C} {M : MineralResourceModel} (S : SpatialAnalysis) where
  geophysicalAnomaly: Prop
  geochemicalAnomaly: Prop
  geologicalFavorability: Prop
  drillTargetGeneration: Prop
  riskAssessment: Prop

structure ExplorationTargetingEvidence {G : GeologicalSystemPackage} {P : PoreFluidFlowPackage G} {R : ReactiveTransportPackage P} {C : CrustalScalePackage R} {F : OreDepositFormationPackage C} {M : MineralResourceModel} {S : SpatialAnalysis} (T : ExplorationTargetingPackage S) where
  geophysicalAnomalyClosed: T.geophysicalAnomaly
  geochemicalAnomalyClosed: T.geochemicalAnomaly
  geologicalFavorabilityClosed: T.geologicalFavorability
  drillTargetGenerationClosed: T.drillTargetGeneration
  riskAssessmentClosed: T.riskAssessment

def ExplorationTargetingClosed {G : GeologicalSystemPackage} {P : PoreFluidFlowPackage G} {R : ReactiveTransportPackage P} {C : CrustalScalePackage R} {F : OreDepositFormationPackage C} {M : MineralResourceModel} {S : SpatialAnalysis} (T : ExplorationTargetingPackage S) : Prop :=
  T.geophysicalAnomaly ∧ T.geochemicalAnomaly ∧ T.geologicalFavorability ∧ T.drillTargetGeneration ∧ T.riskAssessment

theorem exploration_targeting_closed_from_evidence {G : GeologicalSystemPackage} {P : PoreFluidFlowPackage G} {R : ReactiveTransportPackage P} {C : CrustalScalePackage R} {F : OreDepositFormationPackage C} {M : MineralResourceModel} {S : SpatialAnalysis} (T : ExplorationTargetingPackage S) (Ev : ExplorationTargetingEvidence T) : ExplorationTargetingClosed T := by
  exact And.intro Ev.geophysicalAnomalyClosed (And.intro Ev.geochemicalAnomalyClosed (And.intro Ev.geologicalFavorabilityClosed (And.intro Ev.drillTargetGenerationClosed Ev.riskAssessmentClosed)))

end EarthScienceEconomicGeologyTheoremCanonicalLaneLean
end HautevilleHouse