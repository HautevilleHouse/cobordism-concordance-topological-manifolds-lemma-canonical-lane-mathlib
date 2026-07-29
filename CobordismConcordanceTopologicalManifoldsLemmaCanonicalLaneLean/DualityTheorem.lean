import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean

structure DualityTheoremPackage where
  manifoldType : Type u
  poincareDuality : Prop
  intersectionPairing : Type v
  dualityIsomorphism : Prop
  dualityClosed : dualityIsomorphism
  dualityTerm : dualityClosed

def DualityTheoremClosed (D : DualityTheoremPackage) : Prop :=
  D.poincareDuality ∧ D.dualityIsomorphism

theorem duality_theorem_closed (D : DualityTheoremPackage) : DualityTheoremClosed D := by
  exact And.intro D.poincareDuality D.dualityClosed

end CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean
end HautevilleHouse
