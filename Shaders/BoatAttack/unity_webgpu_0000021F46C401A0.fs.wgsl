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
  x_ProjectionParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
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

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_132 : UnityPerDraw;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_289 : MainLightShadows;

@group(1) @binding(5) var<uniform> x_377 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_604 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_706 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat31 : f32;
  var u_xlat12 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlat23 : vec2<f32>;
  var u_xlatb23 : vec2<bool>;
  var u_xlatb33 : bool;
  var x_324 : f32;
  var u_xlat33 : f32;
  var x_447 : f32;
  var x_458 : vec3<f32>;
  var u_xlatu31 : u32;
  var u_xlatb4 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu34 : u32;
  var u_xlati35 : i32;
  var u_xlat34 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat6 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlat36 : f32;
  var u_xlatu36 : u32;
  var u_xlati7 : i32;
  var u_xlati36 : i32;
  var u_xlati17 : i32;
  var u_xlat7 : vec4<f32>;
  var u_xlatb36 : bool;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlatb17 : vec3<bool>;
  var u_xlat17 : vec3<f32>;
  var x_1022 : f32;
  var x_1035 : f32;
  var x_1097 : f32;
  var x_1108 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb10 : bool;
  var x_1209 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_40, x_50);
  u_xlat0 = x_51;
  let x_52 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = x_56.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_52.w, x_52.x, x_52.y, x_52.z) * vec4<f32>(x_59.w, x_59.x, x_59.y, x_59.z));
  let x_65 : vec3<f32> = vs_TEXCOORD2;
  let x_66 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_65, x_66);
  let x_71 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_71);
  let x_74 : vec4<f32> = u_xlat1;
  let x_76 : vec3<f32> = vs_TEXCOORD2;
  let x_77 : vec3<f32> = (vec3<f32>(x_74.x, x_74.x, x_74.x) * x_76);
  let x_78 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_77.x, x_77.y, x_77.z, x_78.w);
  let x_84 : f32 = vs_TEXCOORD1.y;
  let x_88 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat2 = (x_84 * x_88);
  let x_92 : f32 = x_44.unity_MatrixV[0i].z;
  let x_94 : f32 = vs_TEXCOORD1.x;
  let x_96 : f32 = u_xlat2;
  u_xlat2 = ((x_92 * x_94) + x_96);
  let x_100 : f32 = x_44.unity_MatrixV[2i].z;
  let x_102 : f32 = vs_TEXCOORD1.z;
  let x_104 : f32 = u_xlat2;
  u_xlat2 = ((x_100 * x_102) + x_104);
  let x_106 : f32 = u_xlat2;
  let x_109 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat2 = (x_106 + x_109);
  let x_111 : f32 = u_xlat2;
  let x_115 : f32 = x_44.x_ProjectionParams.y;
  u_xlat2 = (-(x_111) + -(x_115));
  let x_118 : f32 = u_xlat2;
  u_xlat2 = max(x_118, 0.0f);
  let x_121 : f32 = u_xlat2;
  let x_124 : f32 = x_44.unity_FogParams.x;
  u_xlat2 = (x_121 * x_124);
  u_xlat1.w = 1.0f;
  let x_135 : vec4<f32> = x_132.unity_SHAr;
  let x_136 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_135, x_136);
  let x_141 : vec4<f32> = x_132.unity_SHAg;
  let x_142 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_141, x_142);
  let x_147 : vec4<f32> = x_132.unity_SHAb;
  let x_148 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_147, x_148);
  let x_152 : vec4<f32> = u_xlat1;
  let x_154 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_152.y, x_152.z, x_152.z, x_152.x) * vec4<f32>(x_154.x, x_154.y, x_154.z, x_154.z));
  let x_160 : vec4<f32> = x_132.unity_SHBr;
  let x_161 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_160, x_161);
  let x_166 : vec4<f32> = x_132.unity_SHBg;
  let x_167 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_166, x_167);
  let x_172 : vec4<f32> = x_132.unity_SHBb;
  let x_173 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_172, x_173);
  let x_178 : f32 = u_xlat1.y;
  let x_180 : f32 = u_xlat1.y;
  u_xlat31 = (x_178 * x_180);
  let x_183 : f32 = u_xlat1.x;
  let x_185 : f32 = u_xlat1.x;
  let x_187 : f32 = u_xlat31;
  u_xlat31 = ((x_183 * x_185) + -(x_187));
  let x_193 : vec4<f32> = x_132.unity_SHC;
  let x_195 : f32 = u_xlat31;
  let x_198 : vec3<f32> = u_xlat5;
  u_xlat12 = ((vec3<f32>(x_193.x, x_193.y, x_193.z) * vec3<f32>(x_195, x_195, x_195)) + x_198);
  let x_200 : vec3<f32> = u_xlat12;
  let x_201 : vec3<f32> = u_xlat3;
  u_xlat12 = (x_200 + x_201);
  let x_203 : vec3<f32> = u_xlat12;
  u_xlat12 = max(x_203, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_208 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_209 : vec2<f32> = vec2<f32>(x_208.x, x_208.y);
  let x_213 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_209.x, x_209.y));
  let x_214 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_213.x, x_213.y, x_214.z);
  let x_216 : vec3<f32> = u_xlat3;
  let x_218 : vec4<f32> = hlslcc_FragCoord;
  let x_220 : vec2<f32> = (vec2<f32>(x_216.x, x_216.y) * vec2<f32>(x_218.x, x_218.y));
  let x_221 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_220.x, x_220.y, x_221.z);
  let x_224 : f32 = u_xlat3.y;
  let x_227 : f32 = x_44.x_ScaleBiasRt.x;
  let x_230 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat31 = ((x_224 * x_227) + x_230);
  let x_232 : f32 = u_xlat31;
  u_xlat3.z = (-(x_232) + 1.0f);
  let x_241 : vec3<f32> = u_xlat3;
  let x_244 : f32 = x_44.x_GlobalMipBias.x;
  let x_245 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_241.x, x_241.z), x_244);
  u_xlat31 = x_245.x;
  let x_247 : f32 = u_xlat31;
  u_xlat3.x = (x_247 + -1.0f);
  let x_253 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_255 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_253 * x_255) + 1.0f);
  let x_259 : f32 = u_xlat31;
  u_xlat31 = min(x_259, 1.0f);
  let x_263 : vec4<f32> = vs_TEXCOORD6;
  let x_264 : vec2<f32> = vec2<f32>(x_263.x, x_263.y);
  let x_266 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_264.x, x_264.y, x_266);
  let x_279 : vec3<f32> = txVec0;
  let x_281 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_279.xy, x_279.z);
  u_xlat13.x = x_281;
  let x_291 : f32 = x_289.x_MainLightShadowParams.x;
  u_xlat23.x = (-(x_291) + 1.0f);
  let x_296 : f32 = u_xlat13.x;
  let x_298 : f32 = x_289.x_MainLightShadowParams.x;
  let x_301 : f32 = u_xlat23.x;
  u_xlat13.x = ((x_296 * x_298) + x_301);
  let x_309 : f32 = vs_TEXCOORD6.z;
  u_xlatb23.x = (0.0f >= x_309);
  let x_315 : f32 = vs_TEXCOORD6.z;
  u_xlatb33 = (x_315 >= 1.0f);
  let x_317 : bool = u_xlatb33;
  let x_319 : bool = u_xlatb23.x;
  u_xlatb23.x = (x_317 | x_319);
  let x_323 : bool = u_xlatb23.x;
  if (x_323) {
    x_324 = 1.0f;
  } else {
    let x_329 : f32 = u_xlat13.x;
    x_324 = x_329;
  }
  let x_330 : f32 = x_324;
  u_xlat13.x = x_330;
  let x_332 : vec3<f32> = vs_TEXCOORD1;
  let x_336 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_338 : vec3<f32> = (x_332 + -(x_336));
  let x_339 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_338.x, x_338.y, x_338.z, x_339.w);
  let x_341 : vec4<f32> = u_xlat4;
  let x_343 : vec4<f32> = u_xlat4;
  u_xlat23.x = dot(vec3<f32>(x_341.x, x_341.y, x_341.z), vec3<f32>(x_343.x, x_343.y, x_343.z));
  let x_348 : f32 = u_xlat23.x;
  let x_350 : f32 = x_289.x_MainLightShadowParams.z;
  let x_353 : f32 = x_289.x_MainLightShadowParams.w;
  u_xlat23.x = ((x_348 * x_350) + x_353);
  let x_357 : f32 = u_xlat23.x;
  u_xlat23.x = clamp(x_357, 0.0f, 1.0f);
  let x_362 : f32 = u_xlat13.x;
  u_xlat33 = (-(x_362) + 1.0f);
  let x_366 : f32 = u_xlat23.x;
  let x_367 : f32 = u_xlat33;
  let x_370 : f32 = u_xlat13.x;
  u_xlat13.x = ((x_366 * x_367) + x_370);
  let x_379 : f32 = x_377.x_MainLightCookieTextureFormat;
  u_xlatb23.x = !((x_379 == -1.0f));
  let x_383 : bool = u_xlatb23.x;
  if (x_383) {
    let x_386 : vec3<f32> = vs_TEXCOORD1;
    let x_389 : vec4<f32> = x_377.x_MainLightWorldToLight[1i];
    u_xlat23 = (vec2<f32>(x_386.y, x_386.y) * vec2<f32>(x_389.x, x_389.y));
    let x_393 : vec4<f32> = x_377.x_MainLightWorldToLight[0i];
    let x_395 : vec3<f32> = vs_TEXCOORD1;
    let x_398 : vec2<f32> = u_xlat23;
    u_xlat23 = ((vec2<f32>(x_393.x, x_393.y) * vec2<f32>(x_395.x, x_395.x)) + x_398);
    let x_401 : vec4<f32> = x_377.x_MainLightWorldToLight[2i];
    let x_403 : vec3<f32> = vs_TEXCOORD1;
    let x_406 : vec2<f32> = u_xlat23;
    u_xlat23 = ((vec2<f32>(x_401.x, x_401.y) * vec2<f32>(x_403.z, x_403.z)) + x_406);
    let x_408 : vec2<f32> = u_xlat23;
    let x_410 : vec4<f32> = x_377.x_MainLightWorldToLight[3i];
    u_xlat23 = (x_408 + vec2<f32>(x_410.x, x_410.y));
    let x_413 : vec2<f32> = u_xlat23;
    u_xlat23 = ((x_413 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_423 : vec2<f32> = u_xlat23;
    let x_425 : f32 = x_44.x_GlobalMipBias.x;
    let x_426 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_423, x_425);
    u_xlat4 = x_426;
    let x_428 : f32 = x_377.x_MainLightCookieTextureFormat;
    let x_430 : f32 = x_377.x_MainLightCookieTextureFormat;
    let x_432 : f32 = x_377.x_MainLightCookieTextureFormat;
    let x_434 : f32 = x_377.x_MainLightCookieTextureFormat;
    let x_435 : vec4<f32> = vec4<f32>(x_428, x_430, x_432, x_434);
    let x_443 : vec4<bool> = (vec4<f32>(x_435.x, x_435.y, x_435.z, x_435.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb23 = vec2<bool>(x_443.x, x_443.y);
    let x_446 : bool = u_xlatb23.y;
    if (x_446) {
      let x_451 : f32 = u_xlat4.w;
      x_447 = x_451;
    } else {
      let x_454 : f32 = u_xlat4.x;
      x_447 = x_454;
    }
    let x_455 : f32 = x_447;
    u_xlat33 = x_455;
    let x_457 : bool = u_xlatb23.x;
    if (x_457) {
      let x_461 : vec4<f32> = u_xlat4;
      x_458 = vec3<f32>(x_461.x, x_461.y, x_461.z);
    } else {
      let x_464 : f32 = u_xlat33;
      x_458 = vec3<f32>(x_464, x_464, x_464);
    }
    let x_466 : vec3<f32> = x_458;
    let x_467 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_466.x, x_466.y, x_466.z, x_467.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_473 : vec4<f32> = u_xlat4;
  let x_476 : vec4<f32> = x_44.x_MainLightColor;
  let x_478 : vec3<f32> = (vec3<f32>(x_473.x, x_473.y, x_473.z) * vec3<f32>(x_476.x, x_476.y, x_476.z));
  let x_479 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_478.x, x_478.y, x_478.z, x_479.w);
  let x_481 : vec3<f32> = u_xlat3;
  let x_483 : vec4<f32> = u_xlat4;
  let x_485 : vec3<f32> = (vec3<f32>(x_481.x, x_481.x, x_481.x) * vec3<f32>(x_483.x, x_483.y, x_483.z));
  let x_486 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_485.x, x_485.y, x_485.z, x_486.w);
  let x_488 : f32 = u_xlat31;
  let x_490 : vec3<f32> = u_xlat12;
  u_xlat12 = (vec3<f32>(x_488, x_488, x_488) * x_490);
  let x_493 : f32 = u_xlat13.x;
  let x_496 : f32 = x_132.unity_LightData.z;
  u_xlat31 = (x_493 * x_496);
  let x_498 : f32 = u_xlat31;
  let x_500 : vec4<f32> = u_xlat4;
  u_xlat13 = (vec3<f32>(x_498, x_498, x_498) * vec3<f32>(x_500.x, x_500.y, x_500.z));
  let x_503 : vec4<f32> = u_xlat1;
  let x_506 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat31 = dot(vec3<f32>(x_503.x, x_503.y, x_503.z), vec3<f32>(x_506.x, x_506.y, x_506.z));
  let x_509 : f32 = u_xlat31;
  u_xlat31 = clamp(x_509, 0.0f, 1.0f);
  let x_511 : f32 = u_xlat31;
  let x_513 : vec3<f32> = u_xlat13;
  u_xlat13 = (vec3<f32>(x_511, x_511, x_511) * x_513);
  let x_515 : vec4<f32> = u_xlat0;
  let x_517 : vec3<f32> = u_xlat13;
  u_xlat13 = (vec3<f32>(x_515.y, x_515.z, x_515.w) * x_517);
  let x_520 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_522 : f32 = x_132.unity_LightData.y;
  u_xlat31 = min(x_520, x_522);
  let x_526 : f32 = u_xlat31;
  u_xlatu31 = bitcast<u32>(i32(x_526));
  let x_531 : f32 = x_377.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_533 : f32 = x_377.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_535 : f32 = x_377.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_537 : f32 = x_377.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_538 : vec4<f32> = vec4<f32>(x_531, x_533, x_535, x_537);
  let x_545 : vec4<bool> = (vec4<f32>(x_538.x, x_538.y, x_538.z, x_538.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb4 = vec2<bool>(x_545.x, x_545.y);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_556 : u32 = u_xlatu_loop_1;
    let x_557 : u32 = u_xlatu31;
    if ((x_556 < x_557)) {
    } else {
      break;
    }
    let x_560 : u32 = u_xlatu_loop_1;
    u_xlatu34 = (x_560 >> 2u);
    let x_564 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_564 & 3u));
    let x_568 : u32 = u_xlatu34;
    let x_571 : vec4<f32> = x_132.unity_LightIndices[bitcast<i32>(x_568)];
    let x_581 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_586 : vec4<u32> = indexable[x_581];
    u_xlat34 = dot(x_571, bitcast<vec4<f32>>(x_586));
    let x_589 : f32 = u_xlat34;
    u_xlatu34 = bitcast<u32>(i32(x_589));
    let x_593 : vec3<f32> = vs_TEXCOORD1;
    let x_605 : u32 = u_xlatu34;
    let x_608 : vec4<f32> = x_604.x_AdditionalLightsPosition[bitcast<i32>(x_605)];
    let x_611 : u32 = u_xlatu34;
    let x_614 : vec4<f32> = x_604.x_AdditionalLightsPosition[bitcast<i32>(x_611)];
    u_xlat6 = ((-(x_593) * vec3<f32>(x_608.w, x_608.w, x_608.w)) + vec3<f32>(x_614.x, x_614.y, x_614.z));
    let x_618 : vec3<f32> = u_xlat6;
    let x_619 : vec3<f32> = u_xlat6;
    u_xlat35 = dot(x_618, x_619);
    let x_621 : f32 = u_xlat35;
    u_xlat35 = max(x_621, 6.10351562e-05f);
    let x_625 : f32 = u_xlat35;
    u_xlat36 = inverseSqrt(x_625);
    let x_627 : f32 = u_xlat36;
    let x_629 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_627, x_627, x_627) * x_629);
    let x_631 : f32 = u_xlat35;
    u_xlat36 = (1.0f / x_631);
    let x_633 : f32 = u_xlat35;
    let x_634 : u32 = u_xlatu34;
    let x_637 : f32 = x_604.x_AdditionalLightsAttenuation[bitcast<i32>(x_634)].x;
    u_xlat35 = (x_633 * x_637);
    let x_639 : f32 = u_xlat35;
    let x_641 : f32 = u_xlat35;
    u_xlat35 = ((-(x_639) * x_641) + 1.0f);
    let x_644 : f32 = u_xlat35;
    u_xlat35 = max(x_644, 0.0f);
    let x_646 : f32 = u_xlat35;
    let x_647 : f32 = u_xlat35;
    u_xlat35 = (x_646 * x_647);
    let x_649 : f32 = u_xlat35;
    let x_650 : f32 = u_xlat36;
    u_xlat35 = (x_649 * x_650);
    let x_652 : u32 = u_xlatu34;
    let x_655 : vec4<f32> = x_604.x_AdditionalLightsSpotDir[bitcast<i32>(x_652)];
    let x_657 : vec3<f32> = u_xlat6;
    u_xlat36 = dot(vec3<f32>(x_655.x, x_655.y, x_655.z), x_657);
    let x_659 : f32 = u_xlat36;
    let x_660 : u32 = u_xlatu34;
    let x_663 : f32 = x_604.x_AdditionalLightsAttenuation[bitcast<i32>(x_660)].z;
    let x_665 : u32 = u_xlatu34;
    let x_668 : f32 = x_604.x_AdditionalLightsAttenuation[bitcast<i32>(x_665)].w;
    u_xlat36 = ((x_659 * x_663) + x_668);
    let x_670 : f32 = u_xlat36;
    u_xlat36 = clamp(x_670, 0.0f, 1.0f);
    let x_672 : f32 = u_xlat36;
    let x_673 : f32 = u_xlat36;
    u_xlat36 = (x_672 * x_673);
    let x_675 : f32 = u_xlat35;
    let x_676 : f32 = u_xlat36;
    u_xlat35 = (x_675 * x_676);
    let x_679 : u32 = u_xlatu34;
    u_xlatu36 = (x_679 >> 5u);
    let x_682 : u32 = u_xlatu34;
    u_xlati7 = (1i << bitcast<u32>((bitcast<i32>(x_682) & 31i)));
    let x_688 : i32 = u_xlati7;
    let x_690 : u32 = u_xlatu36;
    let x_693 : f32 = x_377.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_690)].el;
    u_xlati36 = bitcast<i32>((bitcast<u32>(x_688) & bitcast<u32>(x_693)));
    let x_697 : i32 = u_xlati36;
    if ((x_697 != 0i)) {
      let x_707 : u32 = u_xlatu34;
      let x_710 : f32 = x_706.x_AdditionalLightsLightTypes[bitcast<i32>(x_707)].el;
      u_xlati36 = i32(x_710);
      let x_712 : i32 = u_xlati36;
      u_xlati7 = select(1i, 0i, (x_712 != 0i));
      let x_716 : u32 = u_xlatu34;
      u_xlati17 = (bitcast<i32>(x_716) << bitcast<u32>(2i));
      let x_719 : i32 = u_xlati7;
      if ((x_719 != 0i)) {
        let x_724 : vec3<f32> = vs_TEXCOORD1;
        let x_726 : i32 = u_xlati17;
        let x_729 : i32 = u_xlati17;
        let x_733 : vec4<f32> = x_706.x_AdditionalLightsWorldToLights[((x_726 + 1i) / 4i)][((x_729 + 1i) % 4i)];
        let x_735 : vec3<f32> = (vec3<f32>(x_724.y, x_724.y, x_724.y) * vec3<f32>(x_733.x, x_733.y, x_733.w));
        let x_736 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_735.x, x_736.y, x_735.y, x_735.z);
        let x_738 : i32 = u_xlati17;
        let x_740 : i32 = u_xlati17;
        let x_743 : vec4<f32> = x_706.x_AdditionalLightsWorldToLights[(x_738 / 4i)][(x_740 % 4i)];
        let x_745 : vec3<f32> = vs_TEXCOORD1;
        let x_748 : vec4<f32> = u_xlat7;
        let x_750 : vec3<f32> = ((vec3<f32>(x_743.x, x_743.y, x_743.w) * vec3<f32>(x_745.x, x_745.x, x_745.x)) + vec3<f32>(x_748.x, x_748.z, x_748.w));
        let x_751 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_750.x, x_751.y, x_750.y, x_750.z);
        let x_753 : i32 = u_xlati17;
        let x_756 : i32 = u_xlati17;
        let x_760 : vec4<f32> = x_706.x_AdditionalLightsWorldToLights[((x_753 + 2i) / 4i)][((x_756 + 2i) % 4i)];
        let x_762 : vec3<f32> = vs_TEXCOORD1;
        let x_765 : vec4<f32> = u_xlat7;
        let x_767 : vec3<f32> = ((vec3<f32>(x_760.x, x_760.y, x_760.w) * vec3<f32>(x_762.z, x_762.z, x_762.z)) + vec3<f32>(x_765.x, x_765.z, x_765.w));
        let x_768 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_767.x, x_768.y, x_767.y, x_767.z);
        let x_770 : vec4<f32> = u_xlat7;
        let x_772 : i32 = u_xlati17;
        let x_775 : i32 = u_xlati17;
        let x_779 : vec4<f32> = x_706.x_AdditionalLightsWorldToLights[((x_772 + 3i) / 4i)][((x_775 + 3i) % 4i)];
        let x_781 : vec3<f32> = (vec3<f32>(x_770.x, x_770.z, x_770.w) + vec3<f32>(x_779.x, x_779.y, x_779.w));
        let x_782 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_781.x, x_782.y, x_781.y, x_781.z);
        let x_784 : vec4<f32> = u_xlat7;
        let x_786 : vec4<f32> = u_xlat7;
        let x_788 : vec2<f32> = (vec2<f32>(x_784.x, x_784.z) / vec2<f32>(x_786.w, x_786.w));
        let x_789 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_788.x, x_789.y, x_788.y, x_789.w);
        let x_791 : vec4<f32> = u_xlat7;
        let x_794 : vec2<f32> = ((vec2<f32>(x_791.x, x_791.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_795 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_794.x, x_795.y, x_794.y, x_795.w);
        let x_797 : vec4<f32> = u_xlat7;
        let x_801 : vec2<f32> = clamp(vec2<f32>(x_797.x, x_797.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_802 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_801.x, x_802.y, x_801.y, x_802.w);
        let x_804 : u32 = u_xlatu34;
        let x_807 : vec4<f32> = x_706.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_804)];
        let x_809 : vec4<f32> = u_xlat7;
        let x_812 : u32 = u_xlatu34;
        let x_815 : vec4<f32> = x_706.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_812)];
        let x_817 : vec2<f32> = ((vec2<f32>(x_807.x, x_807.y) * vec2<f32>(x_809.x, x_809.z)) + vec2<f32>(x_815.z, x_815.w));
        let x_818 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_817.x, x_818.y, x_817.y, x_818.w);
      } else {
        let x_822 : i32 = u_xlati36;
        u_xlatb36 = (x_822 == 1i);
        let x_824 : bool = u_xlatb36;
        u_xlati36 = select(0i, 1i, x_824);
        let x_826 : i32 = u_xlati36;
        if ((x_826 != 0i)) {
          let x_831 : vec3<f32> = vs_TEXCOORD1;
          let x_833 : i32 = u_xlati17;
          let x_836 : i32 = u_xlati17;
          let x_840 : vec4<f32> = x_706.x_AdditionalLightsWorldToLights[((x_833 + 1i) / 4i)][((x_836 + 1i) % 4i)];
          let x_842 : vec2<f32> = (vec2<f32>(x_831.y, x_831.y) * vec2<f32>(x_840.x, x_840.y));
          let x_843 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_842.x, x_842.y, x_843.z, x_843.w);
          let x_845 : i32 = u_xlati17;
          let x_847 : i32 = u_xlati17;
          let x_850 : vec4<f32> = x_706.x_AdditionalLightsWorldToLights[(x_845 / 4i)][(x_847 % 4i)];
          let x_852 : vec3<f32> = vs_TEXCOORD1;
          let x_855 : vec4<f32> = u_xlat8;
          let x_857 : vec2<f32> = ((vec2<f32>(x_850.x, x_850.y) * vec2<f32>(x_852.x, x_852.x)) + vec2<f32>(x_855.x, x_855.y));
          let x_858 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_857.x, x_857.y, x_858.z, x_858.w);
          let x_860 : i32 = u_xlati17;
          let x_863 : i32 = u_xlati17;
          let x_867 : vec4<f32> = x_706.x_AdditionalLightsWorldToLights[((x_860 + 2i) / 4i)][((x_863 + 2i) % 4i)];
          let x_869 : vec3<f32> = vs_TEXCOORD1;
          let x_872 : vec4<f32> = u_xlat8;
          let x_874 : vec2<f32> = ((vec2<f32>(x_867.x, x_867.y) * vec2<f32>(x_869.z, x_869.z)) + vec2<f32>(x_872.x, x_872.y));
          let x_875 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_874.x, x_874.y, x_875.z, x_875.w);
          let x_877 : vec4<f32> = u_xlat8;
          let x_879 : i32 = u_xlati17;
          let x_882 : i32 = u_xlati17;
          let x_886 : vec4<f32> = x_706.x_AdditionalLightsWorldToLights[((x_879 + 3i) / 4i)][((x_882 + 3i) % 4i)];
          let x_888 : vec2<f32> = (vec2<f32>(x_877.x, x_877.y) + vec2<f32>(x_886.x, x_886.y));
          let x_889 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_888.x, x_888.y, x_889.z, x_889.w);
          let x_891 : vec4<f32> = u_xlat8;
          let x_894 : vec2<f32> = ((vec2<f32>(x_891.x, x_891.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_895 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_894.x, x_894.y, x_895.z, x_895.w);
          let x_897 : vec4<f32> = u_xlat8;
          let x_899 : vec2<f32> = fract(vec2<f32>(x_897.x, x_897.y));
          let x_900 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_899.x, x_899.y, x_900.z, x_900.w);
          let x_902 : u32 = u_xlatu34;
          let x_905 : vec4<f32> = x_706.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_902)];
          let x_907 : vec4<f32> = u_xlat8;
          let x_910 : u32 = u_xlatu34;
          let x_913 : vec4<f32> = x_706.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_910)];
          let x_915 : vec2<f32> = ((vec2<f32>(x_905.x, x_905.y) * vec2<f32>(x_907.x, x_907.y)) + vec2<f32>(x_913.z, x_913.w));
          let x_916 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_915.x, x_916.y, x_915.y, x_916.w);
        } else {
          let x_919 : vec3<f32> = vs_TEXCOORD1;
          let x_921 : i32 = u_xlati17;
          let x_924 : i32 = u_xlati17;
          let x_928 : vec4<f32> = x_706.x_AdditionalLightsWorldToLights[((x_921 + 1i) / 4i)][((x_924 + 1i) % 4i)];
          u_xlat8 = (vec4<f32>(x_919.y, x_919.y, x_919.y, x_919.y) * x_928);
          let x_930 : i32 = u_xlati17;
          let x_932 : i32 = u_xlati17;
          let x_935 : vec4<f32> = x_706.x_AdditionalLightsWorldToLights[(x_930 / 4i)][(x_932 % 4i)];
          let x_936 : vec3<f32> = vs_TEXCOORD1;
          let x_939 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_935 * vec4<f32>(x_936.x, x_936.x, x_936.x, x_936.x)) + x_939);
          let x_941 : i32 = u_xlati17;
          let x_944 : i32 = u_xlati17;
          let x_948 : vec4<f32> = x_706.x_AdditionalLightsWorldToLights[((x_941 + 2i) / 4i)][((x_944 + 2i) % 4i)];
          let x_949 : vec3<f32> = vs_TEXCOORD1;
          let x_952 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_948 * vec4<f32>(x_949.z, x_949.z, x_949.z, x_949.z)) + x_952);
          let x_954 : vec4<f32> = u_xlat8;
          let x_955 : i32 = u_xlati17;
          let x_958 : i32 = u_xlati17;
          let x_962 : vec4<f32> = x_706.x_AdditionalLightsWorldToLights[((x_955 + 3i) / 4i)][((x_958 + 3i) % 4i)];
          u_xlat8 = (x_954 + x_962);
          let x_964 : vec4<f32> = u_xlat8;
          let x_966 : vec4<f32> = u_xlat8;
          let x_968 : vec3<f32> = (vec3<f32>(x_964.x, x_964.y, x_964.z) / vec3<f32>(x_966.w, x_966.w, x_966.w));
          let x_969 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_968.x, x_968.y, x_968.z, x_969.w);
          let x_971 : vec4<f32> = u_xlat8;
          let x_973 : vec4<f32> = u_xlat8;
          u_xlat36 = dot(vec3<f32>(x_971.x, x_971.y, x_971.z), vec3<f32>(x_973.x, x_973.y, x_973.z));
          let x_976 : f32 = u_xlat36;
          u_xlat36 = inverseSqrt(x_976);
          let x_978 : f32 = u_xlat36;
          let x_980 : vec4<f32> = u_xlat8;
          let x_982 : vec3<f32> = (vec3<f32>(x_978, x_978, x_978) * vec3<f32>(x_980.x, x_980.y, x_980.z));
          let x_983 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_982.x, x_982.y, x_982.z, x_983.w);
          let x_985 : vec4<f32> = u_xlat8;
          u_xlat36 = dot(abs(vec3<f32>(x_985.x, x_985.y, x_985.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_990 : f32 = u_xlat36;
          u_xlat36 = max(x_990, 0.000001f);
          let x_993 : f32 = u_xlat36;
          u_xlat36 = (1.0f / x_993);
          let x_996 : f32 = u_xlat36;
          let x_998 : vec4<f32> = u_xlat8;
          u_xlat9 = (vec3<f32>(x_996, x_996, x_996) * vec3<f32>(x_998.z, x_998.x, x_998.y));
          let x_1002 : f32 = u_xlat9.x;
          u_xlat9.x = -(x_1002);
          let x_1006 : f32 = u_xlat9.x;
          u_xlat9.x = clamp(x_1006, 0.0f, 1.0f);
          let x_1012 : vec3<f32> = u_xlat9;
          let x_1015 : vec4<bool> = (vec4<f32>(x_1012.y, x_1012.y, x_1012.z, x_1012.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1016 : vec2<bool> = vec2<bool>(x_1015.x, x_1015.z);
          let x_1017 : vec3<bool> = u_xlatb17;
          u_xlatb17 = vec3<bool>(x_1016.x, x_1017.y, x_1016.y);
          let x_1021 : bool = u_xlatb17.x;
          if (x_1021) {
            let x_1026 : f32 = u_xlat9.x;
            x_1022 = x_1026;
          } else {
            let x_1029 : f32 = u_xlat9.x;
            x_1022 = -(x_1029);
          }
          let x_1031 : f32 = x_1022;
          u_xlat17.x = x_1031;
          let x_1034 : bool = u_xlatb17.z;
          if (x_1034) {
            let x_1039 : f32 = u_xlat9.x;
            x_1035 = x_1039;
          } else {
            let x_1042 : f32 = u_xlat9.x;
            x_1035 = -(x_1042);
          }
          let x_1044 : f32 = x_1035;
          u_xlat17.z = x_1044;
          let x_1046 : vec4<f32> = u_xlat8;
          let x_1048 : f32 = u_xlat36;
          let x_1051 : vec3<f32> = u_xlat17;
          let x_1053 : vec2<f32> = ((vec2<f32>(x_1046.x, x_1046.y) * vec2<f32>(x_1048, x_1048)) + vec2<f32>(x_1051.x, x_1051.z));
          let x_1054 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_1053.x, x_1054.y, x_1053.y);
          let x_1056 : vec3<f32> = u_xlat17;
          let x_1059 : vec2<f32> = ((vec2<f32>(x_1056.x, x_1056.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1060 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_1059.x, x_1060.y, x_1059.y);
          let x_1062 : vec3<f32> = u_xlat17;
          let x_1066 : vec2<f32> = clamp(vec2<f32>(x_1062.x, x_1062.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1067 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_1066.x, x_1067.y, x_1066.y);
          let x_1069 : u32 = u_xlatu34;
          let x_1072 : vec4<f32> = x_706.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1069)];
          let x_1074 : vec3<f32> = u_xlat17;
          let x_1077 : u32 = u_xlatu34;
          let x_1080 : vec4<f32> = x_706.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1077)];
          let x_1082 : vec2<f32> = ((vec2<f32>(x_1072.x, x_1072.y) * vec2<f32>(x_1074.x, x_1074.z)) + vec2<f32>(x_1080.z, x_1080.w));
          let x_1083 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_1082.x, x_1083.y, x_1082.y, x_1083.w);
        }
      }
      let x_1090 : vec4<f32> = u_xlat7;
      let x_1093 : f32 = x_44.x_GlobalMipBias.x;
      let x_1094 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1090.x, x_1090.z), x_1093);
      u_xlat7 = x_1094;
      let x_1096 : bool = u_xlatb4.y;
      if (x_1096) {
        let x_1101 : f32 = u_xlat7.w;
        x_1097 = x_1101;
      } else {
        let x_1104 : f32 = u_xlat7.x;
        x_1097 = x_1104;
      }
      let x_1105 : f32 = x_1097;
      u_xlat36 = x_1105;
      let x_1107 : bool = u_xlatb4.x;
      if (x_1107) {
        let x_1111 : vec4<f32> = u_xlat7;
        x_1108 = vec3<f32>(x_1111.x, x_1111.y, x_1111.z);
      } else {
        let x_1114 : f32 = u_xlat36;
        x_1108 = vec3<f32>(x_1114, x_1114, x_1114);
      }
      let x_1116 : vec3<f32> = x_1108;
      let x_1117 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_1116.x, x_1116.y, x_1116.z, x_1117.w);
    } else {
      u_xlat7.x = 1.0f;
      u_xlat7.y = 1.0f;
      u_xlat7.z = 1.0f;
    }
    let x_1123 : vec4<f32> = u_xlat7;
    let x_1125 : u32 = u_xlatu34;
    let x_1128 : vec4<f32> = x_604.x_AdditionalLightsColor[bitcast<i32>(x_1125)];
    let x_1130 : vec3<f32> = (vec3<f32>(x_1123.x, x_1123.y, x_1123.z) * vec3<f32>(x_1128.x, x_1128.y, x_1128.z));
    let x_1131 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1130.x, x_1130.y, x_1130.z, x_1131.w);
    let x_1133 : vec3<f32> = u_xlat3;
    let x_1135 : vec4<f32> = u_xlat7;
    let x_1137 : vec3<f32> = (vec3<f32>(x_1133.x, x_1133.x, x_1133.x) * vec3<f32>(x_1135.x, x_1135.y, x_1135.z));
    let x_1138 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1137.x, x_1137.y, x_1137.z, x_1138.w);
    let x_1140 : f32 = u_xlat35;
    let x_1142 : vec4<f32> = u_xlat7;
    let x_1144 : vec3<f32> = (vec3<f32>(x_1140, x_1140, x_1140) * vec3<f32>(x_1142.x, x_1142.y, x_1142.z));
    let x_1145 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1144.x, x_1144.y, x_1144.z, x_1145.w);
    let x_1147 : vec4<f32> = u_xlat1;
    let x_1149 : vec3<f32> = u_xlat6;
    u_xlat34 = dot(vec3<f32>(x_1147.x, x_1147.y, x_1147.z), x_1149);
    let x_1151 : f32 = u_xlat34;
    u_xlat34 = clamp(x_1151, 0.0f, 1.0f);
    let x_1153 : f32 = u_xlat34;
    let x_1155 : vec4<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_1153, x_1153, x_1153) * vec3<f32>(x_1155.x, x_1155.y, x_1155.z));
    let x_1158 : vec3<f32> = u_xlat6;
    let x_1159 : vec4<f32> = u_xlat0;
    let x_1162 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_1158 * vec3<f32>(x_1159.y, x_1159.z, x_1159.w)) + x_1162);

    continuing {
      let x_1164 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1164 + bitcast<u32>(1i));
    }
  }
  let x_1167 : vec3<f32> = u_xlat12;
  let x_1168 : vec4<f32> = u_xlat0;
  let x_1171 : vec3<f32> = u_xlat13;
  u_xlat10 = ((x_1167 * vec3<f32>(x_1168.y, x_1168.z, x_1168.w)) + x_1171);
  let x_1173 : vec3<f32> = u_xlat5;
  let x_1174 : vec3<f32> = u_xlat10;
  u_xlat10 = (x_1173 + x_1174);
  let x_1176 : f32 = u_xlat2;
  let x_1177 : f32 = u_xlat2;
  u_xlat1.x = (x_1176 * -(x_1177));
  let x_1182 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1182);
  let x_1185 : vec3<f32> = u_xlat10;
  let x_1188 : vec4<f32> = x_44.unity_FogColor;
  u_xlat10 = (x_1185 + -(vec3<f32>(x_1188.x, x_1188.y, x_1188.z)));
  let x_1194 : vec4<f32> = u_xlat1;
  let x_1196 : vec3<f32> = u_xlat10;
  let x_1199 : vec4<f32> = x_44.unity_FogColor;
  let x_1201 : vec3<f32> = ((vec3<f32>(x_1194.x, x_1194.x, x_1194.x) * x_1196) + vec3<f32>(x_1199.x, x_1199.y, x_1199.z));
  let x_1202 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1201.x, x_1201.y, x_1201.z, x_1202.w);
  let x_1206 : f32 = x_56.x_Surface;
  u_xlatb10 = (x_1206 == 1.0f);
  let x_1208 : bool = u_xlatb10;
  if (x_1208) {
    let x_1213 : f32 = u_xlat0.x;
    x_1209 = x_1213;
  } else {
    x_1209 = 1.0f;
  }
  let x_1215 : f32 = x_1209;
  SV_Target0.w = x_1215;
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

