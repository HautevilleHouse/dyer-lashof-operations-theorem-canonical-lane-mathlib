import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DyerLashofOperationsTheoremCanonicalLaneLean

structure TopologicalRealizationPackage where
  littleCubesOperad : Type u
  infiniteLoopSpace : Type v
  dyerLashofAction : Prop
  homotopyCoherence : Prop
  operadAction : Prop
  delooping : Prop
  dyerLashofActionTerm : dyerLashofAction
  homotopyCoherenceTerm : homotopyCoherence
  operadActionTerm : operadAction
  deloopingTerm : delooping

structure TopologicalRealizationEvidence (T : TopologicalRealizationPackage) where
  dyerLashofActionClosed : T.dyerLashofAction
  homotopyCoherenceClosed : T.homotopyCoherence
  operadActionClosed : T.operadAction
  deloopingClosed : T.delooping

def TopologicalRealizationClosed (T : TopologicalRealizationPackage) : Prop :=
  T.dyerLashofAction ∧ T.homotopyCoherence ∧ T.operadAction ∧ T.delooping

theorem topological_realization_closed_from_evidence (T : TopologicalRealizationPackage) (E : TopologicalRealizationEvidence T) : TopologicalRealizationClosed T := by
  exact And.intro E.dyerLashofActionClosed (And.intro E.homotopyCoherenceClosed (And.intro E.operandActionClosed E.deloopingClosed))

end DyerLashofOperationsTheoremCanonicalLaneLean
end HautevilleHouse