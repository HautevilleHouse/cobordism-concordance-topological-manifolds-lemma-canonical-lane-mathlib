import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean

structure HandleDecomposition where
  manifold : Type u
  topology : TopologicalSpace manifold
  handleIndices : List ℕ
  attachmentSpheres : Prop
  decompositionValid : Prop
  decompositionValidTerm : decompositionValid

structure HandleDecompositionEvidence (H : HandleDecomposition) where
  decompositionValidClosed : H.decompositionValid

def HandleDecompositionClosed (H : HandleDecomposition) : Prop :=
  H.decompositionValid

theorem handle_decomposition_closed_from_evidence (H : HandleDecomposition)
    (E : HandleDecompositionEvidence H) : HandleDecompositionClosed H := by
  exact E.decompositionValidClosed

end CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean
end HautevilleHouse