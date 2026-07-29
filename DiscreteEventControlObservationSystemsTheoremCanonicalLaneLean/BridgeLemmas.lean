import canonicalLaneMathlib.AdmissibleClass
import DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  observationClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.observationClosedTerm

end DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean
end HautevilleHouse
