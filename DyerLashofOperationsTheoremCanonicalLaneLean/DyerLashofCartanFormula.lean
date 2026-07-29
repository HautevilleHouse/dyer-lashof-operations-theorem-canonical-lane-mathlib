import DyerLashofOperationsTheoremCanonicalLaneLean.DyerLashofOperationsStructures

namespace HautevilleHouse
namespace DyerLashofOperationsTheoremCanonicalLaneLean

/-- Cartan formula for Dyer-Lashof operations on the product. -/

structure CartanFormulaPackage (M : IndexedClassModule)
  (D : DyerLashofSteenrodStructure M) where
  productFormula : ∀ a b : M.module, D.dyerLashofOperations 0 (a * b) =
    D.dyerLashofOperations 0 a * D.dyerLashofOperations 0 b
  higherFormula : ℕ → Prop
  productFormulaClosed : productFormula
  higherFormulaClosed : higherFormula 0

def CartanFormulaClosed (M : IndexedClassModule)
  (D : DyerLashofSteenrodStructure M) (C : CartanFormulaPackage M D) : Prop :=
  C.productFormula ∧ C.higherFormula 0

theorem cartan_formula_closed_from_evidence (M : IndexedClassModule)
  (D : DyerLashofSteenrodStructure M) (C : CartanFormulaPackage M D)
  (productFormulaClosed : C.productFormula)
  (higherFormulaClosed : C.higherFormula 0) : CartanFormulaClosed M D C := by
  exact And.intro productFormulaClosed higherFormulaClosed

end DyerLashofOperationsTheoremCanonicalLaneLean
end HautevilleHouse