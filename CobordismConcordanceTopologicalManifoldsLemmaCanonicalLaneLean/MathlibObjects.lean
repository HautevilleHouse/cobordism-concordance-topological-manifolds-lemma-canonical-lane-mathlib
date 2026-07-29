import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean

structure CobordismSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CobordismAdmittedObject where
  space : CobordismSpace
  closedCobordism : Prop
  concordanceProperty : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  homeomorphicToSphere : Prop
  conclusion : homeomorphicToSphere

def CobordismWitnessClosed (O : CobordismAdmittedObject) : Prop :=
  O.homeomorphicToSphere

end CobordismConcordanceTopologicalManifoldsLemmaCanonicalLaneLean
end HautevilleHouse
