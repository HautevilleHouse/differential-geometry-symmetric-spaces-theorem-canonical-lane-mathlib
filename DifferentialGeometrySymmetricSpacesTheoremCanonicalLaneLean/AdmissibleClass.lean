import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesTheoremCanonicalLaneLean

structure SymmetricSpaceAdmittedObject where
  manifold : Type
  metric : Type
  symmetricSpaceStructure : Prop
  curvatureInvariantsClosed : Prop
  conclusion : symmetricSpaceStructure ∧ curvatureInvariantsClosed

structure AdmissibleClass where
  object : SymmetricSpaceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.symmetricSpaceStructure ∧ A.object.curvatureInvariantsClosed) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DifferentialGeometrySymmetricSpacesTheoremCanonicalLaneLean
end HautevilleHouse