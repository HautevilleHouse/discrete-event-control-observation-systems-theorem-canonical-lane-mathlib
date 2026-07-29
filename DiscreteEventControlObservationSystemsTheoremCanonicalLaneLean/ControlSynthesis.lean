import canonicalLaneMathlib.AdmissibleClass
import DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean

structure ControlSynthesisPackage (O : DECObservationSpace) where
  supervisorExistence : Prop
  controllabilityConstraint : Prop
  observabilityConstraint : Prop
  supervisorSynthesisAlgorithm : Prop
  supervisorExistenceClosed : supervisorExistence
  controllabilityConstraintClosed : controllabilityConstraint
  observabilityConstraintClosed : observabilityConstraint
  supervisorSynthesisAlgorithmClosed : supervisorSynthesisAlgorithm

def ControlSynthesisClosed {O : DECObservationSpace} (C : ControlSynthesisPackage O) : Prop :=
  C.supervisorExistence ∧ C.controllabilityConstraint ∧
  C.observabilityConstraint ∧ C.supervisorSynthesisAlgorithm

theorem control_synthesis_closed_from_evidence {O : DECObservationSpace}
    (C : ControlSynthesisPackage O) : ControlSynthesisClosed C := by
  exact And.intro C.supervisorExistenceClosed
    (And.intro C.controllabilityConstraintClosed
      (And.intro C.observabilityConstraintClosed C.supervisorSynthesisAlgorithmClosed))

end DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean
end HautevilleHouse
