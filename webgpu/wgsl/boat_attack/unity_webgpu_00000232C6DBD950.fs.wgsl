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
  unity_FogParams : vec4<f32>,
  /* @offset(112) */
  unity_FogColor : vec4<f32>,
  /* @offset(128) */
  unity_MatrixV : mat4x4<f32>,
  /* @offset(192) */
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

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(5) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_PointRepeat : sampler;

var<private> u_xlatb11 : bool;

@group(1) @binding(2) var<uniform> x_94 : UnityPerDraw;

var<private> u_xlatb1 : bool;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : f32;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat31 : f32;

var<private> u_xlat12 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_296 : LightShadows;

var<private> u_xlatb3 : bool;

var<private> u_xlatb13 : vec2<bool>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlat23 : f32;

@group(1) @binding(5) var<uniform> x_367 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatu31 : u32;

var<private> u_xlatb4 : vec2<bool>;

var<private> u_xlatu34 : u32;

var<private> u_xlati35 : i32;

var<private> u_xlat34 : f32;

var<private> u_xlati34 : i32;

var<private> u_xlat6 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_604 : AdditionalLights;

var<private> u_xlat35 : f32;

var<private> u_xlat36 : f32;

var<private> u_xlati36 : i32;

var<private> u_xlatb7 : vec3<bool>;

var<private> u_xlatb8 : vec3<bool>;

var<private> u_xlat17 : vec3<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat27 : f32;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb17 : bool;

var<private> u_xlati7 : i32;

var<private> u_xlati17 : i32;

var<private> u_xlati27 : i32;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlatb28 : vec2<bool>;

var<private> u_xlat28 : vec2<f32>;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_LinearClamp : sampler;

var<private> u_xlat37 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb10 : bool;

var<private> u_xlatu24 : u32;

