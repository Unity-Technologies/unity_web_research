diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(8) */
  x_AlphaToMaskAvailable : f32,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseMap_ST : vec4<f32>,
  /* @offset(16) */
  x_BaseColor : vec4<f32>,
  /* @offset(32) */
  x_SpecColor : vec4<f32>,
  /* @offset(48) */
  x_EmissionColor : vec4<f32>,
  /* @offset(64) */
  x_Cutoff : f32,
  /* @offset(68) */
  x_Surface : f32,
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

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(1) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_25 : PGlobals;

var<private> u_xlat1 : f32;

@group(1) @binding(2) var<uniform> x_44 : UnityPerMaterial;

var<private> u_xlat2 : f32;

var<private> u_xlat3 : f32;

var<private> u_xlatb2 : bool;

var<private> u_xlatb3 : bool;

var<private> u_xlatb0 : bool;

var<private> vs_PREV_POSITION_CS_NO_JITTER0 : vec4<f32>;

var<private> vs_POSITION_CS_NO_JITTER0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_165 : UnityPerDraw;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_106 : f32;
  var x_175 : vec2<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_22 : vec2<f32> = vs_TEXCOORD0;
  let x_32 : f32 = x_25.x_GlobalMipBias.x;
  let x_34 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_22, x_32);
  u_xlat0.x = x_34.w;
  let x_41 : f32 = u_xlat0.x;
  let x_47 : f32 = x_44.x_BaseColor.w;
  u_xlat1 = (x_41 * x_47);
  let x_50 : f32 = u_xlat0.x;
  let x_52 : f32 = x_44.x_BaseColor.w;
  let x_56 : f32 = x_44.x_Cutoff;
  u_xlat0.x = ((x_50 * x_52) + -(x_56));
  let x_61 : f32 = u_xlat1;
  u_xlat2 = dpdxCoarse(x_61);
  let x_64 : f32 = u_xlat1;
  u_xlat3 = dpdyCoarse(x_64);
  let x_66 : f32 = u_xlat3;
  let x_68 : f32 = u_xlat2;
  u_xlat2 = (abs(x_66) + abs(x_68));
  let x_71 : f32 = u_xlat2;
  u_xlat2 = max(x_71, 0.00009999999747378752f);
  let x_75 : f32 = u_xlat0.x;
  let x_76 : f32 = u_xlat2;
  u_xlat0.x = (x_75 / x_76);
  let x_80 : f32 = u_xlat0.x;
  u_xlat0.x = (x_80 + 0.5f);
  let x_85 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_85, 0.0f, 1.0f);
  let x_94 : f32 = x_25.x_AlphaToMaskAvailable;
  u_xlatb2 = !((x_94 == 0.0f));
  let x_97 : f32 = u_xlat1;
  let x_99 : f32 = x_44.x_Cutoff;
  u_xlatb3 = (x_97 >= x_99);
  let x_101 : bool = u_xlatb3;
  let x_102 : f32 = u_xlat1;
  u_xlat1 = select(0.0f, x_102, x_101);
  let x_104 : bool = u_xlatb2;
  if (x_104) {
    let x_110 : f32 = u_xlat0.x;
    x_106 = x_110;
  } else {
    let x_112 : f32 = u_xlat1;
    x_106 = x_112;
  }
  let x_113 : f32 = x_106;
  u_xlat0.x = x_113;
  let x_116 : f32 = u_xlat0.x;
  u_xlat0.x = (x_116 + -0.00009999999747378752f);
  let x_122 : f32 = u_xlat0.x;
  u_xlatb0 = (x_122 < 0.0f);
  let x_124 : bool = u_xlatb0;
  if (((select(0i, 1i, x_124) * -1i) != 0i)) {
    discard;
  }
  let x_136 : f32 = vs_PREV_POSITION_CS_NO_JITTER0.w;
  u_xlat0.x = (1.0f / x_136);
  let x_139 : vec2<f32> = u_xlat0;
  let x_141 : vec4<f32> = vs_PREV_POSITION_CS_NO_JITTER0;
  u_xlat0 = (vec2<f32>(x_139.x, x_139.x) * vec2<f32>(x_141.x, x_141.y));
  let x_146 : f32 = vs_POSITION_CS_NO_JITTER0.w;
  u_xlat2 = (1.0f / x_146);
  let x_148 : vec4<f32> = vs_POSITION_CS_NO_JITTER0;
  let x_150 : f32 = u_xlat2;
  let x_153 : vec2<f32> = u_xlat0;
  u_xlat0 = ((vec2<f32>(x_148.x, x_148.y) * vec2<f32>(x_150, x_150)) + -(x_153));
  let x_156 : vec2<f32> = u_xlat0;
  u_xlat0 = (x_156 * vec2<f32>(0.5f, -0.5f));
  let x_169 : f32 = x_165.unity_MotionVectorsParams.y;
  u_xlatb2 = !((x_169 == 0.0f));
  let x_173 : bool = u_xlatb2;
  if (x_173) {
    let x_178 : vec2<f32> = u_xlat0;
    x_175 = x_178;
  } else {
    x_175 = vec2<f32>(0.0f, 0.0f);
  }
  let x_181 : vec2<f32> = x_175;
  let x_182 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_181.x, x_181.y, x_182.z, x_182.w);
  let x_184 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_184.x, x_184.y, vec2<f32>(0.0f, 0.0f).x, vec2<f32>(0.0f, 0.0f).y);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_PREV_POSITION_CS_NO_JITTER0_param : vec4<f32>, @location(0) vs_POSITION_CS_NO_JITTER0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_PREV_POSITION_CS_NO_JITTER0 = vs_PREV_POSITION_CS_NO_JITTER0_param;
  vs_POSITION_CS_NO_JITTER0 = vs_POSITION_CS_NO_JITTER0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


