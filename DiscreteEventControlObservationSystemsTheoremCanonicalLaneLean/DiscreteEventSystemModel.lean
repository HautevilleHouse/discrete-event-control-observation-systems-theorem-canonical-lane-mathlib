import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean

structure DiscreteEventSystem where
  stateSpace : Type u
  eventSet : Type v
  transitionFunction : stateSpace → eventSet → stateSpace
  initialStates : Set stateSpace
  observableEvents : Set eventSet

structure ObservationMapping where
  eventSet : Type v
  observationSet : Type w
  observationMap : eventSet → observationSet

structure DiscreteEventSystemModel where
  system : DiscreteEventSystem
  observation : ObservationMapping system.eventSet

def ControlledLinguisticClosed (M : DiscreteEventSystemModel) : Prop :=
  M.system.initialStates.Nonempty ∧ M.observation.observationMap "" = ""

end DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean
end HautevilleHouse