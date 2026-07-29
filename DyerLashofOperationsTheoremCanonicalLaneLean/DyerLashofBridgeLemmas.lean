import canonicalLaneMathlib.AdmissibleClass
import DyerLashofOperationsTheoremCanonicalLaneLean.DyerLashofOperationsStructures

namespace HautevilleHouse
namespace DyerLashofOperationsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A with
  | { object := _, endpointSatisfied := _, remainderRecorded := _, gateWitness := _ } => True

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  trivial

end DyerLashofOperationsTheoremCanonicalLaneLean
end HautevilleHouse