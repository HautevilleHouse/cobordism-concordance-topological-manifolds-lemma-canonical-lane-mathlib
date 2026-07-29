import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean.CobordismCategory

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean

structure SurgeryObstructionPackage (C : CobordismCategory) where
  surgeryTarget : Type
  obstructionGroup : Type
  vanishingCondition : Prop
  concordanceObstruction : Prop

structure SurgeryObstructionEvidence {C : CobordismCategory} (O : SurgeryObstructionPackage C) where
  vanishingConditionClosed : O.vanishingCondition
  concordanceObstructionClosed : O.concordanceObstruction

def SurgeryObstructionClosed {C : CobordismCategory} (O : SurgeryObstructionPackage C) : Prop :=
  O.vanishingCondition ∧ O.concordanceObstruction

theorem surgery_obstruction_closed_from_evidence {C : CobordismCategory} (O : SurgeryObstructionPackage C) (ev : SurgeryObstructionEvidence O) : SurgeryObstructionClosed O := by
  exact And.intro ev.vanishingConditionClosed ev.concordanceObstructionClosed

end CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean
end HautevilleHouse
