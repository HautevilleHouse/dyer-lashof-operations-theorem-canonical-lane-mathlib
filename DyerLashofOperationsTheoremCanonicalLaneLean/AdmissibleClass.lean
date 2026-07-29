import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DyerLashofOperationsTheoremCanonicalLaneLean

structure DyerLashofAdmittedObject where
  homologyType : Type
  mod2Cohomology : Type
  steenrodModule : Prop
  dyerLashofAction : Prop
  conclusion : dyerLashofAction

def DyerLashofWitnessClosed (O : DyerLashofAdmittedObject) : Prop :=
  O.conclusion

structure AdmissibleClass where
  object : DyerLashofAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DyerLashofWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DyerLashofOperationsTheoremCanonicalLaneLean
end HautevilleHouse