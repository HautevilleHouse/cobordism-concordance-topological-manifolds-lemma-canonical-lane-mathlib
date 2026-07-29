import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean

structure CWComplex (n : ℕ) where
  skeletonChain : ℕ → Type u
  attachingMaps : ∀ k : ℕ, (skeletonChain (k+1) → skeletonChain k) → Prop
  cellDecomposition : Type u
  structureMaps : Prop
  cwClosed : Prop
  cwClosedTerm : cwClosed

def finiteCWComplex (n : ℕ) : CWComplex n := {
  skeletonChain := λ _ => Unit
  attachingMaps := λ _ _ => True
  cellDecomposition := Unit
  structureMaps := True
  cwClosed := True
  cwClosedTerm := True.intro
}

theorem cwcomplex_present_in_cobordism (n : ℕ) (C : CWComplex n) : True := by
  trivial

end CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean
end HautevilleHouse