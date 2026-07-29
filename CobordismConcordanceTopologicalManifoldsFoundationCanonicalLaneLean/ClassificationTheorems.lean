import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsFoundationCanonicalLaneLean

structure ClassificationTheorems where
  sCobordismClassification : Prop
  hCobordismClassification : Prop
  falsificationConditions : Prop
  cobordismGroupsComputed : Prop
  sCobordismClassificationTerm : sCobordismClassification
  hCobordismClassificationTerm : hCobordismClassification
  falsificationConditionsTerm : falsificationConditions
  cobordismGroupsComputedTerm : cobordismGroupsComputed

structure ClassificationEvidence (C : ClassificationTheorems) where
  sCobordismClassificationClosed : C.sCobordismClassification
  hCobordismClassificationClosed : C.hCobordismClassification
  falsificationConditionsClosed : C.falsificationConditions
  cobordismGroupsComputedClosed : C.cobordismGroupsComputed

def ClassificationClosed (C : ClassificationTheorems) : Prop :=
  C.sCobordismClassification ∧ C.hCobordismClassification ∧
  C.falsificationConditions ∧ C.cobordismGroupsComputed

theorem classification_closed_from_evidence (C : ClassificationTheorems)
    (E : ClassificationEvidence C) : ClassificationClosed C := by
  exact And.intro E.sCobordismClassificationClosed
    (And.intro E.hCobordismClassificationClosed
      (And.intro E.falsificationConditionsClosed E.cobordismGroupsComputedClosed))

end CobordismConcordanceTopologicalManifoldsFoundationCanonicalLaneLean
end HautevilleHouse