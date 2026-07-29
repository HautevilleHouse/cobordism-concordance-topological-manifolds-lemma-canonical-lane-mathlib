import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean

structure CobordismInvariancePackage where
  manifoldDimension : ℕ
  invarianceUnderCobordism : Prop
  embeddingExtension : Prop
  connectedSumInvariant : Prop

structure CobordismInvarianceEvidence (P : CobordismInvariancePackage) where
  invarianceUnderCobordismClosed : P.invarianceUnderCobordism
  embeddingExtensionClosed : P.embeddingExtension
  connectedSumInvariantClosed : P.connectedSumInvariant

end CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean
end HautevilleHouse
