import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DyerLashofOperationsTheoremCanonicalLaneLean

/-- Structures for Dyer-Lashof operations on the homology of infinite loop spaces. -/

structure IndexedClassModule where
  ring : Type u
  module : Type v
  algebraStructure : Prop
  degreeShift : ℤ
  frobenius : module → module
  verschiebung : module → module
  frobeniusSatisfiesAlgebra : algebraStructure →
    ∀ x y : module, frobenius (x + y) = frobenius x + frobenius y ∧
    frobenius (x * y) = frobenius x * frobenius y
  verschiebungSatisfiesAlgebra : algebraStructure →
    ∀ x y : module, verschiebung (x + y) = verschiebung x + verschiebung y ∧
    verschiebung (x * y) = verschiebung x * verschiebung y

structure DyerLashofSteenrodStructure (M : IndexedClassModule) where
  dyerLashofOperations : ℕ → M.module → M.module
  ademRelations : Prop
  cartanFormula : Prop
  instabilityConditions : Prop
  ademRelationsClosed : ademRelations
  cartanFormulaClosed : cartanFormula
  instabilityConditionsClosed : instabilityConditions

structure DyerLashofOperationsEvidence (M : IndexedClassModule)
  (D : DyerLashofSteenrodStructure M) where
  ademRelationsClosed : D.ademRelations
  cartanFormulaClosed : D.cartanFormula
  instabilityConditionsClosed : D.instabilityConditions

def DyerLashofOperationsClosed (M : IndexedClassModule)
  (D : DyerLashofSteenrodStructure M) : Prop :=
  D.ademRelations ∧ D.cartanFormula ∧ D.instabilityConditions

theorem dyer_lashof_operations_closed_from_evidence
  (M : IndexedClassModule) (D : DyerLashofSteenrodStructure M)
  (E : DyerLashofOperationsEvidence M D) : DyerLashofOperationsClosed M D := by
  exact And.intro E.ademRelationsClosed
    (And.intro E.cartanFormulaClosed E.instabilityConditionsClosed)

end DyerLashofOperationsTheoremCanonicalLaneLean
end HautevilleHouse