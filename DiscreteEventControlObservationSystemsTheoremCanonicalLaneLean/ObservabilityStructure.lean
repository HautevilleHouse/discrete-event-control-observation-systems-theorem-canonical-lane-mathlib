import canonicalLaneMathlib.AdmissibleClass
import DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean

structure ObservabilityStructure (O : DECObservationSpace) where
  observationConsistency : Prop
  diagnosabilityProperty : Prop
  observationConsistencyClosed : observationConsistency
  diagnosabilityPropertyClosed : diagnosabilityProperty

def ObservabilityClosed {O : DECObservationSpace} (S : ObservabilityStructure O) : Prop :=
  S.observationConsistency ∧ S.diagnosabilityProperty

theorem observability_closed_from_evidence {O : DECObservationSpace}
    (S : ObservabilityStructure O) : ObservabilityClosed S := by
  exact And.intro S.observationConsistencyClosed S.diagnosabilityPropertyClosed

end DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean
end HautevilleHouse
