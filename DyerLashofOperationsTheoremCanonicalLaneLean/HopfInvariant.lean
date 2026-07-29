import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DyerLashofOperationsTheoremCanonicalLaneLean

structure HopfInvariantPackage where
  spaceType : Type u
  map : spaceType → spaceType
  hopfInvariant : ℕ
  adamsTheorem : Prop
  whiteheadProduct : Prop
  freudenthalTheorem : Prop
  adamsTheoremTerm : adamsTheorem
  whiteheadProductTerm : whiteheadProduct
  freudenthalTheoremTerm : freudenthalTheorem

structure HopfInvariantEvidence (H : HopfInvariantPackage) where
  adamsTheoremClosed : H.adamsTheorem
  whiteheadProductClosed : H.whiteheadProduct
  freudenthalTheoremClosed : H.freudenthalTheorem

def HopfInvariantClosed (H : HopfInvariantPackage) : Prop :=
  H.adamsTheorem ∧ H.whiteheadProduct ∧ H.freudenthalTheorem

theorem hopf_invariant_closed_from_evidence (H : HopfInvariantPackage) (E : HopfInvariantEvidence H) : HopfInvariantClosed H := by
  exact And.intro E.adamsTheoremClosed (And.intro E.whiteheadProductClosed E.freudenthalTheoremClosed)

end DyerLashofOperationsTheoremCanonicalLaneLean
end HautevilleHouse