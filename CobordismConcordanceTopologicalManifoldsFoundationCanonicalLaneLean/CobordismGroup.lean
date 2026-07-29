import CobordismConcordanceTopologicalManifoldsFoundationCanonicalLaneLean.RiemannianCurvature

/-!
# Cobordism Group Package
-/

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsFoundationCanonicalLaneLean

structure CobordismGroupPackage {G : RiemannianCurvaturePackage} where
  dimension : Nat
  oriented : Prop
  cobordismClassType : Type u
  additiveStructure : Prop
  zeroClass : Prop
  inverseClass : Prop

structure CobordismGroupEvidence {G : RiemannianCurvaturePackage} (C : CobordismGroupPackage G) where
  additiveStructureClosed : C.additiveStructure
  zeroClassClosed : C.zeroClass
  inverseClassClosed : C.inverseClass

def CobordismGroupClosed {G : RiemannianCurvaturePackage} (C : CobordismGroupPackage G) : Prop :=
  C.additiveStructure ∧ C.zeroClass ∧ C.inverseClass

theorem cobordism_group_closed_from_evidence {G : RiemannianCurvaturePackage} (C : CobordismGroupPackage G) (E : CobordismGroupEvidence C) : CobordismGroupClosed C := by
  exact And.intro E.additiveStructureClosed (And.intro E.zeroClassClosed E.inverseClassClosed)

end CobordismConcordanceTopologicalManifoldsFoundationCanonicalLaneLean
end HautevilleHouse
