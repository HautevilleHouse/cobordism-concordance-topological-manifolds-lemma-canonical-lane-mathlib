import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean.CobordismCategory

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean

structure HirzebruchSignaturePackage (C : CobordismCategory) where
  manifoldDimension : Nat
  signatureForm : Type
  signatureInvariant : Prop
  cobordismInvariance : Prop
  topologicalInvariance : Prop

structure HirzebruchSignatureEvidence {C : CobordismCategory} (H : HirzebruchSignaturePackage C) where
  signatureInvariantClosed : H.signatureInvariant
  cobordismInvarianceClosed : H.cobordismInvariance
  topologicalInvarianceClosed : H.topologicalInvariance

def HirzebruchSignatureClosed {C : CobordismCategory} (H : HirzebruchSignaturePackage C) : Prop :=
  H.signatureInvariant ∧ H.cobordismInvariance ∧ H.topologicalInvariance

theorem hirzebruch_signature_closed_from_evidence {C : CobordismCategory} (H : HirzebruchSignaturePackage C) (ev : HirzebruchSignatureEvidence H) : HirzebruchSignatureClosed H := by
  exact And.intro ev.signatureInvariantClosed (And.intro ev.cobordismInvarianceClosed ev.topologicalInvarianceClosed)

end CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean
end HautevilleHouse
