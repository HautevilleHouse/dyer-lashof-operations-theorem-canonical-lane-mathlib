import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DyerLashofOperationsTheoremCanonicalLaneLean

structure HomologyOfIteratedLoopSpacesPackage where
  spaceType : Type u
  n : ℕ
  loopSpace : Type v
  homologyRing : Type w
  dyerLashofAction : ℕ → homologyRing → homologyRing
  mayRelations : Prop
  homologyIsomorphism : Prop
  mayRelationsTerm : mayRelations
  homologyIsomorphismTerm : homologyIsomorphism

structure HomologyOfIteratedLoopSpacesEvidence (H : HomologyOfIteratedLoopSpacesPackage) where
  mayRelationsClosed : H.mayRelations
  homologyIsomorphismClosed : H.homologyIsomorphism

def HomologyOfIteratedLoopSpacesClosed (H : HomologyOfIteratedLoopSpacesPackage) : Prop :=
  H.mayRelations ∧ H.homologyIsomorphism

theorem homology_of_iterated_loop_spaces_closed_from_evidence (H : HomologyOfIteratedLoopSpacesPackage) (E : HomologyOfIteratedLoopSpacesEvidence H) : HomologyOfIteratedLoopSpacesClosed H := by
  exact And.intro E.mayRelationsClosed E.homologyIsomorphismClosed

end DyerLashofOperationsTheoremCanonicalLaneLean
end HautevilleHouse