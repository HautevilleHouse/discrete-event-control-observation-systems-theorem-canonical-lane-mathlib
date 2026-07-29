import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean.DiscreteEventSystemModel

namespace HautevilleHouse
namespace DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean

structure Language where
  alphabet : Type v
  words : List alphabet → Prop

def projection (L : Language) (E : Set L.alphabet) : Language := {
  alphabet := L.alphabet
  words := λ w => ∃ (u : List L.alphabet), L.words u ∧ (List.filter (λ x => x ∈ E) u = w)
}

structure ObservationControlLanguage (M : DiscreteEventSystemModel) where
  generatedLanguage : Language M.system.eventSet
  observedLanguage : Language M.system.eventSet
  controlledLanguage : Language M.system.eventSet
  controllabilityCondition : Prop
  observabilityCondition : Prop

def ObservationControlLanguageClosed (L : ObservationControlLanguage) : Prop :=
  L.controllabilityCondition ∧ L.observabilityCondition

end DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean
end HautevilleHouse