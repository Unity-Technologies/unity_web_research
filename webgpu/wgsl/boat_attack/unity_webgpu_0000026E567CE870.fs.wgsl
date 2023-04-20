diagnostic(off, derivative_uniformity);

alias Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  /* @offset(0) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(64) */
  unity_WorldToObject : mat4x4<f32>,
  /* @offset(128) */
  unity_LODFade : vec4<f32>,
  /* @offset(144) */
  unity_WorldTransformParams : vec4<f32>,
  /* @offset(160) */
  unity_RenderingLayer : vec4<f32>,
  /* @offset(176) */
  unity_LightData : vec4<f32>,
  /* @offset(192) */
  unity_LightIndices : Arr,
  /* @offset(224) */
  unity_ProbesOcclusion : vec4<f32>,
  /* @offset(240) */
  unity_SpecCube0_HDR : vec4<f32>,
  /* @offset(256) */
  unity_SpecCube1_HDR : vec4<f32>,
  /* @offset(272) */
  unity_SpecCube0_BoxMax : vec4<f32>,
  /* @offset(288) */
  unity_SpecCube0_BoxMin : vec4<f32>,
  /* @offset(304) */
  unity_SpecCube0_ProbePosition : vec4<f32>,
  /* @offset(320) */
  unity_SpecCube1_BoxMax : vec4<f32>,
  /* @offset(336) */
  unity_SpecCube1_BoxMin : vec4<f32>,
  /* @offset(352) */
  unity_SpecCube1_ProbePosition : vec4<f32>,
  /* @offset(368) */
  unity_LightmapST : vec4<f32>,
  /* @offset(384) */
  unity_DynamicLightmapST : vec4<f32>,
  /* @offset(400) */
  unity_SHAr : vec4<f32>,
  /* @offset(416) */
  unity_SHAg : vec4<f32>,
  /* @offset(432) */
  unity_SHAb : vec4<f32>,
  /* @offset(448) */
  unity_SHBr : vec4<f32>,
  /* @offset(464) */
  unity_SHBg : vec4<f32>,
  /* @offset(480) */
  unity_SHBb : vec4<f32>,
  /* @offset(496) */
  unity_SHC : vec4<f32>,
  /* @offset(512) */
  unity_RendererBounds_Min : vec4<f32>,
  /* @offset(528) */
  unity_RendererBounds_Max : vec4<f32>,
  /* @offset(544) */
  unity_MatrixPreviousM : mat4x4<f32>,
  /* @offset(608) */
  unity_MatrixPreviousMI : mat4x4<f32>,
  /* @offset(672) */
  unity_MotionVectorsParams : vec4<f32>,
  /* @offset(688) */
  unity_SpriteColor : vec4<f32>,
  /* @offset(704) */
  unity_SpriteProps : vec4<f32>,
}

var<private> u_xlat0 : vec2<f32>;

var<private> vs_PREV_POSITION_CS_NO_JITTER0 : vec4<f32>;

var<private> u_xlat2 : f32;

var<private> vs_POSITION_CS_NO_JITTER0 : vec4<f32>;

var<private> u_xlatb2 : bool;

@group(1) @binding(0) var<uniform> x_54 : UnityPerDraw;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_67 : vec2<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_18 : f32 = vs_PREV_POSITION_CS_NO_JITTER0.w;
  u_xlat0.x = (1.0f / x_18);
  let x_23 : vec2<f32> = u_xlat0;
  let x_25 : vec4<f32> = vs_PREV_POSITION_CS_NO_JITTER0;
  u_xlat0 = (vec2<f32>(x_23.x, x_23.x) * vec2<f32>(x_25.x, x_25.y));
  let x_31 : f32 = vs_POSITION_CS_NO_JITTER0.w;
  u_xlat2 = (1.0f / x_31);
  let x_33 : vec4<f32> = vs_POSITION_CS_NO_JITTER0;
  let x_35 : f32 = u_xlat2;
  let x_38 : vec2<f32> = u_xlat0;
  u_xlat0 = ((vec2<f32>(x_33.x, x_33.y) * vec2<f32>(x_35, x_35)) + -(x_38));
  let x_41 : vec2<f32> = u_xlat0;
  u_xlat0 = (x_41 * vec2<f32>(0.5f, -0.5f));
  let x_60 : f32 = x_54.unity_MotionVectorsParams.y;
  u_xlatb2 = !((x_60 == 0.0f));
  let x_65 : bool = u_xlatb2;
  if (x_65) {
    let x_70 : vec2<f32> = u_xlat0;
    x_67 = x_70;
  } else {
    x_67 = vec2<f32>(0.0f, 0.0f);
  }
  let x_73 : vec2<f32> = x_67;
  let x_74 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_73.x, x_73.y, x_74.z, x_74.w);
  let x_76 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_76.x, x_76.y, vec2<f32>(0.0f, 0.0f).x, vec2<f32>(0.0f, 0.0f).y);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_PREV_POSITION_CS_NO_JITTER0_param : vec4<f32>, @location(0) vs_POSITION_CS_NO_JITTER0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_PREV_POSITION_CS_NO_JITTER0 = vs_PREV_POSITION_CS_NO_JITTER0_param;
  vs_POSITION_CS_NO_JITTER0 = vs_POSITION_CS_NO_JITTER0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


