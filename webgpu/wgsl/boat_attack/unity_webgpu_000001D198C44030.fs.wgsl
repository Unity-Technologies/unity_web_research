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
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
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

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(3) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MetallicTex : sampler;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

@group(0) @binding(4) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(3) var<uniform> x_302 : MainLightShadows;

@group(1) @binding(4) var<uniform> x_363 : LightCookies;

@group(0) @binding(6) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_554 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_808 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_909 : AdditionalLightsCookies;

@group(0) @binding(7) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : f32;
  var u_xlatb15 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat29 : f32;
  var u_xlat3 : vec3<f32>;
  var x_96 : f32;
  var x_110 : f32;
  var x_122 : f32;
  var u_xlat15 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat44 : f32;
  var u_xlat45 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat18 : f32;
  var u_xlat42 : f32;
  var u_xlat32 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat46 : f32;
  var u_xlat47 : f32;
  var u_xlatb47 : bool;
  var u_xlatb6 : bool;
  var u_xlat6 : vec4<f32>;
  var u_xlatb7 : vec2<bool>;
  var x_450 : f32;
  var x_461 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat48 : f32;
  var u_xlat8 : vec2<f32>;
  var u_xlat22 : vec3<f32>;
  var u_xlatu42 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu44 : u32;
  var u_xlati46 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat9 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatu48 : u32;
  var u_xlati35 : i32;
  var u_xlati48 : i32;
  var u_xlati49 : i32;
  var u_xlat11 : vec4<f32>;
  var u_xlatb48 : bool;
  var u_xlat39 : vec2<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb35 : vec2<bool>;
  var u_xlat35 : vec2<f32>;
  var x_1204 : f32;
  var x_1217 : f32;
  var x_1269 : f32;
  var x_1280 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_39 : vec4<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_39.x, x_39.y), x_50);
  u_xlat0 = x_51;
  let x_59 : vec4<f32> = vs_TEXCOORD0;
  let x_62 : f32 = x_44.x_GlobalMipBias.x;
  let x_63 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_59.x, x_59.y), x_62);
  u_xlat1 = x_63.x;
  let x_70 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb15 = (x_70 == 0.0f);
  let x_77 : vec3<f32> = vs_TEXCOORD7;
  let x_82 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_77) + x_82);
  let x_85 : vec3<f32> = u_xlat2;
  let x_86 : vec3<f32> = u_xlat2;
  u_xlat29 = dot(x_85, x_86);
  let x_88 : f32 = u_xlat29;
  u_xlat29 = inverseSqrt(x_88);
  let x_90 : f32 = u_xlat29;
  let x_92 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_90, x_90, x_90) * x_92);
  let x_95 : bool = u_xlatb15;
  if (x_95) {
    let x_100 : f32 = u_xlat2.x;
    x_96 = x_100;
  } else {
    let x_106 : f32 = x_44.unity_MatrixV[0i].z;
    x_96 = x_106;
  }
  let x_107 : f32 = x_96;
  u_xlat3.x = x_107;
  let x_109 : bool = u_xlatb15;
  if (x_109) {
    let x_115 : f32 = u_xlat2.y;
    x_110 = x_115;
  } else {
    let x_118 : f32 = x_44.unity_MatrixV[1i].z;
    x_110 = x_118;
  }
  let x_119 : f32 = x_110;
  u_xlat3.y = x_119;
  let x_121 : bool = u_xlatb15;
  if (x_121) {
    let x_126 : f32 = u_xlat2.z;
    x_122 = x_126;
  } else {
    let x_130 : f32 = x_44.unity_MatrixV[2i].z;
    x_122 = x_130;
  }
  let x_131 : f32 = x_122;
  u_xlat3.z = x_131;
  let x_135 : vec3<f32> = vs_TEXCOORD3;
  let x_136 : vec3<f32> = vs_TEXCOORD3;
  u_xlat15.x = dot(x_135, x_136);
  let x_140 : f32 = u_xlat15.x;
  u_xlat15.x = inverseSqrt(x_140);
  let x_143 : vec3<f32> = u_xlat15;
  let x_145 : vec3<f32> = vs_TEXCOORD3;
  u_xlat15 = (vec3<f32>(x_143.x, x_143.x, x_143.x) * x_145);
  let x_152 : vec4<f32> = vs_TEXCOORD0;
  let x_155 : f32 = x_44.x_GlobalMipBias.x;
  let x_156 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_152.z, x_152.w), x_155);
  u_xlat2 = vec3<f32>(x_156.x, x_156.y, x_156.z);
  let x_162 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_163 : vec2<f32> = vec2<f32>(x_162.x, x_162.y);
  let x_167 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_163.x, x_163.y));
  let x_168 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_167.x, x_167.y, x_168.z);
  let x_170 : vec3<f32> = u_xlat4;
  let x_172 : vec4<f32> = hlslcc_FragCoord;
  let x_174 : vec2<f32> = (vec2<f32>(x_170.x, x_170.y) * vec2<f32>(x_172.x, x_172.y));
  let x_175 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_174.x, x_174.y, x_175.z);
  let x_179 : f32 = u_xlat4.y;
  let x_182 : f32 = x_44.x_ScaleBiasRt.x;
  let x_185 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat44 = ((x_179 * x_182) + x_185);
  let x_187 : f32 = u_xlat44;
  u_xlat4.z = (-(x_187) + 1.0f);
  let x_191 : f32 = u_xlat1;
  u_xlat44 = ((-(x_191) * 0.959999979f) + 0.959999979f);
  let x_197 : f32 = u_xlat44;
  u_xlat45 = (-(x_197) + 1.0f);
  let x_201 : vec4<f32> = u_xlat0;
  let x_203 : f32 = u_xlat44;
  u_xlat5 = (vec3<f32>(x_201.x, x_201.y, x_201.z) * vec3<f32>(x_203, x_203, x_203));
  let x_206 : vec4<f32> = u_xlat0;
  let x_210 : vec3<f32> = (vec3<f32>(x_206.x, x_206.y, x_206.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_211 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_210.x, x_210.y, x_210.z, x_211.w);
  let x_213 : f32 = u_xlat1;
  let x_215 : vec4<f32> = u_xlat0;
  let x_220 : vec3<f32> = ((vec3<f32>(x_213, x_213, x_213) * vec3<f32>(x_215.x, x_215.y, x_215.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_221 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_220.x, x_220.y, x_220.z, x_221.w);
  let x_224 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_224) + 1.0f);
  let x_227 : f32 = u_xlat1;
  let x_228 : f32 = u_xlat1;
  u_xlat44 = (x_227 * x_228);
  let x_230 : f32 = u_xlat44;
  u_xlat44 = max(x_230, 0.0078125f);
  let x_234 : f32 = u_xlat44;
  let x_235 : f32 = u_xlat44;
  u_xlat18 = (x_234 * x_235);
  let x_239 : f32 = u_xlat0.w;
  let x_240 : f32 = u_xlat45;
  u_xlat42 = (x_239 + x_240);
  let x_242 : f32 = u_xlat42;
  u_xlat42 = clamp(x_242, 0.0f, 1.0f);
  let x_244 : f32 = u_xlat44;
  u_xlat45 = ((x_244 * 4.0f) + 2.0f);
  let x_254 : vec3<f32> = u_xlat4;
  let x_257 : f32 = x_44.x_GlobalMipBias.x;
  let x_258 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_254.x, x_254.z), x_257);
  u_xlat4.x = x_258.x;
  let x_263 : f32 = u_xlat4.x;
  u_xlat32 = (x_263 + -1.0f);
  let x_268 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_269 : f32 = u_xlat32;
  u_xlat32 = ((x_268 * x_269) + 1.0f);
  let x_273 : f32 = u_xlat4.x;
  u_xlat4.x = min(x_273, 1.0f);
  let x_278 : vec4<f32> = vs_TEXCOORD8;
  let x_279 : vec2<f32> = vec2<f32>(x_278.x, x_278.y);
  let x_281 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_279.x, x_279.y, x_281);
  let x_294 : vec3<f32> = txVec0;
  let x_296 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_294.xy, x_294.z);
  u_xlat46 = x_296;
  let x_304 : f32 = x_302.x_MainLightShadowParams.x;
  u_xlat47 = (-(x_304) + 1.0f);
  let x_307 : f32 = u_xlat46;
  let x_309 : f32 = x_302.x_MainLightShadowParams.x;
  let x_311 : f32 = u_xlat47;
  u_xlat46 = ((x_307 * x_309) + x_311);
  let x_315 : f32 = vs_TEXCOORD8.z;
  u_xlatb47 = (0.0f >= x_315);
  let x_319 : f32 = vs_TEXCOORD8.z;
  u_xlatb6 = (x_319 >= 1.0f);
  let x_321 : bool = u_xlatb47;
  let x_322 : bool = u_xlatb6;
  u_xlatb47 = (x_321 | x_322);
  let x_324 : bool = u_xlatb47;
  let x_325 : f32 = u_xlat46;
  u_xlat46 = select(x_325, 1.0f, x_324);
  let x_328 : vec3<f32> = vs_TEXCOORD7;
  let x_330 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_332 : vec3<f32> = (x_328 + -(x_330));
  let x_333 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_332.x, x_332.y, x_332.z, x_333.w);
  let x_335 : vec4<f32> = u_xlat6;
  let x_337 : vec4<f32> = u_xlat6;
  u_xlat47 = dot(vec3<f32>(x_335.x, x_335.y, x_335.z), vec3<f32>(x_337.x, x_337.y, x_337.z));
  let x_340 : f32 = u_xlat47;
  let x_342 : f32 = x_302.x_MainLightShadowParams.z;
  let x_345 : f32 = x_302.x_MainLightShadowParams.w;
  u_xlat47 = ((x_340 * x_342) + x_345);
  let x_347 : f32 = u_xlat47;
  u_xlat47 = clamp(x_347, 0.0f, 1.0f);
  let x_349 : f32 = u_xlat46;
  u_xlat6.x = (-(x_349) + 1.0f);
  let x_353 : f32 = u_xlat47;
  let x_355 : f32 = u_xlat6.x;
  let x_357 : f32 = u_xlat46;
  u_xlat46 = ((x_353 * x_355) + x_357);
  let x_365 : f32 = x_363.x_MainLightCookieTextureFormat;
  u_xlatb47 = !((x_365 == -1.0f));
  let x_367 : bool = u_xlatb47;
  if (x_367) {
    let x_370 : vec3<f32> = vs_TEXCOORD7;
    let x_373 : vec4<f32> = x_363.x_MainLightWorldToLight[1i];
    let x_375 : vec2<f32> = (vec2<f32>(x_370.y, x_370.y) * vec2<f32>(x_373.x, x_373.y));
    let x_376 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_375.x, x_375.y, x_376.z, x_376.w);
    let x_379 : vec4<f32> = x_363.x_MainLightWorldToLight[0i];
    let x_381 : vec3<f32> = vs_TEXCOORD7;
    let x_384 : vec4<f32> = u_xlat6;
    let x_386 : vec2<f32> = ((vec2<f32>(x_379.x, x_379.y) * vec2<f32>(x_381.x, x_381.x)) + vec2<f32>(x_384.x, x_384.y));
    let x_387 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_386.x, x_386.y, x_387.z, x_387.w);
    let x_390 : vec4<f32> = x_363.x_MainLightWorldToLight[2i];
    let x_392 : vec3<f32> = vs_TEXCOORD7;
    let x_395 : vec4<f32> = u_xlat6;
    let x_397 : vec2<f32> = ((vec2<f32>(x_390.x, x_390.y) * vec2<f32>(x_392.z, x_392.z)) + vec2<f32>(x_395.x, x_395.y));
    let x_398 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_397.x, x_397.y, x_398.z, x_398.w);
    let x_400 : vec4<f32> = u_xlat6;
    let x_404 : vec4<f32> = x_363.x_MainLightWorldToLight[3i];
    let x_406 : vec2<f32> = (vec2<f32>(x_400.x, x_400.y) + vec2<f32>(x_404.x, x_404.y));
    let x_407 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_406.x, x_406.y, x_407.z, x_407.w);
    let x_409 : vec4<f32> = u_xlat6;
    let x_414 : vec2<f32> = ((vec2<f32>(x_409.x, x_409.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_415 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_414.x, x_414.y, x_415.z, x_415.w);
    let x_422 : vec4<f32> = u_xlat6;
    let x_425 : f32 = x_44.x_GlobalMipBias.x;
    let x_426 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_422.x, x_422.y), x_425);
    u_xlat6 = x_426;
    let x_431 : f32 = x_363.x_MainLightCookieTextureFormat;
    let x_433 : f32 = x_363.x_MainLightCookieTextureFormat;
    let x_435 : f32 = x_363.x_MainLightCookieTextureFormat;
    let x_437 : f32 = x_363.x_MainLightCookieTextureFormat;
    let x_438 : vec4<f32> = vec4<f32>(x_431, x_433, x_435, x_437);
    let x_446 : vec4<bool> = (vec4<f32>(x_438.x, x_438.y, x_438.z, x_438.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_446.x, x_446.y);
    let x_449 : bool = u_xlatb7.y;
    if (x_449) {
      let x_454 : f32 = u_xlat6.w;
      x_450 = x_454;
    } else {
      let x_457 : f32 = u_xlat6.x;
      x_450 = x_457;
    }
    let x_458 : f32 = x_450;
    u_xlat47 = x_458;
    let x_460 : bool = u_xlatb7.x;
    if (x_460) {
      let x_464 : vec4<f32> = u_xlat6;
      x_461 = vec3<f32>(x_464.x, x_464.y, x_464.z);
    } else {
      let x_467 : f32 = u_xlat47;
      x_461 = vec3<f32>(x_467, x_467, x_467);
    }
    let x_469 : vec3<f32> = x_461;
    let x_470 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_469.x, x_469.y, x_469.z, x_470.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_476 : vec4<f32> = u_xlat6;
  let x_479 : vec4<f32> = x_44.x_MainLightColor;
  let x_481 : vec3<f32> = (vec3<f32>(x_476.x, x_476.y, x_476.z) * vec3<f32>(x_479.x, x_479.y, x_479.z));
  let x_482 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_481.x, x_481.y, x_481.z, x_482.w);
  let x_484 : f32 = u_xlat32;
  let x_486 : vec4<f32> = u_xlat6;
  let x_488 : vec3<f32> = (vec3<f32>(x_484, x_484, x_484) * vec3<f32>(x_486.x, x_486.y, x_486.z));
  let x_489 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_488.x, x_488.y, x_488.z, x_489.w);
  let x_491 : vec3<f32> = u_xlat3;
  let x_493 : vec3<f32> = u_xlat15;
  u_xlat47 = dot(-(x_491), x_493);
  let x_495 : f32 = u_xlat47;
  let x_496 : f32 = u_xlat47;
  u_xlat47 = (x_495 + x_496);
  let x_499 : vec3<f32> = u_xlat15;
  let x_500 : f32 = u_xlat47;
  let x_504 : vec3<f32> = u_xlat3;
  let x_506 : vec3<f32> = ((x_499 * -(vec3<f32>(x_500, x_500, x_500))) + -(x_504));
  let x_507 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_506.x, x_506.y, x_506.z, x_507.w);
  let x_509 : vec3<f32> = u_xlat15;
  let x_510 : vec3<f32> = u_xlat3;
  u_xlat47 = dot(x_509, x_510);
  let x_512 : f32 = u_xlat47;
  u_xlat47 = clamp(x_512, 0.0f, 1.0f);
  let x_514 : f32 = u_xlat47;
  u_xlat47 = (-(x_514) + 1.0f);
  let x_517 : f32 = u_xlat47;
  let x_518 : f32 = u_xlat47;
  u_xlat47 = (x_517 * x_518);
  let x_520 : f32 = u_xlat47;
  let x_521 : f32 = u_xlat47;
  u_xlat47 = (x_520 * x_521);
  let x_524 : f32 = u_xlat1;
  u_xlat48 = ((-(x_524) * 0.699999988f) + 1.700000048f);
  let x_530 : f32 = u_xlat1;
  let x_531 : f32 = u_xlat48;
  u_xlat1 = (x_530 * x_531);
  let x_533 : f32 = u_xlat1;
  u_xlat1 = (x_533 * 6.0f);
  let x_544 : vec4<f32> = u_xlat7;
  let x_546 : f32 = u_xlat1;
  let x_547 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_544.x, x_544.y, x_544.z), x_546);
  u_xlat7 = x_547;
  let x_549 : f32 = u_xlat7.w;
  u_xlat1 = (x_549 + -1.0f);
  let x_556 : f32 = x_554.unity_SpecCube0_HDR.w;
  let x_557 : f32 = u_xlat1;
  u_xlat1 = ((x_556 * x_557) + 1.0f);
  let x_560 : f32 = u_xlat1;
  u_xlat1 = max(x_560, 0.0f);
  let x_562 : f32 = u_xlat1;
  u_xlat1 = log2(x_562);
  let x_564 : f32 = u_xlat1;
  let x_566 : f32 = x_554.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_564 * x_566);
  let x_568 : f32 = u_xlat1;
  u_xlat1 = exp2(x_568);
  let x_570 : f32 = u_xlat1;
  let x_572 : f32 = x_554.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_570 * x_572);
  let x_574 : vec4<f32> = u_xlat7;
  let x_576 : f32 = u_xlat1;
  let x_578 : vec3<f32> = (vec3<f32>(x_574.x, x_574.y, x_574.z) * vec3<f32>(x_576, x_576, x_576));
  let x_579 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_578.x, x_578.y, x_578.z, x_579.w);
  let x_583 : f32 = u_xlat44;
  let x_585 : f32 = u_xlat44;
  u_xlat8 = ((vec2<f32>(x_583, x_583) * vec2<f32>(x_585, x_585)) + vec2<f32>(-1.0f, 1.0f));
  let x_591 : f32 = u_xlat8.y;
  u_xlat1 = (1.0f / x_591);
  let x_594 : vec4<f32> = u_xlat0;
  let x_597 : f32 = u_xlat42;
  u_xlat22 = (-(vec3<f32>(x_594.x, x_594.y, x_594.z)) + vec3<f32>(x_597, x_597, x_597));
  let x_600 : f32 = u_xlat47;
  let x_602 : vec3<f32> = u_xlat22;
  let x_604 : vec4<f32> = u_xlat0;
  u_xlat22 = ((vec3<f32>(x_600, x_600, x_600) * x_602) + vec3<f32>(x_604.x, x_604.y, x_604.z));
  let x_607 : f32 = u_xlat1;
  let x_609 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_607, x_607, x_607) * x_609);
  let x_611 : vec4<f32> = u_xlat7;
  let x_613 : vec3<f32> = u_xlat22;
  let x_614 : vec3<f32> = (vec3<f32>(x_611.x, x_611.y, x_611.z) * x_613);
  let x_615 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_614.x, x_614.y, x_614.z, x_615.w);
  let x_617 : vec3<f32> = u_xlat2;
  let x_618 : vec3<f32> = u_xlat5;
  let x_620 : vec4<f32> = u_xlat7;
  u_xlat2 = ((x_617 * x_618) + vec3<f32>(x_620.x, x_620.y, x_620.z));
  let x_623 : f32 = u_xlat46;
  let x_626 : f32 = x_554.unity_LightData.z;
  u_xlat42 = (x_623 * x_626);
  let x_628 : vec3<f32> = u_xlat15;
  let x_630 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1 = dot(x_628, vec3<f32>(x_630.x, x_630.y, x_630.z));
  let x_633 : f32 = u_xlat1;
  u_xlat1 = clamp(x_633, 0.0f, 1.0f);
  let x_635 : f32 = u_xlat42;
  let x_636 : f32 = u_xlat1;
  u_xlat42 = (x_635 * x_636);
  let x_638 : f32 = u_xlat42;
  let x_640 : vec4<f32> = u_xlat6;
  let x_642 : vec3<f32> = (vec3<f32>(x_638, x_638, x_638) * vec3<f32>(x_640.x, x_640.y, x_640.z));
  let x_643 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_642.x, x_642.y, x_642.z, x_643.w);
  let x_645 : vec3<f32> = u_xlat3;
  let x_647 : vec4<f32> = x_44.x_MainLightPosition;
  let x_649 : vec3<f32> = (x_645 + vec3<f32>(x_647.x, x_647.y, x_647.z));
  let x_650 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_649.x, x_649.y, x_649.z, x_650.w);
  let x_652 : vec4<f32> = u_xlat7;
  let x_654 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_652.x, x_652.y, x_652.z), vec3<f32>(x_654.x, x_654.y, x_654.z));
  let x_657 : f32 = u_xlat42;
  u_xlat42 = max(x_657, 1.17549435e-37f);
  let x_660 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_660);
  let x_662 : f32 = u_xlat42;
  let x_664 : vec4<f32> = u_xlat7;
  let x_666 : vec3<f32> = (vec3<f32>(x_662, x_662, x_662) * vec3<f32>(x_664.x, x_664.y, x_664.z));
  let x_667 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_666.x, x_666.y, x_666.z, x_667.w);
  let x_669 : vec3<f32> = u_xlat15;
  let x_670 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(x_669, vec3<f32>(x_670.x, x_670.y, x_670.z));
  let x_673 : f32 = u_xlat42;
  u_xlat42 = clamp(x_673, 0.0f, 1.0f);
  let x_676 : vec4<f32> = x_44.x_MainLightPosition;
  let x_678 : vec4<f32> = u_xlat7;
  u_xlat1 = dot(vec3<f32>(x_676.x, x_676.y, x_676.z), vec3<f32>(x_678.x, x_678.y, x_678.z));
  let x_681 : f32 = u_xlat1;
  u_xlat1 = clamp(x_681, 0.0f, 1.0f);
  let x_683 : f32 = u_xlat42;
  let x_684 : f32 = u_xlat42;
  u_xlat42 = (x_683 * x_684);
  let x_686 : f32 = u_xlat42;
  let x_688 : f32 = u_xlat8.x;
  u_xlat42 = ((x_686 * x_688) + 1.000010014f);
  let x_692 : f32 = u_xlat1;
  let x_693 : f32 = u_xlat1;
  u_xlat1 = (x_692 * x_693);
  let x_695 : f32 = u_xlat42;
  let x_696 : f32 = u_xlat42;
  u_xlat42 = (x_695 * x_696);
  let x_698 : f32 = u_xlat1;
  u_xlat1 = max(x_698, 0.100000001f);
  let x_701 : f32 = u_xlat42;
  let x_702 : f32 = u_xlat1;
  u_xlat42 = (x_701 * x_702);
  let x_704 : f32 = u_xlat45;
  let x_705 : f32 = u_xlat42;
  u_xlat42 = (x_704 * x_705);
  let x_707 : f32 = u_xlat18;
  let x_708 : f32 = u_xlat42;
  u_xlat42 = (x_707 / x_708);
  let x_710 : vec4<f32> = u_xlat0;
  let x_712 : f32 = u_xlat42;
  let x_715 : vec3<f32> = u_xlat5;
  let x_716 : vec3<f32> = ((vec3<f32>(x_710.x, x_710.y, x_710.z) * vec3<f32>(x_712, x_712, x_712)) + x_715);
  let x_717 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_716.x, x_716.y, x_716.z, x_717.w);
  let x_719 : vec4<f32> = u_xlat6;
  let x_721 : vec4<f32> = u_xlat7;
  let x_723 : vec3<f32> = (vec3<f32>(x_719.x, x_719.y, x_719.z) * vec3<f32>(x_721.x, x_721.y, x_721.z));
  let x_724 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_723.x, x_723.y, x_723.z, x_724.w);
  let x_727 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_729 : f32 = x_554.unity_LightData.y;
  u_xlat42 = min(x_727, x_729);
  let x_733 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_733));
  let x_737 : f32 = x_363.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_739 : f32 = x_363.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_741 : f32 = x_363.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_743 : f32 = x_363.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_744 : vec4<f32> = vec4<f32>(x_737, x_739, x_741, x_743);
  let x_750 : vec4<bool> = (vec4<f32>(x_744.x, x_744.y, x_744.z, x_744.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_750.x, x_750.y);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_761 : u32 = u_xlatu_loop_1;
    let x_762 : u32 = u_xlatu42;
    if ((x_761 < x_762)) {
    } else {
      break;
    }
    let x_765 : u32 = u_xlatu_loop_1;
    u_xlatu44 = (x_765 >> 2u);
    let x_769 : u32 = u_xlatu_loop_1;
    u_xlati46 = bitcast<i32>((x_769 & 3u));
    let x_772 : u32 = u_xlatu44;
    let x_775 : vec4<f32> = x_554.unity_LightIndices[bitcast<i32>(x_772)];
    let x_785 : i32 = u_xlati46;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_790 : vec4<u32> = indexable[x_785];
    u_xlat44 = dot(x_775, bitcast<vec4<f32>>(x_790));
    let x_793 : f32 = u_xlat44;
    u_xlatu44 = bitcast<u32>(i32(x_793));
    let x_797 : vec3<f32> = vs_TEXCOORD7;
    let x_809 : u32 = u_xlatu44;
    let x_812 : vec4<f32> = x_808.x_AdditionalLightsPosition[bitcast<i32>(x_809)];
    let x_815 : u32 = u_xlatu44;
    let x_818 : vec4<f32> = x_808.x_AdditionalLightsPosition[bitcast<i32>(x_815)];
    u_xlat9 = ((-(x_797) * vec3<f32>(x_812.w, x_812.w, x_812.w)) + vec3<f32>(x_818.x, x_818.y, x_818.z));
    let x_821 : vec3<f32> = u_xlat9;
    let x_822 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(x_821, x_822);
    let x_824 : f32 = u_xlat46;
    u_xlat46 = max(x_824, 6.10351562e-05f);
    let x_827 : f32 = u_xlat46;
    u_xlat47 = inverseSqrt(x_827);
    let x_830 : f32 = u_xlat47;
    let x_832 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_830, x_830, x_830) * x_832);
    let x_834 : f32 = u_xlat46;
    u_xlat48 = (1.0f / x_834);
    let x_836 : f32 = u_xlat46;
    let x_837 : u32 = u_xlatu44;
    let x_840 : f32 = x_808.x_AdditionalLightsAttenuation[bitcast<i32>(x_837)].x;
    u_xlat46 = (x_836 * x_840);
    let x_842 : f32 = u_xlat46;
    let x_844 : f32 = u_xlat46;
    u_xlat46 = ((-(x_842) * x_844) + 1.0f);
    let x_847 : f32 = u_xlat46;
    u_xlat46 = max(x_847, 0.0f);
    let x_849 : f32 = u_xlat46;
    let x_850 : f32 = u_xlat46;
    u_xlat46 = (x_849 * x_850);
    let x_852 : f32 = u_xlat46;
    let x_853 : f32 = u_xlat48;
    u_xlat46 = (x_852 * x_853);
    let x_855 : u32 = u_xlatu44;
    let x_858 : vec4<f32> = x_808.x_AdditionalLightsSpotDir[bitcast<i32>(x_855)];
    let x_860 : vec3<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_858.x, x_858.y, x_858.z), x_860);
    let x_862 : f32 = u_xlat48;
    let x_863 : u32 = u_xlatu44;
    let x_866 : f32 = x_808.x_AdditionalLightsAttenuation[bitcast<i32>(x_863)].z;
    let x_868 : u32 = u_xlatu44;
    let x_871 : f32 = x_808.x_AdditionalLightsAttenuation[bitcast<i32>(x_868)].w;
    u_xlat48 = ((x_862 * x_866) + x_871);
    let x_873 : f32 = u_xlat48;
    u_xlat48 = clamp(x_873, 0.0f, 1.0f);
    let x_875 : f32 = u_xlat48;
    let x_876 : f32 = u_xlat48;
    u_xlat48 = (x_875 * x_876);
    let x_878 : f32 = u_xlat46;
    let x_879 : f32 = u_xlat48;
    u_xlat46 = (x_878 * x_879);
    let x_882 : u32 = u_xlatu44;
    u_xlatu48 = (x_882 >> 5u);
    let x_885 : u32 = u_xlatu44;
    u_xlati35 = (1i << bitcast<u32>((bitcast<i32>(x_885) & 31i)));
    let x_891 : i32 = u_xlati35;
    let x_893 : u32 = u_xlatu48;
    let x_896 : f32 = x_363.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_893)].el;
    u_xlati48 = bitcast<i32>((bitcast<u32>(x_891) & bitcast<u32>(x_896)));
    let x_900 : i32 = u_xlati48;
    if ((x_900 != 0i)) {
      let x_910 : u32 = u_xlatu44;
      let x_913 : f32 = x_909.x_AdditionalLightsLightTypes[bitcast<i32>(x_910)].el;
      u_xlati48 = i32(x_913);
      let x_915 : i32 = u_xlati48;
      u_xlati35 = select(1i, 0i, (x_915 != 0i));
      let x_919 : u32 = u_xlatu44;
      u_xlati49 = (bitcast<i32>(x_919) << bitcast<u32>(2i));
      let x_922 : i32 = u_xlati35;
      if ((x_922 != 0i)) {
        let x_927 : vec3<f32> = vs_TEXCOORD7;
        let x_929 : i32 = u_xlati49;
        let x_932 : i32 = u_xlati49;
        let x_936 : vec4<f32> = x_909.x_AdditionalLightsWorldToLights[((x_929 + 1i) / 4i)][((x_932 + 1i) % 4i)];
        let x_938 : vec3<f32> = (vec3<f32>(x_927.y, x_927.y, x_927.y) * vec3<f32>(x_936.x, x_936.y, x_936.w));
        let x_939 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_938.x, x_938.y, x_938.z, x_939.w);
        let x_941 : i32 = u_xlati49;
        let x_943 : i32 = u_xlati49;
        let x_946 : vec4<f32> = x_909.x_AdditionalLightsWorldToLights[(x_941 / 4i)][(x_943 % 4i)];
        let x_948 : vec3<f32> = vs_TEXCOORD7;
        let x_951 : vec4<f32> = u_xlat11;
        let x_953 : vec3<f32> = ((vec3<f32>(x_946.x, x_946.y, x_946.w) * vec3<f32>(x_948.x, x_948.x, x_948.x)) + vec3<f32>(x_951.x, x_951.y, x_951.z));
        let x_954 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_953.x, x_953.y, x_953.z, x_954.w);
        let x_956 : i32 = u_xlati49;
        let x_959 : i32 = u_xlati49;
        let x_963 : vec4<f32> = x_909.x_AdditionalLightsWorldToLights[((x_956 + 2i) / 4i)][((x_959 + 2i) % 4i)];
        let x_965 : vec3<f32> = vs_TEXCOORD7;
        let x_968 : vec4<f32> = u_xlat11;
        let x_970 : vec3<f32> = ((vec3<f32>(x_963.x, x_963.y, x_963.w) * vec3<f32>(x_965.z, x_965.z, x_965.z)) + vec3<f32>(x_968.x, x_968.y, x_968.z));
        let x_971 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_970.x, x_970.y, x_970.z, x_971.w);
        let x_973 : vec4<f32> = u_xlat11;
        let x_975 : i32 = u_xlati49;
        let x_978 : i32 = u_xlati49;
        let x_982 : vec4<f32> = x_909.x_AdditionalLightsWorldToLights[((x_975 + 3i) / 4i)][((x_978 + 3i) % 4i)];
        let x_984 : vec3<f32> = (vec3<f32>(x_973.x, x_973.y, x_973.z) + vec3<f32>(x_982.x, x_982.y, x_982.w));
        let x_985 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_984.x, x_984.y, x_984.z, x_985.w);
        let x_987 : vec4<f32> = u_xlat11;
        let x_989 : vec4<f32> = u_xlat11;
        let x_991 : vec2<f32> = (vec2<f32>(x_987.x, x_987.y) / vec2<f32>(x_989.z, x_989.z));
        let x_992 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_991.x, x_991.y, x_992.z, x_992.w);
        let x_994 : vec4<f32> = u_xlat11;
        let x_997 : vec2<f32> = ((vec2<f32>(x_994.x, x_994.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_998 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_997.x, x_997.y, x_998.z, x_998.w);
        let x_1000 : vec4<f32> = u_xlat11;
        let x_1004 : vec2<f32> = clamp(vec2<f32>(x_1000.x, x_1000.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1005 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1004.x, x_1004.y, x_1005.z, x_1005.w);
        let x_1007 : u32 = u_xlatu44;
        let x_1010 : vec4<f32> = x_909.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1007)];
        let x_1012 : vec4<f32> = u_xlat11;
        let x_1015 : u32 = u_xlatu44;
        let x_1018 : vec4<f32> = x_909.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1015)];
        let x_1020 : vec2<f32> = ((vec2<f32>(x_1010.x, x_1010.y) * vec2<f32>(x_1012.x, x_1012.y)) + vec2<f32>(x_1018.z, x_1018.w));
        let x_1021 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1020.x, x_1020.y, x_1021.z, x_1021.w);
      } else {
        let x_1025 : i32 = u_xlati48;
        u_xlatb48 = (x_1025 == 1i);
        let x_1027 : bool = u_xlatb48;
        u_xlati48 = select(0i, 1i, x_1027);
        let x_1029 : i32 = u_xlati48;
        if ((x_1029 != 0i)) {
          let x_1034 : vec3<f32> = vs_TEXCOORD7;
          let x_1036 : i32 = u_xlati49;
          let x_1039 : i32 = u_xlati49;
          let x_1043 : vec4<f32> = x_909.x_AdditionalLightsWorldToLights[((x_1036 + 1i) / 4i)][((x_1039 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1034.y, x_1034.y) * vec2<f32>(x_1043.x, x_1043.y));
          let x_1046 : i32 = u_xlati49;
          let x_1048 : i32 = u_xlati49;
          let x_1051 : vec4<f32> = x_909.x_AdditionalLightsWorldToLights[(x_1046 / 4i)][(x_1048 % 4i)];
          let x_1053 : vec3<f32> = vs_TEXCOORD7;
          let x_1056 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1051.x, x_1051.y) * vec2<f32>(x_1053.x, x_1053.x)) + x_1056);
          let x_1058 : i32 = u_xlati49;
          let x_1061 : i32 = u_xlati49;
          let x_1065 : vec4<f32> = x_909.x_AdditionalLightsWorldToLights[((x_1058 + 2i) / 4i)][((x_1061 + 2i) % 4i)];
          let x_1067 : vec3<f32> = vs_TEXCOORD7;
          let x_1070 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1065.x, x_1065.y) * vec2<f32>(x_1067.z, x_1067.z)) + x_1070);
          let x_1072 : vec2<f32> = u_xlat39;
          let x_1073 : i32 = u_xlati49;
          let x_1076 : i32 = u_xlati49;
          let x_1080 : vec4<f32> = x_909.x_AdditionalLightsWorldToLights[((x_1073 + 3i) / 4i)][((x_1076 + 3i) % 4i)];
          u_xlat39 = (x_1072 + vec2<f32>(x_1080.x, x_1080.y));
          let x_1083 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1083 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1086 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1086);
          let x_1088 : u32 = u_xlatu44;
          let x_1091 : vec4<f32> = x_909.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1088)];
          let x_1093 : vec2<f32> = u_xlat39;
          let x_1095 : u32 = u_xlatu44;
          let x_1098 : vec4<f32> = x_909.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1095)];
          let x_1100 : vec2<f32> = ((vec2<f32>(x_1091.x, x_1091.y) * x_1093) + vec2<f32>(x_1098.z, x_1098.w));
          let x_1101 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1100.x, x_1100.y, x_1101.z, x_1101.w);
        } else {
          let x_1105 : vec3<f32> = vs_TEXCOORD7;
          let x_1107 : i32 = u_xlati49;
          let x_1110 : i32 = u_xlati49;
          let x_1114 : vec4<f32> = x_909.x_AdditionalLightsWorldToLights[((x_1107 + 1i) / 4i)][((x_1110 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1105.y, x_1105.y, x_1105.y, x_1105.y) * x_1114);
          let x_1116 : i32 = u_xlati49;
          let x_1118 : i32 = u_xlati49;
          let x_1121 : vec4<f32> = x_909.x_AdditionalLightsWorldToLights[(x_1116 / 4i)][(x_1118 % 4i)];
          let x_1122 : vec3<f32> = vs_TEXCOORD7;
          let x_1125 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1121 * vec4<f32>(x_1122.x, x_1122.x, x_1122.x, x_1122.x)) + x_1125);
          let x_1127 : i32 = u_xlati49;
          let x_1130 : i32 = u_xlati49;
          let x_1134 : vec4<f32> = x_909.x_AdditionalLightsWorldToLights[((x_1127 + 2i) / 4i)][((x_1130 + 2i) % 4i)];
          let x_1135 : vec3<f32> = vs_TEXCOORD7;
          let x_1138 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1134 * vec4<f32>(x_1135.z, x_1135.z, x_1135.z, x_1135.z)) + x_1138);
          let x_1140 : vec4<f32> = u_xlat12;
          let x_1141 : i32 = u_xlati49;
          let x_1144 : i32 = u_xlati49;
          let x_1148 : vec4<f32> = x_909.x_AdditionalLightsWorldToLights[((x_1141 + 3i) / 4i)][((x_1144 + 3i) % 4i)];
          u_xlat12 = (x_1140 + x_1148);
          let x_1150 : vec4<f32> = u_xlat12;
          let x_1152 : vec4<f32> = u_xlat12;
          let x_1154 : vec3<f32> = (vec3<f32>(x_1150.x, x_1150.y, x_1150.z) / vec3<f32>(x_1152.w, x_1152.w, x_1152.w));
          let x_1155 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1154.x, x_1154.y, x_1154.z, x_1155.w);
          let x_1157 : vec4<f32> = u_xlat12;
          let x_1159 : vec4<f32> = u_xlat12;
          u_xlat48 = dot(vec3<f32>(x_1157.x, x_1157.y, x_1157.z), vec3<f32>(x_1159.x, x_1159.y, x_1159.z));
          let x_1162 : f32 = u_xlat48;
          u_xlat48 = inverseSqrt(x_1162);
          let x_1164 : f32 = u_xlat48;
          let x_1166 : vec4<f32> = u_xlat12;
          let x_1168 : vec3<f32> = (vec3<f32>(x_1164, x_1164, x_1164) * vec3<f32>(x_1166.x, x_1166.y, x_1166.z));
          let x_1169 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1168.x, x_1168.y, x_1168.z, x_1169.w);
          let x_1171 : vec4<f32> = u_xlat12;
          u_xlat48 = dot(abs(vec3<f32>(x_1171.x, x_1171.y, x_1171.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1176 : f32 = u_xlat48;
          u_xlat48 = max(x_1176, 0.000001f);
          let x_1179 : f32 = u_xlat48;
          u_xlat48 = (1.0f / x_1179);
          let x_1182 : f32 = u_xlat48;
          let x_1184 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1182, x_1182, x_1182) * vec3<f32>(x_1184.z, x_1184.x, x_1184.y));
          let x_1188 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1188);
          let x_1192 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1192, 0.0f, 1.0f);
          let x_1196 : vec3<f32> = u_xlat13;
          let x_1199 : vec4<bool> = (vec4<f32>(x_1196.y, x_1196.z, x_1196.y, x_1196.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb35 = vec2<bool>(x_1199.x, x_1199.y);
          let x_1203 : bool = u_xlatb35.x;
          if (x_1203) {
            let x_1208 : f32 = u_xlat13.x;
            x_1204 = x_1208;
          } else {
            let x_1211 : f32 = u_xlat13.x;
            x_1204 = -(x_1211);
          }
          let x_1213 : f32 = x_1204;
          u_xlat35.x = x_1213;
          let x_1216 : bool = u_xlatb35.y;
          if (x_1216) {
            let x_1221 : f32 = u_xlat13.x;
            x_1217 = x_1221;
          } else {
            let x_1224 : f32 = u_xlat13.x;
            x_1217 = -(x_1224);
          }
          let x_1226 : f32 = x_1217;
          u_xlat35.y = x_1226;
          let x_1228 : vec4<f32> = u_xlat12;
          let x_1230 : f32 = u_xlat48;
          let x_1233 : vec2<f32> = u_xlat35;
          u_xlat35 = ((vec2<f32>(x_1228.x, x_1228.y) * vec2<f32>(x_1230, x_1230)) + x_1233);
          let x_1235 : vec2<f32> = u_xlat35;
          u_xlat35 = ((x_1235 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1238 : vec2<f32> = u_xlat35;
          u_xlat35 = clamp(x_1238, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1242 : u32 = u_xlatu44;
          let x_1245 : vec4<f32> = x_909.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1242)];
          let x_1247 : vec2<f32> = u_xlat35;
          let x_1249 : u32 = u_xlatu44;
          let x_1252 : vec4<f32> = x_909.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1249)];
          let x_1254 : vec2<f32> = ((vec2<f32>(x_1245.x, x_1245.y) * x_1247) + vec2<f32>(x_1252.z, x_1252.w));
          let x_1255 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1254.x, x_1254.y, x_1255.z, x_1255.w);
        }
      }
      let x_1262 : vec4<f32> = u_xlat11;
      let x_1265 : f32 = x_44.x_GlobalMipBias.x;
      let x_1266 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1262.x, x_1262.y), x_1265);
      u_xlat11 = x_1266;
      let x_1268 : bool = u_xlatb7.y;
      if (x_1268) {
        let x_1273 : f32 = u_xlat11.w;
        x_1269 = x_1273;
      } else {
        let x_1276 : f32 = u_xlat11.x;
        x_1269 = x_1276;
      }
      let x_1277 : f32 = x_1269;
      u_xlat48 = x_1277;
      let x_1279 : bool = u_xlatb7.x;
      if (x_1279) {
        let x_1283 : vec4<f32> = u_xlat11;
        x_1280 = vec3<f32>(x_1283.x, x_1283.y, x_1283.z);
      } else {
        let x_1286 : f32 = u_xlat48;
        x_1280 = vec3<f32>(x_1286, x_1286, x_1286);
      }
      let x_1288 : vec3<f32> = x_1280;
      let x_1289 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1288.x, x_1288.y, x_1288.z, x_1289.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1295 : vec4<f32> = u_xlat11;
    let x_1297 : u32 = u_xlatu44;
    let x_1300 : vec4<f32> = x_808.x_AdditionalLightsColor[bitcast<i32>(x_1297)];
    let x_1302 : vec3<f32> = (vec3<f32>(x_1295.x, x_1295.y, x_1295.z) * vec3<f32>(x_1300.x, x_1300.y, x_1300.z));
    let x_1303 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1302.x, x_1302.y, x_1302.z, x_1303.w);
    let x_1305 : f32 = u_xlat32;
    let x_1307 : vec4<f32> = u_xlat11;
    let x_1309 : vec3<f32> = (vec3<f32>(x_1305, x_1305, x_1305) * vec3<f32>(x_1307.x, x_1307.y, x_1307.z));
    let x_1310 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1309.x, x_1309.y, x_1309.z, x_1310.w);
    let x_1312 : vec3<f32> = u_xlat15;
    let x_1313 : vec3<f32> = u_xlat10;
    u_xlat44 = dot(x_1312, x_1313);
    let x_1315 : f32 = u_xlat44;
    u_xlat44 = clamp(x_1315, 0.0f, 1.0f);
    let x_1317 : f32 = u_xlat44;
    let x_1318 : f32 = u_xlat46;
    u_xlat44 = (x_1317 * x_1318);
    let x_1320 : f32 = u_xlat44;
    let x_1322 : vec4<f32> = u_xlat11;
    let x_1324 : vec3<f32> = (vec3<f32>(x_1320, x_1320, x_1320) * vec3<f32>(x_1322.x, x_1322.y, x_1322.z));
    let x_1325 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1324.x, x_1324.y, x_1324.z, x_1325.w);
    let x_1327 : vec3<f32> = u_xlat9;
    let x_1328 : f32 = u_xlat47;
    let x_1331 : vec3<f32> = u_xlat3;
    u_xlat9 = ((x_1327 * vec3<f32>(x_1328, x_1328, x_1328)) + x_1331);
    let x_1333 : vec3<f32> = u_xlat9;
    let x_1334 : vec3<f32> = u_xlat9;
    u_xlat44 = dot(x_1333, x_1334);
    let x_1336 : f32 = u_xlat44;
    u_xlat44 = max(x_1336, 1.17549435e-37f);
    let x_1338 : f32 = u_xlat44;
    u_xlat44 = inverseSqrt(x_1338);
    let x_1340 : f32 = u_xlat44;
    let x_1342 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1340, x_1340, x_1340) * x_1342);
    let x_1344 : vec3<f32> = u_xlat15;
    let x_1345 : vec3<f32> = u_xlat9;
    u_xlat44 = dot(x_1344, x_1345);
    let x_1347 : f32 = u_xlat44;
    u_xlat44 = clamp(x_1347, 0.0f, 1.0f);
    let x_1349 : vec3<f32> = u_xlat10;
    let x_1350 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(x_1349, x_1350);
    let x_1352 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1352, 0.0f, 1.0f);
    let x_1354 : f32 = u_xlat44;
    let x_1355 : f32 = u_xlat44;
    u_xlat44 = (x_1354 * x_1355);
    let x_1357 : f32 = u_xlat44;
    let x_1359 : f32 = u_xlat8.x;
    u_xlat44 = ((x_1357 * x_1359) + 1.000010014f);
    let x_1362 : f32 = u_xlat46;
    let x_1363 : f32 = u_xlat46;
    u_xlat46 = (x_1362 * x_1363);
    let x_1365 : f32 = u_xlat44;
    let x_1366 : f32 = u_xlat44;
    u_xlat44 = (x_1365 * x_1366);
    let x_1368 : f32 = u_xlat46;
    u_xlat46 = max(x_1368, 0.100000001f);
    let x_1370 : f32 = u_xlat44;
    let x_1371 : f32 = u_xlat46;
    u_xlat44 = (x_1370 * x_1371);
    let x_1373 : f32 = u_xlat45;
    let x_1374 : f32 = u_xlat44;
    u_xlat44 = (x_1373 * x_1374);
    let x_1376 : f32 = u_xlat18;
    let x_1377 : f32 = u_xlat44;
    u_xlat44 = (x_1376 / x_1377);
    let x_1379 : vec4<f32> = u_xlat0;
    let x_1381 : f32 = u_xlat44;
    let x_1384 : vec3<f32> = u_xlat5;
    u_xlat9 = ((vec3<f32>(x_1379.x, x_1379.y, x_1379.z) * vec3<f32>(x_1381, x_1381, x_1381)) + x_1384);
    let x_1386 : vec3<f32> = u_xlat9;
    let x_1387 : vec4<f32> = u_xlat11;
    let x_1390 : vec3<f32> = u_xlat22;
    u_xlat22 = ((x_1386 * vec3<f32>(x_1387.x, x_1387.y, x_1387.z)) + x_1390);

    continuing {
      let x_1392 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1392 + bitcast<u32>(1i));
    }
  }
  let x_1394 : vec3<f32> = u_xlat2;
  let x_1395 : vec3<f32> = u_xlat4;
  let x_1398 : vec4<f32> = u_xlat6;
  let x_1400 : vec3<f32> = ((x_1394 * vec3<f32>(x_1395.x, x_1395.x, x_1395.x)) + vec3<f32>(x_1398.x, x_1398.y, x_1398.z));
  let x_1401 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1400.x, x_1400.y, x_1400.z, x_1401.w);
  let x_1405 : vec3<f32> = u_xlat22;
  let x_1406 : vec4<f32> = u_xlat0;
  let x_1408 : vec3<f32> = (x_1405 + vec3<f32>(x_1406.x, x_1406.y, x_1406.z));
  let x_1409 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1408.x, x_1408.y, x_1408.z, x_1409.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD7_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : vec3<f32>, @location(3) vs_TEXCOORD8_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  main_1();
  return main_out(SV_Target0);
}

