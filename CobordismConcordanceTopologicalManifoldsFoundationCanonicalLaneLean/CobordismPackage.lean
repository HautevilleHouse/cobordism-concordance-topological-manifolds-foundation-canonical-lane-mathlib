import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsFoundationCanonicalLaneLean

structure CobordismPackage where
  sourceManifold : Type
  targetManifold : Type
  sourceTopology : TopologicalSpace sourceManifold
  targetTopology : TopologicalSpace targetManifold
  bordism : Type
  boundaryRelation : Prop
  compositionLaw : Prop
  orientedCobordismGroup : Type
  orientedCobordismGroupDefined : Prop
  orientedCobordismGroupDefinedTerm : orientedCobordismGroupDefined

structure CobordismEvidence (C : CobordismPackage) where
  boundaryRelationClosed : C.boundaryRelation
  compositionLawClosed : C.compositionLaw
  orientedCobordismGroupDefinedClosed : C.orientedCobordismGroupDefined

def CobordismClosed (C : CobordismPackage) : Prop :=
  C.boundaryRelation ∧ C.compositionLaw ∧ C.orientedCobordismGroupDefined

theorem cobordism_closed_from_evidence (C : CobordismPackage)
    (E : CobordismEvidence C) : CobordismClosed C := by
  exact And.intro E.boundaryRelationClosed
    (And.intro E.compositionLawClosed E.orientedCobordismGroupDefinedClosed)

end CobordismConcordanceTopologicalManifoldsFoundationCanonicalLaneLean
end HautevilleHouse