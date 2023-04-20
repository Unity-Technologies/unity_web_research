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

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MetallicTex : sampler;

var<private> u_xlatb15 : bool;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat29 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat15 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat4 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_151 : UnityPerDraw;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

var<private> u_xlat46 : f32;

var<private> u_xlat42 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat19 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_321 : LightShadows;

var<private> u_xlatb19 : bool;

var<private> u_xlatb33 : vec2<bool>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat47 : f32;

@group(1) @binding(4) var<uniform> x_403 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlat43 : f32;

var<private> u_xlatu42 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu19 : u32;

var<private> u_xlati48 : i32;

var<private> u_xlati19 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_869 : AdditionalLights;

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

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb52 : bool;

var<private> u_xlati51 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlat25 : vec3<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu44 : u32;

fn main_1() {
  var x_92 : f32;
  var x_105 : f32;
  var x_118 : f32;
  var txVec0 : vec3<f32>;
  var x_353 : f32;
  var x_475 : f32;
  var x_486 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1003 : f32;
  var x_1013 : f32;
  var txVec1 : vec3<f32>;
  var x_1443 : f32;
  var x_1456 : f32;
  var x_1514 : f32;
  var x_1525 : vec3<f32>;
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
  u_xlat1.x = x_49.x;
  let x_59 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb15 = (x_59 == 0.0f);
  let x_65 : vec3<f32> = vs_TEXCOORD7;
  let x_70 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_71 : vec3<f32> = (-(x_65) + x_70);
  let x_72 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_71.x, x_71.y, x_71.z, x_72.w);
  let x_75 : vec4<f32> = u_xlat2;
  let x_77 : vec4<f32> = u_xlat2;
  u_xlat29 = dot(vec3<f32>(x_75.x, x_75.y, x_75.z), vec3<f32>(x_77.x, x_77.y, x_77.z));
  let x_80 : f32 = u_xlat29;
  u_xlat29 = inverseSqrt(x_80);
  let x_82 : f32 = u_xlat29;
  let x_84 : vec4<f32> = u_xlat2;
  let x_86 : vec3<f32> = (vec3<f32>(x_82, x_82, x_82) * vec3<f32>(x_84.x, x_84.y, x_84.z));
  let x_87 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_86.x, x_86.y, x_86.z, x_87.w);
  let x_90 : bool = u_xlatb15;
  if (x_90) {
    let x_96 : f32 = u_xlat2.x;
    x_92 = x_96;
  } else {
    let x_101 : f32 = x_29.unity_MatrixV[0i].z;
    x_92 = x_101;
  }
  let x_102 : f32 = x_92;
  u_xlat3.x = x_102;
  let x_104 : bool = u_xlatb15;
  if (x_104) {
    let x_110 : f32 = u_xlat2.y;
    x_105 = x_110;
  } else {
    let x_114 : f32 = x_29.unity_MatrixV[1i].z;
    x_105 = x_114;
  }
  let x_115 : f32 = x_105;
  u_xlat3.y = x_115;
  let x_117 : bool = u_xlatb15;
  if (x_117) {
    let x_122 : f32 = u_xlat2.z;
    x_118 = x_122;
  } else {
    let x_126 : f32 = x_29.unity_MatrixV[2i].z;
    x_118 = x_126;
  }
  let x_127 : f32 = x_118;
  u_xlat3.z = x_127;
  let x_131 : vec3<f32> = vs_TEXCOORD3;
  let x_132 : vec3<f32> = vs_TEXCOORD3;
  u_xlat15.x = dot(x_131, x_132);
  let x_136 : f32 = u_xlat15.x;
  u_xlat15.x = inverseSqrt(x_136);
  let x_139 : vec3<f32> = u_xlat15;
  let x_141 : vec3<f32> = vs_TEXCOORD3;
  let x_142 : vec3<f32> = (vec3<f32>(x_139.x, x_139.x, x_139.x) * x_141);
  let x_143 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_142.x, x_142.y, x_142.z, x_143.w);
  u_xlat2.w = 1.0f;
  let x_155 : vec4<f32> = x_151.unity_SHAr;
  let x_156 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_155, x_156);
  let x_161 : vec4<f32> = x_151.unity_SHAg;
  let x_162 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_161, x_162);
  let x_167 : vec4<f32> = x_151.unity_SHAb;
  let x_168 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_167, x_168);
  let x_172 : vec4<f32> = u_xlat2;
  let x_174 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_172.y, x_172.z, x_172.z, x_172.x) * vec4<f32>(x_174.x, x_174.y, x_174.z, x_174.z));
  let x_180 : vec4<f32> = x_151.unity_SHBr;
  let x_181 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_180, x_181);
  let x_186 : vec4<f32> = x_151.unity_SHBg;
  let x_187 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_186, x_187);
  let x_192 : vec4<f32> = x_151.unity_SHBb;
  let x_193 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_192, x_193);
  let x_197 : f32 = u_xlat2.y;
  let x_199 : f32 = u_xlat2.y;
  u_xlat15.x = (x_197 * x_199);
  let x_203 : f32 = u_xlat2.x;
  let x_205 : f32 = u_xlat2.x;
  let x_208 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_203 * x_205) + -(x_208));
  let x_214 : vec4<f32> = x_151.unity_SHC;
  let x_216 : vec3<f32> = u_xlat15;
  let x_219 : vec4<f32> = u_xlat6;
  u_xlat15 = ((vec3<f32>(x_214.x, x_214.y, x_214.z) * vec3<f32>(x_216.x, x_216.x, x_216.x)) + vec3<f32>(x_219.x, x_219.y, x_219.z));
  let x_222 : vec3<f32> = u_xlat15;
  let x_223 : vec3<f32> = u_xlat4;
  u_xlat15 = (x_222 + x_223);
  let x_225 : vec3<f32> = u_xlat15;
  u_xlat15 = max(x_225, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_230 : f32 = u_xlat1.x;
  u_xlat44 = ((-(x_230) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_236 : f32 = u_xlat44;
  u_xlat45 = (-(x_236) + 1.0f);
  let x_239 : vec4<f32> = u_xlat0;
  let x_241 : f32 = u_xlat44;
  u_xlat4 = (vec3<f32>(x_239.x, x_239.y, x_239.z) * vec3<f32>(x_241, x_241, x_241));
  let x_244 : vec4<f32> = u_xlat0;
  let x_248 : vec3<f32> = (vec3<f32>(x_244.x, x_244.y, x_244.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_249 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_248.x, x_248.y, x_248.z, x_249.w);
  let x_251 : vec3<f32> = u_xlat1;
  let x_253 : vec4<f32> = u_xlat0;
  let x_258 : vec3<f32> = ((vec3<f32>(x_251.x, x_251.x, x_251.x) * vec3<f32>(x_253.x, x_253.y, x_253.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_259 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_258.x, x_258.y, x_258.z, x_259.w);
  let x_262 : f32 = u_xlat0.w;
  u_xlat1.x = (-(x_262) + 1.0f);
  let x_267 : f32 = u_xlat1.x;
  let x_269 : f32 = u_xlat1.x;
  u_xlat44 = (x_267 * x_269);
  let x_271 : f32 = u_xlat44;
  u_xlat44 = max(x_271, 0.0078125f);
  let x_275 : f32 = u_xlat44;
  let x_276 : f32 = u_xlat44;
  u_xlat46 = (x_275 * x_276);
  let x_280 : f32 = u_xlat0.w;
  let x_281 : f32 = u_xlat45;
  u_xlat42 = (x_280 + x_281);
  let x_283 : f32 = u_xlat42;
  u_xlat42 = clamp(x_283, 0.0f, 1.0f);
  let x_285 : f32 = u_xlat44;
  u_xlat45 = ((x_285 * 4.0f) + 2.0f);
  let x_293 : vec4<f32> = vs_TEXCOORD8;
  let x_294 : vec2<f32> = vec2<f32>(x_293.x, x_293.y);
  let x_297 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_294.x, x_294.y, x_297);
  let x_309 : vec3<f32> = txVec0;
  let x_311 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_309.xy, x_309.z);
  u_xlat5.x = x_311;
  let x_324 : f32 = x_321.x_MainLightShadowParams.x;
  u_xlat19.x = (-(x_324) + 1.0f);
  let x_329 : f32 = u_xlat5.x;
  let x_331 : f32 = x_321.x_MainLightShadowParams.x;
  let x_334 : f32 = u_xlat19.x;
  u_xlat5.x = ((x_329 * x_331) + x_334);
  let x_339 : f32 = vs_TEXCOORD8.z;
  u_xlatb19 = (0.0f >= x_339);
  let x_345 : f32 = vs_TEXCOORD8.z;
  u_xlatb33.x = (x_345 >= 1.0f);
  let x_349 : bool = u_xlatb33.x;
  let x_350 : bool = u_xlatb19;
  u_xlatb19 = (x_349 | x_350);
  let x_352 : bool = u_xlatb19;
  if (x_352) {
    x_353 = 1.0f;
  } else {
    let x_358 : f32 = u_xlat5.x;
    x_353 = x_358;
  }
  let x_359 : f32 = x_353;
  u_xlat5.x = x_359;
  let x_361 : vec3<f32> = vs_TEXCOORD7;
  let x_363 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat19 = (x_361 + -(x_363));
  let x_366 : vec3<f32> = u_xlat19;
  let x_367 : vec3<f32> = u_xlat19;
  u_xlat19.x = dot(x_366, x_367);
  let x_373 : f32 = u_xlat19.x;
  let x_375 : f32 = x_321.x_MainLightShadowParams.z;
  let x_378 : f32 = x_321.x_MainLightShadowParams.w;
  u_xlat33.x = ((x_373 * x_375) + x_378);
  let x_382 : f32 = u_xlat33.x;
  u_xlat33.x = clamp(x_382, 0.0f, 1.0f);
  let x_387 : f32 = u_xlat5.x;
  u_xlat47 = (-(x_387) + 1.0f);
  let x_391 : f32 = u_xlat33.x;
  let x_392 : f32 = u_xlat47;
  let x_395 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_391 * x_392) + x_395);
  let x_405 : f32 = x_403.x_MainLightCookieTextureFormat;
  u_xlatb33.x = !((x_405 == -1.0f));
  let x_410 : bool = u_xlatb33.x;
  if (x_410) {
    let x_413 : vec3<f32> = vs_TEXCOORD7;
    let x_416 : vec4<f32> = x_403.x_MainLightWorldToLight[1i];
    u_xlat33 = (vec2<f32>(x_413.y, x_413.y) * vec2<f32>(x_416.x, x_416.y));
    let x_420 : vec4<f32> = x_403.x_MainLightWorldToLight[0i];
    let x_422 : vec3<f32> = vs_TEXCOORD7;
    let x_425 : vec2<f32> = u_xlat33;
    u_xlat33 = ((vec2<f32>(x_420.x, x_420.y) * vec2<f32>(x_422.x, x_422.x)) + x_425);
    let x_428 : vec4<f32> = x_403.x_MainLightWorldToLight[2i];
    let x_430 : vec3<f32> = vs_TEXCOORD7;
    let x_433 : vec2<f32> = u_xlat33;
    u_xlat33 = ((vec2<f32>(x_428.x, x_428.y) * vec2<f32>(x_430.z, x_430.z)) + x_433);
    let x_435 : vec2<f32> = u_xlat33;
    let x_438 : vec4<f32> = x_403.x_MainLightWorldToLight[3i];
    u_xlat33 = (x_435 + vec2<f32>(x_438.x, x_438.y));
    let x_441 : vec2<f32> = u_xlat33;
    u_xlat33 = ((x_441 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_451 : vec2<f32> = u_xlat33;
    let x_453 : f32 = x_29.x_GlobalMipBias.x;
    let x_454 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_451, x_453);
    u_xlat6 = x_454;
    let x_456 : f32 = x_403.x_MainLightCookieTextureFormat;
    let x_458 : f32 = x_403.x_MainLightCookieTextureFormat;
    let x_460 : f32 = x_403.x_MainLightCookieTextureFormat;
    let x_462 : f32 = x_403.x_MainLightCookieTextureFormat;
    let x_463 : vec4<f32> = vec4<f32>(x_456, x_458, x_460, x_462);
    let x_471 : vec4<bool> = (vec4<f32>(x_463.x, x_463.y, x_463.z, x_463.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb33 = vec2<bool>(x_471.x, x_471.y);
    let x_474 : bool = u_xlatb33.y;
    if (x_474) {
      let x_479 : f32 = u_xlat6.w;
      x_475 = x_479;
    } else {
      let x_482 : f32 = u_xlat6.x;
      x_475 = x_482;
    }
    let x_483 : f32 = x_475;
    u_xlat47 = x_483;
    let x_485 : bool = u_xlatb33.x;
    if (x_485) {
      let x_489 : vec4<f32> = u_xlat6;
      x_486 = vec3<f32>(x_489.x, x_489.y, x_489.z);
    } else {
      let x_492 : f32 = u_xlat47;
      x_486 = vec3<f32>(x_492, x_492, x_492);
    }
    let x_494 : vec3<f32> = x_486;
    let x_495 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_494.x, x_494.y, x_494.z, x_495.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_501 : vec4<f32> = u_xlat6;
  let x_504 : vec4<f32> = x_29.x_MainLightColor;
  let x_506 : vec3<f32> = (vec3<f32>(x_501.x, x_501.y, x_501.z) * vec3<f32>(x_504.x, x_504.y, x_504.z));
  let x_507 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_506.x, x_506.y, x_506.z, x_507.w);
  let x_509 : vec3<f32> = u_xlat3;
  let x_511 : vec4<f32> = u_xlat2;
  u_xlat33.x = dot(-(x_509), vec3<f32>(x_511.x, x_511.y, x_511.z));
  let x_516 : f32 = u_xlat33.x;
  let x_518 : f32 = u_xlat33.x;
  u_xlat33.x = (x_516 + x_518);
  let x_522 : vec4<f32> = u_xlat2;
  let x_524 : vec2<f32> = u_xlat33;
  let x_528 : vec3<f32> = u_xlat3;
  let x_530 : vec3<f32> = ((vec3<f32>(x_522.x, x_522.y, x_522.z) * -(vec3<f32>(x_524.x, x_524.x, x_524.x))) + -(x_528));
  let x_531 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_530.x, x_530.y, x_530.z, x_531.w);
  let x_533 : vec4<f32> = u_xlat2;
  let x_535 : vec3<f32> = u_xlat3;
  u_xlat33.x = dot(vec3<f32>(x_533.x, x_533.y, x_533.z), x_535);
  let x_539 : f32 = u_xlat33.x;
  u_xlat33.x = clamp(x_539, 0.0f, 1.0f);
  let x_543 : f32 = u_xlat33.x;
  u_xlat33.x = (-(x_543) + 1.0f);
  let x_548 : f32 = u_xlat33.x;
  let x_550 : f32 = u_xlat33.x;
  u_xlat33.x = (x_548 * x_550);
  let x_554 : f32 = u_xlat33.x;
  let x_556 : f32 = u_xlat33.x;
  u_xlat33.x = (x_554 * x_556);
  let x_560 : f32 = u_xlat1.x;
  u_xlat47 = ((-(x_560) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_567 : f32 = u_xlat1.x;
  let x_568 : f32 = u_xlat47;
  u_xlat1.x = (x_567 * x_568);
  let x_572 : f32 = u_xlat1.x;
  u_xlat1.x = (x_572 * 6.0f);
  let x_584 : vec4<f32> = u_xlat7;
  let x_587 : f32 = u_xlat1.x;
  let x_588 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_584.x, x_584.y, x_584.z), x_587);
  u_xlat7 = x_588;
  let x_590 : f32 = u_xlat7.w;
  u_xlat1.x = (x_590 + -1.0f);
  let x_594 : f32 = x_151.unity_SpecCube0_HDR.w;
  let x_596 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_594 * x_596) + 1.0f);
  let x_601 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_601, 0.0f);
  let x_605 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_605);
  let x_609 : f32 = u_xlat1.x;
  let x_611 : f32 = x_151.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_609 * x_611);
  let x_615 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_615);
  let x_619 : f32 = u_xlat1.x;
  let x_621 : f32 = x_151.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_619 * x_621);
  let x_624 : vec4<f32> = u_xlat7;
  let x_626 : vec3<f32> = u_xlat1;
  let x_628 : vec3<f32> = (vec3<f32>(x_624.x, x_624.y, x_624.z) * vec3<f32>(x_626.x, x_626.x, x_626.x));
  let x_629 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_628.x, x_628.y, x_628.z, x_629.w);
  let x_632 : f32 = u_xlat44;
  let x_634 : f32 = u_xlat44;
  u_xlat8 = ((vec2<f32>(x_632, x_632) * vec2<f32>(x_634, x_634)) + vec2<f32>(-1.0f, 1.0f));
  let x_640 : f32 = u_xlat8.y;
  u_xlat1.x = (1.0f / x_640);
  let x_644 : vec4<f32> = u_xlat0;
  let x_647 : f32 = u_xlat42;
  u_xlat22 = (-(vec3<f32>(x_644.x, x_644.y, x_644.z)) + vec3<f32>(x_647, x_647, x_647));
  let x_650 : vec2<f32> = u_xlat33;
  let x_652 : vec3<f32> = u_xlat22;
  let x_654 : vec4<f32> = u_xlat0;
  u_xlat22 = ((vec3<f32>(x_650.x, x_650.x, x_650.x) * x_652) + vec3<f32>(x_654.x, x_654.y, x_654.z));
  let x_657 : vec3<f32> = u_xlat1;
  let x_659 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_657.x, x_657.x, x_657.x) * x_659);
  let x_661 : vec4<f32> = u_xlat7;
  let x_663 : vec3<f32> = u_xlat22;
  let x_664 : vec3<f32> = (vec3<f32>(x_661.x, x_661.y, x_661.z) * x_663);
  let x_665 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_664.x, x_664.y, x_664.z, x_665.w);
  let x_667 : vec3<f32> = u_xlat15;
  let x_668 : vec3<f32> = u_xlat4;
  let x_670 : vec4<f32> = u_xlat7;
  u_xlat1 = ((x_667 * x_668) + vec3<f32>(x_670.x, x_670.y, x_670.z));
  let x_674 : f32 = u_xlat5.x;
  let x_676 : f32 = x_151.unity_LightData.z;
  u_xlat42 = (x_674 * x_676);
  let x_679 : vec4<f32> = u_xlat2;
  let x_682 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat43 = dot(vec3<f32>(x_679.x, x_679.y, x_679.z), vec3<f32>(x_682.x, x_682.y, x_682.z));
  let x_685 : f32 = u_xlat43;
  u_xlat43 = clamp(x_685, 0.0f, 1.0f);
  let x_687 : f32 = u_xlat42;
  let x_688 : f32 = u_xlat43;
  u_xlat42 = (x_687 * x_688);
  let x_690 : f32 = u_xlat42;
  let x_692 : vec4<f32> = u_xlat6;
  let x_694 : vec3<f32> = (vec3<f32>(x_690, x_690, x_690) * vec3<f32>(x_692.x, x_692.y, x_692.z));
  let x_695 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_694.x, x_695.y, x_694.y, x_694.z);
  let x_697 : vec3<f32> = u_xlat3;
  let x_699 : vec4<f32> = x_29.x_MainLightPosition;
  let x_701 : vec3<f32> = (x_697 + vec3<f32>(x_699.x, x_699.y, x_699.z));
  let x_702 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_701.x, x_701.y, x_701.z, x_702.w);
  let x_704 : vec4<f32> = u_xlat6;
  let x_706 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(vec3<f32>(x_704.x, x_704.y, x_704.z), vec3<f32>(x_706.x, x_706.y, x_706.z));
  let x_709 : f32 = u_xlat42;
  u_xlat42 = max(x_709, 1.17549435e-38f);
  let x_712 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_712);
  let x_714 : f32 = u_xlat42;
  let x_716 : vec4<f32> = u_xlat6;
  let x_718 : vec3<f32> = (vec3<f32>(x_714, x_714, x_714) * vec3<f32>(x_716.x, x_716.y, x_716.z));
  let x_719 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_718.x, x_718.y, x_718.z, x_719.w);
  let x_721 : vec4<f32> = u_xlat2;
  let x_723 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(vec3<f32>(x_721.x, x_721.y, x_721.z), vec3<f32>(x_723.x, x_723.y, x_723.z));
  let x_726 : f32 = u_xlat42;
  u_xlat42 = clamp(x_726, 0.0f, 1.0f);
  let x_729 : vec4<f32> = x_29.x_MainLightPosition;
  let x_731 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec3<f32>(x_729.x, x_729.y, x_729.z), vec3<f32>(x_731.x, x_731.y, x_731.z));
  let x_734 : f32 = u_xlat43;
  u_xlat43 = clamp(x_734, 0.0f, 1.0f);
  let x_736 : f32 = u_xlat42;
  let x_737 : f32 = u_xlat42;
  u_xlat42 = (x_736 * x_737);
  let x_739 : f32 = u_xlat42;
  let x_741 : f32 = u_xlat8.x;
  u_xlat42 = ((x_739 * x_741) + 1.00001001358032226562f);
  let x_745 : f32 = u_xlat43;
  let x_746 : f32 = u_xlat43;
  u_xlat43 = (x_745 * x_746);
  let x_748 : f32 = u_xlat42;
  let x_749 : f32 = u_xlat42;
  u_xlat42 = (x_748 * x_749);
  let x_751 : f32 = u_xlat43;
  u_xlat43 = max(x_751, 0.10000000149011611938f);
  let x_754 : f32 = u_xlat42;
  let x_755 : f32 = u_xlat43;
  u_xlat42 = (x_754 * x_755);
  let x_757 : f32 = u_xlat45;
  let x_758 : f32 = u_xlat42;
  u_xlat42 = (x_757 * x_758);
  let x_760 : f32 = u_xlat46;
  let x_761 : f32 = u_xlat42;
  u_xlat42 = (x_760 / x_761);
  let x_763 : vec4<f32> = u_xlat0;
  let x_765 : f32 = u_xlat42;
  let x_768 : vec3<f32> = u_xlat4;
  let x_769 : vec3<f32> = ((vec3<f32>(x_763.x, x_763.y, x_763.z) * vec3<f32>(x_765, x_765, x_765)) + x_768);
  let x_770 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_769.x, x_769.y, x_769.z, x_770.w);
  let x_773 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_775 : f32 = x_151.unity_LightData.y;
  u_xlat42 = min(x_773, x_775);
  let x_779 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_779));
  let x_783 : f32 = u_xlat19.x;
  let x_786 : f32 = x_321.x_AdditionalShadowFadeParams.x;
  let x_789 : f32 = x_321.x_AdditionalShadowFadeParams.y;
  u_xlat43 = ((x_783 * x_786) + x_789);
  let x_791 : f32 = u_xlat43;
  u_xlat43 = clamp(x_791, 0.0f, 1.0f);
  let x_795 : f32 = x_403.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_797 : f32 = x_403.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_799 : f32 = x_403.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_801 : f32 = x_403.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_802 : vec4<f32> = vec4<f32>(x_795, x_797, x_799, x_801);
  let x_809 : vec4<bool> = (vec4<f32>(x_802.x, x_802.y, x_802.z, x_802.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_809.x, x_809.y);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_821 : u32 = u_xlatu_loop_1;
    let x_822 : u32 = u_xlatu42;
    if ((x_821 < x_822)) {
    } else {
      break;
    }
    let x_825 : u32 = u_xlatu_loop_1;
    u_xlatu19 = (x_825 >> 2u);
    let x_829 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_829 & 3u));
    let x_832 : u32 = u_xlatu19;
    let x_835 : vec4<f32> = x_151.unity_LightIndices[bitcast<i32>(x_832)];
    let x_845 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_850 : vec4<u32> = indexable[x_845];
    u_xlat19.x = dot(x_835, bitcast<vec4<f32>>(x_850));
    let x_856 : f32 = u_xlat19.x;
    u_xlati19 = i32(x_856);
    let x_859 : vec3<f32> = vs_TEXCOORD7;
    let x_870 : i32 = u_xlati19;
    let x_872 : vec4<f32> = x_869.x_AdditionalLightsPosition[x_870];
    let x_875 : i32 = u_xlati19;
    let x_877 : vec4<f32> = x_869.x_AdditionalLightsPosition[x_875];
    u_xlat9 = ((-(x_859) * vec3<f32>(x_872.w, x_872.w, x_872.w)) + vec3<f32>(x_877.x, x_877.y, x_877.z));
    let x_881 : vec3<f32> = u_xlat9;
    let x_882 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_881, x_882);
    let x_884 : f32 = u_xlat48;
    u_xlat48 = max(x_884, 0.00006103515625f);
    let x_888 : f32 = u_xlat48;
    u_xlat35 = inverseSqrt(x_888);
    let x_891 : f32 = u_xlat35;
    let x_893 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_891, x_891, x_891) * x_893);
    let x_896 : f32 = u_xlat48;
    u_xlat49 = (1.0f / x_896);
    let x_898 : f32 = u_xlat48;
    let x_899 : i32 = u_xlati19;
    let x_901 : f32 = x_869.x_AdditionalLightsAttenuation[x_899].x;
    u_xlat48 = (x_898 * x_901);
    let x_903 : f32 = u_xlat48;
    let x_905 : f32 = u_xlat48;
    u_xlat48 = ((-(x_903) * x_905) + 1.0f);
    let x_908 : f32 = u_xlat48;
    u_xlat48 = max(x_908, 0.0f);
    let x_910 : f32 = u_xlat48;
    let x_911 : f32 = u_xlat48;
    u_xlat48 = (x_910 * x_911);
    let x_913 : f32 = u_xlat48;
    let x_914 : f32 = u_xlat49;
    u_xlat48 = (x_913 * x_914);
    let x_916 : i32 = u_xlati19;
    let x_918 : vec4<f32> = x_869.x_AdditionalLightsSpotDir[x_916];
    let x_920 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_918.x, x_918.y, x_918.z), x_920);
    let x_922 : f32 = u_xlat49;
    let x_923 : i32 = u_xlati19;
    let x_925 : f32 = x_869.x_AdditionalLightsAttenuation[x_923].z;
    let x_927 : i32 = u_xlati19;
    let x_929 : f32 = x_869.x_AdditionalLightsAttenuation[x_927].w;
    u_xlat49 = ((x_922 * x_925) + x_929);
    let x_931 : f32 = u_xlat49;
    u_xlat49 = clamp(x_931, 0.0f, 1.0f);
    let x_933 : f32 = u_xlat49;
    let x_934 : f32 = u_xlat49;
    u_xlat49 = (x_933 * x_934);
    let x_936 : f32 = u_xlat48;
    let x_937 : f32 = u_xlat49;
    u_xlat48 = (x_936 * x_937);
    let x_941 : i32 = u_xlati19;
    let x_943 : f32 = x_321.x_AdditionalShadowParams[x_941].w;
    u_xlati49 = i32(x_943);
    let x_946 : i32 = u_xlati49;
    u_xlatb51 = (x_946 >= 0i);
    let x_948 : bool = u_xlatb51;
    if (x_948) {
      let x_952 : i32 = u_xlati19;
      let x_954 : f32 = x_321.x_AdditionalShadowParams[x_952].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_954, x_954, x_954, x_954))));
      let x_958 : bool = u_xlatb51;
      if (x_958) {
        let x_963 : vec3<f32> = u_xlat10;
        let x_966 : vec3<f32> = u_xlat10;
        let x_969 : vec4<bool> = (abs(vec4<f32>(x_963.z, x_963.z, x_963.y, x_963.z)) >= abs(vec4<f32>(x_966.x, x_966.y, x_966.x, x_966.x)));
        let x_971 : vec3<bool> = vec3<bool>(x_969.x, x_969.y, x_969.z);
        let x_972 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_971.x, x_971.y, x_971.z, x_972.w);
        let x_975 : bool = u_xlatb11.y;
        let x_977 : bool = u_xlatb11.x;
        u_xlatb51 = (x_975 & x_977);
        let x_979 : vec3<f32> = u_xlat10;
        let x_982 : vec4<bool> = (-(vec4<f32>(x_979.z, x_979.y, x_979.z, x_979.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_983 : vec3<bool> = vec3<bool>(x_982.x, x_982.y, x_982.w);
        let x_984 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_983.x, x_983.y, x_984.z, x_983.z);
        let x_988 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_988);
        let x_993 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_993);
        let x_999 : bool = u_xlatb11.w;
        u_xlat52 = select(0.0f, 1.0f, x_999);
        let x_1002 : bool = u_xlatb11.z;
        if (x_1002) {
          let x_1007 : f32 = u_xlat11.y;
          x_1003 = x_1007;
        } else {
          let x_1009 : f32 = u_xlat52;
          x_1003 = x_1009;
        }
        let x_1010 : f32 = x_1003;
        u_xlat52 = x_1010;
        let x_1012 : bool = u_xlatb51;
        if (x_1012) {
          let x_1017 : f32 = u_xlat11.x;
          x_1013 = x_1017;
        } else {
          let x_1019 : f32 = u_xlat52;
          x_1013 = x_1019;
        }
        let x_1020 : f32 = x_1013;
        u_xlat51 = x_1020;
        let x_1021 : i32 = u_xlati19;
        let x_1023 : f32 = x_321.x_AdditionalShadowParams[x_1021].w;
        u_xlat52 = trunc(x_1023);
        let x_1025 : f32 = u_xlat51;
        let x_1026 : f32 = u_xlat52;
        u_xlat51 = (x_1025 + x_1026);
        let x_1028 : f32 = u_xlat51;
        u_xlati49 = i32(x_1028);
      }
      let x_1030 : i32 = u_xlati49;
      u_xlati49 = (x_1030 << bitcast<u32>(2i));
      let x_1032 : vec3<f32> = vs_TEXCOORD7;
      let x_1035 : i32 = u_xlati49;
      let x_1038 : i32 = u_xlati49;
      let x_1042 : vec4<f32> = x_321.x_AdditionalLightsWorldToShadow[((x_1035 + 1i) / 4i)][((x_1038 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1032.y, x_1032.y, x_1032.y, x_1032.y) * x_1042);
      let x_1044 : i32 = u_xlati49;
      let x_1046 : i32 = u_xlati49;
      let x_1049 : vec4<f32> = x_321.x_AdditionalLightsWorldToShadow[(x_1044 / 4i)][(x_1046 % 4i)];
      let x_1050 : vec3<f32> = vs_TEXCOORD7;
      let x_1053 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1049 * vec4<f32>(x_1050.x, x_1050.x, x_1050.x, x_1050.x)) + x_1053);
      let x_1055 : i32 = u_xlati49;
      let x_1058 : i32 = u_xlati49;
      let x_1062 : vec4<f32> = x_321.x_AdditionalLightsWorldToShadow[((x_1055 + 2i) / 4i)][((x_1058 + 2i) % 4i)];
      let x_1063 : vec3<f32> = vs_TEXCOORD7;
      let x_1066 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1062 * vec4<f32>(x_1063.z, x_1063.z, x_1063.z, x_1063.z)) + x_1066);
      let x_1068 : vec4<f32> = u_xlat11;
      let x_1069 : i32 = u_xlati49;
      let x_1072 : i32 = u_xlati49;
      let x_1076 : vec4<f32> = x_321.x_AdditionalLightsWorldToShadow[((x_1069 + 3i) / 4i)][((x_1072 + 3i) % 4i)];
      u_xlat11 = (x_1068 + x_1076);
      let x_1078 : vec4<f32> = u_xlat11;
      let x_1080 : vec4<f32> = u_xlat11;
      let x_1082 : vec3<f32> = (vec3<f32>(x_1078.x, x_1078.y, x_1078.z) / vec3<f32>(x_1080.w, x_1080.w, x_1080.w));
      let x_1083 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1082.x, x_1082.y, x_1082.z, x_1083.w);
      let x_1086 : vec4<f32> = u_xlat11;
      let x_1087 : vec2<f32> = vec2<f32>(x_1086.x, x_1086.y);
      let x_1089 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1087.x, x_1087.y, x_1089);
      let x_1097 : vec3<f32> = txVec1;
      let x_1099 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1097.xy, x_1097.z);
      u_xlat49 = x_1099;
      let x_1100 : i32 = u_xlati19;
      let x_1102 : f32 = x_321.x_AdditionalShadowParams[x_1100].x;
      u_xlat51 = (1.0f + -(x_1102));
      let x_1105 : f32 = u_xlat49;
      let x_1106 : i32 = u_xlati19;
      let x_1108 : f32 = x_321.x_AdditionalShadowParams[x_1106].x;
      let x_1110 : f32 = u_xlat51;
      u_xlat49 = ((x_1105 * x_1108) + x_1110);
      let x_1113 : f32 = u_xlat11.z;
      u_xlatb51 = (0.0f >= x_1113);
      let x_1117 : f32 = u_xlat11.z;
      u_xlatb52 = (x_1117 >= 1.0f);
      let x_1119 : bool = u_xlatb51;
      let x_1120 : bool = u_xlatb52;
      u_xlatb51 = (x_1119 | x_1120);
      let x_1122 : bool = u_xlatb51;
      let x_1123 : f32 = u_xlat49;
      u_xlat49 = select(x_1123, 1.0f, x_1122);
    } else {
      u_xlat49 = 1.0f;
    }
    let x_1126 : f32 = u_xlat49;
    u_xlat51 = (-(x_1126) + 1.0f);
    let x_1129 : f32 = u_xlat43;
    let x_1130 : f32 = u_xlat51;
    let x_1132 : f32 = u_xlat49;
    u_xlat49 = ((x_1129 * x_1130) + x_1132);
    let x_1135 : i32 = u_xlati19;
    u_xlati51 = (1i << bitcast<u32>((x_1135 & 31i)));
    let x_1139 : i32 = u_xlati51;
    let x_1142 : f32 = x_403.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_1139) & bitcast<u32>(x_1142)));
    let x_1146 : i32 = u_xlati51;
    if ((x_1146 != 0i)) {
      let x_1150 : i32 = u_xlati19;
      let x_1152 : f32 = x_403.x_AdditionalLightsLightTypes[x_1150].el;
      u_xlati51 = i32(x_1152);
      let x_1155 : i32 = u_xlati51;
      u_xlati52 = select(1i, 0i, (x_1155 != 0i));
      let x_1159 : i32 = u_xlati19;
      u_xlati11 = (x_1159 << bitcast<u32>(2i));
      let x_1161 : i32 = u_xlati52;
      if ((x_1161 != 0i)) {
        let x_1166 : vec3<f32> = vs_TEXCOORD7;
        let x_1168 : i32 = u_xlati11;
        let x_1171 : i32 = u_xlati11;
        let x_1175 : vec4<f32> = x_403.x_AdditionalLightsWorldToLights[((x_1168 + 1i) / 4i)][((x_1171 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1166.y, x_1166.y, x_1166.y) * vec3<f32>(x_1175.x, x_1175.y, x_1175.w));
        let x_1178 : i32 = u_xlati11;
        let x_1180 : i32 = u_xlati11;
        let x_1183 : vec4<f32> = x_403.x_AdditionalLightsWorldToLights[(x_1178 / 4i)][(x_1180 % 4i)];
        let x_1185 : vec3<f32> = vs_TEXCOORD7;
        let x_1188 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1183.x, x_1183.y, x_1183.w) * vec3<f32>(x_1185.x, x_1185.x, x_1185.x)) + x_1188);
        let x_1190 : i32 = u_xlati11;
        let x_1193 : i32 = u_xlati11;
        let x_1197 : vec4<f32> = x_403.x_AdditionalLightsWorldToLights[((x_1190 + 2i) / 4i)][((x_1193 + 2i) % 4i)];
        let x_1199 : vec3<f32> = vs_TEXCOORD7;
        let x_1202 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1197.x, x_1197.y, x_1197.w) * vec3<f32>(x_1199.z, x_1199.z, x_1199.z)) + x_1202);
        let x_1204 : vec3<f32> = u_xlat25;
        let x_1205 : i32 = u_xlati11;
        let x_1208 : i32 = u_xlati11;
        let x_1212 : vec4<f32> = x_403.x_AdditionalLightsWorldToLights[((x_1205 + 3i) / 4i)][((x_1208 + 3i) % 4i)];
        u_xlat25 = (x_1204 + vec3<f32>(x_1212.x, x_1212.y, x_1212.w));
        let x_1215 : vec3<f32> = u_xlat25;
        let x_1217 : vec3<f32> = u_xlat25;
        let x_1219 : vec2<f32> = (vec2<f32>(x_1215.x, x_1215.y) / vec2<f32>(x_1217.z, x_1217.z));
        let x_1220 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1219.x, x_1219.y, x_1220.z);
        let x_1222 : vec3<f32> = u_xlat25;
        let x_1225 : vec2<f32> = ((vec2<f32>(x_1222.x, x_1222.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1226 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1225.x, x_1225.y, x_1226.z);
        let x_1228 : vec3<f32> = u_xlat25;
        let x_1232 : vec2<f32> = clamp(vec2<f32>(x_1228.x, x_1228.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1233 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1232.x, x_1232.y, x_1233.z);
        let x_1235 : i32 = u_xlati19;
        let x_1237 : vec4<f32> = x_403.x_AdditionalLightsCookieAtlasUVRects[x_1235];
        let x_1239 : vec3<f32> = u_xlat25;
        let x_1242 : i32 = u_xlati19;
        let x_1244 : vec4<f32> = x_403.x_AdditionalLightsCookieAtlasUVRects[x_1242];
        let x_1246 : vec2<f32> = ((vec2<f32>(x_1237.x, x_1237.y) * vec2<f32>(x_1239.x, x_1239.y)) + vec2<f32>(x_1244.z, x_1244.w));
        let x_1247 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1246.x, x_1246.y, x_1247.z);
      } else {
        let x_1250 : i32 = u_xlati51;
        u_xlatb51 = (x_1250 == 1i);
        let x_1252 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_1252);
        let x_1254 : i32 = u_xlati51;
        if ((x_1254 != 0i)) {
          let x_1259 : vec3<f32> = vs_TEXCOORD7;
          let x_1261 : i32 = u_xlati11;
          let x_1264 : i32 = u_xlati11;
          let x_1268 : vec4<f32> = x_403.x_AdditionalLightsWorldToLights[((x_1261 + 1i) / 4i)][((x_1264 + 1i) % 4i)];
          let x_1270 : vec2<f32> = (vec2<f32>(x_1259.y, x_1259.y) * vec2<f32>(x_1268.x, x_1268.y));
          let x_1271 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1270.x, x_1270.y, x_1271.z, x_1271.w);
          let x_1273 : i32 = u_xlati11;
          let x_1275 : i32 = u_xlati11;
          let x_1278 : vec4<f32> = x_403.x_AdditionalLightsWorldToLights[(x_1273 / 4i)][(x_1275 % 4i)];
          let x_1280 : vec3<f32> = vs_TEXCOORD7;
          let x_1283 : vec4<f32> = u_xlat12;
          let x_1285 : vec2<f32> = ((vec2<f32>(x_1278.x, x_1278.y) * vec2<f32>(x_1280.x, x_1280.x)) + vec2<f32>(x_1283.x, x_1283.y));
          let x_1286 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1285.x, x_1285.y, x_1286.z, x_1286.w);
          let x_1288 : i32 = u_xlati11;
          let x_1291 : i32 = u_xlati11;
          let x_1295 : vec4<f32> = x_403.x_AdditionalLightsWorldToLights[((x_1288 + 2i) / 4i)][((x_1291 + 2i) % 4i)];
          let x_1297 : vec3<f32> = vs_TEXCOORD7;
          let x_1300 : vec4<f32> = u_xlat12;
          let x_1302 : vec2<f32> = ((vec2<f32>(x_1295.x, x_1295.y) * vec2<f32>(x_1297.z, x_1297.z)) + vec2<f32>(x_1300.x, x_1300.y));
          let x_1303 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1302.x, x_1302.y, x_1303.z, x_1303.w);
          let x_1305 : vec4<f32> = u_xlat12;
          let x_1307 : i32 = u_xlati11;
          let x_1310 : i32 = u_xlati11;
          let x_1314 : vec4<f32> = x_403.x_AdditionalLightsWorldToLights[((x_1307 + 3i) / 4i)][((x_1310 + 3i) % 4i)];
          let x_1316 : vec2<f32> = (vec2<f32>(x_1305.x, x_1305.y) + vec2<f32>(x_1314.x, x_1314.y));
          let x_1317 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1316.x, x_1316.y, x_1317.z, x_1317.w);
          let x_1319 : vec4<f32> = u_xlat12;
          let x_1322 : vec2<f32> = ((vec2<f32>(x_1319.x, x_1319.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1323 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1322.x, x_1322.y, x_1323.z, x_1323.w);
          let x_1325 : vec4<f32> = u_xlat12;
          let x_1327 : vec2<f32> = fract(vec2<f32>(x_1325.x, x_1325.y));
          let x_1328 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1327.x, x_1327.y, x_1328.z, x_1328.w);
          let x_1330 : i32 = u_xlati19;
          let x_1332 : vec4<f32> = x_403.x_AdditionalLightsCookieAtlasUVRects[x_1330];
          let x_1334 : vec4<f32> = u_xlat12;
          let x_1337 : i32 = u_xlati19;
          let x_1339 : vec4<f32> = x_403.x_AdditionalLightsCookieAtlasUVRects[x_1337];
          let x_1341 : vec2<f32> = ((vec2<f32>(x_1332.x, x_1332.y) * vec2<f32>(x_1334.x, x_1334.y)) + vec2<f32>(x_1339.z, x_1339.w));
          let x_1342 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1341.x, x_1341.y, x_1342.z);
        } else {
          let x_1345 : vec3<f32> = vs_TEXCOORD7;
          let x_1347 : i32 = u_xlati11;
          let x_1350 : i32 = u_xlati11;
          let x_1354 : vec4<f32> = x_403.x_AdditionalLightsWorldToLights[((x_1347 + 1i) / 4i)][((x_1350 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1345.y, x_1345.y, x_1345.y, x_1345.y) * x_1354);
          let x_1356 : i32 = u_xlati11;
          let x_1358 : i32 = u_xlati11;
          let x_1361 : vec4<f32> = x_403.x_AdditionalLightsWorldToLights[(x_1356 / 4i)][(x_1358 % 4i)];
          let x_1362 : vec3<f32> = vs_TEXCOORD7;
          let x_1365 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1361 * vec4<f32>(x_1362.x, x_1362.x, x_1362.x, x_1362.x)) + x_1365);
          let x_1367 : i32 = u_xlati11;
          let x_1370 : i32 = u_xlati11;
          let x_1374 : vec4<f32> = x_403.x_AdditionalLightsWorldToLights[((x_1367 + 2i) / 4i)][((x_1370 + 2i) % 4i)];
          let x_1375 : vec3<f32> = vs_TEXCOORD7;
          let x_1378 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1374 * vec4<f32>(x_1375.z, x_1375.z, x_1375.z, x_1375.z)) + x_1378);
          let x_1380 : vec4<f32> = u_xlat12;
          let x_1381 : i32 = u_xlati11;
          let x_1384 : i32 = u_xlati11;
          let x_1388 : vec4<f32> = x_403.x_AdditionalLightsWorldToLights[((x_1381 + 3i) / 4i)][((x_1384 + 3i) % 4i)];
          u_xlat12 = (x_1380 + x_1388);
          let x_1390 : vec4<f32> = u_xlat12;
          let x_1392 : vec4<f32> = u_xlat12;
          let x_1394 : vec3<f32> = (vec3<f32>(x_1390.x, x_1390.y, x_1390.z) / vec3<f32>(x_1392.w, x_1392.w, x_1392.w));
          let x_1395 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1394.x, x_1394.y, x_1394.z, x_1395.w);
          let x_1397 : vec4<f32> = u_xlat12;
          let x_1399 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(vec3<f32>(x_1397.x, x_1397.y, x_1397.z), vec3<f32>(x_1399.x, x_1399.y, x_1399.z));
          let x_1402 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_1402);
          let x_1404 : f32 = u_xlat51;
          let x_1406 : vec4<f32> = u_xlat12;
          let x_1408 : vec3<f32> = (vec3<f32>(x_1404, x_1404, x_1404) * vec3<f32>(x_1406.x, x_1406.y, x_1406.z));
          let x_1409 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1408.x, x_1408.y, x_1408.z, x_1409.w);
          let x_1411 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(abs(vec3<f32>(x_1411.x, x_1411.y, x_1411.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1416 : f32 = u_xlat51;
          u_xlat51 = max(x_1416, 0.00000099999999747524f);
          let x_1419 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_1419);
          let x_1422 : f32 = u_xlat51;
          let x_1424 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1422, x_1422, x_1422) * vec3<f32>(x_1424.z, x_1424.x, x_1424.y));
          let x_1428 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1428);
          let x_1432 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1432, 0.0f, 1.0f);
          let x_1435 : vec3<f32> = u_xlat13;
          let x_1437 : vec4<bool> = (vec4<f32>(x_1435.y, x_1435.y, x_1435.y, x_1435.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1438 : vec2<bool> = vec2<bool>(x_1437.x, x_1437.w);
          let x_1439 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_1438.x, x_1439.y, x_1439.z, x_1438.y);
          let x_1442 : bool = u_xlatb11.x;
          if (x_1442) {
            let x_1447 : f32 = u_xlat13.x;
            x_1443 = x_1447;
          } else {
            let x_1450 : f32 = u_xlat13.x;
            x_1443 = -(x_1450);
          }
          let x_1452 : f32 = x_1443;
          u_xlat11.x = x_1452;
          let x_1455 : bool = u_xlatb11.w;
          if (x_1455) {
            let x_1460 : f32 = u_xlat13.x;
            x_1456 = x_1460;
          } else {
            let x_1463 : f32 = u_xlat13.x;
            x_1456 = -(x_1463);
          }
          let x_1465 : f32 = x_1456;
          u_xlat11.w = x_1465;
          let x_1467 : vec4<f32> = u_xlat12;
          let x_1469 : f32 = u_xlat51;
          let x_1472 : vec4<f32> = u_xlat11;
          let x_1474 : vec2<f32> = ((vec2<f32>(x_1467.x, x_1467.y) * vec2<f32>(x_1469, x_1469)) + vec2<f32>(x_1472.x, x_1472.w));
          let x_1475 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1474.x, x_1475.y, x_1475.z, x_1474.y);
          let x_1477 : vec4<f32> = u_xlat11;
          let x_1480 : vec2<f32> = ((vec2<f32>(x_1477.x, x_1477.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1481 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1480.x, x_1481.y, x_1481.z, x_1480.y);
          let x_1483 : vec4<f32> = u_xlat11;
          let x_1487 : vec2<f32> = clamp(vec2<f32>(x_1483.x, x_1483.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1488 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1487.x, x_1488.y, x_1488.z, x_1487.y);
          let x_1490 : i32 = u_xlati19;
          let x_1492 : vec4<f32> = x_403.x_AdditionalLightsCookieAtlasUVRects[x_1490];
          let x_1494 : vec4<f32> = u_xlat11;
          let x_1497 : i32 = u_xlati19;
          let x_1499 : vec4<f32> = x_403.x_AdditionalLightsCookieAtlasUVRects[x_1497];
          let x_1501 : vec2<f32> = ((vec2<f32>(x_1492.x, x_1492.y) * vec2<f32>(x_1494.x, x_1494.w)) + vec2<f32>(x_1499.z, x_1499.w));
          let x_1502 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1501.x, x_1501.y, x_1502.z);
        }
      }
      let x_1509 : vec3<f32> = u_xlat25;
      let x_1511 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1509.x, x_1509.y), 0.0f);
      u_xlat11 = x_1511;
      let x_1513 : bool = u_xlatb7.y;
      if (x_1513) {
        let x_1518 : f32 = u_xlat11.w;
        x_1514 = x_1518;
      } else {
        let x_1521 : f32 = u_xlat11.x;
        x_1514 = x_1521;
      }
      let x_1522 : f32 = x_1514;
      u_xlat51 = x_1522;
      let x_1524 : bool = u_xlatb7.x;
      if (x_1524) {
        let x_1528 : vec4<f32> = u_xlat11;
        x_1525 = vec3<f32>(x_1528.x, x_1528.y, x_1528.z);
      } else {
        let x_1531 : f32 = u_xlat51;
        x_1525 = vec3<f32>(x_1531, x_1531, x_1531);
      }
      let x_1533 : vec3<f32> = x_1525;
      let x_1534 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1533.x, x_1533.y, x_1533.z, x_1534.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1540 : vec4<f32> = u_xlat11;
    let x_1542 : i32 = u_xlati19;
    let x_1544 : vec4<f32> = x_869.x_AdditionalLightsColor[x_1542];
    let x_1546 : vec3<f32> = (vec3<f32>(x_1540.x, x_1540.y, x_1540.z) * vec3<f32>(x_1544.x, x_1544.y, x_1544.z));
    let x_1547 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1546.x, x_1546.y, x_1546.z, x_1547.w);
    let x_1549 : f32 = u_xlat48;
    let x_1550 : f32 = u_xlat49;
    u_xlat19.x = (x_1549 * x_1550);
    let x_1553 : vec4<f32> = u_xlat2;
    let x_1555 : vec3<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_1553.x, x_1553.y, x_1553.z), x_1555);
    let x_1557 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1557, 0.0f, 1.0f);
    let x_1560 : f32 = u_xlat19.x;
    let x_1561 : f32 = u_xlat48;
    u_xlat19.x = (x_1560 * x_1561);
    let x_1564 : vec3<f32> = u_xlat19;
    let x_1566 : vec4<f32> = u_xlat11;
    let x_1568 : vec3<f32> = (vec3<f32>(x_1564.x, x_1564.x, x_1564.x) * vec3<f32>(x_1566.x, x_1566.y, x_1566.z));
    let x_1569 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1568.x, x_1568.y, x_1568.z, x_1569.w);
    let x_1571 : vec3<f32> = u_xlat9;
    let x_1572 : f32 = u_xlat35;
    let x_1575 : vec3<f32> = u_xlat3;
    u_xlat9 = ((x_1571 * vec3<f32>(x_1572, x_1572, x_1572)) + x_1575);
    let x_1577 : vec3<f32> = u_xlat9;
    let x_1578 : vec3<f32> = u_xlat9;
    u_xlat19.x = dot(x_1577, x_1578);
    let x_1582 : f32 = u_xlat19.x;
    u_xlat19.x = max(x_1582, 1.17549435e-38f);
    let x_1586 : f32 = u_xlat19.x;
    u_xlat19.x = inverseSqrt(x_1586);
    let x_1589 : vec3<f32> = u_xlat19;
    let x_1591 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1589.x, x_1589.x, x_1589.x) * x_1591);
    let x_1593 : vec4<f32> = u_xlat2;
    let x_1595 : vec3<f32> = u_xlat9;
    u_xlat19.x = dot(vec3<f32>(x_1593.x, x_1593.y, x_1593.z), x_1595);
    let x_1599 : f32 = u_xlat19.x;
    u_xlat19.x = clamp(x_1599, 0.0f, 1.0f);
    let x_1602 : vec3<f32> = u_xlat10;
    let x_1603 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1602, x_1603);
    let x_1605 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1605, 0.0f, 1.0f);
    let x_1608 : f32 = u_xlat19.x;
    let x_1610 : f32 = u_xlat19.x;
    u_xlat19.x = (x_1608 * x_1610);
    let x_1614 : f32 = u_xlat19.x;
    let x_1616 : f32 = u_xlat8.x;
    u_xlat19.x = ((x_1614 * x_1616) + 1.00001001358032226562f);
    let x_1620 : f32 = u_xlat48;
    let x_1621 : f32 = u_xlat48;
    u_xlat48 = (x_1620 * x_1621);
    let x_1624 : f32 = u_xlat19.x;
    let x_1626 : f32 = u_xlat19.x;
    u_xlat19.x = (x_1624 * x_1626);
    let x_1629 : f32 = u_xlat48;
    u_xlat48 = max(x_1629, 0.10000000149011611938f);
    let x_1632 : f32 = u_xlat19.x;
    let x_1633 : f32 = u_xlat48;
    u_xlat19.x = (x_1632 * x_1633);
    let x_1636 : f32 = u_xlat45;
    let x_1638 : f32 = u_xlat19.x;
    u_xlat19.x = (x_1636 * x_1638);
    let x_1641 : f32 = u_xlat46;
    let x_1643 : f32 = u_xlat19.x;
    u_xlat19.x = (x_1641 / x_1643);
    let x_1646 : vec4<f32> = u_xlat0;
    let x_1648 : vec3<f32> = u_xlat19;
    let x_1651 : vec3<f32> = u_xlat4;
    u_xlat9 = ((vec3<f32>(x_1646.x, x_1646.y, x_1646.z) * vec3<f32>(x_1648.x, x_1648.x, x_1648.x)) + x_1651);
    let x_1653 : vec3<f32> = u_xlat9;
    let x_1654 : vec4<f32> = u_xlat11;
    let x_1657 : vec3<f32> = u_xlat22;
    u_xlat22 = ((x_1653 * vec3<f32>(x_1654.x, x_1654.y, x_1654.z)) + x_1657);

    continuing {
      let x_1659 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1659 + bitcast<u32>(1i));
    }
  }
  let x_1661 : vec4<f32> = u_xlat6;
  let x_1663 : vec4<f32> = u_xlat5;
  let x_1666 : vec3<f32> = u_xlat1;
  let x_1667 : vec3<f32> = ((vec3<f32>(x_1661.x, x_1661.y, x_1661.z) * vec3<f32>(x_1663.x, x_1663.z, x_1663.w)) + x_1666);
  let x_1668 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1667.x, x_1667.y, x_1667.z, x_1668.w);
  let x_1672 : vec3<f32> = u_xlat22;
  let x_1673 : vec4<f32> = u_xlat0;
  let x_1675 : vec3<f32> = (x_1672 + vec3<f32>(x_1673.x, x_1673.y, x_1673.z));
  let x_1676 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1675.x, x_1675.y, x_1675.z, x_1676.w);
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


