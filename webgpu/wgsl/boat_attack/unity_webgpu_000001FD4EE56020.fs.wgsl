diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(32) */
  x_MainLightColor : vec4<f32>,
  /* @offset(48) */
  x_AdditionalLightsCount : vec4<f32>,
  /* @offset(64) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(80) */
  x_ProjectionParams : vec4<f32>,
  /* @offset(96) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(112) */
  unity_FogParams : vec4<f32>,
  /* @offset(128) */
  unity_FogColor : vec4<f32>,
  /* @offset(144) */
  unity_MatrixV : mat4x4<f32>,
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

alias Arr_1 = array<mat4x4<f32>, 5u>;

alias Arr_2 = array<vec4<f32>, 32u>;

alias Arr_3 = array<mat4x4<f32>, 32u>;

alias Arr_4 = array<vec4<f32>, 32u>;

alias Arr_5 = array<mat4x4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr_1,
  /* @offset(320) */
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  /* @offset(336) */
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  /* @offset(352) */
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  /* @offset(368) */
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  /* @offset(384) */
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  /* @offset(400) */
  x_MainLightShadowOffset0 : vec4<f32>,
  /* @offset(416) */
  x_MainLightShadowOffset1 : vec4<f32>,
  /* @offset(432) */
  x_MainLightShadowParams : vec4<f32>,
  /* @offset(448) */
  x_MainLightShadowmapSize : vec4<f32>,
  /* @offset(464) */
  x_AdditionalShadowOffset0 : vec4<f32>,
  /* @offset(480) */
  x_AdditionalShadowOffset1 : vec4<f32>,
  /* @offset(496) */
  x_AdditionalShadowFadeParams : vec4<f32>,
  /* @offset(512) */
  x_AdditionalShadowmapSize : vec4<f32>,
  /* @offset(528) */
  x_AdditionalShadowParams : Arr_4,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_5,
}

alias Arr_6 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_7 = array<strided_arr, 32u>;

alias Arr_8 = array<strided_arr, 32u>;

struct LightCookies {
  /* @offset(0) */
  x_MainLightWorldToLight : mat4x4<f32>,
  /* @offset(64) */
  x_AdditionalLightsCookieEnableBits : f32,
  /* @offset(68) */
  x_MainLightCookieTextureFormat : f32,
  /* @offset(72) */
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
  /* @offset(80) */
  x_AdditionalLightsWorldToLights : Arr_5,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_4,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
}

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_4,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_4,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_4,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_4,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_4,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_8,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlat1 : f32;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MetallicTex : sampler;

var<private> u_xlatb27 : bool;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat53 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat27 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat4 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_187 : UnityPerDraw;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat29 : vec3<f32>;

var<private> u_xlat30 : vec3<f32>;

var<private> u_xlat78 : f32;

var<private> u_xlatb31 : vec2<bool>;

@group(1) @binding(3) var<uniform> x_333 : LightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat31 : f32;

var<private> u_xlatb57 : bool;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat83 : f32;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat85 : f32;

var<private> u_xlat32 : f32;

var<private> u_xlatb83 : bool;

@group(1) @binding(4) var<uniform> x_1671 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat84 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlatu78 : u32;

var<private> u_xlatu83 : u32;

var<private> u_xlati84 : i32;

var<private> u_xlati83 : i32;

@group(1) @binding(1) var<uniform> x_2110 : AdditionalLights;

var<private> u_xlat87 : f32;

var<private> u_xlati87 : i32;

var<private> u_xlatb88 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat89 : f32;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat88 : f32;

var<private> u_xlatb87 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat39 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat40 : vec2<f32>;

var<private> u_xlat72 : vec2<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlati88 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlati37 : i32;

var<private> u_xlatb37 : vec3<bool>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu80 : u32;

