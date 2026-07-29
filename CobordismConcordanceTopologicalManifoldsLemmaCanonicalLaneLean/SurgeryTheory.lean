import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean

structure SurgeryTheoryPackage where
  manifoldDimension : ℕ
  surgeryObstructionGroup : Type u
  surgeryObstructionDefined : Prop
  sCobordismTheorem : Prop
  obstructionClosed : surgeryObstructionDefined
  sCobordismClosed : sCobordismTheorem

def SurgeryTheoryClosed (S : SurgeryTheoryPackage) : Prop :=
  S.surgeryObstructionDefined ∧ S.sCobordismTheorem

theorem surgery_theory_closed (S : SurgeryTheoryPackage) : SurgeryTheoryClosed S := by
  exact And.intro S.obstructionClosed S.sCobordismClosed

end CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean
end HautevilleHouse
