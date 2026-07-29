import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean

def ConstrainedObservationControlClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_observation_control_endgame (A : AdmissibleClass) :
    ConstrainedObservationControlClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean
end HautevilleHouse