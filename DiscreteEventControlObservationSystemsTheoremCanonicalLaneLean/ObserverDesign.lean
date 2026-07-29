import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean

structure ObserverDesignPackage where
  observerAutomaton : Type u
  observerStateSet : Type v
  observerTransitionFunction : observerStateSet × eventSet → observerStateSet
  initialObserverState : observerStateSet
  observerCorrectnessCondition : Prop

structure ObserverDesignEvidence (D : ObserverDesignPackage) where
  observerAutomatonDefined : True
  observerTransitionFunctionDefined : True
  initialObserverStateDefined : True
  observerCorrectnessConditionClosed : D.observerCorrectnessCondition

def ObserverDesignClosed (D : ObserverDesignPackage) : Prop :=
  D.observerCorrectnessCondition

theorem observer_design_closed_from_evidence
    (D : ObserverDesignPackage) (E : ObserverDesignEvidence D) :
    ObserverDesignClosed D := by
  exact E.observerCorrectnessConditionClosed

end DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean
end HautevilleHouse