import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsFoundation

structure CobordismPackage where
  sourceManifold : Type u
  targetManifold : Type u
  sourceTopology : TopologicalSpace sourceManifold
  targetTopology : TopologicalSpace targetManifold
  cobordismManifold : Type u
  cobordismTopology : TopologicalSpace cobordismManifold
  boundaryComponents : Prop
  boundaryComponentsTerm : boundaryComponents

structure CobordismEvidence (C : CobordismPackage) where
  boundaryComponentsClosed : C.boundaryComponents

def CobordismClosed (C : CobordismPackage) : Prop :=
  C.boundaryComponents

theorem cobordism_closed_from_evidence (C : CobordismPackage) (E : CobordismEvidence C) :
    CobordismClosed C := by
  exact E.boundaryComponentsClosed

end CobordismConcordanceTopologicalManifoldsFoundation
end HautevilleHouse