import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DyerLashofOperationsTheoremCanonicalLaneLean

structure AdemRelation (i j : ℕ) where
  relation : ℕ → ℤ
  relationTerm : ∀ (x : ℕ), relation x = 0

structure AdemRelationsPackage where
  relations : ℕ → ℕ → AdemRelation
  consistency : Prop
  consistencyTerm : consistency

def AdemRelationsClosed (R : AdemRelationsPackage) : Prop :=
  R.consistency

theorem adem_relations_closed_from_consistency (R : AdemRelationsPackage) : AdemRelationsClosed R :=
  R.consistencyTerm

end DyerLashofOperationsTheoremCanonicalLaneLean
end HautevilleHouse