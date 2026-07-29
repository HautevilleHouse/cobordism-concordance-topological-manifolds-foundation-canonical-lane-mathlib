import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsFoundationCanonicalLaneLean

structure CobordismCategoryPackage where
  objects : Type u
  cobordisms : Type v
  composition : Prop
  identityCobordism : Prop
  compositionAssociative : Prop
  identityLeftUnit : Prop
  identityRightUnit : Prop

structure CobordismCategoryEvidence (C : CobordismCategoryPackage) where
  compositionClosed : C.composition
  identityCobordismClosed : C.identityCobordism
  compositionAssociativeClosed : C.compositionAssociative
  identityLeftUnitClosed : C.identityLeftUnit
  identityRightUnitClosed : C.identityRightUnit

def CobordismCategoryClosed (C : CobordismCategoryPackage) : Prop :=
  C.composition ∧ C.identityCobordism ∧ C.compositionAssociative ∧
  C.identityLeftUnit ∧ C.identityRightUnit

theorem cobordism_category_closed_from_evidence
    (C : CobordismCategoryPackage) (E : CobordismCategoryEvidence C) :
    CobordismCategoryClosed C := by
  exact And.intro E.compositionClosed
    (And.intro E.identityCobordismClosed
      (And.intro E.compositionAssociativeClosed
        (And.intro E.identityLeftUnitClosed E.identityRightUnitClosed)))

end CobordismConcordanceTopologicalManifoldsFoundationCanonicalLaneLean
end HautevilleHouse