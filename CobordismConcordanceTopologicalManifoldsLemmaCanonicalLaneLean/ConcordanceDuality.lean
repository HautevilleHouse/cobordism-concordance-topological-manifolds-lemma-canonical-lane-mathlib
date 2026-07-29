import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean

structure ConcordanceDualityPackage where
  manifoldDimension : ℕ
  poincareDualityHolds : Prop
  intersectionFormInvariant : Prop
  signatureInvariant : Prop

structure ConcordanceDualityEvidence (D : ConcordanceDualityPackage) where
  poincareDualityHoldsClosed : D.poincareDualityHolds
  intersectionFormInvariantClosed : D.intersectionFormInvariant
  signatureInvariantClosed : D.signatureInvariant

end CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean
end HautevilleHouse
