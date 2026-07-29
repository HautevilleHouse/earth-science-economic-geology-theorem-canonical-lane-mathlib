import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEconomicGeologyTheoremCanonicalLaneLean

structure MineralDepositGenesisPackage where
  hydrothermalProcess : Prop
  magmaticProcess : Prop
  sedimentaryProcess : Prop
  metamorphicProcess : Prop
  tectonicSetting : Prop

structure MineralDepositGenesisEvidence (P : MineralDepositGenesisPackage) where
  hydrothermalProcessClosed : P.hydrothermalProcess
  magmaticProcessClosed : P.magmaticProcess
  sedimentaryProcessClosed : P.sedimentaryProcess
  metamorphicProcessClosed : P.metamorphicProcess
  tectonicSettingClosed : P.tectonicSetting

def MineralDepositGenesisClosed (P : MineralDepositGenesisPackage) : Prop :=
  P.hydrothermalProcess ∧ P.magmaticProcess ∧ P.sedimentaryProcess ∧ P.metamorphicProcess ∧ P.tectonicSetting

theorem mineral_deposit_genesis_closed_from_evidence (P : MineralDepositGenesisPackage) (E : MineralDepositGenesisEvidence P) :
    MineralDepositGenesisClosed P := by
  exact And.intro E.hydrothermalProcessClosed (And.intro E.magmaticProcessClosed (And.intro E.sedimentaryProcessClosed (And.intro E.metamorphicProcessClosed E.tectonicSettingClosed)))

end EarthScienceEconomicGeologyTheoremCanonicalLaneLean
end HautevilleHouse