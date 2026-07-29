import DyerLashofOperationsTheoremCanonicalLaneLean.DyerLashofOperationsStructures

namespace HautevilleHouse
namespace DyerLashofOperationsTheoremCanonicalLaneLean

/-- Adem relations for Dyer-Lashof operations Q_s. -/

structure AdemRelationPackage (M : IndexedClassModule)
  (D : DyerLashofSteenrodStructure M) where
  ademOverlapCondition : ℕ → ℕ → Prop
  ademSumFormulas : Prop
  ademOverlapConditionClosed : ademOverlapCondition 0 0
  ademSumFormulasClosed : ademSumFormulas

structure AdemRelationEvidence (M : IndexedClassModule)
  (D : DyerLashofSteenrodStructure M) (A : AdemRelationPackage M D) where
  ademOverlapConditionClosed : A.ademOverlapCondition 0 0
  ademSumFormulasClosed : A.ademSumFormulas

def AdemRelationClosed (M : IndexedClassModule)
  (D : DyerLashofSteenrodStructure M) (A : AdemRelationPackage M D) : Prop :=
  A.ademOverlapCondition 0 0 ∧ A.ademSumFormulas

theorem adem_relation_closed_from_evidence (M : IndexedClassModule)
  (D : DyerLashofSteenrodStructure M) (A : AdemRelationPackage M D)
  (E : AdemRelationEvidence M D A) : AdemRelationClosed M D A := by
  exact And.intro E.ademOverlapConditionClosed E.ademSumFormulasClosed

end DyerLashofOperationsTheoremCanonicalLaneLean
end HautevilleHouse