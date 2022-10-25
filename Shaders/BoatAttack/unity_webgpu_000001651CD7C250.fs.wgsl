struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_ScaleBiasRt : vec4<f32>,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Surface : f32,
}

type Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr,
  unity_ProbesOcclusion : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_LightmapST : vec4<f32>,
  unity_DynamicLightmapST : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_RendererBounds_Min : vec4<f32>,
  unity_RendererBounds_Max : vec4<f32>,
  unity_MatrixPreviousM : mat4x4<f32>,
  unity_MatrixPreviousMI : mat4x4<f32>,
  unity_MotionVectorsParams : vec4<f32>,
  unity_SpriteColor : vec4<f32>,
  unity_SpriteProps : vec4<f32>,
}

type Arr_1 = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr_1,
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  x_MainLightShadowOffset0 : vec4<f32>,
  x_MainLightShadowOffset1 : vec4<f32>,
  x_MainLightShadowParams : vec4<f32>,
  x_MainLightShadowmapSize : vec4<f32>,
}

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_2 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_2,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
}

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

type Arr_7 = array<vec4<f32>, 256u>;

struct strided_arr_1 {
  @size(16)
  el : f32,
}

type Arr_8 = array<strided_arr_1, 256u>;

type Arr_9 = array<vec4<f32>, 256u>;

type Arr_10 = array<strided_arr_1, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_9,
  x_AdditionalLightsColor : Arr_9,
  x_AdditionalLightsAttenuation : Arr_9,
  x_AdditionalLightsSpotDir : Arr_9,
  x_AdditionalLightsOcclusionProbes : Arr_9,
  x_AdditionalLightsLayerMasks : Arr_10,
}

type Arr_11 = array<mat4x4<f32>, 256u>;

