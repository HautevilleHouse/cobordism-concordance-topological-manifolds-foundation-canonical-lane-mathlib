import CobordismConcordanceTopologicalManifoldsFoundationCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CobordismConcordanceSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CobordismConcordanceAdmittedObject where
  space : CobordismConcordanceSpace
  closedManifold : Prop
  simplyConnected : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  homeomorphicToSphere : Prop
  conclusion : homeomorphicToSphere

structure CobordismConcordanceEndgameState where
  object : CobordismConcordanceAdmittedObject

def CobordismConcordanceWitnessClosed (O : CobordismConcordanceAdmittedObject) : Prop :=
  O.homeomorphicToSphere

end CobordismConcordanceTopologicalManifoldsFoundationCanonicalLaneLean
end HautevilleHouse
