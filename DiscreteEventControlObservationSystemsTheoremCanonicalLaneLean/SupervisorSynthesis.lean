import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean.ObservationControlLanguage

namespace HautevilleHouse
namespace DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean

structure SupervisorSpecification (M : DiscreteEventSystemModel) where
  specificationLanguage : Language M.system.eventSet
  admissibleControl : Set (Set M.system.eventSet)
  permissive : Bool
  restrictive : Bool

structure Supervisor (M : DiscreteEventSystemModel) where
  specification : SupervisorSpecification M
  controlMap : M.system.eventSet → Bool
  closedLoopLanguage : Language M.system.eventSet

def SupervisorExistence (M : DiscreteEventSystemModel) (S : SupervisorSpecification M) : Prop :=
  ∃ (sup : Supervisor M), sup.specification = S

def SupervisorSynthesisClosed (M : DiscreteEventSystemModel) (S : SupervisorSpecification M) : Prop :=
  SupervisorExistence M S ∨ ¬ SupervisorExistence M S

end DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean
end HautevilleHouse