import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean

structure CobordismClass where
  sourceManifold : Type u
  targetManifold : Type u
  sourceTopology : TopologicalSpace sourceManifold
  targetTopology : TopologicalSpace targetManifold
  dimension : ℕ
  cobordismExists : Prop
  concordanceExists : Prop
  cobordismImpliesConcordance : cobordismExists → concordanceExists

structure CobordismClassEvidence (C : CobordismClass) where
  cobordismExistsClosed : C.cobordismExists
  concordanceExistsClosed : C.concordanceExists

end CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean
end HautevilleHouse
