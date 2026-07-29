import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyTheoremCanonicalLaneLean

structure GeophysicalProspectingPackage where
  magneticSurvey : Prop
  electromagneticSurvey : Prop
  seismicSurvey : Prop
  gravitySurvey : Prop
  resistivitySurvey : Prop
  dataInterpretation : Prop

structure GeophysicalProspectingEvidence (P : GeophysicalProspectingPackage) where
  magneticSurveyClosed : P.magneticSurvey
  electromagneticSurveyClosed : P.electromagneticSurvey
  seismicSurveyClosed : P.seismicSurvey
  gravitySurveyClosed : P.gravitySurvey
  resistivitySurveyClosed : P.resistivitySurvey
  dataInterpretationClosed : P.dataInterpretation

def GeophysicalProspectingClosed (P : GeophysicalProspectingPackage) : Prop :=
  P.magneticSurvey ∧ P.electromagneticSurvey ∧ P.seismicSurvey ∧ P.gravitySurvey ∧ P.resistivitySurvey ∧ P.dataInterpretation

theorem geophysical_prospecting_closed_from_evidence (P : GeophysicalProspectingPackage) (E : GeophysicalProspectingEvidence P) :
    GeophysicalProspectingClosed P := by
  exact And.intro E.magneticSurveyClosed (And.intro E.electromagneticSurveyClosed (And.intro E.seismicSurveyClosed (And.intro E.gravitySurveyClosed (And.intro E.resistivitySurveyClosed E.dataInterpretationClosed))))

end EarthScienceEconomicGeologyTheoremCanonicalLaneLean
end HautevilleHouse