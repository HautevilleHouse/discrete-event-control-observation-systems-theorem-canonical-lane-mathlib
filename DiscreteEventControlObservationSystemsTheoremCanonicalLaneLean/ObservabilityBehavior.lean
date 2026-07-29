import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean

structure ObservabilityBehavior where
  eventOrder : Prop
  partialObservation : Prop
  currentStateUncertainty : Prop
  indistinguishableStatePair : Prop
  observabilityDefined : Prop
  behaviorRecorded : Prop

structure ObservabilityEvidence (O : ObservabilityBehavior) where
  eventOrderClosed : O.eventOrder
  partialObservationClosed : O.partialObservation
  currentStateUncertaintyClosed : O.currentStateUncertainty
  indistinguishableStatePairClosed : O.indistinguishableStatePair
  observabilityDefinedClosed : O.observabilityDefined
  behaviorRecordedClosed : O.behaviorRecorded

def ObservabilityClosed (O : ObservabilityBehavior) : Prop :=
  O.eventOrder ∧ O.partialObservation ∧ O.currentStateUncertainty ∧
  O.indistinguishableStatePair ∧ O.observabilityDefined ∧ O.behaviorRecorded

theorem observability_closed_from_evidence
    (O : ObservabilityBehavior) (E : ObservabilityEvidence O) :
    ObservabilityClosed O := by
  exact And.intro E.eventOrderClosed
    (And.intro E.partialObservationClosed
      (And.intro E.currentStateUncertaintyClosed
        (And.intro E.indistinguishableStatePairClosed
          (And.intro E.observabilityDefinedClosed E.behaviorRecordedClosed))))

end HautevilleHouse
end HautevilleHouse