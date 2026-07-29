import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DyerLashofOperationsTheoremCanonicalLaneLean

structure KudoArakiTheoremPackage where
  homologyType : Type u
  operation : ℕ → homologyType → homologyType
  kudoArakiFormula : Prop
  compatibilityWithStone : Prop
  homologyOfInfiniteLoopSpaces : Prop
  kudoArakiFormulaTerm : kudoArakiFormula
  compatibilityWithStoneTerm : compatibilityWithStone
  homologyOfInfiniteLoopSpacesTerm : homologyOfInfiniteLoopSpaces

structure KudoArakiTheoremEvidence (K : KudoArakiTheoremPackage) where
  kudoArakiFormulaClosed : K.kudoArakiFormula
  compatibilityWithStoneClosed : K.compatibilityWithStone
  homologyOfInfiniteLoopSpacesClosed : K.homologyOfInfiniteLoopSpaces

def KudoArakiTheoremClosed (K : KudoArakiTheoremPackage) : Prop :=
  K.kudoArakiFormula ∧ K.compatibilityWithStone ∧ K.homologyOfInfiniteLoopSpaces

theorem kudo_araki_theorem_closed_from_evidence (K : KudoArakiTheoremPackage) (E : KudoArakiTheoremEvidence K) : KudoArakiTheoremClosed K := by
  exact And.intro E.kudoArakiFormulaClosed (And.intro E.compatibilityWithStoneClosed E.homologyOfInfiniteLoopSpacesClosed)

end DyerLashofOperationsTheoremCanonicalLaneLean
end HautevilleHouse