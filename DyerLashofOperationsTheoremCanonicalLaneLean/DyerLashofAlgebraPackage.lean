import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DyerLashofOperationsTheoremCanonicalLaneLean

structure DyerLashofAlgebraPackage where
  underlyingRing : Type u
  ringStructure : Semiring underlyingRing
  degreeOneGenerator : underlyingRing
  ademRelations : Prop
  ademRelationsTerm : ademRelations

structure DyerLashofAlgebraEvidence (D : DyerLashofAlgebraPackage) where
  ademRelationsClosed : D.ademRelations

def DyerLashofAlgebraClosed (D : DyerLashofAlgebraPackage) : Prop :=
  D.ademRelations

theorem dyer_lashof_algebra_closed_from_evidence (D : DyerLashofAlgebraPackage)
    (E : DyerLashofAlgebraEvidence D) : DyerLashofAlgebraClosed D := by
  exact E.ademRelationsClosed

end DyerLashofOperationsTheoremCanonicalLaneLean
end HautevilleHouse