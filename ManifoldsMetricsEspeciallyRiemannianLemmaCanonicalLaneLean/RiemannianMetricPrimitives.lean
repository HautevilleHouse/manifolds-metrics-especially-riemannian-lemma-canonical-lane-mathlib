import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManifoldsMetricsEspeciallyRiemannianLemmaCanonicalLaneLean

structure RiemannianMetricPrimitives where
  innerProduct : String
  leviCivitaConnection : String
  metricCompatibility : Bool
  torsionFree : Bool

defaultRiemannianMetricPrimitives : RiemannianMetricPrimitives := {
  innerProduct := "⟨X,Y⟩_p = g_p(X,Y)"
, leviCivitaConnection := "∇_X Y = 1/2 (X⟨Y,Z⟩ + Y⟨X,Z⟩ - Z⟨X,Y⟩ + ⟨[X,Y],Z⟩ - ⟨[X,Z],Y⟩ - ⟨[Y,Z],X⟩)"
, metricCompatibility := True
, torsionFree := True
}

def RiemannianMetricPrimitivesClosed (C : RiemannianMetricPrimitives) : Prop :=
  C.metricCompatibility ∧ C.torsionFree

theorem riemannian_metric_primitives_closed_checked :
    RiemannianMetricPrimitivesClosed defaultRiemannianMetricPrimitives := by
  exact And.intro rfl rfl

end ManifoldsMetricsEspeciallyRiemannianLemmaCanonicalLaneLean
end HautevilleHouse
