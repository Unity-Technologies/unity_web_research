diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(8) */
  x_DitheringTextureInvSize : f32,
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

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlat0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

@group(0) @binding(0) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(1) var sampler_PointRepeat : sampler;

var<private> u_xlatb1 : bool;

@group(1) @binding(1) var<uniform> x_68 : UnityPerDraw;

var<private> u_xlatb0 : bool;

var<private> SV_TARGET0 : f32;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_76 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_29 : vec4<f32> = hlslcc_FragCoord;
  let x_38 : f32 = x_33.x_DitheringTextureInvSize;
  u_xlat0 = (vec2<f32>(x_29.x, x_29.y) * vec2<f32>(x_38, x_38));
  let x_51 : vec2<f32> = u_xlat0;
  let x_55 : f32 = x_33.x_GlobalMipBias.x;
  let x_56 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, x_51, x_55);
  u_xlat0.x = x_56.w;
  let x_71 : f32 = x_68.unity_LODFade.x;
  u_xlatb1 = (x_71 >= 0.0f);
  let x_74 : bool = u_xlatb1;
  if (x_74) {
    let x_80 : f32 = u_xlat0.x;
    x_76 = abs(x_80);
  } else {
    let x_84 : f32 = u_xlat0.x;
    x_76 = -(abs(x_84));
  }
  let x_87 : f32 = x_76;
  u_xlat0.x = x_87;
  let x_90 : f32 = u_xlat0.x;
  let x_93 : f32 = x_68.unity_LODFade.x;
  u_xlat0.x = (-(x_90) + x_93);
  let x_98 : f32 = u_xlat0.x;
  u_xlatb0 = (x_98 < 0.0f);
  let x_100 : bool = u_xlatb0;
  if (((select(0i, 1i, x_100) * -1i) != 0i)) {
    discard;
  }
  let x_111 : f32 = hlslcc_FragCoord.z;
  SV_TARGET0 = x_111;
  return;
}

struct main_out {
  @location(0)
  SV_TARGET0_1 : f32,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_TARGET0);
}


