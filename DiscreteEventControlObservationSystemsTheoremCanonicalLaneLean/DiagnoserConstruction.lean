import canonicalLaneMathlib.AdmissibleClass
import DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean.ObservationSystemDefinition

namespace HautevilleHouse
namespace DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean

structure Diagnoser {S : ObservationSystem} (D : DiagnosticProperties S) where
  diagnoserAutomaton : Type u
  states : List diagnoserAutomaton
  transitionFunction : diagnoserAutomaton → S.eventSet → diagnoserAutomaton
  initialDiagnoserState : diagnoserAutomaton
  diagnosabilityVerified : Prop

structure DiagnoserEvidence {S : ObservationSystem} {D : DiagnosticProperties S}
    (Diag : Diagnoser D) where
  transitionFunctionDefined : Prop
  initialDiagnoserStateValid : Prop
  diagnosabilityVerifiedClosed : Diag.diagnosabilityVerified

def DiagnoserClosed {S : ObservationSystem} {D : DiagnosticProperties S}
    (Diag : Diagnoser D) : Prop :=
  Diag.diagnosabilityVerified

theorem diagnoser_closed_from_evidence {S : ObservationSystem} {D : DiagnosticProperties S}
    (Diag : Diagnoser D) (E : DiagnoserEvidence Diag) : DiagnoserClosed Diag := by
  exact E.diagnosabilityVerifiedClosed

end DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean
end HautevilleHouse