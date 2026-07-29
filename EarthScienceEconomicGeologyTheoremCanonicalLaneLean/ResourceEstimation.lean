import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyTheoremCanonicalLaneLean

structure ResourceEstimationPackage where
  tonnage : Float
  grade : Float
  cutOffGrade : Float
  resourceCategory : String

def ResourceEstimationClosed (R : ResourceEstimationPackage) : Prop :=
  R.tonnage > 0.0 ∧ R.grade > 0.0 ∧ R.cutOffGrade > 0.0

end EarthScienceEconomicGeologyTheoremCanonicalLaneLean
end HautevilleHouse