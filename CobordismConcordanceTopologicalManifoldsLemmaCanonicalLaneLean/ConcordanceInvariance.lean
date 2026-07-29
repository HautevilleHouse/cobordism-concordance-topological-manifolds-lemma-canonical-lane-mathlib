import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean

structure ConcordanceInvariancePackage where
  domainCategory : Type u
  targetCategory : Type v
  functor : Type w
  invarianceProperty : Prop
  functorDefined : Prop
  invarianceClosed : invarianceProperty
  functorDefinedClosed : functorDefined

def ConcordanceInvarianceClosed (C : ConcordanceInvariancePackage) : Prop :=
  C.invarianceProperty ∧ C.functorDefined

theorem concordance_invariance_closed
    (C : ConcordanceInvariancePackage) : ConcordanceInvarianceClosed C := by
  exact And.intro C.invarianceClosed C.functorDefinedClosed

end CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean
end HautevilleHouse
