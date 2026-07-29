import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesTheoremCanonicalLaneLean

structure SymmetricSpace where
  carrier : Type u
  topology : TopologicalSpace carrier
  riemannianMetric : Type v
  smoothStructure : Prop
  geodesicSymmetricProperty : Prop
  isometryGroup : Type w

structure SymmetricSpaceEvidence (S : SymmetricSpace) where
  smoothStructureClosed : S.smoothStructure
  geodesicSymmetricPropertyClosed : S.geodesicSymmetricProperty

def SymmetricSpaceClosed (S : SymmetricSpace) : Prop :=
  S.smoothStructure ∧ S.geodesicSymmetricProperty

theorem symmetric_space_closed_from_evidence (S : SymmetricSpace) (E : SymmetricSpaceEvidence S) :
    SymmetricSpaceClosed S := by
  exact And.intro E.smoothStructureClosed E.geodesicSymmetricPropertyClosed

end DifferentialGeometrySymmetricSpacesTheoremCanonicalLaneLean
end HautevilleHouse
