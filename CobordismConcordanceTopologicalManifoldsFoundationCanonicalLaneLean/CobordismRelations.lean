import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsFoundationCanonicalLaneLean

structure CobordismPackage where
  sourceManifold : Type u
  targetManifold : Type u
  sourceTopology : TopologicalSpace sourceManifold
  targetTopology : TopologicalSpace targetManifold
  sourceDimension : Nat
  targetDimension : Nat
  cobordismManifold : Type u
  cobordismTopology : TopologicalSpace cobordismManifold
  cobordismBoundaryDecomposition : Prop
  cobordismStructure : Prop

structure CobordismEvidence (C : CobordismPackage) where
  cobordismBoundaryDecompositionClosed : C.cobordismBoundaryDecomposition
  cobordismStructureClosed : C.cobordismStructure

def CobordismClosed (C : CobordismPackage) : Prop :=
  C.cobordismBoundaryDecomposition ∧ C.cobordismStructure

theorem cobordism_closed_from_evidence (C : CobordismPackage) (E : CobordismEvidence C) :
    CobordismClosed C := by
  exact And.intro E.cobordismBoundaryDecompositionClosed E.cobordismStructureClosed

end CobordismConcordanceTopologicalManifoldsFoundationCanonicalLaneLean
end HautevilleHouse
