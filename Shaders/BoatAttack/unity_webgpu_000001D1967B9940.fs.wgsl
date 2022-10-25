struct PGlobals {
  x_RenderingLayerMaxInt : u32,
  x_RenderingLayerRcpMaxInt : f32,
}

type Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr,
  unity_ProbesOcclusion : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_LightmapST : vec4<f32>,
  unity_DynamicLightmapST : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_RendererBounds_Min : vec4<f32>,
  unity_RendererBounds_Max : vec4<f32>,
  unity_MatrixPreviousM : mat4x4<f32>,
  unity_MatrixPreviousMI : mat4x4<f32>,
  unity_MotionVectorsParams : vec4<f32>,
  unity_SpriteColor : vec4<f32>,
  unity_SpriteProps : vec4<f32>,
}

var<private> vs_INTERP1 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_35 : PGlobals;

@group(1) @binding(1) var<uniform> x_46 : UnityPerDraw;

var<private> SV_Target1 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : f32;
  var u_xlatu0 : u32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_INTERP1;
  let x_13 : vec3<f32> = vs_INTERP1;
  u_xlat0 = dot(x_12, x_13);
  let x_15 : f32 = u_xlat0;
  u_xlat0 = inverseSqrt(x_15);
  let x_20 : f32 = u_xlat0;
  let x_22 : vec3<f32> = vs_INTERP1;
  let x_23 : vec3<f32> = (vec3<f32>(x_20, x_20, x_20) * x_22);
  let x_24 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_23.x, x_23.y, x_23.z, x_24.w);
  SV_Target0.w = 0.0f;
  let x_40 : u32 = x_35.x_RenderingLayerMaxInt;
  let x_51 : f32 = x_46.unity_RenderingLayer.x;
  u_xlatu0 = (x_40 & bitcast<u32>(x_51));
  let x_54 : u32 = u_xlatu0;
  u_xlat0 = f32(x_54);
  let x_57 : f32 = u_xlat0;
  let x_60 : f32 = x_35.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_57 * x_60);
  let x_64 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_64, 0.0f, 1.0f);
  let x_69 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_69.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_INTERP1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP1 = vs_INTERP1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0, SV_Target1);
}

