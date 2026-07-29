import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean

structure DiscreteEventSystem where
  states : Type
  events : Type
  transitionFunction : states → events → states
  observationFunction : states → Type
  initialStatesSet : Set states
  outputAlphabet : Type
  measurementRelation : states → outputAlphabet → Prop

structure ControllableEvent where
  event : events
  controllable : Bool

structure ObservableEvent where
  event : events
  observable : Bool

structure DiscreteEventAdmittedObject where
  system : DiscreteEventSystem
  controllabilityPartition : Set (Set events)
  observabilityPartition : Set (Set events)
  languageGenerated : Set (List events)
  languageObserved : Set (List events)
  supervisorExists : Prop
  conclusion : supervisorExists

def DiscreteEventWitnessClosed (O : DiscreteEventAdmittedObject) : Prop :=
  O.supervisorExists

end DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean
end HautevilleHouse