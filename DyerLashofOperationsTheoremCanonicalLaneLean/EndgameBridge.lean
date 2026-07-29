import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DyerLashofOperationsTheoremCanonicalLaneLean

theorem dyer_lashof_endgame_bridge_closed (A : AdmissibleClass) :
    bridgeClosed A := by
  exact bridge_from_admissible_class A

theorem dyer_lashof_endgame_gate_closed (A : AdmissibleClass) :
    gateClosed A := by
  exact gate_from_admissible_class A

theorem dyer_lashof_endgame_closed (A : AdmissibleClass) :
    ConstrainedDyerLashofClosure A := by
  exact constrained_dyer_lashof_endgame A

end DyerLashofOperationsTheoremCanonicalLaneLean
end HautevilleHouse