import DifferentialGeometrySymmetricSpacesTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure SymmetricSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure SymmetricSpaceAdmittedObject where
  space : SymmetricSpace
  symmetricSpaceStructure : Prop
  noncompactType : Prop
  curvatureInvariants : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  isSymmetric : Prop
  conclusion : isSymmetric

structure SymmetricSpaceEndgameState where
  object : SymmetricSpaceAdmittedObject

def SymmetricSpaceWitnessClosed (O : SymmetricSpaceAdmittedObject) : Prop :=
  O.isSymmetric

end DifferentialGeometrySymmetricSpacesTheoremCanonicalLaneLean
end HautevilleHouse