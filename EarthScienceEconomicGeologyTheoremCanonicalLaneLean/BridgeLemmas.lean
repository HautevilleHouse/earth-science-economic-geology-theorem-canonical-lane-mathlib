import canonicalLaneMathlib.AdmissibleClass
import EarthScienceEconomicGeologyTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  EarthScienceEconomicGeologyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EarthScienceEconomicGeologyTheoremCanonicalLaneLean
end HautevilleHouse