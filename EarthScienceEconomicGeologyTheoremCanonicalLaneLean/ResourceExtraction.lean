import EarthScienceEconomicGeologyTheoremCanonicalLaneLean.EconomicEvaluation

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyTheoremCanonicalLaneLean

structure ResourceExtractionPackage {G : GeologicalResourceModelPackage} {R : GeologicalResourceModelEvidence G}
    {E : EconomicEvaluationPackage R} (Ev : EconomicEvaluationEvidence E) where
  extractionMethod : Prop
  recoveryRate : Prop
  environmentalImpact : Prop
  miningCost : Prop
  processingCost : Prop
  extractionTimeline : Prop

structure ResourceExtractionEvidence {G : GeologicalResourceModelPackage} {R : GeologicalResourceModelEvidence G}
    {E : EconomicEvaluationPackage R} {Ev : EconomicEvaluationEvidence E}
    (X : ResourceExtractionPackage Ev) where
  extractionMethodClosed : X.extractionMethod
  recoveryRateClosed : X.recoveryRate
  environmentalImpactClosed : X.environmentalImpact
  miningCostClosed : X.miningCost
  processingCostClosed : X.processingCost
  extractionTimelineClosed : X.extractionTimeline

def ResourceExtractionClosed {G : GeologicalResourceModelPackage} {R : GeologicalResourceModelEvidence G}
    {E : EconomicEvaluationPackage R} {Ev : EconomicEvaluationEvidence E}
    (X : ResourceExtractionPackage Ev) : Prop :=
  X.extractionMethod ∧ X.recoveryRate ∧ X.environmentalImpact ∧ X.miningCost ∧ X.processingCost ∧ X.extractionTimeline

theorem resource_extraction_closed_from_evidence
    {G : GeologicalResourceModelPackage} {R : GeologicalResourceModelEvidence G}
    {E : EconomicEvaluationPackage R} {Ev : EconomicEvaluationEvidence E}
    (X : ResourceExtractionPackage Ev) (Ex : ResourceExtractionEvidence X) :
    ResourceExtractionClosed X := by
  exact And.intro Ex.extractionMethodClosed (And.intro Ex.recoveryRateClosed
    (And.intro Ex.environmentalImpactClosed (And.intro Ex.miningCostClosed
      (And.intro Ex.processingCostClosed Ex.extractionTimelineClosed))))

end EarthScienceEconomicGeologyTheoremCanonicalLaneLean
end HautevilleHouse