import canonicalLaneMathlib.AdmissibleClass
import CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean.CobordismCategory

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean

structure CobordismInvariants (C : CobordismCategory) where
  homologyGroups : Type u
  cohomologyRings : Type v
  characteristicClasses : Type w
  signatureDefined : Prop
  signature : ℤ
  signatureInvariant : Prop
  eulerCharacteristicDefined : Prop
  eulerCharacteristic : ℤ
  eulerCharacteristicInvariant : Prop

structure CobordismInvariantsEvidence {C : CobordismCategory} (I : CobordismInvariants C) where
  signatureDefinedClosed : I.signatureDefined
  signatureInvariantClosed : I.signatureInvariant
  eulerCharacteristicDefinedClosed : I.eulerCharacteristicDefined
  eulerCharacteristicInvariantClosed : I.eulerCharacteristicInvariant

def CobordismInvariantsClosed {C : CobordismCategory} (I : CobordismInvariants C) : Prop :=
  I.signatureDefined ∧ I.signatureInvariant ∧ I.eulerCharacteristicDefined ∧ I.eulerCharacteristicInvariant

theorem cobordism_invariants_closed_from_evidence
    {C : CobordismCategory} (I : CobordismInvariants C) (E : CobordismInvariantsEvidence I) :
    CobordismInvariantsClosed I := by
  exact And.intro E.signatureDefinedClosed (And.intro E.signatureInvariantClosed
    (And.intro E.eulerCharacteristicDefinedClosed E.eulerCharacteristicInvariantClosed))

end CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean
end HautevilleHouse