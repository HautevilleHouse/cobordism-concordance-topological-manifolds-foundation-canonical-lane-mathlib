import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsFoundation

structure TopologicalCobordismClassificationPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  dimension : Nat
  oriented : Prop
  cobordismClassGroup : Type v
  classificationTheorem : Prop
  classificationTheoremTerm : classificationTheorem

structure TopologicalCobordismClassificationEvidence (C : TopologicalCobordismClassificationPackage) where
  classificationTheoremClosed : C.classificationTheorem

def TopologicalCobordismClassificationClosed (C : TopologicalCobordismClassificationPackage) : Prop :=
  C.classificationTheorem

theorem topological_cobordism_classification_closed_from_evidence
    (C : TopologicalCobordismClassificationPackage)
    (E : TopologicalCobordismClassificationEvidence C) :
    TopologicalCobordismClassificationClosed C := by
  exact E.classificationTheoremClosed

end CobordismConcordanceTopologicalManifoldsFoundation
end HautevilleHouse