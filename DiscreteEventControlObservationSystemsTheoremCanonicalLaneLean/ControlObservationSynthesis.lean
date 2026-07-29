import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean

structure ControlObservationSynthesis where
  supervisorConstruction : Prop
  observationBasedControl : Prop
  synthesisAlgorithm : Prop
  fixpointComputation : Prop
  synthesisTermination : Prop
  synthesisCorrectness : Prop

structure ControlObservationSynthesisEvidence (S : ControlObservationSynthesis) where
  supervisorConstructionClosed : S.supervisorConstruction
  observationBasedControlClosed : S.observationBasedControl
  synthesisAlgorithmClosed : S.synthesisAlgorithm
  fixpointComputationClosed : S.fixpointComputation
  synthesisTerminationClosed : S.synthesisTermination
  synthesisCorrectnessClosed : S.synthesisCorrectness

def ControlObservationSynthesisClosed (S : ControlObservationSynthesis) : Prop :=
  S.supervisorConstruction ∧ S.observationBasedControl ∧ S.synthesisAlgorithm ∧
  S.fixpointComputation ∧ S.synthesisTermination ∧ S.synthesisCorrectness

theorem control_observation_synthesis_closed_from_evidence
    (S : ControlObservationSynthesis) (E : ControlObservationSynthesisEvidence S) :
    ControlObservationSynthesisClosed S := by
  exact And.intro E.supervisorConstructionClosed
    (And.intro E.observationBasedControlClosed
      (And.intro E.synthesisAlgorithmClosed
        (And.intro E.fixpointComputationClosed
          (And.intro E.synthesisTerminationClosed E.synthesisCorrectnessClosed))))

end HautevilleHouse
end HautevilleHouse