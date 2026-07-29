import canonicalLaneMathlib.AdmissibleClass
import DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean

structure FaultDiagnosisPackage (O : DECObservationSpace) where
  faultModel : Prop
  diagnoserConstruction : Prop
  diagnosticProperties : Prop
  faultDetectionTimeliness : Prop
  faultModelClosed : faultModel
  diagnoserConstructionClosed : diagnoserConstruction
  diagnosticPropertiesClosed : diagnosticProperties
  faultDetectionTimelinessClosed : faultDetectionTimeliness

def FaultDiagnosisClosed {O : DECObservationSpace} (F : FaultDiagnosisPackage O) : Prop :=
  F.faultModel ∧ F.diagnoserConstruction ∧
  F.diagnosticProperties ∧ F.faultDetectionTimeliness

theorem fault_diagnosis_closed_from_evidence {O : DECObservationSpace}
    (F : FaultDiagnosisPackage O) : FaultDiagnosisClosed F := by
  exact And.intro F.faultModelClosed
    (And.intro F.diagnoserConstructionClosed
      (And.intro F.diagnosticPropertiesClosed F.faultDetectionTimelinessClosed))

end DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean
end HautevilleHouse
