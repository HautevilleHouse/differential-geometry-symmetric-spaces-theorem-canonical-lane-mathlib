import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Geometry.Manifold.Riemannian.Basic

/-!
# Curvature Invariants Package

Defines curvature invariants for symmetric spaces: sectional curvature,
Ricci curvature, scalar curvature, and their invariance under symmetries.
-/

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesTheoremCanonicalLaneLean

structure CurvatureInvariantsPackage (P : SymmetricSpaceStructurePackage) where
  sectionalCurvature : P.manifold → Plane → ℝ
  ricciCurvature : P.manifold → TangentSpace → ℝ
  scalarCurvature : P.manifold → ℝ
  sectionalInvariant : (x : P.manifold) → (inv : P.involution x) → sectionalCurvature x = sectionalCurvature (P.involution x)
  ricciInvariant : (x : P.manifold) → (inv : P.involution x) → ricciCurvature x = ricciCurvature (P.involution x)
  scalarInvariant : (x : P.manifold) → (inv : P.involution x) → scalarCurvature x = scalarCurvature (P.involution x)
  constantCurvatureCondition : Prop

structure CurvatureInvariantsEvidence {P : SymmetricSpaceStructurePackage} (I : CurvatureInvariantsPackage P) where
  sectionalInvariantClosed : I.sectionalInvariant
  ricciInvariantClosed : I.ricciInvariant
  scalarInvariantClosed : I.scalarInvariant
  constantCurvatureConditionClosed : I.constantCurvatureCondition

def CurvatureInvariantsClosed {P : SymmetricSpaceStructurePackage} (I : CurvatureInvariantsPackage P) : Prop :=
  I.sectionalInvariant ∧ I.ricciInvariant ∧ I.scalarInvariant ∧ I.constantCurvatureCondition

theorem curvature_invariants_closed_from_evidence
    {P : SymmetricSpaceStructurePackage} (I : CurvatureInvariantsPackage P)
    (E : CurvatureInvariantsEvidence I) : CurvatureInvariantsClosed I := by
  exact And.intro E.sectionalInvariantClosed (And.intro E.ricciInvariantClosed (And.intro E.scalarInvariantClosed E.constantCurvatureConditionClosed))

end DifferentialGeometrySymmetricSpacesTheoremCanonicalLaneLean
end HautevilleHouse
