import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean

structure ControllabilityConstraint where
  uncontrollableEvents : Prop
  controlSpecification : Prop
  languageControllability : Prop
  prefixClosure : Prop
  supremalControllableSublanguage : Prop
  maximalControllableSupremum : Prop

structure ControllabilityConstraintEvidence (C : ControllabilityConstraint) where
  uncontrollableEventsClosed : C.uncontrollableEvents
  controlSpecificationClosed : C.controlSpecification
  languageControllabilityClosed : C.languageControllability
  prefixClosureClosed : C.prefixClosure
  supremalControllableSublanguageClosed : C.supremalControllableSublanguage
  maximalControllableSupremumClosed : C.maximalControllableSupremum

def ControllabilityConstraintClosed (C : ControllabilityConstraint) : Prop :=
  C.uncontrollableEvents ∧ C.controlSpecification ∧ C.languageControllability ∧
  C.prefixClosure ∧ C.supremalControllableSublanguage ∧ C.maximalControllableSupremum

theorem controllability_constraint_closed_from_evidence
    (C : ControllabilityConstraint) (E : ControllabilityConstraintEvidence C) :
    ControllabilityConstraintClosed C := by
  exact And.intro E.uncontrollableEventsClosed
    (And.intro E.controlSpecificationClosed
      (And.intro E.languageControllabilityClosed
        (And.intro E.prefixClosureClosed
          (And.intro E.supremalControllableSublanguageClosed E.maximalControllableSupremumClosed))))

end HautevilleHouse
end HautevilleHouse