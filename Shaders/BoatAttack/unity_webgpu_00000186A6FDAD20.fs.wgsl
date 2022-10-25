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

type Arr_2 = array<vec4<f32>, 256u>;

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_7 = array<strided_arr, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_6,
  x_AdditionalLightsColor : Arr_6,
  x_AdditionalLightsAttenuation : Arr_6,
  x_AdditionalLightsSpotDir : Arr_6,
  x_AdditionalLightsOcclusionProbes : Arr_6,
  x_AdditionalLightsLayerMasks : Arr_7,
}

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(4) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_55 : UnityPerMaterial;

@group(0) @binding(3) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_92 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_306 : MainLightShadows;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_491 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb8 : bool;
  var x_99 : f32;
  var u_xlatb1 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat23 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb10 : bool;
  var u_xlatb17 : bool;
  var x_333 : f32;
  var u_xlat17 : f32;
  var u_xlatu22 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu25 : u32;
  var u_xlati5 : i32;
  var u_xlat25 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati25 : i32;
  var u_xlat5 : vec3<f32>;
  var u_xlat26 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlatb7 : bool;
  var x_620 : f32;
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
  let x_62 : vec4<f32> = hlslcc_FragCoord;
  let x_66 : f32 = x_43.x_DitheringTextureInvSize;
  let x_68 : vec2<f32> = (vec2<f32>(x_62.x, x_62.y) * vec2<f32>(x_66, x_66));
  let x_69 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_68.x, x_68.y, x_69.z, x_69.w);
  let x_76 : vec4<f32> = u_xlat1;
  let x_79 : f32 = x_43.x_GlobalMipBias.x;
  let x_80 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_76.x, x_76.y), x_79);
  u_xlat1.x = x_80.w;
  let x_95 : f32 = x_92.unity_LODFade.x;
  u_xlatb8 = (x_95 >= 0.0f);
  let x_98 : bool = u_xlatb8;
  if (x_98) {
    let x_103 : f32 = u_xlat1.x;
    x_99 = abs(x_103);
  } else {
    let x_107 : f32 = u_xlat1.x;
    x_99 = -(abs(x_107));
  }
  let x_110 : f32 = x_99;
  u_xlat1.x = x_110;
  let x_113 : f32 = u_xlat1.x;
  let x_116 : f32 = x_92.unity_LODFade.x;
  u_xlat1.x = (-(x_113) + x_116);
  let x_121 : f32 = u_xlat1.x;
  u_xlatb1 = (x_121 < 0.0f);
  let x_123 : bool = u_xlatb1;
  if (((select(0i, 1i, x_123) * -1i) != 0i)) {
    discard;
  }
  let x_134 : vec3<f32> = vs_TEXCOORD2;
  let x_135 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_134, x_135);
  let x_139 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_139);
  let x_142 : vec4<f32> = u_xlat1;
  let x_144 : vec3<f32> = vs_TEXCOORD2;
  let x_145 : vec3<f32> = (vec3<f32>(x_142.x, x_142.x, x_142.x) * x_144);
  let x_146 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_145.x, x_145.y, x_145.z, x_146.w);
  u_xlat1.w = 1.0f;
  let x_153 : vec4<f32> = x_92.unity_SHAr;
  let x_154 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_153, x_154);
  let x_159 : vec4<f32> = x_92.unity_SHAg;
  let x_160 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_159, x_160);
  let x_166 : vec4<f32> = x_92.unity_SHAb;
  let x_167 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_166, x_167);
  let x_171 : vec4<f32> = u_xlat1;
  let x_173 : vec4<f32> = u_xlat1;
  u_xlat3 = (vec4<f32>(x_171.y, x_171.z, x_171.z, x_171.x) * vec4<f32>(x_173.x, x_173.y, x_173.z, x_173.z));
  let x_179 : vec4<f32> = x_92.unity_SHBr;
  let x_180 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_179, x_180);
  let x_185 : vec4<f32> = x_92.unity_SHBg;
  let x_186 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_185, x_186);
  let x_191 : vec4<f32> = x_92.unity_SHBb;
  let x_192 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_191, x_192);
  let x_197 : f32 = u_xlat1.y;
  let x_199 : f32 = u_xlat1.y;
  u_xlat22 = (x_197 * x_199);
  let x_202 : f32 = u_xlat1.x;
  let x_204 : f32 = u_xlat1.x;
  let x_206 : f32 = u_xlat22;
  u_xlat22 = ((x_202 * x_204) + -(x_206));
  let x_211 : vec4<f32> = x_92.unity_SHC;
  let x_213 : f32 = u_xlat22;
  let x_216 : vec3<f32> = u_xlat4;
  let x_217 : vec3<f32> = ((vec3<f32>(x_211.x, x_211.y, x_211.z) * vec3<f32>(x_213, x_213, x_213)) + x_216);
  let x_218 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_217.x, x_217.y, x_217.z, x_218.w);
  let x_220 : vec3<f32> = u_xlat2;
  let x_221 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_220 + vec3<f32>(x_221.x, x_221.y, x_221.z));
  let x_224 : vec3<f32> = u_xlat2;
  u_xlat2 = max(x_224, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_229 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_230 : vec2<f32> = vec2<f32>(x_229.x, x_229.y);
  let x_234 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_230.x, x_230.y));
  let x_235 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_234.x, x_234.y, x_235.z, x_235.w);
  let x_237 : vec4<f32> = u_xlat3;
  let x_239 : vec4<f32> = hlslcc_FragCoord;
  let x_241 : vec2<f32> = (vec2<f32>(x_237.x, x_237.y) * vec2<f32>(x_239.x, x_239.y));
  let x_242 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_241.x, x_241.y, x_242.z, x_242.w);
  let x_245 : f32 = u_xlat3.y;
  let x_248 : f32 = x_43.x_ScaleBiasRt.x;
  let x_251 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat22 = ((x_245 * x_248) + x_251);
  let x_253 : f32 = u_xlat22;
  u_xlat3.z = (-(x_253) + 1.0f);
  let x_262 : vec4<f32> = u_xlat3;
  let x_265 : f32 = x_43.x_GlobalMipBias.x;
  let x_266 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_262.x, x_262.z), x_265);
  u_xlat22 = x_266.x;
  let x_269 : f32 = u_xlat22;
  u_xlat23 = (x_269 + -1.0f);
  let x_274 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_275 : f32 = u_xlat23;
  u_xlat23 = ((x_274 * x_275) + 1.0f);
  let x_278 : f32 = u_xlat22;
  u_xlat22 = min(x_278, 1.0f);
  let x_282 : vec4<f32> = vs_TEXCOORD6;
  let x_283 : vec2<f32> = vec2<f32>(x_282.x, x_282.y);
  let x_285 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_283.x, x_283.y, x_285);
  let x_297 : vec3<f32> = txVec0;
  let x_299 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_297.xy, x_297.z);
  u_xlat3.x = x_299;
  let x_308 : f32 = x_306.x_MainLightShadowParams.x;
  u_xlat10.x = (-(x_308) + 1.0f);
  let x_313 : f32 = u_xlat3.x;
  let x_315 : f32 = x_306.x_MainLightShadowParams.x;
  let x_318 : f32 = u_xlat10.x;
  u_xlat3.x = ((x_313 * x_315) + x_318);
  let x_323 : f32 = vs_TEXCOORD6.z;
  u_xlatb10 = (0.0f >= x_323);
  let x_327 : f32 = vs_TEXCOORD6.z;
  u_xlatb17 = (x_327 >= 1.0f);
  let x_329 : bool = u_xlatb17;
  let x_330 : bool = u_xlatb10;
  u_xlatb10 = (x_329 | x_330);
  let x_332 : bool = u_xlatb10;
  if (x_332) {
    x_333 = 1.0f;
  } else {
    let x_338 : f32 = u_xlat3.x;
    x_333 = x_338;
  }
  let x_339 : f32 = x_333;
  u_xlat3.x = x_339;
  let x_342 : vec3<f32> = vs_TEXCOORD1;
  let x_346 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  u_xlat10 = (x_342 + -(x_346));
  let x_349 : vec3<f32> = u_xlat10;
  let x_350 : vec3<f32> = u_xlat10;
  u_xlat10.x = dot(x_349, x_350);
  let x_354 : f32 = u_xlat10.x;
  let x_356 : f32 = x_306.x_MainLightShadowParams.z;
  let x_359 : f32 = x_306.x_MainLightShadowParams.w;
  u_xlat10.x = ((x_354 * x_356) + x_359);
  let x_363 : f32 = u_xlat10.x;
  u_xlat10.x = clamp(x_363, 0.0f, 1.0f);
  let x_368 : f32 = u_xlat3.x;
  u_xlat17 = (-(x_368) + 1.0f);
  let x_372 : f32 = u_xlat10.x;
  let x_373 : f32 = u_xlat17;
  let x_376 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_372 * x_373) + x_376);
  let x_379 : f32 = u_xlat23;
  let x_383 : vec4<f32> = x_43.x_MainLightColor;
  u_xlat10 = (vec3<f32>(x_379, x_379, x_379) * vec3<f32>(x_383.x, x_383.y, x_383.z));
  let x_386 : f32 = u_xlat22;
  let x_388 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_386, x_386, x_386) * x_388);
  let x_391 : f32 = u_xlat3.x;
  let x_394 : f32 = x_92.unity_LightData.z;
  u_xlat22 = (x_391 * x_394);
  let x_396 : f32 = u_xlat22;
  let x_398 : vec3<f32> = u_xlat10;
  let x_399 : vec3<f32> = (vec3<f32>(x_396, x_396, x_396) * x_398);
  let x_400 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_399.x, x_399.y, x_399.z, x_400.w);
  let x_402 : vec4<f32> = u_xlat1;
  let x_405 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat22 = dot(vec3<f32>(x_402.x, x_402.y, x_402.z), vec3<f32>(x_405.x, x_405.y, x_405.z));
  let x_408 : f32 = u_xlat22;
  u_xlat22 = clamp(x_408, 0.0f, 1.0f);
  let x_410 : f32 = u_xlat22;
  let x_412 : vec4<f32> = u_xlat3;
  let x_414 : vec3<f32> = (vec3<f32>(x_410, x_410, x_410) * vec3<f32>(x_412.x, x_412.y, x_412.z));
  let x_415 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_414.x, x_414.y, x_414.z, x_415.w);
  let x_417 : vec4<f32> = u_xlat0;
  let x_419 : vec4<f32> = u_xlat3;
  let x_421 : vec3<f32> = (vec3<f32>(x_417.y, x_417.z, x_417.w) * vec3<f32>(x_419.x, x_419.y, x_419.z));
  let x_422 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_421.x, x_421.y, x_421.z, x_422.w);
  let x_425 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_427 : f32 = x_92.unity_LightData.y;
  u_xlat22 = min(x_425, x_427);
  let x_431 : f32 = u_xlat22;
  u_xlatu22 = bitcast<u32>(i32(x_431));
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_443 : u32 = u_xlatu_loop_1;
    let x_444 : u32 = u_xlatu22;
    if ((x_443 < x_444)) {
    } else {
      break;
    }
    let x_447 : u32 = u_xlatu_loop_1;
    u_xlatu25 = (x_447 >> 2u);
    let x_451 : u32 = u_xlatu_loop_1;
    u_xlati5 = bitcast<i32>((x_451 & 3u));
    let x_455 : u32 = u_xlatu25;
    let x_458 : vec4<f32> = x_92.unity_LightIndices[bitcast<i32>(x_455)];
    let x_468 : i32 = u_xlati5;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_473 : vec4<u32> = indexable[x_468];
    u_xlat25 = dot(x_458, bitcast<vec4<f32>>(x_473));
    let x_477 : f32 = u_xlat25;
    u_xlati25 = i32(x_477);
    let x_480 : vec3<f32> = vs_TEXCOORD1;
    let x_492 : i32 = u_xlati25;
    let x_494 : vec4<f32> = x_491.x_AdditionalLightsPosition[x_492];
    let x_497 : i32 = u_xlati25;
    let x_499 : vec4<f32> = x_491.x_AdditionalLightsPosition[x_497];
    u_xlat5 = ((-(x_480) * vec3<f32>(x_494.w, x_494.w, x_494.w)) + vec3<f32>(x_499.x, x_499.y, x_499.z));
    let x_503 : vec3<f32> = u_xlat5;
    let x_504 : vec3<f32> = u_xlat5;
    u_xlat26 = dot(x_503, x_504);
    let x_506 : f32 = u_xlat26;
    u_xlat26 = max(x_506, 6.10351562e-05f);
    let x_510 : f32 = u_xlat26;
    u_xlat6.x = inverseSqrt(x_510);
    let x_513 : vec3<f32> = u_xlat5;
    let x_514 : vec3<f32> = u_xlat6;
    u_xlat5 = (x_513 * vec3<f32>(x_514.x, x_514.x, x_514.x));
    let x_517 : f32 = u_xlat26;
    u_xlat6.x = (1.0f / x_517);
    let x_520 : f32 = u_xlat26;
    let x_521 : i32 = u_xlati25;
    let x_523 : f32 = x_491.x_AdditionalLightsAttenuation[x_521].x;
    u_xlat26 = (x_520 * x_523);
    let x_525 : f32 = u_xlat26;
    let x_527 : f32 = u_xlat26;
    u_xlat26 = ((-(x_525) * x_527) + 1.0f);
    let x_530 : f32 = u_xlat26;
    u_xlat26 = max(x_530, 0.0f);
    let x_532 : f32 = u_xlat26;
    let x_533 : f32 = u_xlat26;
    u_xlat26 = (x_532 * x_533);
    let x_535 : f32 = u_xlat26;
    let x_537 : f32 = u_xlat6.x;
    u_xlat26 = (x_535 * x_537);
    let x_539 : i32 = u_xlati25;
    let x_541 : vec4<f32> = x_491.x_AdditionalLightsSpotDir[x_539];
    let x_543 : vec3<f32> = u_xlat5;
    u_xlat6.x = dot(vec3<f32>(x_541.x, x_541.y, x_541.z), x_543);
    let x_547 : f32 = u_xlat6.x;
    let x_548 : i32 = u_xlati25;
    let x_550 : f32 = x_491.x_AdditionalLightsAttenuation[x_548].z;
    let x_552 : i32 = u_xlati25;
    let x_554 : f32 = x_491.x_AdditionalLightsAttenuation[x_552].w;
    u_xlat6.x = ((x_547 * x_550) + x_554);
    let x_558 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_558, 0.0f, 1.0f);
    let x_562 : f32 = u_xlat6.x;
    let x_564 : f32 = u_xlat6.x;
    u_xlat6.x = (x_562 * x_564);
    let x_567 : f32 = u_xlat26;
    let x_569 : f32 = u_xlat6.x;
    u_xlat26 = (x_567 * x_569);
    let x_571 : f32 = u_xlat23;
    let x_573 : i32 = u_xlati25;
    let x_575 : vec4<f32> = x_491.x_AdditionalLightsColor[x_573];
    u_xlat6 = (vec3<f32>(x_571, x_571, x_571) * vec3<f32>(x_575.x, x_575.y, x_575.z));
    let x_578 : f32 = u_xlat26;
    let x_580 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_578, x_578, x_578) * x_580);
    let x_582 : vec4<f32> = u_xlat1;
    let x_584 : vec3<f32> = u_xlat5;
    u_xlat25 = dot(vec3<f32>(x_582.x, x_582.y, x_582.z), x_584);
    let x_586 : f32 = u_xlat25;
    u_xlat25 = clamp(x_586, 0.0f, 1.0f);
    let x_588 : f32 = u_xlat25;
    let x_590 : vec3<f32> = u_xlat6;
    u_xlat5 = (vec3<f32>(x_588, x_588, x_588) * x_590);
    let x_592 : vec3<f32> = u_xlat5;
    let x_593 : vec4<f32> = u_xlat0;
    let x_596 : vec3<f32> = u_xlat4;
    u_xlat4 = ((x_592 * vec3<f32>(x_593.y, x_593.z, x_593.w)) + x_596);

    continuing {
      let x_598 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_598 + bitcast<u32>(1i));
    }
  }
  let x_601 : vec3<f32> = u_xlat2;
  let x_602 : vec4<f32> = u_xlat0;
  let x_605 : vec4<f32> = u_xlat3;
  u_xlat7 = ((x_601 * vec3<f32>(x_602.y, x_602.z, x_602.w)) + vec3<f32>(x_605.x, x_605.y, x_605.z));
  let x_610 : vec3<f32> = u_xlat4;
  let x_611 : vec3<f32> = u_xlat7;
  let x_612 : vec3<f32> = (x_610 + x_611);
  let x_613 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_612.x, x_612.y, x_612.z, x_613.w);
  let x_617 : f32 = x_55.x_Surface;
  u_xlatb7 = (x_617 == 1.0f);
  let x_619 : bool = u_xlatb7;
  if (x_619) {
    let x_624 : f32 = u_xlat0.x;
    x_620 = x_624;
  } else {
    x_620 = 1.0f;
  }
  let x_626 : f32 = x_620;
  SV_Target0.w = x_626;
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

