import canonicalLaneMathlib.AdmissibleClass
import CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean.TopologicalManifoldsLemma

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean

structure AdmittedCobordismObject where
  cobordismCategory : CobordismCategory
  concordanceRelation : ConcordanceRelation cobordismCategory
  cobordismInvariants : CobordismInvariants cobordismCategory
  lemma : TopologicalManifoldsLemma cobordismCategory concordanceRelation cobordismInvariants
  conclusion : lemma.classificationResult

structure AdmissibleClass where
  object : AdmittedCobordismObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean
end HautevilleHouse