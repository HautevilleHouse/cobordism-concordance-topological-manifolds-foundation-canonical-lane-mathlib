import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsFoundationCanonicalLaneLean

structure InvariancePrinciples where
  hCobordismTheorem : Prop
  sCobordismTheorem : Prop
  topologicalInvarianceOfCobordism : Prop
  concordanceImpliesHomeomorphism : Prop
  hCobordismTheoremTerm : hCobordismTheorem
  sCobordismTheoremTerm : sCobordismTheorem
  topologicalInvarianceOfCobordismTerm : topologicalInvarianceOfCobordism
  concordanceImpliesHomeomorphismTerm : concordanceImpliesHomeomorphism

structure InvarianceEvidence (I : InvariancePrinciples) where
  hCobordismTheoremClosed : I.hCobordismTheorem
  sCobordismTheoremClosed : I.sCobordismTheorem
  topologicalInvarianceOfCobordismClosed : I.topologicalInvarianceOfCobordism
  concordanceImpliesHomeomorphismClosed : I.concordanceImpliesHomeomorphism

def InvarianceClosed (I : InvariancePrinciples) : Prop :=
  I.hCobordismTheorem ∧ I.sCobordismTheorem ∧
  I.topologicalInvarianceOfCobordism ∧ I.concordanceImpliesHomeomorphism

theorem invariance_closed_from_evidence (I : InvariancePrinciples)
    (E : InvarianceEvidence I) : InvarianceClosed I := by
  exact And.intro E.hCobordismTheoremClosed
    (And.intro E.sCobordismTheoremClosed
      (And.intro E.topologicalInvarianceOfCobordismClosed E.concordanceImpliesHomeomorphismClosed))

end CobordismConcordanceTopologicalManifoldsFoundationCanonicalLaneLean
end HautevilleHouse