import canonicalLaneMathlib.AdmissibleClass
import DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean.ObservationSystemDefinition

namespace HautevilleHouse
namespace DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean

structure ObservationLanguage (S : ObservationSystem) where
  observations : List (S.eventSet)
  languageAccepted : Set (List (S.eventSet))
  regularExpression : String

structure LanguageProperties (S : ObservationSystem) (L : ObservationLanguage S) where
  prefixClosure : Prop
  liveLockFree : Prop
  diagnosableInLanguage : Prop

structure LanguageEvidence (S : ObservationSystem) (L : ObservationLanguage S)
    (P : LanguageProperties S L) where
  prefixClosureClosed : P.prefixClosure
  liveLockFreeClosed : P.liveLockFree
  diagnosableInLanguageClosed : P.diagnosableInLanguage

def LanguageClosed (S : ObservationSystem) (L : ObservationLanguage S) (P : LanguageProperties S L) : Prop :=
  P.prefixClosure ∧ P.liveLockFree ∧ P.diagnosableInLanguage

theorem language_closed_from_evidence (S : ObservationSystem) (L : ObservationLanguage S)
    (P : LanguageProperties S L) (E : LanguageEvidence S L P) : LanguageClosed S L P := by
  exact And.intro E.prefixClosureClosed (And.intro E.liveLockFreeClosed E.diagnosableInLanguageClosed)

end DiscreteEventControlObservationSystemsTheoremCanonicalLaneLean
end HautevilleHouse