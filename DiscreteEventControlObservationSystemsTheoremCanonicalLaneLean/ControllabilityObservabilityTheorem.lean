import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean.SupervisorSynthesis

namespace HautevilleHouse
namespace DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean

structure ControllabilityObservabilityCondition (M : DiscreteEventSystemModel) where
  controllable : Prop
  observable : Prop
  closedUnderSupervision : Prop

def ControllabilityObservabilityTheorem (M : DiscreteEventSystemModel) (L : ObservationControlLanguage M) (C : ControllabilityObservabilityCondition M) : Prop :=
  (C.controllable ∧ C.observable) → SupervisorExistence M ({
    specificationLanguage := L.generatedLanguage
    admissibleControl := Set.univ
    permissive := true
    restrictive := false
  } : SupervisorSpecification M)

def ControllabilityObservabilityClosed (M : DiscreteEventSystemModel) (L : ObservationControlLanguage M) (C : ControllabilityObservabilityCondition M) : Prop :=
  ControllabilityObservabilityTheorem M L C ∧ L.controllabilityCondition ∧ L.observabilityCondition

end DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean
end HautevilleHouse