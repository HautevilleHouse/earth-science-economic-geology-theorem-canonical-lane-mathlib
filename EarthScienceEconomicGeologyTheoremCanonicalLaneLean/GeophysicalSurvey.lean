import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyTheoremCanonicalLaneLean

structure GeophysicalSurveyPackage where
  magneticSurvey : Prop
  gravitySurvey : Prop
  seismicSurvey : Prop
  electricalSurvey : Prop

def GeophysicalSurveyClosed (G : GeophysicalSurveyPackage) : Prop :=
  G.magneticSurvey ∨ G.gravitySurvey ∨ G.seismicSurvey ∨ G.electricalSurvey

end EarthScienceEconomicGeologyTheoremCanonicalLaneLean
end HautevilleHouse