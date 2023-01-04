struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
  @size(4)
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
  x_MainTex_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Shininess : f32,
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

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_64 : UnityPerMaterial;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_262 : MainLightShadows;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(5) var<uniform> x_325 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_460 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_583 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_684 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_70 : f32;
  var u_xlat11 : f32;
  var u_xlat22 : f32;
  var u_xlat33 : f32;
  var u_xlatb22 : bool;
  var x_119 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat34 : f32;
  var u_xlat35 : f32;
  var u_xlatb35 : bool;
  var u_xlatb36 : bool;
  var u_xlat36 : f32;
  var u_xlatb5 : vec2<bool>;
  var x_411 : f32;
  var x_422 : vec3<f32>;
  var u_xlatu0 : u32;
  var u_xlat6 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu35 : u32;
  var u_xlati36 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat7 : vec3<f32>;
  var u_xlat37 : f32;
  var u_xlatu37 : u32;
  var u_xlati27 : i32;
  var u_xlati37 : i32;
  var u_xlati38 : i32;
  var u_xlat8 : vec4<f32>;
  var u_xlatb37 : bool;
  var u_xlat30 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb27 : vec2<bool>;
  var u_xlat27 : vec2<f32>;
  var x_980 : f32;
  var x_993 : f32;
  var x_1045 : f32;
  var x_1056 : vec3<f32>;
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
  let x_50 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, x_40, x_49);
  u_xlat0 = x_50;
  let x_52 : vec4<f32> = u_xlat0;
  let x_54 : vec4<f32> = vs_TEXCOORD7;
  u_xlat1 = (x_52 * x_54);
  let x_61 : f32 = u_xlat1.w;
  let x_67 : f32 = x_64.x_Cutoff;
  u_xlatb0 = (x_61 >= x_67);
  let x_69 : bool = u_xlatb0;
  if (x_69) {
    let x_74 : f32 = u_xlat1.w;
    x_70 = x_74;
  } else {
    x_70 = 0.0f;
  }
  let x_77 : f32 = x_70;
  u_xlat0.x = x_77;
  let x_81 : f32 = u_xlat0.w;
  let x_83 : f32 = vs_TEXCOORD7.w;
  let x_86 : f32 = x_64.x_Cutoff;
  u_xlat11 = ((x_81 * x_83) + -(x_86));
  let x_91 : f32 = u_xlat1.w;
  u_xlat22 = dpdxCoarse(x_91);
  let x_95 : f32 = u_xlat1.w;
  u_xlat33 = dpdyCoarse(x_95);
  let x_97 : f32 = u_xlat33;
  let x_99 : f32 = u_xlat22;
  u_xlat22 = (abs(x_97) + abs(x_99));
  let x_102 : f32 = u_xlat22;
  u_xlat22 = max(x_102, 0.0001f);
  let x_105 : f32 = u_xlat11;
  let x_106 : f32 = u_xlat22;
  u_xlat11 = (x_105 / x_106);
  let x_108 : f32 = u_xlat11;
  u_xlat11 = (x_108 + 0.5f);
  let x_111 : f32 = u_xlat11;
  u_xlat11 = clamp(x_111, 0.0f, 1.0f);
  let x_116 : f32 = x_43.x_AlphaToMaskAvailable;
  u_xlatb22 = !((x_116 == 0.0f));
  let x_118 : bool = u_xlatb22;
  if (x_118) {
    let x_122 : f32 = u_xlat11;
    x_119 = x_122;
  } else {
    let x_125 : f32 = u_xlat0.x;
    x_119 = x_125;
  }
  let x_126 : f32 = x_119;
  u_xlat0.x = x_126;
  let x_129 : f32 = u_xlat0.x;
  u_xlat0.x = (x_129 + -0.0001f);
  let x_134 : f32 = u_xlat0.x;
  u_xlatb0 = (x_134 < 0.0f);
  let x_136 : bool = u_xlatb0;
  if (((select(0i, 1i, x_136) * -1i) != 0i)) {
    discard;
  }
  let x_147 : vec3<f32> = vs_TEXCOORD3;
  let x_148 : vec3<f32> = vs_TEXCOORD3;
  u_xlat0.x = dot(x_147, x_148);
  let x_152 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_152);
  let x_157 : vec4<f32> = u_xlat0;
  let x_159 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_157.x, x_157.x, x_157.x) * x_159);
  let x_168 : vec2<f32> = vs_TEXCOORD1;
  let x_170 : f32 = x_43.x_GlobalMipBias.x;
  let x_171 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_168, x_170);
  u_xlat3 = vec3<f32>(x_171.x, x_171.y, x_171.z);
  let x_176 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_177 : vec2<f32> = vec2<f32>(x_176.x, x_176.y);
  let x_181 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_177.x, x_177.y));
  let x_182 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_181.x, x_182.y, x_182.z, x_181.y);
  let x_185 : vec4<f32> = u_xlat0;
  let x_187 : vec4<f32> = hlslcc_FragCoord;
  let x_189 : vec2<f32> = (vec2<f32>(x_185.x, x_185.w) * vec2<f32>(x_187.x, x_187.y));
  let x_190 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_189.x, x_189.y, x_190.z, x_190.w);
  let x_194 : f32 = u_xlat4.y;
  let x_197 : f32 = x_43.x_ScaleBiasRt.x;
  let x_200 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat0.x = ((x_194 * x_197) + x_200);
  let x_204 : f32 = u_xlat0.x;
  u_xlat4.z = (-(x_204) + 1.0f);
  let x_214 : vec4<f32> = u_xlat4;
  let x_217 : f32 = x_43.x_GlobalMipBias.x;
  let x_218 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_214.x, x_214.z), x_217);
  u_xlat0.x = x_218.x;
  let x_222 : f32 = u_xlat0.x;
  u_xlat33 = (x_222 + -1.0f);
  let x_227 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_228 : f32 = u_xlat33;
  u_xlat33 = ((x_227 * x_228) + 1.0f);
  let x_232 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_232, 1.0f);
  let x_237 : vec4<f32> = vs_TEXCOORD6;
  let x_238 : vec2<f32> = vec2<f32>(x_237.x, x_237.y);
  let x_240 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_238.x, x_238.y, x_240);
  let x_253 : vec3<f32> = txVec0;
  let x_255 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_253.xy, x_253.z);
  u_xlat34 = x_255;
  let x_264 : f32 = x_262.x_MainLightShadowParams.x;
  u_xlat35 = (-(x_264) + 1.0f);
  let x_267 : f32 = u_xlat34;
  let x_269 : f32 = x_262.x_MainLightShadowParams.x;
  let x_271 : f32 = u_xlat35;
  u_xlat34 = ((x_267 * x_269) + x_271);
  let x_275 : f32 = vs_TEXCOORD6.z;
  u_xlatb35 = (0.0f >= x_275);
  let x_279 : f32 = vs_TEXCOORD6.z;
  u_xlatb36 = (x_279 >= 1.0f);
  let x_281 : bool = u_xlatb35;
  let x_282 : bool = u_xlatb36;
  u_xlatb35 = (x_281 | x_282);
  let x_284 : bool = u_xlatb35;
  let x_285 : f32 = u_xlat34;
  u_xlat34 = select(x_285, 1.0f, x_284);
  let x_288 : vec4<f32> = vs_TEXCOORD2;
  let x_293 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_295 : vec3<f32> = (vec3<f32>(x_288.x, x_288.y, x_288.z) + -(x_293));
  let x_296 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_295.x, x_295.y, x_295.z, x_296.w);
  let x_298 : vec4<f32> = u_xlat4;
  let x_300 : vec4<f32> = u_xlat4;
  u_xlat35 = dot(vec3<f32>(x_298.x, x_298.y, x_298.z), vec3<f32>(x_300.x, x_300.y, x_300.z));
  let x_303 : f32 = u_xlat35;
  let x_305 : f32 = x_262.x_MainLightShadowParams.z;
  let x_308 : f32 = x_262.x_MainLightShadowParams.w;
  u_xlat35 = ((x_303 * x_305) + x_308);
  let x_310 : f32 = u_xlat35;
  u_xlat35 = clamp(x_310, 0.0f, 1.0f);
  let x_313 : f32 = u_xlat34;
  u_xlat36 = (-(x_313) + 1.0f);
  let x_316 : f32 = u_xlat35;
  let x_317 : f32 = u_xlat36;
  let x_319 : f32 = u_xlat34;
  u_xlat34 = ((x_316 * x_317) + x_319);
  let x_327 : f32 = x_325.x_MainLightCookieTextureFormat;
  u_xlatb35 = !((x_327 == -1.0f));
  let x_329 : bool = u_xlatb35;
  if (x_329) {
    let x_332 : vec4<f32> = vs_TEXCOORD2;
    let x_335 : vec4<f32> = x_325.x_MainLightWorldToLight[1i];
    let x_337 : vec2<f32> = (vec2<f32>(x_332.y, x_332.y) * vec2<f32>(x_335.x, x_335.y));
    let x_338 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_337.x, x_337.y, x_338.z, x_338.w);
    let x_341 : vec4<f32> = x_325.x_MainLightWorldToLight[0i];
    let x_343 : vec4<f32> = vs_TEXCOORD2;
    let x_346 : vec4<f32> = u_xlat4;
    let x_348 : vec2<f32> = ((vec2<f32>(x_341.x, x_341.y) * vec2<f32>(x_343.x, x_343.x)) + vec2<f32>(x_346.x, x_346.y));
    let x_349 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_348.x, x_348.y, x_349.z, x_349.w);
    let x_352 : vec4<f32> = x_325.x_MainLightWorldToLight[2i];
    let x_354 : vec4<f32> = vs_TEXCOORD2;
    let x_357 : vec4<f32> = u_xlat4;
    let x_359 : vec2<f32> = ((vec2<f32>(x_352.x, x_352.y) * vec2<f32>(x_354.z, x_354.z)) + vec2<f32>(x_357.x, x_357.y));
    let x_360 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_359.x, x_359.y, x_360.z, x_360.w);
    let x_362 : vec4<f32> = u_xlat4;
    let x_366 : vec4<f32> = x_325.x_MainLightWorldToLight[3i];
    let x_368 : vec2<f32> = (vec2<f32>(x_362.x, x_362.y) + vec2<f32>(x_366.x, x_366.y));
    let x_369 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_368.x, x_368.y, x_369.z, x_369.w);
    let x_371 : vec4<f32> = u_xlat4;
    let x_375 : vec2<f32> = ((vec2<f32>(x_371.x, x_371.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_376 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_375.x, x_375.y, x_376.z, x_376.w);
    let x_383 : vec4<f32> = u_xlat4;
    let x_386 : f32 = x_43.x_GlobalMipBias.x;
    let x_387 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_383.x, x_383.y), x_386);
    u_xlat4 = x_387;
    let x_392 : f32 = x_325.x_MainLightCookieTextureFormat;
    let x_394 : f32 = x_325.x_MainLightCookieTextureFormat;
    let x_396 : f32 = x_325.x_MainLightCookieTextureFormat;
    let x_398 : f32 = x_325.x_MainLightCookieTextureFormat;
    let x_399 : vec4<f32> = vec4<f32>(x_392, x_394, x_396, x_398);
    let x_407 : vec4<bool> = (vec4<f32>(x_399.x, x_399.y, x_399.z, x_399.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_407.x, x_407.y);
    let x_410 : bool = u_xlatb5.y;
    if (x_410) {
      let x_415 : f32 = u_xlat4.w;
      x_411 = x_415;
    } else {
      let x_418 : f32 = u_xlat4.x;
      x_411 = x_418;
    }
    let x_419 : f32 = x_411;
    u_xlat35 = x_419;
    let x_421 : bool = u_xlatb5.x;
    if (x_421) {
      let x_425 : vec4<f32> = u_xlat4;
      x_422 = vec3<f32>(x_425.x, x_425.y, x_425.z);
    } else {
      let x_428 : f32 = u_xlat35;
      x_422 = vec3<f32>(x_428, x_428, x_428);
    }
    let x_430 : vec3<f32> = x_422;
    let x_431 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_430.x, x_430.y, x_430.z, x_431.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_437 : vec4<f32> = u_xlat4;
  let x_440 : vec4<f32> = x_43.x_MainLightColor;
  let x_442 : vec3<f32> = (vec3<f32>(x_437.x, x_437.y, x_437.z) * vec3<f32>(x_440.x, x_440.y, x_440.z));
  let x_443 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_442.x, x_442.y, x_442.z, x_443.w);
  let x_445 : f32 = u_xlat33;
  let x_447 : vec4<f32> = u_xlat4;
  let x_449 : vec3<f32> = (vec3<f32>(x_445, x_445, x_445) * vec3<f32>(x_447.x, x_447.y, x_447.z));
  let x_450 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_449.x, x_449.y, x_449.z, x_450.w);
  let x_452 : vec4<f32> = u_xlat0;
  let x_454 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_452.x, x_452.x, x_452.x) * x_454);
  let x_456 : f32 = u_xlat34;
  let x_462 : f32 = x_460.unity_LightData.z;
  u_xlat0.x = (x_456 * x_462);
  let x_465 : vec4<f32> = u_xlat0;
  let x_467 : vec4<f32> = u_xlat4;
  let x_469 : vec3<f32> = (vec3<f32>(x_465.x, x_465.x, x_465.x) * vec3<f32>(x_467.x, x_467.y, x_467.z));
  let x_470 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_469.x, x_469.y, x_469.z, x_470.w);
  let x_472 : vec3<f32> = u_xlat2;
  let x_474 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat0.x = dot(x_472, vec3<f32>(x_474.x, x_474.y, x_474.z));
  let x_479 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_479, 0.0f, 1.0f);
  let x_482 : vec4<f32> = u_xlat0;
  let x_484 : vec4<f32> = u_xlat4;
  let x_486 : vec3<f32> = (vec3<f32>(x_482.x, x_482.x, x_482.x) * vec3<f32>(x_484.x, x_484.y, x_484.z));
  let x_487 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_486.x, x_486.y, x_486.z, x_487.w);
  let x_489 : vec4<f32> = u_xlat1;
  let x_491 : vec4<f32> = u_xlat4;
  let x_493 : vec3<f32> = (vec3<f32>(x_489.x, x_489.y, x_489.z) * vec3<f32>(x_491.x, x_491.y, x_491.z));
  let x_494 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_493.x, x_493.y, x_493.z, x_494.w);
  let x_498 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_500 : f32 = x_460.unity_LightData.y;
  u_xlat0.x = min(x_498, x_500);
  let x_506 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_506));
  let x_510 : f32 = x_325.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_512 : f32 = x_325.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_514 : f32 = x_325.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_516 : f32 = x_325.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_517 : vec4<f32> = vec4<f32>(x_510, x_512, x_514, x_516);
  let x_523 : vec4<bool> = (vec4<f32>(x_517.x, x_517.y, x_517.z, x_517.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_523.x, x_523.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_535 : u32 = u_xlatu_loop_1;
    let x_536 : u32 = u_xlatu0;
    if ((x_535 < x_536)) {
    } else {
      break;
    }
    let x_539 : u32 = u_xlatu_loop_1;
    u_xlatu35 = (x_539 >> 2u);
    let x_543 : u32 = u_xlatu_loop_1;
    u_xlati36 = bitcast<i32>((x_543 & 3u));
    let x_546 : u32 = u_xlatu35;
    let x_549 : vec4<f32> = x_460.unity_LightIndices[bitcast<i32>(x_546)];
    let x_559 : i32 = u_xlati36;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_564 : vec4<u32> = indexable[x_559];
    u_xlat35 = dot(x_549, bitcast<vec4<f32>>(x_564));
    let x_567 : f32 = u_xlat35;
    u_xlatu35 = bitcast<u32>(i32(x_567));
    let x_571 : vec4<f32> = vs_TEXCOORD2;
    let x_584 : u32 = u_xlatu35;
    let x_587 : vec4<f32> = x_583.x_AdditionalLightsPosition[bitcast<i32>(x_584)];
    let x_590 : u32 = u_xlatu35;
    let x_593 : vec4<f32> = x_583.x_AdditionalLightsPosition[bitcast<i32>(x_590)];
    u_xlat7 = ((-(vec3<f32>(x_571.x, x_571.y, x_571.z)) * vec3<f32>(x_587.w, x_587.w, x_587.w)) + vec3<f32>(x_593.x, x_593.y, x_593.z));
    let x_596 : vec3<f32> = u_xlat7;
    let x_597 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(x_596, x_597);
    let x_599 : f32 = u_xlat36;
    u_xlat36 = max(x_599, 6.10351562e-05f);
    let x_603 : f32 = u_xlat36;
    u_xlat37 = inverseSqrt(x_603);
    let x_605 : f32 = u_xlat37;
    let x_607 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_605, x_605, x_605) * x_607);
    let x_609 : f32 = u_xlat36;
    u_xlat37 = (1.0f / x_609);
    let x_611 : f32 = u_xlat36;
    let x_612 : u32 = u_xlatu35;
    let x_615 : f32 = x_583.x_AdditionalLightsAttenuation[bitcast<i32>(x_612)].x;
    u_xlat36 = (x_611 * x_615);
    let x_617 : f32 = u_xlat36;
    let x_619 : f32 = u_xlat36;
    u_xlat36 = ((-(x_617) * x_619) + 1.0f);
    let x_622 : f32 = u_xlat36;
    u_xlat36 = max(x_622, 0.0f);
    let x_624 : f32 = u_xlat36;
    let x_625 : f32 = u_xlat36;
    u_xlat36 = (x_624 * x_625);
    let x_627 : f32 = u_xlat36;
    let x_628 : f32 = u_xlat37;
    u_xlat36 = (x_627 * x_628);
    let x_630 : u32 = u_xlatu35;
    let x_633 : vec4<f32> = x_583.x_AdditionalLightsSpotDir[bitcast<i32>(x_630)];
    let x_635 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(vec3<f32>(x_633.x, x_633.y, x_633.z), x_635);
    let x_637 : f32 = u_xlat37;
    let x_638 : u32 = u_xlatu35;
    let x_641 : f32 = x_583.x_AdditionalLightsAttenuation[bitcast<i32>(x_638)].z;
    let x_643 : u32 = u_xlatu35;
    let x_646 : f32 = x_583.x_AdditionalLightsAttenuation[bitcast<i32>(x_643)].w;
    u_xlat37 = ((x_637 * x_641) + x_646);
    let x_648 : f32 = u_xlat37;
    u_xlat37 = clamp(x_648, 0.0f, 1.0f);
    let x_650 : f32 = u_xlat37;
    let x_651 : f32 = u_xlat37;
    u_xlat37 = (x_650 * x_651);
    let x_653 : f32 = u_xlat36;
    let x_654 : f32 = u_xlat37;
    u_xlat36 = (x_653 * x_654);
    let x_657 : u32 = u_xlatu35;
    u_xlatu37 = (x_657 >> 5u);
    let x_660 : u32 = u_xlatu35;
    u_xlati27 = (1i << bitcast<u32>((bitcast<i32>(x_660) & 31i)));
    let x_666 : i32 = u_xlati27;
    let x_668 : u32 = u_xlatu37;
    let x_671 : f32 = x_325.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_668)].el;
    u_xlati37 = bitcast<i32>((bitcast<u32>(x_666) & bitcast<u32>(x_671)));
    let x_675 : i32 = u_xlati37;
    if ((x_675 != 0i)) {
      let x_685 : u32 = u_xlatu35;
      let x_688 : f32 = x_684.x_AdditionalLightsLightTypes[bitcast<i32>(x_685)].el;
      u_xlati37 = i32(x_688);
      let x_690 : i32 = u_xlati37;
      u_xlati27 = select(1i, 0i, (x_690 != 0i));
      let x_694 : u32 = u_xlatu35;
      u_xlati38 = (bitcast<i32>(x_694) << bitcast<u32>(2i));
      let x_697 : i32 = u_xlati27;
      if ((x_697 != 0i)) {
        let x_702 : vec4<f32> = vs_TEXCOORD2;
        let x_704 : i32 = u_xlati38;
        let x_707 : i32 = u_xlati38;
        let x_711 : vec4<f32> = x_684.x_AdditionalLightsWorldToLights[((x_704 + 1i) / 4i)][((x_707 + 1i) % 4i)];
        let x_713 : vec3<f32> = (vec3<f32>(x_702.y, x_702.y, x_702.y) * vec3<f32>(x_711.x, x_711.y, x_711.w));
        let x_714 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_713.x, x_713.y, x_713.z, x_714.w);
        let x_716 : i32 = u_xlati38;
        let x_718 : i32 = u_xlati38;
        let x_721 : vec4<f32> = x_684.x_AdditionalLightsWorldToLights[(x_716 / 4i)][(x_718 % 4i)];
        let x_723 : vec4<f32> = vs_TEXCOORD2;
        let x_726 : vec4<f32> = u_xlat8;
        let x_728 : vec3<f32> = ((vec3<f32>(x_721.x, x_721.y, x_721.w) * vec3<f32>(x_723.x, x_723.x, x_723.x)) + vec3<f32>(x_726.x, x_726.y, x_726.z));
        let x_729 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_728.x, x_728.y, x_728.z, x_729.w);
        let x_731 : i32 = u_xlati38;
        let x_734 : i32 = u_xlati38;
        let x_738 : vec4<f32> = x_684.x_AdditionalLightsWorldToLights[((x_731 + 2i) / 4i)][((x_734 + 2i) % 4i)];
        let x_740 : vec4<f32> = vs_TEXCOORD2;
        let x_743 : vec4<f32> = u_xlat8;
        let x_745 : vec3<f32> = ((vec3<f32>(x_738.x, x_738.y, x_738.w) * vec3<f32>(x_740.z, x_740.z, x_740.z)) + vec3<f32>(x_743.x, x_743.y, x_743.z));
        let x_746 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_745.x, x_745.y, x_745.z, x_746.w);
        let x_748 : vec4<f32> = u_xlat8;
        let x_750 : i32 = u_xlati38;
        let x_753 : i32 = u_xlati38;
        let x_757 : vec4<f32> = x_684.x_AdditionalLightsWorldToLights[((x_750 + 3i) / 4i)][((x_753 + 3i) % 4i)];
        let x_759 : vec3<f32> = (vec3<f32>(x_748.x, x_748.y, x_748.z) + vec3<f32>(x_757.x, x_757.y, x_757.w));
        let x_760 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_759.x, x_759.y, x_759.z, x_760.w);
        let x_762 : vec4<f32> = u_xlat8;
        let x_764 : vec4<f32> = u_xlat8;
        let x_766 : vec2<f32> = (vec2<f32>(x_762.x, x_762.y) / vec2<f32>(x_764.z, x_764.z));
        let x_767 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_766.x, x_766.y, x_767.z, x_767.w);
        let x_769 : vec4<f32> = u_xlat8;
        let x_772 : vec2<f32> = ((vec2<f32>(x_769.x, x_769.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_773 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_772.x, x_772.y, x_773.z, x_773.w);
        let x_775 : vec4<f32> = u_xlat8;
        let x_779 : vec2<f32> = clamp(vec2<f32>(x_775.x, x_775.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_780 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_779.x, x_779.y, x_780.z, x_780.w);
        let x_782 : u32 = u_xlatu35;
        let x_785 : vec4<f32> = x_684.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_782)];
        let x_787 : vec4<f32> = u_xlat8;
        let x_790 : u32 = u_xlatu35;
        let x_793 : vec4<f32> = x_684.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_790)];
        let x_795 : vec2<f32> = ((vec2<f32>(x_785.x, x_785.y) * vec2<f32>(x_787.x, x_787.y)) + vec2<f32>(x_793.z, x_793.w));
        let x_796 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_795.x, x_795.y, x_796.z, x_796.w);
      } else {
        let x_800 : i32 = u_xlati37;
        u_xlatb37 = (x_800 == 1i);
        let x_802 : bool = u_xlatb37;
        u_xlati37 = select(0i, 1i, x_802);
        let x_804 : i32 = u_xlati37;
        if ((x_804 != 0i)) {
          let x_810 : vec4<f32> = vs_TEXCOORD2;
          let x_812 : i32 = u_xlati38;
          let x_815 : i32 = u_xlati38;
          let x_819 : vec4<f32> = x_684.x_AdditionalLightsWorldToLights[((x_812 + 1i) / 4i)][((x_815 + 1i) % 4i)];
          u_xlat30 = (vec2<f32>(x_810.y, x_810.y) * vec2<f32>(x_819.x, x_819.y));
          let x_822 : i32 = u_xlati38;
          let x_824 : i32 = u_xlati38;
          let x_827 : vec4<f32> = x_684.x_AdditionalLightsWorldToLights[(x_822 / 4i)][(x_824 % 4i)];
          let x_829 : vec4<f32> = vs_TEXCOORD2;
          let x_832 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_827.x, x_827.y) * vec2<f32>(x_829.x, x_829.x)) + x_832);
          let x_834 : i32 = u_xlati38;
          let x_837 : i32 = u_xlati38;
          let x_841 : vec4<f32> = x_684.x_AdditionalLightsWorldToLights[((x_834 + 2i) / 4i)][((x_837 + 2i) % 4i)];
          let x_843 : vec4<f32> = vs_TEXCOORD2;
          let x_846 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_841.x, x_841.y) * vec2<f32>(x_843.z, x_843.z)) + x_846);
          let x_848 : vec2<f32> = u_xlat30;
          let x_849 : i32 = u_xlati38;
          let x_852 : i32 = u_xlati38;
          let x_856 : vec4<f32> = x_684.x_AdditionalLightsWorldToLights[((x_849 + 3i) / 4i)][((x_852 + 3i) % 4i)];
          u_xlat30 = (x_848 + vec2<f32>(x_856.x, x_856.y));
          let x_859 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_859 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_862 : vec2<f32> = u_xlat30;
          u_xlat30 = fract(x_862);
          let x_864 : u32 = u_xlatu35;
          let x_867 : vec4<f32> = x_684.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_864)];
          let x_869 : vec2<f32> = u_xlat30;
          let x_871 : u32 = u_xlatu35;
          let x_874 : vec4<f32> = x_684.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_871)];
          let x_876 : vec2<f32> = ((vec2<f32>(x_867.x, x_867.y) * x_869) + vec2<f32>(x_874.z, x_874.w));
          let x_877 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_876.x, x_876.y, x_877.z, x_877.w);
        } else {
          let x_881 : vec4<f32> = vs_TEXCOORD2;
          let x_883 : i32 = u_xlati38;
          let x_886 : i32 = u_xlati38;
          let x_890 : vec4<f32> = x_684.x_AdditionalLightsWorldToLights[((x_883 + 1i) / 4i)][((x_886 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_881.y, x_881.y, x_881.y, x_881.y) * x_890);
          let x_892 : i32 = u_xlati38;
          let x_894 : i32 = u_xlati38;
          let x_897 : vec4<f32> = x_684.x_AdditionalLightsWorldToLights[(x_892 / 4i)][(x_894 % 4i)];
          let x_898 : vec4<f32> = vs_TEXCOORD2;
          let x_901 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_897 * vec4<f32>(x_898.x, x_898.x, x_898.x, x_898.x)) + x_901);
          let x_903 : i32 = u_xlati38;
          let x_906 : i32 = u_xlati38;
          let x_910 : vec4<f32> = x_684.x_AdditionalLightsWorldToLights[((x_903 + 2i) / 4i)][((x_906 + 2i) % 4i)];
          let x_911 : vec4<f32> = vs_TEXCOORD2;
          let x_914 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_910 * vec4<f32>(x_911.z, x_911.z, x_911.z, x_911.z)) + x_914);
          let x_916 : vec4<f32> = u_xlat9;
          let x_917 : i32 = u_xlati38;
          let x_920 : i32 = u_xlati38;
          let x_924 : vec4<f32> = x_684.x_AdditionalLightsWorldToLights[((x_917 + 3i) / 4i)][((x_920 + 3i) % 4i)];
          u_xlat9 = (x_916 + x_924);
          let x_926 : vec4<f32> = u_xlat9;
          let x_928 : vec4<f32> = u_xlat9;
          let x_930 : vec3<f32> = (vec3<f32>(x_926.x, x_926.y, x_926.z) / vec3<f32>(x_928.w, x_928.w, x_928.w));
          let x_931 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_930.x, x_930.y, x_930.z, x_931.w);
          let x_933 : vec4<f32> = u_xlat9;
          let x_935 : vec4<f32> = u_xlat9;
          u_xlat37 = dot(vec3<f32>(x_933.x, x_933.y, x_933.z), vec3<f32>(x_935.x, x_935.y, x_935.z));
          let x_938 : f32 = u_xlat37;
          u_xlat37 = inverseSqrt(x_938);
          let x_940 : f32 = u_xlat37;
          let x_942 : vec4<f32> = u_xlat9;
          let x_944 : vec3<f32> = (vec3<f32>(x_940, x_940, x_940) * vec3<f32>(x_942.x, x_942.y, x_942.z));
          let x_945 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_944.x, x_944.y, x_944.z, x_945.w);
          let x_947 : vec4<f32> = u_xlat9;
          u_xlat37 = dot(abs(vec3<f32>(x_947.x, x_947.y, x_947.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_952 : f32 = u_xlat37;
          u_xlat37 = max(x_952, 0.000001f);
          let x_955 : f32 = u_xlat37;
          u_xlat37 = (1.0f / x_955);
          let x_958 : f32 = u_xlat37;
          let x_960 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_958, x_958, x_958) * vec3<f32>(x_960.z, x_960.x, x_960.y));
          let x_964 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_964);
          let x_968 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_968, 0.0f, 1.0f);
          let x_972 : vec3<f32> = u_xlat10;
          let x_975 : vec4<bool> = (vec4<f32>(x_972.y, x_972.z, x_972.y, x_972.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb27 = vec2<bool>(x_975.x, x_975.y);
          let x_979 : bool = u_xlatb27.x;
          if (x_979) {
            let x_984 : f32 = u_xlat10.x;
            x_980 = x_984;
          } else {
            let x_987 : f32 = u_xlat10.x;
            x_980 = -(x_987);
          }
          let x_989 : f32 = x_980;
          u_xlat27.x = x_989;
          let x_992 : bool = u_xlatb27.y;
          if (x_992) {
            let x_997 : f32 = u_xlat10.x;
            x_993 = x_997;
          } else {
            let x_1000 : f32 = u_xlat10.x;
            x_993 = -(x_1000);
          }
          let x_1002 : f32 = x_993;
          u_xlat27.y = x_1002;
          let x_1004 : vec4<f32> = u_xlat9;
          let x_1006 : f32 = u_xlat37;
          let x_1009 : vec2<f32> = u_xlat27;
          u_xlat27 = ((vec2<f32>(x_1004.x, x_1004.y) * vec2<f32>(x_1006, x_1006)) + x_1009);
          let x_1011 : vec2<f32> = u_xlat27;
          u_xlat27 = ((x_1011 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1014 : vec2<f32> = u_xlat27;
          u_xlat27 = clamp(x_1014, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1018 : u32 = u_xlatu35;
          let x_1021 : vec4<f32> = x_684.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1018)];
          let x_1023 : vec2<f32> = u_xlat27;
          let x_1025 : u32 = u_xlatu35;
          let x_1028 : vec4<f32> = x_684.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1025)];
          let x_1030 : vec2<f32> = ((vec2<f32>(x_1021.x, x_1021.y) * x_1023) + vec2<f32>(x_1028.z, x_1028.w));
          let x_1031 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1030.x, x_1030.y, x_1031.z, x_1031.w);
        }
      }
      let x_1038 : vec4<f32> = u_xlat8;
      let x_1041 : f32 = x_43.x_GlobalMipBias.x;
      let x_1042 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1038.x, x_1038.y), x_1041);
      u_xlat8 = x_1042;
      let x_1044 : bool = u_xlatb5.y;
      if (x_1044) {
        let x_1049 : f32 = u_xlat8.w;
        x_1045 = x_1049;
      } else {
        let x_1052 : f32 = u_xlat8.x;
        x_1045 = x_1052;
      }
      let x_1053 : f32 = x_1045;
      u_xlat37 = x_1053;
      let x_1055 : bool = u_xlatb5.x;
      if (x_1055) {
        let x_1059 : vec4<f32> = u_xlat8;
        x_1056 = vec3<f32>(x_1059.x, x_1059.y, x_1059.z);
      } else {
        let x_1062 : f32 = u_xlat37;
        x_1056 = vec3<f32>(x_1062, x_1062, x_1062);
      }
      let x_1064 : vec3<f32> = x_1056;
      let x_1065 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1064.x, x_1064.y, x_1064.z, x_1065.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1071 : vec4<f32> = u_xlat8;
    let x_1073 : u32 = u_xlatu35;
    let x_1076 : vec4<f32> = x_583.x_AdditionalLightsColor[bitcast<i32>(x_1073)];
    let x_1078 : vec3<f32> = (vec3<f32>(x_1071.x, x_1071.y, x_1071.z) * vec3<f32>(x_1076.x, x_1076.y, x_1076.z));
    let x_1079 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1078.x, x_1078.y, x_1078.z, x_1079.w);
    let x_1081 : f32 = u_xlat33;
    let x_1083 : vec4<f32> = u_xlat8;
    let x_1085 : vec3<f32> = (vec3<f32>(x_1081, x_1081, x_1081) * vec3<f32>(x_1083.x, x_1083.y, x_1083.z));
    let x_1086 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1085.x, x_1085.y, x_1085.z, x_1086.w);
    let x_1088 : f32 = u_xlat36;
    let x_1090 : vec4<f32> = u_xlat8;
    let x_1092 : vec3<f32> = (vec3<f32>(x_1088, x_1088, x_1088) * vec3<f32>(x_1090.x, x_1090.y, x_1090.z));
    let x_1093 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1092.x, x_1092.y, x_1092.z, x_1093.w);
    let x_1095 : vec3<f32> = u_xlat2;
    let x_1096 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(x_1095, x_1096);
    let x_1098 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1098, 0.0f, 1.0f);
    let x_1100 : f32 = u_xlat35;
    let x_1102 : vec4<f32> = u_xlat8;
    u_xlat7 = (vec3<f32>(x_1100, x_1100, x_1100) * vec3<f32>(x_1102.x, x_1102.y, x_1102.z));
    let x_1105 : vec3<f32> = u_xlat7;
    let x_1106 : vec4<f32> = u_xlat1;
    let x_1109 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1105 * vec3<f32>(x_1106.x, x_1106.y, x_1106.z)) + x_1109);

    continuing {
      let x_1111 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1111 + bitcast<u32>(1i));
    }
  }
  let x_1113 : vec3<f32> = u_xlat3;
  let x_1114 : vec4<f32> = u_xlat1;
  let x_1117 : vec4<f32> = u_xlat4;
  let x_1119 : vec3<f32> = ((x_1113 * vec3<f32>(x_1114.x, x_1114.y, x_1114.z)) + vec3<f32>(x_1117.x, x_1117.y, x_1117.z));
  let x_1120 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1119.x, x_1119.y, x_1119.z, x_1120.w);
  let x_1124 : vec3<f32> = u_xlat6;
  let x_1125 : vec4<f32> = u_xlat1;
  let x_1127 : vec3<f32> = (x_1124 + vec3<f32>(x_1125.x, x_1125.y, x_1125.z));
  let x_1128 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1127.x, x_1127.y, x_1127.z, x_1128.w);
  let x_1130 : bool = u_xlatb22;
  let x_1131 : f32 = u_xlat11;
  SV_Target0.w = select(1.0f, x_1131, x_1130);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(5) vs_TEXCOORD7_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @location(4) vs_TEXCOORD6_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  main_1();
  return main_out(SV_Target0);
}

