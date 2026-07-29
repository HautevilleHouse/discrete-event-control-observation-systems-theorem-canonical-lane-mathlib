import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean.SystemModel

namespace HautevilleHouse
namespace DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean

structure ObservabilityPackage (S : DiscreteEventSystem) where
  observationMap : S.states → S.outputAlphabet
  indistinguishabilityRelation : S.states → S.states → Prop
  currentStateEstimate : S.states → Set S.states
  diagnosabilityProperty : Prop
  detectabilityProperty : Prop
  opacityProperty : Prop

structure ObservabilityEvidence (S : DiscreteEventSystem) (P : ObservabilityPackage S) where
  diagnosabilityClosed : P.diagnosabilityProperty
  detectabilityClosed : P.detectabilityProperty
  opacityClosed : P.opacityProperty

def ObservabilityClosed (S : DiscreteEventSystem) (P : ObservabilityPackage S) : Prop :=
  P.diagnosabilityProperty ∧ P.detectabilityProperty ∧ P.opacityProperty

theorem observability_closed_from_evidence (S : DiscreteEventSystem) (P : ObservabilityPackage S) (E : ObservabilityEvidence S P) :
    ObservabilityClosed S P := by
  exact And.intro E.diagnosabilityClosed (And.intro E.detectabilityClosed E.opacityClosed)

end DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean
end HautevilleHouse