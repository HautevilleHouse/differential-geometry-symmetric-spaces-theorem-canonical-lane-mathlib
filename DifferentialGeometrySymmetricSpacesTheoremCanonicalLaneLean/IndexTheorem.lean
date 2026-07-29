import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesTheoremCanonicalLaneLean

structure IndexTheorem where
  ellipticOperator : Type u
  symbolClass : Type v
  analyticIndex : ℤ
  topologicalIndex : ℤ
  indexEquality : Prop
  chernCharacter : Type w

structure IndexTheoremEvidence (I : IndexTheorem) where
  indexEqualityClosed : I.indexEquality

def IndexTheoremClosed (I : IndexTheorem) : Prop :=
  I.indexEquality

theorem index_theorem_closed_from_evidence (I : IndexTheorem) (E : IndexTheoremEvidence I) :
    IndexTheoremClosed I := by
  exact E.indexEqualityClosed

end DifferentialGeometrySymmetricSpacesTheoremCanonicalLaneLean
end HautevilleHouse
