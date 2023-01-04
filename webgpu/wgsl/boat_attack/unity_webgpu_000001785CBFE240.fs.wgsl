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

type Arr = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr,
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

type Arr_1 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_1,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
}

type Arr_2 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_2,
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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_55 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_215 : MainLightShadows;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_301 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_433 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_542 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_644 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat31 : f32;
  var u_xlat32 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb13 : vec2<bool>;
  var u_xlatb23 : bool;
  var x_251 : f32;
  var u_xlat23 : f32;
  var u_xlat4 : vec4<f32>;
  var x_388 : f32;
  var x_399 : vec3<f32>;
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
  var x_948 : f32;
  var x_961 : f32;
  var x_1023 : f32;
  var x_1034 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb10 : bool;
  var x_1111 : f32;
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
  let x_65 : vec3<f32> = vs_TEXCOORD2;
  let x_66 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_65, x_66);
  let x_71 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_71);
  let x_74 : vec3<f32> = u_xlat1;
  let x_76 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = (vec3<f32>(x_74.x, x_74.x, x_74.x) * x_76);
  let x_85 : vec2<f32> = vs_TEXCOORD7;
  let x_87 : f32 = x_43.x_GlobalMipBias.x;
  let x_88 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_85, x_87);
  u_xlat2 = x_88;
  let x_94 : vec2<f32> = vs_TEXCOORD7;
  let x_96 : f32 = x_43.x_GlobalMipBias.x;
  let x_97 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_94, x_96);
  u_xlat3 = vec3<f32>(x_97.x, x_97.y, x_97.z);
  let x_99 : vec4<f32> = u_xlat2;
  let x_103 : vec3<f32> = (vec3<f32>(x_99.x, x_99.y, x_99.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_104 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_103.x, x_103.y, x_103.z, x_104.w);
  let x_107 : vec3<f32> = u_xlat1;
  let x_108 : vec4<f32> = u_xlat2;
  u_xlat31 = dot(x_107, vec3<f32>(x_108.x, x_108.y, x_108.z));
  let x_111 : f32 = u_xlat31;
  u_xlat31 = (x_111 + 0.5f);
  let x_114 : f32 = u_xlat31;
  let x_116 : vec3<f32> = u_xlat3;
  let x_117 : vec3<f32> = (vec3<f32>(x_114, x_114, x_114) * x_116);
  let x_118 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_117.x, x_117.y, x_117.z, x_118.w);
  let x_121 : f32 = u_xlat2.w;
  u_xlat31 = max(x_121, 0.0001f);
  let x_124 : vec4<f32> = u_xlat2;
  let x_126 : f32 = u_xlat31;
  let x_128 : vec3<f32> = (vec3<f32>(x_124.x, x_124.y, x_124.z) / vec3<f32>(x_126, x_126, x_126));
  let x_129 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_128.x, x_128.y, x_128.z, x_129.w);
  let x_134 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_135 : vec2<f32> = vec2<f32>(x_134.x, x_134.y);
  let x_139 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_135.x, x_135.y));
  let x_140 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_139.x, x_139.y, x_140.z);
  let x_142 : vec3<f32> = u_xlat3;
  let x_144 : vec4<f32> = hlslcc_FragCoord;
  let x_146 : vec2<f32> = (vec2<f32>(x_142.x, x_142.y) * vec2<f32>(x_144.x, x_144.y));
  let x_147 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_146.x, x_146.y, x_147.z);
  let x_151 : f32 = u_xlat3.y;
  let x_154 : f32 = x_43.x_ScaleBiasRt.x;
  let x_157 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat31 = ((x_151 * x_154) + x_157);
  let x_159 : f32 = u_xlat31;
  u_xlat3.z = (-(x_159) + 1.0f);
  let x_169 : vec3<f32> = u_xlat3;
  let x_172 : f32 = x_43.x_GlobalMipBias.x;
  let x_173 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_169.x, x_169.z), x_172);
  u_xlat31 = x_173.x;
  let x_176 : f32 = u_xlat31;
  u_xlat32 = (x_176 + -1.0f);
  let x_181 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_182 : f32 = u_xlat32;
  u_xlat32 = ((x_181 * x_182) + 1.0f);
  let x_185 : f32 = u_xlat31;
  u_xlat31 = min(x_185, 1.0f);
  let x_189 : vec4<f32> = vs_TEXCOORD6;
  let x_190 : vec2<f32> = vec2<f32>(x_189.x, x_189.y);
  let x_192 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_190.x, x_190.y, x_192);
  let x_204 : vec3<f32> = txVec0;
  let x_207 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_204.xy, x_204.z);
  u_xlat3.x = x_207;
  let x_218 : f32 = x_215.x_MainLightShadowParams.x;
  u_xlat13.x = (-(x_218) + 1.0f);
  let x_223 : f32 = u_xlat3.x;
  let x_225 : f32 = x_215.x_MainLightShadowParams.x;
  let x_228 : f32 = u_xlat13.x;
  u_xlat3.x = ((x_223 * x_225) + x_228);
  let x_236 : f32 = vs_TEXCOORD6.z;
  u_xlatb13.x = (0.0f >= x_236);
  let x_242 : f32 = vs_TEXCOORD6.z;
  u_xlatb23 = (x_242 >= 1.0f);
  let x_244 : bool = u_xlatb23;
  let x_246 : bool = u_xlatb13.x;
  u_xlatb13.x = (x_244 | x_246);
  let x_250 : bool = u_xlatb13.x;
  if (x_250) {
    x_251 = 1.0f;
  } else {
    let x_256 : f32 = u_xlat3.x;
    x_251 = x_256;
  }
  let x_257 : f32 = x_251;
  u_xlat3.x = x_257;
  let x_260 : vec3<f32> = vs_TEXCOORD1;
  let x_264 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  u_xlat13 = (x_260 + -(x_264));
  let x_267 : vec3<f32> = u_xlat13;
  let x_268 : vec3<f32> = u_xlat13;
  u_xlat13.x = dot(x_267, x_268);
  let x_272 : f32 = u_xlat13.x;
  let x_274 : f32 = x_215.x_MainLightShadowParams.z;
  let x_277 : f32 = x_215.x_MainLightShadowParams.w;
  u_xlat13.x = ((x_272 * x_274) + x_277);
  let x_281 : f32 = u_xlat13.x;
  u_xlat13.x = clamp(x_281, 0.0f, 1.0f);
  let x_286 : f32 = u_xlat3.x;
  u_xlat23 = (-(x_286) + 1.0f);
  let x_290 : f32 = u_xlat13.x;
  let x_291 : f32 = u_xlat23;
  let x_294 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_290 * x_291) + x_294);
  let x_304 : f32 = x_301.x_MainLightCookieTextureFormat;
  u_xlatb13.x = !((x_304 == -1.0f));
  let x_308 : bool = u_xlatb13.x;
  if (x_308) {
    let x_311 : vec3<f32> = vs_TEXCOORD1;
    let x_314 : vec4<f32> = x_301.x_MainLightWorldToLight[1i];
    let x_316 : vec2<f32> = (vec2<f32>(x_311.y, x_311.y) * vec2<f32>(x_314.x, x_314.y));
    let x_317 : vec3<f32> = u_xlat13;
    u_xlat13 = vec3<f32>(x_316.x, x_316.y, x_317.z);
    let x_320 : vec4<f32> = x_301.x_MainLightWorldToLight[0i];
    let x_322 : vec3<f32> = vs_TEXCOORD1;
    let x_325 : vec3<f32> = u_xlat13;
    let x_327 : vec2<f32> = ((vec2<f32>(x_320.x, x_320.y) * vec2<f32>(x_322.x, x_322.x)) + vec2<f32>(x_325.x, x_325.y));
    let x_328 : vec3<f32> = u_xlat13;
    u_xlat13 = vec3<f32>(x_327.x, x_327.y, x_328.z);
    let x_331 : vec4<f32> = x_301.x_MainLightWorldToLight[2i];
    let x_333 : vec3<f32> = vs_TEXCOORD1;
    let x_336 : vec3<f32> = u_xlat13;
    let x_338 : vec2<f32> = ((vec2<f32>(x_331.x, x_331.y) * vec2<f32>(x_333.z, x_333.z)) + vec2<f32>(x_336.x, x_336.y));
    let x_339 : vec3<f32> = u_xlat13;
    u_xlat13 = vec3<f32>(x_338.x, x_338.y, x_339.z);
    let x_341 : vec3<f32> = u_xlat13;
    let x_345 : vec4<f32> = x_301.x_MainLightWorldToLight[3i];
    let x_347 : vec2<f32> = (vec2<f32>(x_341.x, x_341.y) + vec2<f32>(x_345.x, x_345.y));
    let x_348 : vec3<f32> = u_xlat13;
    u_xlat13 = vec3<f32>(x_347.x, x_347.y, x_348.z);
    let x_350 : vec3<f32> = u_xlat13;
    let x_354 : vec2<f32> = ((vec2<f32>(x_350.x, x_350.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_355 : vec3<f32> = u_xlat13;
    u_xlat13 = vec3<f32>(x_354.x, x_354.y, x_355.z);
    let x_363 : vec3<f32> = u_xlat13;
    let x_366 : f32 = x_43.x_GlobalMipBias.x;
    let x_367 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_363.x, x_363.y), x_366);
    u_xlat4 = x_367;
    let x_369 : f32 = x_301.x_MainLightCookieTextureFormat;
    let x_371 : f32 = x_301.x_MainLightCookieTextureFormat;
    let x_373 : f32 = x_301.x_MainLightCookieTextureFormat;
    let x_375 : f32 = x_301.x_MainLightCookieTextureFormat;
    let x_376 : vec4<f32> = vec4<f32>(x_369, x_371, x_373, x_375);
    let x_384 : vec4<bool> = (vec4<f32>(x_376.x, x_376.y, x_376.z, x_376.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb13 = vec2<bool>(x_384.x, x_384.y);
    let x_387 : bool = u_xlatb13.y;
    if (x_387) {
      let x_392 : f32 = u_xlat4.w;
      x_388 = x_392;
    } else {
      let x_395 : f32 = u_xlat4.x;
      x_388 = x_395;
    }
    let x_396 : f32 = x_388;
    u_xlat23 = x_396;
    let x_398 : bool = u_xlatb13.x;
    if (x_398) {
      let x_402 : vec4<f32> = u_xlat4;
      x_399 = vec3<f32>(x_402.x, x_402.y, x_402.z);
    } else {
      let x_405 : f32 = u_xlat23;
      x_399 = vec3<f32>(x_405, x_405, x_405);
    }
    let x_407 : vec3<f32> = x_399;
    u_xlat13 = x_407;
  } else {
    u_xlat13.x = 1.0f;
    u_xlat13.y = 1.0f;
    u_xlat13.z = 1.0f;
  }
  let x_412 : vec3<f32> = u_xlat13;
  let x_414 : vec4<f32> = x_43.x_MainLightColor;
  u_xlat13 = (x_412 * vec3<f32>(x_414.x, x_414.y, x_414.z));
  let x_417 : f32 = u_xlat32;
  let x_419 : vec3<f32> = u_xlat13;
  u_xlat13 = (vec3<f32>(x_417, x_417, x_417) * x_419);
  let x_421 : f32 = u_xlat31;
  let x_423 : vec4<f32> = u_xlat2;
  let x_425 : vec3<f32> = (vec3<f32>(x_421, x_421, x_421) * vec3<f32>(x_423.x, x_423.y, x_423.z));
  let x_426 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_425.x, x_425.y, x_425.z, x_426.w);
  let x_429 : f32 = u_xlat3.x;
  let x_436 : f32 = x_433.unity_LightData.z;
  u_xlat31 = (x_429 * x_436);
  let x_438 : f32 = u_xlat31;
  let x_440 : vec3<f32> = u_xlat13;
  u_xlat3 = (vec3<f32>(x_438, x_438, x_438) * x_440);
  let x_442 : vec3<f32> = u_xlat1;
  let x_444 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat31 = dot(x_442, vec3<f32>(x_444.x, x_444.y, x_444.z));
  let x_447 : f32 = u_xlat31;
  u_xlat31 = clamp(x_447, 0.0f, 1.0f);
  let x_449 : f32 = u_xlat31;
  let x_451 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_449, x_449, x_449) * x_451);
  let x_453 : vec4<f32> = u_xlat0;
  let x_455 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_453.y, x_453.z, x_453.w) * x_455);
  let x_458 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_460 : f32 = x_433.unity_LightData.y;
  u_xlat31 = min(x_458, x_460);
  let x_464 : f32 = u_xlat31;
  u_xlatu31 = bitcast<u32>(i32(x_464));
  let x_469 : f32 = x_301.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_471 : f32 = x_301.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_473 : f32 = x_301.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_475 : f32 = x_301.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_476 : vec4<f32> = vec4<f32>(x_469, x_471, x_473, x_475);
  let x_482 : vec4<bool> = (vec4<f32>(x_476.x, x_476.y, x_476.z, x_476.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb4 = vec2<bool>(x_482.x, x_482.y);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_494 : u32 = u_xlatu_loop_1;
    let x_495 : u32 = u_xlatu31;
    if ((x_494 < x_495)) {
    } else {
      break;
    }
    let x_498 : u32 = u_xlatu_loop_1;
    u_xlatu24 = (x_498 >> 2u);
    let x_502 : u32 = u_xlatu_loop_1;
    u_xlati34 = bitcast<i32>((x_502 & 3u));
    let x_506 : u32 = u_xlatu24;
    let x_509 : vec4<f32> = x_433.unity_LightIndices[bitcast<i32>(x_506)];
    let x_519 : i32 = u_xlati34;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_524 : vec4<u32> = indexable[x_519];
    u_xlat24 = dot(x_509, bitcast<vec4<f32>>(x_524));
    let x_527 : f32 = u_xlat24;
    u_xlatu24 = bitcast<u32>(i32(x_527));
    let x_531 : vec3<f32> = vs_TEXCOORD1;
    let x_543 : u32 = u_xlatu24;
    let x_546 : vec4<f32> = x_542.x_AdditionalLightsPosition[bitcast<i32>(x_543)];
    let x_549 : u32 = u_xlatu24;
    let x_552 : vec4<f32> = x_542.x_AdditionalLightsPosition[bitcast<i32>(x_549)];
    u_xlat6 = ((-(x_531) * vec3<f32>(x_546.w, x_546.w, x_546.w)) + vec3<f32>(x_552.x, x_552.y, x_552.z));
    let x_556 : vec3<f32> = u_xlat6;
    let x_557 : vec3<f32> = u_xlat6;
    u_xlat34 = dot(x_556, x_557);
    let x_559 : f32 = u_xlat34;
    u_xlat34 = max(x_559, 6.10351562e-05f);
    let x_563 : f32 = u_xlat34;
    u_xlat35 = inverseSqrt(x_563);
    let x_565 : f32 = u_xlat35;
    let x_567 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_565, x_565, x_565) * x_567);
    let x_569 : f32 = u_xlat34;
    u_xlat35 = (1.0f / x_569);
    let x_571 : f32 = u_xlat34;
    let x_572 : u32 = u_xlatu24;
    let x_575 : f32 = x_542.x_AdditionalLightsAttenuation[bitcast<i32>(x_572)].x;
    u_xlat34 = (x_571 * x_575);
    let x_577 : f32 = u_xlat34;
    let x_579 : f32 = u_xlat34;
    u_xlat34 = ((-(x_577) * x_579) + 1.0f);
    let x_582 : f32 = u_xlat34;
    u_xlat34 = max(x_582, 0.0f);
    let x_584 : f32 = u_xlat34;
    let x_585 : f32 = u_xlat34;
    u_xlat34 = (x_584 * x_585);
    let x_587 : f32 = u_xlat34;
    let x_588 : f32 = u_xlat35;
    u_xlat34 = (x_587 * x_588);
    let x_590 : u32 = u_xlatu24;
    let x_593 : vec4<f32> = x_542.x_AdditionalLightsSpotDir[bitcast<i32>(x_590)];
    let x_595 : vec3<f32> = u_xlat6;
    u_xlat35 = dot(vec3<f32>(x_593.x, x_593.y, x_593.z), x_595);
    let x_597 : f32 = u_xlat35;
    let x_598 : u32 = u_xlatu24;
    let x_601 : f32 = x_542.x_AdditionalLightsAttenuation[bitcast<i32>(x_598)].z;
    let x_603 : u32 = u_xlatu24;
    let x_606 : f32 = x_542.x_AdditionalLightsAttenuation[bitcast<i32>(x_603)].w;
    u_xlat35 = ((x_597 * x_601) + x_606);
    let x_608 : f32 = u_xlat35;
    u_xlat35 = clamp(x_608, 0.0f, 1.0f);
    let x_610 : f32 = u_xlat35;
    let x_611 : f32 = u_xlat35;
    u_xlat35 = (x_610 * x_611);
    let x_613 : f32 = u_xlat34;
    let x_614 : f32 = u_xlat35;
    u_xlat34 = (x_613 * x_614);
    let x_617 : u32 = u_xlatu24;
    u_xlatu35 = (x_617 >> 5u);
    let x_620 : u32 = u_xlatu24;
    u_xlati36 = (1i << bitcast<u32>((bitcast<i32>(x_620) & 31i)));
    let x_626 : i32 = u_xlati36;
    let x_628 : u32 = u_xlatu35;
    let x_631 : f32 = x_301.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_628)].el;
    u_xlati35 = bitcast<i32>((bitcast<u32>(x_626) & bitcast<u32>(x_631)));
    let x_635 : i32 = u_xlati35;
    if ((x_635 != 0i)) {
      let x_645 : u32 = u_xlatu24;
      let x_648 : f32 = x_644.x_AdditionalLightsLightTypes[bitcast<i32>(x_645)].el;
      u_xlati35 = i32(x_648);
      let x_650 : i32 = u_xlati35;
      u_xlati36 = select(1i, 0i, (x_650 != 0i));
      let x_654 : u32 = u_xlatu24;
      u_xlati7 = (bitcast<i32>(x_654) << bitcast<u32>(2i));
      let x_657 : i32 = u_xlati36;
      if ((x_657 != 0i)) {
        let x_662 : vec3<f32> = vs_TEXCOORD1;
        let x_664 : i32 = u_xlati7;
        let x_667 : i32 = u_xlati7;
        let x_671 : vec4<f32> = x_644.x_AdditionalLightsWorldToLights[((x_664 + 1i) / 4i)][((x_667 + 1i) % 4i)];
        u_xlat17 = (vec3<f32>(x_662.y, x_662.y, x_662.y) * vec3<f32>(x_671.x, x_671.y, x_671.w));
        let x_674 : i32 = u_xlati7;
        let x_676 : i32 = u_xlati7;
        let x_679 : vec4<f32> = x_644.x_AdditionalLightsWorldToLights[(x_674 / 4i)][(x_676 % 4i)];
        let x_681 : vec3<f32> = vs_TEXCOORD1;
        let x_684 : vec3<f32> = u_xlat17;
        u_xlat17 = ((vec3<f32>(x_679.x, x_679.y, x_679.w) * vec3<f32>(x_681.x, x_681.x, x_681.x)) + x_684);
        let x_686 : i32 = u_xlati7;
        let x_689 : i32 = u_xlati7;
        let x_693 : vec4<f32> = x_644.x_AdditionalLightsWorldToLights[((x_686 + 2i) / 4i)][((x_689 + 2i) % 4i)];
        let x_695 : vec3<f32> = vs_TEXCOORD1;
        let x_698 : vec3<f32> = u_xlat17;
        u_xlat17 = ((vec3<f32>(x_693.x, x_693.y, x_693.w) * vec3<f32>(x_695.z, x_695.z, x_695.z)) + x_698);
        let x_700 : vec3<f32> = u_xlat17;
        let x_701 : i32 = u_xlati7;
        let x_704 : i32 = u_xlati7;
        let x_708 : vec4<f32> = x_644.x_AdditionalLightsWorldToLights[((x_701 + 3i) / 4i)][((x_704 + 3i) % 4i)];
        u_xlat17 = (x_700 + vec3<f32>(x_708.x, x_708.y, x_708.w));
        let x_711 : vec3<f32> = u_xlat17;
        let x_713 : vec3<f32> = u_xlat17;
        let x_715 : vec2<f32> = (vec2<f32>(x_711.x, x_711.y) / vec2<f32>(x_713.z, x_713.z));
        let x_716 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_715.x, x_715.y, x_716.z);
        let x_718 : vec3<f32> = u_xlat17;
        let x_721 : vec2<f32> = ((vec2<f32>(x_718.x, x_718.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_722 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_721.x, x_721.y, x_722.z);
        let x_724 : vec3<f32> = u_xlat17;
        let x_728 : vec2<f32> = clamp(vec2<f32>(x_724.x, x_724.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_729 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_728.x, x_728.y, x_729.z);
        let x_731 : u32 = u_xlatu24;
        let x_734 : vec4<f32> = x_644.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_731)];
        let x_736 : vec3<f32> = u_xlat17;
        let x_739 : u32 = u_xlatu24;
        let x_742 : vec4<f32> = x_644.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_739)];
        let x_744 : vec2<f32> = ((vec2<f32>(x_734.x, x_734.y) * vec2<f32>(x_736.x, x_736.y)) + vec2<f32>(x_742.z, x_742.w));
        let x_745 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_744.x, x_744.y, x_745.z);
      } else {
        let x_749 : i32 = u_xlati35;
        u_xlatb35 = (x_749 == 1i);
        let x_751 : bool = u_xlatb35;
        u_xlati35 = select(0i, 1i, x_751);
        let x_753 : i32 = u_xlati35;
        if ((x_753 != 0i)) {
          let x_758 : vec3<f32> = vs_TEXCOORD1;
          let x_760 : i32 = u_xlati7;
          let x_763 : i32 = u_xlati7;
          let x_767 : vec4<f32> = x_644.x_AdditionalLightsWorldToLights[((x_760 + 1i) / 4i)][((x_763 + 1i) % 4i)];
          let x_769 : vec2<f32> = (vec2<f32>(x_758.y, x_758.y) * vec2<f32>(x_767.x, x_767.y));
          let x_770 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_769.x, x_769.y, x_770.z, x_770.w);
          let x_772 : i32 = u_xlati7;
          let x_774 : i32 = u_xlati7;
          let x_777 : vec4<f32> = x_644.x_AdditionalLightsWorldToLights[(x_772 / 4i)][(x_774 % 4i)];
          let x_779 : vec3<f32> = vs_TEXCOORD1;
          let x_782 : vec4<f32> = u_xlat8;
          let x_784 : vec2<f32> = ((vec2<f32>(x_777.x, x_777.y) * vec2<f32>(x_779.x, x_779.x)) + vec2<f32>(x_782.x, x_782.y));
          let x_785 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_784.x, x_784.y, x_785.z, x_785.w);
          let x_787 : i32 = u_xlati7;
          let x_790 : i32 = u_xlati7;
          let x_794 : vec4<f32> = x_644.x_AdditionalLightsWorldToLights[((x_787 + 2i) / 4i)][((x_790 + 2i) % 4i)];
          let x_796 : vec3<f32> = vs_TEXCOORD1;
          let x_799 : vec4<f32> = u_xlat8;
          let x_801 : vec2<f32> = ((vec2<f32>(x_794.x, x_794.y) * vec2<f32>(x_796.z, x_796.z)) + vec2<f32>(x_799.x, x_799.y));
          let x_802 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_801.x, x_801.y, x_802.z, x_802.w);
          let x_804 : vec4<f32> = u_xlat8;
          let x_806 : i32 = u_xlati7;
          let x_809 : i32 = u_xlati7;
          let x_813 : vec4<f32> = x_644.x_AdditionalLightsWorldToLights[((x_806 + 3i) / 4i)][((x_809 + 3i) % 4i)];
          let x_815 : vec2<f32> = (vec2<f32>(x_804.x, x_804.y) + vec2<f32>(x_813.x, x_813.y));
          let x_816 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_815.x, x_815.y, x_816.z, x_816.w);
          let x_818 : vec4<f32> = u_xlat8;
          let x_821 : vec2<f32> = ((vec2<f32>(x_818.x, x_818.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_822 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_821.x, x_821.y, x_822.z, x_822.w);
          let x_824 : vec4<f32> = u_xlat8;
          let x_826 : vec2<f32> = fract(vec2<f32>(x_824.x, x_824.y));
          let x_827 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_826.x, x_826.y, x_827.z, x_827.w);
          let x_829 : u32 = u_xlatu24;
          let x_832 : vec4<f32> = x_644.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_829)];
          let x_834 : vec4<f32> = u_xlat8;
          let x_837 : u32 = u_xlatu24;
          let x_840 : vec4<f32> = x_644.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_837)];
          let x_842 : vec2<f32> = ((vec2<f32>(x_832.x, x_832.y) * vec2<f32>(x_834.x, x_834.y)) + vec2<f32>(x_840.z, x_840.w));
          let x_843 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_842.x, x_842.y, x_843.z);
        } else {
          let x_846 : vec3<f32> = vs_TEXCOORD1;
          let x_848 : i32 = u_xlati7;
          let x_851 : i32 = u_xlati7;
          let x_855 : vec4<f32> = x_644.x_AdditionalLightsWorldToLights[((x_848 + 1i) / 4i)][((x_851 + 1i) % 4i)];
          u_xlat8 = (vec4<f32>(x_846.y, x_846.y, x_846.y, x_846.y) * x_855);
          let x_857 : i32 = u_xlati7;
          let x_859 : i32 = u_xlati7;
          let x_862 : vec4<f32> = x_644.x_AdditionalLightsWorldToLights[(x_857 / 4i)][(x_859 % 4i)];
          let x_863 : vec3<f32> = vs_TEXCOORD1;
          let x_866 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_862 * vec4<f32>(x_863.x, x_863.x, x_863.x, x_863.x)) + x_866);
          let x_868 : i32 = u_xlati7;
          let x_871 : i32 = u_xlati7;
          let x_875 : vec4<f32> = x_644.x_AdditionalLightsWorldToLights[((x_868 + 2i) / 4i)][((x_871 + 2i) % 4i)];
          let x_876 : vec3<f32> = vs_TEXCOORD1;
          let x_879 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_875 * vec4<f32>(x_876.z, x_876.z, x_876.z, x_876.z)) + x_879);
          let x_881 : vec4<f32> = u_xlat8;
          let x_882 : i32 = u_xlati7;
          let x_885 : i32 = u_xlati7;
          let x_889 : vec4<f32> = x_644.x_AdditionalLightsWorldToLights[((x_882 + 3i) / 4i)][((x_885 + 3i) % 4i)];
          u_xlat8 = (x_881 + x_889);
          let x_891 : vec4<f32> = u_xlat8;
          let x_893 : vec4<f32> = u_xlat8;
          let x_895 : vec3<f32> = (vec3<f32>(x_891.x, x_891.y, x_891.z) / vec3<f32>(x_893.w, x_893.w, x_893.w));
          let x_896 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_895.x, x_895.y, x_895.z, x_896.w);
          let x_898 : vec4<f32> = u_xlat8;
          let x_900 : vec4<f32> = u_xlat8;
          u_xlat35 = dot(vec3<f32>(x_898.x, x_898.y, x_898.z), vec3<f32>(x_900.x, x_900.y, x_900.z));
          let x_903 : f32 = u_xlat35;
          u_xlat35 = inverseSqrt(x_903);
          let x_905 : f32 = u_xlat35;
          let x_907 : vec4<f32> = u_xlat8;
          let x_909 : vec3<f32> = (vec3<f32>(x_905, x_905, x_905) * vec3<f32>(x_907.x, x_907.y, x_907.z));
          let x_910 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_909.x, x_909.y, x_909.z, x_910.w);
          let x_912 : vec4<f32> = u_xlat8;
          u_xlat35 = dot(abs(vec3<f32>(x_912.x, x_912.y, x_912.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_917 : f32 = u_xlat35;
          u_xlat35 = max(x_917, 0.000001f);
          let x_920 : f32 = u_xlat35;
          u_xlat35 = (1.0f / x_920);
          let x_923 : f32 = u_xlat35;
          let x_925 : vec4<f32> = u_xlat8;
          u_xlat9 = (vec3<f32>(x_923, x_923, x_923) * vec3<f32>(x_925.z, x_925.x, x_925.y));
          let x_929 : f32 = u_xlat9.x;
          u_xlat9.x = -(x_929);
          let x_933 : f32 = u_xlat9.x;
          u_xlat9.x = clamp(x_933, 0.0f, 1.0f);
          let x_938 : vec3<f32> = u_xlat9;
          let x_941 : vec4<bool> = (vec4<f32>(x_938.y, x_938.y, x_938.y, x_938.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_942 : vec2<bool> = vec2<bool>(x_941.x, x_941.w);
          let x_943 : vec4<bool> = u_xlatb7;
          u_xlatb7 = vec4<bool>(x_942.x, x_943.y, x_943.z, x_942.y);
          let x_947 : bool = u_xlatb7.x;
          if (x_947) {
            let x_952 : f32 = u_xlat9.x;
            x_948 = x_952;
          } else {
            let x_955 : f32 = u_xlat9.x;
            x_948 = -(x_955);
          }
          let x_957 : f32 = x_948;
          u_xlat7.x = x_957;
          let x_960 : bool = u_xlatb7.w;
          if (x_960) {
            let x_965 : f32 = u_xlat9.x;
            x_961 = x_965;
          } else {
            let x_968 : f32 = u_xlat9.x;
            x_961 = -(x_968);
          }
          let x_970 : f32 = x_961;
          u_xlat7.w = x_970;
          let x_972 : vec4<f32> = u_xlat8;
          let x_974 : f32 = u_xlat35;
          let x_977 : vec4<f32> = u_xlat7;
          let x_979 : vec2<f32> = ((vec2<f32>(x_972.x, x_972.y) * vec2<f32>(x_974, x_974)) + vec2<f32>(x_977.x, x_977.w));
          let x_980 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_979.x, x_980.y, x_980.z, x_979.y);
          let x_982 : vec4<f32> = u_xlat7;
          let x_985 : vec2<f32> = ((vec2<f32>(x_982.x, x_982.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_986 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_985.x, x_986.y, x_986.z, x_985.y);
          let x_988 : vec4<f32> = u_xlat7;
          let x_992 : vec2<f32> = clamp(vec2<f32>(x_988.x, x_988.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_993 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_992.x, x_993.y, x_993.z, x_992.y);
          let x_995 : u32 = u_xlatu24;
          let x_998 : vec4<f32> = x_644.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_995)];
          let x_1000 : vec4<f32> = u_xlat7;
          let x_1003 : u32 = u_xlatu24;
          let x_1006 : vec4<f32> = x_644.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1003)];
          let x_1008 : vec2<f32> = ((vec2<f32>(x_998.x, x_998.y) * vec2<f32>(x_1000.x, x_1000.w)) + vec2<f32>(x_1006.z, x_1006.w));
          let x_1009 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_1008.x, x_1008.y, x_1009.z);
        }
      }
      let x_1016 : vec3<f32> = u_xlat17;
      let x_1019 : f32 = x_43.x_GlobalMipBias.x;
      let x_1020 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1016.x, x_1016.y), x_1019);
      u_xlat7 = x_1020;
      let x_1022 : bool = u_xlatb4.y;
      if (x_1022) {
        let x_1027 : f32 = u_xlat7.w;
        x_1023 = x_1027;
      } else {
        let x_1030 : f32 = u_xlat7.x;
        x_1023 = x_1030;
      }
      let x_1031 : f32 = x_1023;
      u_xlat35 = x_1031;
      let x_1033 : bool = u_xlatb4.x;
      if (x_1033) {
        let x_1037 : vec4<f32> = u_xlat7;
        x_1034 = vec3<f32>(x_1037.x, x_1037.y, x_1037.z);
      } else {
        let x_1040 : f32 = u_xlat35;
        x_1034 = vec3<f32>(x_1040, x_1040, x_1040);
      }
      let x_1042 : vec3<f32> = x_1034;
      let x_1043 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_1042.x, x_1042.y, x_1042.z, x_1043.w);
    } else {
      u_xlat7.x = 1.0f;
      u_xlat7.y = 1.0f;
      u_xlat7.z = 1.0f;
    }
    let x_1049 : vec4<f32> = u_xlat7;
    let x_1051 : u32 = u_xlatu24;
    let x_1054 : vec4<f32> = x_542.x_AdditionalLightsColor[bitcast<i32>(x_1051)];
    let x_1056 : vec3<f32> = (vec3<f32>(x_1049.x, x_1049.y, x_1049.z) * vec3<f32>(x_1054.x, x_1054.y, x_1054.z));
    let x_1057 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1056.x, x_1056.y, x_1056.z, x_1057.w);
    let x_1059 : f32 = u_xlat32;
    let x_1061 : vec4<f32> = u_xlat7;
    let x_1063 : vec3<f32> = (vec3<f32>(x_1059, x_1059, x_1059) * vec3<f32>(x_1061.x, x_1061.y, x_1061.z));
    let x_1064 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1063.x, x_1063.y, x_1063.z, x_1064.w);
    let x_1066 : f32 = u_xlat34;
    let x_1068 : vec4<f32> = u_xlat7;
    let x_1070 : vec3<f32> = (vec3<f32>(x_1066, x_1066, x_1066) * vec3<f32>(x_1068.x, x_1068.y, x_1068.z));
    let x_1071 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1070.x, x_1070.y, x_1070.z, x_1071.w);
    let x_1073 : vec3<f32> = u_xlat1;
    let x_1074 : vec3<f32> = u_xlat6;
    u_xlat24 = dot(x_1073, x_1074);
    let x_1076 : f32 = u_xlat24;
    u_xlat24 = clamp(x_1076, 0.0f, 1.0f);
    let x_1078 : f32 = u_xlat24;
    let x_1080 : vec4<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_1078, x_1078, x_1078) * vec3<f32>(x_1080.x, x_1080.y, x_1080.z));
    let x_1083 : vec3<f32> = u_xlat6;
    let x_1084 : vec4<f32> = u_xlat0;
    let x_1087 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_1083 * vec3<f32>(x_1084.y, x_1084.z, x_1084.w)) + x_1087);

    continuing {
      let x_1089 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1089 + bitcast<u32>(1i));
    }
  }
  let x_1092 : vec4<f32> = u_xlat2;
  let x_1094 : vec4<f32> = u_xlat0;
  let x_1097 : vec3<f32> = u_xlat3;
  u_xlat10 = ((vec3<f32>(x_1092.x, x_1092.y, x_1092.z) * vec3<f32>(x_1094.y, x_1094.z, x_1094.w)) + x_1097);
  let x_1101 : vec3<f32> = u_xlat5;
  let x_1102 : vec3<f32> = u_xlat10;
  let x_1103 : vec3<f32> = (x_1101 + x_1102);
  let x_1104 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1103.x, x_1103.y, x_1103.z, x_1104.w);
  let x_1108 : f32 = x_55.x_Surface;
  u_xlatb10 = (x_1108 == 1.0f);
  let x_1110 : bool = u_xlatb10;
  if (x_1110) {
    let x_1115 : f32 = u_xlat0.x;
    x_1111 = x_1115;
  } else {
    x_1111 = 1.0f;
  }
  let x_1117 : f32 = x_1111;
  SV_Target0.w = x_1117;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}

