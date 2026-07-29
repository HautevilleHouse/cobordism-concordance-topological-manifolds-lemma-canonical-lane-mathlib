import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean.CobordismCategory

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean

structure PontryaginClassesPackage (C : CobordismCategory) where
  tangentBundle : Type
  pontryaginClasses : Type
  cobordismInvariance : Prop
  signatureLinking : Prop
  rationalPontryagin : Prop

structure PontryaginClassesEvidence {C : CobordismCategory} (P : PontryaginClassesPackage C) where
  cobordismInvarianceClosed : P.cobordismInvariance
  signatureLinkingClosed : P.signatureLinking
  rationalPontryaginClosed : P.rationalPontryagin

def PontryaginClassesClosed {C : CobordismCategory} (P : PontryaginClassesPackage C) : Prop :=
  P.cobordismInvariance ∧ P.signatureLinking ∧ P.rationalPontryagin

theorem pontryagin_classes_closed_from_evidence {C : CobordismCategory} (P : PontryaginClassesPackage C) (ev : PontryaginClassesEvidence P) : PontryaginClassesClosed P := by
  exact And.intro ev.cobordismInvarianceClosed (And.intro ev.signatureLinkingClosed ev.rationalPontryaginClosed)

end CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean
end HautevilleHouse
