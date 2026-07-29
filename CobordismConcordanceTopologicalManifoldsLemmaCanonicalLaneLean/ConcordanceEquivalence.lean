import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean.CobordismCategory

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean

structure ConcordanceEquivalence (C : CobordismCategory) where
  sourceTargetPair : Type
  concordanceCondition : Prop
  equivalenceRelation : Prop
  topologicalInvariance : Prop

structure ConcordanceEquivalenceEvidence {C : CobordismCategory} (E : ConcordanceEquivalence C) where
  concordanceConditionClosed : E.concordanceCondition
  equivalenceRelationClosed : E.equivalenceRelation
  topologicalInvarianceClosed : E.topologicalInvariance

def ConcordanceEquivalenceClosed {C : CobordismCategory} (E : ConcordanceEquivalence C) : Prop :=
  E.concordanceCondition ∧ E.equivalenceRelation ∧ E.topologicalInvariance

theorem concordanceEquivalence_closed_from_evidence {C : CobordismCategory} (E : ConcordanceEquivalence C) (ev : ConcordanceEquivalenceEvidence E) : ConcordanceEquivalenceClosed E := by
  exact And.intro ev.concordanceConditionClosed (And.intro ev.equivalenceRelationClosed ev.topologicalInvarianceClosed)

end CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean
end HautevilleHouse
