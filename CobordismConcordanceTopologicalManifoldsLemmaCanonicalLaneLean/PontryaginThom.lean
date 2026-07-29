import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean

structure PontryaginThomConstruction (n : ℕ) where
  framedManifold : Type u
  topology : TopologicalSpace framedManifold
  framing : Prop
  mapToSphere : framedManifold → Sⁿ (n : ℕ)
  homotopyClass : Prop
  ptClosed : Prop
  ptClosedTerm : ptClosed

def sphereSⁿ (n : ℕ) : Type := Fin (n+1) → ℝ

structure Sⁿ (n : ℕ) where
  point : Fin (n+1) → ℝ
  normOne : (∑ i, (point i)^2) = 1

end CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean
end HautevilleHouse