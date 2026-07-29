import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesTheoremCanonicalLaneLean

structure SymmetricSpaceObject where
  carrier : Type u
  topology : TopologicalSpace carrier
  riemannianMetric : carrier → carrier → ℝ
  geodesicSymmetry : carrier → (carrier → carrier)
  symmetryInvolutive : ∀ x : carrier, (geodesicSymmetry x) ∘ (geodesicSymmetry x) = id
  geodesicSymmetryIsIsometry : ∀ x : carrier, Isometry (geodesicSymmetry x)
  conclusionSymmetry : SymmetricSpaceObject.riemannianMetric = SymmetricSpaceObject.riemannianMetric

def SymmetricSpaceWitnessClosed (O : SymmetricSpaceObject) : Prop :=
  ∀ (x : carrier), IsIsometry (O.geodesicSymmetry x)

end DifferentialGeometrySymmetricSpacesTheoremCanonicalLaneLean
end HautevilleHouse