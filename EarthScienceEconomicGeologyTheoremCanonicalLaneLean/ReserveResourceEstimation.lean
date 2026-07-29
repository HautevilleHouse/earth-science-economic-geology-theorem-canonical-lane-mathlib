import EarthScienceEconomicGeologyTheoremCanonicalLaneLean.GeochemicalReactiveTransport

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyTheoremCanonicalLaneLean

structure ReserveResourceEstimationPackage {G : GeologicalSystemPackage} {P : PoreFluidFlowPackage G} {R : ReactiveTransportPackage P} {C : CrustalScalePackage R} {F : OreDepositFormationPackage C} (M : MineralResourceModel) where
  gradeTonnageCurve: Prop
  cutoffGrade: Prop
  insituResource: Prop
  recoverableReserve: Prop
  economicViability: Prop

structure ReserveResourceEstimationEvidence {G : GeologicalSystemPackage} {P : PoreFluidFlowPackage G} {R : ReactiveTransportPackage P} {C : CrustalScalePackage R} {F : OreDepositFormationPackage C} {M : MineralResourceModel} (E : ReserveResourceEstimationPackage M) where
  gradeTonnageCurveClosed: E.gradeTonnageCurve
  cutoffGradeClosed: E.cutoffGrade
  insituResourceClosed: E.insituResource
  recoverableReserveClosed: E.recoverableReserve
  economicViabilityClosed: E.economicViability

def ReserveResourceEstimationClosed {G : GeologicalSystemPackage} {P : PoreFluidFlowPackage G} {R : ReactiveTransportPackage P} {C : CrustalScalePackage R} {F : OreDepositFormationPackage C} {M : MineralResourceModel} (E : ReserveResourceEstimationPackage M) : Prop :=
  E.gradeTonnageCurve ∧ E.cutoffGrade ∧ E.insituResource ∧ E.recoverableReserve ∧ E.economicViability

theorem reserve_resource_estimation_closed_from_evidence {G : GeologicalSystemPackage} {P : PoreFluidFlowPackage G} {R : ReactiveTransportPackage P} {C : CrustalScalePackage R} {F : OreDepositFormationPackage C} {M : MineralResourceModel} (E : ReserveResourceEstimationPackage M) (Ev : ReserveResourceEstimationEvidence E) : ReserveResourceEstimationClosed E := by
  exact And.intro Ev.gradeTonnageCurveClosed (And.intro Ev.cutoffGradeClosed (And.intro Ev.insituResourceClosed (And.intro Ev.recoverableReserveClosed Ev.economicViabilityClosed)))

end EarthScienceEconomicGeologyTheoremCanonicalLaneLean
end HautevilleHouse