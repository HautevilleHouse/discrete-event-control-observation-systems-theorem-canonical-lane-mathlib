import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean

structure ObservabilityConstraint where
  observableEvents : Prop
  observationSpecification : Prop
  languageObservability : Prop
  indistinguishableEventProjection : Prop
  supremalObservableSublanguage : Prop
  maximalObservableSupremum : Prop

structure ObservabilityConstraintEvidence (O : ObservabilityConstraint) where
  observableEventsClosed : O.observableEvents
  observationSpecificationClosed : O.observationSpecification
  languageObservabilityClosed : O.languageObservability
  indistinguishableEventProjectionClosed : O.indistinguishableEventProjection
  supremalObservableSublanguageClosed : O.supremalObservableSublanguage
  maximalObservableSupremumClosed : O.maximalObservableSupremum

def ObservabilityConstraintClosed (O : ObservabilityConstraint) : Prop :=
  O.observableEvents ∧ O.observationSpecification ∧ O.languageObservability ∧
  O.indistinguishableEventProjection ∧ O.supremalObservableSublanguage ∧ O.maximalObservableSupremum

theorem observability_constraint_closed_from_evidence
    (O : ObservabilityConstraint) (E : ObservabilityConstraintEvidence O) :
    ObservabilityConstraintClosed O := by
  exact And.intro E.observableEventsClosed
    (And.intro E.observationSpecificationClosed
      (And.intro E.languageObservabilityClosed
        (And.intro E.indistinguishableEventProjectionClosed
          (And.intro E.supremalObservableSublanguageClosed E.maximalObservableSupremumClosed))))

end HautevilleHouse
end HautevilleHouse