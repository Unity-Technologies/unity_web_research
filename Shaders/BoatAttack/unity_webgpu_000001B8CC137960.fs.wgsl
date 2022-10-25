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

@group(1) @binding(0) var<uniform> x_17 : UnityPerDraw;

var<private> SV_Target0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlatb0 : bool;
  var u_xlat0 : vec2<f32>;
  var u_xlat1 : vec2<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : f32 = x_17.unity_MotionVectorsParams.y;
  u_xlatb0 = (x_23 == 0.0f);
  let x_26 : bool = u_xlatb0;
  if (x_26) {
    SV_Target0 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
    return;
  }
  let x_42 : f32 = vs_TEXCOORD0.w;
  u_xlat0.x = (1.0f / x_42);
  let x_50 : f32 = vs_TEXCOORD1.w;
  u_xlat1.x = (1.0f / x_50);
  let x_53 : vec2<f32> = u_xlat1;
  let x_55 : vec4<f32> = vs_TEXCOORD1;
  u_xlat1 = (vec2<f32>(x_53.x, x_53.x) * vec2<f32>(x_55.x, x_55.y));
  let x_58 : vec4<f32> = vs_TEXCOORD0;
  let x_60 : vec2<f32> = u_xlat0;
  let x_63 : vec2<f32> = u_xlat1;
  u_xlat0 = ((vec2<f32>(x_58.x, x_58.y) * vec2<f32>(x_60.x, x_60.x)) + -(x_63));
  let x_66 : vec2<f32> = u_xlat0;
  let x_70 : vec2<f32> = (x_66 * vec2<f32>(0.5f, -0.5f));
  let x_71 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_70.x, x_70.y, x_71.z, x_71.w);
  let x_74 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_74.x, x_74.y, vec2<f32>(0.0f, 0.0f).x, vec2<f32>(0.0f, 0.0f).y);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

