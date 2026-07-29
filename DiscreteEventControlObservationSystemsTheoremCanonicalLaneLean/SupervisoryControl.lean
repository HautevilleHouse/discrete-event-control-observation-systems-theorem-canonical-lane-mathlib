import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean

structure SupervisoryControlPackage where
  controllableEvents : Set eventSet
  uncontrollableEvents : Set eventSet
  controlMap : stateSet → Set eventSet
  permissiveControl : Prop
  nonblockingCondition : Prop

structure SupervisoryControlEvidence (S : SupervisoryControlPackage) where
  controllableUncontrollablePartition : controllableEvents ∩ uncontrollableEvents = ∅
  controlMapDefined : True
  permissiveControlClosed : S.permissiveControl
  nonblockingConditionClosed : S.nonblockingCondition

def SupervisoryControlClosed (S : SupervisoryControlPackage) : Prop :=
  S.permissiveControl ∧ S.nonblockingCondition

theorem supervisory_control_closed_from_evidence
    (S : SupervisoryControlPackage) (E : SupervisoryControlEvidence S) :
    SupervisoryControlClosed S := by
  exact And.intro E.permissiveControlClosed E.nonblockingConditionClosed

end DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean
end HautevilleHouse