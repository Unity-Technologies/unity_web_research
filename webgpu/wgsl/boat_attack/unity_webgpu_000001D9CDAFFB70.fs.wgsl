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
  /* @offset(76) */
  x_DitheringTextureInvSize : f32,
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

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(5) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_PointRepeat : sampler;

var<private> u_xlatb11 : bool;

@group(1) @binding(2) var<uniform> x_94 : UnityPerDraw;

var<private> u_xlatb1 : bool;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat31 : f32;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat32 : f32;

@group(1) @binding(4) var<uniform> x_258 : LightShadows;

var<private> u_xlatb32 : bool;

var<private> u_xlatb3 : bool;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat13 : f32;

@group(1) @binding(5) var<uniform> x_326 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb4 : vec2<bool>;

var<private> u_xlat33 : f32;

var<private> u_xlatu31 : u32;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlatu24 : u32;

var<private> u_xlati34 : i32;

var<private> u_xlat24 : f32;

var<private> u_xlati24 : i32;

var<private> u_xlat6 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_577 : AdditionalLights;

var<private> u_xlat34 : f32;

var<private> u_xlat35 : f32;

var<private> u_xlati35 : i32;

var<private> u_xlatb36 : bool;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat37 : f32;

var<private> u_xlat17 : vec3<f32>;

var<private> u_xlat36 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlati36 : i32;

var<private> u_xlati7 : i32;

var<private> u_xlati17 : i32;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlatb17 : vec3<bool>;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_LinearClamp : sampler;

var<private> u_xlat10 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb10 : bool;

var<private> u_xlatb24 : bool;

