import DyerLashofOperationsTheoremCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace DyerLashofOperationsTheoremCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "dyer-lashof-operations-canonical-lane",
    theoremName := "DyerLashofOperationsTheorem",
    theoremObject := "Dyer Lashof operations admissibility and Nishida relations",
    classicalBoundary := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary",
    manifoldConstrainedStatement := "Stable homotopy operations in mod p homology",
    certificateLane := "manifold_constrained",
    carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary"
  }

end DyerLashofOperationsTheoremCanonicalLaneLean
end HautevilleHouse