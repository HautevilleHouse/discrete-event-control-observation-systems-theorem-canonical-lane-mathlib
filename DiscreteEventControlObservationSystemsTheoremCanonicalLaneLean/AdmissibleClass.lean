import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean

structure DECOSAdmissibleObject where
  systemModel : Type u
  controllabilityCondition : Prop
  observabilityCondition : Prop
  supervisorExists : Prop
  conclusion : supervisorExists

structure DECOSAdmissibleClass where
  object : DECOSAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : DECOSAdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean
end HautevilleHouse