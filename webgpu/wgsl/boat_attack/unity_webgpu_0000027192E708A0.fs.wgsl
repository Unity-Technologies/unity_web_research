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

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

@group(1) @binding(3) var<uniform> x_41 : UnityPerMaterial;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : f32;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_120 : UnityPerDraw;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat31 : f32;

var<private> u_xlat12 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_223 : LightShadows;

var<private> u_xlatb3 : bool;

var<private> u_xlatb13 : vec2<bool>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlat23 : f32;

@group(1) @binding(5) var<uniform> x_296 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatu31 : u32;

var<private> u_xlatb4 : vec2<bool>;

var<private> u_xlatu34 : u32;

var<private> u_xlati35 : i32;

var<private> u_xlat34 : f32;

var<private> u_xlati34 : i32;

var<private> u_xlat6 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_534 : AdditionalLights;

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

@group(0) @binding(6) var sampler_LinearClamp : sampler;

var<private> u_xlat37 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb10 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu24 : u32;

var<private> u_xlatb34 : bool;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_383 : f32;
  var x_394 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_671 : f32;
  var x_683 : f32;
  var txVec1 : vec3<f32>;
  var x_1148 : f32;
  var x_1161 : f32;
  var x_1219 : f32;
  var x_1230 : vec3<f32>;
  var x_1326 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_35);
  u_xlat0 = x_36;
  let x_37 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_41.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_37.w, x_37.x, x_37.y, x_37.z) * vec4<f32>(x_45.w, x_45.x, x_45.y, x_45.z));
  let x_51 : vec3<f32> = vs_TEXCOORD2;
  let x_52 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_51, x_52);
  let x_57 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_57);
  let x_60 : vec4<f32> = u_xlat1;
  let x_62 : vec3<f32> = vs_TEXCOORD2;
  let x_63 : vec3<f32> = (vec3<f32>(x_60.x, x_60.x, x_60.x) * x_62);
  let x_64 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_63.x, x_63.y, x_63.z, x_64.w);
  let x_71 : f32 = vs_TEXCOORD1.y;
  let x_75 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat2 = (x_71 * x_75);
  let x_78 : f32 = x_28.unity_MatrixV[0i].z;
  let x_80 : f32 = vs_TEXCOORD1.x;
  let x_82 : f32 = u_xlat2;
  u_xlat2 = ((x_78 * x_80) + x_82);
  let x_86 : f32 = x_28.unity_MatrixV[2i].z;
  let x_88 : f32 = vs_TEXCOORD1.z;
  let x_90 : f32 = u_xlat2;
  u_xlat2 = ((x_86 * x_88) + x_90);
  let x_92 : f32 = u_xlat2;
  let x_95 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat2 = (x_92 + x_95);
  let x_97 : f32 = u_xlat2;
  let x_101 : f32 = x_28.x_ProjectionParams.y;
  u_xlat2 = (-(x_97) + -(x_101));
  let x_104 : f32 = u_xlat2;
  u_xlat2 = max(x_104, 0.0f);
  let x_107 : f32 = u_xlat2;
  let x_110 : f32 = x_28.unity_FogParams.x;
  u_xlat2 = (x_107 * x_110);
  u_xlat1.w = 1.0f;
  let x_123 : vec4<f32> = x_120.unity_SHAr;
  let x_124 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_123, x_124);
  let x_129 : vec4<f32> = x_120.unity_SHAg;
  let x_130 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_129, x_130);
  let x_135 : vec4<f32> = x_120.unity_SHAb;
  let x_136 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_135, x_136);
  let x_140 : vec4<f32> = u_xlat1;
  let x_142 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_140.y, x_140.z, x_140.z, x_140.x) * vec4<f32>(x_142.x, x_142.y, x_142.z, x_142.z));
  let x_148 : vec4<f32> = x_120.unity_SHBr;
  let x_149 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_148, x_149);
  let x_154 : vec4<f32> = x_120.unity_SHBg;
  let x_155 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_154, x_155);
  let x_160 : vec4<f32> = x_120.unity_SHBb;
  let x_161 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_160, x_161);
  let x_166 : f32 = u_xlat1.y;
  let x_168 : f32 = u_xlat1.y;
  u_xlat31 = (x_166 * x_168);
  let x_171 : f32 = u_xlat1.x;
  let x_173 : f32 = u_xlat1.x;
  let x_175 : f32 = u_xlat31;
  u_xlat31 = ((x_171 * x_173) + -(x_175));
  let x_181 : vec4<f32> = x_120.unity_SHC;
  let x_183 : f32 = u_xlat31;
  let x_186 : vec3<f32> = u_xlat5;
  u_xlat12 = ((vec3<f32>(x_181.x, x_181.y, x_181.z) * vec3<f32>(x_183, x_183, x_183)) + x_186);
  let x_188 : vec3<f32> = u_xlat12;
  let x_189 : vec3<f32> = u_xlat3;
  u_xlat12 = (x_188 + x_189);
  let x_191 : vec3<f32> = u_xlat12;
  u_xlat12 = max(x_191, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_198 : vec4<f32> = vs_TEXCOORD6;
  let x_199 : vec2<f32> = vec2<f32>(x_198.x, x_198.y);
  let x_201 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_199.x, x_199.y, x_201);
  let x_213 : vec3<f32> = txVec0;
  let x_215 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_213.xy, x_213.z);
  u_xlat31 = x_215;
  let x_225 : f32 = x_223.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_225) + 1.0f);
  let x_229 : f32 = u_xlat31;
  let x_231 : f32 = x_223.x_MainLightShadowParams.x;
  let x_234 : f32 = u_xlat3.x;
  u_xlat31 = ((x_229 * x_231) + x_234);
  let x_240 : f32 = vs_TEXCOORD6.z;
  u_xlatb3 = (0.0f >= x_240);
  let x_246 : f32 = vs_TEXCOORD6.z;
  u_xlatb13.x = (x_246 >= 1.0f);
  let x_250 : bool = u_xlatb13.x;
  let x_251 : bool = u_xlatb3;
  u_xlatb3 = (x_250 | x_251);
  let x_253 : bool = u_xlatb3;
  let x_254 : f32 = u_xlat31;
  u_xlat31 = select(x_254, 1.0f, x_253);
  let x_256 : vec3<f32> = vs_TEXCOORD1;
  let x_260 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat3 = (x_256 + -(x_260));
  let x_263 : vec3<f32> = u_xlat3;
  let x_264 : vec3<f32> = u_xlat3;
  u_xlat3.x = dot(x_263, x_264);
  let x_269 : f32 = u_xlat3.x;
  let x_271 : f32 = x_223.x_MainLightShadowParams.z;
  let x_274 : f32 = x_223.x_MainLightShadowParams.w;
  u_xlat13.x = ((x_269 * x_271) + x_274);
  let x_278 : f32 = u_xlat13.x;
  u_xlat13.x = clamp(x_278, 0.0f, 1.0f);
  let x_282 : f32 = u_xlat31;
  u_xlat23 = (-(x_282) + 1.0f);
  let x_286 : f32 = u_xlat13.x;
  let x_287 : f32 = u_xlat23;
  let x_289 : f32 = u_xlat31;
  u_xlat31 = ((x_286 * x_287) + x_289);
  let x_298 : f32 = x_296.x_MainLightCookieTextureFormat;
  u_xlatb13.x = !((x_298 == -1.0f));
  let x_303 : bool = u_xlatb13.x;
  if (x_303) {
    let x_306 : vec3<f32> = vs_TEXCOORD1;
    let x_309 : vec4<f32> = x_296.x_MainLightWorldToLight[1i];
    let x_311 : vec2<f32> = (vec2<f32>(x_306.y, x_306.y) * vec2<f32>(x_309.x, x_309.y));
    let x_312 : vec3<f32> = u_xlat13;
    u_xlat13 = vec3<f32>(x_311.x, x_311.y, x_312.z);
    let x_315 : vec4<f32> = x_296.x_MainLightWorldToLight[0i];
    let x_317 : vec3<f32> = vs_TEXCOORD1;
    let x_320 : vec3<f32> = u_xlat13;
    let x_322 : vec2<f32> = ((vec2<f32>(x_315.x, x_315.y) * vec2<f32>(x_317.x, x_317.x)) + vec2<f32>(x_320.x, x_320.y));
    let x_323 : vec3<f32> = u_xlat13;
    u_xlat13 = vec3<f32>(x_322.x, x_322.y, x_323.z);
    let x_326 : vec4<f32> = x_296.x_MainLightWorldToLight[2i];
    let x_328 : vec3<f32> = vs_TEXCOORD1;
    let x_331 : vec3<f32> = u_xlat13;
    let x_333 : vec2<f32> = ((vec2<f32>(x_326.x, x_326.y) * vec2<f32>(x_328.z, x_328.z)) + vec2<f32>(x_331.x, x_331.y));
    let x_334 : vec3<f32> = u_xlat13;
    u_xlat13 = vec3<f32>(x_333.x, x_333.y, x_334.z);
    let x_336 : vec3<f32> = u_xlat13;
    let x_339 : vec4<f32> = x_296.x_MainLightWorldToLight[3i];
    let x_341 : vec2<f32> = (vec2<f32>(x_336.x, x_336.y) + vec2<f32>(x_339.x, x_339.y));
    let x_342 : vec3<f32> = u_xlat13;
    u_xlat13 = vec3<f32>(x_341.x, x_341.y, x_342.z);
    let x_344 : vec3<f32> = u_xlat13;
    let x_349 : vec2<f32> = ((vec2<f32>(x_344.x, x_344.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_350 : vec3<f32> = u_xlat13;
    u_xlat13 = vec3<f32>(x_349.x, x_349.y, x_350.z);
    let x_357 : vec3<f32> = u_xlat13;
    let x_360 : f32 = x_28.x_GlobalMipBias.x;
    let x_361 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_357.x, x_357.y), x_360);
    u_xlat4 = x_361;
    let x_363 : f32 = x_296.x_MainLightCookieTextureFormat;
    let x_365 : f32 = x_296.x_MainLightCookieTextureFormat;
    let x_367 : f32 = x_296.x_MainLightCookieTextureFormat;
    let x_369 : f32 = x_296.x_MainLightCookieTextureFormat;
    let x_370 : vec4<f32> = vec4<f32>(x_363, x_365, x_367, x_369);
    let x_378 : vec4<bool> = (vec4<f32>(x_370.x, x_370.y, x_370.z, x_370.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb13 = vec2<bool>(x_378.x, x_378.y);
    let x_381 : bool = u_xlatb13.y;
    if (x_381) {
      let x_387 : f32 = u_xlat4.w;
      x_383 = x_387;
    } else {
      let x_390 : f32 = u_xlat4.x;
      x_383 = x_390;
    }
    let x_391 : f32 = x_383;
    u_xlat23 = x_391;
    let x_393 : bool = u_xlatb13.x;
    if (x_393) {
      let x_397 : vec4<f32> = u_xlat4;
      x_394 = vec3<f32>(x_397.x, x_397.y, x_397.z);
    } else {
      let x_400 : f32 = u_xlat23;
      x_394 = vec3<f32>(x_400, x_400, x_400);
    }
    let x_402 : vec3<f32> = x_394;
    u_xlat13 = x_402;
  } else {
    u_xlat13.x = 1.0f;
    u_xlat13.y = 1.0f;
    u_xlat13.z = 1.0f;
  }
  let x_407 : vec3<f32> = u_xlat13;
  let x_409 : vec4<f32> = x_28.x_MainLightColor;
  u_xlat13 = (x_407 * vec3<f32>(x_409.x, x_409.y, x_409.z));
  let x_412 : f32 = u_xlat31;
  let x_414 : f32 = x_120.unity_LightData.z;
  u_xlat31 = (x_412 * x_414);
  let x_416 : f32 = u_xlat31;
  let x_418 : vec3<f32> = u_xlat13;
  u_xlat13 = (vec3<f32>(x_416, x_416, x_416) * x_418);
  let x_420 : vec4<f32> = u_xlat1;
  let x_423 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat31 = dot(vec3<f32>(x_420.x, x_420.y, x_420.z), vec3<f32>(x_423.x, x_423.y, x_423.z));
  let x_426 : f32 = u_xlat31;
  u_xlat31 = clamp(x_426, 0.0f, 1.0f);
  let x_428 : f32 = u_xlat31;
  let x_430 : vec3<f32> = u_xlat13;
  u_xlat13 = (vec3<f32>(x_428, x_428, x_428) * x_430);
  let x_432 : vec4<f32> = u_xlat0;
  let x_434 : vec3<f32> = u_xlat13;
  u_xlat13 = (vec3<f32>(x_432.y, x_432.z, x_432.w) * x_434);
  let x_437 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_439 : f32 = x_120.unity_LightData.y;
  u_xlat31 = min(x_437, x_439);
  let x_443 : f32 = u_xlat31;
  u_xlatu31 = bitcast<u32>(i32(x_443));
  let x_447 : f32 = u_xlat3.x;
  let x_450 : f32 = x_223.x_AdditionalShadowFadeParams.x;
  let x_453 : f32 = x_223.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_447 * x_450) + x_453);
  let x_457 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_457, 0.0f, 1.0f);
  let x_462 : f32 = x_296.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_464 : f32 = x_296.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_466 : f32 = x_296.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_468 : f32 = x_296.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_469 : vec4<f32> = vec4<f32>(x_462, x_464, x_466, x_468);
  let x_475 : vec4<bool> = (vec4<f32>(x_469.x, x_469.y, x_469.z, x_469.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb4 = vec2<bool>(x_475.x, x_475.y);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_487 : u32 = u_xlatu_loop_1;
    let x_488 : u32 = u_xlatu31;
    if ((x_487 < x_488)) {
    } else {
      break;
    }
    let x_491 : u32 = u_xlatu_loop_1;
    u_xlatu34 = (x_491 >> 2u);
    let x_495 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_495 & 3u));
    let x_499 : u32 = u_xlatu34;
    let x_502 : vec4<f32> = x_120.unity_LightIndices[bitcast<i32>(x_499)];
    let x_512 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_517 : vec4<u32> = indexable[x_512];
    u_xlat34 = dot(x_502, bitcast<vec4<f32>>(x_517));
    let x_521 : f32 = u_xlat34;
    u_xlati34 = i32(x_521);
    let x_524 : vec3<f32> = vs_TEXCOORD1;
    let x_535 : i32 = u_xlati34;
    let x_537 : vec4<f32> = x_534.x_AdditionalLightsPosition[x_535];
    let x_540 : i32 = u_xlati34;
    let x_542 : vec4<f32> = x_534.x_AdditionalLightsPosition[x_540];
    u_xlat6 = ((-(x_524) * vec3<f32>(x_537.w, x_537.w, x_537.w)) + vec3<f32>(x_542.x, x_542.y, x_542.z));
    let x_546 : vec3<f32> = u_xlat6;
    let x_547 : vec3<f32> = u_xlat6;
    u_xlat35 = dot(x_546, x_547);
    let x_549 : f32 = u_xlat35;
    u_xlat35 = max(x_549, 0.00006103515625f);
    let x_553 : f32 = u_xlat35;
    u_xlat36 = inverseSqrt(x_553);
    let x_555 : f32 = u_xlat36;
    let x_557 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_555, x_555, x_555) * x_557);
    let x_559 : f32 = u_xlat35;
    u_xlat36 = (1.0f / x_559);
    let x_561 : f32 = u_xlat35;
    let x_562 : i32 = u_xlati34;
    let x_564 : f32 = x_534.x_AdditionalLightsAttenuation[x_562].x;
    u_xlat35 = (x_561 * x_564);
    let x_566 : f32 = u_xlat35;
    let x_568 : f32 = u_xlat35;
    u_xlat35 = ((-(x_566) * x_568) + 1.0f);
    let x_571 : f32 = u_xlat35;
    u_xlat35 = max(x_571, 0.0f);
    let x_573 : f32 = u_xlat35;
    let x_574 : f32 = u_xlat35;
    u_xlat35 = (x_573 * x_574);
    let x_576 : f32 = u_xlat35;
    let x_577 : f32 = u_xlat36;
    u_xlat35 = (x_576 * x_577);
    let x_579 : i32 = u_xlati34;
    let x_581 : vec4<f32> = x_534.x_AdditionalLightsSpotDir[x_579];
    let x_583 : vec3<f32> = u_xlat6;
    u_xlat36 = dot(vec3<f32>(x_581.x, x_581.y, x_581.z), x_583);
    let x_585 : f32 = u_xlat36;
    let x_586 : i32 = u_xlati34;
    let x_588 : f32 = x_534.x_AdditionalLightsAttenuation[x_586].z;
    let x_590 : i32 = u_xlati34;
    let x_592 : f32 = x_534.x_AdditionalLightsAttenuation[x_590].w;
    u_xlat36 = ((x_585 * x_588) + x_592);
    let x_594 : f32 = u_xlat36;
    u_xlat36 = clamp(x_594, 0.0f, 1.0f);
    let x_596 : f32 = u_xlat36;
    let x_597 : f32 = u_xlat36;
    u_xlat36 = (x_596 * x_597);
    let x_599 : f32 = u_xlat35;
    let x_600 : f32 = u_xlat36;
    u_xlat35 = (x_599 * x_600);
    let x_604 : i32 = u_xlati34;
    let x_606 : f32 = x_223.x_AdditionalShadowParams[x_604].w;
    u_xlati36 = i32(x_606);
    let x_611 : i32 = u_xlati36;
    u_xlatb7.x = (x_611 >= 0i);
    let x_615 : bool = u_xlatb7.x;
    if (x_615) {
      let x_619 : i32 = u_xlati34;
      let x_621 : f32 = x_223.x_AdditionalShadowParams[x_619].z;
      u_xlatb7.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_621, x_621, x_621, x_621))));
      let x_627 : bool = u_xlatb7.x;
      if (x_627) {
        let x_630 : vec3<f32> = u_xlat6;
        let x_633 : vec3<f32> = u_xlat6;
        let x_636 : vec4<bool> = (abs(vec4<f32>(x_630.z, x_630.z, x_630.y, x_630.z)) >= abs(vec4<f32>(x_633.x, x_633.y, x_633.x, x_633.x)));
        u_xlatb7 = vec3<bool>(x_636.x, x_636.y, x_636.z);
        let x_639 : bool = u_xlatb7.y;
        let x_641 : bool = u_xlatb7.x;
        u_xlatb7.x = (x_639 & x_641);
        let x_645 : vec3<f32> = u_xlat6;
        let x_648 : vec4<bool> = (-(vec4<f32>(x_645.z, x_645.y, x_645.x, x_645.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb8 = vec3<bool>(x_648.x, x_648.y, x_648.z);
        let x_652 : bool = u_xlatb8.x;
        u_xlat17.x = select(4.0f, 5.0f, x_652);
        let x_658 : bool = u_xlatb8.y;
        u_xlat17.z = select(2.0f, 3.0f, x_658);
        let x_665 : bool = u_xlatb8.z;
        u_xlat8.x = select(0.0f, 1.0f, x_665);
        let x_670 : bool = u_xlatb7.z;
        if (x_670) {
          let x_675 : f32 = u_xlat17.z;
          x_671 = x_675;
        } else {
          let x_678 : f32 = u_xlat8.x;
          x_671 = x_678;
        }
        let x_679 : f32 = x_671;
        u_xlat27 = x_679;
        let x_682 : bool = u_xlatb7.x;
        if (x_682) {
          let x_687 : f32 = u_xlat17.x;
          x_683 = x_687;
        } else {
          let x_689 : f32 = u_xlat27;
          x_683 = x_689;
        }
        let x_690 : f32 = x_683;
        u_xlat7.x = x_690;
        let x_692 : i32 = u_xlati34;
        let x_694 : f32 = x_223.x_AdditionalShadowParams[x_692].w;
        u_xlat17.x = trunc(x_694);
        let x_698 : f32 = u_xlat7.x;
        let x_700 : f32 = u_xlat17.x;
        u_xlat7.x = (x_698 + x_700);
        let x_704 : f32 = u_xlat7.x;
        u_xlati36 = i32(x_704);
      }
      let x_706 : i32 = u_xlati36;
      u_xlati36 = (x_706 << bitcast<u32>(2i));
      let x_708 : vec3<f32> = vs_TEXCOORD1;
      let x_711 : i32 = u_xlati36;
      let x_714 : i32 = u_xlati36;
      let x_718 : vec4<f32> = x_223.x_AdditionalLightsWorldToShadow[((x_711 + 1i) / 4i)][((x_714 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_708.y, x_708.y, x_708.y, x_708.y) * x_718);
      let x_720 : i32 = u_xlati36;
      let x_722 : i32 = u_xlati36;
      let x_725 : vec4<f32> = x_223.x_AdditionalLightsWorldToShadow[(x_720 / 4i)][(x_722 % 4i)];
      let x_726 : vec3<f32> = vs_TEXCOORD1;
      let x_729 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_725 * vec4<f32>(x_726.x, x_726.x, x_726.x, x_726.x)) + x_729);
      let x_731 : i32 = u_xlati36;
      let x_734 : i32 = u_xlati36;
      let x_738 : vec4<f32> = x_223.x_AdditionalLightsWorldToShadow[((x_731 + 2i) / 4i)][((x_734 + 2i) % 4i)];
      let x_739 : vec3<f32> = vs_TEXCOORD1;
      let x_742 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_738 * vec4<f32>(x_739.z, x_739.z, x_739.z, x_739.z)) + x_742);
      let x_744 : vec4<f32> = u_xlat7;
      let x_745 : i32 = u_xlati36;
      let x_748 : i32 = u_xlati36;
      let x_752 : vec4<f32> = x_223.x_AdditionalLightsWorldToShadow[((x_745 + 3i) / 4i)][((x_748 + 3i) % 4i)];
      u_xlat7 = (x_744 + x_752);
      let x_754 : vec4<f32> = u_xlat7;
      let x_756 : vec4<f32> = u_xlat7;
      let x_758 : vec3<f32> = (vec3<f32>(x_754.x, x_754.y, x_754.z) / vec3<f32>(x_756.w, x_756.w, x_756.w));
      let x_759 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_758.x, x_758.y, x_758.z, x_759.w);
      let x_762 : vec4<f32> = u_xlat7;
      let x_763 : vec2<f32> = vec2<f32>(x_762.x, x_762.y);
      let x_765 : f32 = u_xlat7.z;
      txVec1 = vec3<f32>(x_763.x, x_763.y, x_765);
      let x_773 : vec3<f32> = txVec1;
      let x_775 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_773.xy, x_773.z);
      u_xlat36 = x_775;
      let x_776 : i32 = u_xlati34;
      let x_778 : f32 = x_223.x_AdditionalShadowParams[x_776].x;
      u_xlat7.x = (1.0f + -(x_778));
      let x_782 : f32 = u_xlat36;
      let x_783 : i32 = u_xlati34;
      let x_785 : f32 = x_223.x_AdditionalShadowParams[x_783].x;
      let x_788 : f32 = u_xlat7.x;
      u_xlat36 = ((x_782 * x_785) + x_788);
      let x_791 : f32 = u_xlat7.z;
      u_xlatb7.x = (0.0f >= x_791);
      let x_796 : f32 = u_xlat7.z;
      u_xlatb17 = (x_796 >= 1.0f);
      let x_798 : bool = u_xlatb17;
      let x_800 : bool = u_xlatb7.x;
      u_xlatb7.x = (x_798 | x_800);
      let x_804 : bool = u_xlatb7.x;
      let x_805 : f32 = u_xlat36;
      u_xlat36 = select(x_805, 1.0f, x_804);
    } else {
      u_xlat36 = 1.0f;
    }
    let x_808 : f32 = u_xlat36;
    u_xlat7.x = (-(x_808) + 1.0f);
    let x_813 : f32 = u_xlat3.x;
    let x_815 : f32 = u_xlat7.x;
    let x_817 : f32 = u_xlat36;
    u_xlat36 = ((x_813 * x_815) + x_817);
    let x_820 : i32 = u_xlati34;
    u_xlati7 = (1i << bitcast<u32>((x_820 & 31i)));
    let x_824 : i32 = u_xlati7;
    let x_827 : f32 = x_296.x_AdditionalLightsCookieEnableBits;
    u_xlati7 = bitcast<i32>((bitcast<u32>(x_824) & bitcast<u32>(x_827)));
    let x_831 : i32 = u_xlati7;
    if ((x_831 != 0i)) {
      let x_835 : i32 = u_xlati34;
      let x_837 : f32 = x_296.x_AdditionalLightsLightTypes[x_835].el;
      u_xlati7 = i32(x_837);
      let x_840 : i32 = u_xlati7;
      u_xlati17 = select(1i, 0i, (x_840 != 0i));
      let x_844 : i32 = u_xlati34;
      u_xlati27 = (x_844 << bitcast<u32>(2i));
      let x_846 : i32 = u_xlati17;
      if ((x_846 != 0i)) {
        let x_850 : vec3<f32> = vs_TEXCOORD1;
        let x_852 : i32 = u_xlati27;
        let x_855 : i32 = u_xlati27;
        let x_859 : vec4<f32> = x_296.x_AdditionalLightsWorldToLights[((x_852 + 1i) / 4i)][((x_855 + 1i) % 4i)];
        let x_861 : vec3<f32> = (vec3<f32>(x_850.y, x_850.y, x_850.y) * vec3<f32>(x_859.x, x_859.y, x_859.w));
        let x_862 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_861.x, x_861.y, x_861.z, x_862.w);
        let x_864 : i32 = u_xlati27;
        let x_866 : i32 = u_xlati27;
        let x_869 : vec4<f32> = x_296.x_AdditionalLightsWorldToLights[(x_864 / 4i)][(x_866 % 4i)];
        let x_871 : vec3<f32> = vs_TEXCOORD1;
        let x_874 : vec4<f32> = u_xlat8;
        let x_876 : vec3<f32> = ((vec3<f32>(x_869.x, x_869.y, x_869.w) * vec3<f32>(x_871.x, x_871.x, x_871.x)) + vec3<f32>(x_874.x, x_874.y, x_874.z));
        let x_877 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_876.x, x_876.y, x_876.z, x_877.w);
        let x_879 : i32 = u_xlati27;
        let x_882 : i32 = u_xlati27;
        let x_886 : vec4<f32> = x_296.x_AdditionalLightsWorldToLights[((x_879 + 2i) / 4i)][((x_882 + 2i) % 4i)];
        let x_888 : vec3<f32> = vs_TEXCOORD1;
        let x_891 : vec4<f32> = u_xlat8;
        let x_893 : vec3<f32> = ((vec3<f32>(x_886.x, x_886.y, x_886.w) * vec3<f32>(x_888.z, x_888.z, x_888.z)) + vec3<f32>(x_891.x, x_891.y, x_891.z));
        let x_894 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_893.x, x_893.y, x_893.z, x_894.w);
        let x_896 : vec4<f32> = u_xlat8;
        let x_898 : i32 = u_xlati27;
        let x_901 : i32 = u_xlati27;
        let x_905 : vec4<f32> = x_296.x_AdditionalLightsWorldToLights[((x_898 + 3i) / 4i)][((x_901 + 3i) % 4i)];
        let x_907 : vec3<f32> = (vec3<f32>(x_896.x, x_896.y, x_896.z) + vec3<f32>(x_905.x, x_905.y, x_905.w));
        let x_908 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_907.x, x_907.y, x_907.z, x_908.w);
        let x_910 : vec4<f32> = u_xlat8;
        let x_912 : vec4<f32> = u_xlat8;
        let x_914 : vec2<f32> = (vec2<f32>(x_910.x, x_910.y) / vec2<f32>(x_912.z, x_912.z));
        let x_915 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_914.x, x_915.y, x_914.y);
        let x_917 : vec3<f32> = u_xlat17;
        let x_920 : vec2<f32> = ((vec2<f32>(x_917.x, x_917.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_921 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_920.x, x_921.y, x_920.y);
        let x_923 : vec3<f32> = u_xlat17;
        let x_927 : vec2<f32> = clamp(vec2<f32>(x_923.x, x_923.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_928 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_927.x, x_928.y, x_927.y);
        let x_930 : i32 = u_xlati34;
        let x_932 : vec4<f32> = x_296.x_AdditionalLightsCookieAtlasUVRects[x_930];
        let x_934 : vec3<f32> = u_xlat17;
        let x_937 : i32 = u_xlati34;
        let x_939 : vec4<f32> = x_296.x_AdditionalLightsCookieAtlasUVRects[x_937];
        let x_941 : vec2<f32> = ((vec2<f32>(x_932.x, x_932.y) * vec2<f32>(x_934.x, x_934.z)) + vec2<f32>(x_939.z, x_939.w));
        let x_942 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_941.x, x_942.y, x_941.y);
      } else {
        let x_945 : i32 = u_xlati7;
        u_xlatb7.x = (x_945 == 1i);
        let x_949 : bool = u_xlatb7.x;
        u_xlati7 = select(0i, 1i, x_949);
        let x_951 : i32 = u_xlati7;
        if ((x_951 != 0i)) {
          let x_955 : vec3<f32> = vs_TEXCOORD1;
          let x_957 : i32 = u_xlati27;
          let x_960 : i32 = u_xlati27;
          let x_964 : vec4<f32> = x_296.x_AdditionalLightsWorldToLights[((x_957 + 1i) / 4i)][((x_960 + 1i) % 4i)];
          let x_966 : vec2<f32> = (vec2<f32>(x_955.y, x_955.y) * vec2<f32>(x_964.x, x_964.y));
          let x_967 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_966.x, x_966.y, x_967.z, x_967.w);
          let x_969 : i32 = u_xlati27;
          let x_971 : i32 = u_xlati27;
          let x_974 : vec4<f32> = x_296.x_AdditionalLightsWorldToLights[(x_969 / 4i)][(x_971 % 4i)];
          let x_976 : vec3<f32> = vs_TEXCOORD1;
          let x_979 : vec4<f32> = u_xlat8;
          let x_981 : vec2<f32> = ((vec2<f32>(x_974.x, x_974.y) * vec2<f32>(x_976.x, x_976.x)) + vec2<f32>(x_979.x, x_979.y));
          let x_982 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_981.x, x_981.y, x_982.z, x_982.w);
          let x_984 : i32 = u_xlati27;
          let x_987 : i32 = u_xlati27;
          let x_991 : vec4<f32> = x_296.x_AdditionalLightsWorldToLights[((x_984 + 2i) / 4i)][((x_987 + 2i) % 4i)];
          let x_993 : vec3<f32> = vs_TEXCOORD1;
          let x_996 : vec4<f32> = u_xlat8;
          let x_998 : vec2<f32> = ((vec2<f32>(x_991.x, x_991.y) * vec2<f32>(x_993.z, x_993.z)) + vec2<f32>(x_996.x, x_996.y));
          let x_999 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_998.x, x_998.y, x_999.z, x_999.w);
          let x_1001 : vec4<f32> = u_xlat8;
          let x_1003 : i32 = u_xlati27;
          let x_1006 : i32 = u_xlati27;
          let x_1010 : vec4<f32> = x_296.x_AdditionalLightsWorldToLights[((x_1003 + 3i) / 4i)][((x_1006 + 3i) % 4i)];
          let x_1012 : vec2<f32> = (vec2<f32>(x_1001.x, x_1001.y) + vec2<f32>(x_1010.x, x_1010.y));
          let x_1013 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1012.x, x_1012.y, x_1013.z, x_1013.w);
          let x_1015 : vec4<f32> = u_xlat8;
          let x_1018 : vec2<f32> = ((vec2<f32>(x_1015.x, x_1015.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1019 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1018.x, x_1018.y, x_1019.z, x_1019.w);
          let x_1021 : vec4<f32> = u_xlat8;
          let x_1023 : vec2<f32> = fract(vec2<f32>(x_1021.x, x_1021.y));
          let x_1024 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1023.x, x_1023.y, x_1024.z, x_1024.w);
          let x_1026 : i32 = u_xlati34;
          let x_1028 : vec4<f32> = x_296.x_AdditionalLightsCookieAtlasUVRects[x_1026];
          let x_1030 : vec4<f32> = u_xlat8;
          let x_1033 : i32 = u_xlati34;
          let x_1035 : vec4<f32> = x_296.x_AdditionalLightsCookieAtlasUVRects[x_1033];
          let x_1037 : vec2<f32> = ((vec2<f32>(x_1028.x, x_1028.y) * vec2<f32>(x_1030.x, x_1030.y)) + vec2<f32>(x_1035.z, x_1035.w));
          let x_1038 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_1037.x, x_1038.y, x_1037.y);
        } else {
          let x_1041 : vec3<f32> = vs_TEXCOORD1;
          let x_1043 : i32 = u_xlati27;
          let x_1046 : i32 = u_xlati27;
          let x_1050 : vec4<f32> = x_296.x_AdditionalLightsWorldToLights[((x_1043 + 1i) / 4i)][((x_1046 + 1i) % 4i)];
          u_xlat8 = (vec4<f32>(x_1041.y, x_1041.y, x_1041.y, x_1041.y) * x_1050);
          let x_1052 : i32 = u_xlati27;
          let x_1054 : i32 = u_xlati27;
          let x_1057 : vec4<f32> = x_296.x_AdditionalLightsWorldToLights[(x_1052 / 4i)][(x_1054 % 4i)];
          let x_1058 : vec3<f32> = vs_TEXCOORD1;
          let x_1061 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_1057 * vec4<f32>(x_1058.x, x_1058.x, x_1058.x, x_1058.x)) + x_1061);
          let x_1063 : i32 = u_xlati27;
          let x_1066 : i32 = u_xlati27;
          let x_1070 : vec4<f32> = x_296.x_AdditionalLightsWorldToLights[((x_1063 + 2i) / 4i)][((x_1066 + 2i) % 4i)];
          let x_1071 : vec3<f32> = vs_TEXCOORD1;
          let x_1074 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_1070 * vec4<f32>(x_1071.z, x_1071.z, x_1071.z, x_1071.z)) + x_1074);
          let x_1076 : vec4<f32> = u_xlat8;
          let x_1077 : i32 = u_xlati27;
          let x_1080 : i32 = u_xlati27;
          let x_1084 : vec4<f32> = x_296.x_AdditionalLightsWorldToLights[((x_1077 + 3i) / 4i)][((x_1080 + 3i) % 4i)];
          u_xlat8 = (x_1076 + x_1084);
          let x_1086 : vec4<f32> = u_xlat8;
          let x_1088 : vec4<f32> = u_xlat8;
          let x_1090 : vec3<f32> = (vec3<f32>(x_1086.x, x_1086.y, x_1086.z) / vec3<f32>(x_1088.w, x_1088.w, x_1088.w));
          let x_1091 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1090.x, x_1090.y, x_1090.z, x_1091.w);
          let x_1093 : vec4<f32> = u_xlat8;
          let x_1095 : vec4<f32> = u_xlat8;
          u_xlat7.x = dot(vec3<f32>(x_1093.x, x_1093.y, x_1093.z), vec3<f32>(x_1095.x, x_1095.y, x_1095.z));
          let x_1100 : f32 = u_xlat7.x;
          u_xlat7.x = inverseSqrt(x_1100);
          let x_1103 : vec4<f32> = u_xlat7;
          let x_1105 : vec4<f32> = u_xlat8;
          let x_1107 : vec3<f32> = (vec3<f32>(x_1103.x, x_1103.x, x_1103.x) * vec3<f32>(x_1105.x, x_1105.y, x_1105.z));
          let x_1108 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1107.x, x_1107.y, x_1107.z, x_1108.w);
          let x_1110 : vec4<f32> = u_xlat8;
          u_xlat7.x = dot(abs(vec3<f32>(x_1110.x, x_1110.y, x_1110.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1117 : f32 = u_xlat7.x;
          u_xlat7.x = max(x_1117, 0.00000099999999747524f);
          let x_1122 : f32 = u_xlat7.x;
          u_xlat7.x = (1.0f / x_1122);
          let x_1126 : vec4<f32> = u_xlat7;
          let x_1128 : vec4<f32> = u_xlat8;
          u_xlat9 = (vec3<f32>(x_1126.x, x_1126.x, x_1126.x) * vec3<f32>(x_1128.z, x_1128.x, x_1128.y));
          let x_1132 : f32 = u_xlat9.x;
          u_xlat9.x = -(x_1132);
          let x_1136 : f32 = u_xlat9.x;
          u_xlat9.x = clamp(x_1136, 0.0f, 1.0f);
          let x_1140 : vec3<f32> = u_xlat9;
          let x_1142 : vec4<bool> = (vec4<f32>(x_1140.y, x_1140.z, x_1140.y, x_1140.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb28 = vec2<bool>(x_1142.x, x_1142.y);
          let x_1147 : bool = u_xlatb28.x;
          if (x_1147) {
            let x_1152 : f32 = u_xlat9.x;
            x_1148 = x_1152;
          } else {
            let x_1155 : f32 = u_xlat9.x;
            x_1148 = -(x_1155);
          }
          let x_1157 : f32 = x_1148;
          u_xlat28.x = x_1157;
          let x_1160 : bool = u_xlatb28.y;
          if (x_1160) {
            let x_1165 : f32 = u_xlat9.x;
            x_1161 = x_1165;
          } else {
            let x_1168 : f32 = u_xlat9.x;
            x_1161 = -(x_1168);
          }
          let x_1170 : f32 = x_1161;
          u_xlat28.y = x_1170;
          let x_1172 : vec4<f32> = u_xlat8;
          let x_1174 : vec4<f32> = u_xlat7;
          let x_1177 : vec2<f32> = u_xlat28;
          let x_1178 : vec2<f32> = ((vec2<f32>(x_1172.x, x_1172.y) * vec2<f32>(x_1174.x, x_1174.x)) + x_1177);
          let x_1179 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_1178.x, x_1179.y, x_1178.y, x_1179.w);
          let x_1181 : vec4<f32> = u_xlat7;
          let x_1184 : vec2<f32> = ((vec2<f32>(x_1181.x, x_1181.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1185 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_1184.x, x_1185.y, x_1184.y, x_1185.w);
          let x_1187 : vec4<f32> = u_xlat7;
          let x_1191 : vec2<f32> = clamp(vec2<f32>(x_1187.x, x_1187.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1192 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_1191.x, x_1192.y, x_1191.y, x_1192.w);
          let x_1194 : i32 = u_xlati34;
          let x_1196 : vec4<f32> = x_296.x_AdditionalLightsCookieAtlasUVRects[x_1194];
          let x_1198 : vec4<f32> = u_xlat7;
          let x_1201 : i32 = u_xlati34;
          let x_1203 : vec4<f32> = x_296.x_AdditionalLightsCookieAtlasUVRects[x_1201];
          let x_1205 : vec2<f32> = ((vec2<f32>(x_1196.x, x_1196.y) * vec2<f32>(x_1198.x, x_1198.z)) + vec2<f32>(x_1203.z, x_1203.w));
          let x_1206 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_1205.x, x_1206.y, x_1205.y);
        }
      }
      let x_1213 : vec3<f32> = u_xlat17;
      let x_1215 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1213.x, x_1213.z), 0.0f);
      u_xlat7 = x_1215;
      let x_1218 : bool = u_xlatb4.y;
      if (x_1218) {
        let x_1223 : f32 = u_xlat7.w;
        x_1219 = x_1223;
      } else {
        let x_1226 : f32 = u_xlat7.x;
        x_1219 = x_1226;
      }
      let x_1227 : f32 = x_1219;
      u_xlat37 = x_1227;
      let x_1229 : bool = u_xlatb4.x;
      if (x_1229) {
        let x_1233 : vec4<f32> = u_xlat7;
        x_1230 = vec3<f32>(x_1233.x, x_1233.y, x_1233.z);
      } else {
        let x_1236 : f32 = u_xlat37;
        x_1230 = vec3<f32>(x_1236, x_1236, x_1236);
      }
      let x_1238 : vec3<f32> = x_1230;
      let x_1239 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_1238.x, x_1238.y, x_1238.z, x_1239.w);
    } else {
      u_xlat7.x = 1.0f;
      u_xlat7.y = 1.0f;
      u_xlat7.z = 1.0f;
    }
    let x_1245 : vec4<f32> = u_xlat7;
    let x_1247 : i32 = u_xlati34;
    let x_1249 : vec4<f32> = x_534.x_AdditionalLightsColor[x_1247];
    let x_1251 : vec3<f32> = (vec3<f32>(x_1245.x, x_1245.y, x_1245.z) * vec3<f32>(x_1249.x, x_1249.y, x_1249.z));
    let x_1252 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1251.x, x_1251.y, x_1251.z, x_1252.w);
    let x_1254 : f32 = u_xlat35;
    let x_1255 : f32 = u_xlat36;
    u_xlat34 = (x_1254 * x_1255);
    let x_1257 : f32 = u_xlat34;
    let x_1259 : vec4<f32> = u_xlat7;
    let x_1261 : vec3<f32> = (vec3<f32>(x_1257, x_1257, x_1257) * vec3<f32>(x_1259.x, x_1259.y, x_1259.z));
    let x_1262 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1261.x, x_1261.y, x_1261.z, x_1262.w);
    let x_1264 : vec4<f32> = u_xlat1;
    let x_1266 : vec3<f32> = u_xlat6;
    u_xlat34 = dot(vec3<f32>(x_1264.x, x_1264.y, x_1264.z), x_1266);
    let x_1268 : f32 = u_xlat34;
    u_xlat34 = clamp(x_1268, 0.0f, 1.0f);
    let x_1270 : f32 = u_xlat34;
    let x_1272 : vec4<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_1270, x_1270, x_1270) * vec3<f32>(x_1272.x, x_1272.y, x_1272.z));
    let x_1275 : vec3<f32> = u_xlat6;
    let x_1276 : vec4<f32> = u_xlat0;
    let x_1279 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_1275 * vec3<f32>(x_1276.y, x_1276.z, x_1276.w)) + x_1279);

    continuing {
      let x_1281 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1281 + bitcast<u32>(1i));
    }
  }
  let x_1284 : vec3<f32> = u_xlat12;
  let x_1285 : vec4<f32> = u_xlat0;
  let x_1288 : vec3<f32> = u_xlat13;
  u_xlat10 = ((x_1284 * vec3<f32>(x_1285.y, x_1285.z, x_1285.w)) + x_1288);
  let x_1290 : vec3<f32> = u_xlat5;
  let x_1291 : vec3<f32> = u_xlat10;
  u_xlat10 = (x_1290 + x_1291);
  let x_1293 : f32 = u_xlat2;
  let x_1294 : f32 = u_xlat2;
  u_xlat1.x = (x_1293 * -(x_1294));
  let x_1299 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1299);
  let x_1302 : vec3<f32> = u_xlat10;
  let x_1305 : vec4<f32> = x_28.unity_FogColor;
  u_xlat10 = (x_1302 + -(vec3<f32>(x_1305.x, x_1305.y, x_1305.z)));
  let x_1311 : vec4<f32> = u_xlat1;
  let x_1313 : vec3<f32> = u_xlat10;
  let x_1316 : vec4<f32> = x_28.unity_FogColor;
  let x_1318 : vec3<f32> = ((vec3<f32>(x_1311.x, x_1311.x, x_1311.x) * x_1313) + vec3<f32>(x_1316.x, x_1316.y, x_1316.z));
  let x_1319 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1318.x, x_1318.y, x_1318.z, x_1319.w);
  let x_1323 : f32 = x_41.x_Surface;
  u_xlatb10 = (x_1323 == 1.0f);
  let x_1325 : bool = u_xlatb10;
  if (x_1325) {
    let x_1330 : f32 = u_xlat0.x;
    x_1326 = x_1330;
  } else {
    x_1326 = 1.0f;
  }
  let x_1332 : f32 = x_1326;
  SV_Target0.w = x_1332;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


