import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean

structure SCobordismTheoremPackage where
  cobordism : CobordismCategory
  whiteheadTorsion : Prop
  simpleHomotopyEquivalence : Prop
  theoremStatement : Prop
  whiteheadTorsionComputed : whiteheadTorsion
  simpleHomotopyEquivalenceConstructed : simpleHomotopyEquivalence
  theoremStatementDerived : theoremStatement

structure SCobordismTheoremEvidence (S : SCobordismTheoremPackage) where
  whiteheadTorsionClosed : S.whiteheadTorsion
  simpleHomotopyEquivalenceClosed : S.simpleHomotopyEquivalence
  theoremStatementClosed : S.theoremStatement

def SCobordismTheoremClosed (S : SCobordismTheoremPackage) : Prop :=
  S.whiteheadTorsion ∧ S.simpleHomotopyEquivalence ∧ S.theoremStatement

theorem s_cobordism_theorem_closed_from_evidence (S : SCobordismTheoremPackage)
    (E : SCobordismTheoremEvidence S) : SCobordismTheoremClosed S := by
  exact And.intro E.whiteheadTorsionClosed
    (And.intro E.simpleHomotopyEquivalenceClosed E.theoremStatementClosed)

end CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean
end HautevilleHouse