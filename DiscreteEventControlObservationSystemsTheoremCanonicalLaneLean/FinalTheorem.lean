import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean

def ConstrainedDiscreteEventControlClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_discrete_event_control_endgame (A : AdmissibleClass) :
    ConstrainedDiscreteEventControlClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean
end HautevilleHouse