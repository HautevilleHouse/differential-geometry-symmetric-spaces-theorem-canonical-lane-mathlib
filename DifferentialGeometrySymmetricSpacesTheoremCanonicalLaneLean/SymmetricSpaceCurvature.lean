import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesTheoremCanonicalLaneLean

structure SymmetricSpaceCurvaturePackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  metric : Type v
  riemannCurvatureTensor : Type w
  ricciTensor : Type x
  scalarCurvature : Type y
  isSymmetric : Prop
  curvatureInvariant : Prop
  symmetricCondition : Prop

structure SymmetricSpaceCurvatureEvidence (G : SymmetricSpaceCurvaturePackage) where
  isSymmetricClosed : G.isSymmetric
  curvatureInvariantClosed : G.curvatureInvariant
  symmetricConditionClosed : G.symmetricCondition

def SymmetricSpaceCurvatureClosed (G : SymmetricSpaceCurvaturePackage) : Prop :=
  G.isSymmetric ∧ G.curvatureInvariant ∧ G.symmetricCondition

theorem symmetric_space_curvature_closed_from_evidence
    (G : SymmetricSpaceCurvaturePackage) (E : SymmetricSpaceCurvatureEvidence G) :
    SymmetricSpaceCurvatureClosed G := by
  exact And.intro E.isSymmetricClosed
    (And.intro E.curvatureInvariantClosed E.symmetricConditionClosed)

end DifferentialGeometrySymmetricSpacesTheoremCanonicalLaneLean
end HautevilleHouse