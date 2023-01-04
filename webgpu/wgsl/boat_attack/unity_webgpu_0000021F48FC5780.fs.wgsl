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
  x_DitheringTextureInvSize : f32,
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

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

@group(0) @binding(6) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_93 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_286 : MainLightShadows;

@group(1) @binding(5) var<uniform> x_373 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_600 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_702 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlatb11 : bool;
  var x_100 : f32;
  var u_xlatb1 : bool;
  var u_xlat31 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat32 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlat23 : vec2<f32>;
  var u_xlatb23 : vec2<bool>;
  var u_xlatb33 : bool;
  var x_319 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat33 : f32;
  var x_443 : f32;
  var x_454 : vec3<f32>;
  var u_xlatu32 : u32;
  var u_xlatb4 : vec2<bool>;
  var u_xlat5 : vec3<f32>;
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
  var x_1018 : f32;
  var x_1031 : f32;
  var x_1093 : f32;
  var x_1104 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb10 : bool;
  var x_1204 : f32;
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
  let x_64 : vec4<f32> = hlslcc_FragCoord;
  let x_68 : f32 = x_44.x_DitheringTextureInvSize;
  let x_70 : vec2<f32> = (vec2<f32>(x_64.x, x_64.y) * vec2<f32>(x_68, x_68));
  let x_71 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_70.x, x_70.y, x_71.z);
  let x_78 : vec3<f32> = u_xlat1;
  let x_81 : f32 = x_44.x_GlobalMipBias.x;
  let x_82 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_78.x, x_78.y), x_81);
  u_xlat1.x = x_82.w;
  let x_96 : f32 = x_93.unity_LODFade.x;
  u_xlatb11 = (x_96 >= 0.0f);
  let x_99 : bool = u_xlatb11;
  if (x_99) {
    let x_104 : f32 = u_xlat1.x;
    x_100 = abs(x_104);
  } else {
    let x_108 : f32 = u_xlat1.x;
    x_100 = -(abs(x_108));
  }
  let x_111 : f32 = x_100;
  u_xlat1.x = x_111;
  let x_114 : f32 = u_xlat1.x;
  let x_117 : f32 = x_93.unity_LODFade.x;
  u_xlat1.x = (-(x_114) + x_117);
  let x_122 : f32 = u_xlat1.x;
  u_xlatb1 = (x_122 < 0.0f);
  let x_124 : bool = u_xlatb1;
  if (((select(0i, 1i, x_124) * -1i) != 0i)) {
    discard;
  }
  let x_135 : vec3<f32> = vs_TEXCOORD2;
  let x_136 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_135, x_136);
  let x_140 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_140);
  let x_143 : vec3<f32> = u_xlat1;
  let x_145 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = (vec3<f32>(x_143.x, x_143.x, x_143.x) * x_145);
  let x_151 : f32 = vs_TEXCOORD1.y;
  let x_154 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat31 = (x_151 * x_154);
  let x_157 : f32 = x_44.unity_MatrixV[0i].z;
  let x_159 : f32 = vs_TEXCOORD1.x;
  let x_161 : f32 = u_xlat31;
  u_xlat31 = ((x_157 * x_159) + x_161);
  let x_164 : f32 = x_44.unity_MatrixV[2i].z;
  let x_166 : f32 = vs_TEXCOORD1.z;
  let x_168 : f32 = u_xlat31;
  u_xlat31 = ((x_164 * x_166) + x_168);
  let x_170 : f32 = u_xlat31;
  let x_173 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat31 = (x_170 + x_173);
  let x_175 : f32 = u_xlat31;
  let x_179 : f32 = x_44.x_ProjectionParams.y;
  u_xlat31 = (-(x_175) + -(x_179));
  let x_182 : f32 = u_xlat31;
  u_xlat31 = max(x_182, 0.0f);
  let x_184 : f32 = u_xlat31;
  let x_187 : f32 = x_44.unity_FogParams.x;
  u_xlat31 = (x_184 * x_187);
  let x_196 : vec2<f32> = vs_TEXCOORD7;
  let x_198 : f32 = x_44.x_GlobalMipBias.x;
  let x_199 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_196, x_198);
  u_xlat2 = vec3<f32>(x_199.x, x_199.y, x_199.z);
  let x_204 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_205 : vec2<f32> = vec2<f32>(x_204.x, x_204.y);
  let x_209 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_205.x, x_205.y));
  let x_210 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_209.x, x_209.y, x_210.z);
  let x_212 : vec3<f32> = u_xlat3;
  let x_214 : vec4<f32> = hlslcc_FragCoord;
  let x_216 : vec2<f32> = (vec2<f32>(x_212.x, x_212.y) * vec2<f32>(x_214.x, x_214.y));
  let x_217 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_216.x, x_216.y, x_217.z);
  let x_221 : f32 = u_xlat3.y;
  let x_224 : f32 = x_44.x_ScaleBiasRt.x;
  let x_227 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat32 = ((x_221 * x_224) + x_227);
  let x_229 : f32 = u_xlat32;
  u_xlat3.z = (-(x_229) + 1.0f);
  let x_238 : vec3<f32> = u_xlat3;
  let x_241 : f32 = x_44.x_GlobalMipBias.x;
  let x_242 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_238.x, x_238.z), x_241);
  u_xlat32 = x_242.x;
  let x_244 : f32 = u_xlat32;
  u_xlat3.x = (x_244 + -1.0f);
  let x_250 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_252 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_250 * x_252) + 1.0f);
  let x_256 : f32 = u_xlat32;
  u_xlat32 = min(x_256, 1.0f);
  let x_260 : vec4<f32> = vs_TEXCOORD6;
  let x_261 : vec2<f32> = vec2<f32>(x_260.x, x_260.y);
  let x_263 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_261.x, x_261.y, x_263);
  let x_276 : vec3<f32> = txVec0;
  let x_278 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_276.xy, x_276.z);
  u_xlat13.x = x_278;
  let x_288 : f32 = x_286.x_MainLightShadowParams.x;
  u_xlat23.x = (-(x_288) + 1.0f);
  let x_293 : f32 = u_xlat13.x;
  let x_295 : f32 = x_286.x_MainLightShadowParams.x;
  let x_298 : f32 = u_xlat23.x;
  u_xlat13.x = ((x_293 * x_295) + x_298);
  let x_305 : f32 = vs_TEXCOORD6.z;
  u_xlatb23.x = (0.0f >= x_305);
  let x_310 : f32 = vs_TEXCOORD6.z;
  u_xlatb33 = (x_310 >= 1.0f);
  let x_312 : bool = u_xlatb33;
  let x_314 : bool = u_xlatb23.x;
  u_xlatb23.x = (x_312 | x_314);
  let x_318 : bool = u_xlatb23.x;
  if (x_318) {
    x_319 = 1.0f;
  } else {
    let x_324 : f32 = u_xlat13.x;
    x_319 = x_324;
  }
  let x_325 : f32 = x_319;
  u_xlat13.x = x_325;
  let x_328 : vec3<f32> = vs_TEXCOORD1;
  let x_332 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_334 : vec3<f32> = (x_328 + -(x_332));
  let x_335 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_337 : vec4<f32> = u_xlat4;
  let x_339 : vec4<f32> = u_xlat4;
  u_xlat23.x = dot(vec3<f32>(x_337.x, x_337.y, x_337.z), vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_344 : f32 = u_xlat23.x;
  let x_346 : f32 = x_286.x_MainLightShadowParams.z;
  let x_349 : f32 = x_286.x_MainLightShadowParams.w;
  u_xlat23.x = ((x_344 * x_346) + x_349);
  let x_353 : f32 = u_xlat23.x;
  u_xlat23.x = clamp(x_353, 0.0f, 1.0f);
  let x_358 : f32 = u_xlat13.x;
  u_xlat33 = (-(x_358) + 1.0f);
  let x_362 : f32 = u_xlat23.x;
  let x_363 : f32 = u_xlat33;
  let x_366 : f32 = u_xlat13.x;
  u_xlat13.x = ((x_362 * x_363) + x_366);
  let x_375 : f32 = x_373.x_MainLightCookieTextureFormat;
  u_xlatb23.x = !((x_375 == -1.0f));
  let x_379 : bool = u_xlatb23.x;
  if (x_379) {
    let x_382 : vec3<f32> = vs_TEXCOORD1;
    let x_385 : vec4<f32> = x_373.x_MainLightWorldToLight[1i];
    u_xlat23 = (vec2<f32>(x_382.y, x_382.y) * vec2<f32>(x_385.x, x_385.y));
    let x_389 : vec4<f32> = x_373.x_MainLightWorldToLight[0i];
    let x_391 : vec3<f32> = vs_TEXCOORD1;
    let x_394 : vec2<f32> = u_xlat23;
    u_xlat23 = ((vec2<f32>(x_389.x, x_389.y) * vec2<f32>(x_391.x, x_391.x)) + x_394);
    let x_397 : vec4<f32> = x_373.x_MainLightWorldToLight[2i];
    let x_399 : vec3<f32> = vs_TEXCOORD1;
    let x_402 : vec2<f32> = u_xlat23;
    u_xlat23 = ((vec2<f32>(x_397.x, x_397.y) * vec2<f32>(x_399.z, x_399.z)) + x_402);
    let x_404 : vec2<f32> = u_xlat23;
    let x_406 : vec4<f32> = x_373.x_MainLightWorldToLight[3i];
    u_xlat23 = (x_404 + vec2<f32>(x_406.x, x_406.y));
    let x_409 : vec2<f32> = u_xlat23;
    u_xlat23 = ((x_409 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_419 : vec2<f32> = u_xlat23;
    let x_421 : f32 = x_44.x_GlobalMipBias.x;
    let x_422 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_419, x_421);
    u_xlat4 = x_422;
    let x_424 : f32 = x_373.x_MainLightCookieTextureFormat;
    let x_426 : f32 = x_373.x_MainLightCookieTextureFormat;
    let x_428 : f32 = x_373.x_MainLightCookieTextureFormat;
    let x_430 : f32 = x_373.x_MainLightCookieTextureFormat;
    let x_431 : vec4<f32> = vec4<f32>(x_424, x_426, x_428, x_430);
    let x_439 : vec4<bool> = (vec4<f32>(x_431.x, x_431.y, x_431.z, x_431.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb23 = vec2<bool>(x_439.x, x_439.y);
    let x_442 : bool = u_xlatb23.y;
    if (x_442) {
      let x_447 : f32 = u_xlat4.w;
      x_443 = x_447;
    } else {
      let x_450 : f32 = u_xlat4.x;
      x_443 = x_450;
    }
    let x_451 : f32 = x_443;
    u_xlat33 = x_451;
    let x_453 : bool = u_xlatb23.x;
    if (x_453) {
      let x_457 : vec4<f32> = u_xlat4;
      x_454 = vec3<f32>(x_457.x, x_457.y, x_457.z);
    } else {
      let x_460 : f32 = u_xlat33;
      x_454 = vec3<f32>(x_460, x_460, x_460);
    }
    let x_462 : vec3<f32> = x_454;
    let x_463 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_462.x, x_462.y, x_462.z, x_463.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_469 : vec4<f32> = u_xlat4;
  let x_472 : vec4<f32> = x_44.x_MainLightColor;
  let x_474 : vec3<f32> = (vec3<f32>(x_469.x, x_469.y, x_469.z) * vec3<f32>(x_472.x, x_472.y, x_472.z));
  let x_475 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_474.x, x_474.y, x_474.z, x_475.w);
  let x_477 : vec3<f32> = u_xlat3;
  let x_479 : vec4<f32> = u_xlat4;
  let x_481 : vec3<f32> = (vec3<f32>(x_477.x, x_477.x, x_477.x) * vec3<f32>(x_479.x, x_479.y, x_479.z));
  let x_482 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_481.x, x_481.y, x_481.z, x_482.w);
  let x_484 : f32 = u_xlat32;
  let x_486 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_484, x_484, x_484) * x_486);
  let x_489 : f32 = u_xlat13.x;
  let x_492 : f32 = x_93.unity_LightData.z;
  u_xlat32 = (x_489 * x_492);
  let x_494 : f32 = u_xlat32;
  let x_496 : vec4<f32> = u_xlat4;
  u_xlat13 = (vec3<f32>(x_494, x_494, x_494) * vec3<f32>(x_496.x, x_496.y, x_496.z));
  let x_499 : vec3<f32> = u_xlat1;
  let x_501 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat32 = dot(x_499, vec3<f32>(x_501.x, x_501.y, x_501.z));
  let x_504 : f32 = u_xlat32;
  u_xlat32 = clamp(x_504, 0.0f, 1.0f);
  let x_506 : f32 = u_xlat32;
  let x_508 : vec3<f32> = u_xlat13;
  u_xlat13 = (vec3<f32>(x_506, x_506, x_506) * x_508);
  let x_510 : vec4<f32> = u_xlat0;
  let x_512 : vec3<f32> = u_xlat13;
  u_xlat13 = (vec3<f32>(x_510.y, x_510.z, x_510.w) * x_512);
  let x_515 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_517 : f32 = x_93.unity_LightData.y;
  u_xlat32 = min(x_515, x_517);
  let x_521 : f32 = u_xlat32;
  u_xlatu32 = bitcast<u32>(i32(x_521));
  let x_526 : f32 = x_373.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_528 : f32 = x_373.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_530 : f32 = x_373.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_532 : f32 = x_373.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_533 : vec4<f32> = vec4<f32>(x_526, x_528, x_530, x_532);
  let x_540 : vec4<bool> = (vec4<f32>(x_533.x, x_533.y, x_533.z, x_533.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb4 = vec2<bool>(x_540.x, x_540.y);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_552 : u32 = u_xlatu_loop_1;
    let x_553 : u32 = u_xlatu32;
    if ((x_552 < x_553)) {
    } else {
      break;
    }
    let x_556 : u32 = u_xlatu_loop_1;
    u_xlatu34 = (x_556 >> 2u);
    let x_560 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_560 & 3u));
    let x_564 : u32 = u_xlatu34;
    let x_567 : vec4<f32> = x_93.unity_LightIndices[bitcast<i32>(x_564)];
    let x_577 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_582 : vec4<u32> = indexable[x_577];
    u_xlat34 = dot(x_567, bitcast<vec4<f32>>(x_582));
    let x_585 : f32 = u_xlat34;
    u_xlatu34 = bitcast<u32>(i32(x_585));
    let x_589 : vec3<f32> = vs_TEXCOORD1;
    let x_601 : u32 = u_xlatu34;
    let x_604 : vec4<f32> = x_600.x_AdditionalLightsPosition[bitcast<i32>(x_601)];
    let x_607 : u32 = u_xlatu34;
    let x_610 : vec4<f32> = x_600.x_AdditionalLightsPosition[bitcast<i32>(x_607)];
    u_xlat6 = ((-(x_589) * vec3<f32>(x_604.w, x_604.w, x_604.w)) + vec3<f32>(x_610.x, x_610.y, x_610.z));
    let x_614 : vec3<f32> = u_xlat6;
    let x_615 : vec3<f32> = u_xlat6;
    u_xlat35 = dot(x_614, x_615);
    let x_617 : f32 = u_xlat35;
    u_xlat35 = max(x_617, 6.10351562e-05f);
    let x_621 : f32 = u_xlat35;
    u_xlat36 = inverseSqrt(x_621);
    let x_623 : f32 = u_xlat36;
    let x_625 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_623, x_623, x_623) * x_625);
    let x_627 : f32 = u_xlat35;
    u_xlat36 = (1.0f / x_627);
    let x_629 : f32 = u_xlat35;
    let x_630 : u32 = u_xlatu34;
    let x_633 : f32 = x_600.x_AdditionalLightsAttenuation[bitcast<i32>(x_630)].x;
    u_xlat35 = (x_629 * x_633);
    let x_635 : f32 = u_xlat35;
    let x_637 : f32 = u_xlat35;
    u_xlat35 = ((-(x_635) * x_637) + 1.0f);
    let x_640 : f32 = u_xlat35;
    u_xlat35 = max(x_640, 0.0f);
    let x_642 : f32 = u_xlat35;
    let x_643 : f32 = u_xlat35;
    u_xlat35 = (x_642 * x_643);
    let x_645 : f32 = u_xlat35;
    let x_646 : f32 = u_xlat36;
    u_xlat35 = (x_645 * x_646);
    let x_648 : u32 = u_xlatu34;
    let x_651 : vec4<f32> = x_600.x_AdditionalLightsSpotDir[bitcast<i32>(x_648)];
    let x_653 : vec3<f32> = u_xlat6;
    u_xlat36 = dot(vec3<f32>(x_651.x, x_651.y, x_651.z), x_653);
    let x_655 : f32 = u_xlat36;
    let x_656 : u32 = u_xlatu34;
    let x_659 : f32 = x_600.x_AdditionalLightsAttenuation[bitcast<i32>(x_656)].z;
    let x_661 : u32 = u_xlatu34;
    let x_664 : f32 = x_600.x_AdditionalLightsAttenuation[bitcast<i32>(x_661)].w;
    u_xlat36 = ((x_655 * x_659) + x_664);
    let x_666 : f32 = u_xlat36;
    u_xlat36 = clamp(x_666, 0.0f, 1.0f);
    let x_668 : f32 = u_xlat36;
    let x_669 : f32 = u_xlat36;
    u_xlat36 = (x_668 * x_669);
    let x_671 : f32 = u_xlat35;
    let x_672 : f32 = u_xlat36;
    u_xlat35 = (x_671 * x_672);
    let x_675 : u32 = u_xlatu34;
    u_xlatu36 = (x_675 >> 5u);
    let x_678 : u32 = u_xlatu34;
    u_xlati7 = (1i << bitcast<u32>((bitcast<i32>(x_678) & 31i)));
    let x_684 : i32 = u_xlati7;
    let x_686 : u32 = u_xlatu36;
    let x_689 : f32 = x_373.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_686)].el;
    u_xlati36 = bitcast<i32>((bitcast<u32>(x_684) & bitcast<u32>(x_689)));
    let x_693 : i32 = u_xlati36;
    if ((x_693 != 0i)) {
      let x_703 : u32 = u_xlatu34;
      let x_706 : f32 = x_702.x_AdditionalLightsLightTypes[bitcast<i32>(x_703)].el;
      u_xlati36 = i32(x_706);
      let x_708 : i32 = u_xlati36;
      u_xlati7 = select(1i, 0i, (x_708 != 0i));
      let x_712 : u32 = u_xlatu34;
      u_xlati17 = (bitcast<i32>(x_712) << bitcast<u32>(2i));
      let x_715 : i32 = u_xlati7;
      if ((x_715 != 0i)) {
        let x_720 : vec3<f32> = vs_TEXCOORD1;
        let x_722 : i32 = u_xlati17;
        let x_725 : i32 = u_xlati17;
        let x_729 : vec4<f32> = x_702.x_AdditionalLightsWorldToLights[((x_722 + 1i) / 4i)][((x_725 + 1i) % 4i)];
        let x_731 : vec3<f32> = (vec3<f32>(x_720.y, x_720.y, x_720.y) * vec3<f32>(x_729.x, x_729.y, x_729.w));
        let x_732 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_731.x, x_732.y, x_731.y, x_731.z);
        let x_734 : i32 = u_xlati17;
        let x_736 : i32 = u_xlati17;
        let x_739 : vec4<f32> = x_702.x_AdditionalLightsWorldToLights[(x_734 / 4i)][(x_736 % 4i)];
        let x_741 : vec3<f32> = vs_TEXCOORD1;
        let x_744 : vec4<f32> = u_xlat7;
        let x_746 : vec3<f32> = ((vec3<f32>(x_739.x, x_739.y, x_739.w) * vec3<f32>(x_741.x, x_741.x, x_741.x)) + vec3<f32>(x_744.x, x_744.z, x_744.w));
        let x_747 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_746.x, x_747.y, x_746.y, x_746.z);
        let x_749 : i32 = u_xlati17;
        let x_752 : i32 = u_xlati17;
        let x_756 : vec4<f32> = x_702.x_AdditionalLightsWorldToLights[((x_749 + 2i) / 4i)][((x_752 + 2i) % 4i)];
        let x_758 : vec3<f32> = vs_TEXCOORD1;
        let x_761 : vec4<f32> = u_xlat7;
        let x_763 : vec3<f32> = ((vec3<f32>(x_756.x, x_756.y, x_756.w) * vec3<f32>(x_758.z, x_758.z, x_758.z)) + vec3<f32>(x_761.x, x_761.z, x_761.w));
        let x_764 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_763.x, x_764.y, x_763.y, x_763.z);
        let x_766 : vec4<f32> = u_xlat7;
        let x_768 : i32 = u_xlati17;
        let x_771 : i32 = u_xlati17;
        let x_775 : vec4<f32> = x_702.x_AdditionalLightsWorldToLights[((x_768 + 3i) / 4i)][((x_771 + 3i) % 4i)];
        let x_777 : vec3<f32> = (vec3<f32>(x_766.x, x_766.z, x_766.w) + vec3<f32>(x_775.x, x_775.y, x_775.w));
        let x_778 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_777.x, x_778.y, x_777.y, x_777.z);
        let x_780 : vec4<f32> = u_xlat7;
        let x_782 : vec4<f32> = u_xlat7;
        let x_784 : vec2<f32> = (vec2<f32>(x_780.x, x_780.z) / vec2<f32>(x_782.w, x_782.w));
        let x_785 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_784.x, x_785.y, x_784.y, x_785.w);
        let x_787 : vec4<f32> = u_xlat7;
        let x_790 : vec2<f32> = ((vec2<f32>(x_787.x, x_787.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_791 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_790.x, x_791.y, x_790.y, x_791.w);
        let x_793 : vec4<f32> = u_xlat7;
        let x_797 : vec2<f32> = clamp(vec2<f32>(x_793.x, x_793.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_798 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_797.x, x_798.y, x_797.y, x_798.w);
        let x_800 : u32 = u_xlatu34;
        let x_803 : vec4<f32> = x_702.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_800)];
        let x_805 : vec4<f32> = u_xlat7;
        let x_808 : u32 = u_xlatu34;
        let x_811 : vec4<f32> = x_702.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_808)];
        let x_813 : vec2<f32> = ((vec2<f32>(x_803.x, x_803.y) * vec2<f32>(x_805.x, x_805.z)) + vec2<f32>(x_811.z, x_811.w));
        let x_814 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_813.x, x_814.y, x_813.y, x_814.w);
      } else {
        let x_818 : i32 = u_xlati36;
        u_xlatb36 = (x_818 == 1i);
        let x_820 : bool = u_xlatb36;
        u_xlati36 = select(0i, 1i, x_820);
        let x_822 : i32 = u_xlati36;
        if ((x_822 != 0i)) {
          let x_827 : vec3<f32> = vs_TEXCOORD1;
          let x_829 : i32 = u_xlati17;
          let x_832 : i32 = u_xlati17;
          let x_836 : vec4<f32> = x_702.x_AdditionalLightsWorldToLights[((x_829 + 1i) / 4i)][((x_832 + 1i) % 4i)];
          let x_838 : vec2<f32> = (vec2<f32>(x_827.y, x_827.y) * vec2<f32>(x_836.x, x_836.y));
          let x_839 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_838.x, x_838.y, x_839.z, x_839.w);
          let x_841 : i32 = u_xlati17;
          let x_843 : i32 = u_xlati17;
          let x_846 : vec4<f32> = x_702.x_AdditionalLightsWorldToLights[(x_841 / 4i)][(x_843 % 4i)];
          let x_848 : vec3<f32> = vs_TEXCOORD1;
          let x_851 : vec4<f32> = u_xlat8;
          let x_853 : vec2<f32> = ((vec2<f32>(x_846.x, x_846.y) * vec2<f32>(x_848.x, x_848.x)) + vec2<f32>(x_851.x, x_851.y));
          let x_854 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_853.x, x_853.y, x_854.z, x_854.w);
          let x_856 : i32 = u_xlati17;
          let x_859 : i32 = u_xlati17;
          let x_863 : vec4<f32> = x_702.x_AdditionalLightsWorldToLights[((x_856 + 2i) / 4i)][((x_859 + 2i) % 4i)];
          let x_865 : vec3<f32> = vs_TEXCOORD1;
          let x_868 : vec4<f32> = u_xlat8;
          let x_870 : vec2<f32> = ((vec2<f32>(x_863.x, x_863.y) * vec2<f32>(x_865.z, x_865.z)) + vec2<f32>(x_868.x, x_868.y));
          let x_871 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_870.x, x_870.y, x_871.z, x_871.w);
          let x_873 : vec4<f32> = u_xlat8;
          let x_875 : i32 = u_xlati17;
          let x_878 : i32 = u_xlati17;
          let x_882 : vec4<f32> = x_702.x_AdditionalLightsWorldToLights[((x_875 + 3i) / 4i)][((x_878 + 3i) % 4i)];
          let x_884 : vec2<f32> = (vec2<f32>(x_873.x, x_873.y) + vec2<f32>(x_882.x, x_882.y));
          let x_885 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_884.x, x_884.y, x_885.z, x_885.w);
          let x_887 : vec4<f32> = u_xlat8;
          let x_890 : vec2<f32> = ((vec2<f32>(x_887.x, x_887.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_891 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_890.x, x_890.y, x_891.z, x_891.w);
          let x_893 : vec4<f32> = u_xlat8;
          let x_895 : vec2<f32> = fract(vec2<f32>(x_893.x, x_893.y));
          let x_896 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_895.x, x_895.y, x_896.z, x_896.w);
          let x_898 : u32 = u_xlatu34;
          let x_901 : vec4<f32> = x_702.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_898)];
          let x_903 : vec4<f32> = u_xlat8;
          let x_906 : u32 = u_xlatu34;
          let x_909 : vec4<f32> = x_702.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_906)];
          let x_911 : vec2<f32> = ((vec2<f32>(x_901.x, x_901.y) * vec2<f32>(x_903.x, x_903.y)) + vec2<f32>(x_909.z, x_909.w));
          let x_912 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_911.x, x_912.y, x_911.y, x_912.w);
        } else {
          let x_915 : vec3<f32> = vs_TEXCOORD1;
          let x_917 : i32 = u_xlati17;
          let x_920 : i32 = u_xlati17;
          let x_924 : vec4<f32> = x_702.x_AdditionalLightsWorldToLights[((x_917 + 1i) / 4i)][((x_920 + 1i) % 4i)];
          u_xlat8 = (vec4<f32>(x_915.y, x_915.y, x_915.y, x_915.y) * x_924);
          let x_926 : i32 = u_xlati17;
          let x_928 : i32 = u_xlati17;
          let x_931 : vec4<f32> = x_702.x_AdditionalLightsWorldToLights[(x_926 / 4i)][(x_928 % 4i)];
          let x_932 : vec3<f32> = vs_TEXCOORD1;
          let x_935 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_931 * vec4<f32>(x_932.x, x_932.x, x_932.x, x_932.x)) + x_935);
          let x_937 : i32 = u_xlati17;
          let x_940 : i32 = u_xlati17;
          let x_944 : vec4<f32> = x_702.x_AdditionalLightsWorldToLights[((x_937 + 2i) / 4i)][((x_940 + 2i) % 4i)];
          let x_945 : vec3<f32> = vs_TEXCOORD1;
          let x_948 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_944 * vec4<f32>(x_945.z, x_945.z, x_945.z, x_945.z)) + x_948);
          let x_950 : vec4<f32> = u_xlat8;
          let x_951 : i32 = u_xlati17;
          let x_954 : i32 = u_xlati17;
          let x_958 : vec4<f32> = x_702.x_AdditionalLightsWorldToLights[((x_951 + 3i) / 4i)][((x_954 + 3i) % 4i)];
          u_xlat8 = (x_950 + x_958);
          let x_960 : vec4<f32> = u_xlat8;
          let x_962 : vec4<f32> = u_xlat8;
          let x_964 : vec3<f32> = (vec3<f32>(x_960.x, x_960.y, x_960.z) / vec3<f32>(x_962.w, x_962.w, x_962.w));
          let x_965 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_964.x, x_964.y, x_964.z, x_965.w);
          let x_967 : vec4<f32> = u_xlat8;
          let x_969 : vec4<f32> = u_xlat8;
          u_xlat36 = dot(vec3<f32>(x_967.x, x_967.y, x_967.z), vec3<f32>(x_969.x, x_969.y, x_969.z));
          let x_972 : f32 = u_xlat36;
          u_xlat36 = inverseSqrt(x_972);
          let x_974 : f32 = u_xlat36;
          let x_976 : vec4<f32> = u_xlat8;
          let x_978 : vec3<f32> = (vec3<f32>(x_974, x_974, x_974) * vec3<f32>(x_976.x, x_976.y, x_976.z));
          let x_979 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_978.x, x_978.y, x_978.z, x_979.w);
          let x_981 : vec4<f32> = u_xlat8;
          u_xlat36 = dot(abs(vec3<f32>(x_981.x, x_981.y, x_981.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_986 : f32 = u_xlat36;
          u_xlat36 = max(x_986, 0.000001f);
          let x_989 : f32 = u_xlat36;
          u_xlat36 = (1.0f / x_989);
          let x_992 : f32 = u_xlat36;
          let x_994 : vec4<f32> = u_xlat8;
          u_xlat9 = (vec3<f32>(x_992, x_992, x_992) * vec3<f32>(x_994.z, x_994.x, x_994.y));
          let x_998 : f32 = u_xlat9.x;
          u_xlat9.x = -(x_998);
          let x_1002 : f32 = u_xlat9.x;
          u_xlat9.x = clamp(x_1002, 0.0f, 1.0f);
          let x_1008 : vec3<f32> = u_xlat9;
          let x_1011 : vec4<bool> = (vec4<f32>(x_1008.y, x_1008.y, x_1008.z, x_1008.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1012 : vec2<bool> = vec2<bool>(x_1011.x, x_1011.z);
          let x_1013 : vec3<bool> = u_xlatb17;
          u_xlatb17 = vec3<bool>(x_1012.x, x_1013.y, x_1012.y);
          let x_1017 : bool = u_xlatb17.x;
          if (x_1017) {
            let x_1022 : f32 = u_xlat9.x;
            x_1018 = x_1022;
          } else {
            let x_1025 : f32 = u_xlat9.x;
            x_1018 = -(x_1025);
          }
          let x_1027 : f32 = x_1018;
          u_xlat17.x = x_1027;
          let x_1030 : bool = u_xlatb17.z;
          if (x_1030) {
            let x_1035 : f32 = u_xlat9.x;
            x_1031 = x_1035;
          } else {
            let x_1038 : f32 = u_xlat9.x;
            x_1031 = -(x_1038);
          }
          let x_1040 : f32 = x_1031;
          u_xlat17.z = x_1040;
          let x_1042 : vec4<f32> = u_xlat8;
          let x_1044 : f32 = u_xlat36;
          let x_1047 : vec3<f32> = u_xlat17;
          let x_1049 : vec2<f32> = ((vec2<f32>(x_1042.x, x_1042.y) * vec2<f32>(x_1044, x_1044)) + vec2<f32>(x_1047.x, x_1047.z));
          let x_1050 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_1049.x, x_1050.y, x_1049.y);
          let x_1052 : vec3<f32> = u_xlat17;
          let x_1055 : vec2<f32> = ((vec2<f32>(x_1052.x, x_1052.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1056 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_1055.x, x_1056.y, x_1055.y);
          let x_1058 : vec3<f32> = u_xlat17;
          let x_1062 : vec2<f32> = clamp(vec2<f32>(x_1058.x, x_1058.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1063 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_1062.x, x_1063.y, x_1062.y);
          let x_1065 : u32 = u_xlatu34;
          let x_1068 : vec4<f32> = x_702.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1065)];
          let x_1070 : vec3<f32> = u_xlat17;
          let x_1073 : u32 = u_xlatu34;
          let x_1076 : vec4<f32> = x_702.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1073)];
          let x_1078 : vec2<f32> = ((vec2<f32>(x_1068.x, x_1068.y) * vec2<f32>(x_1070.x, x_1070.z)) + vec2<f32>(x_1076.z, x_1076.w));
          let x_1079 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_1078.x, x_1079.y, x_1078.y, x_1079.w);
        }
      }
      let x_1086 : vec4<f32> = u_xlat7;
      let x_1089 : f32 = x_44.x_GlobalMipBias.x;
      let x_1090 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1086.x, x_1086.z), x_1089);
      u_xlat7 = x_1090;
      let x_1092 : bool = u_xlatb4.y;
      if (x_1092) {
        let x_1097 : f32 = u_xlat7.w;
        x_1093 = x_1097;
      } else {
        let x_1100 : f32 = u_xlat7.x;
        x_1093 = x_1100;
      }
      let x_1101 : f32 = x_1093;
      u_xlat36 = x_1101;
      let x_1103 : bool = u_xlatb4.x;
      if (x_1103) {
        let x_1107 : vec4<f32> = u_xlat7;
        x_1104 = vec3<f32>(x_1107.x, x_1107.y, x_1107.z);
      } else {
        let x_1110 : f32 = u_xlat36;
        x_1104 = vec3<f32>(x_1110, x_1110, x_1110);
      }
      let x_1112 : vec3<f32> = x_1104;
      let x_1113 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_1112.x, x_1112.y, x_1112.z, x_1113.w);
    } else {
      u_xlat7.x = 1.0f;
      u_xlat7.y = 1.0f;
      u_xlat7.z = 1.0f;
    }
    let x_1119 : vec4<f32> = u_xlat7;
    let x_1121 : u32 = u_xlatu34;
    let x_1124 : vec4<f32> = x_600.x_AdditionalLightsColor[bitcast<i32>(x_1121)];
    let x_1126 : vec3<f32> = (vec3<f32>(x_1119.x, x_1119.y, x_1119.z) * vec3<f32>(x_1124.x, x_1124.y, x_1124.z));
    let x_1127 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1126.x, x_1126.y, x_1126.z, x_1127.w);
    let x_1129 : vec3<f32> = u_xlat3;
    let x_1131 : vec4<f32> = u_xlat7;
    let x_1133 : vec3<f32> = (vec3<f32>(x_1129.x, x_1129.x, x_1129.x) * vec3<f32>(x_1131.x, x_1131.y, x_1131.z));
    let x_1134 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1133.x, x_1133.y, x_1133.z, x_1134.w);
    let x_1136 : f32 = u_xlat35;
    let x_1138 : vec4<f32> = u_xlat7;
    let x_1140 : vec3<f32> = (vec3<f32>(x_1136, x_1136, x_1136) * vec3<f32>(x_1138.x, x_1138.y, x_1138.z));
    let x_1141 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1140.x, x_1140.y, x_1140.z, x_1141.w);
    let x_1143 : vec3<f32> = u_xlat1;
    let x_1144 : vec3<f32> = u_xlat6;
    u_xlat34 = dot(x_1143, x_1144);
    let x_1146 : f32 = u_xlat34;
    u_xlat34 = clamp(x_1146, 0.0f, 1.0f);
    let x_1148 : f32 = u_xlat34;
    let x_1150 : vec4<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_1148, x_1148, x_1148) * vec3<f32>(x_1150.x, x_1150.y, x_1150.z));
    let x_1153 : vec3<f32> = u_xlat6;
    let x_1154 : vec4<f32> = u_xlat0;
    let x_1157 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_1153 * vec3<f32>(x_1154.y, x_1154.z, x_1154.w)) + x_1157);

    continuing {
      let x_1159 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1159 + bitcast<u32>(1i));
    }
  }
  let x_1162 : vec3<f32> = u_xlat2;
  let x_1163 : vec4<f32> = u_xlat0;
  let x_1166 : vec3<f32> = u_xlat13;
  u_xlat10 = ((x_1162 * vec3<f32>(x_1163.y, x_1163.z, x_1163.w)) + x_1166);
  let x_1168 : vec3<f32> = u_xlat5;
  let x_1169 : vec3<f32> = u_xlat10;
  u_xlat10 = (x_1168 + x_1169);
  let x_1171 : f32 = u_xlat31;
  let x_1172 : f32 = u_xlat31;
  u_xlat1.x = (x_1171 * -(x_1172));
  let x_1177 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1177);
  let x_1180 : vec3<f32> = u_xlat10;
  let x_1183 : vec4<f32> = x_44.unity_FogColor;
  u_xlat10 = (x_1180 + -(vec3<f32>(x_1183.x, x_1183.y, x_1183.z)));
  let x_1189 : vec3<f32> = u_xlat1;
  let x_1191 : vec3<f32> = u_xlat10;
  let x_1194 : vec4<f32> = x_44.unity_FogColor;
  let x_1196 : vec3<f32> = ((vec3<f32>(x_1189.x, x_1189.x, x_1189.x) * x_1191) + vec3<f32>(x_1194.x, x_1194.y, x_1194.z));
  let x_1197 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1196.x, x_1196.y, x_1196.z, x_1197.w);
  let x_1201 : f32 = x_56.x_Surface;
  u_xlatb10 = (x_1201 == 1.0f);
  let x_1203 : bool = u_xlatb10;
  if (x_1203) {
    let x_1208 : f32 = u_xlat0.x;
    x_1204 = x_1208;
  } else {
    x_1204 = 1.0f;
  }
  let x_1210 : f32 = x_1204;
  SV_Target0.w = x_1210;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

