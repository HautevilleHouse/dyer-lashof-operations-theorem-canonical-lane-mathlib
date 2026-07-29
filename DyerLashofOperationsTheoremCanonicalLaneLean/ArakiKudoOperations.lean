import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DyerLashofOperationsTheoremCanonicalLaneLean

structure ArakiKudoOperation (n : ℕ) where
  internalDegree : ℕ
  capProductFormula : Prop
  hopfInvariantProperty : Prop
  capProductFormulaTerm : capProductFormula
  hopfInvariantPropertyTerm : hopfInvariantProperty

structure ArakiKudoAlgebra where
  operations : ℕ → ArakiKudoOperation
  algebraStructure : Prop
  algebraStructureTerm : algebraStructure

def ArakiKudoClosed (A : ArakiKudoAlgebra) : Prop :=
  A.algebraStructure

theorem araki_kudo_closed_from_structure (A : ArakiKudoAlgebra) : ArakiKudoClosed A :=
  A.algebraStructureTerm

end DyerLashofOperationsTheoremCanonicalLaneLean
end HautevilleHouse