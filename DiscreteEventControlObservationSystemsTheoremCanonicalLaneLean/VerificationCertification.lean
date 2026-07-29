import canonicalLaneMathlib.AdmissibleClass
import DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean

structure VerificationCertificate where
  languageInclusion : Prop
  safetyProperty : Prop
  livenessProperty : Prop
  modelCheckingComplete : Prop
  languageInclusionClosed : languageInclusion
  safetyPropertyClosed : safetyProperty
  livenessPropertyClosed : livenessProperty
  modelCheckingCompleteClosed : modelCheckingComplete

def VerificationClosed (V : VerificationCertificate) : Prop :=
  V.languageInclusion ∧ V.safetyProperty ∧
  V.livenessProperty ∧ V.modelCheckingComplete

theorem verification_closed_from_evidence (V : VerificationCertificate) :
    VerificationClosed V := by
  exact And.intro V.languageInclusionClosed
    (And.intro V.safetyPropertyClosed
      (And.intro V.livenessPropertyClosed V.modelCheckingCompleteClosed))

end DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean
end HautevilleHouse
