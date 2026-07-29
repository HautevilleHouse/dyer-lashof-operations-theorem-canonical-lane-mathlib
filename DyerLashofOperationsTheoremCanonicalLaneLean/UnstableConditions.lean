import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DyerLashofOperationsTheoremCanonicalLaneLean

structure UnstableConditionsPackage where
  loopSpace : Type u
  suspensionSpectrum : Type v
  dyerLashofOperations : Type w
  unstableCondition : Prop
  admissibleSequence : Prop
  excessCondition : Prop
  unstableConditionTerm : unstableCondition
  admissibleSequenceTerm : admissibleSequence
  excessConditionTerm : excessCondition

structure UnstableConditionsEvidence (U : UnstableConditionsPackage) where
  unstableConditionClosed : U.unstableCondition
  admissibleSequenceClosed : U.admissibleSequence
  excessConditionClosed : U.excessCondition

def UnstableConditionsClosed (U : UnstableConditionsPackage) : Prop :=
  U.unstableCondition ∧ U.admissibleSequence ∧ U.excessCondition

theorem unstable_conditions_closed_from_evidence (U : UnstableConditionsPackage) (E : UnstableConditionsEvidence U) : UnstableConditionsClosed U := by
  exact And.intro E.unstableConditionClosed (And.intro E.admissibleSequenceClosed E.excessConditionClosed)

end DyerLashofOperationsTheoremCanonicalLaneLean
end HautevilleHouse