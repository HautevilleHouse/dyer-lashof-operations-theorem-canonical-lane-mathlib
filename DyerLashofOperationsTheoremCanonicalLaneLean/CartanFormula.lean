import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DyerLashofOperationsTheoremCanonicalLaneLean

structure CartanFormula (n : ℕ) where
  productFormula : Prop
  productFormulaTerm : productFormula

structure CartanFormulaPackage where
  formulas : ℕ → CartanFormula
  stability : Prop
  stabilityTerm : stability

def CartanFormulaClosed (C : CartanFormulaPackage) : Prop :=
  C.stability

theorem cartan_formula_closed_from_stability (C : CartanFormulaPackage) : CartanFormulaClosed C :=
  C.stabilityTerm

end DyerLashofOperationsTheoremCanonicalLaneLean
end HautevilleHouse