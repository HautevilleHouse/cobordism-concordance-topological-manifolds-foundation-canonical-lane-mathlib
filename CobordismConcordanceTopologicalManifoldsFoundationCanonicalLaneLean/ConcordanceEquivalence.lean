import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsFoundationCanonicalLaneLean

structure ConcordanceEquivalencePackage (C : CobordismCategoryPackage) where
  source : C.objects
  target : C.objects
  concordanceData : Prop
  homotopyEquivalence : Prop
  concordanceImpliesEquivalence : Prop
  equivalenceImpliesConcordance : Prop

structure ConcordanceEquivalenceEvidence {C : CobordismCategoryPackage}
    (E : ConcordanceEquivalencePackage C) where
  concordanceDataClosed : E.concordanceData
  homotopyEquivalenceClosed : E.homotopyEquivalence
  concordanceImpliesEquivalenceClosed : E.concordanceImpliesEquivalence
  equivalenceImpliesConcordanceClosed : E.equivalenceImpliesConcordance

def ConcordanceEquivalenceClosed {C : CobordismCategoryPackage}
    (E : ConcordanceEquivalencePackage C) : Prop :=
  E.concordanceData ∧ E.homotopyEquivalence ∧
  E.concordanceImpliesEquivalence ∧ E.equivalenceImpliesConcordance

theorem concordance_equivalence_closed_from_evidence
    {C : CobordismCategoryPackage} (E : ConcordanceEquivalencePackage C)
    (Ev : ConcordanceEquivalenceEvidence E) :
    ConcordanceEquivalenceClosed E := by
  exact And.intro Ev.concordanceDataClosed
    (And.intro Ev.homotopyEquivalenceClosed
      (And.intro Ev.concordanceImpliesEquivalenceClosed
        Ev.equivalenceImpliesConcordanceClosed))

end CobordismConcordanceTopologicalManifoldsFoundationCanonicalLaneLean
end HautevilleHouse