var<private> u_xlatu33 : u32;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_102 : f32;
  var txVec0 : vec3<f32>;
  var x_415 : f32;
  var x_426 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_712 : f32;
  var x_723 : f32;
  var txVec1 : vec3<f32>;
  var x_1169 : f32;
  var x_1182 : f32;
  var x_1240 : f32;
  var x_1251 : vec3<f32>;
  var x_1324 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_41 : vec2<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_41, x_50);
  u_xlat0 = x_51;
  let x_52 : vec4<f32> = u_xlat0;
  let x_60 : vec4<f32> = x_56.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_52.w, x_52.x, x_52.y, x_52.z) * vec4<f32>(x_60.w, x_60.x, x_60.y, x_60.z));
  let x_64 : vec4<f32> = hlslcc_FragCoord;
  let x_68 : f32 = x_44.x_DitheringTextureInvSize;
  let x_70 : vec2<f32> = (vec2<f32>(x_64.x, x_64.y) * vec2<f32>(x_68, x_68));
  let x_71 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_70.x, x_70.y, x_71.z, x_71.w);
  let x_78 : vec4<f32> = u_xlat1;
  let x_81 : f32 = x_44.x_GlobalMipBias.x;
  let x_82 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_78.x, x_78.y), x_81);
  u_xlat1.x = x_82.w;
  let x_97 : f32 = x_94.unity_LODFade.x;
  u_xlatb11 = (x_97 >= 0.0f);
  let x_100 : bool = u_xlatb11;
  if (x_100) {
    let x_106 : f32 = u_xlat1.x;
    x_102 = abs(x_106);
  } else {
    let x_110 : f32 = u_xlat1.x;
    x_102 = -(abs(x_110));
  }
  let x_113 : f32 = x_102;
  u_xlat1.x = x_113;
  let x_116 : f32 = u_xlat1.x;
  let x_119 : f32 = x_94.unity_LODFade.x;
  u_xlat1.x = (-(x_116) + x_119);
  let x_124 : f32 = u_xlat1.x;
  u_xlatb1 = (x_124 < 0.0f);
  let x_126 : bool = u_xlatb1;
  if (((select(0i, 1i, x_126) * -1i) != 0i)) {
    discard;
  }
  let x_136 : vec3<f32> = vs_TEXCOORD2;
  let x_137 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_136, x_137);
  let x_141 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_141);
  let x_144 : vec4<f32> = u_xlat1;
  let x_146 : vec3<f32> = vs_TEXCOORD2;
  let x_147 : vec3<f32> = (vec3<f32>(x_144.x, x_144.x, x_144.x) * x_146);
  let x_148 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_147.x, x_147.y, x_147.z, x_148.w);
  u_xlat1.w = 1.0f;
  let x_155 : vec4<f32> = x_94.unity_SHAr;
  let x_156 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_155, x_156);
  let x_161 : vec4<f32> = x_94.unity_SHAg;
  let x_162 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_161, x_162);
  let x_168 : vec4<f32> = x_94.unity_SHAb;
  let x_169 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_168, x_169);
  let x_173 : vec4<f32> = u_xlat1;
  let x_175 : vec4<f32> = u_xlat1;
  u_xlat3 = (vec4<f32>(x_173.y, x_173.z, x_173.z, x_173.x) * vec4<f32>(x_175.x, x_175.y, x_175.z, x_175.z));
  let x_181 : vec4<f32> = x_94.unity_SHBr;
  let x_182 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_181, x_182);
  let x_187 : vec4<f32> = x_94.unity_SHBg;
  let x_188 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_187, x_188);
  let x_193 : vec4<f32> = x_94.unity_SHBb;
  let x_194 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_193, x_194);
  let x_199 : f32 = u_xlat1.y;
  let x_201 : f32 = u_xlat1.y;
  u_xlat31 = (x_199 * x_201);
  let x_204 : f32 = u_xlat1.x;
  let x_206 : f32 = u_xlat1.x;
  let x_208 : f32 = u_xlat31;
  u_xlat31 = ((x_204 * x_206) + -(x_208));
  let x_213 : vec4<f32> = x_94.unity_SHC;
  let x_215 : f32 = u_xlat31;
  let x_218 : vec3<f32> = u_xlat4;
  let x_219 : vec3<f32> = ((vec3<f32>(x_213.x, x_213.y, x_213.z) * vec3<f32>(x_215, x_215, x_215)) + x_218);
  let x_220 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_219.x, x_219.y, x_219.z, x_220.w);
  let x_222 : vec3<f32> = u_xlat2;
  let x_223 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_222 + vec3<f32>(x_223.x, x_223.y, x_223.z));
  let x_226 : vec3<f32> = u_xlat2;
  u_xlat2 = max(x_226, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_232 : vec4<f32> = vs_TEXCOORD6;
  let x_233 : vec2<f32> = vec2<f32>(x_232.x, x_232.y);
  let x_235 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_233.x, x_233.y, x_235);
  let x_247 : vec3<f32> = txVec0;
  let x_249 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_247.xy, x_247.z);
  u_xlat31 = x_249;
  let x_261 : f32 = x_258.x_MainLightShadowParams.x;
  u_xlat32 = (-(x_261) + 1.0f);
  let x_264 : f32 = u_xlat31;
  let x_266 : f32 = x_258.x_MainLightShadowParams.x;
  let x_268 : f32 = u_xlat32;
  u_xlat31 = ((x_264 * x_266) + x_268);
  let x_272 : f32 = vs_TEXCOORD6.z;
  u_xlatb32 = (0.0f >= x_272);
  let x_276 : f32 = vs_TEXCOORD6.z;
  u_xlatb3 = (x_276 >= 1.0f);
  let x_278 : bool = u_xlatb32;
  let x_279 : bool = u_xlatb3;
  u_xlatb32 = (x_278 | x_279);
  let x_281 : bool = u_xlatb32;
  let x_282 : f32 = u_xlat31;
  u_xlat31 = select(x_282, 1.0f, x_281);
  let x_285 : vec3<f32> = vs_TEXCOORD1;
  let x_289 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_291 : vec3<f32> = (x_285 + -(x_289));
  let x_292 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_291.x, x_291.y, x_291.z, x_292.w);
  let x_294 : vec4<f32> = u_xlat3;
  let x_296 : vec4<f32> = u_xlat3;
  u_xlat32 = dot(vec3<f32>(x_294.x, x_294.y, x_294.z), vec3<f32>(x_296.x, x_296.y, x_296.z));
  let x_299 : f32 = u_xlat32;
  let x_301 : f32 = x_258.x_MainLightShadowParams.z;
  let x_304 : f32 = x_258.x_MainLightShadowParams.w;
  u_xlat3.x = ((x_299 * x_301) + x_304);
  let x_308 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_308, 0.0f, 1.0f);
  let x_312 : f32 = u_xlat31;
  u_xlat13 = (-(x_312) + 1.0f);
  let x_316 : f32 = u_xlat3.x;
  let x_317 : f32 = u_xlat13;
  let x_319 : f32 = u_xlat31;
  u_xlat31 = ((x_316 * x_317) + x_319);
  let x_328 : f32 = x_326.x_MainLightCookieTextureFormat;
  u_xlatb3 = !((x_328 == -1.0f));
  let x_331 : bool = u_xlatb3;
  if (x_331) {
    let x_334 : vec3<f32> = vs_TEXCOORD1;
    let x_337 : vec4<f32> = x_326.x_MainLightWorldToLight[1i];
    let x_339 : vec2<f32> = (vec2<f32>(x_334.y, x_334.y) * vec2<f32>(x_337.x, x_337.y));
    let x_340 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_339.x, x_339.y, x_340.z, x_340.w);
    let x_343 : vec4<f32> = x_326.x_MainLightWorldToLight[0i];
    let x_345 : vec3<f32> = vs_TEXCOORD1;
    let x_348 : vec4<f32> = u_xlat3;
    let x_350 : vec2<f32> = ((vec2<f32>(x_343.x, x_343.y) * vec2<f32>(x_345.x, x_345.x)) + vec2<f32>(x_348.x, x_348.y));
    let x_351 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_350.x, x_350.y, x_351.z, x_351.w);
    let x_354 : vec4<f32> = x_326.x_MainLightWorldToLight[2i];
    let x_356 : vec3<f32> = vs_TEXCOORD1;
    let x_359 : vec4<f32> = u_xlat3;
    let x_361 : vec2<f32> = ((vec2<f32>(x_354.x, x_354.y) * vec2<f32>(x_356.z, x_356.z)) + vec2<f32>(x_359.x, x_359.y));
    let x_362 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_361.x, x_361.y, x_362.z, x_362.w);
    let x_364 : vec4<f32> = u_xlat3;
    let x_368 : vec4<f32> = x_326.x_MainLightWorldToLight[3i];
    let x_370 : vec2<f32> = (vec2<f32>(x_364.x, x_364.y) + vec2<f32>(x_368.x, x_368.y));
    let x_371 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_370.x, x_370.y, x_371.z, x_371.w);
    let x_373 : vec4<f32> = u_xlat3;
    let x_378 : vec2<f32> = ((vec2<f32>(x_373.x, x_373.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_379 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_378.x, x_378.y, x_379.z, x_379.w);
    let x_386 : vec4<f32> = u_xlat3;
    let x_389 : f32 = x_44.x_GlobalMipBias.x;
    let x_390 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_386.x, x_386.y), x_389);
    u_xlat3 = x_390;
    let x_395 : f32 = x_326.x_MainLightCookieTextureFormat;
    let x_397 : f32 = x_326.x_MainLightCookieTextureFormat;
    let x_399 : f32 = x_326.x_MainLightCookieTextureFormat;
    let x_401 : f32 = x_326.x_MainLightCookieTextureFormat;
    let x_402 : vec4<f32> = vec4<f32>(x_395, x_397, x_399, x_401);
    let x_410 : vec4<bool> = (vec4<f32>(x_402.x, x_402.y, x_402.z, x_402.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb4 = vec2<bool>(x_410.x, x_410.y);
    let x_414 : bool = u_xlatb4.y;
    if (x_414) {
      let x_419 : f32 = u_xlat3.w;
      x_415 = x_419;
    } else {
      let x_422 : f32 = u_xlat3.x;
      x_415 = x_422;
    }
    let x_423 : f32 = x_415;
    u_xlat33 = x_423;
    let x_425 : bool = u_xlatb4.x;
    if (x_425) {
      let x_429 : vec4<f32> = u_xlat3;
      x_426 = vec3<f32>(x_429.x, x_429.y, x_429.z);
    } else {
      let x_432 : f32 = u_xlat33;
      x_426 = vec3<f32>(x_432, x_432, x_432);
    }
    let x_434 : vec3<f32> = x_426;
    let x_435 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_434.x, x_434.y, x_434.z, x_435.w);
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
  }
  let x_441 : vec4<f32> = u_xlat3;
  let x_444 : vec4<f32> = x_44.x_MainLightColor;
  let x_446 : vec3<f32> = (vec3<f32>(x_441.x, x_441.y, x_441.z) * vec3<f32>(x_444.x, x_444.y, x_444.z));
  let x_447 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_446.x, x_446.y, x_446.z, x_447.w);
  let x_449 : f32 = u_xlat31;
  let x_451 : f32 = x_94.unity_LightData.z;
  u_xlat31 = (x_449 * x_451);
  let x_453 : f32 = u_xlat31;
  let x_455 : vec4<f32> = u_xlat3;
  let x_457 : vec3<f32> = (vec3<f32>(x_453, x_453, x_453) * vec3<f32>(x_455.x, x_455.y, x_455.z));
  let x_458 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_457.x, x_457.y, x_457.z, x_458.w);
  let x_460 : vec4<f32> = u_xlat1;
  let x_463 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat31 = dot(vec3<f32>(x_460.x, x_460.y, x_460.z), vec3<f32>(x_463.x, x_463.y, x_463.z));
  let x_466 : f32 = u_xlat31;
  u_xlat31 = clamp(x_466, 0.0f, 1.0f);
  let x_468 : f32 = u_xlat31;
  let x_470 : vec4<f32> = u_xlat3;
  let x_472 : vec3<f32> = (vec3<f32>(x_468, x_468, x_468) * vec3<f32>(x_470.x, x_470.y, x_470.z));
  let x_473 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_472.x, x_472.y, x_472.z, x_473.w);
  let x_475 : vec4<f32> = u_xlat0;
  let x_477 : vec4<f32> = u_xlat3;
  let x_479 : vec3<f32> = (vec3<f32>(x_475.y, x_475.z, x_475.w) * vec3<f32>(x_477.x, x_477.y, x_477.z));
  let x_480 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_479.x, x_479.y, x_479.z, x_480.w);
  let x_483 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_485 : f32 = x_94.unity_LightData.y;
  u_xlat31 = min(x_483, x_485);
  let x_489 : f32 = u_xlat31;
  u_xlatu31 = bitcast<u32>(i32(x_489));
  let x_492 : f32 = u_xlat32;
  let x_495 : f32 = x_258.x_AdditionalShadowFadeParams.x;
  let x_498 : f32 = x_258.x_AdditionalShadowFadeParams.y;
  u_xlat32 = ((x_492 * x_495) + x_498);
  let x_500 : f32 = u_xlat32;
  u_xlat32 = clamp(x_500, 0.0f, 1.0f);
  let x_503 : f32 = x_326.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_505 : f32 = x_326.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_507 : f32 = x_326.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_509 : f32 = x_326.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_510 : vec4<f32> = vec4<f32>(x_503, x_505, x_507, x_509);
  let x_516 : vec4<bool> = (vec4<f32>(x_510.x, x_510.y, x_510.z, x_510.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb4 = vec2<bool>(x_516.x, x_516.y);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_529 : u32 = u_xlatu_loop_1;
    let x_530 : u32 = u_xlatu31;
    if ((x_529 < x_530)) {
    } else {
      break;
    }
    let x_533 : u32 = u_xlatu_loop_1;
    u_xlatu24 = (x_533 >> 2u);
    let x_537 : u32 = u_xlatu_loop_1;
    u_xlati34 = bitcast<i32>((x_537 & 3u));
    let x_542 : u32 = u_xlatu24;
    let x_545 : vec4<f32> = x_94.unity_LightIndices[bitcast<i32>(x_542)];
    let x_555 : i32 = u_xlati34;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_560 : vec4<u32> = indexable[x_555];
    u_xlat24 = dot(x_545, bitcast<vec4<f32>>(x_560));
    let x_564 : f32 = u_xlat24;
    u_xlati24 = i32(x_564);
    let x_567 : vec3<f32> = vs_TEXCOORD1;
    let x_578 : i32 = u_xlati24;
    let x_580 : vec4<f32> = x_577.x_AdditionalLightsPosition[x_578];
    let x_583 : i32 = u_xlati24;
    let x_585 : vec4<f32> = x_577.x_AdditionalLightsPosition[x_583];
    u_xlat6 = ((-(x_567) * vec3<f32>(x_580.w, x_580.w, x_580.w)) + vec3<f32>(x_585.x, x_585.y, x_585.z));
    let x_589 : vec3<f32> = u_xlat6;
    let x_590 : vec3<f32> = u_xlat6;
    u_xlat34 = dot(x_589, x_590);
    let x_592 : f32 = u_xlat34;
    u_xlat34 = max(x_592, 0.00006103515625f);
    let x_596 : f32 = u_xlat34;
    u_xlat35 = inverseSqrt(x_596);
    let x_598 : f32 = u_xlat35;
    let x_600 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_598, x_598, x_598) * x_600);
    let x_602 : f32 = u_xlat34;
    u_xlat35 = (1.0f / x_602);
    let x_604 : f32 = u_xlat34;
    let x_605 : i32 = u_xlati24;
    let x_607 : f32 = x_577.x_AdditionalLightsAttenuation[x_605].x;
    u_xlat34 = (x_604 * x_607);
    let x_609 : f32 = u_xlat34;
    let x_611 : f32 = u_xlat34;
    u_xlat34 = ((-(x_609) * x_611) + 1.0f);
    let x_614 : f32 = u_xlat34;
    u_xlat34 = max(x_614, 0.0f);
    let x_616 : f32 = u_xlat34;
    let x_617 : f32 = u_xlat34;
    u_xlat34 = (x_616 * x_617);
    let x_619 : f32 = u_xlat34;
    let x_620 : f32 = u_xlat35;
    u_xlat34 = (x_619 * x_620);
    let x_622 : i32 = u_xlati24;
    let x_624 : vec4<f32> = x_577.x_AdditionalLightsSpotDir[x_622];
    let x_626 : vec3<f32> = u_xlat6;
    u_xlat35 = dot(vec3<f32>(x_624.x, x_624.y, x_624.z), x_626);
    let x_628 : f32 = u_xlat35;
    let x_629 : i32 = u_xlati24;
    let x_631 : f32 = x_577.x_AdditionalLightsAttenuation[x_629].z;
    let x_633 : i32 = u_xlati24;
    let x_635 : f32 = x_577.x_AdditionalLightsAttenuation[x_633].w;
    u_xlat35 = ((x_628 * x_631) + x_635);
    let x_637 : f32 = u_xlat35;
    u_xlat35 = clamp(x_637, 0.0f, 1.0f);
    let x_639 : f32 = u_xlat35;
    let x_640 : f32 = u_xlat35;
    u_xlat35 = (x_639 * x_640);
    let x_642 : f32 = u_xlat34;
    let x_643 : f32 = u_xlat35;
    u_xlat34 = (x_642 * x_643);
    let x_647 : i32 = u_xlati24;
    let x_649 : f32 = x_258.x_AdditionalShadowParams[x_647].w;
    u_xlati35 = i32(x_649);
    let x_652 : i32 = u_xlati35;
    u_xlatb36 = (x_652 >= 0i);
    let x_654 : bool = u_xlatb36;
    if (x_654) {
      let x_658 : i32 = u_xlati24;
      let x_660 : f32 = x_258.x_AdditionalShadowParams[x_658].z;
      u_xlatb36 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_660, x_660, x_660, x_660))));
      let x_664 : bool = u_xlatb36;
      if (x_664) {
        let x_669 : vec3<f32> = u_xlat6;
        let x_672 : vec3<f32> = u_xlat6;
        let x_675 : vec4<bool> = (abs(vec4<f32>(x_669.z, x_669.z, x_669.y, x_669.z)) >= abs(vec4<f32>(x_672.x, x_672.y, x_672.x, x_672.x)));
        let x_677 : vec3<bool> = vec3<bool>(x_675.x, x_675.y, x_675.z);
        let x_678 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_677.x, x_677.y, x_677.z, x_678.w);
        let x_681 : bool = u_xlatb7.y;
        let x_683 : bool = u_xlatb7.x;
        u_xlatb36 = (x_681 & x_683);
        let x_685 : vec3<f32> = u_xlat6;
        let x_688 : vec4<bool> = (-(vec4<f32>(x_685.z, x_685.y, x_685.z, x_685.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_689 : vec3<bool> = vec3<bool>(x_688.x, x_688.y, x_688.w);
        let x_690 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_689.x, x_689.y, x_690.z, x_689.z);
        let x_694 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_694);
        let x_700 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_700);
        let x_707 : bool = u_xlatb7.w;
        u_xlat37 = select(0.0f, 1.0f, x_707);
        let x_711 : bool = u_xlatb7.z;
        if (x_711) {
          let x_716 : f32 = u_xlat7.y;
          x_712 = x_716;
        } else {
          let x_718 : f32 = u_xlat37;
          x_712 = x_718;
        }
        let x_719 : f32 = x_712;
        u_xlat17.x = x_719;
        let x_722 : bool = u_xlatb36;
        if (x_722) {
          let x_727 : f32 = u_xlat7.x;
          x_723 = x_727;
        } else {
          let x_730 : f32 = u_xlat17.x;
          x_723 = x_730;
        }
        let x_731 : f32 = x_723;
        u_xlat36 = x_731;
        let x_732 : i32 = u_xlati24;
        let x_734 : f32 = x_258.x_AdditionalShadowParams[x_732].w;
        u_xlat7.x = trunc(x_734);
        let x_737 : f32 = u_xlat36;
        let x_739 : f32 = u_xlat7.x;
        u_xlat36 = (x_737 + x_739);
        let x_741 : f32 = u_xlat36;
        u_xlati35 = i32(x_741);
      }
      let x_743 : i32 = u_xlati35;
      u_xlati35 = (x_743 << bitcast<u32>(2i));
      let x_745 : vec3<f32> = vs_TEXCOORD1;
      let x_748 : i32 = u_xlati35;
      let x_751 : i32 = u_xlati35;
      let x_755 : vec4<f32> = x_258.x_AdditionalLightsWorldToShadow[((x_748 + 1i) / 4i)][((x_751 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_745.y, x_745.y, x_745.y, x_745.y) * x_755);
      let x_757 : i32 = u_xlati35;
      let x_759 : i32 = u_xlati35;
      let x_762 : vec4<f32> = x_258.x_AdditionalLightsWorldToShadow[(x_757 / 4i)][(x_759 % 4i)];
      let x_763 : vec3<f32> = vs_TEXCOORD1;
      let x_766 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_762 * vec4<f32>(x_763.x, x_763.x, x_763.x, x_763.x)) + x_766);
      let x_768 : i32 = u_xlati35;
      let x_771 : i32 = u_xlati35;
      let x_775 : vec4<f32> = x_258.x_AdditionalLightsWorldToShadow[((x_768 + 2i) / 4i)][((x_771 + 2i) % 4i)];
      let x_776 : vec3<f32> = vs_TEXCOORD1;
      let x_779 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_775 * vec4<f32>(x_776.z, x_776.z, x_776.z, x_776.z)) + x_779);
      let x_781 : vec4<f32> = u_xlat7;
      let x_782 : i32 = u_xlati35;
      let x_785 : i32 = u_xlati35;
      let x_789 : vec4<f32> = x_258.x_AdditionalLightsWorldToShadow[((x_782 + 3i) / 4i)][((x_785 + 3i) % 4i)];
      u_xlat7 = (x_781 + x_789);
      let x_791 : vec4<f32> = u_xlat7;
      let x_793 : vec4<f32> = u_xlat7;
      let x_795 : vec3<f32> = (vec3<f32>(x_791.x, x_791.y, x_791.z) / vec3<f32>(x_793.w, x_793.w, x_793.w));
      let x_796 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_795.x, x_795.y, x_795.z, x_796.w);
      let x_799 : vec4<f32> = u_xlat7;
      let x_800 : vec2<f32> = vec2<f32>(x_799.x, x_799.y);
      let x_802 : f32 = u_xlat7.z;
      txVec1 = vec3<f32>(x_800.x, x_800.y, x_802);
      let x_810 : vec3<f32> = txVec1;
      let x_812 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_810.xy, x_810.z);
      u_xlat35 = x_812;
      let x_813 : i32 = u_xlati24;
      let x_815 : f32 = x_258.x_AdditionalShadowParams[x_813].x;
      u_xlat36 = (1.0f + -(x_815));
      let x_818 : f32 = u_xlat35;
      let x_819 : i32 = u_xlati24;
      let x_821 : f32 = x_258.x_AdditionalShadowParams[x_819].x;
      let x_823 : f32 = u_xlat36;
      u_xlat35 = ((x_818 * x_821) + x_823);
      let x_826 : f32 = u_xlat7.z;
      u_xlatb36 = (0.0f >= x_826);
      let x_829 : f32 = u_xlat7.z;
      u_xlatb7.x = (x_829 >= 1.0f);
      let x_832 : bool = u_xlatb36;
      let x_834 : bool = u_xlatb7.x;
      u_xlatb36 = (x_832 | x_834);
      let x_836 : bool = u_xlatb36;
      let x_837 : f32 = u_xlat35;
      u_xlat35 = select(x_837, 1.0f, x_836);
    } else {
      u_xlat35 = 1.0f;
    }
    let x_840 : f32 = u_xlat35;
    u_xlat36 = (-(x_840) + 1.0f);
    let x_843 : f32 = u_xlat32;
    let x_844 : f32 = u_xlat36;
    let x_846 : f32 = u_xlat35;
    u_xlat35 = ((x_843 * x_844) + x_846);
    let x_849 : i32 = u_xlati24;
    u_xlati36 = (1i << bitcast<u32>((x_849 & 31i)));
    let x_853 : i32 = u_xlati36;
    let x_856 : f32 = x_326.x_AdditionalLightsCookieEnableBits;
    u_xlati36 = bitcast<i32>((bitcast<u32>(x_853) & bitcast<u32>(x_856)));
    let x_860 : i32 = u_xlati36;
    if ((x_860 != 0i)) {
      let x_864 : i32 = u_xlati24;
      let x_866 : f32 = x_326.x_AdditionalLightsLightTypes[x_864].el;
      u_xlati36 = i32(x_866);
      let x_869 : i32 = u_xlati36;
      u_xlati7 = select(1i, 0i, (x_869 != 0i));
      let x_873 : i32 = u_xlati24;
      u_xlati17 = (x_873 << bitcast<u32>(2i));
      let x_875 : i32 = u_xlati7;
      if ((x_875 != 0i)) {
        let x_879 : vec3<f32> = vs_TEXCOORD1;
        let x_881 : i32 = u_xlati17;
        let x_884 : i32 = u_xlati17;
        let x_888 : vec4<f32> = x_326.x_AdditionalLightsWorldToLights[((x_881 + 1i) / 4i)][((x_884 + 1i) % 4i)];
        let x_890 : vec3<f32> = (vec3<f32>(x_879.y, x_879.y, x_879.y) * vec3<f32>(x_888.x, x_888.y, x_888.w));
        let x_891 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_890.x, x_891.y, x_890.y, x_890.z);
        let x_893 : i32 = u_xlati17;
        let x_895 : i32 = u_xlati17;
        let x_898 : vec4<f32> = x_326.x_AdditionalLightsWorldToLights[(x_893 / 4i)][(x_895 % 4i)];
        let x_900 : vec3<f32> = vs_TEXCOORD1;
        let x_903 : vec4<f32> = u_xlat7;
        let x_905 : vec3<f32> = ((vec3<f32>(x_898.x, x_898.y, x_898.w) * vec3<f32>(x_900.x, x_900.x, x_900.x)) + vec3<f32>(x_903.x, x_903.z, x_903.w));
        let x_906 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_905.x, x_906.y, x_905.y, x_905.z);
        let x_908 : i32 = u_xlati17;
        let x_911 : i32 = u_xlati17;
        let x_915 : vec4<f32> = x_326.x_AdditionalLightsWorldToLights[((x_908 + 2i) / 4i)][((x_911 + 2i) % 4i)];
        let x_917 : vec3<f32> = vs_TEXCOORD1;
        let x_920 : vec4<f32> = u_xlat7;
        let x_922 : vec3<f32> = ((vec3<f32>(x_915.x, x_915.y, x_915.w) * vec3<f32>(x_917.z, x_917.z, x_917.z)) + vec3<f32>(x_920.x, x_920.z, x_920.w));
        let x_923 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_922.x, x_923.y, x_922.y, x_922.z);
        let x_925 : vec4<f32> = u_xlat7;
        let x_927 : i32 = u_xlati17;
        let x_930 : i32 = u_xlati17;
        let x_934 : vec4<f32> = x_326.x_AdditionalLightsWorldToLights[((x_927 + 3i) / 4i)][((x_930 + 3i) % 4i)];
        let x_936 : vec3<f32> = (vec3<f32>(x_925.x, x_925.z, x_925.w) + vec3<f32>(x_934.x, x_934.y, x_934.w));
        let x_937 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_936.x, x_937.y, x_936.y, x_936.z);
        let x_939 : vec4<f32> = u_xlat7;
        let x_941 : vec4<f32> = u_xlat7;
        let x_943 : vec2<f32> = (vec2<f32>(x_939.x, x_939.z) / vec2<f32>(x_941.w, x_941.w));
        let x_944 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_943.x, x_944.y, x_943.y, x_944.w);
        let x_946 : vec4<f32> = u_xlat7;
        let x_949 : vec2<f32> = ((vec2<f32>(x_946.x, x_946.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_950 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_949.x, x_950.y, x_949.y, x_950.w);
        let x_952 : vec4<f32> = u_xlat7;
        let x_956 : vec2<f32> = clamp(vec2<f32>(x_952.x, x_952.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_957 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_956.x, x_957.y, x_956.y, x_957.w);
        let x_959 : i32 = u_xlati24;
        let x_961 : vec4<f32> = x_326.x_AdditionalLightsCookieAtlasUVRects[x_959];
        let x_963 : vec4<f32> = u_xlat7;
        let x_966 : i32 = u_xlati24;
        let x_968 : vec4<f32> = x_326.x_AdditionalLightsCookieAtlasUVRects[x_966];
        let x_970 : vec2<f32> = ((vec2<f32>(x_961.x, x_961.y) * vec2<f32>(x_963.x, x_963.z)) + vec2<f32>(x_968.z, x_968.w));
        let x_971 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_970.x, x_971.y, x_970.y, x_971.w);
      } else {
        let x_974 : i32 = u_xlati36;
        u_xlatb36 = (x_974 == 1i);
        let x_976 : bool = u_xlatb36;
        u_xlati36 = select(0i, 1i, x_976);
        let x_978 : i32 = u_xlati36;
        if ((x_978 != 0i)) {
          let x_983 : vec3<f32> = vs_TEXCOORD1;
          let x_985 : i32 = u_xlati17;
          let x_988 : i32 = u_xlati17;
          let x_992 : vec4<f32> = x_326.x_AdditionalLightsWorldToLights[((x_985 + 1i) / 4i)][((x_988 + 1i) % 4i)];
          let x_994 : vec2<f32> = (vec2<f32>(x_983.y, x_983.y) * vec2<f32>(x_992.x, x_992.y));
          let x_995 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_994.x, x_994.y, x_995.z, x_995.w);
          let x_997 : i32 = u_xlati17;
          let x_999 : i32 = u_xlati17;
          let x_1002 : vec4<f32> = x_326.x_AdditionalLightsWorldToLights[(x_997 / 4i)][(x_999 % 4i)];
          let x_1004 : vec3<f32> = vs_TEXCOORD1;
          let x_1007 : vec4<f32> = u_xlat8;
          let x_1009 : vec2<f32> = ((vec2<f32>(x_1002.x, x_1002.y) * vec2<f32>(x_1004.x, x_1004.x)) + vec2<f32>(x_1007.x, x_1007.y));
          let x_1010 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1009.x, x_1009.y, x_1010.z, x_1010.w);
          let x_1012 : i32 = u_xlati17;
          let x_1015 : i32 = u_xlati17;
          let x_1019 : vec4<f32> = x_326.x_AdditionalLightsWorldToLights[((x_1012 + 2i) / 4i)][((x_1015 + 2i) % 4i)];
          let x_1021 : vec3<f32> = vs_TEXCOORD1;
          let x_1024 : vec4<f32> = u_xlat8;
          let x_1026 : vec2<f32> = ((vec2<f32>(x_1019.x, x_1019.y) * vec2<f32>(x_1021.z, x_1021.z)) + vec2<f32>(x_1024.x, x_1024.y));
          let x_1027 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1026.x, x_1026.y, x_1027.z, x_1027.w);
          let x_1029 : vec4<f32> = u_xlat8;
          let x_1031 : i32 = u_xlati17;
          let x_1034 : i32 = u_xlati17;
          let x_1038 : vec4<f32> = x_326.x_AdditionalLightsWorldToLights[((x_1031 + 3i) / 4i)][((x_1034 + 3i) % 4i)];
          let x_1040 : vec2<f32> = (vec2<f32>(x_1029.x, x_1029.y) + vec2<f32>(x_1038.x, x_1038.y));
          let x_1041 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1040.x, x_1040.y, x_1041.z, x_1041.w);
          let x_1043 : vec4<f32> = u_xlat8;
          let x_1046 : vec2<f32> = ((vec2<f32>(x_1043.x, x_1043.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1047 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1046.x, x_1046.y, x_1047.z, x_1047.w);
          let x_1049 : vec4<f32> = u_xlat8;
          let x_1051 : vec2<f32> = fract(vec2<f32>(x_1049.x, x_1049.y));
          let x_1052 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1051.x, x_1051.y, x_1052.z, x_1052.w);
          let x_1054 : i32 = u_xlati24;
          let x_1056 : vec4<f32> = x_326.x_AdditionalLightsCookieAtlasUVRects[x_1054];
          let x_1058 : vec4<f32> = u_xlat8;
          let x_1061 : i32 = u_xlati24;
          let x_1063 : vec4<f32> = x_326.x_AdditionalLightsCookieAtlasUVRects[x_1061];
          let x_1065 : vec2<f32> = ((vec2<f32>(x_1056.x, x_1056.y) * vec2<f32>(x_1058.x, x_1058.y)) + vec2<f32>(x_1063.z, x_1063.w));
          let x_1066 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_1065.x, x_1066.y, x_1065.y, x_1066.w);
        } else {
          let x_1069 : vec3<f32> = vs_TEXCOORD1;
          let x_1071 : i32 = u_xlati17;
          let x_1074 : i32 = u_xlati17;
          let x_1078 : vec4<f32> = x_326.x_AdditionalLightsWorldToLights[((x_1071 + 1i) / 4i)][((x_1074 + 1i) % 4i)];
          u_xlat8 = (vec4<f32>(x_1069.y, x_1069.y, x_1069.y, x_1069.y) * x_1078);
          let x_1080 : i32 = u_xlati17;
          let x_1082 : i32 = u_xlati17;
          let x_1085 : vec4<f32> = x_326.x_AdditionalLightsWorldToLights[(x_1080 / 4i)][(x_1082 % 4i)];
          let x_1086 : vec3<f32> = vs_TEXCOORD1;
          let x_1089 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_1085 * vec4<f32>(x_1086.x, x_1086.x, x_1086.x, x_1086.x)) + x_1089);
          let x_1091 : i32 = u_xlati17;
          let x_1094 : i32 = u_xlati17;
          let x_1098 : vec4<f32> = x_326.x_AdditionalLightsWorldToLights[((x_1091 + 2i) / 4i)][((x_1094 + 2i) % 4i)];
          let x_1099 : vec3<f32> = vs_TEXCOORD1;
          let x_1102 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_1098 * vec4<f32>(x_1099.z, x_1099.z, x_1099.z, x_1099.z)) + x_1102);
          let x_1104 : vec4<f32> = u_xlat8;
          let x_1105 : i32 = u_xlati17;
          let x_1108 : i32 = u_xlati17;
          let x_1112 : vec4<f32> = x_326.x_AdditionalLightsWorldToLights[((x_1105 + 3i) / 4i)][((x_1108 + 3i) % 4i)];
          u_xlat8 = (x_1104 + x_1112);
          let x_1114 : vec4<f32> = u_xlat8;
          let x_1116 : vec4<f32> = u_xlat8;
          let x_1118 : vec3<f32> = (vec3<f32>(x_1114.x, x_1114.y, x_1114.z) / vec3<f32>(x_1116.w, x_1116.w, x_1116.w));
          let x_1119 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1118.x, x_1118.y, x_1118.z, x_1119.w);
          let x_1121 : vec4<f32> = u_xlat8;
          let x_1123 : vec4<f32> = u_xlat8;
          u_xlat36 = dot(vec3<f32>(x_1121.x, x_1121.y, x_1121.z), vec3<f32>(x_1123.x, x_1123.y, x_1123.z));
          let x_1126 : f32 = u_xlat36;
          u_xlat36 = inverseSqrt(x_1126);
          let x_1128 : f32 = u_xlat36;
          let x_1130 : vec4<f32> = u_xlat8;
          let x_1132 : vec3<f32> = (vec3<f32>(x_1128, x_1128, x_1128) * vec3<f32>(x_1130.x, x_1130.y, x_1130.z));
          let x_1133 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1132.x, x_1132.y, x_1132.z, x_1133.w);
          let x_1135 : vec4<f32> = u_xlat8;
          u_xlat36 = dot(abs(vec3<f32>(x_1135.x, x_1135.y, x_1135.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1140 : f32 = u_xlat36;
          u_xlat36 = max(x_1140, 0.00000099999999747524f);
          let x_1143 : f32 = u_xlat36;
          u_xlat36 = (1.0f / x_1143);
          let x_1146 : f32 = u_xlat36;
          let x_1148 : vec4<f32> = u_xlat8;
          u_xlat9 = (vec3<f32>(x_1146, x_1146, x_1146) * vec3<f32>(x_1148.z, x_1148.x, x_1148.y));
          let x_1152 : f32 = u_xlat9.x;
          u_xlat9.x = -(x_1152);
          let x_1156 : f32 = u_xlat9.x;
          u_xlat9.x = clamp(x_1156, 0.0f, 1.0f);
          let x_1161 : vec3<f32> = u_xlat9;
          let x_1163 : vec4<bool> = (vec4<f32>(x_1161.y, x_1161.y, x_1161.z, x_1161.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1164 : vec2<bool> = vec2<bool>(x_1163.x, x_1163.z);
          let x_1165 : vec3<bool> = u_xlatb17;
          u_xlatb17 = vec3<bool>(x_1164.x, x_1165.y, x_1164.y);
          let x_1168 : bool = u_xlatb17.x;
          if (x_1168) {
            let x_1173 : f32 = u_xlat9.x;
            x_1169 = x_1173;
          } else {
            let x_1176 : f32 = u_xlat9.x;
            x_1169 = -(x_1176);
          }
          let x_1178 : f32 = x_1169;
          u_xlat17.x = x_1178;
          let x_1181 : bool = u_xlatb17.z;
          if (x_1181) {
            let x_1186 : f32 = u_xlat9.x;
            x_1182 = x_1186;
          } else {
            let x_1189 : f32 = u_xlat9.x;
            x_1182 = -(x_1189);
          }
          let x_1191 : f32 = x_1182;
          u_xlat17.z = x_1191;
          let x_1193 : vec4<f32> = u_xlat8;
          let x_1195 : f32 = u_xlat36;
          let x_1198 : vec3<f32> = u_xlat17;
          let x_1200 : vec2<f32> = ((vec2<f32>(x_1193.x, x_1193.y) * vec2<f32>(x_1195, x_1195)) + vec2<f32>(x_1198.x, x_1198.z));
          let x_1201 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_1200.x, x_1201.y, x_1200.y);
          let x_1203 : vec3<f32> = u_xlat17;
          let x_1206 : vec2<f32> = ((vec2<f32>(x_1203.x, x_1203.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1207 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_1206.x, x_1207.y, x_1206.y);
          let x_1209 : vec3<f32> = u_xlat17;
          let x_1213 : vec2<f32> = clamp(vec2<f32>(x_1209.x, x_1209.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1214 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_1213.x, x_1214.y, x_1213.y);
          let x_1216 : i32 = u_xlati24;
          let x_1218 : vec4<f32> = x_326.x_AdditionalLightsCookieAtlasUVRects[x_1216];
          let x_1220 : vec3<f32> = u_xlat17;
          let x_1223 : i32 = u_xlati24;
          let x_1225 : vec4<f32> = x_326.x_AdditionalLightsCookieAtlasUVRects[x_1223];
          let x_1227 : vec2<f32> = ((vec2<f32>(x_1218.x, x_1218.y) * vec2<f32>(x_1220.x, x_1220.z)) + vec2<f32>(x_1225.z, x_1225.w));
          let x_1228 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_1227.x, x_1228.y, x_1227.y, x_1228.w);
        }
      }
      let x_1235 : vec4<f32> = u_xlat7;
      let x_1237 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1235.x, x_1235.z), 0.0f);
      u_xlat7 = x_1237;
      let x_1239 : bool = u_xlatb4.y;
      if (x_1239) {
        let x_1244 : f32 = u_xlat7.w;
        x_1240 = x_1244;
      } else {
        let x_1247 : f32 = u_xlat7.x;
        x_1240 = x_1247;
      }
      let x_1248 : f32 = x_1240;
      u_xlat36 = x_1248;
      let x_1250 : bool = u_xlatb4.x;
      if (x_1250) {
        let x_1254 : vec4<f32> = u_xlat7;
        x_1251 = vec3<f32>(x_1254.x, x_1254.y, x_1254.z);
      } else {
        let x_1257 : f32 = u_xlat36;
        x_1251 = vec3<f32>(x_1257, x_1257, x_1257);
      }
      let x_1259 : vec3<f32> = x_1251;
      let x_1260 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_1259.x, x_1259.y, x_1259.z, x_1260.w);
    } else {
      u_xlat7.x = 1.0f;
      u_xlat7.y = 1.0f;
      u_xlat7.z = 1.0f;
    }
    let x_1266 : vec4<f32> = u_xlat7;
    let x_1268 : i32 = u_xlati24;
    let x_1270 : vec4<f32> = x_577.x_AdditionalLightsColor[x_1268];
    let x_1272 : vec3<f32> = (vec3<f32>(x_1266.x, x_1266.y, x_1266.z) * vec3<f32>(x_1270.x, x_1270.y, x_1270.z));
    let x_1273 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1272.x, x_1272.y, x_1272.z, x_1273.w);
    let x_1275 : f32 = u_xlat34;
    let x_1276 : f32 = u_xlat35;
    u_xlat24 = (x_1275 * x_1276);
    let x_1278 : f32 = u_xlat24;
    let x_1280 : vec4<f32> = u_xlat7;
    let x_1282 : vec3<f32> = (vec3<f32>(x_1278, x_1278, x_1278) * vec3<f32>(x_1280.x, x_1280.y, x_1280.z));
    let x_1283 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1282.x, x_1282.y, x_1282.z, x_1283.w);
    let x_1285 : vec4<f32> = u_xlat1;
    let x_1287 : vec3<f32> = u_xlat6;
    u_xlat24 = dot(vec3<f32>(x_1285.x, x_1285.y, x_1285.z), x_1287);
    let x_1289 : f32 = u_xlat24;
    u_xlat24 = clamp(x_1289, 0.0f, 1.0f);
    let x_1291 : f32 = u_xlat24;
    let x_1293 : vec4<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_1291, x_1291, x_1291) * vec3<f32>(x_1293.x, x_1293.y, x_1293.z));
    let x_1296 : vec3<f32> = u_xlat6;
    let x_1297 : vec4<f32> = u_xlat0;
    let x_1300 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_1296 * vec3<f32>(x_1297.y, x_1297.z, x_1297.w)) + x_1300);

    continuing {
      let x_1302 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1302 + bitcast<u32>(1i));
    }
  }
  let x_1305 : vec3<f32> = u_xlat2;
  let x_1306 : vec4<f32> = u_xlat0;
  let x_1309 : vec4<f32> = u_xlat3;
  u_xlat10 = ((x_1305 * vec3<f32>(x_1306.y, x_1306.z, x_1306.w)) + vec3<f32>(x_1309.x, x_1309.y, x_1309.z));
  let x_1314 : vec3<f32> = u_xlat5;
  let x_1315 : vec3<f32> = u_xlat10;
  let x_1316 : vec3<f32> = (x_1314 + x_1315);
  let x_1317 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1316.x, x_1316.y, x_1316.z, x_1317.w);
  let x_1321 : f32 = x_56.x_Surface;
  u_xlatb10 = (x_1321 == 1.0f);
  let x_1323 : bool = u_xlatb10;
  if (x_1323) {
    let x_1328 : f32 = u_xlat0.x;
    x_1324 = x_1328;
  } else {
    x_1324 = 1.0f;
  }
  let x_1330 : f32 = x_1324;
  SV_Target0.w = x_1330;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}