struct AdditionalLightsCookies {
  x_AdditionalLightsWorldToLights : Arr_11,
  x_AdditionalLightsCookieAtlasUVRects : Arr_9,
  x_AdditionalLightsLightTypes : Arr_10,
}

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_55 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_87 : UnityPerDraw;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_246 : MainLightShadows;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_332 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_575 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_677 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat31 : f32;
  var u_xlat32 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb13 : vec2<bool>;
  var u_xlatb23 : bool;
  var x_282 : f32;
  var u_xlat23 : f32;
  var x_419 : f32;
  var x_430 : vec3<f32>;
  var u_xlatu31 : u32;
  var u_xlatb4 : vec2<bool>;
  var u_xlat5 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu24 : u32;
  var u_xlati34 : i32;
  var u_xlat24 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat6 : vec3<f32>;
  var u_xlat34 : f32;
  var u_xlat35 : f32;
  var u_xlatu35 : u32;
  var u_xlati36 : i32;
  var u_xlati35 : i32;
  var u_xlati7 : i32;
  var u_xlat17 : vec3<f32>;
  var u_xlatb35 : bool;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlatb7 : vec4<bool>;
  var u_xlat7 : vec4<f32>;
  var x_981 : f32;
  var x_994 : f32;
  var x_1056 : f32;
  var x_1067 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb10 : bool;
  var x_1145 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_49 : f32 = x_43.x_GlobalMipBias.x;
  let x_50 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_40, x_49);
  u_xlat0 = x_50;
  let x_51 : vec4<f32> = u_xlat0;
  let x_58 : vec4<f32> = x_55.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_51.w, x_51.x, x_51.y, x_51.z) * vec4<f32>(x_58.w, x_58.x, x_58.y, x_58.z));
  let x_64 : vec3<f32> = vs_TEXCOORD2;
  let x_65 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_64, x_65);
  let x_70 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_70);
  let x_73 : vec4<f32> = u_xlat1;
  let x_75 : vec3<f32> = vs_TEXCOORD2;
  let x_76 : vec3<f32> = (vec3<f32>(x_73.x, x_73.x, x_73.x) * x_75);
  let x_77 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_76.x, x_76.y, x_76.z, x_77.w);
  u_xlat1.w = 1.0f;
  let x_90 : vec4<f32> = x_87.unity_SHAr;
  let x_91 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_90, x_91);
  let x_96 : vec4<f32> = x_87.unity_SHAg;
  let x_97 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_96, x_97);
  let x_103 : vec4<f32> = x_87.unity_SHAb;
  let x_104 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_103, x_104);
  let x_108 : vec4<f32> = u_xlat1;
  let x_110 : vec4<f32> = u_xlat1;
  u_xlat3 = (vec4<f32>(x_108.y, x_108.z, x_108.z, x_108.x) * vec4<f32>(x_110.x, x_110.y, x_110.z, x_110.z));
  let x_116 : vec4<f32> = x_87.unity_SHBr;
  let x_117 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_116, x_117);
  let x_122 : vec4<f32> = x_87.unity_SHBg;
  let x_123 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_122, x_123);
  let x_128 : vec4<f32> = x_87.unity_SHBb;
  let x_129 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_128, x_129);
  let x_134 : f32 = u_xlat1.y;
  let x_136 : f32 = u_xlat1.y;
  u_xlat31 = (x_134 * x_136);
  let x_139 : f32 = u_xlat1.x;
  let x_141 : f32 = u_xlat1.x;
  let x_143 : f32 = u_xlat31;
  u_xlat31 = ((x_139 * x_141) + -(x_143));
  let x_148 : vec4<f32> = x_87.unity_SHC;
  let x_150 : f32 = u_xlat31;
  let x_153 : vec4<f32> = u_xlat4;
  let x_155 : vec3<f32> = ((vec3<f32>(x_148.x, x_148.y, x_148.z) * vec3<f32>(x_150, x_150, x_150)) + vec3<f32>(x_153.x, x_153.y, x_153.z));
  let x_156 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_155.x, x_155.y, x_155.z, x_156.w);
  let x_158 : vec3<f32> = u_xlat2;
  let x_159 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_158 + vec3<f32>(x_159.x, x_159.y, x_159.z));
  let x_162 : vec3<f32> = u_xlat2;
  u_xlat2 = max(x_162, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_169 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_170 : vec2<f32> = vec2<f32>(x_169.x, x_169.y);
  let x_174 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_170.x, x_170.y));
  let x_175 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_174.x, x_174.y, x_175.z, x_175.w);
  let x_177 : vec4<f32> = u_xlat3;
  let x_179 : vec4<f32> = hlslcc_FragCoord;
  let x_181 : vec2<f32> = (vec2<f32>(x_177.x, x_177.y) * vec2<f32>(x_179.x, x_179.y));
  let x_182 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_181.x, x_181.y, x_182.z, x_182.w);
  let x_185 : f32 = u_xlat3.y;
  let x_188 : f32 = x_43.x_ScaleBiasRt.x;
  let x_191 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat31 = ((x_185 * x_188) + x_191);
  let x_193 : f32 = u_xlat31;
  u_xlat3.z = (-(x_193) + 1.0f);
  let x_202 : vec4<f32> = u_xlat3;
  let x_205 : f32 = x_43.x_GlobalMipBias.x;
  let x_206 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_202.x, x_202.z), x_205);
  u_xlat31 = x_206.x;
  let x_209 : f32 = u_xlat31;
  u_xlat32 = (x_209 + -1.0f);
  let x_214 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_215 : f32 = u_xlat32;
  u_xlat32 = ((x_214 * x_215) + 1.0f);
  let x_218 : f32 = u_xlat31;
  u_xlat31 = min(x_218, 1.0f);
  let x_222 : vec4<f32> = vs_TEXCOORD6;
  let x_223 : vec2<f32> = vec2<f32>(x_222.x, x_222.y);
  let x_225 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_223.x, x_223.y, x_225);
  let x_237 : vec3<f32> = txVec0;
  let x_239 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_237.xy, x_237.z);
  u_xlat3.x = x_239;
  let x_249 : f32 = x_246.x_MainLightShadowParams.x;
  u_xlat13.x = (-(x_249) + 1.0f);
  let x_254 : f32 = u_xlat3.x;
  let x_256 : f32 = x_246.x_MainLightShadowParams.x;
  let x_259 : f32 = u_xlat13.x;
  u_xlat3.x = ((x_254 * x_256) + x_259);
  let x_267 : f32 = vs_TEXCOORD6.z;
  u_xlatb13.x = (0.0f >= x_267);
  let x_273 : f32 = vs_TEXCOORD6.z;
  u_xlatb23 = (x_273 >= 1.0f);
  let x_275 : bool = u_xlatb23;
  let x_277 : bool = u_xlatb13.x;
  u_xlatb13.x = (x_275 | x_277);
  let x_281 : bool = u_xlatb13.x;
  if (x_281) {
    x_282 = 1.0f;
  } else {
    let x_287 : f32 = u_xlat3.x;
    x_282 = x_287;
  }
  let x_288 : f32 = x_282;
  u_xlat3.x = x_288;
  let x_291 : vec3<f32> = vs_TEXCOORD1;
  let x_295 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  u_xlat13 = (x_291 + -(x_295));
  let x_298 : vec3<f32> = u_xlat13;
  let x_299 : vec3<f32> = u_xlat13;
  u_xlat13.x = dot(x_298, x_299);
  let x_303 : f32 = u_xlat13.x;
  let x_305 : f32 = x_246.x_MainLightShadowParams.z;
  let x_308 : f32 = x_246.x_MainLightShadowParams.w;
  u_xlat13.x = ((x_303 * x_305) + x_308);
  let x_312 : f32 = u_xlat13.x;
  u_xlat13.x = clamp(x_312, 0.0f, 1.0f);
  let x_317 : f32 = u_xlat3.x;
  u_xlat23 = (-(x_317) + 1.0f);
  let x_321 : f32 = u_xlat13.x;
  let x_322 : f32 = u_xlat23;
  let x_325 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_321 * x_322) + x_325);
  let x_335 : f32 = x_332.x_MainLightCookieTextureFormat;
  u_xlatb13.x = !((x_335 == -1.0f));
  let x_339 : bool = u_xlatb13.x;
  if (x_339) {
    let x_342 : vec3<f32> = vs_TEXCOORD1;
    let x_345 : vec4<f32> = x_332.x_MainLightWorldToLight[1i];
    let x_347 : vec2<f32> = (vec2<f32>(x_342.y, x_342.y) * vec2<f32>(x_345.x, x_345.y));
    let x_348 : vec3<f32> = u_xlat13;
    u_xlat13 = vec3<f32>(x_347.x, x_347.y, x_348.z);
    let x_351 : vec4<f32> = x_332.x_MainLightWorldToLight[0i];
    let x_353 : vec3<f32> = vs_TEXCOORD1;
    let x_356 : vec3<f32> = u_xlat13;
    let x_358 : vec2<f32> = ((vec2<f32>(x_351.x, x_351.y) * vec2<f32>(x_353.x, x_353.x)) + vec2<f32>(x_356.x, x_356.y));
    let x_359 : vec3<f32> = u_xlat13;
    u_xlat13 = vec3<f32>(x_358.x, x_358.y, x_359.z);
    let x_362 : vec4<f32> = x_332.x_MainLightWorldToLight[2i];
    let x_364 : vec3<f32> = vs_TEXCOORD1;
    let x_367 : vec3<f32> = u_xlat13;
    let x_369 : vec2<f32> = ((vec2<f32>(x_362.x, x_362.y) * vec2<f32>(x_364.z, x_364.z)) + vec2<f32>(x_367.x, x_367.y));
    let x_370 : vec3<f32> = u_xlat13;
    u_xlat13 = vec3<f32>(x_369.x, x_369.y, x_370.z);
    let x_372 : vec3<f32> = u_xlat13;
    let x_376 : vec4<f32> = x_332.x_MainLightWorldToLight[3i];
    let x_378 : vec2<f32> = (vec2<f32>(x_372.x, x_372.y) + vec2<f32>(x_376.x, x_376.y));
    let x_379 : vec3<f32> = u_xlat13;
    u_xlat13 = vec3<f32>(x_378.x, x_378.y, x_379.z);
    let x_381 : vec3<f32> = u_xlat13;
    let x_386 : vec2<f32> = ((vec2<f32>(x_381.x, x_381.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_387 : vec3<f32> = u_xlat13;
    u_xlat13 = vec3<f32>(x_386.x, x_386.y, x_387.z);
    let x_394 : vec3<f32> = u_xlat13;
    let x_397 : f32 = x_43.x_GlobalMipBias.x;
    let x_398 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_394.x, x_394.y), x_397);
    u_xlat4 = x_398;
    let x_400 : f32 = x_332.x_MainLightCookieTextureFormat;
    let x_402 : f32 = x_332.x_MainLightCookieTextureFormat;
    let x_404 : f32 = x_332.x_MainLightCookieTextureFormat;
    let x_406 : f32 = x_332.x_MainLightCookieTextureFormat;
    let x_407 : vec4<f32> = vec4<f32>(x_400, x_402, x_404, x_406);
    let x_415 : vec4<bool> = (vec4<f32>(x_407.x, x_407.y, x_407.z, x_407.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb13 = vec2<bool>(x_415.x, x_415.y);
    let x_418 : bool = u_xlatb13.y;
    if (x_418) {
      let x_423 : f32 = u_xlat4.w;
      x_419 = x_423;
    } else {
      let x_426 : f32 = u_xlat4.x;
      x_419 = x_426;
    }
    let x_427 : f32 = x_419;
    u_xlat23 = x_427;
    let x_429 : bool = u_xlatb13.x;
    if (x_429) {
      let x_433 : vec4<f32> = u_xlat4;
      x_430 = vec3<f32>(x_433.x, x_433.y, x_433.z);
    } else {
      let x_436 : f32 = u_xlat23;
      x_430 = vec3<f32>(x_436, x_436, x_436);
    }
    let x_438 : vec3<f32> = x_430;
    u_xlat13 = x_438;
  } else {
    u_xlat13.x = 1.0f;
    u_xlat13.y = 1.0f;
    u_xlat13.z = 1.0f;
  }
  let x_443 : vec3<f32> = u_xlat13;
  let x_445 : vec4<f32> = x_43.x_MainLightColor;
  u_xlat13 = (x_443 * vec3<f32>(x_445.x, x_445.y, x_445.z));
  let x_448 : f32 = u_xlat32;
  let x_450 : vec3<f32> = u_xlat13;
  u_xlat13 = (vec3<f32>(x_448, x_448, x_448) * x_450);
  let x_452 : f32 = u_xlat31;
  let x_454 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_452, x_452, x_452) * x_454);
  let x_457 : f32 = u_xlat3.x;
  let x_460 : f32 = x_87.unity_LightData.z;
  u_xlat31 = (x_457 * x_460);
  let x_462 : f32 = u_xlat31;
  let x_464 : vec3<f32> = u_xlat13;
  let x_465 : vec3<f32> = (vec3<f32>(x_462, x_462, x_462) * x_464);
  let x_466 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_465.x, x_465.y, x_465.z, x_466.w);
  let x_468 : vec4<f32> = u_xlat1;
  let x_471 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat31 = dot(vec3<f32>(x_468.x, x_468.y, x_468.z), vec3<f32>(x_471.x, x_471.y, x_471.z));
  let x_474 : f32 = u_xlat31;
  u_xlat31 = clamp(x_474, 0.0f, 1.0f);
  let x_476 : f32 = u_xlat31;
  let x_478 : vec4<f32> = u_xlat3;
  let x_480 : vec3<f32> = (vec3<f32>(x_476, x_476, x_476) * vec3<f32>(x_478.x, x_478.y, x_478.z));
  let x_481 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_480.x, x_480.y, x_480.z, x_481.w);
  let x_483 : vec4<f32> = u_xlat0;
  let x_485 : vec4<f32> = u_xlat3;
  let x_487 : vec3<f32> = (vec3<f32>(x_483.y, x_483.z, x_483.w) * vec3<f32>(x_485.x, x_485.y, x_485.z));
  let x_488 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_487.x, x_487.y, x_487.z, x_488.w);
  let x_491 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_493 : f32 = x_87.unity_LightData.y;
  u_xlat31 = min(x_491, x_493);
  let x_497 : f32 = u_xlat31;
  u_xlatu31 = bitcast<u32>(i32(x_497));
  let x_502 : f32 = x_332.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_504 : f32 = x_332.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_506 : f32 = x_332.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_508 : f32 = x_332.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_509 : vec4<f32> = vec4<f32>(x_502, x_504, x_506, x_508);
  let x_515 : vec4<bool> = (vec4<f32>(x_509.x, x_509.y, x_509.z, x_509.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb4 = vec2<bool>(x_515.x, x_515.y);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_527 : u32 = u_xlatu_loop_1;
    let x_528 : u32 = u_xlatu31;
    if ((x_527 < x_528)) {
    } else {
      break;
    }
    let x_531 : u32 = u_xlatu_loop_1;
    u_xlatu24 = (x_531 >> 2u);
    let x_535 : u32 = u_xlatu_loop_1;
    u_xlati34 = bitcast<i32>((x_535 & 3u));
    let x_539 : u32 = u_xlatu24;
    let x_542 : vec4<f32> = x_87.unity_LightIndices[bitcast<i32>(x_539)];
    let x_552 : i32 = u_xlati34;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_557 : vec4<u32> = indexable[x_552];
    u_xlat24 = dot(x_542, bitcast<vec4<f32>>(x_557));
    let x_560 : f32 = u_xlat24;
    u_xlatu24 = bitcast<u32>(i32(x_560));
    let x_564 : vec3<f32> = vs_TEXCOORD1;
    let x_576 : u32 = u_xlatu24;
    let x_579 : vec4<f32> = x_575.x_AdditionalLightsPosition[bitcast<i32>(x_576)];
    let x_582 : u32 = u_xlatu24;
    let x_585 : vec4<f32> = x_575.x_AdditionalLightsPosition[bitcast<i32>(x_582)];
    u_xlat6 = ((-(x_564) * vec3<f32>(x_579.w, x_579.w, x_579.w)) + vec3<f32>(x_585.x, x_585.y, x_585.z));
    let x_589 : vec3<f32> = u_xlat6;
    let x_590 : vec3<f32> = u_xlat6;
    u_xlat34 = dot(x_589, x_590);
    let x_592 : f32 = u_xlat34;
    u_xlat34 = max(x_592, 6.10351562e-05f);
    let x_596 : f32 = u_xlat34;
    u_xlat35 = inverseSqrt(x_596);
    let x_598 : f32 = u_xlat35;
    let x_600 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_598, x_598, x_598) * x_600);
    let x_602 : f32 = u_xlat34;
    u_xlat35 = (1.0f / x_602);
    let x_604 : f32 = u_xlat34;
    let x_605 : u32 = u_xlatu24;
    let x_608 : f32 = x_575.x_AdditionalLightsAttenuation[bitcast<i32>(x_605)].x;
    u_xlat34 = (x_604 * x_608);
    let x_610 : f32 = u_xlat34;
    let x_612 : f32 = u_xlat34;
    u_xlat34 = ((-(x_610) * x_612) + 1.0f);
    let x_615 : f32 = u_xlat34;
    u_xlat34 = max(x_615, 0.0f);
    let x_617 : f32 = u_xlat34;
    let x_618 : f32 = u_xlat34;
    u_xlat34 = (x_617 * x_618);
    let x_620 : f32 = u_xlat34;
    let x_621 : f32 = u_xlat35;
    u_xlat34 = (x_620 * x_621);
    let x_623 : u32 = u_xlatu24;
    let x_626 : vec4<f32> = x_575.x_AdditionalLightsSpotDir[bitcast<i32>(x_623)];
    let x_628 : vec3<f32> = u_xlat6;
    u_xlat35 = dot(vec3<f32>(x_626.x, x_626.y, x_626.z), x_628);
    let x_630 : f32 = u_xlat35;
    let x_631 : u32 = u_xlatu24;
    let x_634 : f32 = x_575.x_AdditionalLightsAttenuation[bitcast<i32>(x_631)].z;
    let x_636 : u32 = u_xlatu24;
    let x_639 : f32 = x_575.x_AdditionalLightsAttenuation[bitcast<i32>(x_636)].w;
    u_xlat35 = ((x_630 * x_634) + x_639);
    let x_641 : f32 = u_xlat35;
    u_xlat35 = clamp(x_641, 0.0f, 1.0f);
    let x_643 : f32 = u_xlat35;
    let x_644 : f32 = u_xlat35;
    u_xlat35 = (x_643 * x_644);
    let x_646 : f32 = u_xlat34;
    let x_647 : f32 = u_xlat35;
    u_xlat34 = (x_646 * x_647);
    let x_650 : u32 = u_xlatu24;
    u_xlatu35 = (x_650 >> 5u);
    let x_653 : u32 = u_xlatu24;
    u_xlati36 = (1i << bitcast<u32>((bitcast<i32>(x_653) & 31i)));
    let x_659 : i32 = u_xlati36;
    let x_661 : u32 = u_xlatu35;
    let x_664 : f32 = x_332.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_661)].el;
    u_xlati35 = bitcast<i32>((bitcast<u32>(x_659) & bitcast<u32>(x_664)));
    let x_668 : i32 = u_xlati35;
    if ((x_668 != 0i)) {
      let x_678 : u32 = u_xlatu24;
      let x_681 : f32 = x_677.x_AdditionalLightsLightTypes[bitcast<i32>(x_678)].el;
      u_xlati35 = i32(x_681);
      let x_683 : i32 = u_xlati35;
      u_xlati36 = select(1i, 0i, (x_683 != 0i));
      let x_687 : u32 = u_xlatu24;
      u_xlati7 = (bitcast<i32>(x_687) << bitcast<u32>(2i));
      let x_690 : i32 = u_xlati36;
      if ((x_690 != 0i)) {
        let x_695 : vec3<f32> = vs_TEXCOORD1;
        let x_697 : i32 = u_xlati7;
        let x_700 : i32 = u_xlati7;
        let x_704 : vec4<f32> = x_677.x_AdditionalLightsWorldToLights[((x_697 + 1i) / 4i)][((x_700 + 1i) % 4i)];
        u_xlat17 = (vec3<f32>(x_695.y, x_695.y, x_695.y) * vec3<f32>(x_704.x, x_704.y, x_704.w));
        let x_707 : i32 = u_xlati7;
        let x_709 : i32 = u_xlati7;
        let x_712 : vec4<f32> = x_677.x_AdditionalLightsWorldToLights[(x_707 / 4i)][(x_709 % 4i)];
        let x_714 : vec3<f32> = vs_TEXCOORD1;
        let x_717 : vec3<f32> = u_xlat17;
        u_xlat17 = ((vec3<f32>(x_712.x, x_712.y, x_712.w) * vec3<f32>(x_714.x, x_714.x, x_714.x)) + x_717);
        let x_719 : i32 = u_xlati7;
        let x_722 : i32 = u_xlati7;
        let x_726 : vec4<f32> = x_677.x_AdditionalLightsWorldToLights[((x_719 + 2i) / 4i)][((x_722 + 2i) % 4i)];
        let x_728 : vec3<f32> = vs_TEXCOORD1;
        let x_731 : vec3<f32> = u_xlat17;
        u_xlat17 = ((vec3<f32>(x_726.x, x_726.y, x_726.w) * vec3<f32>(x_728.z, x_728.z, x_728.z)) + x_731);
        let x_733 : vec3<f32> = u_xlat17;
        let x_734 : i32 = u_xlati7;
        let x_737 : i32 = u_xlati7;
        let x_741 : vec4<f32> = x_677.x_AdditionalLightsWorldToLights[((x_734 + 3i) / 4i)][((x_737 + 3i) % 4i)];
        u_xlat17 = (x_733 + vec3<f32>(x_741.x, x_741.y, x_741.w));
        let x_744 : vec3<f32> = u_xlat17;
        let x_746 : vec3<f32> = u_xlat17;
        let x_748 : vec2<f32> = (vec2<f32>(x_744.x, x_744.y) / vec2<f32>(x_746.z, x_746.z));
        let x_749 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_748.x, x_748.y, x_749.z);
        let x_751 : vec3<f32> = u_xlat17;
        let x_754 : vec2<f32> = ((vec2<f32>(x_751.x, x_751.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_755 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_754.x, x_754.y, x_755.z);
        let x_757 : vec3<f32> = u_xlat17;
        let x_761 : vec2<f32> = clamp(vec2<f32>(x_757.x, x_757.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_762 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_761.x, x_761.y, x_762.z);
        let x_764 : u32 = u_xlatu24;
        let x_767 : vec4<f32> = x_677.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_764)];
        let x_769 : vec3<f32> = u_xlat17;
        let x_772 : u32 = u_xlatu24;
        let x_775 : vec4<f32> = x_677.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_772)];
        let x_777 : vec2<f32> = ((vec2<f32>(x_767.x, x_767.y) * vec2<f32>(x_769.x, x_769.y)) + vec2<f32>(x_775.z, x_775.w));
        let x_778 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_777.x, x_777.y, x_778.z);
      } else {
        let x_782 : i32 = u_xlati35;
        u_xlatb35 = (x_782 == 1i);
        let x_784 : bool = u_xlatb35;
        u_xlati35 = select(0i, 1i, x_784);
        let x_786 : i32 = u_xlati35;
        if ((x_786 != 0i)) {
          let x_791 : vec3<f32> = vs_TEXCOORD1;
          let x_793 : i32 = u_xlati7;
          let x_796 : i32 = u_xlati7;
          let x_800 : vec4<f32> = x_677.x_AdditionalLightsWorldToLights[((x_793 + 1i) / 4i)][((x_796 + 1i) % 4i)];
          let x_802 : vec2<f32> = (vec2<f32>(x_791.y, x_791.y) * vec2<f32>(x_800.x, x_800.y));
          let x_803 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_802.x, x_802.y, x_803.z, x_803.w);
          let x_805 : i32 = u_xlati7;
          let x_807 : i32 = u_xlati7;
          let x_810 : vec4<f32> = x_677.x_AdditionalLightsWorldToLights[(x_805 / 4i)][(x_807 % 4i)];
          let x_812 : vec3<f32> = vs_TEXCOORD1;
          let x_815 : vec4<f32> = u_xlat8;
          let x_817 : vec2<f32> = ((vec2<f32>(x_810.x, x_810.y) * vec2<f32>(x_812.x, x_812.x)) + vec2<f32>(x_815.x, x_815.y));
          let x_818 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_817.x, x_817.y, x_818.z, x_818.w);
          let x_820 : i32 = u_xlati7;
          let x_823 : i32 = u_xlati7;
          let x_827 : vec4<f32> = x_677.x_AdditionalLightsWorldToLights[((x_820 + 2i) / 4i)][((x_823 + 2i) % 4i)];
          let x_829 : vec3<f32> = vs_TEXCOORD1;
          let x_832 : vec4<f32> = u_xlat8;
          let x_834 : vec2<f32> = ((vec2<f32>(x_827.x, x_827.y) * vec2<f32>(x_829.z, x_829.z)) + vec2<f32>(x_832.x, x_832.y));
          let x_835 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_834.x, x_834.y, x_835.z, x_835.w);
          let x_837 : vec4<f32> = u_xlat8;
          let x_839 : i32 = u_xlati7;
          let x_842 : i32 = u_xlati7;
          let x_846 : vec4<f32> = x_677.x_AdditionalLightsWorldToLights[((x_839 + 3i) / 4i)][((x_842 + 3i) % 4i)];
          let x_848 : vec2<f32> = (vec2<f32>(x_837.x, x_837.y) + vec2<f32>(x_846.x, x_846.y));
          let x_849 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_848.x, x_848.y, x_849.z, x_849.w);
          let x_851 : vec4<f32> = u_xlat8;
          let x_854 : vec2<f32> = ((vec2<f32>(x_851.x, x_851.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_855 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_854.x, x_854.y, x_855.z, x_855.w);
          let x_857 : vec4<f32> = u_xlat8;
          let x_859 : vec2<f32> = fract(vec2<f32>(x_857.x, x_857.y));
          let x_860 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_859.x, x_859.y, x_860.z, x_860.w);
          let x_862 : u32 = u_xlatu24;
          let x_865 : vec4<f32> = x_677.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_862)];
          let x_867 : vec4<f32> = u_xlat8;
          let x_870 : u32 = u_xlatu24;
          let x_873 : vec4<f32> = x_677.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_870)];
          let x_875 : vec2<f32> = ((vec2<f32>(x_865.x, x_865.y) * vec2<f32>(x_867.x, x_867.y)) + vec2<f32>(x_873.z, x_873.w));
          let x_876 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_875.x, x_875.y, x_876.z);
        } else {
          let x_879 : vec3<f32> = vs_TEXCOORD1;
          let x_881 : i32 = u_xlati7;
          let x_884 : i32 = u_xlati7;
          let x_888 : vec4<f32> = x_677.x_AdditionalLightsWorldToLights[((x_881 + 1i) / 4i)][((x_884 + 1i) % 4i)];
          u_xlat8 = (vec4<f32>(x_879.y, x_879.y, x_879.y, x_879.y) * x_888);
          let x_890 : i32 = u_xlati7;
          let x_892 : i32 = u_xlati7;
          let x_895 : vec4<f32> = x_677.x_AdditionalLightsWorldToLights[(x_890 / 4i)][(x_892 % 4i)];
          let x_896 : vec3<f32> = vs_TEXCOORD1;
          let x_899 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_895 * vec4<f32>(x_896.x, x_896.x, x_896.x, x_896.x)) + x_899);
          let x_901 : i32 = u_xlati7;
          let x_904 : i32 = u_xlati7;
          let x_908 : vec4<f32> = x_677.x_AdditionalLightsWorldToLights[((x_901 + 2i) / 4i)][((x_904 + 2i) % 4i)];
          let x_909 : vec3<f32> = vs_TEXCOORD1;
          let x_912 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_908 * vec4<f32>(x_909.z, x_909.z, x_909.z, x_909.z)) + x_912);
          let x_914 : vec4<f32> = u_xlat8;
          let x_915 : i32 = u_xlati7;
          let x_918 : i32 = u_xlati7;
          let x_922 : vec4<f32> = x_677.x_AdditionalLightsWorldToLights[((x_915 + 3i) / 4i)][((x_918 + 3i) % 4i)];
          u_xlat8 = (x_914 + x_922);
          let x_924 : vec4<f32> = u_xlat8;
          let x_926 : vec4<f32> = u_xlat8;
          let x_928 : vec3<f32> = (vec3<f32>(x_924.x, x_924.y, x_924.z) / vec3<f32>(x_926.w, x_926.w, x_926.w));
          let x_929 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_928.x, x_928.y, x_928.z, x_929.w);
          let x_931 : vec4<f32> = u_xlat8;
          let x_933 : vec4<f32> = u_xlat8;
          u_xlat35 = dot(vec3<f32>(x_931.x, x_931.y, x_931.z), vec3<f32>(x_933.x, x_933.y, x_933.z));
          let x_936 : f32 = u_xlat35;
          u_xlat35 = inverseSqrt(x_936);
          let x_938 : f32 = u_xlat35;
          let x_940 : vec4<f32> = u_xlat8;
          let x_942 : vec3<f32> = (vec3<f32>(x_938, x_938, x_938) * vec3<f32>(x_940.x, x_940.y, x_940.z));
          let x_943 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_942.x, x_942.y, x_942.z, x_943.w);
          let x_945 : vec4<f32> = u_xlat8;
          u_xlat35 = dot(abs(vec3<f32>(x_945.x, x_945.y, x_945.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_950 : f32 = u_xlat35;
          u_xlat35 = max(x_950, 0.000001f);
          let x_953 : f32 = u_xlat35;
          u_xlat35 = (1.0f / x_953);
          let x_956 : f32 = u_xlat35;
          let x_958 : vec4<f32> = u_xlat8;
          u_xlat9 = (vec3<f32>(x_956, x_956, x_956) * vec3<f32>(x_958.z, x_958.x, x_958.y));
          let x_962 : f32 = u_xlat9.x;
          u_xlat9.x = -(x_962);
          let x_966 : f32 = u_xlat9.x;
          u_xlat9.x = clamp(x_966, 0.0f, 1.0f);
          let x_971 : vec3<f32> = u_xlat9;
          let x_974 : vec4<bool> = (vec4<f32>(x_971.y, x_971.y, x_971.y, x_971.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_975 : vec2<bool> = vec2<bool>(x_974.x, x_974.w);
          let x_976 : vec4<bool> = u_xlatb7;
          u_xlatb7 = vec4<bool>(x_975.x, x_976.y, x_976.z, x_975.y);
          let x_980 : bool = u_xlatb7.x;
          if (x_980) {
            let x_985 : f32 = u_xlat9.x;
            x_981 = x_985;
          } else {
            let x_988 : f32 = u_xlat9.x;
            x_981 = -(x_988);
          }
          let x_990 : f32 = x_981;
          u_xlat7.x = x_990;
          let x_993 : bool = u_xlatb7.w;
          if (x_993) {
            let x_998 : f32 = u_xlat9.x;
            x_994 = x_998;
          } else {
            let x_1001 : f32 = u_xlat9.x;
            x_994 = -(x_1001);
          }
          let x_1003 : f32 = x_994;
          u_xlat7.w = x_1003;
          let x_1005 : vec4<f32> = u_xlat8;
          let x_1007 : f32 = u_xlat35;
          let x_1010 : vec4<f32> = u_xlat7;
          let x_1012 : vec2<f32> = ((vec2<f32>(x_1005.x, x_1005.y) * vec2<f32>(x_1007, x_1007)) + vec2<f32>(x_1010.x, x_1010.w));
          let x_1013 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_1012.x, x_1013.y, x_1013.z, x_1012.y);
          let x_1015 : vec4<f32> = u_xlat7;
          let x_1018 : vec2<f32> = ((vec2<f32>(x_1015.x, x_1015.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1019 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_1018.x, x_1019.y, x_1019.z, x_1018.y);
          let x_1021 : vec4<f32> = u_xlat7;
          let x_1025 : vec2<f32> = clamp(vec2<f32>(x_1021.x, x_1021.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1026 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_1025.x, x_1026.y, x_1026.z, x_1025.y);
          let x_1028 : u32 = u_xlatu24;
          let x_1031 : vec4<f32> = x_677.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1028)];
          let x_1033 : vec4<f32> = u_xlat7;
          let x_1036 : u32 = u_xlatu24;
          let x_1039 : vec4<f32> = x_677.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1036)];
          let x_1041 : vec2<f32> = ((vec2<f32>(x_1031.x, x_1031.y) * vec2<f32>(x_1033.x, x_1033.w)) + vec2<f32>(x_1039.z, x_1039.w));
          let x_1042 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_1041.x, x_1041.y, x_1042.z);
        }
      }
      let x_1049 : vec3<f32> = u_xlat17;
      let x_1052 : f32 = x_43.x_GlobalMipBias.x;
      let x_1053 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1049.x, x_1049.y), x_1052);
      u_xlat7 = x_1053;
      let x_1055 : bool = u_xlatb4.y;
      if (x_1055) {
        let x_1060 : f32 = u_xlat7.w;
        x_1056 = x_1060;
      } else {
        let x_1063 : f32 = u_xlat7.x;
        x_1056 = x_1063;
      }
      let x_1064 : f32 = x_1056;
      u_xlat35 = x_1064;
      let x_1066 : bool = u_xlatb4.x;
      if (x_1066) {
        let x_1070 : vec4<f32> = u_xlat7;
        x_1067 = vec3<f32>(x_1070.x, x_1070.y, x_1070.z);
      } else {
        let x_1073 : f32 = u_xlat35;
        x_1067 = vec3<f32>(x_1073, x_1073, x_1073);
      }
      let x_1075 : vec3<f32> = x_1067;
      let x_1076 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_1075.x, x_1075.y, x_1075.z, x_1076.w);
    } else {
      u_xlat7.x = 1.0f;
      u_xlat7.y = 1.0f;
      u_xlat7.z = 1.0f;
    }
    let x_1082 : vec4<f32> = u_xlat7;
    let x_1084 : u32 = u_xlatu24;
    let x_1087 : vec4<f32> = x_575.x_AdditionalLightsColor[bitcast<i32>(x_1084)];
    let x_1089 : vec3<f32> = (vec3<f32>(x_1082.x, x_1082.y, x_1082.z) * vec3<f32>(x_1087.x, x_1087.y, x_1087.z));
    let x_1090 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1089.x, x_1089.y, x_1089.z, x_1090.w);
    let x_1092 : f32 = u_xlat32;
    let x_1094 : vec4<f32> = u_xlat7;
    let x_1096 : vec3<f32> = (vec3<f32>(x_1092, x_1092, x_1092) * vec3<f32>(x_1094.x, x_1094.y, x_1094.z));
    let x_1097 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1096.x, x_1096.y, x_1096.z, x_1097.w);
    let x_1099 : f32 = u_xlat34;
    let x_1101 : vec4<f32> = u_xlat7;
    let x_1103 : vec3<f32> = (vec3<f32>(x_1099, x_1099, x_1099) * vec3<f32>(x_1101.x, x_1101.y, x_1101.z));
    let x_1104 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1103.x, x_1103.y, x_1103.z, x_1104.w);
    let x_1106 : vec4<f32> = u_xlat1;
    let x_1108 : vec3<f32> = u_xlat6;
    u_xlat24 = dot(vec3<f32>(x_1106.x, x_1106.y, x_1106.z), x_1108);
    let x_1110 : f32 = u_xlat24;
    u_xlat24 = clamp(x_1110, 0.0f, 1.0f);
    let x_1112 : f32 = u_xlat24;
    let x_1114 : vec4<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_1112, x_1112, x_1112) * vec3<f32>(x_1114.x, x_1114.y, x_1114.z));
    let x_1117 : vec3<f32> = u_xlat6;
    let x_1118 : vec4<f32> = u_xlat0;
    let x_1121 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_1117 * vec3<f32>(x_1118.y, x_1118.z, x_1118.w)) + x_1121);

    continuing {
      let x_1123 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1123 + bitcast<u32>(1i));
    }
  }
  let x_1126 : vec3<f32> = u_xlat2;
  let x_1127 : vec4<f32> = u_xlat0;
  let x_1130 : vec4<f32> = u_xlat3;
  u_xlat10 = ((x_1126 * vec3<f32>(x_1127.y, x_1127.z, x_1127.w)) + vec3<f32>(x_1130.x, x_1130.y, x_1130.z));
  let x_1135 : vec3<f32> = u_xlat5;
  let x_1136 : vec3<f32> = u_xlat10;
  let x_1137 : vec3<f32> = (x_1135 + x_1136);
  let x_1138 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1137.x, x_1137.y, x_1137.z, x_1138.w);
  let x_1142 : f32 = x_55.x_Surface;
  u_xlatb10 = (x_1142 == 1.0f);
  let x_1144 : bool = u_xlatb10;
  if (x_1144) {
    let x_1149 : f32 = u_xlat0.x;
    x_1145 = x_1149;
  } else {
    x_1145 = 1.0f;
  }
  let x_1151 : f32 = x_1145;
  SV_Target0.w = x_1151;
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

