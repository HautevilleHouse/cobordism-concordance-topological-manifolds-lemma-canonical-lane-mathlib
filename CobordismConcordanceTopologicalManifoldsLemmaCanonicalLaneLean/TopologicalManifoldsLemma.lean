import canonicalLaneMathlib.AdmissibleClass
import CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean.ConcordanceRelation
import CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean.CobordismInvariants

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean

structure TopologicalManifoldsLemma {C : CobordismCategory} {R : ConcordanceRelation C} {I : CobordismInvariants C} where
  concordanceImpliesCobordant : Prop
  cobordantUnderInvariants : Prop
  invarianceOfCharacteristicClasses : Prop
  classificationResult : Prop

structure TopologicalManifoldsLemmaEvidence {C : CobordismCategory} {R : ConcordanceRelation C} {I : CobordismInvariants C}
    (L : TopologicalManifoldsLemma C R I) where
  concordanceImpliesCobordantClosed : L.concordanceImpliesCobordant
  cobordantUnderInvariantsClosed : L.cobordantUnderInvariants
  invarianceOfCharacteristicClassesClosed : L.invarianceOfCharacteristicClasses
  classificationResultClosed : L.classificationResult

def TopologicalManifoldsLemmaClosed {C : CobordismCategory} {R : ConcordanceRelation C} {I : CobordismInvariants C}
    (L : TopologicalManifoldsLemma C R I) : Prop :=
  L.concordanceImpliesCobordant ∧ L.cobordantUnderInvariants ∧ L.invarianceOfCharacteristicClasses ∧ L.classificationResult

theorem topological_manifolds_lemma_closed_from_evidence
    {C : CobordismCategory} {R : ConcordanceRelation C} {I : CobordismInvariants C}
    (L : TopologicalManifoldsLemma C R I) (E : TopologicalManifoldsLemmaEvidence L) :
    TopologicalManifoldsLemmaClosed L := by
  exact And.intro E.concordanceImpliesCobordantClosed
    (And.intro E.cobordantUnderInvariantsClosed
      (And.intro E.invarianceOfCharacteristicClassesClosed E.classificationResultClosed))

end CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean
end HautevilleHouse