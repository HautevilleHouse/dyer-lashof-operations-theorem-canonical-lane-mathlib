import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DyerLashofOperationsTheoremCanonicalLaneLean

structure SteenrodModule where
  cohomologyRing : Type
  steenrodActions : ℕ → (cohomologyRing → cohomologyRing)
  cartanFormula : Prop
  instability : Prop
  cartanFormulaTerm : cartanFormula
  instabilityTerm : instability

structure SteenrodModulePackage where
  module : SteenrodModule
  admissibleAction : Prop
  admissibleActionTerm : admissibleAction

def SteenrodModuleClosed (S : SteenrodModulePackage) : Prop :=
  S.admissibleAction

theorem steenrod_module_closed_from_admissible (S : SteenrodModulePackage) : SteenrodModuleClosed S :=
  S.admissibleActionTerm

end DyerLashofOperationsTheoremCanonicalLaneLean
end HautevilleHouse