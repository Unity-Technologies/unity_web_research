diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
}

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

@group(0) @binding(0) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(1) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

var<private> u_xlatb0 : bool;

var<private> vs_PREVIOUS_CLIP_POSITION_NO_JITTER0 : vec3<f32>;

var<private> u_xlat2 : f32;

var<private> vs_CLIP_POSITION_NO_JITTER0 : vec3<f32>;

var<private> u_xlatb2 : bool;

@group(1) @binding(1) var<uniform> x_99 : UnityPerDraw;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_109 : vec2<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_INTERP0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_23.x, x_23.y), x_34);
  u_xlat0.x = x_35.w;
  let x_41 : f32 = u_xlat0.x;
  u_xlat0.x = (x_41 + -0.40000000596046447754f);
  let x_49 : f32 = u_xlat0.x;
  u_xlatb0 = (x_49 < 0.0f);
  let x_52 : bool = u_xlatb0;
  if (((select(0i, 1i, x_52) * -1i) != 0i)) {
    discard;
  }
  let x_68 : f32 = vs_PREVIOUS_CLIP_POSITION_NO_JITTER0.z;
  u_xlat0.x = (1.0f / x_68);
  let x_71 : vec2<f32> = u_xlat0;
  let x_73 : vec3<f32> = vs_PREVIOUS_CLIP_POSITION_NO_JITTER0;
  u_xlat0 = (vec2<f32>(x_71.x, x_71.x) * vec2<f32>(x_73.x, x_73.y));
  let x_79 : f32 = vs_CLIP_POSITION_NO_JITTER0.z;
  u_xlat2 = (1.0f / x_79);
  let x_81 : vec3<f32> = vs_CLIP_POSITION_NO_JITTER0;
  let x_83 : f32 = u_xlat2;
  let x_86 : vec2<f32> = u_xlat0;
  u_xlat0 = ((vec2<f32>(x_81.x, x_81.y) * vec2<f32>(x_83, x_83)) + -(x_86));
  let x_89 : vec2<f32> = u_xlat0;
  u_xlat0 = (x_89 * vec2<f32>(0.5f, -0.5f));
  let x_103 : f32 = x_99.unity_MotionVectorsParams.y;
  u_xlatb2 = !((x_103 == 0.0f));
  let x_107 : bool = u_xlatb2;
  if (x_107) {
    let x_112 : vec2<f32> = u_xlat0;
    x_109 = x_112;
  } else {
    x_109 = vec2<f32>(0.0f, 0.0f);
  }
  let x_115 : vec2<f32> = x_109;
  let x_116 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_115.x, x_115.y, x_116.z, x_116.w);
  let x_118 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_118.x, x_118.y, vec2<f32>(0.0f, 0.0f).x, vec2<f32>(0.0f, 0.0f).y);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_INTERP0_param : vec4<f32>, @location(1) vs_PREVIOUS_CLIP_POSITION_NO_JITTER0_param : vec3<f32>, @location(0) vs_CLIP_POSITION_NO_JITTER0_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP0 = vs_INTERP0_param;
  vs_PREVIOUS_CLIP_POSITION_NO_JITTER0 = vs_PREVIOUS_CLIP_POSITION_NO_JITTER0_param;
  vs_CLIP_POSITION_NO_JITTER0 = vs_CLIP_POSITION_NO_JITTER0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


