import EarthScienceEconomicGeologyTheoremCanonicalLaneLean.ExplorationTargeting

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyTheoremCanonicalLaneLean

structure EconomicViabilityAssessmentPackage {G : GeologicalSystemPackage} {P : PoreFluidFlowPackage G} {R : ReactiveTransportPackage P} {C : CrustalScalePackage R} {F : OreDepositFormationPackage C} {M : MineralResourceModel} {S : SpatialAnalysis} (E : EconomicModel) where
  netPresentValue: Prop
  internalRateOfReturn: Prop
  paybackPeriod: Prop
  sensitivityAnalysis: Prop
  riskAdjustedReturn: Prop

structure EconomicViabilityAssessmentEvidence {G : GeologicalSystemPackage} {P : PoreFluidFlowPackage G} {R : ReactiveTransportPackage P} {C : CrustalScalePackage R} {F : OreDepositFormationPackage C} {M : MineralResourceModel} {S : SpatialAnalysis} {E : EconomicModel} (A : EconomicViabilityAssessmentPackage E) where
  netPresentValueClosed: A.netPresentValue
  internalRateOfReturnClosed: A.internalRateOfReturn
  paybackPeriodClosed: A.paybackPeriod
  sensitivityAnalysisClosed: A.sensitivityAnalysis
  riskAdjustedReturnClosed: A.riskAdjustedReturn

def EconomicViabilityAssessmentClosed {G : GeologicalSystemPackage} {P : PoreFluidFlowPackage G} {R : ReactiveTransportPackage P} {C : CrustalScalePackage R} {F : OreDepositFormationPackage C} {M : MineralResourceModel} {S : SpatialAnalysis} {E : EconomicModel} (A : EconomicViabilityAssessmentPackage E) : Prop :=
  A.netPresentValue ∧ A.internalRateOfReturn ∧ A.paybackPeriod ∧ A.sensitivityAnalysis ∧ A.riskAdjustedReturn

theorem economic_viability_assessment_closed_from_evidence {G : GeologicalSystemPackage} {P : PoreFluidFlowPackage G} {R : ReactiveTransportPackage P} {C : CrustalScalePackage R} {F : OreDepositFormationPackage C} {M : MineralResourceModel} {S : SpatialAnalysis} {E : EconomicModel} (A : EconomicViabilityAssessmentPackage E) (Ev : EconomicViabilityAssessmentEvidence A) : EconomicViabilityAssessmentClosed A := by
  exact And.intro Ev.netPresentValueClosed (And.intro Ev.internalRateOfReturnClosed (And.intro Ev.paybackPeriodClosed (And.intro Ev.sensitivityAnalysisClosed Ev.riskAdjustedReturnClosed)))

end EarthScienceEconomicGeologyTheoremCanonicalLaneLean
end HautevilleHouse