import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DyerLashofOperationsTheoremCanonicalLaneLean

structure SteenrodAlgebraPackage where
  algebraType : Type u
  product : algebraType → algebraType → algebraType
  unit : algebraType
  coproduct : algebraType → algebraType ⊗ algebraType
  antipode : algebraType → algebraType
  steenrodOperations : ℕ → algebraType → algebraType
  unstableCondition : Prop
  ademRelations : Prop
  cartanFormula : Prop
  unstableConditionTerm : unstableCondition
  ademRelationsTerm : ademRelations
  cartanFormulaTerm : cartanFormula

structure SteenrodAlgebraEvidence (S : SteenrodAlgebraPackage) where
  unstableConditionClosed : S.unstableCondition
  ademRelationsClosed : S.ademRelations
  cartanFormulaClosed : S.cartanFormula

def SteenrodAlgebraClosed (S : SteenrodAlgebraPackage) : Prop :=
  S.unstableCondition ∧ S.ademRelations ∧ S.cartanFormula

theorem steenrod_algebra_closed_from_evidence (S : SteenrodAlgebraPackage) (E : SteenrodAlgebraEvidence S) : SteenrodAlgebraClosed S := by
  exact And.intro E.unstableConditionClosed (And.intro E.ademRelationsClosed E.cartanFormulaClosed)

end DyerLashofOperationsTheoremCanonicalLaneLean
end HautevilleHouse