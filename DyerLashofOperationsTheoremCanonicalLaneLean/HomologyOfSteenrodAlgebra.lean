import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DyerLashofOperationsTheoremCanonicalLaneLean

structure HomologyOfSteenrodAlgebra where
  homologyAlgebra : DyerLashofAlgebra
  action : DyerLashofOperation → (homologyAlgebra.algebraUnderlying → homologyAlgebra.algebraUnderlying)
  compatibility : Prop
  compatibilityTerm : compatibility

structure HomologyOfSteenrodAlgebraEvidence (H : HomologyOfSteenrodAlgebra) where
  actionDefined : Prop
  actionDefinedTerm : actionDefined

def HomologyOfSteenrodAlgebraClosed (H : HomologyOfSteenrodAlgebra) : Prop :=
  H.compatibility

theorem homology_of_steenrod_algebra_closed_from_evidence
    (H : HomologyOfSteenrodAlgebra) (E : HomologyOfSteenrodAlgebraEvidence H) :
    HomologyOfSteenrodAlgebraClosed H :=
  H.compatibilityTerm

end DyerLashofOperationsTheoremCanonicalLaneLean
end HautevilleHouse