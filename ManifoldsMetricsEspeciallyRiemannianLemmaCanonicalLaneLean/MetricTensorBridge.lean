import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.Calculus.MeanInequalities

namespace HautevilleHouse
namespace ManifoldsMetricsEspeciallyRiemannianLemmaCanonicalLaneLean

structure RiemannianMetricDatum where
  manifoldLabel : String
  metricTensor : String
  dimension : Nat
  sectionalCurvatureBounded : Bool

def primitiveRiemannianMetricDatum : RiemannianMetricDatum := {
  manifoldLabel := "Riemannian manifold with bounded sectional curvature",
  metricTensor := "smooth Riemannian metric tensor g",
  dimension := 3,
  sectionalCurvatureBounded := true
}

def MetricTensorClosure (M : RiemannianMetricDatum) : Prop :=
  M.sectionalCurvatureBounded = true

end ManifoldsMetricsEspeciallyRiemannianLemmaCanonicalLaneLean
end HautevilleHouse
