import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DyerLashofOperationsTheoremCanonicalLaneLean

structure NishidaRelationsPackage where
  operation : ℕ → (ℕ → ℕ) → (ℕ → ℕ)
  nishidaFormula : Prop
  ademCompatibility : Prop
  steenrodModuleStructure : Prop
  nishidaFormulaTerm : nishidaFormula
  ademCompatibilityTerm : ademCompatibility
  steenrodModuleStructureTerm : steenrodModuleStructure

structure NishidaRelationsEvidence (N : NishidaRelationsPackage) where
  nishidaFormulaClosed : N.nishidaFormula
  ademCompatibilityClosed : N.ademCompatibility
  steenrodModuleStructureClosed : N.steenrodModuleStructure

def NishidaRelationsClosed (N : NishidaRelationsPackage) : Prop :=
  N.nishidaFormula ∧ N.ademCompatibility ∧ N.steenrodModuleStructure

theorem nishida_relations_closed_from_evidence (N : NishidaRelationsPackage) (E : NishidaRelationsEvidence N) : NishidaRelationsClosed N := by
  exact And.intro E.nishidaFormulaClosed (And.intro E.ademCompatibilityClosed E.steenrodModuleStructureClosed)

end DyerLashofOperationsTheoremCanonicalLaneLean
end HautevilleHouse