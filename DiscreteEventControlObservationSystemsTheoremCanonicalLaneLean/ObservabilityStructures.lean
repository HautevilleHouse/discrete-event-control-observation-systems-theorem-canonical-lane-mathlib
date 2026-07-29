import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean

structure ObservabilityStructure where
  eventSet : Type u
  stateSet : Type v
  observationFunction : stateSet → eventSet
  observableEvents : Set eventSet
  indistinguishabilityRelation : stateSet → stateSet → Prop
  indistinguishabilityIsEquivalence : Equivalence indistinguishabilityRelation

structure ObservabilityStructureEvidence (O : ObservabilityStructure) where
  observationFunctionDefined : True
  indistinguishabilityClosed : O.indistinguishabilityIsEquivalence

def ObservabilityStructureClosed (O : ObservabilityStructure) : Prop :=
  O.indistinguishabilityIsEquivalence

theorem observability_structure_closed_from_evidence
    (O : ObservabilityStructure) (E : ObservabilityStructureEvidence O) :
    ObservabilityStructureClosed O := by
  exact E.indistinguishabilityClosed

end DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean
end HautevilleHouse