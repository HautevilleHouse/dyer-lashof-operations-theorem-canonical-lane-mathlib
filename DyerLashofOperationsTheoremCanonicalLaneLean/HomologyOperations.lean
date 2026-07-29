import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DyerLashofOperationsTheoremCanonicalLaneLean

structure HomologyOperationsPackage where
  homologyTheory : Type u
  chainComplex : Type v
  dyerLashofAction : Prop
  homologyLevelOperations : Prop
  suspensionAxiom : Prop
  naturality : Prop
  dyerLashofActionTerm : dyerLashofAction
  homologyLevelOperationsTerm : homologyLevelOperations
  suspensionAxiomTerm : suspensionAxiom
  naturalityTerm : naturality

structure HomologyOperationsEvidence (H : HomologyOperationsPackage) where
  dyerLashofActionClosed : H.dyerLashofAction
  homologyLevelOperationsClosed : H.homologyLevelOperations
  suspensionAxiomClosed : H.suspensionAxiom
  naturalityClosed : H.naturality

def HomologyOperationsClosed (H : HomologyOperationsPackage) : Prop :=
  H.dyerLashofAction ∧ H.homologyLevelOperations ∧ H.suspensionAxiom ∧ H.naturality

theorem homology_operations_closed_from_evidence (H : HomologyOperationsPackage) (E : HomologyOperationsEvidence H) : HomologyOperationsClosed H := by
  exact And.intro E.dyerLashofActionClosed (And.intro E.homologyLevelOperationsClosed (And.intro E.suspensionAxiomClosed E.naturalityClosed))

end DyerLashofOperationsTheoremCanonicalLaneLean
end HautevilleHouse