import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesTheoremCanonicalLaneLean

structure PeriodicGeodesics where
  geodesicLength : Type u
  closedGeodesicSet : Type v
  lengthSpectrum : Nat → Type w
  poincareRecurrence : Prop
  periodicOrbitDensity : Prop

structure PeriodicGeodesicsEvidence (P : PeriodicGeodesics) where
  poincareRecurrenceClosed : P.poincareRecurrence
  periodicOrbitDensityClosed : P.periodicOrbitDensity

def PeriodicGeodesicsClosed (P : PeriodicGeodesics) : Prop :=
  P.poincareRecurrence ∧ P.periodicOrbitDensity

theorem periodic_geodesics_closed_from_evidence (P : PeriodicGeodesics) (E : PeriodicGeodesicsEvidence P) :
    PeriodicGeodesicsClosed P := by
  exact And.intro E.poincareRecurrenceClosed E.periodicOrbitDensityClosed

end DifferentialGeometrySymmetricSpacesTheoremCanonicalLaneLean
end HautevilleHouse
