import DyerLashofOperationsTheoremCanonicalLaneLean.DyerLashofOperationsStructures

namespace HautevilleHouse
namespace DyerLashofOperationsTheoremCanonicalLaneLean

/-- Instability conditions for Dyer-Lashof operations on the homology of spaces. -/

structure InstabilityCondition (M : IndexedClassModule)
  (D : DyerLashofSteenrodStructure M) where
  degreeBound : ℕ → Prop
  operationZeroOnLowDegrees : Prop
  degreeBoundClosed : degreeBound 0
  operationZeroOnLowDegreesClosed : operationZeroOnLowDegrees

def InstabilityClosed (M : IndexedClassModule)
  (D : DyerLashofSteenrodStructure M) (I : InstabilityCondition M D) : Prop :=
  I.degreeBound 0 ∧ I.operationZeroOnLowDegrees

theorem instability_closed_from_evidence (M : IndexedClassModule)
  (D : DyerLashofSteenrodStructure M) (I : InstabilityCondition M D)
  (degreeBoundClosed : I.degreeBound 0)
  (operationZeroOnLowDegreesClosed : I.operationZeroOnLowDegrees) :
  InstabilityClosed M D I := by
  exact And.intro degreeBoundClosed operationZeroOnLowDegreesClosed

end DyerLashofOperationsTheoremCanonicalLaneLean
end HautevilleHouse