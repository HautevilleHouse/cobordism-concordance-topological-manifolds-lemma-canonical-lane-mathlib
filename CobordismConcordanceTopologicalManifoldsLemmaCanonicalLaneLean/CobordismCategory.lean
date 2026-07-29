import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean

structure CobordismCategory where
  sourceManifold : Type u
  targetManifold : Type u
  sourceTopology : TopologicalSpace sourceManifold
  targetTopology : TopologicalSpace targetManifold
  sourceDimension : Nat
  targetDimension : Nat
  cobordismType : String
  cobordism : Type v
  cobordismTopology : TopologicalSpace cobordism
  boundaryComponents : sourceManifold ⊕ targetManifold → cobordism
  boundaryEmbeddings : Prop
  dimensionCompatibility : sourceDimension = targetDimension ∨ sourceDimension + 1 = targetDimension

structure CobordismCategoryEvidence (C : CobordismCategory) where
  boundaryEmbeddingsClosed : C.boundaryEmbeddings
  dimensionCompatibilityClosed : C.dimensionCompatibility

def CobordismCategoryClosed (C : CobordismCategory) : Prop :=
  C.boundaryEmbeddings ∧ C.dimensionCompatibility

theorem cobordism_category_closed_from_evidence (C : CobordismCategory) (E : CobordismCategoryEvidence C) :
    CobordismCategoryClosed C := by
  exact And.intro E.boundaryEmbeddingsClosed E.dimensionCompatibilityClosed

end CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean
end HautevilleHouse