import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean.SystemModel

namespace HautevilleHouse
namespace DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean

structure ControllabilityPackage (S : DiscreteEventSystem) where
  controllableEvents : Set S.events
  uncontrollableEvents : Set S.events
  disablementMap : S.states → Set S.events → Bool
  controllabilityCondition : Prop
  reachabilityCondition : Prop
  safetyCondition : Prop
  livenessCondition : Prop

structure ControllabilityEvidence (S : DiscreteEventSystem) (P : ControllabilityPackage S) where
  controllabilityConditionClosed : P.controllabilityCondition
  reachabilityConditionClosed : P.reachabilityCondition
  safetyConditionClosed : P.safetyCondition
  livenessConditionClosed : P.livenessCondition

def ControllabilityClosed (S : DiscreteEventSystem) (P : ControllabilityPackage S) : Prop :=
  P.controllabilityCondition ∧ P.reachabilityCondition ∧ P.safetyCondition ∧ P.livenessCondition

theorem controllability_closed_from_evidence (S : DiscreteEventSystem) (P : ControllabilityPackage S) (E : ControllabilityEvidence S P) :
    ControllabilityClosed S P := by
  exact And.intro E.controllabilityConditionClosed (And.intro E.reachabilityConditionClosed (And.intro E.safetyConditionClosed E.livenessConditionClosed))

end DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean
end HautevilleHouse