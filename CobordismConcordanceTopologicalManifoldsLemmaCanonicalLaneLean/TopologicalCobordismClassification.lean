import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean.CobordismCategory
import HautevilleHouse.CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean.ConcordanceEquivalence
import HautevilleHouse.CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean.HirzebruchSignatureTheorem
import HautevilleHouse.CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean.PontryaginClasses
import HautevilleHouse.CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean.SurgeryObstructionLemma

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean

structure TopologicalCobordismClassificationPackage (C : CobordismCategory) (E : ConcordanceEquivalence C) (H : HirzebruchSignaturePackage C) (P : PontryaginClassesPackage C) (O : SurgeryObstructionPackage C) where
  classificationComplete : Prop
  obstructionsComputed : Prop
  surgerySurgeryObstruction : Prop

def TopologicalCobordismClassificationClosed {C : CobordismCategory} {E : ConcordanceEquivalence C} {H : HirzebruchSignaturePackage C} {P : PontryaginClassesPackage C} {O : SurgeryObstructionPackage C} (T : TopologicalCobordismClassificationPackage C E H P O) : Prop :=
  T.classificationComplete ∧ T.obstructionsComputed ∧ T.surgerySurgeryObstruction

end CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean
end HautevilleHouse
