import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.symmetricSpaceStructure ∧ A.object.curvatureInvariantsClosed

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end DifferentialGeometrySymmetricSpacesTheoremCanonicalLaneLean
end HautevilleHouse