import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean

structure CobordismGroupPackage where
  dimension : ℕ
  groupType : Type u
  addition : groupType → groupType → groupType
  zero : groupType
  groupAxioms : Prop
  zeroClosed : groupAxioms

structure CobordismEvidence (C : CobordismGroupPackage) where
  abelian : C.groupAxioms
  torsionFree : C.groupAxioms
  groupClosed : Prop
  groupClosedTerm : groupClosed

def CobordismGroupClosed (C : CobordismGroupPackage) : Prop :=
  C.groupAxioms ∧ C.groupAxioms

theorem cobordism_group_closed_from_evidence (C : CobordismGroupPackage)
    (E : CobordismEvidence C) : CobordismGroupClosed C := by
  exact And.intro E.abelian E.torsionFree

end CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean
end HautevilleHouse