fn main_1() {
  var x_106 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var txVec17 : vec3<f32>;
  var txVec18 : vec3<f32>;
  var txVec19 : vec3<f32>;
  var txVec20 : vec3<f32>;
  var txVec21 : vec3<f32>;
  var txVec22 : vec3<f32>;
  var txVec23 : vec3<f32>;
  var txVec24 : vec3<f32>;
  var txVec25 : vec3<f32>;
  var txVec26 : vec3<f32>;
  var txVec27 : vec3<f32>;
  var txVec28 : vec3<f32>;
  var txVec29 : vec3<f32>;
  var x_1755 : f32;
  var x_1766 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2249 : f32;
  var x_2260 : f32;
  var txVec30 : vec3<f32>;
  var txVec31 : vec3<f32>;
  var txVec32 : vec3<f32>;
  var txVec33 : vec3<f32>;
  var txVec34 : vec3<f32>;
  var txVec35 : vec3<f32>;
  var txVec36 : vec3<f32>;
  var txVec37 : vec3<f32>;
  var txVec38 : vec3<f32>;
  var txVec39 : vec3<f32>;
  var txVec40 : vec3<f32>;
  var txVec41 : vec3<f32>;
  var txVec42 : vec3<f32>;
  var txVec43 : vec3<f32>;
  var txVec44 : vec3<f32>;
  var txVec45 : vec3<f32>;
  var txVec46 : vec3<f32>;
  var txVec47 : vec3<f32>;
  var txVec48 : vec3<f32>;
  var txVec49 : vec3<f32>;
  var txVec50 : vec3<f32>;
  var txVec51 : vec3<f32>;
  var txVec52 : vec3<f32>;
  var txVec53 : vec3<f32>;
  var txVec54 : vec3<f32>;
  var txVec55 : vec3<f32>;
  var txVec56 : vec3<f32>;
  var txVec57 : vec3<f32>;
  var txVec58 : vec3<f32>;
  var txVec59 : vec3<f32>;
  var x_3879 : f32;
  var x_3892 : f32;
  var x_3950 : f32;
  var x_3961 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y), x_36);
  u_xlat0 = x_37;
  let x_45 : vec4<f32> = vs_TEXCOORD0;
  let x_48 : f32 = x_29.x_GlobalMipBias.x;
  let x_49 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_45.x, x_45.y), x_48);
  u_xlat1 = x_49.x;
  let x_57 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb27 = (x_57 == 0.0f);
  let x_63 : vec3<f32> = vs_TEXCOORD7;
  let x_68 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_69 : vec3<f32> = (-(x_63) + x_68);
  let x_70 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_69.x, x_69.y, x_69.z, x_70.w);
  let x_73 : vec4<f32> = u_xlat2;
  let x_75 : vec4<f32> = u_xlat2;
  u_xlat53 = dot(vec3<f32>(x_73.x, x_73.y, x_73.z), vec3<f32>(x_75.x, x_75.y, x_75.z));
  let x_78 : f32 = u_xlat53;
  u_xlat53 = inverseSqrt(x_78);
  let x_80 : f32 = u_xlat53;
  let x_82 : vec4<f32> = u_xlat2;
  let x_84 : vec3<f32> = (vec3<f32>(x_80, x_80, x_80) * vec3<f32>(x_82.x, x_82.y, x_82.z));
  let x_85 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_84.x, x_84.y, x_84.z, x_85.w);
  let x_92 : f32 = x_29.unity_MatrixV[0i].z;
  u_xlat3.x = x_92;
  let x_96 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat3.y = x_96;
  let x_101 : f32 = x_29.unity_MatrixV[2i].z;
  u_xlat3.z = x_101;
  let x_104 : bool = u_xlatb27;
  if (x_104) {
    let x_109 : vec4<f32> = u_xlat2;
    x_106 = vec3<f32>(x_109.x, x_109.y, x_109.z);
  } else {
    let x_112 : vec3<f32> = u_xlat3;
    x_106 = x_112;
  }
  let x_113 : vec3<f32> = x_106;
  u_xlat27 = x_113;
  let x_115 : vec3<f32> = vs_TEXCOORD3;
  let x_116 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2.x = dot(x_115, x_116);
  let x_120 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_120);
  let x_123 : vec4<f32> = u_xlat2;
  let x_125 : vec3<f32> = vs_TEXCOORD3;
  let x_126 : vec3<f32> = (vec3<f32>(x_123.x, x_123.x, x_123.x) * x_125);
  let x_127 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_126.x, x_126.y, x_126.z, x_127.w);
  let x_131 : f32 = vs_TEXCOORD7.y;
  let x_133 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat3.x = (x_131 * x_133);
  let x_137 : f32 = x_29.unity_MatrixV[0i].z;
  let x_139 : f32 = vs_TEXCOORD7.x;
  let x_142 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_137 * x_139) + x_142);
  let x_146 : f32 = x_29.unity_MatrixV[2i].z;
  let x_148 : f32 = vs_TEXCOORD7.z;
  let x_151 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_146 * x_148) + x_151);
  let x_155 : f32 = u_xlat3.x;
  let x_158 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat3.x = (x_155 + x_158);
  let x_162 : f32 = u_xlat3.x;
  let x_166 : f32 = x_29.x_ProjectionParams.y;
  u_xlat3.x = (-(x_162) + -(x_166));
  let x_171 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_171, 0.0f);
  let x_175 : f32 = u_xlat3.x;
  let x_178 : f32 = x_29.unity_FogParams.x;
  u_xlat3.x = (x_175 * x_178);
  u_xlat2.w = 1.0f;
  let x_191 : vec4<f32> = x_187.unity_SHAr;
  let x_192 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_191, x_192);
  let x_197 : vec4<f32> = x_187.unity_SHAg;
  let x_198 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_197, x_198);
  let x_203 : vec4<f32> = x_187.unity_SHAb;
  let x_204 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_203, x_204);
  let x_208 : vec4<f32> = u_xlat2;
  let x_210 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_208.y, x_208.z, x_208.z, x_208.x) * vec4<f32>(x_210.x, x_210.y, x_210.z, x_210.z));
  let x_216 : vec4<f32> = x_187.unity_SHBr;
  let x_217 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_216, x_217);
  let x_222 : vec4<f32> = x_187.unity_SHBg;
  let x_223 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_222, x_223);
  let x_228 : vec4<f32> = x_187.unity_SHBb;
  let x_229 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_228, x_229);
  let x_234 : f32 = u_xlat2.y;
  let x_236 : f32 = u_xlat2.y;
  u_xlat80 = (x_234 * x_236);
  let x_239 : f32 = u_xlat2.x;
  let x_241 : f32 = u_xlat2.x;
  let x_243 : f32 = u_xlat80;
  u_xlat80 = ((x_239 * x_241) + -(x_243));
  let x_249 : vec4<f32> = x_187.unity_SHC;
  let x_251 : f32 = u_xlat80;
  let x_254 : vec4<f32> = u_xlat6;
  u_xlat29 = ((vec3<f32>(x_249.x, x_249.y, x_249.z) * vec3<f32>(x_251, x_251, x_251)) + vec3<f32>(x_254.x, x_254.y, x_254.z));
  let x_257 : vec3<f32> = u_xlat29;
  let x_258 : vec3<f32> = u_xlat4;
  u_xlat29 = (x_257 + x_258);
  let x_260 : vec3<f32> = u_xlat29;
  u_xlat29 = max(x_260, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_263 : f32 = u_xlat1;
  u_xlat80 = ((-(x_263) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_268 : f32 = u_xlat80;
  u_xlat4.x = (-(x_268) + 1.0f);
  let x_273 : vec4<f32> = u_xlat0;
  let x_275 : f32 = u_xlat80;
  u_xlat30 = (vec3<f32>(x_273.x, x_273.y, x_273.z) * vec3<f32>(x_275, x_275, x_275));
  let x_278 : vec4<f32> = u_xlat0;
  let x_282 : vec3<f32> = (vec3<f32>(x_278.x, x_278.y, x_278.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_283 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_282.x, x_282.y, x_282.z, x_283.w);
  let x_285 : f32 = u_xlat1;
  let x_287 : vec4<f32> = u_xlat0;
  let x_292 : vec3<f32> = ((vec3<f32>(x_285, x_285, x_285) * vec3<f32>(x_287.x, x_287.y, x_287.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_293 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_292.x, x_292.y, x_292.z, x_293.w);
  let x_296 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_296) + 1.0f);
  let x_299 : f32 = u_xlat1;
  let x_300 : f32 = u_xlat1;
  u_xlat80 = (x_299 * x_300);
  let x_302 : f32 = u_xlat80;
  u_xlat80 = max(x_302, 0.0078125f);
  let x_305 : f32 = u_xlat80;
  let x_306 : f32 = u_xlat80;
  u_xlat5.x = (x_305 * x_306);
  let x_311 : f32 = u_xlat0.w;
  let x_313 : f32 = u_xlat4.x;
  u_xlat78 = (x_311 + x_313);
  let x_315 : f32 = u_xlat78;
  u_xlat78 = clamp(x_315, 0.0f, 1.0f);
  let x_317 : f32 = u_xlat80;
  u_xlat4.x = ((x_317 * 4.0f) + 2.0f);
  let x_336 : f32 = x_333.x_MainLightShadowParams.y;
  u_xlatb31.x = (0.0f < x_336);
  let x_340 : bool = u_xlatb31.x;
  if (x_340) {
    let x_344 : f32 = x_333.x_MainLightShadowParams.y;
    u_xlatb31.x = (x_344 == 1.0f);
    let x_348 : bool = u_xlatb31.x;
    if (x_348) {
      let x_352 : vec4<f32> = vs_TEXCOORD8;
      let x_355 : vec4<f32> = x_333.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_352.x, x_352.y, x_352.x, x_352.y) + x_355);
      let x_358 : vec4<f32> = u_xlat6;
      let x_359 : vec2<f32> = vec2<f32>(x_358.x, x_358.y);
      let x_361 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_359.x, x_359.y, x_361);
      let x_374 : vec3<f32> = txVec0;
      let x_376 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_374.xy, x_374.z);
      u_xlat7.x = x_376;
      let x_379 : vec4<f32> = u_xlat6;
      let x_380 : vec2<f32> = vec2<f32>(x_379.z, x_379.w);
      let x_382 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_380.x, x_380.y, x_382);
      let x_389 : vec3<f32> = txVec1;
      let x_391 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_389.xy, x_389.z);
      u_xlat7.y = x_391;
      let x_393 : vec4<f32> = vs_TEXCOORD8;
      let x_396 : vec4<f32> = x_333.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_393.x, x_393.y, x_393.x, x_393.y) + x_396);
      let x_399 : vec4<f32> = u_xlat6;
      let x_400 : vec2<f32> = vec2<f32>(x_399.x, x_399.y);
      let x_402 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_400.x, x_400.y, x_402);
      let x_409 : vec3<f32> = txVec2;
      let x_411 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_409.xy, x_409.z);
      u_xlat7.z = x_411;
      let x_414 : vec4<f32> = u_xlat6;
      let x_415 : vec2<f32> = vec2<f32>(x_414.z, x_414.w);
      let x_417 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_415.x, x_415.y, x_417);
      let x_424 : vec3<f32> = txVec3;
      let x_426 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_424.xy, x_424.z);
      u_xlat7.w = x_426;
      let x_429 : vec4<f32> = u_xlat7;
      u_xlat31 = dot(x_429, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_436 : f32 = x_333.x_MainLightShadowParams.y;
      u_xlatb57 = (x_436 == 2.0f);
      let x_438 : bool = u_xlatb57;
      if (x_438) {
        let x_443 : vec4<f32> = vs_TEXCOORD8;
        let x_446 : vec4<f32> = x_333.x_MainLightShadowmapSize;
        u_xlat57 = ((vec2<f32>(x_443.x, x_443.y) * vec2<f32>(x_446.z, x_446.w)) + vec2<f32>(0.5f, 0.5f));
        let x_452 : vec2<f32> = u_xlat57;
        u_xlat57 = floor(x_452);
        let x_454 : vec4<f32> = vs_TEXCOORD8;
        let x_457 : vec4<f32> = x_333.x_MainLightShadowmapSize;
        let x_460 : vec2<f32> = u_xlat57;
        let x_462 : vec2<f32> = ((vec2<f32>(x_454.x, x_454.y) * vec2<f32>(x_457.z, x_457.w)) + -(x_460));
        let x_463 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_462.x, x_462.y, x_463.z, x_463.w);
        let x_465 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_465.x, x_465.x, x_465.y, x_465.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_470 : vec4<f32> = u_xlat7;
        let x_472 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_470.x, x_470.x, x_470.z, x_470.z) * vec4<f32>(x_472.x, x_472.x, x_472.z, x_472.z));
        let x_476 : vec4<f32> = u_xlat8;
        u_xlat58 = (vec2<f32>(x_476.y, x_476.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_481 : vec4<f32> = u_xlat8;
        let x_484 : vec4<f32> = u_xlat6;
        let x_487 : vec2<f32> = ((vec2<f32>(x_481.x, x_481.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_484.x, x_484.y)));
        let x_488 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_487.x, x_488.y, x_487.y, x_488.w);
        let x_490 : vec4<f32> = u_xlat6;
        let x_494 : vec2<f32> = (-(vec2<f32>(x_490.x, x_490.y)) + vec2<f32>(1.0f, 1.0f));
        let x_495 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_494.x, x_494.y, x_495.z, x_495.w);
        let x_498 : vec4<f32> = u_xlat6;
        u_xlat60 = min(vec2<f32>(x_498.x, x_498.y), vec2<f32>(0.0f, 0.0f));
        let x_502 : vec2<f32> = u_xlat60;
        let x_504 : vec2<f32> = u_xlat60;
        let x_506 : vec4<f32> = u_xlat8;
        u_xlat60 = ((-(x_502) * x_504) + vec2<f32>(x_506.x, x_506.y));
        let x_509 : vec4<f32> = u_xlat6;
        let x_511 : vec2<f32> = max(vec2<f32>(x_509.x, x_509.y), vec2<f32>(0.0f, 0.0f));
        let x_512 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_511.x, x_511.y, x_512.z, x_512.w);
        let x_514 : vec4<f32> = u_xlat6;
        let x_517 : vec4<f32> = u_xlat6;
        let x_520 : vec4<f32> = u_xlat7;
        let x_522 : vec2<f32> = ((-(vec2<f32>(x_514.x, x_514.y)) * vec2<f32>(x_517.x, x_517.y)) + vec2<f32>(x_520.y, x_520.w));
        let x_523 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_522.x, x_522.y, x_523.z, x_523.w);
        let x_525 : vec2<f32> = u_xlat60;
        u_xlat60 = (x_525 + vec2<f32>(1.0f, 1.0f));
        let x_527 : vec4<f32> = u_xlat6;
        let x_529 : vec2<f32> = (vec2<f32>(x_527.x, x_527.y) + vec2<f32>(1.0f, 1.0f));
        let x_530 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_529.x, x_529.y, x_530.z, x_530.w);
        let x_533 : vec4<f32> = u_xlat7;
        let x_537 : vec2<f32> = (vec2<f32>(x_533.x, x_533.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_538 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_537.x, x_537.y, x_538.z, x_538.w);
        let x_541 : vec4<f32> = u_xlat8;
        let x_543 : vec2<f32> = (vec2<f32>(x_541.x, x_541.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_544 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_543.x, x_543.y, x_544.z, x_544.w);
        let x_546 : vec2<f32> = u_xlat60;
        let x_547 : vec2<f32> = (x_546 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_548 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_547.x, x_547.y, x_548.z, x_548.w);
        let x_551 : vec4<f32> = u_xlat6;
        let x_553 : vec2<f32> = (vec2<f32>(x_551.x, x_551.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_554 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_553.x, x_553.y, x_554.z, x_554.w);
        let x_556 : vec4<f32> = u_xlat7;
        let x_558 : vec2<f32> = (vec2<f32>(x_556.y, x_556.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_559 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_558.x, x_558.y, x_559.z, x_559.w);
        let x_562 : f32 = u_xlat8.x;
        u_xlat9.z = x_562;
        let x_565 : f32 = u_xlat6.x;
        u_xlat9.w = x_565;
        let x_568 : f32 = u_xlat11.x;
        u_xlat10.z = x_568;
        let x_571 : f32 = u_xlat58.x;
        u_xlat10.w = x_571;
        let x_573 : vec4<f32> = u_xlat9;
        let x_575 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_573.z, x_573.w, x_573.x, x_573.z) + vec4<f32>(x_575.z, x_575.w, x_575.x, x_575.z));
        let x_579 : f32 = u_xlat9.y;
        u_xlat8.z = x_579;
        let x_582 : f32 = u_xlat6.y;
        u_xlat8.w = x_582;
        let x_585 : f32 = u_xlat10.y;
        u_xlat11.z = x_585;
        let x_588 : f32 = u_xlat58.y;
        u_xlat11.w = x_588;
        let x_590 : vec4<f32> = u_xlat8;
        let x_592 : vec4<f32> = u_xlat11;
        let x_594 : vec3<f32> = (vec3<f32>(x_590.z, x_590.y, x_590.w) + vec3<f32>(x_592.z, x_592.y, x_592.w));
        let x_595 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_594.x, x_594.y, x_594.z, x_595.w);
        let x_597 : vec4<f32> = u_xlat10;
        let x_599 : vec4<f32> = u_xlat7;
        let x_601 : vec3<f32> = (vec3<f32>(x_597.x, x_597.z, x_597.w) / vec3<f32>(x_599.z, x_599.w, x_599.y));
        let x_602 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_601.x, x_601.y, x_601.z, x_602.w);
        let x_604 : vec4<f32> = u_xlat8;
        let x_610 : vec3<f32> = (vec3<f32>(x_604.x, x_604.y, x_604.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_611 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_610.x, x_610.y, x_610.z, x_611.w);
        let x_613 : vec4<f32> = u_xlat11;
        let x_615 : vec4<f32> = u_xlat6;
        let x_617 : vec3<f32> = (vec3<f32>(x_613.z, x_613.y, x_613.w) / vec3<f32>(x_615.x, x_615.y, x_615.z));
        let x_618 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
        let x_620 : vec4<f32> = u_xlat9;
        let x_622 : vec3<f32> = (vec3<f32>(x_620.x, x_620.y, x_620.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_623 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_622.x, x_622.y, x_622.z, x_623.w);
        let x_625 : vec4<f32> = u_xlat8;
        let x_628 : vec4<f32> = x_333.x_MainLightShadowmapSize;
        let x_630 : vec3<f32> = (vec3<f32>(x_625.y, x_625.x, x_625.z) * vec3<f32>(x_628.x, x_628.x, x_628.x));
        let x_631 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_630.x, x_630.y, x_630.z, x_631.w);
        let x_633 : vec4<f32> = u_xlat9;
        let x_636 : vec4<f32> = x_333.x_MainLightShadowmapSize;
        let x_638 : vec3<f32> = (vec3<f32>(x_633.x, x_633.y, x_633.z) * vec3<f32>(x_636.y, x_636.y, x_636.y));
        let x_639 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_638.x, x_638.y, x_638.z, x_639.w);
        let x_642 : f32 = u_xlat9.x;
        u_xlat8.w = x_642;
        let x_644 : vec2<f32> = u_xlat57;
        let x_647 : vec4<f32> = x_333.x_MainLightShadowmapSize;
        let x_650 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_644.x, x_644.y, x_644.x, x_644.y) * vec4<f32>(x_647.x, x_647.y, x_647.x, x_647.y)) + vec4<f32>(x_650.y, x_650.w, x_650.x, x_650.w));
        let x_653 : vec2<f32> = u_xlat57;
        let x_655 : vec4<f32> = x_333.x_MainLightShadowmapSize;
        let x_658 : vec4<f32> = u_xlat8;
        let x_660 : vec2<f32> = ((x_653 * vec2<f32>(x_655.x, x_655.y)) + vec2<f32>(x_658.z, x_658.w));
        let x_661 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_660.x, x_660.y, x_661.z, x_661.w);
        let x_664 : f32 = u_xlat8.y;
        u_xlat9.w = x_664;
        let x_666 : vec4<f32> = u_xlat9;
        let x_667 : vec2<f32> = vec2<f32>(x_666.y, x_666.z);
        let x_668 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_668.x, x_667.x, x_668.z, x_667.y);
        let x_671 : vec2<f32> = u_xlat57;
        let x_674 : vec4<f32> = x_333.x_MainLightShadowmapSize;
        let x_677 : vec4<f32> = u_xlat8;
        u_xlat12 = ((vec4<f32>(x_671.x, x_671.y, x_671.x, x_671.y) * vec4<f32>(x_674.x, x_674.y, x_674.x, x_674.y)) + vec4<f32>(x_677.x, x_677.y, x_677.z, x_677.y));
        let x_680 : vec2<f32> = u_xlat57;
        let x_683 : vec4<f32> = x_333.x_MainLightShadowmapSize;
        let x_686 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_680.x, x_680.y, x_680.x, x_680.y) * vec4<f32>(x_683.x, x_683.y, x_683.x, x_683.y)) + vec4<f32>(x_686.w, x_686.y, x_686.w, x_686.z));
        let x_689 : vec2<f32> = u_xlat57;
        let x_692 : vec4<f32> = x_333.x_MainLightShadowmapSize;
        let x_695 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_689.x, x_689.y, x_689.x, x_689.y) * vec4<f32>(x_692.x, x_692.y, x_692.x, x_692.y)) + vec4<f32>(x_695.x, x_695.w, x_695.z, x_695.w));
        let x_699 : vec4<f32> = u_xlat6;
        let x_701 : vec4<f32> = u_xlat7;
        u_xlat13 = (vec4<f32>(x_699.x, x_699.x, x_699.x, x_699.y) * vec4<f32>(x_701.z, x_701.w, x_701.y, x_701.z));
        let x_705 : vec4<f32> = u_xlat6;
        let x_707 : vec4<f32> = u_xlat7;
        u_xlat14 = (vec4<f32>(x_705.y, x_705.y, x_705.z, x_705.z) * x_707);
        let x_710 : f32 = u_xlat6.z;
        let x_712 : f32 = u_xlat7.y;
        u_xlat57.x = (x_710 * x_712);
        let x_716 : vec4<f32> = u_xlat10;
        let x_717 : vec2<f32> = vec2<f32>(x_716.x, x_716.y);
        let x_719 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_717.x, x_717.y, x_719);
        let x_727 : vec3<f32> = txVec4;
        let x_729 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_727.xy, x_727.z);
        u_xlat83 = x_729;
        let x_731 : vec4<f32> = u_xlat10;
        let x_732 : vec2<f32> = vec2<f32>(x_731.z, x_731.w);
        let x_734 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_732.x, x_732.y, x_734);
        let x_741 : vec3<f32> = txVec5;
        let x_743 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_741.xy, x_741.z);
        u_xlat6.x = x_743;
        let x_746 : f32 = u_xlat6.x;
        let x_748 : f32 = u_xlat13.y;
        u_xlat6.x = (x_746 * x_748);
        let x_752 : f32 = u_xlat13.x;
        let x_753 : f32 = u_xlat83;
        let x_756 : f32 = u_xlat6.x;
        u_xlat83 = ((x_752 * x_753) + x_756);
        let x_759 : vec4<f32> = u_xlat11;
        let x_760 : vec2<f32> = vec2<f32>(x_759.x, x_759.y);
        let x_762 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_760.x, x_760.y, x_762);
        let x_769 : vec3<f32> = txVec6;
        let x_771 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_769.xy, x_769.z);
        u_xlat6.x = x_771;
        let x_774 : f32 = u_xlat13.z;
        let x_776 : f32 = u_xlat6.x;
        let x_778 : f32 = u_xlat83;
        u_xlat83 = ((x_774 * x_776) + x_778);
        let x_781 : vec4<f32> = u_xlat9;
        let x_782 : vec2<f32> = vec2<f32>(x_781.x, x_781.y);
        let x_784 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_782.x, x_782.y, x_784);
        let x_791 : vec3<f32> = txVec7;
        let x_793 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_791.xy, x_791.z);
        u_xlat6.x = x_793;
        let x_796 : f32 = u_xlat13.w;
        let x_798 : f32 = u_xlat6.x;
        let x_800 : f32 = u_xlat83;
        u_xlat83 = ((x_796 * x_798) + x_800);
        let x_803 : vec4<f32> = u_xlat12;
        let x_804 : vec2<f32> = vec2<f32>(x_803.x, x_803.y);
        let x_806 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_804.x, x_804.y, x_806);
        let x_813 : vec3<f32> = txVec8;
        let x_815 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_813.xy, x_813.z);
        u_xlat6.x = x_815;
        let x_818 : f32 = u_xlat14.x;
        let x_820 : f32 = u_xlat6.x;
        let x_822 : f32 = u_xlat83;
        u_xlat83 = ((x_818 * x_820) + x_822);
        let x_825 : vec4<f32> = u_xlat12;
        let x_826 : vec2<f32> = vec2<f32>(x_825.z, x_825.w);
        let x_828 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_826.x, x_826.y, x_828);
        let x_835 : vec3<f32> = txVec9;
        let x_837 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_835.xy, x_835.z);
        u_xlat6.x = x_837;
        let x_840 : f32 = u_xlat14.y;
        let x_842 : f32 = u_xlat6.x;
        let x_844 : f32 = u_xlat83;
        u_xlat83 = ((x_840 * x_842) + x_844);
        let x_847 : vec4<f32> = u_xlat9;
        let x_848 : vec2<f32> = vec2<f32>(x_847.z, x_847.w);
        let x_850 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_848.x, x_848.y, x_850);
        let x_857 : vec3<f32> = txVec10;
        let x_859 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_857.xy, x_857.z);
        u_xlat6.x = x_859;
        let x_862 : f32 = u_xlat14.z;
        let x_864 : f32 = u_xlat6.x;
        let x_866 : f32 = u_xlat83;
        u_xlat83 = ((x_862 * x_864) + x_866);
        let x_869 : vec4<f32> = u_xlat8;
        let x_870 : vec2<f32> = vec2<f32>(x_869.x, x_869.y);
        let x_872 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_870.x, x_870.y, x_872);
        let x_879 : vec3<f32> = txVec11;
        let x_881 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_879.xy, x_879.z);
        u_xlat6.x = x_881;
        let x_884 : f32 = u_xlat14.w;
        let x_886 : f32 = u_xlat6.x;
        let x_888 : f32 = u_xlat83;
        u_xlat83 = ((x_884 * x_886) + x_888);
        let x_891 : vec4<f32> = u_xlat8;
        let x_892 : vec2<f32> = vec2<f32>(x_891.z, x_891.w);
        let x_894 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_892.x, x_892.y, x_894);
        let x_901 : vec3<f32> = txVec12;
        let x_903 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_901.xy, x_901.z);
        u_xlat6.x = x_903;
        let x_906 : f32 = u_xlat57.x;
        let x_908 : f32 = u_xlat6.x;
        let x_910 : f32 = u_xlat83;
        u_xlat31 = ((x_906 * x_908) + x_910);
      } else {
        let x_913 : vec4<f32> = vs_TEXCOORD8;
        let x_916 : vec4<f32> = x_333.x_MainLightShadowmapSize;
        u_xlat57 = ((vec2<f32>(x_913.x, x_913.y) * vec2<f32>(x_916.z, x_916.w)) + vec2<f32>(0.5f, 0.5f));
        let x_920 : vec2<f32> = u_xlat57;
        u_xlat57 = floor(x_920);
        let x_922 : vec4<f32> = vs_TEXCOORD8;
        let x_925 : vec4<f32> = x_333.x_MainLightShadowmapSize;
        let x_928 : vec2<f32> = u_xlat57;
        let x_930 : vec2<f32> = ((vec2<f32>(x_922.x, x_922.y) * vec2<f32>(x_925.z, x_925.w)) + -(x_928));
        let x_931 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_930.x, x_930.y, x_931.z, x_931.w);
        let x_933 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_933.x, x_933.x, x_933.y, x_933.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_936 : vec4<f32> = u_xlat7;
        let x_938 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_936.x, x_936.x, x_936.z, x_936.z) * vec4<f32>(x_938.x, x_938.x, x_938.z, x_938.z));
        let x_941 : vec4<f32> = u_xlat8;
        let x_945 : vec2<f32> = (vec2<f32>(x_941.y, x_941.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_946 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_946.x, x_945.x, x_946.z, x_945.y);
        let x_948 : vec4<f32> = u_xlat8;
        let x_951 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_948.x, x_948.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_951.x, x_951.y)));
        let x_955 : vec4<f32> = u_xlat6;
        let x_958 : vec2<f32> = (-(vec2<f32>(x_955.x, x_955.y)) + vec2<f32>(1.0f, 1.0f));
        let x_959 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_958.x, x_959.y, x_958.y, x_959.w);
        let x_961 : vec4<f32> = u_xlat6;
        let x_963 : vec2<f32> = min(vec2<f32>(x_961.x, x_961.y), vec2<f32>(0.0f, 0.0f));
        let x_964 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_963.x, x_963.y, x_964.z, x_964.w);
        let x_966 : vec4<f32> = u_xlat8;
        let x_969 : vec4<f32> = u_xlat8;
        let x_972 : vec4<f32> = u_xlat7;
        let x_974 : vec2<f32> = ((-(vec2<f32>(x_966.x, x_966.y)) * vec2<f32>(x_969.x, x_969.y)) + vec2<f32>(x_972.x, x_972.z));
        let x_975 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_974.x, x_975.y, x_974.y, x_975.w);
        let x_977 : vec4<f32> = u_xlat6;
        let x_979 : vec2<f32> = max(vec2<f32>(x_977.x, x_977.y), vec2<f32>(0.0f, 0.0f));
        let x_980 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_979.x, x_979.y, x_980.z, x_980.w);
        let x_982 : vec4<f32> = u_xlat8;
        let x_985 : vec4<f32> = u_xlat8;
        let x_988 : vec4<f32> = u_xlat7;
        let x_990 : vec2<f32> = ((-(vec2<f32>(x_982.x, x_982.y)) * vec2<f32>(x_985.x, x_985.y)) + vec2<f32>(x_988.y, x_988.w));
        let x_991 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_991.x, x_990.x, x_991.z, x_990.y);
        let x_993 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_993 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_997 : f32 = u_xlat7.y;
        u_xlat8.z = (x_997 * 0.08163200318813323975f);
        let x_1001 : vec2<f32> = u_xlat58;
        let x_1004 : vec2<f32> = (vec2<f32>(x_1001.y, x_1001.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1005 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1004.x, x_1004.y, x_1005.z, x_1005.w);
        let x_1007 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_1007.x, x_1007.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1011 : f32 = u_xlat7.w;
        u_xlat10.z = (x_1011 * 0.08163200318813323975f);
        let x_1015 : f32 = u_xlat10.y;
        u_xlat8.x = x_1015;
        let x_1017 : vec4<f32> = u_xlat6;
        let x_1024 : vec2<f32> = ((vec2<f32>(x_1017.x, x_1017.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1025 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1025.x, x_1024.x, x_1025.z, x_1024.y);
        let x_1027 : vec4<f32> = u_xlat6;
        let x_1031 : vec2<f32> = ((vec2<f32>(x_1027.x, x_1027.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1032 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1031.x, x_1032.y, x_1031.y, x_1032.w);
        let x_1035 : f32 = u_xlat58.x;
        u_xlat7.y = x_1035;
        let x_1038 : f32 = u_xlat9.y;
        u_xlat7.w = x_1038;
        let x_1040 : vec4<f32> = u_xlat7;
        let x_1041 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1040 + x_1041);
        let x_1043 : vec4<f32> = u_xlat6;
        let x_1046 : vec2<f32> = ((vec2<f32>(x_1043.y, x_1043.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1047 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1047.x, x_1046.x, x_1047.z, x_1046.y);
        let x_1049 : vec4<f32> = u_xlat6;
        let x_1052 : vec2<f32> = ((vec2<f32>(x_1049.y, x_1049.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1053 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1052.x, x_1053.y, x_1052.y, x_1053.w);
        let x_1056 : f32 = u_xlat58.y;
        u_xlat9.y = x_1056;
        let x_1058 : vec4<f32> = u_xlat9;
        let x_1059 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1058 + x_1059);
        let x_1061 : vec4<f32> = u_xlat7;
        let x_1062 : vec4<f32> = u_xlat8;
        u_xlat7 = (x_1061 / x_1062);
        let x_1064 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1064 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1070 : vec4<f32> = u_xlat9;
        let x_1071 : vec4<f32> = u_xlat6;
        u_xlat9 = (x_1070 / x_1071);
        let x_1073 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1073 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1075 : vec4<f32> = u_xlat7;
        let x_1078 : vec4<f32> = x_333.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1075.w, x_1075.x, x_1075.y, x_1075.z) * vec4<f32>(x_1078.x, x_1078.x, x_1078.x, x_1078.x));
        let x_1081 : vec4<f32> = u_xlat9;
        let x_1084 : vec4<f32> = x_333.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1081.x, x_1081.w, x_1081.y, x_1081.z) * vec4<f32>(x_1084.y, x_1084.y, x_1084.y, x_1084.y));
        let x_1087 : vec4<f32> = u_xlat7;
        let x_1088 : vec3<f32> = vec3<f32>(x_1087.y, x_1087.z, x_1087.w);
        let x_1089 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1088.x, x_1089.y, x_1088.y, x_1088.z);
        let x_1092 : f32 = u_xlat9.x;
        u_xlat10.y = x_1092;
        let x_1094 : vec2<f32> = u_xlat57;
        let x_1097 : vec4<f32> = x_333.x_MainLightShadowmapSize;
        let x_1100 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1094.x, x_1094.y, x_1094.x, x_1094.y) * vec4<f32>(x_1097.x, x_1097.y, x_1097.x, x_1097.y)) + vec4<f32>(x_1100.x, x_1100.y, x_1100.z, x_1100.y));
        let x_1103 : vec2<f32> = u_xlat57;
        let x_1105 : vec4<f32> = x_333.x_MainLightShadowmapSize;
        let x_1108 : vec4<f32> = u_xlat10;
        let x_1110 : vec2<f32> = ((x_1103 * vec2<f32>(x_1105.x, x_1105.y)) + vec2<f32>(x_1108.w, x_1108.y));
        let x_1111 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1110.x, x_1110.y, x_1111.z, x_1111.w);
        let x_1114 : f32 = u_xlat10.y;
        u_xlat7.y = x_1114;
        let x_1117 : f32 = u_xlat9.z;
        u_xlat10.y = x_1117;
        let x_1119 : vec2<f32> = u_xlat57;
        let x_1122 : vec4<f32> = x_333.x_MainLightShadowmapSize;
        let x_1125 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_1119.x, x_1119.y, x_1119.x, x_1119.y) * vec4<f32>(x_1122.x, x_1122.y, x_1122.x, x_1122.y)) + vec4<f32>(x_1125.x, x_1125.y, x_1125.z, x_1125.y));
        let x_1129 : vec2<f32> = u_xlat57;
        let x_1131 : vec4<f32> = x_333.x_MainLightShadowmapSize;
        let x_1134 : vec4<f32> = u_xlat10;
        u_xlat64 = ((x_1129 * vec2<f32>(x_1131.x, x_1131.y)) + vec2<f32>(x_1134.w, x_1134.y));
        let x_1138 : f32 = u_xlat10.y;
        u_xlat7.z = x_1138;
        let x_1140 : vec2<f32> = u_xlat57;
        let x_1143 : vec4<f32> = x_333.x_MainLightShadowmapSize;
        let x_1146 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1140.x, x_1140.y, x_1140.x, x_1140.y) * vec4<f32>(x_1143.x, x_1143.y, x_1143.x, x_1143.y)) + vec4<f32>(x_1146.x, x_1146.y, x_1146.x, x_1146.z));
        let x_1150 : f32 = u_xlat9.w;
        u_xlat10.y = x_1150;
        let x_1153 : vec2<f32> = u_xlat57;
        let x_1156 : vec4<f32> = x_333.x_MainLightShadowmapSize;
        let x_1159 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1153.x, x_1153.y, x_1153.x, x_1153.y) * vec4<f32>(x_1156.x, x_1156.y, x_1156.x, x_1156.y)) + vec4<f32>(x_1159.x, x_1159.y, x_1159.z, x_1159.y));
        let x_1163 : vec2<f32> = u_xlat57;
        let x_1165 : vec4<f32> = x_333.x_MainLightShadowmapSize;
        let x_1168 : vec4<f32> = u_xlat10;
        u_xlat33 = ((x_1163 * vec2<f32>(x_1165.x, x_1165.y)) + vec2<f32>(x_1168.w, x_1168.y));
        let x_1172 : f32 = u_xlat10.y;
        u_xlat7.w = x_1172;
        let x_1175 : vec2<f32> = u_xlat57;
        let x_1177 : vec4<f32> = x_333.x_MainLightShadowmapSize;
        let x_1180 : vec4<f32> = u_xlat7;
        let x_1182 : vec2<f32> = ((x_1175 * vec2<f32>(x_1177.x, x_1177.y)) + vec2<f32>(x_1180.x, x_1180.w));
        let x_1183 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1182.x, x_1182.y, x_1183.z, x_1183.w);
        let x_1185 : vec4<f32> = u_xlat10;
        let x_1186 : vec3<f32> = vec3<f32>(x_1185.x, x_1185.z, x_1185.w);
        let x_1187 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1186.x, x_1187.y, x_1186.y, x_1186.z);
        let x_1189 : vec2<f32> = u_xlat57;
        let x_1192 : vec4<f32> = x_333.x_MainLightShadowmapSize;
        let x_1195 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1189.x, x_1189.y, x_1189.x, x_1189.y) * vec4<f32>(x_1192.x, x_1192.y, x_1192.x, x_1192.y)) + vec4<f32>(x_1195.x, x_1195.y, x_1195.z, x_1195.y));
        let x_1199 : vec2<f32> = u_xlat57;
        let x_1201 : vec4<f32> = x_333.x_MainLightShadowmapSize;
        let x_1204 : vec4<f32> = u_xlat9;
        u_xlat61 = ((x_1199 * vec2<f32>(x_1201.x, x_1201.y)) + vec2<f32>(x_1204.w, x_1204.y));
        let x_1208 : f32 = u_xlat7.x;
        u_xlat9.x = x_1208;
        let x_1210 : vec2<f32> = u_xlat57;
        let x_1212 : vec4<f32> = x_333.x_MainLightShadowmapSize;
        let x_1215 : vec4<f32> = u_xlat9;
        u_xlat57 = ((x_1210 * vec2<f32>(x_1212.x, x_1212.y)) + vec2<f32>(x_1215.x, x_1215.y));
        let x_1219 : vec4<f32> = u_xlat6;
        let x_1221 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1219.x, x_1219.x, x_1219.x, x_1219.x) * x_1221);
        let x_1224 : vec4<f32> = u_xlat6;
        let x_1226 : vec4<f32> = u_xlat8;
        u_xlat18 = (vec4<f32>(x_1224.y, x_1224.y, x_1224.y, x_1224.y) * x_1226);
        let x_1229 : vec4<f32> = u_xlat6;
        let x_1231 : vec4<f32> = u_xlat8;
        u_xlat19 = (vec4<f32>(x_1229.z, x_1229.z, x_1229.z, x_1229.z) * x_1231);
        let x_1233 : vec4<f32> = u_xlat6;
        let x_1235 : vec4<f32> = u_xlat8;
        u_xlat6 = (vec4<f32>(x_1233.w, x_1233.w, x_1233.w, x_1233.w) * x_1235);
        let x_1238 : vec4<f32> = u_xlat11;
        let x_1239 : vec2<f32> = vec2<f32>(x_1238.x, x_1238.y);
        let x_1241 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1239.x, x_1239.y, x_1241);
        let x_1248 : vec3<f32> = txVec13;
        let x_1250 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1248.xy, x_1248.z);
        u_xlat7.x = x_1250;
        let x_1253 : vec4<f32> = u_xlat11;
        let x_1254 : vec2<f32> = vec2<f32>(x_1253.z, x_1253.w);
        let x_1256 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1254.x, x_1254.y, x_1256);
        let x_1264 : vec3<f32> = txVec14;
        let x_1266 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1264.xy, x_1264.z);
        u_xlat85 = x_1266;
        let x_1267 : f32 = u_xlat85;
        let x_1269 : f32 = u_xlat17.y;
        u_xlat85 = (x_1267 * x_1269);
        let x_1272 : f32 = u_xlat17.x;
        let x_1274 : f32 = u_xlat7.x;
        let x_1276 : f32 = u_xlat85;
        u_xlat7.x = ((x_1272 * x_1274) + x_1276);
        let x_1280 : vec4<f32> = u_xlat12;
        let x_1281 : vec2<f32> = vec2<f32>(x_1280.x, x_1280.y);
        let x_1283 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1281.x, x_1281.y, x_1283);
        let x_1290 : vec3<f32> = txVec15;
        let x_1292 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1290.xy, x_1290.z);
        u_xlat85 = x_1292;
        let x_1294 : f32 = u_xlat17.z;
        let x_1295 : f32 = u_xlat85;
        let x_1298 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1294 * x_1295) + x_1298);
        let x_1302 : vec4<f32> = u_xlat14;
        let x_1303 : vec2<f32> = vec2<f32>(x_1302.x, x_1302.y);
        let x_1305 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1303.x, x_1303.y, x_1305);
        let x_1312 : vec3<f32> = txVec16;
        let x_1314 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1312.xy, x_1312.z);
        u_xlat85 = x_1314;
        let x_1316 : f32 = u_xlat17.w;
        let x_1317 : f32 = u_xlat85;
        let x_1320 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1316 * x_1317) + x_1320);
        let x_1324 : vec4<f32> = u_xlat13;
        let x_1325 : vec2<f32> = vec2<f32>(x_1324.x, x_1324.y);
        let x_1327 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1325.x, x_1325.y, x_1327);
        let x_1334 : vec3<f32> = txVec17;
        let x_1336 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1334.xy, x_1334.z);
        u_xlat85 = x_1336;
        let x_1338 : f32 = u_xlat18.x;
        let x_1339 : f32 = u_xlat85;
        let x_1342 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1338 * x_1339) + x_1342);
        let x_1346 : vec4<f32> = u_xlat13;
        let x_1347 : vec2<f32> = vec2<f32>(x_1346.z, x_1346.w);
        let x_1349 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1347.x, x_1347.y, x_1349);
        let x_1356 : vec3<f32> = txVec18;
        let x_1358 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1356.xy, x_1356.z);
        u_xlat85 = x_1358;
        let x_1360 : f32 = u_xlat18.y;
        let x_1361 : f32 = u_xlat85;
        let x_1364 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1360 * x_1361) + x_1364);
        let x_1368 : vec2<f32> = u_xlat64;
        let x_1370 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1368.x, x_1368.y, x_1370);
        let x_1377 : vec3<f32> = txVec19;
        let x_1379 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1377.xy, x_1377.z);
        u_xlat85 = x_1379;
        let x_1381 : f32 = u_xlat18.z;
        let x_1382 : f32 = u_xlat85;
        let x_1385 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1381 * x_1382) + x_1385);
        let x_1389 : vec4<f32> = u_xlat14;
        let x_1390 : vec2<f32> = vec2<f32>(x_1389.z, x_1389.w);
        let x_1392 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1390.x, x_1390.y, x_1392);
        let x_1399 : vec3<f32> = txVec20;
        let x_1401 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1399.xy, x_1399.z);
        u_xlat85 = x_1401;
        let x_1403 : f32 = u_xlat18.w;
        let x_1404 : f32 = u_xlat85;
        let x_1407 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1403 * x_1404) + x_1407);
        let x_1411 : vec4<f32> = u_xlat15;
        let x_1412 : vec2<f32> = vec2<f32>(x_1411.x, x_1411.y);
        let x_1414 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1412.x, x_1412.y, x_1414);
        let x_1421 : vec3<f32> = txVec21;
        let x_1423 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1421.xy, x_1421.z);
        u_xlat85 = x_1423;
        let x_1425 : f32 = u_xlat19.x;
        let x_1426 : f32 = u_xlat85;
        let x_1429 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1425 * x_1426) + x_1429);
        let x_1433 : vec4<f32> = u_xlat15;
        let x_1434 : vec2<f32> = vec2<f32>(x_1433.z, x_1433.w);
        let x_1436 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1434.x, x_1434.y, x_1436);
        let x_1443 : vec3<f32> = txVec22;
        let x_1445 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1443.xy, x_1443.z);
        u_xlat85 = x_1445;
        let x_1447 : f32 = u_xlat19.y;
        let x_1448 : f32 = u_xlat85;
        let x_1451 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1447 * x_1448) + x_1451);
        let x_1455 : vec2<f32> = u_xlat33;
        let x_1457 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1455.x, x_1455.y, x_1457);
        let x_1464 : vec3<f32> = txVec23;
        let x_1466 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1464.xy, x_1464.z);
        u_xlat33.x = x_1466;
        let x_1469 : f32 = u_xlat19.z;
        let x_1471 : f32 = u_xlat33.x;
        let x_1474 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1469 * x_1471) + x_1474);
        let x_1478 : vec4<f32> = u_xlat16;
        let x_1479 : vec2<f32> = vec2<f32>(x_1478.x, x_1478.y);
        let x_1481 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1479.x, x_1479.y, x_1481);
        let x_1488 : vec3<f32> = txVec24;
        let x_1490 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1488.xy, x_1488.z);
        u_xlat33.x = x_1490;
        let x_1493 : f32 = u_xlat19.w;
        let x_1495 : f32 = u_xlat33.x;
        let x_1498 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1493 * x_1495) + x_1498);
        let x_1502 : vec4<f32> = u_xlat10;
        let x_1503 : vec2<f32> = vec2<f32>(x_1502.x, x_1502.y);
        let x_1505 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1503.x, x_1503.y, x_1505);
        let x_1512 : vec3<f32> = txVec25;
        let x_1514 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1512.xy, x_1512.z);
        u_xlat33.x = x_1514;
        let x_1517 : f32 = u_xlat6.x;
        let x_1519 : f32 = u_xlat33.x;
        let x_1522 : f32 = u_xlat7.x;
        u_xlat6.x = ((x_1517 * x_1519) + x_1522);
        let x_1526 : vec4<f32> = u_xlat10;
        let x_1527 : vec2<f32> = vec2<f32>(x_1526.z, x_1526.w);
        let x_1529 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1527.x, x_1527.y, x_1529);
        let x_1536 : vec3<f32> = txVec26;
        let x_1538 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1536.xy, x_1536.z);
        u_xlat7.x = x_1538;
        let x_1541 : f32 = u_xlat6.y;
        let x_1543 : f32 = u_xlat7.x;
        let x_1546 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1541 * x_1543) + x_1546);
        let x_1550 : vec2<f32> = u_xlat61;
        let x_1552 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1550.x, x_1550.y, x_1552);
        let x_1560 : vec3<f32> = txVec27;
        let x_1562 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1560.xy, x_1560.z);
        u_xlat32 = x_1562;
        let x_1564 : f32 = u_xlat6.z;
        let x_1565 : f32 = u_xlat32;
        let x_1568 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1564 * x_1565) + x_1568);
        let x_1572 : vec2<f32> = u_xlat57;
        let x_1574 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1572.x, x_1572.y, x_1574);
        let x_1581 : vec3<f32> = txVec28;
        let x_1583 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1581.xy, x_1581.z);
        u_xlat57.x = x_1583;
        let x_1586 : f32 = u_xlat6.w;
        let x_1588 : f32 = u_xlat57.x;
        let x_1591 : f32 = u_xlat6.x;
        u_xlat31 = ((x_1586 * x_1588) + x_1591);
      }
    }
  } else {
    let x_1595 : vec4<f32> = vs_TEXCOORD8;
    let x_1596 : vec2<f32> = vec2<f32>(x_1595.x, x_1595.y);
    let x_1598 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1596.x, x_1596.y, x_1598);
    let x_1605 : vec3<f32> = txVec29;
    let x_1607 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1605.xy, x_1605.z);
    u_xlat31 = x_1607;
  }
  let x_1609 : f32 = x_333.x_MainLightShadowParams.x;
  u_xlat57.x = (-(x_1609) + 1.0f);
  let x_1613 : f32 = u_xlat31;
  let x_1615 : f32 = x_333.x_MainLightShadowParams.x;
  let x_1618 : f32 = u_xlat57.x;
  u_xlat31 = ((x_1613 * x_1615) + x_1618);
  let x_1621 : f32 = vs_TEXCOORD8.z;
  u_xlatb57 = (0.0f >= x_1621);
  let x_1625 : f32 = vs_TEXCOORD8.z;
  u_xlatb83 = (x_1625 >= 1.0f);
  let x_1627 : bool = u_xlatb83;
  let x_1628 : bool = u_xlatb57;
  u_xlatb57 = (x_1627 | x_1628);
  let x_1630 : bool = u_xlatb57;
  let x_1631 : f32 = u_xlat31;
  u_xlat31 = select(x_1631, 1.0f, x_1630);
  let x_1633 : vec3<f32> = vs_TEXCOORD7;
  let x_1635 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_1637 : vec3<f32> = (x_1633 + -(x_1635));
  let x_1638 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1637.x, x_1637.y, x_1637.z, x_1638.w);
  let x_1640 : vec4<f32> = u_xlat6;
  let x_1642 : vec4<f32> = u_xlat6;
  u_xlat57.x = dot(vec3<f32>(x_1640.x, x_1640.y, x_1640.z), vec3<f32>(x_1642.x, x_1642.y, x_1642.z));
  let x_1647 : f32 = u_xlat57.x;
  let x_1649 : f32 = x_333.x_MainLightShadowParams.z;
  let x_1652 : f32 = x_333.x_MainLightShadowParams.w;
  u_xlat83 = ((x_1647 * x_1649) + x_1652);
  let x_1654 : f32 = u_xlat83;
  u_xlat83 = clamp(x_1654, 0.0f, 1.0f);
  let x_1656 : f32 = u_xlat31;
  u_xlat6.x = (-(x_1656) + 1.0f);
  let x_1660 : f32 = u_xlat83;
  let x_1662 : f32 = u_xlat6.x;
  let x_1664 : f32 = u_xlat31;
  u_xlat31 = ((x_1660 * x_1662) + x_1664);
  let x_1673 : f32 = x_1671.x_MainLightCookieTextureFormat;
  u_xlatb83 = !((x_1673 == -1.0f));
  let x_1676 : bool = u_xlatb83;
  if (x_1676) {
    let x_1679 : vec3<f32> = vs_TEXCOORD7;
    let x_1682 : vec4<f32> = x_1671.x_MainLightWorldToLight[1i];
    let x_1684 : vec2<f32> = (vec2<f32>(x_1679.y, x_1679.y) * vec2<f32>(x_1682.x, x_1682.y));
    let x_1685 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1684.x, x_1684.y, x_1685.z, x_1685.w);
    let x_1688 : vec4<f32> = x_1671.x_MainLightWorldToLight[0i];
    let x_1690 : vec3<f32> = vs_TEXCOORD7;
    let x_1693 : vec4<f32> = u_xlat6;
    let x_1695 : vec2<f32> = ((vec2<f32>(x_1688.x, x_1688.y) * vec2<f32>(x_1690.x, x_1690.x)) + vec2<f32>(x_1693.x, x_1693.y));
    let x_1696 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1695.x, x_1695.y, x_1696.z, x_1696.w);
    let x_1699 : vec4<f32> = x_1671.x_MainLightWorldToLight[2i];
    let x_1701 : vec3<f32> = vs_TEXCOORD7;
    let x_1704 : vec4<f32> = u_xlat6;
    let x_1706 : vec2<f32> = ((vec2<f32>(x_1699.x, x_1699.y) * vec2<f32>(x_1701.z, x_1701.z)) + vec2<f32>(x_1704.x, x_1704.y));
    let x_1707 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1706.x, x_1706.y, x_1707.z, x_1707.w);
    let x_1709 : vec4<f32> = u_xlat6;
    let x_1712 : vec4<f32> = x_1671.x_MainLightWorldToLight[3i];
    let x_1714 : vec2<f32> = (vec2<f32>(x_1709.x, x_1709.y) + vec2<f32>(x_1712.x, x_1712.y));
    let x_1715 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1714.x, x_1714.y, x_1715.z, x_1715.w);
    let x_1717 : vec4<f32> = u_xlat6;
    let x_1720 : vec2<f32> = ((vec2<f32>(x_1717.x, x_1717.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1721 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1720.x, x_1720.y, x_1721.z, x_1721.w);
    let x_1728 : vec4<f32> = u_xlat6;
    let x_1731 : f32 = x_29.x_GlobalMipBias.x;
    let x_1732 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1728.x, x_1728.y), x_1731);
    u_xlat6 = x_1732;
    let x_1735 : f32 = x_1671.x_MainLightCookieTextureFormat;
    let x_1737 : f32 = x_1671.x_MainLightCookieTextureFormat;
    let x_1739 : f32 = x_1671.x_MainLightCookieTextureFormat;
    let x_1741 : f32 = x_1671.x_MainLightCookieTextureFormat;
    let x_1742 : vec4<f32> = vec4<f32>(x_1735, x_1737, x_1739, x_1741);
    let x_1750 : vec4<bool> = (vec4<f32>(x_1742.x, x_1742.y, x_1742.z, x_1742.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_1750.x, x_1750.y);
    let x_1753 : bool = u_xlatb7.y;
    if (x_1753) {
      let x_1759 : f32 = u_xlat6.w;
      x_1755 = x_1759;
    } else {
      let x_1762 : f32 = u_xlat6.x;
      x_1755 = x_1762;
    }
    let x_1763 : f32 = x_1755;
    u_xlat83 = x_1763;
    let x_1765 : bool = u_xlatb7.x;
    if (x_1765) {
      let x_1769 : vec4<f32> = u_xlat6;
      x_1766 = vec3<f32>(x_1769.x, x_1769.y, x_1769.z);
    } else {
      let x_1772 : f32 = u_xlat83;
      x_1766 = vec3<f32>(x_1772, x_1772, x_1772);
    }
    let x_1774 : vec3<f32> = x_1766;
    let x_1775 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1774.x, x_1774.y, x_1774.z, x_1775.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1781 : vec4<f32> = u_xlat6;
  let x_1784 : vec4<f32> = x_29.x_MainLightColor;
  let x_1786 : vec3<f32> = (vec3<f32>(x_1781.x, x_1781.y, x_1781.z) * vec3<f32>(x_1784.x, x_1784.y, x_1784.z));
  let x_1787 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1786.x, x_1786.y, x_1786.z, x_1787.w);
  let x_1789 : vec3<f32> = u_xlat27;
  let x_1791 : vec4<f32> = u_xlat2;
  u_xlat83 = dot(-(x_1789), vec3<f32>(x_1791.x, x_1791.y, x_1791.z));
  let x_1794 : f32 = u_xlat83;
  let x_1795 : f32 = u_xlat83;
  u_xlat83 = (x_1794 + x_1795);
  let x_1797 : vec4<f32> = u_xlat2;
  let x_1799 : f32 = u_xlat83;
  let x_1803 : vec3<f32> = u_xlat27;
  let x_1805 : vec3<f32> = ((vec3<f32>(x_1797.x, x_1797.y, x_1797.z) * -(vec3<f32>(x_1799, x_1799, x_1799))) + -(x_1803));
  let x_1806 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1805.x, x_1805.y, x_1805.z, x_1806.w);
  let x_1808 : vec4<f32> = u_xlat2;
  let x_1810 : vec3<f32> = u_xlat27;
  u_xlat83 = dot(vec3<f32>(x_1808.x, x_1808.y, x_1808.z), x_1810);
  let x_1812 : f32 = u_xlat83;
  u_xlat83 = clamp(x_1812, 0.0f, 1.0f);
  let x_1814 : f32 = u_xlat83;
  u_xlat83 = (-(x_1814) + 1.0f);
  let x_1817 : f32 = u_xlat83;
  let x_1818 : f32 = u_xlat83;
  u_xlat83 = (x_1817 * x_1818);
  let x_1820 : f32 = u_xlat83;
  let x_1821 : f32 = u_xlat83;
  u_xlat83 = (x_1820 * x_1821);
  let x_1824 : f32 = u_xlat1;
  u_xlat84 = ((-(x_1824) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1830 : f32 = u_xlat1;
  let x_1831 : f32 = u_xlat84;
  u_xlat1 = (x_1830 * x_1831);
  let x_1833 : f32 = u_xlat1;
  u_xlat1 = (x_1833 * 6.0f);
  let x_1844 : vec4<f32> = u_xlat7;
  let x_1846 : f32 = u_xlat1;
  let x_1847 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1844.x, x_1844.y, x_1844.z), x_1846);
  u_xlat7 = x_1847;
  let x_1849 : f32 = u_xlat7.w;
  u_xlat1 = (x_1849 + -1.0f);
  let x_1852 : f32 = x_187.unity_SpecCube0_HDR.w;
  let x_1853 : f32 = u_xlat1;
  u_xlat1 = ((x_1852 * x_1853) + 1.0f);
  let x_1856 : f32 = u_xlat1;
  u_xlat1 = max(x_1856, 0.0f);
  let x_1858 : f32 = u_xlat1;
  u_xlat1 = log2(x_1858);
  let x_1860 : f32 = u_xlat1;
  let x_1862 : f32 = x_187.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_1860 * x_1862);
  let x_1864 : f32 = u_xlat1;
  u_xlat1 = exp2(x_1864);
  let x_1866 : f32 = u_xlat1;
  let x_1868 : f32 = x_187.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_1866 * x_1868);
  let x_1870 : vec4<f32> = u_xlat7;
  let x_1872 : f32 = u_xlat1;
  let x_1874 : vec3<f32> = (vec3<f32>(x_1870.x, x_1870.y, x_1870.z) * vec3<f32>(x_1872, x_1872, x_1872));
  let x_1875 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1874.x, x_1874.y, x_1874.z, x_1875.w);
  let x_1877 : f32 = u_xlat80;
  let x_1879 : f32 = u_xlat80;
  let x_1883 : vec2<f32> = ((vec2<f32>(x_1877, x_1877) * vec2<f32>(x_1879, x_1879)) + vec2<f32>(-1.0f, 1.0f));
  let x_1884 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1883.x, x_1883.y, x_1884.z, x_1884.w);
  let x_1887 : f32 = u_xlat8.y;
  u_xlat1 = (1.0f / x_1887);
  let x_1890 : vec4<f32> = u_xlat0;
  let x_1893 : f32 = u_xlat78;
  u_xlat34 = (-(vec3<f32>(x_1890.x, x_1890.y, x_1890.z)) + vec3<f32>(x_1893, x_1893, x_1893));
  let x_1896 : f32 = u_xlat83;
  let x_1898 : vec3<f32> = u_xlat34;
  let x_1900 : vec4<f32> = u_xlat0;
  u_xlat34 = ((vec3<f32>(x_1896, x_1896, x_1896) * x_1898) + vec3<f32>(x_1900.x, x_1900.y, x_1900.z));
  let x_1903 : f32 = u_xlat1;
  let x_1905 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_1903, x_1903, x_1903) * x_1905);
  let x_1907 : vec4<f32> = u_xlat7;
  let x_1909 : vec3<f32> = u_xlat34;
  let x_1910 : vec3<f32> = (vec3<f32>(x_1907.x, x_1907.y, x_1907.z) * x_1909);
  let x_1911 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1910.x, x_1910.y, x_1910.z, x_1911.w);
  let x_1913 : vec3<f32> = u_xlat29;
  let x_1914 : vec3<f32> = u_xlat30;
  let x_1916 : vec4<f32> = u_xlat7;
  u_xlat29 = ((x_1913 * x_1914) + vec3<f32>(x_1916.x, x_1916.y, x_1916.z));
  let x_1919 : f32 = u_xlat31;
  let x_1921 : f32 = x_187.unity_LightData.z;
  u_xlat78 = (x_1919 * x_1921);
  let x_1923 : vec4<f32> = u_xlat2;
  let x_1926 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1 = dot(vec3<f32>(x_1923.x, x_1923.y, x_1923.z), vec3<f32>(x_1926.x, x_1926.y, x_1926.z));
  let x_1929 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1929, 0.0f, 1.0f);
  let x_1931 : f32 = u_xlat78;
  let x_1932 : f32 = u_xlat1;
  u_xlat78 = (x_1931 * x_1932);
  let x_1934 : f32 = u_xlat78;
  let x_1936 : vec4<f32> = u_xlat6;
  let x_1938 : vec3<f32> = (vec3<f32>(x_1934, x_1934, x_1934) * vec3<f32>(x_1936.x, x_1936.y, x_1936.z));
  let x_1939 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1938.x, x_1938.y, x_1938.z, x_1939.w);
  let x_1941 : vec3<f32> = u_xlat27;
  let x_1943 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1945 : vec3<f32> = (x_1941 + vec3<f32>(x_1943.x, x_1943.y, x_1943.z));
  let x_1946 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1945.x, x_1945.y, x_1945.z, x_1946.w);
  let x_1948 : vec4<f32> = u_xlat7;
  let x_1950 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(vec3<f32>(x_1948.x, x_1948.y, x_1948.z), vec3<f32>(x_1950.x, x_1950.y, x_1950.z));
  let x_1953 : f32 = u_xlat78;
  u_xlat78 = max(x_1953, 1.17549435e-38f);
  let x_1956 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_1956);
  let x_1958 : f32 = u_xlat78;
  let x_1960 : vec4<f32> = u_xlat7;
  let x_1962 : vec3<f32> = (vec3<f32>(x_1958, x_1958, x_1958) * vec3<f32>(x_1960.x, x_1960.y, x_1960.z));
  let x_1963 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1962.x, x_1962.y, x_1962.z, x_1963.w);
  let x_1965 : vec4<f32> = u_xlat2;
  let x_1967 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(vec3<f32>(x_1965.x, x_1965.y, x_1965.z), vec3<f32>(x_1967.x, x_1967.y, x_1967.z));
  let x_1970 : f32 = u_xlat78;
  u_xlat78 = clamp(x_1970, 0.0f, 1.0f);
  let x_1973 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1975 : vec4<f32> = u_xlat7;
  u_xlat1 = dot(vec3<f32>(x_1973.x, x_1973.y, x_1973.z), vec3<f32>(x_1975.x, x_1975.y, x_1975.z));
  let x_1978 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1978, 0.0f, 1.0f);
  let x_1980 : f32 = u_xlat78;
  let x_1981 : f32 = u_xlat78;
  u_xlat78 = (x_1980 * x_1981);
  let x_1983 : f32 = u_xlat78;
  let x_1985 : f32 = u_xlat8.x;
  u_xlat78 = ((x_1983 * x_1985) + 1.00001001358032226562f);
  let x_1989 : f32 = u_xlat1;
  let x_1990 : f32 = u_xlat1;
  u_xlat1 = (x_1989 * x_1990);
  let x_1992 : f32 = u_xlat78;
  let x_1993 : f32 = u_xlat78;
  u_xlat78 = (x_1992 * x_1993);
  let x_1995 : f32 = u_xlat1;
  u_xlat1 = max(x_1995, 0.10000000149011611938f);
  let x_1998 : f32 = u_xlat78;
  let x_1999 : f32 = u_xlat1;
  u_xlat78 = (x_1998 * x_1999);
  let x_2002 : f32 = u_xlat4.x;
  let x_2003 : f32 = u_xlat78;
  u_xlat78 = (x_2002 * x_2003);
  let x_2006 : f32 = u_xlat5.x;
  let x_2007 : f32 = u_xlat78;
  u_xlat78 = (x_2006 / x_2007);
  let x_2009 : vec4<f32> = u_xlat0;
  let x_2011 : f32 = u_xlat78;
  let x_2014 : vec3<f32> = u_xlat30;
  let x_2015 : vec3<f32> = ((vec3<f32>(x_2009.x, x_2009.y, x_2009.z) * vec3<f32>(x_2011, x_2011, x_2011)) + x_2014);
  let x_2016 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2015.x, x_2015.y, x_2015.z, x_2016.w);
  let x_2019 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2021 : f32 = x_187.unity_LightData.y;
  u_xlat78 = min(x_2019, x_2021);
  let x_2025 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_2025));
  let x_2029 : f32 = u_xlat57.x;
  let x_2032 : f32 = x_333.x_AdditionalShadowFadeParams.x;
  let x_2035 : f32 = x_333.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_2029 * x_2032) + x_2035);
  let x_2037 : f32 = u_xlat1;
  u_xlat1 = clamp(x_2037, 0.0f, 1.0f);
  let x_2040 : f32 = x_1671.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2042 : f32 = x_1671.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2044 : f32 = x_1671.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2046 : f32 = x_1671.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2047 : vec4<f32> = vec4<f32>(x_2040, x_2042, x_2044, x_2046);
  let x_2053 : vec4<bool> = (vec4<f32>(x_2047.x, x_2047.y, x_2047.z, x_2047.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb31 = vec2<bool>(x_2053.x, x_2053.y);
  u_xlat34.x = 0.0f;
  u_xlat34.y = 0.0f;
  u_xlat34.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2065 : u32 = u_xlatu_loop_1;
    let x_2066 : u32 = u_xlatu78;
    if ((x_2065 < x_2066)) {
    } else {
      break;
    }
    let x_2069 : u32 = u_xlatu_loop_1;
    u_xlatu83 = (x_2069 >> 2u);
    let x_2073 : u32 = u_xlatu_loop_1;
    u_xlati84 = bitcast<i32>((x_2073 & 3u));
    let x_2076 : u32 = u_xlatu83;
    let x_2079 : vec4<f32> = x_187.unity_LightIndices[bitcast<i32>(x_2076)];
    let x_2089 : i32 = u_xlati84;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2094 : vec4<u32> = indexable[x_2089];
    u_xlat83 = dot(x_2079, bitcast<vec4<f32>>(x_2094));
    let x_2098 : f32 = u_xlat83;
    u_xlati83 = i32(x_2098);
    let x_2100 : vec3<f32> = vs_TEXCOORD7;
    let x_2111 : i32 = u_xlati83;
    let x_2113 : vec4<f32> = x_2110.x_AdditionalLightsPosition[x_2111];
    let x_2116 : i32 = u_xlati83;
    let x_2118 : vec4<f32> = x_2110.x_AdditionalLightsPosition[x_2116];
    let x_2120 : vec3<f32> = ((-(x_2100) * vec3<f32>(x_2113.w, x_2113.w, x_2113.w)) + vec3<f32>(x_2118.x, x_2118.y, x_2118.z));
    let x_2121 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2120.x, x_2120.y, x_2120.z, x_2121.w);
    let x_2123 : vec4<f32> = u_xlat9;
    let x_2125 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2123.x, x_2123.y, x_2123.z), vec3<f32>(x_2125.x, x_2125.y, x_2125.z));
    let x_2128 : f32 = u_xlat84;
    u_xlat84 = max(x_2128, 0.00006103515625f);
    let x_2131 : f32 = u_xlat84;
    u_xlat85 = inverseSqrt(x_2131);
    let x_2133 : f32 = u_xlat85;
    let x_2135 : vec4<f32> = u_xlat9;
    let x_2137 : vec3<f32> = (vec3<f32>(x_2133, x_2133, x_2133) * vec3<f32>(x_2135.x, x_2135.y, x_2135.z));
    let x_2138 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2137.x, x_2137.y, x_2137.z, x_2138.w);
    let x_2141 : f32 = u_xlat84;
    u_xlat87 = (1.0f / x_2141);
    let x_2143 : f32 = u_xlat84;
    let x_2144 : i32 = u_xlati83;
    let x_2146 : f32 = x_2110.x_AdditionalLightsAttenuation[x_2144].x;
    u_xlat84 = (x_2143 * x_2146);
    let x_2148 : f32 = u_xlat84;
    let x_2150 : f32 = u_xlat84;
    u_xlat84 = ((-(x_2148) * x_2150) + 1.0f);
    let x_2153 : f32 = u_xlat84;
    u_xlat84 = max(x_2153, 0.0f);
    let x_2155 : f32 = u_xlat84;
    let x_2156 : f32 = u_xlat84;
    u_xlat84 = (x_2155 * x_2156);
    let x_2158 : f32 = u_xlat84;
    let x_2159 : f32 = u_xlat87;
    u_xlat84 = (x_2158 * x_2159);
    let x_2161 : i32 = u_xlati83;
    let x_2163 : vec4<f32> = x_2110.x_AdditionalLightsSpotDir[x_2161];
    let x_2165 : vec4<f32> = u_xlat10;
    u_xlat87 = dot(vec3<f32>(x_2163.x, x_2163.y, x_2163.z), vec3<f32>(x_2165.x, x_2165.y, x_2165.z));
    let x_2168 : f32 = u_xlat87;
    let x_2169 : i32 = u_xlati83;
    let x_2171 : f32 = x_2110.x_AdditionalLightsAttenuation[x_2169].z;
    let x_2173 : i32 = u_xlati83;
    let x_2175 : f32 = x_2110.x_AdditionalLightsAttenuation[x_2173].w;
    u_xlat87 = ((x_2168 * x_2171) + x_2175);
    let x_2177 : f32 = u_xlat87;
    u_xlat87 = clamp(x_2177, 0.0f, 1.0f);
    let x_2179 : f32 = u_xlat87;
    let x_2180 : f32 = u_xlat87;
    u_xlat87 = (x_2179 * x_2180);
    let x_2182 : f32 = u_xlat84;
    let x_2183 : f32 = u_xlat87;
    u_xlat84 = (x_2182 * x_2183);
    let x_2187 : i32 = u_xlati83;
    let x_2189 : f32 = x_333.x_AdditionalShadowParams[x_2187].w;
    u_xlati87 = i32(x_2189);
    let x_2192 : i32 = u_xlati87;
    u_xlatb88 = (x_2192 >= 0i);
    let x_2194 : bool = u_xlatb88;
    if (x_2194) {
      let x_2198 : i32 = u_xlati83;
      let x_2200 : f32 = x_333.x_AdditionalShadowParams[x_2198].z;
      u_xlatb88 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2200, x_2200, x_2200, x_2200))));
      let x_2204 : bool = u_xlatb88;
      if (x_2204) {
        let x_2209 : vec4<f32> = u_xlat10;
        let x_2212 : vec4<f32> = u_xlat10;
        let x_2215 : vec4<bool> = (abs(vec4<f32>(x_2209.z, x_2209.z, x_2209.y, x_2209.z)) >= abs(vec4<f32>(x_2212.x, x_2212.y, x_2212.x, x_2212.x)));
        let x_2217 : vec3<bool> = vec3<bool>(x_2215.x, x_2215.y, x_2215.z);
        let x_2218 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2217.x, x_2217.y, x_2217.z, x_2218.w);
        let x_2221 : bool = u_xlatb11.y;
        let x_2223 : bool = u_xlatb11.x;
        u_xlatb88 = (x_2221 & x_2223);
        let x_2225 : vec4<f32> = u_xlat10;
        let x_2228 : vec4<bool> = (-(vec4<f32>(x_2225.z, x_2225.y, x_2225.z, x_2225.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2229 : vec3<bool> = vec3<bool>(x_2228.x, x_2228.y, x_2228.w);
        let x_2230 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2229.x, x_2229.y, x_2230.z, x_2229.z);
        let x_2233 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2233);
        let x_2238 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2238);
        let x_2244 : bool = u_xlatb11.w;
        u_xlat89 = select(0.0f, 1.0f, x_2244);
        let x_2248 : bool = u_xlatb11.z;
        if (x_2248) {
          let x_2253 : f32 = u_xlat11.y;
          x_2249 = x_2253;
        } else {
          let x_2255 : f32 = u_xlat89;
          x_2249 = x_2255;
        }
        let x_2256 : f32 = x_2249;
        u_xlat37.x = x_2256;
        let x_2259 : bool = u_xlatb88;
        if (x_2259) {
          let x_2264 : f32 = u_xlat11.x;
          x_2260 = x_2264;
        } else {
          let x_2267 : f32 = u_xlat37.x;
          x_2260 = x_2267;
        }
        let x_2268 : f32 = x_2260;
        u_xlat88 = x_2268;
        let x_2269 : i32 = u_xlati83;
        let x_2271 : f32 = x_333.x_AdditionalShadowParams[x_2269].w;
        u_xlat11.x = trunc(x_2271);
        let x_2274 : f32 = u_xlat88;
        let x_2276 : f32 = u_xlat11.x;
        u_xlat88 = (x_2274 + x_2276);
        let x_2278 : f32 = u_xlat88;
        u_xlati87 = i32(x_2278);
      }
      let x_2280 : i32 = u_xlati87;
      u_xlati87 = (x_2280 << bitcast<u32>(2i));
      let x_2282 : vec3<f32> = vs_TEXCOORD7;
      let x_2285 : i32 = u_xlati87;
      let x_2288 : i32 = u_xlati87;
      let x_2292 : vec4<f32> = x_333.x_AdditionalLightsWorldToShadow[((x_2285 + 1i) / 4i)][((x_2288 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2282.y, x_2282.y, x_2282.y, x_2282.y) * x_2292);
      let x_2294 : i32 = u_xlati87;
      let x_2296 : i32 = u_xlati87;
      let x_2299 : vec4<f32> = x_333.x_AdditionalLightsWorldToShadow[(x_2294 / 4i)][(x_2296 % 4i)];
      let x_2300 : vec3<f32> = vs_TEXCOORD7;
      let x_2303 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2299 * vec4<f32>(x_2300.x, x_2300.x, x_2300.x, x_2300.x)) + x_2303);
      let x_2305 : i32 = u_xlati87;
      let x_2308 : i32 = u_xlati87;
      let x_2312 : vec4<f32> = x_333.x_AdditionalLightsWorldToShadow[((x_2305 + 2i) / 4i)][((x_2308 + 2i) % 4i)];
      let x_2313 : vec3<f32> = vs_TEXCOORD7;
      let x_2316 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2312 * vec4<f32>(x_2313.z, x_2313.z, x_2313.z, x_2313.z)) + x_2316);
      let x_2318 : vec4<f32> = u_xlat11;
      let x_2319 : i32 = u_xlati87;
      let x_2322 : i32 = u_xlati87;
      let x_2326 : vec4<f32> = x_333.x_AdditionalLightsWorldToShadow[((x_2319 + 3i) / 4i)][((x_2322 + 3i) % 4i)];
      u_xlat11 = (x_2318 + x_2326);
      let x_2328 : vec4<f32> = u_xlat11;
      let x_2330 : vec4<f32> = u_xlat11;
      let x_2332 : vec3<f32> = (vec3<f32>(x_2328.x, x_2328.y, x_2328.z) / vec3<f32>(x_2330.w, x_2330.w, x_2330.w));
      let x_2333 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2332.x, x_2332.y, x_2332.z, x_2333.w);
      let x_2336 : i32 = u_xlati83;
      let x_2338 : f32 = x_333.x_AdditionalShadowParams[x_2336].y;
      u_xlatb87 = (0.0f < x_2338);
      let x_2340 : bool = u_xlatb87;
      if (x_2340) {
        let x_2343 : i32 = u_xlati83;
        let x_2345 : f32 = x_333.x_AdditionalShadowParams[x_2343].y;
        u_xlatb87 = (1.0f == x_2345);
        let x_2347 : bool = u_xlatb87;
        if (x_2347) {
          let x_2350 : vec4<f32> = u_xlat11;
          let x_2354 : vec4<f32> = x_333.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2350.x, x_2350.y, x_2350.x, x_2350.y) + x_2354);
          let x_2357 : vec4<f32> = u_xlat12;
          let x_2358 : vec2<f32> = vec2<f32>(x_2357.x, x_2357.y);
          let x_2360 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2358.x, x_2358.y, x_2360);
          let x_2368 : vec3<f32> = txVec30;
          let x_2370 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2368.xy, x_2368.z);
          u_xlat13.x = x_2370;
          let x_2373 : vec4<f32> = u_xlat12;
          let x_2374 : vec2<f32> = vec2<f32>(x_2373.z, x_2373.w);
          let x_2376 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2374.x, x_2374.y, x_2376);
          let x_2383 : vec3<f32> = txVec31;
          let x_2385 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2383.xy, x_2383.z);
          u_xlat13.y = x_2385;
          let x_2387 : vec4<f32> = u_xlat11;
          let x_2391 : vec4<f32> = x_333.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2387.x, x_2387.y, x_2387.x, x_2387.y) + x_2391);
          let x_2394 : vec4<f32> = u_xlat12;
          let x_2395 : vec2<f32> = vec2<f32>(x_2394.x, x_2394.y);
          let x_2397 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2395.x, x_2395.y, x_2397);
          let x_2404 : vec3<f32> = txVec32;
          let x_2406 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2404.xy, x_2404.z);
          u_xlat13.z = x_2406;
          let x_2409 : vec4<f32> = u_xlat12;
          let x_2410 : vec2<f32> = vec2<f32>(x_2409.z, x_2409.w);
          let x_2412 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2410.x, x_2410.y, x_2412);
          let x_2419 : vec3<f32> = txVec33;
          let x_2421 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2419.xy, x_2419.z);
          u_xlat13.w = x_2421;
          let x_2423 : vec4<f32> = u_xlat13;
          u_xlat87 = dot(x_2423, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2426 : i32 = u_xlati83;
          let x_2428 : f32 = x_333.x_AdditionalShadowParams[x_2426].y;
          u_xlatb88 = (2.0f == x_2428);
          let x_2430 : bool = u_xlatb88;
          if (x_2430) {
            let x_2433 : vec4<f32> = u_xlat11;
            let x_2437 : vec4<f32> = x_333.x_AdditionalShadowmapSize;
            let x_2440 : vec2<f32> = ((vec2<f32>(x_2433.x, x_2433.y) * vec2<f32>(x_2437.z, x_2437.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2441 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2440.x, x_2440.y, x_2441.z, x_2441.w);
            let x_2443 : vec4<f32> = u_xlat12;
            let x_2445 : vec2<f32> = floor(vec2<f32>(x_2443.x, x_2443.y));
            let x_2446 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2445.x, x_2445.y, x_2446.z, x_2446.w);
            let x_2448 : vec4<f32> = u_xlat11;
            let x_2451 : vec4<f32> = x_333.x_AdditionalShadowmapSize;
            let x_2454 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2448.x, x_2448.y) * vec2<f32>(x_2451.z, x_2451.w)) + -(vec2<f32>(x_2454.x, x_2454.y)));
            let x_2458 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2458.x, x_2458.x, x_2458.y, x_2458.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2461 : vec4<f32> = u_xlat13;
            let x_2463 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2461.x, x_2461.x, x_2461.z, x_2461.z) * vec4<f32>(x_2463.x, x_2463.x, x_2463.z, x_2463.z));
            let x_2466 : vec4<f32> = u_xlat14;
            let x_2468 : vec2<f32> = (vec2<f32>(x_2466.y, x_2466.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2469 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2468.x, x_2469.y, x_2468.y, x_2469.w);
            let x_2471 : vec4<f32> = u_xlat14;
            let x_2474 : vec2<f32> = u_xlat64;
            let x_2476 : vec2<f32> = ((vec2<f32>(x_2471.x, x_2471.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2474));
            let x_2477 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2476.x, x_2476.y, x_2477.z, x_2477.w);
            let x_2480 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2480) + vec2<f32>(1.0f, 1.0f));
            let x_2483 : vec2<f32> = u_xlat64;
            let x_2484 : vec2<f32> = min(x_2483, vec2<f32>(0.0f, 0.0f));
            let x_2485 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2484.x, x_2484.y, x_2485.z, x_2485.w);
            let x_2487 : vec4<f32> = u_xlat15;
            let x_2490 : vec4<f32> = u_xlat15;
            let x_2493 : vec2<f32> = u_xlat66;
            let x_2494 : vec2<f32> = ((-(vec2<f32>(x_2487.x, x_2487.y)) * vec2<f32>(x_2490.x, x_2490.y)) + x_2493);
            let x_2495 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2494.x, x_2494.y, x_2495.z, x_2495.w);
            let x_2497 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2497, vec2<f32>(0.0f, 0.0f));
            let x_2499 : vec2<f32> = u_xlat64;
            let x_2501 : vec2<f32> = u_xlat64;
            let x_2503 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2499) * x_2501) + vec2<f32>(x_2503.y, x_2503.w));
            let x_2506 : vec4<f32> = u_xlat15;
            let x_2508 : vec2<f32> = (vec2<f32>(x_2506.x, x_2506.y) + vec2<f32>(1.0f, 1.0f));
            let x_2509 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2508.x, x_2508.y, x_2509.z, x_2509.w);
            let x_2511 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2511 + vec2<f32>(1.0f, 1.0f));
            let x_2513 : vec4<f32> = u_xlat14;
            let x_2515 : vec2<f32> = (vec2<f32>(x_2513.x, x_2513.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2516 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2515.x, x_2515.y, x_2516.z, x_2516.w);
            let x_2518 : vec2<f32> = u_xlat66;
            let x_2519 : vec2<f32> = (x_2518 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2520 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2519.x, x_2519.y, x_2520.z, x_2520.w);
            let x_2522 : vec4<f32> = u_xlat15;
            let x_2524 : vec2<f32> = (vec2<f32>(x_2522.x, x_2522.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2525 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2524.x, x_2524.y, x_2525.z, x_2525.w);
            let x_2527 : vec2<f32> = u_xlat64;
            let x_2528 : vec2<f32> = (x_2527 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2529 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2528.x, x_2528.y, x_2529.z, x_2529.w);
            let x_2531 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2531.y, x_2531.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2535 : f32 = u_xlat15.x;
            u_xlat16.z = x_2535;
            let x_2538 : f32 = u_xlat64.x;
            u_xlat16.w = x_2538;
            let x_2541 : f32 = u_xlat17.x;
            u_xlat14.z = x_2541;
            let x_2544 : f32 = u_xlat13.x;
            u_xlat14.w = x_2544;
            let x_2546 : vec4<f32> = u_xlat14;
            let x_2548 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2546.z, x_2546.w, x_2546.x, x_2546.z) + vec4<f32>(x_2548.z, x_2548.w, x_2548.x, x_2548.z));
            let x_2552 : f32 = u_xlat16.y;
            u_xlat15.z = x_2552;
            let x_2555 : f32 = u_xlat64.y;
            u_xlat15.w = x_2555;
            let x_2558 : f32 = u_xlat14.y;
            u_xlat17.z = x_2558;
            let x_2561 : f32 = u_xlat13.z;
            u_xlat17.w = x_2561;
            let x_2563 : vec4<f32> = u_xlat15;
            let x_2565 : vec4<f32> = u_xlat17;
            let x_2567 : vec3<f32> = (vec3<f32>(x_2563.z, x_2563.y, x_2563.w) + vec3<f32>(x_2565.z, x_2565.y, x_2565.w));
            let x_2568 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2567.x, x_2567.y, x_2567.z, x_2568.w);
            let x_2570 : vec4<f32> = u_xlat14;
            let x_2572 : vec4<f32> = u_xlat18;
            let x_2574 : vec3<f32> = (vec3<f32>(x_2570.x, x_2570.z, x_2570.w) / vec3<f32>(x_2572.z, x_2572.w, x_2572.y));
            let x_2575 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2574.x, x_2574.y, x_2574.z, x_2575.w);
            let x_2577 : vec4<f32> = u_xlat14;
            let x_2579 : vec3<f32> = (vec3<f32>(x_2577.x, x_2577.y, x_2577.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2580 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2579.x, x_2579.y, x_2579.z, x_2580.w);
            let x_2582 : vec4<f32> = u_xlat17;
            let x_2584 : vec4<f32> = u_xlat13;
            let x_2586 : vec3<f32> = (vec3<f32>(x_2582.z, x_2582.y, x_2582.w) / vec3<f32>(x_2584.x, x_2584.y, x_2584.z));
            let x_2587 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2586.x, x_2586.y, x_2586.z, x_2587.w);
            let x_2589 : vec4<f32> = u_xlat15;
            let x_2591 : vec3<f32> = (vec3<f32>(x_2589.x, x_2589.y, x_2589.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2592 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2591.x, x_2591.y, x_2591.z, x_2592.w);
            let x_2594 : vec4<f32> = u_xlat14;
            let x_2597 : vec4<f32> = x_333.x_AdditionalShadowmapSize;
            let x_2599 : vec3<f32> = (vec3<f32>(x_2594.y, x_2594.x, x_2594.z) * vec3<f32>(x_2597.x, x_2597.x, x_2597.x));
            let x_2600 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2599.x, x_2599.y, x_2599.z, x_2600.w);
            let x_2602 : vec4<f32> = u_xlat15;
            let x_2605 : vec4<f32> = x_333.x_AdditionalShadowmapSize;
            let x_2607 : vec3<f32> = (vec3<f32>(x_2602.x, x_2602.y, x_2602.z) * vec3<f32>(x_2605.y, x_2605.y, x_2605.y));
            let x_2608 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2607.x, x_2607.y, x_2607.z, x_2608.w);
            let x_2611 : f32 = u_xlat15.x;
            u_xlat14.w = x_2611;
            let x_2613 : vec4<f32> = u_xlat12;
            let x_2616 : vec4<f32> = x_333.x_AdditionalShadowmapSize;
            let x_2619 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2613.x, x_2613.y, x_2613.x, x_2613.y) * vec4<f32>(x_2616.x, x_2616.y, x_2616.x, x_2616.y)) + vec4<f32>(x_2619.y, x_2619.w, x_2619.x, x_2619.w));
            let x_2622 : vec4<f32> = u_xlat12;
            let x_2625 : vec4<f32> = x_333.x_AdditionalShadowmapSize;
            let x_2628 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2622.x, x_2622.y) * vec2<f32>(x_2625.x, x_2625.y)) + vec2<f32>(x_2628.z, x_2628.w));
            let x_2632 : f32 = u_xlat14.y;
            u_xlat15.w = x_2632;
            let x_2634 : vec4<f32> = u_xlat15;
            let x_2635 : vec2<f32> = vec2<f32>(x_2634.y, x_2634.z);
            let x_2636 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2636.x, x_2635.x, x_2636.z, x_2635.y);
            let x_2638 : vec4<f32> = u_xlat12;
            let x_2641 : vec4<f32> = x_333.x_AdditionalShadowmapSize;
            let x_2644 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2638.x, x_2638.y, x_2638.x, x_2638.y) * vec4<f32>(x_2641.x, x_2641.y, x_2641.x, x_2641.y)) + vec4<f32>(x_2644.x, x_2644.y, x_2644.z, x_2644.y));
            let x_2647 : vec4<f32> = u_xlat12;
            let x_2650 : vec4<f32> = x_333.x_AdditionalShadowmapSize;
            let x_2653 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2647.x, x_2647.y, x_2647.x, x_2647.y) * vec4<f32>(x_2650.x, x_2650.y, x_2650.x, x_2650.y)) + vec4<f32>(x_2653.w, x_2653.y, x_2653.w, x_2653.z));
            let x_2656 : vec4<f32> = u_xlat12;
            let x_2659 : vec4<f32> = x_333.x_AdditionalShadowmapSize;
            let x_2662 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2656.x, x_2656.y, x_2656.x, x_2656.y) * vec4<f32>(x_2659.x, x_2659.y, x_2659.x, x_2659.y)) + vec4<f32>(x_2662.x, x_2662.w, x_2662.z, x_2662.w));
            let x_2665 : vec4<f32> = u_xlat13;
            let x_2667 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2665.x, x_2665.x, x_2665.x, x_2665.y) * vec4<f32>(x_2667.z, x_2667.w, x_2667.y, x_2667.z));
            let x_2671 : vec4<f32> = u_xlat13;
            let x_2673 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2671.y, x_2671.y, x_2671.z, x_2671.z) * x_2673);
            let x_2676 : f32 = u_xlat13.z;
            let x_2678 : f32 = u_xlat18.y;
            u_xlat88 = (x_2676 * x_2678);
            let x_2681 : vec4<f32> = u_xlat16;
            let x_2682 : vec2<f32> = vec2<f32>(x_2681.x, x_2681.y);
            let x_2684 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2682.x, x_2682.y, x_2684);
            let x_2691 : vec3<f32> = txVec34;
            let x_2693 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2691.xy, x_2691.z);
            u_xlat89 = x_2693;
            let x_2695 : vec4<f32> = u_xlat16;
            let x_2696 : vec2<f32> = vec2<f32>(x_2695.z, x_2695.w);
            let x_2698 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2696.x, x_2696.y, x_2698);
            let x_2705 : vec3<f32> = txVec35;
            let x_2707 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2705.xy, x_2705.z);
            u_xlat12.x = x_2707;
            let x_2710 : f32 = u_xlat12.x;
            let x_2712 : f32 = u_xlat19.y;
            u_xlat12.x = (x_2710 * x_2712);
            let x_2716 : f32 = u_xlat19.x;
            let x_2717 : f32 = u_xlat89;
            let x_2720 : f32 = u_xlat12.x;
            u_xlat89 = ((x_2716 * x_2717) + x_2720);
            let x_2723 : vec2<f32> = u_xlat64;
            let x_2725 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_2723.x, x_2723.y, x_2725);
            let x_2732 : vec3<f32> = txVec36;
            let x_2734 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2732.xy, x_2732.z);
            u_xlat12.x = x_2734;
            let x_2737 : f32 = u_xlat19.z;
            let x_2739 : f32 = u_xlat12.x;
            let x_2741 : f32 = u_xlat89;
            u_xlat89 = ((x_2737 * x_2739) + x_2741);
            let x_2744 : vec4<f32> = u_xlat15;
            let x_2745 : vec2<f32> = vec2<f32>(x_2744.x, x_2744.y);
            let x_2747 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_2745.x, x_2745.y, x_2747);
            let x_2754 : vec3<f32> = txVec37;
            let x_2756 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2754.xy, x_2754.z);
            u_xlat12.x = x_2756;
            let x_2759 : f32 = u_xlat19.w;
            let x_2761 : f32 = u_xlat12.x;
            let x_2763 : f32 = u_xlat89;
            u_xlat89 = ((x_2759 * x_2761) + x_2763);
            let x_2766 : vec4<f32> = u_xlat17;
            let x_2767 : vec2<f32> = vec2<f32>(x_2766.x, x_2766.y);
            let x_2769 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_2767.x, x_2767.y, x_2769);
            let x_2776 : vec3<f32> = txVec38;
            let x_2778 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2776.xy, x_2776.z);
            u_xlat12.x = x_2778;
            let x_2781 : f32 = u_xlat20.x;
            let x_2783 : f32 = u_xlat12.x;
            let x_2785 : f32 = u_xlat89;
            u_xlat89 = ((x_2781 * x_2783) + x_2785);
            let x_2788 : vec4<f32> = u_xlat17;
            let x_2789 : vec2<f32> = vec2<f32>(x_2788.z, x_2788.w);
            let x_2791 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_2789.x, x_2789.y, x_2791);
            let x_2798 : vec3<f32> = txVec39;
            let x_2800 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2798.xy, x_2798.z);
            u_xlat12.x = x_2800;
            let x_2803 : f32 = u_xlat20.y;
            let x_2805 : f32 = u_xlat12.x;
            let x_2807 : f32 = u_xlat89;
            u_xlat89 = ((x_2803 * x_2805) + x_2807);
            let x_2810 : vec4<f32> = u_xlat15;
            let x_2811 : vec2<f32> = vec2<f32>(x_2810.z, x_2810.w);
            let x_2813 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_2811.x, x_2811.y, x_2813);
            let x_2820 : vec3<f32> = txVec40;
            let x_2822 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2820.xy, x_2820.z);
            u_xlat12.x = x_2822;
            let x_2825 : f32 = u_xlat20.z;
            let x_2827 : f32 = u_xlat12.x;
            let x_2829 : f32 = u_xlat89;
            u_xlat89 = ((x_2825 * x_2827) + x_2829);
            let x_2832 : vec4<f32> = u_xlat14;
            let x_2833 : vec2<f32> = vec2<f32>(x_2832.x, x_2832.y);
            let x_2835 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_2833.x, x_2833.y, x_2835);
            let x_2842 : vec3<f32> = txVec41;
            let x_2844 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2842.xy, x_2842.z);
            u_xlat12.x = x_2844;
            let x_2847 : f32 = u_xlat20.w;
            let x_2849 : f32 = u_xlat12.x;
            let x_2851 : f32 = u_xlat89;
            u_xlat89 = ((x_2847 * x_2849) + x_2851);
            let x_2854 : vec4<f32> = u_xlat14;
            let x_2855 : vec2<f32> = vec2<f32>(x_2854.z, x_2854.w);
            let x_2857 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_2855.x, x_2855.y, x_2857);
            let x_2864 : vec3<f32> = txVec42;
            let x_2866 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2864.xy, x_2864.z);
            u_xlat12.x = x_2866;
            let x_2868 : f32 = u_xlat88;
            let x_2870 : f32 = u_xlat12.x;
            let x_2872 : f32 = u_xlat89;
            u_xlat87 = ((x_2868 * x_2870) + x_2872);
          } else {
            let x_2875 : vec4<f32> = u_xlat11;
            let x_2878 : vec4<f32> = x_333.x_AdditionalShadowmapSize;
            let x_2881 : vec2<f32> = ((vec2<f32>(x_2875.x, x_2875.y) * vec2<f32>(x_2878.z, x_2878.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2882 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2881.x, x_2881.y, x_2882.z, x_2882.w);
            let x_2884 : vec4<f32> = u_xlat12;
            let x_2886 : vec2<f32> = floor(vec2<f32>(x_2884.x, x_2884.y));
            let x_2887 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2886.x, x_2886.y, x_2887.z, x_2887.w);
            let x_2889 : vec4<f32> = u_xlat11;
            let x_2892 : vec4<f32> = x_333.x_AdditionalShadowmapSize;
            let x_2895 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2889.x, x_2889.y) * vec2<f32>(x_2892.z, x_2892.w)) + -(vec2<f32>(x_2895.x, x_2895.y)));
            let x_2899 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2899.x, x_2899.x, x_2899.y, x_2899.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2902 : vec4<f32> = u_xlat13;
            let x_2904 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2902.x, x_2902.x, x_2902.z, x_2902.z) * vec4<f32>(x_2904.x, x_2904.x, x_2904.z, x_2904.z));
            let x_2907 : vec4<f32> = u_xlat14;
            let x_2909 : vec2<f32> = (vec2<f32>(x_2907.y, x_2907.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2910 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2910.x, x_2909.x, x_2910.z, x_2909.y);
            let x_2912 : vec4<f32> = u_xlat14;
            let x_2915 : vec2<f32> = u_xlat64;
            let x_2917 : vec2<f32> = ((vec2<f32>(x_2912.x, x_2912.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2915));
            let x_2918 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2917.x, x_2918.y, x_2917.y, x_2918.w);
            let x_2920 : vec2<f32> = u_xlat64;
            let x_2922 : vec2<f32> = (-(x_2920) + vec2<f32>(1.0f, 1.0f));
            let x_2923 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2922.x, x_2922.y, x_2923.z, x_2923.w);
            let x_2925 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_2925, vec2<f32>(0.0f, 0.0f));
            let x_2927 : vec2<f32> = u_xlat66;
            let x_2929 : vec2<f32> = u_xlat66;
            let x_2931 : vec4<f32> = u_xlat14;
            let x_2933 : vec2<f32> = ((-(x_2927) * x_2929) + vec2<f32>(x_2931.x, x_2931.y));
            let x_2934 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2933.x, x_2933.y, x_2934.z, x_2934.w);
            let x_2936 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_2936, vec2<f32>(0.0f, 0.0f));
            let x_2939 : vec2<f32> = u_xlat66;
            let x_2941 : vec2<f32> = u_xlat66;
            let x_2943 : vec4<f32> = u_xlat13;
            let x_2945 : vec2<f32> = ((-(x_2939) * x_2941) + vec2<f32>(x_2943.y, x_2943.w));
            let x_2946 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_2945.x, x_2946.y, x_2945.y);
            let x_2948 : vec4<f32> = u_xlat14;
            let x_2951 : vec2<f32> = (vec2<f32>(x_2948.x, x_2948.y) + vec2<f32>(2.0f, 2.0f));
            let x_2952 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2951.x, x_2951.y, x_2952.z, x_2952.w);
            let x_2954 : vec3<f32> = u_xlat39;
            let x_2956 : vec2<f32> = (vec2<f32>(x_2954.x, x_2954.z) + vec2<f32>(2.0f, 2.0f));
            let x_2957 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2957.x, x_2956.x, x_2957.z, x_2956.y);
            let x_2960 : f32 = u_xlat13.y;
            u_xlat16.z = (x_2960 * 0.08163200318813323975f);
            let x_2963 : vec4<f32> = u_xlat13;
            let x_2966 : vec3<f32> = (vec3<f32>(x_2963.z, x_2963.x, x_2963.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2967 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2966.x, x_2966.y, x_2966.z, x_2967.w);
            let x_2969 : vec4<f32> = u_xlat14;
            let x_2971 : vec2<f32> = (vec2<f32>(x_2969.x, x_2969.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2972 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2971.x, x_2971.y, x_2972.z, x_2972.w);
            let x_2975 : f32 = u_xlat17.y;
            u_xlat16.x = x_2975;
            let x_2977 : vec2<f32> = u_xlat64;
            let x_2980 : vec2<f32> = ((vec2<f32>(x_2977.x, x_2977.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2981 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2981.x, x_2980.x, x_2981.z, x_2980.y);
            let x_2983 : vec2<f32> = u_xlat64;
            let x_2986 : vec2<f32> = ((vec2<f32>(x_2983.x, x_2983.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2987 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2986.x, x_2987.y, x_2986.y, x_2987.w);
            let x_2990 : f32 = u_xlat13.x;
            u_xlat14.y = x_2990;
            let x_2993 : f32 = u_xlat15.y;
            u_xlat14.w = x_2993;
            let x_2995 : vec4<f32> = u_xlat14;
            let x_2996 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_2995 + x_2996);
            let x_2998 : vec2<f32> = u_xlat64;
            let x_3001 : vec2<f32> = ((vec2<f32>(x_2998.y, x_2998.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3002 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3002.x, x_3001.x, x_3002.z, x_3001.y);
            let x_3004 : vec2<f32> = u_xlat64;
            let x_3007 : vec2<f32> = ((vec2<f32>(x_3004.y, x_3004.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3008 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3007.x, x_3008.y, x_3007.y, x_3008.w);
            let x_3011 : f32 = u_xlat13.y;
            u_xlat15.y = x_3011;
            let x_3013 : vec4<f32> = u_xlat15;
            let x_3014 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3013 + x_3014);
            let x_3016 : vec4<f32> = u_xlat14;
            let x_3017 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3016 / x_3017);
            let x_3019 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3019 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3021 : vec4<f32> = u_xlat15;
            let x_3022 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3021 / x_3022);
            let x_3024 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3024 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3026 : vec4<f32> = u_xlat14;
            let x_3029 : vec4<f32> = x_333.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3026.w, x_3026.x, x_3026.y, x_3026.z) * vec4<f32>(x_3029.x, x_3029.x, x_3029.x, x_3029.x));
            let x_3032 : vec4<f32> = u_xlat15;
            let x_3035 : vec4<f32> = x_333.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3032.x, x_3032.w, x_3032.y, x_3032.z) * vec4<f32>(x_3035.y, x_3035.y, x_3035.y, x_3035.y));
            let x_3038 : vec4<f32> = u_xlat14;
            let x_3039 : vec3<f32> = vec3<f32>(x_3038.y, x_3038.z, x_3038.w);
            let x_3040 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3039.x, x_3040.y, x_3039.y, x_3039.z);
            let x_3043 : f32 = u_xlat15.x;
            u_xlat17.y = x_3043;
            let x_3045 : vec4<f32> = u_xlat12;
            let x_3048 : vec4<f32> = x_333.x_AdditionalShadowmapSize;
            let x_3051 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3045.x, x_3045.y, x_3045.x, x_3045.y) * vec4<f32>(x_3048.x, x_3048.y, x_3048.x, x_3048.y)) + vec4<f32>(x_3051.x, x_3051.y, x_3051.z, x_3051.y));
            let x_3054 : vec4<f32> = u_xlat12;
            let x_3057 : vec4<f32> = x_333.x_AdditionalShadowmapSize;
            let x_3060 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3054.x, x_3054.y) * vec2<f32>(x_3057.x, x_3057.y)) + vec2<f32>(x_3060.w, x_3060.y));
            let x_3064 : f32 = u_xlat17.y;
            u_xlat14.y = x_3064;
            let x_3067 : f32 = u_xlat15.z;
            u_xlat17.y = x_3067;
            let x_3069 : vec4<f32> = u_xlat12;
            let x_3072 : vec4<f32> = x_333.x_AdditionalShadowmapSize;
            let x_3075 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3069.x, x_3069.y, x_3069.x, x_3069.y) * vec4<f32>(x_3072.x, x_3072.y, x_3072.x, x_3072.y)) + vec4<f32>(x_3075.x, x_3075.y, x_3075.z, x_3075.y));
            let x_3078 : vec4<f32> = u_xlat12;
            let x_3081 : vec4<f32> = x_333.x_AdditionalShadowmapSize;
            let x_3084 : vec4<f32> = u_xlat17;
            let x_3086 : vec2<f32> = ((vec2<f32>(x_3078.x, x_3078.y) * vec2<f32>(x_3081.x, x_3081.y)) + vec2<f32>(x_3084.w, x_3084.y));
            let x_3087 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3086.x, x_3086.y, x_3087.z, x_3087.w);
            let x_3090 : f32 = u_xlat17.y;
            u_xlat14.z = x_3090;
            let x_3093 : vec4<f32> = u_xlat12;
            let x_3096 : vec4<f32> = x_333.x_AdditionalShadowmapSize;
            let x_3099 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3093.x, x_3093.y, x_3093.x, x_3093.y) * vec4<f32>(x_3096.x, x_3096.y, x_3096.x, x_3096.y)) + vec4<f32>(x_3099.x, x_3099.y, x_3099.x, x_3099.z));
            let x_3103 : f32 = u_xlat15.w;
            u_xlat17.y = x_3103;
            let x_3106 : vec4<f32> = u_xlat12;
            let x_3109 : vec4<f32> = x_333.x_AdditionalShadowmapSize;
            let x_3112 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3106.x, x_3106.y, x_3106.x, x_3106.y) * vec4<f32>(x_3109.x, x_3109.y, x_3109.x, x_3109.y)) + vec4<f32>(x_3112.x, x_3112.y, x_3112.z, x_3112.y));
            let x_3116 : vec4<f32> = u_xlat12;
            let x_3119 : vec4<f32> = x_333.x_AdditionalShadowmapSize;
            let x_3122 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3116.x, x_3116.y) * vec2<f32>(x_3119.x, x_3119.y)) + vec2<f32>(x_3122.w, x_3122.y));
            let x_3126 : f32 = u_xlat17.y;
            u_xlat14.w = x_3126;
            let x_3129 : vec4<f32> = u_xlat12;
            let x_3132 : vec4<f32> = x_333.x_AdditionalShadowmapSize;
            let x_3135 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3129.x, x_3129.y) * vec2<f32>(x_3132.x, x_3132.y)) + vec2<f32>(x_3135.x, x_3135.w));
            let x_3138 : vec4<f32> = u_xlat17;
            let x_3139 : vec3<f32> = vec3<f32>(x_3138.x, x_3138.z, x_3138.w);
            let x_3140 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3139.x, x_3140.y, x_3139.y, x_3139.z);
            let x_3142 : vec4<f32> = u_xlat12;
            let x_3145 : vec4<f32> = x_333.x_AdditionalShadowmapSize;
            let x_3148 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3142.x, x_3142.y, x_3142.x, x_3142.y) * vec4<f32>(x_3145.x, x_3145.y, x_3145.x, x_3145.y)) + vec4<f32>(x_3148.x, x_3148.y, x_3148.z, x_3148.y));
            let x_3152 : vec4<f32> = u_xlat12;
            let x_3155 : vec4<f32> = x_333.x_AdditionalShadowmapSize;
            let x_3158 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3152.x, x_3152.y) * vec2<f32>(x_3155.x, x_3155.y)) + vec2<f32>(x_3158.w, x_3158.y));
            let x_3162 : f32 = u_xlat14.x;
            u_xlat15.x = x_3162;
            let x_3164 : vec4<f32> = u_xlat12;
            let x_3167 : vec4<f32> = x_333.x_AdditionalShadowmapSize;
            let x_3170 : vec4<f32> = u_xlat15;
            let x_3172 : vec2<f32> = ((vec2<f32>(x_3164.x, x_3164.y) * vec2<f32>(x_3167.x, x_3167.y)) + vec2<f32>(x_3170.x, x_3170.y));
            let x_3173 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3172.x, x_3172.y, x_3173.z, x_3173.w);
            let x_3176 : vec4<f32> = u_xlat13;
            let x_3178 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3176.x, x_3176.x, x_3176.x, x_3176.x) * x_3178);
            let x_3181 : vec4<f32> = u_xlat13;
            let x_3183 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3181.y, x_3181.y, x_3181.y, x_3181.y) * x_3183);
            let x_3186 : vec4<f32> = u_xlat13;
            let x_3188 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3186.z, x_3186.z, x_3186.z, x_3186.z) * x_3188);
            let x_3190 : vec4<f32> = u_xlat13;
            let x_3192 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3190.w, x_3190.w, x_3190.w, x_3190.w) * x_3192);
            let x_3195 : vec4<f32> = u_xlat18;
            let x_3196 : vec2<f32> = vec2<f32>(x_3195.x, x_3195.y);
            let x_3198 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3196.x, x_3196.y, x_3198);
            let x_3205 : vec3<f32> = txVec43;
            let x_3207 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3205.xy, x_3205.z);
            u_xlat88 = x_3207;
            let x_3209 : vec4<f32> = u_xlat18;
            let x_3210 : vec2<f32> = vec2<f32>(x_3209.z, x_3209.w);
            let x_3212 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3210.x, x_3210.y, x_3212);
            let x_3219 : vec3<f32> = txVec44;
            let x_3221 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3219.xy, x_3219.z);
            u_xlat89 = x_3221;
            let x_3222 : f32 = u_xlat89;
            let x_3224 : f32 = u_xlat23.y;
            u_xlat89 = (x_3222 * x_3224);
            let x_3227 : f32 = u_xlat23.x;
            let x_3228 : f32 = u_xlat88;
            let x_3230 : f32 = u_xlat89;
            u_xlat88 = ((x_3227 * x_3228) + x_3230);
            let x_3233 : vec2<f32> = u_xlat64;
            let x_3235 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3233.x, x_3233.y, x_3235);
            let x_3242 : vec3<f32> = txVec45;
            let x_3244 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3242.xy, x_3242.z);
            u_xlat89 = x_3244;
            let x_3246 : f32 = u_xlat23.z;
            let x_3247 : f32 = u_xlat89;
            let x_3249 : f32 = u_xlat88;
            u_xlat88 = ((x_3246 * x_3247) + x_3249);
            let x_3252 : vec4<f32> = u_xlat21;
            let x_3253 : vec2<f32> = vec2<f32>(x_3252.x, x_3252.y);
            let x_3255 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3253.x, x_3253.y, x_3255);
            let x_3262 : vec3<f32> = txVec46;
            let x_3264 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3262.xy, x_3262.z);
            u_xlat89 = x_3264;
            let x_3266 : f32 = u_xlat23.w;
            let x_3267 : f32 = u_xlat89;
            let x_3269 : f32 = u_xlat88;
            u_xlat88 = ((x_3266 * x_3267) + x_3269);
            let x_3272 : vec4<f32> = u_xlat19;
            let x_3273 : vec2<f32> = vec2<f32>(x_3272.x, x_3272.y);
            let x_3275 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3273.x, x_3273.y, x_3275);
            let x_3282 : vec3<f32> = txVec47;
            let x_3284 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3282.xy, x_3282.z);
            u_xlat89 = x_3284;
            let x_3286 : f32 = u_xlat24.x;
            let x_3287 : f32 = u_xlat89;
            let x_3289 : f32 = u_xlat88;
            u_xlat88 = ((x_3286 * x_3287) + x_3289);
            let x_3292 : vec4<f32> = u_xlat19;
            let x_3293 : vec2<f32> = vec2<f32>(x_3292.z, x_3292.w);
            let x_3295 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3293.x, x_3293.y, x_3295);
            let x_3302 : vec3<f32> = txVec48;
            let x_3304 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3302.xy, x_3302.z);
            u_xlat89 = x_3304;
            let x_3306 : f32 = u_xlat24.y;
            let x_3307 : f32 = u_xlat89;
            let x_3309 : f32 = u_xlat88;
            u_xlat88 = ((x_3306 * x_3307) + x_3309);
            let x_3312 : vec4<f32> = u_xlat20;
            let x_3313 : vec2<f32> = vec2<f32>(x_3312.x, x_3312.y);
            let x_3315 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3313.x, x_3313.y, x_3315);
            let x_3322 : vec3<f32> = txVec49;
            let x_3324 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3322.xy, x_3322.z);
            u_xlat89 = x_3324;
            let x_3326 : f32 = u_xlat24.z;
            let x_3327 : f32 = u_xlat89;
            let x_3329 : f32 = u_xlat88;
            u_xlat88 = ((x_3326 * x_3327) + x_3329);
            let x_3332 : vec4<f32> = u_xlat21;
            let x_3333 : vec2<f32> = vec2<f32>(x_3332.z, x_3332.w);
            let x_3335 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3333.x, x_3333.y, x_3335);
            let x_3342 : vec3<f32> = txVec50;
            let x_3344 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3342.xy, x_3342.z);
            u_xlat89 = x_3344;
            let x_3346 : f32 = u_xlat24.w;
            let x_3347 : f32 = u_xlat89;
            let x_3349 : f32 = u_xlat88;
            u_xlat88 = ((x_3346 * x_3347) + x_3349);
            let x_3352 : vec4<f32> = u_xlat22;
            let x_3353 : vec2<f32> = vec2<f32>(x_3352.x, x_3352.y);
            let x_3355 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3353.x, x_3353.y, x_3355);
            let x_3362 : vec3<f32> = txVec51;
            let x_3364 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3362.xy, x_3362.z);
            u_xlat89 = x_3364;
            let x_3366 : f32 = u_xlat25.x;
            let x_3367 : f32 = u_xlat89;
            let x_3369 : f32 = u_xlat88;
            u_xlat88 = ((x_3366 * x_3367) + x_3369);
            let x_3372 : vec4<f32> = u_xlat22;
            let x_3373 : vec2<f32> = vec2<f32>(x_3372.z, x_3372.w);
            let x_3375 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3373.x, x_3373.y, x_3375);
            let x_3382 : vec3<f32> = txVec52;
            let x_3384 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3382.xy, x_3382.z);
            u_xlat89 = x_3384;
            let x_3386 : f32 = u_xlat25.y;
            let x_3387 : f32 = u_xlat89;
            let x_3389 : f32 = u_xlat88;
            u_xlat88 = ((x_3386 * x_3387) + x_3389);
            let x_3392 : vec2<f32> = u_xlat40;
            let x_3394 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3392.x, x_3392.y, x_3394);
            let x_3401 : vec3<f32> = txVec53;
            let x_3403 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3401.xy, x_3401.z);
            u_xlat89 = x_3403;
            let x_3405 : f32 = u_xlat25.z;
            let x_3406 : f32 = u_xlat89;
            let x_3408 : f32 = u_xlat88;
            u_xlat88 = ((x_3405 * x_3406) + x_3408);
            let x_3411 : vec2<f32> = u_xlat72;
            let x_3413 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3411.x, x_3411.y, x_3413);
            let x_3420 : vec3<f32> = txVec54;
            let x_3422 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3420.xy, x_3420.z);
            u_xlat89 = x_3422;
            let x_3424 : f32 = u_xlat25.w;
            let x_3425 : f32 = u_xlat89;
            let x_3427 : f32 = u_xlat88;
            u_xlat88 = ((x_3424 * x_3425) + x_3427);
            let x_3430 : vec4<f32> = u_xlat17;
            let x_3431 : vec2<f32> = vec2<f32>(x_3430.x, x_3430.y);
            let x_3433 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3431.x, x_3431.y, x_3433);
            let x_3440 : vec3<f32> = txVec55;
            let x_3442 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3440.xy, x_3440.z);
            u_xlat89 = x_3442;
            let x_3444 : f32 = u_xlat13.x;
            let x_3445 : f32 = u_xlat89;
            let x_3447 : f32 = u_xlat88;
            u_xlat88 = ((x_3444 * x_3445) + x_3447);
            let x_3450 : vec4<f32> = u_xlat17;
            let x_3451 : vec2<f32> = vec2<f32>(x_3450.z, x_3450.w);
            let x_3453 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3451.x, x_3451.y, x_3453);
            let x_3460 : vec3<f32> = txVec56;
            let x_3462 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3460.xy, x_3460.z);
            u_xlat89 = x_3462;
            let x_3464 : f32 = u_xlat13.y;
            let x_3465 : f32 = u_xlat89;
            let x_3467 : f32 = u_xlat88;
            u_xlat88 = ((x_3464 * x_3465) + x_3467);
            let x_3470 : vec2<f32> = u_xlat67;
            let x_3472 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3470.x, x_3470.y, x_3472);
            let x_3479 : vec3<f32> = txVec57;
            let x_3481 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3479.xy, x_3479.z);
            u_xlat89 = x_3481;
            let x_3483 : f32 = u_xlat13.z;
            let x_3484 : f32 = u_xlat89;
            let x_3486 : f32 = u_xlat88;
            u_xlat88 = ((x_3483 * x_3484) + x_3486);
            let x_3489 : vec4<f32> = u_xlat12;
            let x_3490 : vec2<f32> = vec2<f32>(x_3489.x, x_3489.y);
            let x_3492 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3490.x, x_3490.y, x_3492);
            let x_3499 : vec3<f32> = txVec58;
            let x_3501 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3499.xy, x_3499.z);
            u_xlat89 = x_3501;
            let x_3503 : f32 = u_xlat13.w;
            let x_3504 : f32 = u_xlat89;
            let x_3506 : f32 = u_xlat88;
            u_xlat87 = ((x_3503 * x_3504) + x_3506);
          }
        }
      } else {
        let x_3510 : vec4<f32> = u_xlat11;
        let x_3511 : vec2<f32> = vec2<f32>(x_3510.x, x_3510.y);
        let x_3513 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3511.x, x_3511.y, x_3513);
        let x_3520 : vec3<f32> = txVec59;
        let x_3522 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3520.xy, x_3520.z);
        u_xlat87 = x_3522;
      }
      let x_3523 : i32 = u_xlati83;
      let x_3525 : f32 = x_333.x_AdditionalShadowParams[x_3523].x;
      u_xlat88 = (1.0f + -(x_3525));
      let x_3528 : f32 = u_xlat87;
      let x_3529 : i32 = u_xlati83;
      let x_3531 : f32 = x_333.x_AdditionalShadowParams[x_3529].x;
      let x_3533 : f32 = u_xlat88;
      u_xlat87 = ((x_3528 * x_3531) + x_3533);
      let x_3536 : f32 = u_xlat11.z;
      u_xlatb88 = (0.0f >= x_3536);
      let x_3539 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_3539 >= 1.0f);
      let x_3542 : bool = u_xlatb88;
      let x_3544 : bool = u_xlatb11.x;
      u_xlatb88 = (x_3542 | x_3544);
      let x_3546 : bool = u_xlatb88;
      let x_3547 : f32 = u_xlat87;
      u_xlat87 = select(x_3547, 1.0f, x_3546);
    } else {
      u_xlat87 = 1.0f;
    }
    let x_3550 : f32 = u_xlat87;
    u_xlat88 = (-(x_3550) + 1.0f);
    let x_3553 : f32 = u_xlat1;
    let x_3554 : f32 = u_xlat88;
    let x_3556 : f32 = u_xlat87;
    u_xlat87 = ((x_3553 * x_3554) + x_3556);
    let x_3559 : i32 = u_xlati83;
    u_xlati88 = (1i << bitcast<u32>((x_3559 & 31i)));
    let x_3563 : i32 = u_xlati88;
    let x_3566 : f32 = x_1671.x_AdditionalLightsCookieEnableBits;
    u_xlati88 = bitcast<i32>((bitcast<u32>(x_3563) & bitcast<u32>(x_3566)));
    let x_3570 : i32 = u_xlati88;
    if ((x_3570 != 0i)) {
      let x_3574 : i32 = u_xlati83;
      let x_3576 : f32 = x_1671.x_AdditionalLightsLightTypes[x_3574].el;
      u_xlati88 = i32(x_3576);
      let x_3579 : i32 = u_xlati88;
      u_xlati11 = select(1i, 0i, (x_3579 != 0i));
      let x_3583 : i32 = u_xlati83;
      u_xlati37 = (x_3583 << bitcast<u32>(2i));
      let x_3585 : i32 = u_xlati11;
      if ((x_3585 != 0i)) {
        let x_3589 : vec3<f32> = vs_TEXCOORD7;
        let x_3591 : i32 = u_xlati37;
        let x_3594 : i32 = u_xlati37;
        let x_3598 : vec4<f32> = x_1671.x_AdditionalLightsWorldToLights[((x_3591 + 1i) / 4i)][((x_3594 + 1i) % 4i)];
        let x_3600 : vec3<f32> = (vec3<f32>(x_3589.y, x_3589.y, x_3589.y) * vec3<f32>(x_3598.x, x_3598.y, x_3598.w));
        let x_3601 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3600.x, x_3601.y, x_3600.y, x_3600.z);
        let x_3603 : i32 = u_xlati37;
        let x_3605 : i32 = u_xlati37;
        let x_3608 : vec4<f32> = x_1671.x_AdditionalLightsWorldToLights[(x_3603 / 4i)][(x_3605 % 4i)];
        let x_3610 : vec3<f32> = vs_TEXCOORD7;
        let x_3613 : vec4<f32> = u_xlat11;
        let x_3615 : vec3<f32> = ((vec3<f32>(x_3608.x, x_3608.y, x_3608.w) * vec3<f32>(x_3610.x, x_3610.x, x_3610.x)) + vec3<f32>(x_3613.x, x_3613.z, x_3613.w));
        let x_3616 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3615.x, x_3616.y, x_3615.y, x_3615.z);
        let x_3618 : i32 = u_xlati37;
        let x_3621 : i32 = u_xlati37;
        let x_3625 : vec4<f32> = x_1671.x_AdditionalLightsWorldToLights[((x_3618 + 2i) / 4i)][((x_3621 + 2i) % 4i)];
        let x_3627 : vec3<f32> = vs_TEXCOORD7;
        let x_3630 : vec4<f32> = u_xlat11;
        let x_3632 : vec3<f32> = ((vec3<f32>(x_3625.x, x_3625.y, x_3625.w) * vec3<f32>(x_3627.z, x_3627.z, x_3627.z)) + vec3<f32>(x_3630.x, x_3630.z, x_3630.w));
        let x_3633 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3632.x, x_3633.y, x_3632.y, x_3632.z);
        let x_3635 : vec4<f32> = u_xlat11;
        let x_3637 : i32 = u_xlati37;
        let x_3640 : i32 = u_xlati37;
        let x_3644 : vec4<f32> = x_1671.x_AdditionalLightsWorldToLights[((x_3637 + 3i) / 4i)][((x_3640 + 3i) % 4i)];
        let x_3646 : vec3<f32> = (vec3<f32>(x_3635.x, x_3635.z, x_3635.w) + vec3<f32>(x_3644.x, x_3644.y, x_3644.w));
        let x_3647 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3646.x, x_3647.y, x_3646.y, x_3646.z);
        let x_3649 : vec4<f32> = u_xlat11;
        let x_3651 : vec4<f32> = u_xlat11;
        let x_3653 : vec2<f32> = (vec2<f32>(x_3649.x, x_3649.z) / vec2<f32>(x_3651.w, x_3651.w));
        let x_3654 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3653.x, x_3654.y, x_3653.y, x_3654.w);
        let x_3656 : vec4<f32> = u_xlat11;
        let x_3659 : vec2<f32> = ((vec2<f32>(x_3656.x, x_3656.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3660 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3659.x, x_3660.y, x_3659.y, x_3660.w);
        let x_3662 : vec4<f32> = u_xlat11;
        let x_3666 : vec2<f32> = clamp(vec2<f32>(x_3662.x, x_3662.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3667 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3666.x, x_3667.y, x_3666.y, x_3667.w);
        let x_3669 : i32 = u_xlati83;
        let x_3671 : vec4<f32> = x_1671.x_AdditionalLightsCookieAtlasUVRects[x_3669];
        let x_3673 : vec4<f32> = u_xlat11;
        let x_3676 : i32 = u_xlati83;
        let x_3678 : vec4<f32> = x_1671.x_AdditionalLightsCookieAtlasUVRects[x_3676];
        let x_3680 : vec2<f32> = ((vec2<f32>(x_3671.x, x_3671.y) * vec2<f32>(x_3673.x, x_3673.z)) + vec2<f32>(x_3678.z, x_3678.w));
        let x_3681 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3680.x, x_3681.y, x_3680.y, x_3681.w);
      } else {
        let x_3684 : i32 = u_xlati88;
        u_xlatb88 = (x_3684 == 1i);
        let x_3686 : bool = u_xlatb88;
        u_xlati88 = select(0i, 1i, x_3686);
        let x_3688 : i32 = u_xlati88;
        if ((x_3688 != 0i)) {
          let x_3692 : vec3<f32> = vs_TEXCOORD7;
          let x_3694 : i32 = u_xlati37;
          let x_3697 : i32 = u_xlati37;
          let x_3701 : vec4<f32> = x_1671.x_AdditionalLightsWorldToLights[((x_3694 + 1i) / 4i)][((x_3697 + 1i) % 4i)];
          let x_3703 : vec2<f32> = (vec2<f32>(x_3692.y, x_3692.y) * vec2<f32>(x_3701.x, x_3701.y));
          let x_3704 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3703.x, x_3703.y, x_3704.z, x_3704.w);
          let x_3706 : i32 = u_xlati37;
          let x_3708 : i32 = u_xlati37;
          let x_3711 : vec4<f32> = x_1671.x_AdditionalLightsWorldToLights[(x_3706 / 4i)][(x_3708 % 4i)];
          let x_3713 : vec3<f32> = vs_TEXCOORD7;
          let x_3716 : vec4<f32> = u_xlat12;
          let x_3718 : vec2<f32> = ((vec2<f32>(x_3711.x, x_3711.y) * vec2<f32>(x_3713.x, x_3713.x)) + vec2<f32>(x_3716.x, x_3716.y));
          let x_3719 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3718.x, x_3718.y, x_3719.z, x_3719.w);
          let x_3721 : i32 = u_xlati37;
          let x_3724 : i32 = u_xlati37;
          let x_3728 : vec4<f32> = x_1671.x_AdditionalLightsWorldToLights[((x_3721 + 2i) / 4i)][((x_3724 + 2i) % 4i)];
          let x_3730 : vec3<f32> = vs_TEXCOORD7;
          let x_3733 : vec4<f32> = u_xlat12;
          let x_3735 : vec2<f32> = ((vec2<f32>(x_3728.x, x_3728.y) * vec2<f32>(x_3730.z, x_3730.z)) + vec2<f32>(x_3733.x, x_3733.y));
          let x_3736 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3735.x, x_3735.y, x_3736.z, x_3736.w);
          let x_3738 : vec4<f32> = u_xlat12;
          let x_3740 : i32 = u_xlati37;
          let x_3743 : i32 = u_xlati37;
          let x_3747 : vec4<f32> = x_1671.x_AdditionalLightsWorldToLights[((x_3740 + 3i) / 4i)][((x_3743 + 3i) % 4i)];
          let x_3749 : vec2<f32> = (vec2<f32>(x_3738.x, x_3738.y) + vec2<f32>(x_3747.x, x_3747.y));
          let x_3750 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3749.x, x_3749.y, x_3750.z, x_3750.w);
          let x_3752 : vec4<f32> = u_xlat12;
          let x_3755 : vec2<f32> = ((vec2<f32>(x_3752.x, x_3752.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3756 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3755.x, x_3755.y, x_3756.z, x_3756.w);
          let x_3758 : vec4<f32> = u_xlat12;
          let x_3760 : vec2<f32> = fract(vec2<f32>(x_3758.x, x_3758.y));
          let x_3761 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3760.x, x_3760.y, x_3761.z, x_3761.w);
          let x_3763 : i32 = u_xlati83;
          let x_3765 : vec4<f32> = x_1671.x_AdditionalLightsCookieAtlasUVRects[x_3763];
          let x_3767 : vec4<f32> = u_xlat12;
          let x_3770 : i32 = u_xlati83;
          let x_3772 : vec4<f32> = x_1671.x_AdditionalLightsCookieAtlasUVRects[x_3770];
          let x_3774 : vec2<f32> = ((vec2<f32>(x_3765.x, x_3765.y) * vec2<f32>(x_3767.x, x_3767.y)) + vec2<f32>(x_3772.z, x_3772.w));
          let x_3775 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3774.x, x_3775.y, x_3774.y, x_3775.w);
        } else {
          let x_3778 : vec3<f32> = vs_TEXCOORD7;
          let x_3780 : i32 = u_xlati37;
          let x_3783 : i32 = u_xlati37;
          let x_3787 : vec4<f32> = x_1671.x_AdditionalLightsWorldToLights[((x_3780 + 1i) / 4i)][((x_3783 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3778.y, x_3778.y, x_3778.y, x_3778.y) * x_3787);
          let x_3789 : i32 = u_xlati37;
          let x_3791 : i32 = u_xlati37;
          let x_3794 : vec4<f32> = x_1671.x_AdditionalLightsWorldToLights[(x_3789 / 4i)][(x_3791 % 4i)];
          let x_3795 : vec3<f32> = vs_TEXCOORD7;
          let x_3798 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3794 * vec4<f32>(x_3795.x, x_3795.x, x_3795.x, x_3795.x)) + x_3798);
          let x_3800 : i32 = u_xlati37;
          let x_3803 : i32 = u_xlati37;
          let x_3807 : vec4<f32> = x_1671.x_AdditionalLightsWorldToLights[((x_3800 + 2i) / 4i)][((x_3803 + 2i) % 4i)];
          let x_3808 : vec3<f32> = vs_TEXCOORD7;
          let x_3811 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3807 * vec4<f32>(x_3808.z, x_3808.z, x_3808.z, x_3808.z)) + x_3811);
          let x_3813 : vec4<f32> = u_xlat12;
          let x_3814 : i32 = u_xlati37;
          let x_3817 : i32 = u_xlati37;
          let x_3821 : vec4<f32> = x_1671.x_AdditionalLightsWorldToLights[((x_3814 + 3i) / 4i)][((x_3817 + 3i) % 4i)];
          u_xlat12 = (x_3813 + x_3821);
          let x_3823 : vec4<f32> = u_xlat12;
          let x_3825 : vec4<f32> = u_xlat12;
          let x_3827 : vec3<f32> = (vec3<f32>(x_3823.x, x_3823.y, x_3823.z) / vec3<f32>(x_3825.w, x_3825.w, x_3825.w));
          let x_3828 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3827.x, x_3827.y, x_3827.z, x_3828.w);
          let x_3830 : vec4<f32> = u_xlat12;
          let x_3832 : vec4<f32> = u_xlat12;
          u_xlat88 = dot(vec3<f32>(x_3830.x, x_3830.y, x_3830.z), vec3<f32>(x_3832.x, x_3832.y, x_3832.z));
          let x_3835 : f32 = u_xlat88;
          u_xlat88 = inverseSqrt(x_3835);
          let x_3837 : f32 = u_xlat88;
          let x_3839 : vec4<f32> = u_xlat12;
          let x_3841 : vec3<f32> = (vec3<f32>(x_3837, x_3837, x_3837) * vec3<f32>(x_3839.x, x_3839.y, x_3839.z));
          let x_3842 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3841.x, x_3841.y, x_3841.z, x_3842.w);
          let x_3844 : vec4<f32> = u_xlat12;
          u_xlat88 = dot(abs(vec3<f32>(x_3844.x, x_3844.y, x_3844.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3849 : f32 = u_xlat88;
          u_xlat88 = max(x_3849, 0.00000099999999747524f);
          let x_3852 : f32 = u_xlat88;
          u_xlat88 = (1.0f / x_3852);
          let x_3854 : f32 = u_xlat88;
          let x_3856 : vec4<f32> = u_xlat12;
          let x_3858 : vec3<f32> = (vec3<f32>(x_3854, x_3854, x_3854) * vec3<f32>(x_3856.z, x_3856.x, x_3856.y));
          let x_3859 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3858.x, x_3858.y, x_3858.z, x_3859.w);
          let x_3862 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3862);
          let x_3866 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3866, 0.0f, 1.0f);
          let x_3871 : vec4<f32> = u_xlat13;
          let x_3873 : vec4<bool> = (vec4<f32>(x_3871.y, x_3871.y, x_3871.z, x_3871.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_3874 : vec2<bool> = vec2<bool>(x_3873.x, x_3873.z);
          let x_3875 : vec3<bool> = u_xlatb37;
          u_xlatb37 = vec3<bool>(x_3874.x, x_3875.y, x_3874.y);
          let x_3878 : bool = u_xlatb37.x;
          if (x_3878) {
            let x_3883 : f32 = u_xlat13.x;
            x_3879 = x_3883;
          } else {
            let x_3886 : f32 = u_xlat13.x;
            x_3879 = -(x_3886);
          }
          let x_3888 : f32 = x_3879;
          u_xlat37.x = x_3888;
          let x_3891 : bool = u_xlatb37.z;
          if (x_3891) {
            let x_3896 : f32 = u_xlat13.x;
            x_3892 = x_3896;
          } else {
            let x_3899 : f32 = u_xlat13.x;
            x_3892 = -(x_3899);
          }
          let x_3901 : f32 = x_3892;
          u_xlat37.z = x_3901;
          let x_3903 : vec4<f32> = u_xlat12;
          let x_3905 : f32 = u_xlat88;
          let x_3908 : vec3<f32> = u_xlat37;
          let x_3910 : vec2<f32> = ((vec2<f32>(x_3903.x, x_3903.y) * vec2<f32>(x_3905, x_3905)) + vec2<f32>(x_3908.x, x_3908.z));
          let x_3911 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3910.x, x_3911.y, x_3910.y);
          let x_3913 : vec3<f32> = u_xlat37;
          let x_3916 : vec2<f32> = ((vec2<f32>(x_3913.x, x_3913.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3917 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3916.x, x_3917.y, x_3916.y);
          let x_3919 : vec3<f32> = u_xlat37;
          let x_3923 : vec2<f32> = clamp(vec2<f32>(x_3919.x, x_3919.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3924 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3923.x, x_3924.y, x_3923.y);
          let x_3926 : i32 = u_xlati83;
          let x_3928 : vec4<f32> = x_1671.x_AdditionalLightsCookieAtlasUVRects[x_3926];
          let x_3930 : vec3<f32> = u_xlat37;
          let x_3933 : i32 = u_xlati83;
          let x_3935 : vec4<f32> = x_1671.x_AdditionalLightsCookieAtlasUVRects[x_3933];
          let x_3937 : vec2<f32> = ((vec2<f32>(x_3928.x, x_3928.y) * vec2<f32>(x_3930.x, x_3930.z)) + vec2<f32>(x_3935.z, x_3935.w));
          let x_3938 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3937.x, x_3938.y, x_3937.y, x_3938.w);
        }
      }
      let x_3945 : vec4<f32> = u_xlat11;
      let x_3947 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3945.x, x_3945.z), 0.0f);
      u_xlat11 = x_3947;
      let x_3949 : bool = u_xlatb31.y;
      if (x_3949) {
        let x_3954 : f32 = u_xlat11.w;
        x_3950 = x_3954;
      } else {
        let x_3957 : f32 = u_xlat11.x;
        x_3950 = x_3957;
      }
      let x_3958 : f32 = x_3950;
      u_xlat88 = x_3958;
      let x_3960 : bool = u_xlatb31.x;
      if (x_3960) {
        let x_3964 : vec4<f32> = u_xlat11;
        x_3961 = vec3<f32>(x_3964.x, x_3964.y, x_3964.z);
      } else {
        let x_3967 : f32 = u_xlat88;
        x_3961 = vec3<f32>(x_3967, x_3967, x_3967);
      }
      let x_3969 : vec3<f32> = x_3961;
      let x_3970 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3969.x, x_3969.y, x_3969.z, x_3970.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3976 : vec4<f32> = u_xlat11;
    let x_3978 : i32 = u_xlati83;
    let x_3980 : vec4<f32> = x_2110.x_AdditionalLightsColor[x_3978];
    let x_3982 : vec3<f32> = (vec3<f32>(x_3976.x, x_3976.y, x_3976.z) * vec3<f32>(x_3980.x, x_3980.y, x_3980.z));
    let x_3983 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3982.x, x_3982.y, x_3982.z, x_3983.w);
    let x_3985 : f32 = u_xlat84;
    let x_3986 : f32 = u_xlat87;
    u_xlat83 = (x_3985 * x_3986);
    let x_3988 : vec4<f32> = u_xlat2;
    let x_3990 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_3988.x, x_3988.y, x_3988.z), vec3<f32>(x_3990.x, x_3990.y, x_3990.z));
    let x_3993 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3993, 0.0f, 1.0f);
    let x_3995 : f32 = u_xlat83;
    let x_3996 : f32 = u_xlat84;
    u_xlat83 = (x_3995 * x_3996);
    let x_3998 : f32 = u_xlat83;
    let x_4000 : vec4<f32> = u_xlat11;
    let x_4002 : vec3<f32> = (vec3<f32>(x_3998, x_3998, x_3998) * vec3<f32>(x_4000.x, x_4000.y, x_4000.z));
    let x_4003 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4002.x, x_4002.y, x_4002.z, x_4003.w);
    let x_4005 : vec4<f32> = u_xlat9;
    let x_4007 : f32 = u_xlat85;
    let x_4010 : vec3<f32> = u_xlat27;
    let x_4011 : vec3<f32> = ((vec3<f32>(x_4005.x, x_4005.y, x_4005.z) * vec3<f32>(x_4007, x_4007, x_4007)) + x_4010);
    let x_4012 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4011.x, x_4011.y, x_4011.z, x_4012.w);
    let x_4014 : vec4<f32> = u_xlat9;
    let x_4016 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_4014.x, x_4014.y, x_4014.z), vec3<f32>(x_4016.x, x_4016.y, x_4016.z));
    let x_4019 : f32 = u_xlat83;
    u_xlat83 = max(x_4019, 1.17549435e-38f);
    let x_4021 : f32 = u_xlat83;
    u_xlat83 = inverseSqrt(x_4021);
    let x_4023 : f32 = u_xlat83;
    let x_4025 : vec4<f32> = u_xlat9;
    let x_4027 : vec3<f32> = (vec3<f32>(x_4023, x_4023, x_4023) * vec3<f32>(x_4025.x, x_4025.y, x_4025.z));
    let x_4028 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4027.x, x_4027.y, x_4027.z, x_4028.w);
    let x_4030 : vec4<f32> = u_xlat2;
    let x_4032 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_4030.x, x_4030.y, x_4030.z), vec3<f32>(x_4032.x, x_4032.y, x_4032.z));
    let x_4035 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4035, 0.0f, 1.0f);
    let x_4037 : vec4<f32> = u_xlat10;
    let x_4039 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_4037.x, x_4037.y, x_4037.z), vec3<f32>(x_4039.x, x_4039.y, x_4039.z));
    let x_4042 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4042, 0.0f, 1.0f);
    let x_4044 : f32 = u_xlat83;
    let x_4045 : f32 = u_xlat83;
    u_xlat83 = (x_4044 * x_4045);
    let x_4047 : f32 = u_xlat83;
    let x_4049 : f32 = u_xlat8.x;
    u_xlat83 = ((x_4047 * x_4049) + 1.00001001358032226562f);
    let x_4052 : f32 = u_xlat84;
    let x_4053 : f32 = u_xlat84;
    u_xlat84 = (x_4052 * x_4053);
    let x_4055 : f32 = u_xlat83;
    let x_4056 : f32 = u_xlat83;
    u_xlat83 = (x_4055 * x_4056);
    let x_4058 : f32 = u_xlat84;
    u_xlat84 = max(x_4058, 0.10000000149011611938f);
    let x_4060 : f32 = u_xlat83;
    let x_4061 : f32 = u_xlat84;
    u_xlat83 = (x_4060 * x_4061);
    let x_4064 : f32 = u_xlat4.x;
    let x_4065 : f32 = u_xlat83;
    u_xlat83 = (x_4064 * x_4065);
    let x_4068 : f32 = u_xlat5.x;
    let x_4069 : f32 = u_xlat83;
    u_xlat83 = (x_4068 / x_4069);
    let x_4071 : vec4<f32> = u_xlat0;
    let x_4073 : f32 = u_xlat83;
    let x_4076 : vec3<f32> = u_xlat30;
    let x_4077 : vec3<f32> = ((vec3<f32>(x_4071.x, x_4071.y, x_4071.z) * vec3<f32>(x_4073, x_4073, x_4073)) + x_4076);
    let x_4078 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4077.x, x_4077.y, x_4077.z, x_4078.w);
    let x_4080 : vec4<f32> = u_xlat9;
    let x_4082 : vec4<f32> = u_xlat11;
    let x_4085 : vec3<f32> = u_xlat34;
    u_xlat34 = ((vec3<f32>(x_4080.x, x_4080.y, x_4080.z) * vec3<f32>(x_4082.x, x_4082.y, x_4082.z)) + x_4085);

    continuing {
      let x_4087 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4087 + bitcast<u32>(1i));
    }
  }
  let x_4089 : vec4<f32> = u_xlat7;
  let x_4091 : vec4<f32> = u_xlat6;
  let x_4094 : vec3<f32> = u_xlat29;
  let x_4095 : vec3<f32> = ((vec3<f32>(x_4089.x, x_4089.y, x_4089.z) * vec3<f32>(x_4091.x, x_4091.y, x_4091.z)) + x_4094);
  let x_4096 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4095.x, x_4095.y, x_4095.z, x_4096.w);
  let x_4098 : vec3<f32> = u_xlat34;
  let x_4099 : vec4<f32> = u_xlat0;
  let x_4101 : vec3<f32> = (x_4098 + vec3<f32>(x_4099.x, x_4099.y, x_4099.z));
  let x_4102 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4101.x, x_4101.y, x_4101.z, x_4102.w);
  let x_4105 : f32 = u_xlat3.x;
  let x_4107 : f32 = u_xlat3.x;
  u_xlat78 = (x_4105 * -(x_4107));
  let x_4110 : f32 = u_xlat78;
  u_xlat78 = exp2(x_4110);
  let x_4112 : vec4<f32> = u_xlat0;
  let x_4115 : vec4<f32> = x_29.unity_FogColor;
  let x_4118 : vec3<f32> = (vec3<f32>(x_4112.x, x_4112.y, x_4112.z) + -(vec3<f32>(x_4115.x, x_4115.y, x_4115.z)));
  let x_4119 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4118.x, x_4118.y, x_4118.z, x_4119.w);
  let x_4123 : f32 = u_xlat78;
  let x_4125 : vec4<f32> = u_xlat0;
  let x_4129 : vec4<f32> = x_29.unity_FogColor;
  let x_4131 : vec3<f32> = ((vec3<f32>(x_4123, x_4123, x_4123) * vec3<f32>(x_4125.x, x_4125.y, x_4125.z)) + vec3<f32>(x_4129.x, x_4129.y, x_4129.z));
  let x_4132 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4131.x, x_4131.y, x_4131.z, x_4132.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD7_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : vec3<f32>, @location(3) vs_TEXCOORD8_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