var<private> u_xlatb34 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_102 : f32;
  var txVec0 : vec3<f32>;
  var x_453 : f32;
  var x_464 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_741 : f32;
  var x_753 : f32;
  var txVec1 : vec3<f32>;
  var x_1218 : f32;
  var x_1231 : f32;
  var x_1289 : f32;
  var x_1300 : vec3<f32>;
  var x_1396 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_41 : vec2<f32> = vs_TEXCOORD0;
  let x_51 : f32 = x_45.x_GlobalMipBias.x;
  let x_52 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_41, x_51);
  u_xlat0 = x_52;
  let x_53 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = x_57.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_53.w, x_53.x, x_53.y, x_53.z) * vec4<f32>(x_61.w, x_61.x, x_61.y, x_61.z));
  let x_65 : vec4<f32> = hlslcc_FragCoord;
  let x_69 : f32 = x_45.x_DitheringTextureInvSize;
  let x_71 : vec2<f32> = (vec2<f32>(x_65.x, x_65.y) * vec2<f32>(x_69, x_69));
  let x_72 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_71.x, x_71.y, x_72.z, x_72.w);
  let x_79 : vec4<f32> = u_xlat1;
  let x_82 : f32 = x_45.x_GlobalMipBias.x;
  let x_83 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_79.x, x_79.y), x_82);
  u_xlat1.x = x_83.w;
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
  let x_154 : f32 = vs_TEXCOORD1.y;
  let x_157 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat2 = (x_154 * x_157);
  let x_160 : f32 = x_45.unity_MatrixV[0i].z;
  let x_162 : f32 = vs_TEXCOORD1.x;
  let x_164 : f32 = u_xlat2;
  u_xlat2 = ((x_160 * x_162) + x_164);
  let x_167 : f32 = x_45.unity_MatrixV[2i].z;
  let x_169 : f32 = vs_TEXCOORD1.z;
  let x_171 : f32 = u_xlat2;
  u_xlat2 = ((x_167 * x_169) + x_171);
  let x_173 : f32 = u_xlat2;
  let x_176 : f32 = x_45.unity_MatrixV[3i].z;
  u_xlat2 = (x_173 + x_176);
  let x_178 : f32 = u_xlat2;
  let x_182 : f32 = x_45.x_ProjectionParams.y;
  u_xlat2 = (-(x_178) + -(x_182));
  let x_185 : f32 = u_xlat2;
  u_xlat2 = max(x_185, 0.0f);
  let x_187 : f32 = u_xlat2;
  let x_190 : f32 = x_45.unity_FogParams.x;
  u_xlat2 = (x_187 * x_190);
  u_xlat1.w = 1.0f;
  let x_197 : vec4<f32> = x_94.unity_SHAr;
  let x_198 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_197, x_198);
  let x_203 : vec4<f32> = x_94.unity_SHAg;
  let x_204 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_203, x_204);
  let x_209 : vec4<f32> = x_94.unity_SHAb;
  let x_210 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_209, x_210);
  let x_214 : vec4<f32> = u_xlat1;
  let x_216 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_214.y, x_214.z, x_214.z, x_214.x) * vec4<f32>(x_216.x, x_216.y, x_216.z, x_216.z));
  let x_222 : vec4<f32> = x_94.unity_SHBr;
  let x_223 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_222, x_223);
  let x_228 : vec4<f32> = x_94.unity_SHBg;
  let x_229 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_228, x_229);
  let x_234 : vec4<f32> = x_94.unity_SHBb;
  let x_235 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_234, x_235);
  let x_240 : f32 = u_xlat1.y;
  let x_242 : f32 = u_xlat1.y;
  u_xlat31 = (x_240 * x_242);
  let x_245 : f32 = u_xlat1.x;
  let x_247 : f32 = u_xlat1.x;
  let x_249 : f32 = u_xlat31;
  u_xlat31 = ((x_245 * x_247) + -(x_249));
  let x_255 : vec4<f32> = x_94.unity_SHC;
  let x_257 : f32 = u_xlat31;
  let x_260 : vec3<f32> = u_xlat5;
  u_xlat12 = ((vec3<f32>(x_255.x, x_255.y, x_255.z) * vec3<f32>(x_257, x_257, x_257)) + x_260);
  let x_262 : vec3<f32> = u_xlat12;
  let x_263 : vec3<f32> = u_xlat3;
  u_xlat12 = (x_262 + x_263);
  let x_265 : vec3<f32> = u_xlat12;
  u_xlat12 = max(x_265, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_271 : vec4<f32> = vs_TEXCOORD6;
  let x_272 : vec2<f32> = vec2<f32>(x_271.x, x_271.y);
  let x_274 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_272.x, x_272.y, x_274);
  let x_286 : vec3<f32> = txVec0;
  let x_288 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_286.xy, x_286.z);
  u_xlat31 = x_288;
  let x_298 : f32 = x_296.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_298) + 1.0f);
  let x_302 : f32 = u_xlat31;
  let x_304 : f32 = x_296.x_MainLightShadowParams.x;
  let x_307 : f32 = u_xlat3.x;
  u_xlat31 = ((x_302 * x_304) + x_307);
  let x_311 : f32 = vs_TEXCOORD6.z;
  u_xlatb3 = (0.0f >= x_311);
  let x_317 : f32 = vs_TEXCOORD6.z;
  u_xlatb13.x = (x_317 >= 1.0f);
  let x_321 : bool = u_xlatb13.x;
  let x_322 : bool = u_xlatb3;
  u_xlatb3 = (x_321 | x_322);
  let x_324 : bool = u_xlatb3;
  let x_325 : f32 = u_xlat31;
  u_xlat31 = select(x_325, 1.0f, x_324);
  let x_327 : vec3<f32> = vs_TEXCOORD1;
  let x_331 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat3 = (x_327 + -(x_331));
  let x_334 : vec3<f32> = u_xlat3;
  let x_335 : vec3<f32> = u_xlat3;
  u_xlat3.x = dot(x_334, x_335);
  let x_340 : f32 = u_xlat3.x;
  let x_342 : f32 = x_296.x_MainLightShadowParams.z;
  let x_345 : f32 = x_296.x_MainLightShadowParams.w;
  u_xlat13.x = ((x_340 * x_342) + x_345);
  let x_349 : f32 = u_xlat13.x;
  u_xlat13.x = clamp(x_349, 0.0f, 1.0f);
  let x_353 : f32 = u_xlat31;
  u_xlat23 = (-(x_353) + 1.0f);
  let x_357 : f32 = u_xlat13.x;
  let x_358 : f32 = u_xlat23;
  let x_360 : f32 = u_xlat31;
  u_xlat31 = ((x_357 * x_358) + x_360);
  let x_369 : f32 = x_367.x_MainLightCookieTextureFormat;
  u_xlatb13.x = !((x_369 == -1.0f));
  let x_374 : bool = u_xlatb13.x;
  if (x_374) {
    let x_377 : vec3<f32> = vs_TEXCOORD1;
    let x_380 : vec4<f32> = x_367.x_MainLightWorldToLight[1i];
    let x_382 : vec2<f32> = (vec2<f32>(x_377.y, x_377.y) * vec2<f32>(x_380.x, x_380.y));
    let x_383 : vec3<f32> = u_xlat13;
    u_xlat13 = vec3<f32>(x_382.x, x_382.y, x_383.z);
    let x_386 : vec4<f32> = x_367.x_MainLightWorldToLight[0i];
    let x_388 : vec3<f32> = vs_TEXCOORD1;
    let x_391 : vec3<f32> = u_xlat13;
    let x_393 : vec2<f32> = ((vec2<f32>(x_386.x, x_386.y) * vec2<f32>(x_388.x, x_388.x)) + vec2<f32>(x_391.x, x_391.y));
    let x_394 : vec3<f32> = u_xlat13;
    u_xlat13 = vec3<f32>(x_393.x, x_393.y, x_394.z);
    let x_397 : vec4<f32> = x_367.x_MainLightWorldToLight[2i];
    let x_399 : vec3<f32> = vs_TEXCOORD1;
    let x_402 : vec3<f32> = u_xlat13;
    let x_404 : vec2<f32> = ((vec2<f32>(x_397.x, x_397.y) * vec2<f32>(x_399.z, x_399.z)) + vec2<f32>(x_402.x, x_402.y));
    let x_405 : vec3<f32> = u_xlat13;
    u_xlat13 = vec3<f32>(x_404.x, x_404.y, x_405.z);
    let x_407 : vec3<f32> = u_xlat13;
    let x_410 : vec4<f32> = x_367.x_MainLightWorldToLight[3i];
    let x_412 : vec2<f32> = (vec2<f32>(x_407.x, x_407.y) + vec2<f32>(x_410.x, x_410.y));
    let x_413 : vec3<f32> = u_xlat13;
    u_xlat13 = vec3<f32>(x_412.x, x_412.y, x_413.z);
    let x_415 : vec3<f32> = u_xlat13;
    let x_420 : vec2<f32> = ((vec2<f32>(x_415.x, x_415.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_421 : vec3<f32> = u_xlat13;
    u_xlat13 = vec3<f32>(x_420.x, x_420.y, x_421.z);
    let x_428 : vec3<f32> = u_xlat13;
    let x_431 : f32 = x_45.x_GlobalMipBias.x;
    let x_432 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_428.x, x_428.y), x_431);
    u_xlat4 = x_432;
    let x_434 : f32 = x_367.x_MainLightCookieTextureFormat;
    let x_436 : f32 = x_367.x_MainLightCookieTextureFormat;
    let x_438 : f32 = x_367.x_MainLightCookieTextureFormat;
    let x_440 : f32 = x_367.x_MainLightCookieTextureFormat;
    let x_441 : vec4<f32> = vec4<f32>(x_434, x_436, x_438, x_440);
    let x_449 : vec4<bool> = (vec4<f32>(x_441.x, x_441.y, x_441.z, x_441.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb13 = vec2<bool>(x_449.x, x_449.y);
    let x_452 : bool = u_xlatb13.y;
    if (x_452) {
      let x_457 : f32 = u_xlat4.w;
      x_453 = x_457;
    } else {
      let x_460 : f32 = u_xlat4.x;
      x_453 = x_460;
    }
    let x_461 : f32 = x_453;
    u_xlat23 = x_461;
    let x_463 : bool = u_xlatb13.x;
    if (x_463) {
      let x_467 : vec4<f32> = u_xlat4;
      x_464 = vec3<f32>(x_467.x, x_467.y, x_467.z);
    } else {
      let x_470 : f32 = u_xlat23;
      x_464 = vec3<f32>(x_470, x_470, x_470);
    }
    let x_472 : vec3<f32> = x_464;
    u_xlat13 = x_472;
  } else {
    u_xlat13.x = 1.0f;
    u_xlat13.y = 1.0f;
    u_xlat13.z = 1.0f;
  }
  let x_477 : vec3<f32> = u_xlat13;
  let x_479 : vec4<f32> = x_45.x_MainLightColor;
  u_xlat13 = (x_477 * vec3<f32>(x_479.x, x_479.y, x_479.z));
  let x_482 : f32 = u_xlat31;
  let x_484 : f32 = x_94.unity_LightData.z;
  u_xlat31 = (x_482 * x_484);
  let x_486 : f32 = u_xlat31;
  let x_488 : vec3<f32> = u_xlat13;
  u_xlat13 = (vec3<f32>(x_486, x_486, x_486) * x_488);
  let x_490 : vec4<f32> = u_xlat1;
  let x_493 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat31 = dot(vec3<f32>(x_490.x, x_490.y, x_490.z), vec3<f32>(x_493.x, x_493.y, x_493.z));
  let x_496 : f32 = u_xlat31;
  u_xlat31 = clamp(x_496, 0.0f, 1.0f);
  let x_498 : f32 = u_xlat31;
  let x_500 : vec3<f32> = u_xlat13;
  u_xlat13 = (vec3<f32>(x_498, x_498, x_498) * x_500);
  let x_502 : vec4<f32> = u_xlat0;
  let x_504 : vec3<f32> = u_xlat13;
  u_xlat13 = (vec3<f32>(x_502.y, x_502.z, x_502.w) * x_504);
  let x_507 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_509 : f32 = x_94.unity_LightData.y;
  u_xlat31 = min(x_507, x_509);
  let x_513 : f32 = u_xlat31;
  u_xlatu31 = bitcast<u32>(i32(x_513));
  let x_517 : f32 = u_xlat3.x;
  let x_520 : f32 = x_296.x_AdditionalShadowFadeParams.x;
  let x_523 : f32 = x_296.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_517 * x_520) + x_523);
  let x_527 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_527, 0.0f, 1.0f);
  let x_532 : f32 = x_367.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_534 : f32 = x_367.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_536 : f32 = x_367.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_538 : f32 = x_367.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_539 : vec4<f32> = vec4<f32>(x_532, x_534, x_536, x_538);
  let x_545 : vec4<bool> = (vec4<f32>(x_539.x, x_539.y, x_539.z, x_539.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb4 = vec2<bool>(x_545.x, x_545.y);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_557 : u32 = u_xlatu_loop_1;
    let x_558 : u32 = u_xlatu31;
    if ((x_557 < x_558)) {
    } else {
      break;
    }
    let x_561 : u32 = u_xlatu_loop_1;
    u_xlatu34 = (x_561 >> 2u);
    let x_565 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_565 & 3u));
    let x_569 : u32 = u_xlatu34;
    let x_572 : vec4<f32> = x_94.unity_LightIndices[bitcast<i32>(x_569)];
    let x_582 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_587 : vec4<u32> = indexable[x_582];
    u_xlat34 = dot(x_572, bitcast<vec4<f32>>(x_587));
    let x_591 : f32 = u_xlat34;
    u_xlati34 = i32(x_591);
    let x_594 : vec3<f32> = vs_TEXCOORD1;
    let x_605 : i32 = u_xlati34;
    let x_607 : vec4<f32> = x_604.x_AdditionalLightsPosition[x_605];
    let x_610 : i32 = u_xlati34;
    let x_612 : vec4<f32> = x_604.x_AdditionalLightsPosition[x_610];
    u_xlat6 = ((-(x_594) * vec3<f32>(x_607.w, x_607.w, x_607.w)) + vec3<f32>(x_612.x, x_612.y, x_612.z));
    let x_616 : vec3<f32> = u_xlat6;
    let x_617 : vec3<f32> = u_xlat6;
    u_xlat35 = dot(x_616, x_617);
    let x_619 : f32 = u_xlat35;
    u_xlat35 = max(x_619, 0.00006103515625f);
    let x_623 : f32 = u_xlat35;
    u_xlat36 = inverseSqrt(x_623);
    let x_625 : f32 = u_xlat36;
    let x_627 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_625, x_625, x_625) * x_627);
    let x_629 : f32 = u_xlat35;
    u_xlat36 = (1.0f / x_629);
    let x_631 : f32 = u_xlat35;
    let x_632 : i32 = u_xlati34;
    let x_634 : f32 = x_604.x_AdditionalLightsAttenuation[x_632].x;
    u_xlat35 = (x_631 * x_634);
    let x_636 : f32 = u_xlat35;
    let x_638 : f32 = u_xlat35;
    u_xlat35 = ((-(x_636) * x_638) + 1.0f);
    let x_641 : f32 = u_xlat35;
    u_xlat35 = max(x_641, 0.0f);
    let x_643 : f32 = u_xlat35;
    let x_644 : f32 = u_xlat35;
    u_xlat35 = (x_643 * x_644);
    let x_646 : f32 = u_xlat35;
    let x_647 : f32 = u_xlat36;
    u_xlat35 = (x_646 * x_647);
    let x_649 : i32 = u_xlati34;
    let x_651 : vec4<f32> = x_604.x_AdditionalLightsSpotDir[x_649];
    let x_653 : vec3<f32> = u_xlat6;
    u_xlat36 = dot(vec3<f32>(x_651.x, x_651.y, x_651.z), x_653);
    let x_655 : f32 = u_xlat36;
    let x_656 : i32 = u_xlati34;
    let x_658 : f32 = x_604.x_AdditionalLightsAttenuation[x_656].z;
    let x_660 : i32 = u_xlati34;
    let x_662 : f32 = x_604.x_AdditionalLightsAttenuation[x_660].w;
    u_xlat36 = ((x_655 * x_658) + x_662);
    let x_664 : f32 = u_xlat36;
    u_xlat36 = clamp(x_664, 0.0f, 1.0f);
    let x_666 : f32 = u_xlat36;
    let x_667 : f32 = u_xlat36;
    u_xlat36 = (x_666 * x_667);
    let x_669 : f32 = u_xlat35;
    let x_670 : f32 = u_xlat36;
    u_xlat35 = (x_669 * x_670);
    let x_674 : i32 = u_xlati34;
    let x_676 : f32 = x_296.x_AdditionalShadowParams[x_674].w;
    u_xlati36 = i32(x_676);
    let x_681 : i32 = u_xlati36;
    u_xlatb7.x = (x_681 >= 0i);
    let x_685 : bool = u_xlatb7.x;
    if (x_685) {
      let x_689 : i32 = u_xlati34;
      let x_691 : f32 = x_296.x_AdditionalShadowParams[x_689].z;
      u_xlatb7.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_691, x_691, x_691, x_691))));
      let x_697 : bool = u_xlatb7.x;
      if (x_697) {
        let x_700 : vec3<f32> = u_xlat6;
        let x_703 : vec3<f32> = u_xlat6;
        let x_706 : vec4<bool> = (abs(vec4<f32>(x_700.z, x_700.z, x_700.y, x_700.z)) >= abs(vec4<f32>(x_703.x, x_703.y, x_703.x, x_703.x)));
        u_xlatb7 = vec3<bool>(x_706.x, x_706.y, x_706.z);
        let x_709 : bool = u_xlatb7.y;
        let x_711 : bool = u_xlatb7.x;
        u_xlatb7.x = (x_709 & x_711);
        let x_715 : vec3<f32> = u_xlat6;
        let x_718 : vec4<bool> = (-(vec4<f32>(x_715.z, x_715.y, x_715.x, x_715.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb8 = vec3<bool>(x_718.x, x_718.y, x_718.z);
        let x_722 : bool = u_xlatb8.x;
        u_xlat17.x = select(4.0f, 5.0f, x_722);
        let x_728 : bool = u_xlatb8.y;
        u_xlat17.z = select(2.0f, 3.0f, x_728);
        let x_735 : bool = u_xlatb8.z;
        u_xlat8.x = select(0.0f, 1.0f, x_735);
        let x_740 : bool = u_xlatb7.z;
        if (x_740) {
          let x_745 : f32 = u_xlat17.z;
          x_741 = x_745;
        } else {
          let x_748 : f32 = u_xlat8.x;
          x_741 = x_748;
        }
        let x_749 : f32 = x_741;
        u_xlat27 = x_749;
        let x_752 : bool = u_xlatb7.x;
        if (x_752) {
          let x_757 : f32 = u_xlat17.x;
          x_753 = x_757;
        } else {
          let x_759 : f32 = u_xlat27;
          x_753 = x_759;
        }
        let x_760 : f32 = x_753;
        u_xlat7.x = x_760;
        let x_762 : i32 = u_xlati34;
        let x_764 : f32 = x_296.x_AdditionalShadowParams[x_762].w;
        u_xlat17.x = trunc(x_764);
        let x_768 : f32 = u_xlat7.x;
        let x_770 : f32 = u_xlat17.x;
        u_xlat7.x = (x_768 + x_770);
        let x_774 : f32 = u_xlat7.x;
        u_xlati36 = i32(x_774);
      }
      let x_776 : i32 = u_xlati36;
      u_xlati36 = (x_776 << bitcast<u32>(2i));
      let x_778 : vec3<f32> = vs_TEXCOORD1;
      let x_781 : i32 = u_xlati36;
      let x_784 : i32 = u_xlati36;
      let x_788 : vec4<f32> = x_296.x_AdditionalLightsWorldToShadow[((x_781 + 1i) / 4i)][((x_784 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_778.y, x_778.y, x_778.y, x_778.y) * x_788);
      let x_790 : i32 = u_xlati36;
      let x_792 : i32 = u_xlati36;
      let x_795 : vec4<f32> = x_296.x_AdditionalLightsWorldToShadow[(x_790 / 4i)][(x_792 % 4i)];
      let x_796 : vec3<f32> = vs_TEXCOORD1;
      let x_799 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_795 * vec4<f32>(x_796.x, x_796.x, x_796.x, x_796.x)) + x_799);
      let x_801 : i32 = u_xlati36;
      let x_804 : i32 = u_xlati36;
      let x_808 : vec4<f32> = x_296.x_AdditionalLightsWorldToShadow[((x_801 + 2i) / 4i)][((x_804 + 2i) % 4i)];
      let x_809 : vec3<f32> = vs_TEXCOORD1;
      let x_812 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_808 * vec4<f32>(x_809.z, x_809.z, x_809.z, x_809.z)) + x_812);
      let x_814 : vec4<f32> = u_xlat7;
      let x_815 : i32 = u_xlati36;
      let x_818 : i32 = u_xlati36;
      let x_822 : vec4<f32> = x_296.x_AdditionalLightsWorldToShadow[((x_815 + 3i) / 4i)][((x_818 + 3i) % 4i)];
      u_xlat7 = (x_814 + x_822);
      let x_824 : vec4<f32> = u_xlat7;
      let x_826 : vec4<f32> = u_xlat7;
      let x_828 : vec3<f32> = (vec3<f32>(x_824.x, x_824.y, x_824.z) / vec3<f32>(x_826.w, x_826.w, x_826.w));
      let x_829 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_828.x, x_828.y, x_828.z, x_829.w);
      let x_832 : vec4<f32> = u_xlat7;
      let x_833 : vec2<f32> = vec2<f32>(x_832.x, x_832.y);
      let x_835 : f32 = u_xlat7.z;
      txVec1 = vec3<f32>(x_833.x, x_833.y, x_835);
      let x_843 : vec3<f32> = txVec1;
      let x_845 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_843.xy, x_843.z);
      u_xlat36 = x_845;
      let x_846 : i32 = u_xlati34;
      let x_848 : f32 = x_296.x_AdditionalShadowParams[x_846].x;
      u_xlat7.x = (1.0f + -(x_848));
      let x_852 : f32 = u_xlat36;
      let x_853 : i32 = u_xlati34;
      let x_855 : f32 = x_296.x_AdditionalShadowParams[x_853].x;
      let x_858 : f32 = u_xlat7.x;
      u_xlat36 = ((x_852 * x_855) + x_858);
      let x_861 : f32 = u_xlat7.z;
      u_xlatb7.x = (0.0f >= x_861);
      let x_866 : f32 = u_xlat7.z;
      u_xlatb17 = (x_866 >= 1.0f);
      let x_868 : bool = u_xlatb17;
      let x_870 : bool = u_xlatb7.x;
      u_xlatb7.x = (x_868 | x_870);
      let x_874 : bool = u_xlatb7.x;
      let x_875 : f32 = u_xlat36;
      u_xlat36 = select(x_875, 1.0f, x_874);
    } else {
      u_xlat36 = 1.0f;
    }
    let x_878 : f32 = u_xlat36;
    u_xlat7.x = (-(x_878) + 1.0f);
    let x_883 : f32 = u_xlat3.x;
    let x_885 : f32 = u_xlat7.x;
    let x_887 : f32 = u_xlat36;
    u_xlat36 = ((x_883 * x_885) + x_887);
    let x_890 : i32 = u_xlati34;
    u_xlati7 = (1i << bitcast<u32>((x_890 & 31i)));
    let x_894 : i32 = u_xlati7;
    let x_897 : f32 = x_367.x_AdditionalLightsCookieEnableBits;
    u_xlati7 = bitcast<i32>((bitcast<u32>(x_894) & bitcast<u32>(x_897)));
    let x_901 : i32 = u_xlati7;
    if ((x_901 != 0i)) {
      let x_905 : i32 = u_xlati34;
      let x_907 : f32 = x_367.x_AdditionalLightsLightTypes[x_905].el;
      u_xlati7 = i32(x_907);
      let x_910 : i32 = u_xlati7;
      u_xlati17 = select(1i, 0i, (x_910 != 0i));
      let x_914 : i32 = u_xlati34;
      u_xlati27 = (x_914 << bitcast<u32>(2i));
      let x_916 : i32 = u_xlati17;
      if ((x_916 != 0i)) {
        let x_920 : vec3<f32> = vs_TEXCOORD1;
        let x_922 : i32 = u_xlati27;
        let x_925 : i32 = u_xlati27;
        let x_929 : vec4<f32> = x_367.x_AdditionalLightsWorldToLights[((x_922 + 1i) / 4i)][((x_925 + 1i) % 4i)];
        let x_931 : vec3<f32> = (vec3<f32>(x_920.y, x_920.y, x_920.y) * vec3<f32>(x_929.x, x_929.y, x_929.w));
        let x_932 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_931.x, x_931.y, x_931.z, x_932.w);
        let x_934 : i32 = u_xlati27;
        let x_936 : i32 = u_xlati27;
        let x_939 : vec4<f32> = x_367.x_AdditionalLightsWorldToLights[(x_934 / 4i)][(x_936 % 4i)];
        let x_941 : vec3<f32> = vs_TEXCOORD1;
        let x_944 : vec4<f32> = u_xlat8;
        let x_946 : vec3<f32> = ((vec3<f32>(x_939.x, x_939.y, x_939.w) * vec3<f32>(x_941.x, x_941.x, x_941.x)) + vec3<f32>(x_944.x, x_944.y, x_944.z));
        let x_947 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_946.x, x_946.y, x_946.z, x_947.w);
        let x_949 : i32 = u_xlati27;
        let x_952 : i32 = u_xlati27;
        let x_956 : vec4<f32> = x_367.x_AdditionalLightsWorldToLights[((x_949 + 2i) / 4i)][((x_952 + 2i) % 4i)];
        let x_958 : vec3<f32> = vs_TEXCOORD1;
        let x_961 : vec4<f32> = u_xlat8;
        let x_963 : vec3<f32> = ((vec3<f32>(x_956.x, x_956.y, x_956.w) * vec3<f32>(x_958.z, x_958.z, x_958.z)) + vec3<f32>(x_961.x, x_961.y, x_961.z));
        let x_964 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_963.x, x_963.y, x_963.z, x_964.w);
        let x_966 : vec4<f32> = u_xlat8;
        let x_968 : i32 = u_xlati27;
        let x_971 : i32 = u_xlati27;
        let x_975 : vec4<f32> = x_367.x_AdditionalLightsWorldToLights[((x_968 + 3i) / 4i)][((x_971 + 3i) % 4i)];
        let x_977 : vec3<f32> = (vec3<f32>(x_966.x, x_966.y, x_966.z) + vec3<f32>(x_975.x, x_975.y, x_975.w));
        let x_978 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_977.x, x_977.y, x_977.z, x_978.w);
        let x_980 : vec4<f32> = u_xlat8;
        let x_982 : vec4<f32> = u_xlat8;
        let x_984 : vec2<f32> = (vec2<f32>(x_980.x, x_980.y) / vec2<f32>(x_982.z, x_982.z));
        let x_985 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_984.x, x_985.y, x_984.y);
        let x_987 : vec3<f32> = u_xlat17;
        let x_990 : vec2<f32> = ((vec2<f32>(x_987.x, x_987.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_991 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_990.x, x_991.y, x_990.y);
        let x_993 : vec3<f32> = u_xlat17;
        let x_997 : vec2<f32> = clamp(vec2<f32>(x_993.x, x_993.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_998 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_997.x, x_998.y, x_997.y);
        let x_1000 : i32 = u_xlati34;
        let x_1002 : vec4<f32> = x_367.x_AdditionalLightsCookieAtlasUVRects[x_1000];
        let x_1004 : vec3<f32> = u_xlat17;
        let x_1007 : i32 = u_xlati34;
        let x_1009 : vec4<f32> = x_367.x_AdditionalLightsCookieAtlasUVRects[x_1007];
        let x_1011 : vec2<f32> = ((vec2<f32>(x_1002.x, x_1002.y) * vec2<f32>(x_1004.x, x_1004.z)) + vec2<f32>(x_1009.z, x_1009.w));
        let x_1012 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_1011.x, x_1012.y, x_1011.y);
      } else {
        let x_1015 : i32 = u_xlati7;
        u_xlatb7.x = (x_1015 == 1i);
        let x_1019 : bool = u_xlatb7.x;
        u_xlati7 = select(0i, 1i, x_1019);
        let x_1021 : i32 = u_xlati7;
        if ((x_1021 != 0i)) {
          let x_1025 : vec3<f32> = vs_TEXCOORD1;
          let x_1027 : i32 = u_xlati27;
          let x_1030 : i32 = u_xlati27;
          let x_1034 : vec4<f32> = x_367.x_AdditionalLightsWorldToLights[((x_1027 + 1i) / 4i)][((x_1030 + 1i) % 4i)];
          let x_1036 : vec2<f32> = (vec2<f32>(x_1025.y, x_1025.y) * vec2<f32>(x_1034.x, x_1034.y));
          let x_1037 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1036.x, x_1036.y, x_1037.z, x_1037.w);
          let x_1039 : i32 = u_xlati27;
          let x_1041 : i32 = u_xlati27;
          let x_1044 : vec4<f32> = x_367.x_AdditionalLightsWorldToLights[(x_1039 / 4i)][(x_1041 % 4i)];
          let x_1046 : vec3<f32> = vs_TEXCOORD1;
          let x_1049 : vec4<f32> = u_xlat8;
          let x_1051 : vec2<f32> = ((vec2<f32>(x_1044.x, x_1044.y) * vec2<f32>(x_1046.x, x_1046.x)) + vec2<f32>(x_1049.x, x_1049.y));
          let x_1052 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1051.x, x_1051.y, x_1052.z, x_1052.w);
          let x_1054 : i32 = u_xlati27;
          let x_1057 : i32 = u_xlati27;
          let x_1061 : vec4<f32> = x_367.x_AdditionalLightsWorldToLights[((x_1054 + 2i) / 4i)][((x_1057 + 2i) % 4i)];
          let x_1063 : vec3<f32> = vs_TEXCOORD1;
          let x_1066 : vec4<f32> = u_xlat8;
          let x_1068 : vec2<f32> = ((vec2<f32>(x_1061.x, x_1061.y) * vec2<f32>(x_1063.z, x_1063.z)) + vec2<f32>(x_1066.x, x_1066.y));
          let x_1069 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1068.x, x_1068.y, x_1069.z, x_1069.w);
          let x_1071 : vec4<f32> = u_xlat8;
          let x_1073 : i32 = u_xlati27;
          let x_1076 : i32 = u_xlati27;
          let x_1080 : vec4<f32> = x_367.x_AdditionalLightsWorldToLights[((x_1073 + 3i) / 4i)][((x_1076 + 3i) % 4i)];
          let x_1082 : vec2<f32> = (vec2<f32>(x_1071.x, x_1071.y) + vec2<f32>(x_1080.x, x_1080.y));
          let x_1083 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1082.x, x_1082.y, x_1083.z, x_1083.w);
          let x_1085 : vec4<f32> = u_xlat8;
          let x_1088 : vec2<f32> = ((vec2<f32>(x_1085.x, x_1085.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1089 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1088.x, x_1088.y, x_1089.z, x_1089.w);
          let x_1091 : vec4<f32> = u_xlat8;
          let x_1093 : vec2<f32> = fract(vec2<f32>(x_1091.x, x_1091.y));
          let x_1094 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1093.x, x_1093.y, x_1094.z, x_1094.w);
          let x_1096 : i32 = u_xlati34;
          let x_1098 : vec4<f32> = x_367.x_AdditionalLightsCookieAtlasUVRects[x_1096];
          let x_1100 : vec4<f32> = u_xlat8;
          let x_1103 : i32 = u_xlati34;
          let x_1105 : vec4<f32> = x_367.x_AdditionalLightsCookieAtlasUVRects[x_1103];
          let x_1107 : vec2<f32> = ((vec2<f32>(x_1098.x, x_1098.y) * vec2<f32>(x_1100.x, x_1100.y)) + vec2<f32>(x_1105.z, x_1105.w));
          let x_1108 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_1107.x, x_1108.y, x_1107.y);
        } else {
          let x_1111 : vec3<f32> = vs_TEXCOORD1;
          let x_1113 : i32 = u_xlati27;
          let x_1116 : i32 = u_xlati27;
          let x_1120 : vec4<f32> = x_367.x_AdditionalLightsWorldToLights[((x_1113 + 1i) / 4i)][((x_1116 + 1i) % 4i)];
          u_xlat8 = (vec4<f32>(x_1111.y, x_1111.y, x_1111.y, x_1111.y) * x_1120);
          let x_1122 : i32 = u_xlati27;
          let x_1124 : i32 = u_xlati27;
          let x_1127 : vec4<f32> = x_367.x_AdditionalLightsWorldToLights[(x_1122 / 4i)][(x_1124 % 4i)];
          let x_1128 : vec3<f32> = vs_TEXCOORD1;
          let x_1131 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_1127 * vec4<f32>(x_1128.x, x_1128.x, x_1128.x, x_1128.x)) + x_1131);
          let x_1133 : i32 = u_xlati27;
          let x_1136 : i32 = u_xlati27;
          let x_1140 : vec4<f32> = x_367.x_AdditionalLightsWorldToLights[((x_1133 + 2i) / 4i)][((x_1136 + 2i) % 4i)];
          let x_1141 : vec3<f32> = vs_TEXCOORD1;
          let x_1144 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_1140 * vec4<f32>(x_1141.z, x_1141.z, x_1141.z, x_1141.z)) + x_1144);
          let x_1146 : vec4<f32> = u_xlat8;
          let x_1147 : i32 = u_xlati27;
          let x_1150 : i32 = u_xlati27;
          let x_1154 : vec4<f32> = x_367.x_AdditionalLightsWorldToLights[((x_1147 + 3i) / 4i)][((x_1150 + 3i) % 4i)];
          u_xlat8 = (x_1146 + x_1154);
          let x_1156 : vec4<f32> = u_xlat8;
          let x_1158 : vec4<f32> = u_xlat8;
          let x_1160 : vec3<f32> = (vec3<f32>(x_1156.x, x_1156.y, x_1156.z) / vec3<f32>(x_1158.w, x_1158.w, x_1158.w));
          let x_1161 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1160.x, x_1160.y, x_1160.z, x_1161.w);
          let x_1163 : vec4<f32> = u_xlat8;
          let x_1165 : vec4<f32> = u_xlat8;
          u_xlat7.x = dot(vec3<f32>(x_1163.x, x_1163.y, x_1163.z), vec3<f32>(x_1165.x, x_1165.y, x_1165.z));
          let x_1170 : f32 = u_xlat7.x;
          u_xlat7.x = inverseSqrt(x_1170);
          let x_1173 : vec4<f32> = u_xlat7;
          let x_1175 : vec4<f32> = u_xlat8;
          let x_1177 : vec3<f32> = (vec3<f32>(x_1173.x, x_1173.x, x_1173.x) * vec3<f32>(x_1175.x, x_1175.y, x_1175.z));
          let x_1178 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1177.x, x_1177.y, x_1177.z, x_1178.w);
          let x_1180 : vec4<f32> = u_xlat8;
          u_xlat7.x = dot(abs(vec3<f32>(x_1180.x, x_1180.y, x_1180.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1187 : f32 = u_xlat7.x;
          u_xlat7.x = max(x_1187, 0.00000099999999747524f);
          let x_1192 : f32 = u_xlat7.x;
          u_xlat7.x = (1.0f / x_1192);
          let x_1196 : vec4<f32> = u_xlat7;
          let x_1198 : vec4<f32> = u_xlat8;
          u_xlat9 = (vec3<f32>(x_1196.x, x_1196.x, x_1196.x) * vec3<f32>(x_1198.z, x_1198.x, x_1198.y));
          let x_1202 : f32 = u_xlat9.x;
          u_xlat9.x = -(x_1202);
          let x_1206 : f32 = u_xlat9.x;
          u_xlat9.x = clamp(x_1206, 0.0f, 1.0f);
          let x_1210 : vec3<f32> = u_xlat9;
          let x_1212 : vec4<bool> = (vec4<f32>(x_1210.y, x_1210.z, x_1210.y, x_1210.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb28 = vec2<bool>(x_1212.x, x_1212.y);
          let x_1217 : bool = u_xlatb28.x;
          if (x_1217) {
            let x_1222 : f32 = u_xlat9.x;
            x_1218 = x_1222;
          } else {
            let x_1225 : f32 = u_xlat9.x;
            x_1218 = -(x_1225);
          }
          let x_1227 : f32 = x_1218;
          u_xlat28.x = x_1227;
          let x_1230 : bool = u_xlatb28.y;
          if (x_1230) {
            let x_1235 : f32 = u_xlat9.x;
            x_1231 = x_1235;
          } else {
            let x_1238 : f32 = u_xlat9.x;
            x_1231 = -(x_1238);
          }
          let x_1240 : f32 = x_1231;
          u_xlat28.y = x_1240;
          let x_1242 : vec4<f32> = u_xlat8;
          let x_1244 : vec4<f32> = u_xlat7;
          let x_1247 : vec2<f32> = u_xlat28;
          let x_1248 : vec2<f32> = ((vec2<f32>(x_1242.x, x_1242.y) * vec2<f32>(x_1244.x, x_1244.x)) + x_1247);
          let x_1249 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_1248.x, x_1249.y, x_1248.y, x_1249.w);
          let x_1251 : vec4<f32> = u_xlat7;
          let x_1254 : vec2<f32> = ((vec2<f32>(x_1251.x, x_1251.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1255 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_1254.x, x_1255.y, x_1254.y, x_1255.w);
          let x_1257 : vec4<f32> = u_xlat7;
          let x_1261 : vec2<f32> = clamp(vec2<f32>(x_1257.x, x_1257.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1262 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_1261.x, x_1262.y, x_1261.y, x_1262.w);
          let x_1264 : i32 = u_xlati34;
          let x_1266 : vec4<f32> = x_367.x_AdditionalLightsCookieAtlasUVRects[x_1264];
          let x_1268 : vec4<f32> = u_xlat7;
          let x_1271 : i32 = u_xlati34;
          let x_1273 : vec4<f32> = x_367.x_AdditionalLightsCookieAtlasUVRects[x_1271];
          let x_1275 : vec2<f32> = ((vec2<f32>(x_1266.x, x_1266.y) * vec2<f32>(x_1268.x, x_1268.z)) + vec2<f32>(x_1273.z, x_1273.w));
          let x_1276 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_1275.x, x_1276.y, x_1275.y);
        }
      }
      let x_1283 : vec3<f32> = u_xlat17;
      let x_1285 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1283.x, x_1283.z), 0.0f);
      u_xlat7 = x_1285;
      let x_1288 : bool = u_xlatb4.y;
      if (x_1288) {
        let x_1293 : f32 = u_xlat7.w;
        x_1289 = x_1293;
      } else {
        let x_1296 : f32 = u_xlat7.x;
        x_1289 = x_1296;
      }
      let x_1297 : f32 = x_1289;
      u_xlat37 = x_1297;
      let x_1299 : bool = u_xlatb4.x;
      if (x_1299) {
        let x_1303 : vec4<f32> = u_xlat7;
        x_1300 = vec3<f32>(x_1303.x, x_1303.y, x_1303.z);
      } else {
        let x_1306 : f32 = u_xlat37;
        x_1300 = vec3<f32>(x_1306, x_1306, x_1306);
      }
      let x_1308 : vec3<f32> = x_1300;
      let x_1309 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_1308.x, x_1308.y, x_1308.z, x_1309.w);
    } else {
      u_xlat7.x = 1.0f;
      u_xlat7.y = 1.0f;
      u_xlat7.z = 1.0f;
    }
    let x_1315 : vec4<f32> = u_xlat7;
    let x_1317 : i32 = u_xlati34;
    let x_1319 : vec4<f32> = x_604.x_AdditionalLightsColor[x_1317];
    let x_1321 : vec3<f32> = (vec3<f32>(x_1315.x, x_1315.y, x_1315.z) * vec3<f32>(x_1319.x, x_1319.y, x_1319.z));
    let x_1322 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1321.x, x_1321.y, x_1321.z, x_1322.w);
    let x_1324 : f32 = u_xlat35;
    let x_1325 : f32 = u_xlat36;
    u_xlat34 = (x_1324 * x_1325);
    let x_1327 : f32 = u_xlat34;
    let x_1329 : vec4<f32> = u_xlat7;
    let x_1331 : vec3<f32> = (vec3<f32>(x_1327, x_1327, x_1327) * vec3<f32>(x_1329.x, x_1329.y, x_1329.z));
    let x_1332 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1331.x, x_1331.y, x_1331.z, x_1332.w);
    let x_1334 : vec4<f32> = u_xlat1;
    let x_1336 : vec3<f32> = u_xlat6;
    u_xlat34 = dot(vec3<f32>(x_1334.x, x_1334.y, x_1334.z), x_1336);
    let x_1338 : f32 = u_xlat34;
    u_xlat34 = clamp(x_1338, 0.0f, 1.0f);
    let x_1340 : f32 = u_xlat34;
    let x_1342 : vec4<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_1340, x_1340, x_1340) * vec3<f32>(x_1342.x, x_1342.y, x_1342.z));
    let x_1345 : vec3<f32> = u_xlat6;
    let x_1346 : vec4<f32> = u_xlat0;
    let x_1349 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_1345 * vec3<f32>(x_1346.y, x_1346.z, x_1346.w)) + x_1349);

    continuing {
      let x_1351 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1351 + bitcast<u32>(1i));
    }
  }
  let x_1354 : vec3<f32> = u_xlat12;
  let x_1355 : vec4<f32> = u_xlat0;
  let x_1358 : vec3<f32> = u_xlat13;
  u_xlat10 = ((x_1354 * vec3<f32>(x_1355.y, x_1355.z, x_1355.w)) + x_1358);
  let x_1360 : vec3<f32> = u_xlat5;
  let x_1361 : vec3<f32> = u_xlat10;
  u_xlat10 = (x_1360 + x_1361);
  let x_1363 : f32 = u_xlat2;
  let x_1364 : f32 = u_xlat2;
  u_xlat1.x = (x_1363 * -(x_1364));
  let x_1369 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1369);
  let x_1372 : vec3<f32> = u_xlat10;
  let x_1375 : vec4<f32> = x_45.unity_FogColor;
  u_xlat10 = (x_1372 + -(vec3<f32>(x_1375.x, x_1375.y, x_1375.z)));
  let x_1381 : vec4<f32> = u_xlat1;
  let x_1383 : vec3<f32> = u_xlat10;
  let x_1386 : vec4<f32> = x_45.unity_FogColor;
  let x_1388 : vec3<f32> = ((vec3<f32>(x_1381.x, x_1381.x, x_1381.x) * x_1383) + vec3<f32>(x_1386.x, x_1386.y, x_1386.z));
  let x_1389 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1388.x, x_1388.y, x_1388.z, x_1389.w);
  let x_1393 : f32 = x_57.x_Surface;
  u_xlatb10 = (x_1393 == 1.0f);
  let x_1395 : bool = u_xlatb10;
  if (x_1395) {
    let x_1400 : f32 = u_xlat0.x;
    x_1396 = x_1400;
  } else {
    x_1396 = 1.0f;
  }
  let x_1402 : f32 = x_1396;
  SV_Target0.w = x_1402;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}


