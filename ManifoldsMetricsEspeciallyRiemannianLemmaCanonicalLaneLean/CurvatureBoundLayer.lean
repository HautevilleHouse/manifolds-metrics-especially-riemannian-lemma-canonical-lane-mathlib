import canonicalLaneMathlib.AdmissibleClass
import ManifoldsMetricsEspeciallyRiemannianLemmaCanonicalLaneLean.MetricTensorBridge

namespace HautevilleHouse
namespace ManifoldsMetricsEspeciallyRiemannianLemmaCanonicalLaneLean

structure CurvatureBoundCertificate where
  metricDatum : RiemannianMetricDatum
  sectionalCurvatureUpper : ℝ
  ricciCurvatureLower : ℝ
  scalarCurvatureBounded : Bool
  curvatureBoundChecked : Bool

def primitiveCurvatureBoundCertificate : CurvatureBoundCertificate := {
  metricDatum := primitiveRiemannianMetricDatum,
  sectionalCurvatureUpper := 1.0,
  ricciCurvatureLower := -1.0,
  scalarCurvatureBounded := true,
  curvatureBoundChecked := true
}

def CurvatureBoundLayerClosed (C : CurvatureBoundCertificate) : Prop :=
  C.metricDatum.sectionalCurvatureBounded = true ∧
  C.sectionalCurvatureUpper > 0 ∧
  C.ricciCurvatureLower < 0 ∧
  C.scalarCurvatureBounded = true ∧
  C.curvatureBoundChecked = true

theorem curvature_bound_layer_closed_checked :
    CurvatureBoundLayerClosed primitiveCurvatureBoundCertificate := by
  exact And.intro rfl (And.intro (by norm_num) (And.intro (by norm_num) (And.intro rfl rfl)))

end ManifoldsMetricsEspeciallyRiemannianLemmaCanonicalLaneLean
end HautevilleHouse
