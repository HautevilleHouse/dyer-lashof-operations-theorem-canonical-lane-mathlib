import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DyerLashofOperationsTheoremCanonicalLaneLean

structure DyerLashofAlgebraPackage where
  groundRing : Type u
  modTwoSteenrodAlgebra : Type v
  dyerLashofOperations : Type w
  ademRelations : Prop
  cartanFormula : Prop
  chainLevelRealization : Prop
  ringStructure : Prop
  ademRelationsTerm : ademRelations
  cartanFormulaTerm : cartanFormula
  chainLevelRealizationTerm : chainLevelRealization
  ringStructureTerm : ringStructure

structure DyerLashofAlgebraEvidence (D : DyerLashofAlgebraPackage) where
  ademRelationsClosed : D.ademRelations
  cartanFormulaClosed : D.cartanFormula
  chainLevelRealizationClosed : D.chainLevelRealization
  ringStructureClosed : D.ringStructure

def DyerLashofAlgebraClosed (D : DyerLashofAlgebraPackage) : Prop :=
  D.ademRelations ∧ D.cartanFormula ∧ D.chainLevelRealization ∧ D.ringStructure

theorem dyer_lashof_algebra_closed_from_evidence (D : DyerLashofAlgebraPackage) (E : DyerLashofAlgebraEvidence D) : DyerLashofAlgebraClosed D := by
  exact And.intro E.ademRelationsClosed (And.intro E.cartanFormulaClosed (And.intro E.chainLevelRealizationClosed E.ringStructureClosed))

end DyerLashofOperationsTheoremCanonicalLaneLean
end HautevilleHouse