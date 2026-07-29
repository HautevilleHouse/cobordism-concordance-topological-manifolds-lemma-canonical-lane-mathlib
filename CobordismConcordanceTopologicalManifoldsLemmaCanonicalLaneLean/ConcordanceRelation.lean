import canonicalLaneMathlib.AdmissibleClass
import CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean.CobordismCategory

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean

structure ConcordanceRelation (C : CobordismCategory) where
  source : C.sourceManifold
  target : C.targetManifold
  cobordism : C.cobordism
  concordanceType : String
  productStructure : C.cobordism ≃ (C.sourceManifold × (Set.Icc 0 1 : Set ℝ))
  levelSetsHomeomorphic : Prop
  boundaryConditions : Prop

structure ConcordanceRelationEvidence {C : CobordismCategory} (R : ConcordanceRelation C) where
  productStructureClosed : R.productStructure
  levelSetsHomeomorphicClosed : R.levelSetsHomeomorphic
  boundaryConditionsClosed : R.boundaryConditions

def ConcordanceRelationClosed {C : CobordismCategory} (R : ConcordanceRelation C) : Prop :=
  R.productStructure ∧ R.levelSetsHomeomorphic ∧ R.boundaryConditions

theorem concordance_relation_closed_from_evidence
    {C : CobordismCategory} (R : ConcordanceRelation C) (E : ConcordanceRelationEvidence R) :
    ConcordanceRelationClosed R := by
  exact And.intro E.productStructureClosed (And.intro E.levelSetsHomeomorphicClosed E.boundaryConditionsClosed)

end CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean
end HautevilleHouse