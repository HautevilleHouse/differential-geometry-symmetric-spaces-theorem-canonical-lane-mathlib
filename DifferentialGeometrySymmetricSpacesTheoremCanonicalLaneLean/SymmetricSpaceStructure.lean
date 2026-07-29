import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Geometry.Manifold.Riemannian.Basic
import Mathlib.Geometry.Manifold.SymmetricSpace.Basic

/-!
# Symmetric Space Structure Package

Defines the formal structure for symmetric spaces: connections, curvature,
involution, and the Cartan decomposition.
-/

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesTheoremCanonicalLaneLean

structure SymmetricSpaceStructurePackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : manifold → SmoothManifold
  metric : RiemannianMetric manifold
  involution : manifold → manifold
  involutionSmooth : SmoothInvolution involution
  involutionIsIsometry : IsIsometry involution
  geodesicSymmetricPoint : (x y : manifold) → manifold
  symmetricPointProperty : (x y : manifold) → metric.dist x (geodesicSymmetricPoint x y) = metric.dist x y
  cartanDecomposition : LieAlgebra
  curvatureConstant : Type v
  curvatureConstantIsParallel : ParallelSection curvatureConstant

structure SymmetricSpaceEvidence (P : SymmetricSpaceStructurePackage) where
  involutionSmoothClosed : P.involutionSmooth
  involutionIsIsometryClosed : P.involutionIsIsometry
  symmetricPointPropertyClosed : P.symmetricPointProperty
  curvatureConstantIsParallelClosed : P.curvatureConstantIsParallel

def SymmetricSpaceStructureClosed (P : SymmetricSpaceStructurePackage) : Prop :=
  P.involutionSmooth ∧ P.involutionIsIsometry ∧ P.symmetricPointProperty ∧ P.curvatureConstantIsParallel

theorem symmetric_space_structure_closed_from_evidence
    (P : SymmetricSpaceStructurePackage) (E : SymmetricSpaceEvidence P) :
    SymmetricSpaceStructureClosed P := by
  exact And.intro E.involutionSmoothClosed (And.intro E.involutionIsIsometryClosed (And.intro E.symmetricPointPropertyClosed E.curvatureConstantIsParallelClosed))

end DifferentialGeometrySymmetricSpacesTheoremCanonicalLaneLean
end HautevilleHouse
