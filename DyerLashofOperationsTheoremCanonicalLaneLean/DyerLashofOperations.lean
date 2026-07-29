import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DyerLashofOperationsTheoremCanonicalLaneLean.DyerLashofAlgebraPackage

namespace HautevilleHouse
namespace DyerLashofOperationsTheoremCanonicalLaneLean

structure DyerLashofOperationsPackage (D : DyerLashofAlgebraPackage) where
  steenrodSquares : D.underlyingRing -> Nat -> D.underlyingRing
  ademAction : Prop
  cartanFormula : Prop
  instability : Prop
  ademActionTerm : ademAction
  cartanFormulaTerm : cartanFormula
  instabilityTerm : instability

structure DyerLashofOperationsEvidence {D : DyerLashofAlgebraPackage}
    (O : DyerLashofOperationsPackage D) where
  ademActionClosed : O.ademAction
  cartanFormulaClosed : O.cartanFormula
  instabilityClosed : O.instability

def DyerLashofOperationsClosed {D : DyerLashofAlgebraPackage}
    (O : DyerLashofOperationsPackage D) : Prop :=
  O.ademAction ∧ O.cartanFormula ∧ O.instability

theorem dyer_lashof_operations_closed_from_evidence
    {D : DyerLashofAlgebraPackage} (O : DyerLashofOperationsPackage D)
    (E : DyerLashofOperationsEvidence O) : DyerLashofOperationsClosed O := by
  exact And.intro E.ademActionClosed (And.intro E.cartanFormulaClosed E.instabilityClosed)

end DyerLashofOperationsTheoremCanonicalLaneLean
end HautevilleHouse