import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean

structure ObservationSystem where
  eventSet : Type u
  stateSpace : Type v
  outputFunction : stateSpace → eventSet
  reachableStates : List stateSpace
  initialDistribution : stateSpace → ℝ
  transitionFunction : eventSet → stateSpace → stateSpace

structure DiagnosticProperties (S : ObservationSystem) where
  detectabilityCondition : Prop
  observabilityCondition : Prop
  diagnosabilityCondition : Prop

structure ObservationSystemEvidence (S : ObservationSystem) (D : DiagnosticProperties S) where
  detectabilityClosed : D.detectabilityCondition
  observabilityClosed : D.observabilityCondition
  diagnosabilityClosed : D.diagnosabilityCondition

def ObservationSystemClosed (S : ObservationSystem) (D : DiagnosticProperties S) : Prop :=
  D.detectabilityCondition ∧ D.observabilityCondition ∧ D.diagnosabilityCondition

theorem observation_system_closed_from_evidence (S : ObservationSystem) (D : DiagnosticProperties S)
    (E : ObservationSystemEvidence S D) : ObservationSystemClosed S D := by
  exact And.intro E.detectabilityClosed (And.intro E.observabilityClosed E.diagnosabilityClosed)

end DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean
end HautevilleHouse