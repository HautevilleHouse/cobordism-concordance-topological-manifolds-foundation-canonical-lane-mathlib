import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsFoundationCanonicalLaneLean

structure TopologicalManifoldPackage where
  carrier : Type
  topology : TopologicalSpace carrier
  dimension : Nat
  hausdorff : Prop
  secondCountable : Prop
  locallyEuclidean : Type → Prop
  hausdorffTerm : hausdorff
  secondCountableTerm : secondCountable
  locallyEuclideanTerm : ∀ (x : carrier), locallyEuclidean carrier

structure TopologicalManifoldEvidence (M : TopologicalManifoldPackage) where
  hausdorffClosed : M.hausdorff
  secondCountableClosed : M.secondCountable
  locallyEuclideanClosed : ∀ (x : M.carrier), M.locallyEuclidean M.carrier

def TopologicalManifoldClosed (M : TopologicalManifoldPackage) : Prop :=
  M.hausdorff ∧ M.secondCountable ∧ ∀ (x : M.carrier), M.locallyEuclidean M.carrier

theorem topological_manifold_closed_from_evidence (M : TopologicalManifoldPackage)
    (E : TopologicalManifoldEvidence M) : TopologicalManifoldClosed M := by
  exact And.intro E.hausdorffClosed (And.intro E.secondCountableClosed E.locallyEuclideanClosed)

end CobordismConcordanceTopologicalManifoldsFoundationCanonicalLaneLean
end HautevilleHouse
