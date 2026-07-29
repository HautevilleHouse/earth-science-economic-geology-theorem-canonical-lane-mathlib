import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyTheoremCanonicalLaneLean

structure OreGenesisPackage where
  magmaticProcess : Prop
  hydrothermalProcess : Prop
  sedimentaryProcess : Prop
  metamorphicProcess : Prop

def OreGenesisClosed (O : OreGenesisPackage) : Prop :=
  O.magmaticProcess ∨ O.hydrothermalProcess ∨ O.sedimentaryProcess ∨ O.metamorphicProcess

end EarthScienceEconomicGeologyTheoremCanonicalLaneLean
end HautevilleHouse