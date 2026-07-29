import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean

structure CobordismGroup (n : ℕ) where
  dimension : ℕ
  groupStructure : Type u
  addition : groupStructure → groupStructure → groupStructure
  zeroElement : groupStructure
  inverse : groupStructure → groupStructure
  groupAxioms : Prop
  additionAssoc : ∀ a b c : groupStructure, addition (addition a b) c = addition a (addition b c)
  zeroLeft : ∀ a : groupStructure, addition zeroElement a = a
  zeroRight : ∀ a : groupStructure, addition a zeroElement = a
  inverseLeft : ∀ a : groupStructure, addition (inverse a) a = zeroElement
  inverseRight : ∀ a : groupStructure, addition a (inverse a) = zeroElement
  abelian : ∀ a b : groupStructure, addition a b = addition b a
  groupAxiomsTerm : groupAxioms

def cobordism_group_zero : CobordismGroup 0 := {
  dimension := 0
  groupStructure := Unit
  addition := λ _ _ => ()
  zeroElement := ()
  inverse := λ _ => ()
  groupAxioms := True
  additionAssoc := λ _ _ _ => rfl
  zeroLeft := λ _ => rfl
  zeroRight := λ _ => rfl
  inverseLeft := λ _ => rfl
  inverseRight := λ _ => rfl
  abelian := λ _ _ => rfl
  groupAxiomsTerm := True.intro
}

end CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean
end HautevilleHouse