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
  unity_OrthoParams : vec4<f32>,
  /* @offset(96) */
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

@group(0) @binding(3) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb0 : bool;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MetallicTex : sampler;

var<private> u_xlatb15 : bool;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat29 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat15 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat4 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_175 : UnityPerDraw;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

var<private> u_xlat46 : f32;

var<private> u_xlat42 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat19 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_345 : LightShadows;

var<private> u_xlatb19 : bool;

var<private> u_xlatb33 : vec2<bool>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat47 : f32;

@group(1) @binding(4) var<uniform> x_427 : LightCookies;

@group(0) @binding(6) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlat43 : f32;

var<private> u_xlatu42 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu19 : u32;

var<private> u_xlati48 : i32;

var<private> u_xlati19 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_893 : AdditionalLights;

var<private> u_xlat48 : f32;

var<private> u_xlat35 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat49 : f32;

var<private> u_xlati49 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat52 : f32;

var<private> u_xlat51 : f32;

@group(0) @binding(5) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb52 : bool;

var<private> u_xlati51 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlat25 : vec3<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

@group(0) @binding(7) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu44 : u32;

fn main_1() {
  var x_117 : f32;
  var x_130 : f32;
  var x_142 : f32;
  var txVec0 : vec3<f32>;
  var x_377 : f32;
  var x_499 : f32;
  var x_510 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1027 : f32;
  var x_1037 : f32;
  var txVec1 : vec3<f32>;
  var x_1467 : f32;
  var x_1480 : f32;
  var x_1538 : f32;
  var x_1549 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(x_TerrainHolesTexture, sampler_TerrainHolesTexture, vec2<f32>(x_23.x, x_23.y), x_36);
  u_xlat0.x = x_37.x;
  let x_45 : f32 = u_xlat0.x;
  u_xlatb0 = (x_45 == 0.0f);
  let x_48 : bool = u_xlatb0;
  if (((select(0i, 1i, x_48) * -1i) != 0i)) {
    discard;
  }
  let x_62 : vec4<f32> = vs_TEXCOORD0;
  let x_65 : f32 = x_29.x_GlobalMipBias.x;
  let x_66 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_62.x, x_62.y), x_65);
  u_xlat0 = x_66;
  let x_74 : vec4<f32> = vs_TEXCOORD0;
  let x_77 : f32 = x_29.x_GlobalMipBias.x;
  let x_78 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_74.x, x_74.y), x_77);
  u_xlat1.x = x_78.x;
  let x_85 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb15 = (x_85 == 0.0f);
  let x_90 : vec3<f32> = vs_TEXCOORD7;
  let x_95 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_96 : vec3<f32> = (-(x_90) + x_95);
  let x_97 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_96.x, x_96.y, x_96.z, x_97.w);
  let x_100 : vec4<f32> = u_xlat2;
  let x_102 : vec4<f32> = u_xlat2;
  u_xlat29 = dot(vec3<f32>(x_100.x, x_100.y, x_100.z), vec3<f32>(x_102.x, x_102.y, x_102.z));
  let x_105 : f32 = u_xlat29;
  u_xlat29 = inverseSqrt(x_105);
  let x_107 : f32 = u_xlat29;
  let x_109 : vec4<f32> = u_xlat2;
  let x_111 : vec3<f32> = (vec3<f32>(x_107, x_107, x_107) * vec3<f32>(x_109.x, x_109.y, x_109.z));
  let x_112 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_111.x, x_111.y, x_111.z, x_112.w);
  let x_115 : bool = u_xlatb15;
  if (x_115) {
    let x_121 : f32 = u_xlat2.x;
    x_117 = x_121;
  } else {
    let x_126 : f32 = x_29.unity_MatrixV[0i].z;
    x_117 = x_126;
  }
  let x_127 : f32 = x_117;
  u_xlat3.x = x_127;
  let x_129 : bool = u_xlatb15;
  if (x_129) {
    let x_135 : f32 = u_xlat2.y;
    x_130 = x_135;
  } else {
    let x_138 : f32 = x_29.unity_MatrixV[1i].z;
    x_130 = x_138;
  }
  let x_139 : f32 = x_130;
  u_xlat3.y = x_139;
  let x_141 : bool = u_xlatb15;
  if (x_141) {
    let x_146 : f32 = u_xlat2.z;
    x_142 = x_146;
  } else {
    let x_150 : f32 = x_29.unity_MatrixV[2i].z;
    x_142 = x_150;
  }
  let x_151 : f32 = x_142;
  u_xlat3.z = x_151;
  let x_155 : vec3<f32> = vs_TEXCOORD3;
  let x_156 : vec3<f32> = vs_TEXCOORD3;
  u_xlat15.x = dot(x_155, x_156);
  let x_160 : f32 = u_xlat15.x;
  u_xlat15.x = inverseSqrt(x_160);
  let x_163 : vec3<f32> = u_xlat15;
  let x_165 : vec3<f32> = vs_TEXCOORD3;
  let x_166 : vec3<f32> = (vec3<f32>(x_163.x, x_163.x, x_163.x) * x_165);
  let x_167 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_166.x, x_166.y, x_166.z, x_167.w);
  u_xlat2.w = 1.0f;
  let x_179 : vec4<f32> = x_175.unity_SHAr;
  let x_180 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_179, x_180);
  let x_185 : vec4<f32> = x_175.unity_SHAg;
  let x_186 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_185, x_186);
  let x_191 : vec4<f32> = x_175.unity_SHAb;
  let x_192 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_191, x_192);
  let x_196 : vec4<f32> = u_xlat2;
  let x_198 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_196.y, x_196.z, x_196.z, x_196.x) * vec4<f32>(x_198.x, x_198.y, x_198.z, x_198.z));
  let x_204 : vec4<f32> = x_175.unity_SHBr;
  let x_205 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_204, x_205);
  let x_210 : vec4<f32> = x_175.unity_SHBg;
  let x_211 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_210, x_211);
  let x_216 : vec4<f32> = x_175.unity_SHBb;
  let x_217 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_216, x_217);
  let x_221 : f32 = u_xlat2.y;
  let x_223 : f32 = u_xlat2.y;
  u_xlat15.x = (x_221 * x_223);
  let x_227 : f32 = u_xlat2.x;
  let x_229 : f32 = u_xlat2.x;
  let x_232 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_227 * x_229) + -(x_232));
  let x_238 : vec4<f32> = x_175.unity_SHC;
  let x_240 : vec3<f32> = u_xlat15;
  let x_243 : vec4<f32> = u_xlat6;
  u_xlat15 = ((vec3<f32>(x_238.x, x_238.y, x_238.z) * vec3<f32>(x_240.x, x_240.x, x_240.x)) + vec3<f32>(x_243.x, x_243.y, x_243.z));
  let x_246 : vec3<f32> = u_xlat15;
  let x_247 : vec3<f32> = u_xlat4;
  u_xlat15 = (x_246 + x_247);
  let x_249 : vec3<f32> = u_xlat15;
  u_xlat15 = max(x_249, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_254 : f32 = u_xlat1.x;
  u_xlat44 = ((-(x_254) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_260 : f32 = u_xlat44;
  u_xlat45 = (-(x_260) + 1.0f);
  let x_263 : vec4<f32> = u_xlat0;
  let x_265 : f32 = u_xlat44;
  u_xlat4 = (vec3<f32>(x_263.x, x_263.y, x_263.z) * vec3<f32>(x_265, x_265, x_265));
  let x_268 : vec4<f32> = u_xlat0;
  let x_272 : vec3<f32> = (vec3<f32>(x_268.x, x_268.y, x_268.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_273 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_272.x, x_272.y, x_272.z, x_273.w);
  let x_275 : vec3<f32> = u_xlat1;
  let x_277 : vec4<f32> = u_xlat0;
  let x_282 : vec3<f32> = ((vec3<f32>(x_275.x, x_275.x, x_275.x) * vec3<f32>(x_277.x, x_277.y, x_277.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_283 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_282.x, x_282.y, x_282.z, x_283.w);
  let x_286 : f32 = u_xlat0.w;
  u_xlat1.x = (-(x_286) + 1.0f);
  let x_291 : f32 = u_xlat1.x;
  let x_293 : f32 = u_xlat1.x;
  u_xlat44 = (x_291 * x_293);
  let x_295 : f32 = u_xlat44;
  u_xlat44 = max(x_295, 0.0078125f);
  let x_299 : f32 = u_xlat44;
  let x_300 : f32 = u_xlat44;
  u_xlat46 = (x_299 * x_300);
  let x_304 : f32 = u_xlat0.w;
  let x_305 : f32 = u_xlat45;
  u_xlat42 = (x_304 + x_305);
  let x_307 : f32 = u_xlat42;
  u_xlat42 = clamp(x_307, 0.0f, 1.0f);
  let x_309 : f32 = u_xlat44;
  u_xlat45 = ((x_309 * 4.0f) + 2.0f);
  let x_317 : vec4<f32> = vs_TEXCOORD8;
  let x_318 : vec2<f32> = vec2<f32>(x_317.x, x_317.y);
  let x_321 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_318.x, x_318.y, x_321);
  let x_333 : vec3<f32> = txVec0;
  let x_335 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_333.xy, x_333.z);
  u_xlat5.x = x_335;
  let x_348 : f32 = x_345.x_MainLightShadowParams.x;
  u_xlat19.x = (-(x_348) + 1.0f);
  let x_353 : f32 = u_xlat5.x;
  let x_355 : f32 = x_345.x_MainLightShadowParams.x;
  let x_358 : f32 = u_xlat19.x;
  u_xlat5.x = ((x_353 * x_355) + x_358);
  let x_363 : f32 = vs_TEXCOORD8.z;
  u_xlatb19 = (0.0f >= x_363);
  let x_369 : f32 = vs_TEXCOORD8.z;
  u_xlatb33.x = (x_369 >= 1.0f);
  let x_373 : bool = u_xlatb33.x;
  let x_374 : bool = u_xlatb19;
  u_xlatb19 = (x_373 | x_374);
  let x_376 : bool = u_xlatb19;
  if (x_376) {
    x_377 = 1.0f;
  } else {
    let x_382 : f32 = u_xlat5.x;
    x_377 = x_382;
  }
  let x_383 : f32 = x_377;
  u_xlat5.x = x_383;
  let x_385 : vec3<f32> = vs_TEXCOORD7;
  let x_387 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat19 = (x_385 + -(x_387));
  let x_390 : vec3<f32> = u_xlat19;
  let x_391 : vec3<f32> = u_xlat19;
  u_xlat19.x = dot(x_390, x_391);
  let x_397 : f32 = u_xlat19.x;
  let x_399 : f32 = x_345.x_MainLightShadowParams.z;
  let x_402 : f32 = x_345.x_MainLightShadowParams.w;
  u_xlat33.x = ((x_397 * x_399) + x_402);
  let x_406 : f32 = u_xlat33.x;
  u_xlat33.x = clamp(x_406, 0.0f, 1.0f);
  let x_411 : f32 = u_xlat5.x;
  u_xlat47 = (-(x_411) + 1.0f);
  let x_415 : f32 = u_xlat33.x;
  let x_416 : f32 = u_xlat47;
  let x_419 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_415 * x_416) + x_419);
  let x_429 : f32 = x_427.x_MainLightCookieTextureFormat;
  u_xlatb33.x = !((x_429 == -1.0f));
  let x_434 : bool = u_xlatb33.x;
  if (x_434) {
    let x_437 : vec3<f32> = vs_TEXCOORD7;
    let x_440 : vec4<f32> = x_427.x_MainLightWorldToLight[1i];
    u_xlat33 = (vec2<f32>(x_437.y, x_437.y) * vec2<f32>(x_440.x, x_440.y));
    let x_444 : vec4<f32> = x_427.x_MainLightWorldToLight[0i];
    let x_446 : vec3<f32> = vs_TEXCOORD7;
    let x_449 : vec2<f32> = u_xlat33;
    u_xlat33 = ((vec2<f32>(x_444.x, x_444.y) * vec2<f32>(x_446.x, x_446.x)) + x_449);
    let x_452 : vec4<f32> = x_427.x_MainLightWorldToLight[2i];
    let x_454 : vec3<f32> = vs_TEXCOORD7;
    let x_457 : vec2<f32> = u_xlat33;
    u_xlat33 = ((vec2<f32>(x_452.x, x_452.y) * vec2<f32>(x_454.z, x_454.z)) + x_457);
    let x_459 : vec2<f32> = u_xlat33;
    let x_462 : vec4<f32> = x_427.x_MainLightWorldToLight[3i];
    u_xlat33 = (x_459 + vec2<f32>(x_462.x, x_462.y));
    let x_465 : vec2<f32> = u_xlat33;
    u_xlat33 = ((x_465 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_475 : vec2<f32> = u_xlat33;
    let x_477 : f32 = x_29.x_GlobalMipBias.x;
    let x_478 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_475, x_477);
    u_xlat6 = x_478;
    let x_480 : f32 = x_427.x_MainLightCookieTextureFormat;
    let x_482 : f32 = x_427.x_MainLightCookieTextureFormat;
    let x_484 : f32 = x_427.x_MainLightCookieTextureFormat;
    let x_486 : f32 = x_427.x_MainLightCookieTextureFormat;
    let x_487 : vec4<f32> = vec4<f32>(x_480, x_482, x_484, x_486);
    let x_495 : vec4<bool> = (vec4<f32>(x_487.x, x_487.y, x_487.z, x_487.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb33 = vec2<bool>(x_495.x, x_495.y);
    let x_498 : bool = u_xlatb33.y;
    if (x_498) {
      let x_503 : f32 = u_xlat6.w;
      x_499 = x_503;
    } else {
      let x_506 : f32 = u_xlat6.x;
      x_499 = x_506;
    }
    let x_507 : f32 = x_499;
    u_xlat47 = x_507;
    let x_509 : bool = u_xlatb33.x;
    if (x_509) {
      let x_513 : vec4<f32> = u_xlat6;
      x_510 = vec3<f32>(x_513.x, x_513.y, x_513.z);
    } else {
      let x_516 : f32 = u_xlat47;
      x_510 = vec3<f32>(x_516, x_516, x_516);
    }
    let x_518 : vec3<f32> = x_510;
    let x_519 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_518.x, x_518.y, x_518.z, x_519.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_525 : vec4<f32> = u_xlat6;
  let x_528 : vec4<f32> = x_29.x_MainLightColor;
  let x_530 : vec3<f32> = (vec3<f32>(x_525.x, x_525.y, x_525.z) * vec3<f32>(x_528.x, x_528.y, x_528.z));
  let x_531 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_530.x, x_530.y, x_530.z, x_531.w);
  let x_533 : vec3<f32> = u_xlat3;
  let x_535 : vec4<f32> = u_xlat2;
  u_xlat33.x = dot(-(x_533), vec3<f32>(x_535.x, x_535.y, x_535.z));
  let x_540 : f32 = u_xlat33.x;
  let x_542 : f32 = u_xlat33.x;
  u_xlat33.x = (x_540 + x_542);
  let x_546 : vec4<f32> = u_xlat2;
  let x_548 : vec2<f32> = u_xlat33;
  let x_552 : vec3<f32> = u_xlat3;
  let x_554 : vec3<f32> = ((vec3<f32>(x_546.x, x_546.y, x_546.z) * -(vec3<f32>(x_548.x, x_548.x, x_548.x))) + -(x_552));
  let x_555 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_554.x, x_554.y, x_554.z, x_555.w);
  let x_557 : vec4<f32> = u_xlat2;
  let x_559 : vec3<f32> = u_xlat3;
  u_xlat33.x = dot(vec3<f32>(x_557.x, x_557.y, x_557.z), x_559);
  let x_563 : f32 = u_xlat33.x;
  u_xlat33.x = clamp(x_563, 0.0f, 1.0f);
  let x_567 : f32 = u_xlat33.x;
  u_xlat33.x = (-(x_567) + 1.0f);
  let x_572 : f32 = u_xlat33.x;
  let x_574 : f32 = u_xlat33.x;
  u_xlat33.x = (x_572 * x_574);
  let x_578 : f32 = u_xlat33.x;
  let x_580 : f32 = u_xlat33.x;
  u_xlat33.x = (x_578 * x_580);
  let x_584 : f32 = u_xlat1.x;
  u_xlat47 = ((-(x_584) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_591 : f32 = u_xlat1.x;
  let x_592 : f32 = u_xlat47;
  u_xlat1.x = (x_591 * x_592);
  let x_596 : f32 = u_xlat1.x;
  u_xlat1.x = (x_596 * 6.0f);
  let x_608 : vec4<f32> = u_xlat7;
  let x_611 : f32 = u_xlat1.x;
  let x_612 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_608.x, x_608.y, x_608.z), x_611);
  u_xlat7 = x_612;
  let x_614 : f32 = u_xlat7.w;
  u_xlat1.x = (x_614 + -1.0f);
  let x_618 : f32 = x_175.unity_SpecCube0_HDR.w;
  let x_620 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_618 * x_620) + 1.0f);
  let x_625 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_625, 0.0f);
  let x_629 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_629);
  let x_633 : f32 = u_xlat1.x;
  let x_635 : f32 = x_175.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_633 * x_635);
  let x_639 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_639);
  let x_643 : f32 = u_xlat1.x;
  let x_645 : f32 = x_175.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_643 * x_645);
  let x_648 : vec4<f32> = u_xlat7;
  let x_650 : vec3<f32> = u_xlat1;
  let x_652 : vec3<f32> = (vec3<f32>(x_648.x, x_648.y, x_648.z) * vec3<f32>(x_650.x, x_650.x, x_650.x));
  let x_653 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_652.x, x_652.y, x_652.z, x_653.w);
  let x_656 : f32 = u_xlat44;
  let x_658 : f32 = u_xlat44;
  u_xlat8 = ((vec2<f32>(x_656, x_656) * vec2<f32>(x_658, x_658)) + vec2<f32>(-1.0f, 1.0f));
  let x_664 : f32 = u_xlat8.y;
  u_xlat1.x = (1.0f / x_664);
  let x_668 : vec4<f32> = u_xlat0;
  let x_671 : f32 = u_xlat42;
  u_xlat22 = (-(vec3<f32>(x_668.x, x_668.y, x_668.z)) + vec3<f32>(x_671, x_671, x_671));
  let x_674 : vec2<f32> = u_xlat33;
  let x_676 : vec3<f32> = u_xlat22;
  let x_678 : vec4<f32> = u_xlat0;
  u_xlat22 = ((vec3<f32>(x_674.x, x_674.x, x_674.x) * x_676) + vec3<f32>(x_678.x, x_678.y, x_678.z));
  let x_681 : vec3<f32> = u_xlat1;
  let x_683 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_681.x, x_681.x, x_681.x) * x_683);
  let x_685 : vec4<f32> = u_xlat7;
  let x_687 : vec3<f32> = u_xlat22;
  let x_688 : vec3<f32> = (vec3<f32>(x_685.x, x_685.y, x_685.z) * x_687);
  let x_689 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_688.x, x_688.y, x_688.z, x_689.w);
  let x_691 : vec3<f32> = u_xlat15;
  let x_692 : vec3<f32> = u_xlat4;
  let x_694 : vec4<f32> = u_xlat7;
  u_xlat1 = ((x_691 * x_692) + vec3<f32>(x_694.x, x_694.y, x_694.z));
  let x_698 : f32 = u_xlat5.x;
  let x_700 : f32 = x_175.unity_LightData.z;
  u_xlat42 = (x_698 * x_700);
  let x_703 : vec4<f32> = u_xlat2;
  let x_706 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat43 = dot(vec3<f32>(x_703.x, x_703.y, x_703.z), vec3<f32>(x_706.x, x_706.y, x_706.z));
  let x_709 : f32 = u_xlat43;
  u_xlat43 = clamp(x_709, 0.0f, 1.0f);
  let x_711 : f32 = u_xlat42;
  let x_712 : f32 = u_xlat43;
  u_xlat42 = (x_711 * x_712);
  let x_714 : f32 = u_xlat42;
  let x_716 : vec4<f32> = u_xlat6;
  let x_718 : vec3<f32> = (vec3<f32>(x_714, x_714, x_714) * vec3<f32>(x_716.x, x_716.y, x_716.z));
  let x_719 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_718.x, x_719.y, x_718.y, x_718.z);
  let x_721 : vec3<f32> = u_xlat3;
  let x_723 : vec4<f32> = x_29.x_MainLightPosition;
  let x_725 : vec3<f32> = (x_721 + vec3<f32>(x_723.x, x_723.y, x_723.z));
  let x_726 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
  let x_728 : vec4<f32> = u_xlat6;
  let x_730 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(vec3<f32>(x_728.x, x_728.y, x_728.z), vec3<f32>(x_730.x, x_730.y, x_730.z));
  let x_733 : f32 = u_xlat42;
  u_xlat42 = max(x_733, 1.17549435e-38f);
  let x_736 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_736);
  let x_738 : f32 = u_xlat42;
  let x_740 : vec4<f32> = u_xlat6;
  let x_742 : vec3<f32> = (vec3<f32>(x_738, x_738, x_738) * vec3<f32>(x_740.x, x_740.y, x_740.z));
  let x_743 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_742.x, x_742.y, x_742.z, x_743.w);
  let x_745 : vec4<f32> = u_xlat2;
  let x_747 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(vec3<f32>(x_745.x, x_745.y, x_745.z), vec3<f32>(x_747.x, x_747.y, x_747.z));
  let x_750 : f32 = u_xlat42;
  u_xlat42 = clamp(x_750, 0.0f, 1.0f);
  let x_753 : vec4<f32> = x_29.x_MainLightPosition;
  let x_755 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec3<f32>(x_753.x, x_753.y, x_753.z), vec3<f32>(x_755.x, x_755.y, x_755.z));
  let x_758 : f32 = u_xlat43;
  u_xlat43 = clamp(x_758, 0.0f, 1.0f);
  let x_760 : f32 = u_xlat42;
  let x_761 : f32 = u_xlat42;
  u_xlat42 = (x_760 * x_761);
  let x_763 : f32 = u_xlat42;
  let x_765 : f32 = u_xlat8.x;
  u_xlat42 = ((x_763 * x_765) + 1.00001001358032226562f);
  let x_769 : f32 = u_xlat43;
  let x_770 : f32 = u_xlat43;
  u_xlat43 = (x_769 * x_770);
  let x_772 : f32 = u_xlat42;
  let x_773 : f32 = u_xlat42;
  u_xlat42 = (x_772 * x_773);
  let x_775 : f32 = u_xlat43;
  u_xlat43 = max(x_775, 0.10000000149011611938f);
  let x_778 : f32 = u_xlat42;
  let x_779 : f32 = u_xlat43;
  u_xlat42 = (x_778 * x_779);
  let x_781 : f32 = u_xlat45;
  let x_782 : f32 = u_xlat42;
  u_xlat42 = (x_781 * x_782);
  let x_784 : f32 = u_xlat46;
  let x_785 : f32 = u_xlat42;
  u_xlat42 = (x_784 / x_785);
  let x_787 : vec4<f32> = u_xlat0;
  let x_789 : f32 = u_xlat42;
  let x_792 : vec3<f32> = u_xlat4;
  let x_793 : vec3<f32> = ((vec3<f32>(x_787.x, x_787.y, x_787.z) * vec3<f32>(x_789, x_789, x_789)) + x_792);
  let x_794 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_793.x, x_793.y, x_793.z, x_794.w);
  let x_797 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_799 : f32 = x_175.unity_LightData.y;
  u_xlat42 = min(x_797, x_799);
  let x_803 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_803));
  let x_807 : f32 = u_xlat19.x;
  let x_810 : f32 = x_345.x_AdditionalShadowFadeParams.x;
  let x_813 : f32 = x_345.x_AdditionalShadowFadeParams.y;
  u_xlat43 = ((x_807 * x_810) + x_813);
  let x_815 : f32 = u_xlat43;
  u_xlat43 = clamp(x_815, 0.0f, 1.0f);
  let x_819 : f32 = x_427.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_821 : f32 = x_427.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_823 : f32 = x_427.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_825 : f32 = x_427.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_826 : vec4<f32> = vec4<f32>(x_819, x_821, x_823, x_825);
  let x_833 : vec4<bool> = (vec4<f32>(x_826.x, x_826.y, x_826.z, x_826.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_833.x, x_833.y);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_845 : u32 = u_xlatu_loop_1;
    let x_846 : u32 = u_xlatu42;
    if ((x_845 < x_846)) {
    } else {
      break;
    }
    let x_849 : u32 = u_xlatu_loop_1;
    u_xlatu19 = (x_849 >> 2u);
    let x_853 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_853 & 3u));
    let x_856 : u32 = u_xlatu19;
    let x_859 : vec4<f32> = x_175.unity_LightIndices[bitcast<i32>(x_856)];
    let x_869 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_874 : vec4<u32> = indexable[x_869];
    u_xlat19.x = dot(x_859, bitcast<vec4<f32>>(x_874));
    let x_880 : f32 = u_xlat19.x;
    u_xlati19 = i32(x_880);
    let x_883 : vec3<f32> = vs_TEXCOORD7;
    let x_894 : i32 = u_xlati19;
    let x_896 : vec4<f32> = x_893.x_AdditionalLightsPosition[x_894];
    let x_899 : i32 = u_xlati19;
    let x_901 : vec4<f32> = x_893.x_AdditionalLightsPosition[x_899];
    u_xlat9 = ((-(x_883) * vec3<f32>(x_896.w, x_896.w, x_896.w)) + vec3<f32>(x_901.x, x_901.y, x_901.z));
    let x_905 : vec3<f32> = u_xlat9;
    let x_906 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_905, x_906);
    let x_908 : f32 = u_xlat48;
    u_xlat48 = max(x_908, 0.00006103515625f);
    let x_912 : f32 = u_xlat48;
    u_xlat35 = inverseSqrt(x_912);
    let x_915 : f32 = u_xlat35;
    let x_917 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_915, x_915, x_915) * x_917);
    let x_920 : f32 = u_xlat48;
    u_xlat49 = (1.0f / x_920);
    let x_922 : f32 = u_xlat48;
    let x_923 : i32 = u_xlati19;
    let x_925 : f32 = x_893.x_AdditionalLightsAttenuation[x_923].x;
    u_xlat48 = (x_922 * x_925);
    let x_927 : f32 = u_xlat48;
    let x_929 : f32 = u_xlat48;
    u_xlat48 = ((-(x_927) * x_929) + 1.0f);
    let x_932 : f32 = u_xlat48;
    u_xlat48 = max(x_932, 0.0f);
    let x_934 : f32 = u_xlat48;
    let x_935 : f32 = u_xlat48;
    u_xlat48 = (x_934 * x_935);
    let x_937 : f32 = u_xlat48;
    let x_938 : f32 = u_xlat49;
    u_xlat48 = (x_937 * x_938);
    let x_940 : i32 = u_xlati19;
    let x_942 : vec4<f32> = x_893.x_AdditionalLightsSpotDir[x_940];
    let x_944 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_942.x, x_942.y, x_942.z), x_944);
    let x_946 : f32 = u_xlat49;
    let x_947 : i32 = u_xlati19;
    let x_949 : f32 = x_893.x_AdditionalLightsAttenuation[x_947].z;
    let x_951 : i32 = u_xlati19;
    let x_953 : f32 = x_893.x_AdditionalLightsAttenuation[x_951].w;
    u_xlat49 = ((x_946 * x_949) + x_953);
    let x_955 : f32 = u_xlat49;
    u_xlat49 = clamp(x_955, 0.0f, 1.0f);
    let x_957 : f32 = u_xlat49;
    let x_958 : f32 = u_xlat49;
    u_xlat49 = (x_957 * x_958);
    let x_960 : f32 = u_xlat48;
    let x_961 : f32 = u_xlat49;
    u_xlat48 = (x_960 * x_961);
    let x_965 : i32 = u_xlati19;
    let x_967 : f32 = x_345.x_AdditionalShadowParams[x_965].w;
    u_xlati49 = i32(x_967);
    let x_970 : i32 = u_xlati49;
    u_xlatb51 = (x_970 >= 0i);
    let x_972 : bool = u_xlatb51;
    if (x_972) {
      let x_976 : i32 = u_xlati19;
      let x_978 : f32 = x_345.x_AdditionalShadowParams[x_976].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_978, x_978, x_978, x_978))));
      let x_982 : bool = u_xlatb51;
      if (x_982) {
        let x_987 : vec3<f32> = u_xlat10;
        let x_990 : vec3<f32> = u_xlat10;
        let x_993 : vec4<bool> = (abs(vec4<f32>(x_987.z, x_987.z, x_987.y, x_987.z)) >= abs(vec4<f32>(x_990.x, x_990.y, x_990.x, x_990.x)));
        let x_995 : vec3<bool> = vec3<bool>(x_993.x, x_993.y, x_993.z);
        let x_996 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_995.x, x_995.y, x_995.z, x_996.w);
        let x_999 : bool = u_xlatb11.y;
        let x_1001 : bool = u_xlatb11.x;
        u_xlatb51 = (x_999 & x_1001);
        let x_1003 : vec3<f32> = u_xlat10;
        let x_1006 : vec4<bool> = (-(vec4<f32>(x_1003.z, x_1003.y, x_1003.z, x_1003.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1007 : vec3<bool> = vec3<bool>(x_1006.x, x_1006.y, x_1006.w);
        let x_1008 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1007.x, x_1007.y, x_1008.z, x_1007.z);
        let x_1012 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1012);
        let x_1017 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1017);
        let x_1023 : bool = u_xlatb11.w;
        u_xlat52 = select(0.0f, 1.0f, x_1023);
        let x_1026 : bool = u_xlatb11.z;
        if (x_1026) {
          let x_1031 : f32 = u_xlat11.y;
          x_1027 = x_1031;
        } else {
          let x_1033 : f32 = u_xlat52;
          x_1027 = x_1033;
        }
        let x_1034 : f32 = x_1027;
        u_xlat52 = x_1034;
        let x_1036 : bool = u_xlatb51;
        if (x_1036) {
          let x_1041 : f32 = u_xlat11.x;
          x_1037 = x_1041;
        } else {
          let x_1043 : f32 = u_xlat52;
          x_1037 = x_1043;
        }
        let x_1044 : f32 = x_1037;
        u_xlat51 = x_1044;
        let x_1045 : i32 = u_xlati19;
        let x_1047 : f32 = x_345.x_AdditionalShadowParams[x_1045].w;
        u_xlat52 = trunc(x_1047);
        let x_1049 : f32 = u_xlat51;
        let x_1050 : f32 = u_xlat52;
        u_xlat51 = (x_1049 + x_1050);
        let x_1052 : f32 = u_xlat51;
        u_xlati49 = i32(x_1052);
      }
      let x_1054 : i32 = u_xlati49;
      u_xlati49 = (x_1054 << bitcast<u32>(2i));
      let x_1056 : vec3<f32> = vs_TEXCOORD7;
      let x_1059 : i32 = u_xlati49;
      let x_1062 : i32 = u_xlati49;
      let x_1066 : vec4<f32> = x_345.x_AdditionalLightsWorldToShadow[((x_1059 + 1i) / 4i)][((x_1062 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1056.y, x_1056.y, x_1056.y, x_1056.y) * x_1066);
      let x_1068 : i32 = u_xlati49;
      let x_1070 : i32 = u_xlati49;
      let x_1073 : vec4<f32> = x_345.x_AdditionalLightsWorldToShadow[(x_1068 / 4i)][(x_1070 % 4i)];
      let x_1074 : vec3<f32> = vs_TEXCOORD7;
      let x_1077 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1073 * vec4<f32>(x_1074.x, x_1074.x, x_1074.x, x_1074.x)) + x_1077);
      let x_1079 : i32 = u_xlati49;
      let x_1082 : i32 = u_xlati49;
      let x_1086 : vec4<f32> = x_345.x_AdditionalLightsWorldToShadow[((x_1079 + 2i) / 4i)][((x_1082 + 2i) % 4i)];
      let x_1087 : vec3<f32> = vs_TEXCOORD7;
      let x_1090 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1086 * vec4<f32>(x_1087.z, x_1087.z, x_1087.z, x_1087.z)) + x_1090);
      let x_1092 : vec4<f32> = u_xlat11;
      let x_1093 : i32 = u_xlati49;
      let x_1096 : i32 = u_xlati49;
      let x_1100 : vec4<f32> = x_345.x_AdditionalLightsWorldToShadow[((x_1093 + 3i) / 4i)][((x_1096 + 3i) % 4i)];
      u_xlat11 = (x_1092 + x_1100);
      let x_1102 : vec4<f32> = u_xlat11;
      let x_1104 : vec4<f32> = u_xlat11;
      let x_1106 : vec3<f32> = (vec3<f32>(x_1102.x, x_1102.y, x_1102.z) / vec3<f32>(x_1104.w, x_1104.w, x_1104.w));
      let x_1107 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1106.x, x_1106.y, x_1106.z, x_1107.w);
      let x_1110 : vec4<f32> = u_xlat11;
      let x_1111 : vec2<f32> = vec2<f32>(x_1110.x, x_1110.y);
      let x_1113 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1111.x, x_1111.y, x_1113);
      let x_1121 : vec3<f32> = txVec1;
      let x_1123 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1121.xy, x_1121.z);
      u_xlat49 = x_1123;
      let x_1124 : i32 = u_xlati19;
      let x_1126 : f32 = x_345.x_AdditionalShadowParams[x_1124].x;
      u_xlat51 = (1.0f + -(x_1126));
      let x_1129 : f32 = u_xlat49;
      let x_1130 : i32 = u_xlati19;
      let x_1132 : f32 = x_345.x_AdditionalShadowParams[x_1130].x;
      let x_1134 : f32 = u_xlat51;
      u_xlat49 = ((x_1129 * x_1132) + x_1134);
      let x_1137 : f32 = u_xlat11.z;
      u_xlatb51 = (0.0f >= x_1137);
      let x_1141 : f32 = u_xlat11.z;
      u_xlatb52 = (x_1141 >= 1.0f);
      let x_1143 : bool = u_xlatb51;
      let x_1144 : bool = u_xlatb52;
      u_xlatb51 = (x_1143 | x_1144);
      let x_1146 : bool = u_xlatb51;
      let x_1147 : f32 = u_xlat49;
      u_xlat49 = select(x_1147, 1.0f, x_1146);
    } else {
      u_xlat49 = 1.0f;
    }
    let x_1150 : f32 = u_xlat49;
    u_xlat51 = (-(x_1150) + 1.0f);
    let x_1153 : f32 = u_xlat43;
    let x_1154 : f32 = u_xlat51;
    let x_1156 : f32 = u_xlat49;
    u_xlat49 = ((x_1153 * x_1154) + x_1156);
    let x_1159 : i32 = u_xlati19;
    u_xlati51 = (1i << bitcast<u32>((x_1159 & 31i)));
    let x_1163 : i32 = u_xlati51;
    let x_1166 : f32 = x_427.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_1163) & bitcast<u32>(x_1166)));
    let x_1170 : i32 = u_xlati51;
    if ((x_1170 != 0i)) {
      let x_1174 : i32 = u_xlati19;
      let x_1176 : f32 = x_427.x_AdditionalLightsLightTypes[x_1174].el;
      u_xlati51 = i32(x_1176);
      let x_1179 : i32 = u_xlati51;
      u_xlati52 = select(1i, 0i, (x_1179 != 0i));
      let x_1183 : i32 = u_xlati19;
      u_xlati11 = (x_1183 << bitcast<u32>(2i));
      let x_1185 : i32 = u_xlati52;
      if ((x_1185 != 0i)) {
        let x_1190 : vec3<f32> = vs_TEXCOORD7;
        let x_1192 : i32 = u_xlati11;
        let x_1195 : i32 = u_xlati11;
        let x_1199 : vec4<f32> = x_427.x_AdditionalLightsWorldToLights[((x_1192 + 1i) / 4i)][((x_1195 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1190.y, x_1190.y, x_1190.y) * vec3<f32>(x_1199.x, x_1199.y, x_1199.w));
        let x_1202 : i32 = u_xlati11;
        let x_1204 : i32 = u_xlati11;
        let x_1207 : vec4<f32> = x_427.x_AdditionalLightsWorldToLights[(x_1202 / 4i)][(x_1204 % 4i)];
        let x_1209 : vec3<f32> = vs_TEXCOORD7;
        let x_1212 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1207.x, x_1207.y, x_1207.w) * vec3<f32>(x_1209.x, x_1209.x, x_1209.x)) + x_1212);
        let x_1214 : i32 = u_xlati11;
        let x_1217 : i32 = u_xlati11;
        let x_1221 : vec4<f32> = x_427.x_AdditionalLightsWorldToLights[((x_1214 + 2i) / 4i)][((x_1217 + 2i) % 4i)];
        let x_1223 : vec3<f32> = vs_TEXCOORD7;
        let x_1226 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1221.x, x_1221.y, x_1221.w) * vec3<f32>(x_1223.z, x_1223.z, x_1223.z)) + x_1226);
        let x_1228 : vec3<f32> = u_xlat25;
        let x_1229 : i32 = u_xlati11;
        let x_1232 : i32 = u_xlati11;
        let x_1236 : vec4<f32> = x_427.x_AdditionalLightsWorldToLights[((x_1229 + 3i) / 4i)][((x_1232 + 3i) % 4i)];
        u_xlat25 = (x_1228 + vec3<f32>(x_1236.x, x_1236.y, x_1236.w));
        let x_1239 : vec3<f32> = u_xlat25;
        let x_1241 : vec3<f32> = u_xlat25;
        let x_1243 : vec2<f32> = (vec2<f32>(x_1239.x, x_1239.y) / vec2<f32>(x_1241.z, x_1241.z));
        let x_1244 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1243.x, x_1243.y, x_1244.z);
        let x_1246 : vec3<f32> = u_xlat25;
        let x_1249 : vec2<f32> = ((vec2<f32>(x_1246.x, x_1246.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1250 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1249.x, x_1249.y, x_1250.z);
        let x_1252 : vec3<f32> = u_xlat25;
        let x_1256 : vec2<f32> = clamp(vec2<f32>(x_1252.x, x_1252.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1257 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1256.x, x_1256.y, x_1257.z);
        let x_1259 : i32 = u_xlati19;
        let x_1261 : vec4<f32> = x_427.x_AdditionalLightsCookieAtlasUVRects[x_1259];
        let x_1263 : vec3<f32> = u_xlat25;
        let x_1266 : i32 = u_xlati19;
        let x_1268 : vec4<f32> = x_427.x_AdditionalLightsCookieAtlasUVRects[x_1266];
        let x_1270 : vec2<f32> = ((vec2<f32>(x_1261.x, x_1261.y) * vec2<f32>(x_1263.x, x_1263.y)) + vec2<f32>(x_1268.z, x_1268.w));
        let x_1271 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1270.x, x_1270.y, x_1271.z);
      } else {
        let x_1274 : i32 = u_xlati51;
        u_xlatb51 = (x_1274 == 1i);
        let x_1276 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_1276);
        let x_1278 : i32 = u_xlati51;
        if ((x_1278 != 0i)) {
          let x_1283 : vec3<f32> = vs_TEXCOORD7;
          let x_1285 : i32 = u_xlati11;
          let x_1288 : i32 = u_xlati11;
          let x_1292 : vec4<f32> = x_427.x_AdditionalLightsWorldToLights[((x_1285 + 1i) / 4i)][((x_1288 + 1i) % 4i)];
          let x_1294 : vec2<f32> = (vec2<f32>(x_1283.y, x_1283.y) * vec2<f32>(x_1292.x, x_1292.y));
          let x_1295 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1294.x, x_1294.y, x_1295.z, x_1295.w);
          let x_1297 : i32 = u_xlati11;
          let x_1299 : i32 = u_xlati11;
          let x_1302 : vec4<f32> = x_427.x_AdditionalLightsWorldToLights[(x_1297 / 4i)][(x_1299 % 4i)];
          let x_1304 : vec3<f32> = vs_TEXCOORD7;
          let x_1307 : vec4<f32> = u_xlat12;
          let x_1309 : vec2<f32> = ((vec2<f32>(x_1302.x, x_1302.y) * vec2<f32>(x_1304.x, x_1304.x)) + vec2<f32>(x_1307.x, x_1307.y));
          let x_1310 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1309.x, x_1309.y, x_1310.z, x_1310.w);
          let x_1312 : i32 = u_xlati11;
          let x_1315 : i32 = u_xlati11;
          let x_1319 : vec4<f32> = x_427.x_AdditionalLightsWorldToLights[((x_1312 + 2i) / 4i)][((x_1315 + 2i) % 4i)];
          let x_1321 : vec3<f32> = vs_TEXCOORD7;
          let x_1324 : vec4<f32> = u_xlat12;
          let x_1326 : vec2<f32> = ((vec2<f32>(x_1319.x, x_1319.y) * vec2<f32>(x_1321.z, x_1321.z)) + vec2<f32>(x_1324.x, x_1324.y));
          let x_1327 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1326.x, x_1326.y, x_1327.z, x_1327.w);
          let x_1329 : vec4<f32> = u_xlat12;
          let x_1331 : i32 = u_xlati11;
          let x_1334 : i32 = u_xlati11;
          let x_1338 : vec4<f32> = x_427.x_AdditionalLightsWorldToLights[((x_1331 + 3i) / 4i)][((x_1334 + 3i) % 4i)];
          let x_1340 : vec2<f32> = (vec2<f32>(x_1329.x, x_1329.y) + vec2<f32>(x_1338.x, x_1338.y));
          let x_1341 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1340.x, x_1340.y, x_1341.z, x_1341.w);
          let x_1343 : vec4<f32> = u_xlat12;
          let x_1346 : vec2<f32> = ((vec2<f32>(x_1343.x, x_1343.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1347 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1346.x, x_1346.y, x_1347.z, x_1347.w);
          let x_1349 : vec4<f32> = u_xlat12;
          let x_1351 : vec2<f32> = fract(vec2<f32>(x_1349.x, x_1349.y));
          let x_1352 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1351.x, x_1351.y, x_1352.z, x_1352.w);
          let x_1354 : i32 = u_xlati19;
          let x_1356 : vec4<f32> = x_427.x_AdditionalLightsCookieAtlasUVRects[x_1354];
          let x_1358 : vec4<f32> = u_xlat12;
          let x_1361 : i32 = u_xlati19;
          let x_1363 : vec4<f32> = x_427.x_AdditionalLightsCookieAtlasUVRects[x_1361];
          let x_1365 : vec2<f32> = ((vec2<f32>(x_1356.x, x_1356.y) * vec2<f32>(x_1358.x, x_1358.y)) + vec2<f32>(x_1363.z, x_1363.w));
          let x_1366 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1365.x, x_1365.y, x_1366.z);
        } else {
          let x_1369 : vec3<f32> = vs_TEXCOORD7;
          let x_1371 : i32 = u_xlati11;
          let x_1374 : i32 = u_xlati11;
          let x_1378 : vec4<f32> = x_427.x_AdditionalLightsWorldToLights[((x_1371 + 1i) / 4i)][((x_1374 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1369.y, x_1369.y, x_1369.y, x_1369.y) * x_1378);
          let x_1380 : i32 = u_xlati11;
          let x_1382 : i32 = u_xlati11;
          let x_1385 : vec4<f32> = x_427.x_AdditionalLightsWorldToLights[(x_1380 / 4i)][(x_1382 % 4i)];
          let x_1386 : vec3<f32> = vs_TEXCOORD7;
          let x_1389 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1385 * vec4<f32>(x_1386.x, x_1386.x, x_1386.x, x_1386.x)) + x_1389);
          let x_1391 : i32 = u_xlati11;
          let x_1394 : i32 = u_xlati11;
          let x_1398 : vec4<f32> = x_427.x_AdditionalLightsWorldToLights[((x_1391 + 2i) / 4i)][((x_1394 + 2i) % 4i)];
          let x_1399 : vec3<f32> = vs_TEXCOORD7;
          let x_1402 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1398 * vec4<f32>(x_1399.z, x_1399.z, x_1399.z, x_1399.z)) + x_1402);
          let x_1404 : vec4<f32> = u_xlat12;
          let x_1405 : i32 = u_xlati11;
          let x_1408 : i32 = u_xlati11;
          let x_1412 : vec4<f32> = x_427.x_AdditionalLightsWorldToLights[((x_1405 + 3i) / 4i)][((x_1408 + 3i) % 4i)];
          u_xlat12 = (x_1404 + x_1412);
          let x_1414 : vec4<f32> = u_xlat12;
          let x_1416 : vec4<f32> = u_xlat12;
          let x_1418 : vec3<f32> = (vec3<f32>(x_1414.x, x_1414.y, x_1414.z) / vec3<f32>(x_1416.w, x_1416.w, x_1416.w));
          let x_1419 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1418.x, x_1418.y, x_1418.z, x_1419.w);
          let x_1421 : vec4<f32> = u_xlat12;
          let x_1423 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(vec3<f32>(x_1421.x, x_1421.y, x_1421.z), vec3<f32>(x_1423.x, x_1423.y, x_1423.z));
          let x_1426 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_1426);
          let x_1428 : f32 = u_xlat51;
          let x_1430 : vec4<f32> = u_xlat12;
          let x_1432 : vec3<f32> = (vec3<f32>(x_1428, x_1428, x_1428) * vec3<f32>(x_1430.x, x_1430.y, x_1430.z));
          let x_1433 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1432.x, x_1432.y, x_1432.z, x_1433.w);
          let x_1435 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(abs(vec3<f32>(x_1435.x, x_1435.y, x_1435.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1440 : f32 = u_xlat51;
          u_xlat51 = max(x_1440, 0.00000099999999747524f);
          let x_1443 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_1443);
          let x_1446 : f32 = u_xlat51;
          let x_1448 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1446, x_1446, x_1446) * vec3<f32>(x_1448.z, x_1448.x, x_1448.y));
          let x_1452 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1452);
          let x_1456 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1456, 0.0f, 1.0f);
          let x_1459 : vec3<f32> = u_xlat13;
          let x_1461 : vec4<bool> = (vec4<f32>(x_1459.y, x_1459.y, x_1459.y, x_1459.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1462 : vec2<bool> = vec2<bool>(x_1461.x, x_1461.w);
          let x_1463 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_1462.x, x_1463.y, x_1463.z, x_1462.y);
          let x_1466 : bool = u_xlatb11.x;
          if (x_1466) {
            let x_1471 : f32 = u_xlat13.x;
            x_1467 = x_1471;
          } else {
            let x_1474 : f32 = u_xlat13.x;
            x_1467 = -(x_1474);
          }
          let x_1476 : f32 = x_1467;
          u_xlat11.x = x_1476;
          let x_1479 : bool = u_xlatb11.w;
          if (x_1479) {
            let x_1484 : f32 = u_xlat13.x;
            x_1480 = x_1484;
          } else {
            let x_1487 : f32 = u_xlat13.x;
            x_1480 = -(x_1487);
          }
          let x_1489 : f32 = x_1480;
          u_xlat11.w = x_1489;
          let x_1491 : vec4<f32> = u_xlat12;
          let x_1493 : f32 = u_xlat51;
          let x_1496 : vec4<f32> = u_xlat11;
          let x_1498 : vec2<f32> = ((vec2<f32>(x_1491.x, x_1491.y) * vec2<f32>(x_1493, x_1493)) + vec2<f32>(x_1496.x, x_1496.w));
          let x_1499 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1498.x, x_1499.y, x_1499.z, x_1498.y);
          let x_1501 : vec4<f32> = u_xlat11;
          let x_1504 : vec2<f32> = ((vec2<f32>(x_1501.x, x_1501.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1505 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1504.x, x_1505.y, x_1505.z, x_1504.y);
          let x_1507 : vec4<f32> = u_xlat11;
          let x_1511 : vec2<f32> = clamp(vec2<f32>(x_1507.x, x_1507.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1512 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1511.x, x_1512.y, x_1512.z, x_1511.y);
          let x_1514 : i32 = u_xlati19;
          let x_1516 : vec4<f32> = x_427.x_AdditionalLightsCookieAtlasUVRects[x_1514];
          let x_1518 : vec4<f32> = u_xlat11;
          let x_1521 : i32 = u_xlati19;
          let x_1523 : vec4<f32> = x_427.x_AdditionalLightsCookieAtlasUVRects[x_1521];
          let x_1525 : vec2<f32> = ((vec2<f32>(x_1516.x, x_1516.y) * vec2<f32>(x_1518.x, x_1518.w)) + vec2<f32>(x_1523.z, x_1523.w));
          let x_1526 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1525.x, x_1525.y, x_1526.z);
        }
      }
      let x_1533 : vec3<f32> = u_xlat25;
      let x_1535 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1533.x, x_1533.y), 0.0f);
      u_xlat11 = x_1535;
      let x_1537 : bool = u_xlatb7.y;
      if (x_1537) {
        let x_1542 : f32 = u_xlat11.w;
        x_1538 = x_1542;
      } else {
        let x_1545 : f32 = u_xlat11.x;
        x_1538 = x_1545;
      }
      let x_1546 : f32 = x_1538;
      u_xlat51 = x_1546;
      let x_1548 : bool = u_xlatb7.x;
      if (x_1548) {
        let x_1552 : vec4<f32> = u_xlat11;
        x_1549 = vec3<f32>(x_1552.x, x_1552.y, x_1552.z);
      } else {
        let x_1555 : f32 = u_xlat51;
        x_1549 = vec3<f32>(x_1555, x_1555, x_1555);
      }
      let x_1557 : vec3<f32> = x_1549;
      let x_1558 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1557.x, x_1557.y, x_1557.z, x_1558.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1564 : vec4<f32> = u_xlat11;
    let x_1566 : i32 = u_xlati19;
    let x_1568 : vec4<f32> = x_893.x_AdditionalLightsColor[x_1566];
    let x_1570 : vec3<f32> = (vec3<f32>(x_1564.x, x_1564.y, x_1564.z) * vec3<f32>(x_1568.x, x_1568.y, x_1568.z));
    let x_1571 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1570.x, x_1570.y, x_1570.z, x_1571.w);
    let x_1573 : f32 = u_xlat48;
    let x_1574 : f32 = u_xlat49;
    u_xlat19.x = (x_1573 * x_1574);
    let x_1577 : vec4<f32> = u_xlat2;
    let x_1579 : vec3<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_1577.x, x_1577.y, x_1577.z), x_1579);
    let x_1581 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1581, 0.0f, 1.0f);
    let x_1584 : f32 = u_xlat19.x;
    let x_1585 : f32 = u_xlat48;
    u_xlat19.x = (x_1584 * x_1585);
    let x_1588 : vec3<f32> = u_xlat19;
    let x_1590 : vec4<f32> = u_xlat11;
    let x_1592 : vec3<f32> = (vec3<f32>(x_1588.x, x_1588.x, x_1588.x) * vec3<f32>(x_1590.x, x_1590.y, x_1590.z));
    let x_1593 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1592.x, x_1592.y, x_1592.z, x_1593.w);
    let x_1595 : vec3<f32> = u_xlat9;
    let x_1596 : f32 = u_xlat35;
    let x_1599 : vec3<f32> = u_xlat3;
    u_xlat9 = ((x_1595 * vec3<f32>(x_1596, x_1596, x_1596)) + x_1599);
    let x_1601 : vec3<f32> = u_xlat9;
    let x_1602 : vec3<f32> = u_xlat9;
    u_xlat19.x = dot(x_1601, x_1602);
    let x_1606 : f32 = u_xlat19.x;
    u_xlat19.x = max(x_1606, 1.17549435e-38f);
    let x_1610 : f32 = u_xlat19.x;
    u_xlat19.x = inverseSqrt(x_1610);
    let x_1613 : vec3<f32> = u_xlat19;
    let x_1615 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1613.x, x_1613.x, x_1613.x) * x_1615);
    let x_1617 : vec4<f32> = u_xlat2;
    let x_1619 : vec3<f32> = u_xlat9;
    u_xlat19.x = dot(vec3<f32>(x_1617.x, x_1617.y, x_1617.z), x_1619);
    let x_1623 : f32 = u_xlat19.x;
    u_xlat19.x = clamp(x_1623, 0.0f, 1.0f);
    let x_1626 : vec3<f32> = u_xlat10;
    let x_1627 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1626, x_1627);
    let x_1629 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1629, 0.0f, 1.0f);
    let x_1632 : f32 = u_xlat19.x;
    let x_1634 : f32 = u_xlat19.x;
    u_xlat19.x = (x_1632 * x_1634);
    let x_1638 : f32 = u_xlat19.x;
    let x_1640 : f32 = u_xlat8.x;
    u_xlat19.x = ((x_1638 * x_1640) + 1.00001001358032226562f);
    let x_1644 : f32 = u_xlat48;
    let x_1645 : f32 = u_xlat48;
    u_xlat48 = (x_1644 * x_1645);
    let x_1648 : f32 = u_xlat19.x;
    let x_1650 : f32 = u_xlat19.x;
    u_xlat19.x = (x_1648 * x_1650);
    let x_1653 : f32 = u_xlat48;
    u_xlat48 = max(x_1653, 0.10000000149011611938f);
    let x_1656 : f32 = u_xlat19.x;
    let x_1657 : f32 = u_xlat48;
    u_xlat19.x = (x_1656 * x_1657);
    let x_1660 : f32 = u_xlat45;
    let x_1662 : f32 = u_xlat19.x;
    u_xlat19.x = (x_1660 * x_1662);
    let x_1665 : f32 = u_xlat46;
    let x_1667 : f32 = u_xlat19.x;
    u_xlat19.x = (x_1665 / x_1667);
    let x_1670 : vec4<f32> = u_xlat0;
    let x_1672 : vec3<f32> = u_xlat19;
    let x_1675 : vec3<f32> = u_xlat4;
    u_xlat9 = ((vec3<f32>(x_1670.x, x_1670.y, x_1670.z) * vec3<f32>(x_1672.x, x_1672.x, x_1672.x)) + x_1675);
    let x_1677 : vec3<f32> = u_xlat9;
    let x_1678 : vec4<f32> = u_xlat11;
    let x_1681 : vec3<f32> = u_xlat22;
    u_xlat22 = ((x_1677 * vec3<f32>(x_1678.x, x_1678.y, x_1678.z)) + x_1681);

    continuing {
      let x_1683 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1683 + bitcast<u32>(1i));
    }
  }
  let x_1685 : vec4<f32> = u_xlat6;
  let x_1687 : vec4<f32> = u_xlat5;
  let x_1690 : vec3<f32> = u_xlat1;
  let x_1691 : vec3<f32> = ((vec3<f32>(x_1685.x, x_1685.y, x_1685.z) * vec3<f32>(x_1687.x, x_1687.z, x_1687.w)) + x_1690);
  let x_1692 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1691.x, x_1691.y, x_1691.z, x_1692.w);
  let x_1696 : vec3<f32> = u_xlat22;
  let x_1697 : vec4<f32> = u_xlat0;
  let x_1699 : vec3<f32> = (x_1696 + vec3<f32>(x_1697.x, x_1697.y, x_1697.z));
  let x_1700 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1699.x, x_1699.y, x_1699.z, x_1700.w);
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


