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

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(4) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_MetallicTex : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(5) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(3) var<uniform> x_326 : MainLightShadows;

@group(1) @binding(4) var<uniform> x_410 : LightCookies;

@group(0) @binding(7) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_606 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_857 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_971 : AdditionalLightsCookies;

@group(0) @binding(8) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : f32;
  var u_xlat15 : vec3<f32>;
  var u_xlat2 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat16 : vec3<f32>;
  var u_xlat17 : f32;
  var u_xlat45 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat46 : f32;
  var u_xlat42 : f32;
  var u_xlat31 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat19 : vec3<f32>;
  var u_xlatb19 : vec2<bool>;
  var u_xlatb33 : bool;
  var x_361 : f32;
  var u_xlat33 : f32;
  var u_xlat6 : vec4<f32>;
  var x_495 : f32;
  var x_506 : vec3<f32>;
  var u_xlat48 : f32;
  var u_xlat7 : vec4<f32>;
  var u_xlat49 : f32;
  var u_xlat8 : vec2<f32>;
  var u_xlat22 : vec3<f32>;
  var u_xlatu42 : u32;
  var u_xlatb7 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu17 : u32;
  var u_xlati47 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat9 : vec3<f32>;
  var u_xlat47 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat35 : vec2<f32>;
  var u_xlatu35 : u32;
  var u_xlati49 : i32;
  var u_xlati35 : i32;
  var u_xlati51 : i32;
  var u_xlat11 : vec4<f32>;
  var u_xlatb35 : bool;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb39 : vec2<bool>;
  var u_xlat39 : vec2<f32>;
  var x_1273 : f32;
  var x_1286 : f32;
  var x_1338 : f32;
  var x_1350 : vec3<f32>;
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
  let x_68 : vec4<f32> = vs_TEXCOORD3;
  let x_70 : vec4<f32> = vs_TEXCOORD3;
  u_xlat15.x = dot(vec3<f32>(x_68.x, x_68.y, x_68.z), vec3<f32>(x_70.x, x_70.y, x_70.z));
  let x_75 : f32 = u_xlat15.x;
  u_xlat15.x = inverseSqrt(x_75);
  let x_78 : vec3<f32> = u_xlat15;
  let x_80 : vec4<f32> = vs_TEXCOORD3;
  u_xlat15 = (vec3<f32>(x_78.x, x_78.x, x_78.x) * vec3<f32>(x_80.x, x_80.y, x_80.z));
  let x_88 : f32 = vs_TEXCOORD7.y;
  let x_92 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat2 = (x_88 * x_92);
  let x_96 : f32 = x_44.unity_MatrixV[0i].z;
  let x_98 : f32 = vs_TEXCOORD7.x;
  let x_100 : f32 = u_xlat2;
  u_xlat2 = ((x_96 * x_98) + x_100);
  let x_104 : f32 = x_44.unity_MatrixV[2i].z;
  let x_106 : f32 = vs_TEXCOORD7.z;
  let x_108 : f32 = u_xlat2;
  u_xlat2 = ((x_104 * x_106) + x_108);
  let x_110 : f32 = u_xlat2;
  let x_113 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat2 = (x_110 + x_113);
  let x_115 : f32 = u_xlat2;
  let x_119 : f32 = x_44.x_ProjectionParams.y;
  u_xlat2 = (-(x_115) + -(x_119));
  let x_122 : f32 = u_xlat2;
  u_xlat2 = max(x_122, 0.0f);
  let x_125 : f32 = u_xlat2;
  let x_128 : f32 = x_44.unity_FogParams.x;
  u_xlat2 = (x_125 * x_128);
  let x_136 : vec4<f32> = vs_TEXCOORD0;
  let x_139 : f32 = x_44.x_GlobalMipBias.x;
  let x_140 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_136.z, x_136.w), x_139);
  u_xlat3 = x_140;
  let x_146 : vec4<f32> = vs_TEXCOORD0;
  let x_149 : f32 = x_44.x_GlobalMipBias.x;
  let x_150 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_146.z, x_146.w), x_149);
  u_xlat16 = vec3<f32>(x_150.x, x_150.y, x_150.z);
  let x_152 : vec4<f32> = u_xlat3;
  let x_156 : vec3<f32> = (vec3<f32>(x_152.x, x_152.y, x_152.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_157 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_156.x, x_156.y, x_156.z, x_157.w);
  let x_159 : vec3<f32> = u_xlat15;
  let x_160 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(x_159, vec3<f32>(x_160.x, x_160.y, x_160.z));
  let x_165 : f32 = u_xlat3.x;
  u_xlat3.x = (x_165 + 0.5f);
  let x_169 : vec3<f32> = u_xlat16;
  let x_170 : vec4<f32> = u_xlat3;
  u_xlat16 = (x_169 * vec3<f32>(x_170.x, x_170.x, x_170.x));
  let x_174 : f32 = u_xlat3.w;
  u_xlat3.x = max(x_174, 0.0001f);
  let x_178 : vec3<f32> = u_xlat16;
  let x_179 : vec4<f32> = u_xlat3;
  u_xlat16 = (x_178 / vec3<f32>(x_179.x, x_179.x, x_179.x));
  let x_185 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_186 : vec2<f32> = vec2<f32>(x_185.x, x_185.y);
  let x_190 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_186.x, x_186.y));
  let x_191 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_190.x, x_190.y, x_191.z, x_191.w);
  let x_193 : vec4<f32> = u_xlat3;
  let x_195 : vec4<f32> = hlslcc_FragCoord;
  let x_197 : vec2<f32> = (vec2<f32>(x_193.x, x_193.y) * vec2<f32>(x_195.x, x_195.y));
  let x_198 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_197.x, x_197.y, x_198.z, x_198.w);
  let x_202 : f32 = u_xlat3.y;
  let x_205 : f32 = x_44.x_ScaleBiasRt.x;
  let x_208 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat17 = ((x_202 * x_205) + x_208);
  let x_210 : f32 = u_xlat17;
  u_xlat3.z = (-(x_210) + 1.0f);
  let x_214 : f32 = u_xlat1;
  u_xlat17 = ((-(x_214) * 0.959999979f) + 0.959999979f);
  let x_220 : f32 = u_xlat17;
  u_xlat45 = (-(x_220) + 1.0f);
  let x_224 : vec4<f32> = u_xlat0;
  let x_226 : f32 = u_xlat17;
  u_xlat4 = (vec3<f32>(x_224.x, x_224.y, x_224.z) * vec3<f32>(x_226, x_226, x_226));
  let x_229 : vec4<f32> = u_xlat0;
  let x_233 : vec3<f32> = (vec3<f32>(x_229.x, x_229.y, x_229.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_234 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_233.x, x_233.y, x_233.z, x_234.w);
  let x_236 : f32 = u_xlat1;
  let x_238 : vec4<f32> = u_xlat0;
  let x_243 : vec3<f32> = ((vec3<f32>(x_236, x_236, x_236) * vec3<f32>(x_238.x, x_238.y, x_238.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_244 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_243.x, x_243.y, x_243.z, x_244.w);
  let x_247 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_247) + 1.0f);
  let x_250 : f32 = u_xlat1;
  let x_251 : f32 = u_xlat1;
  u_xlat17 = (x_250 * x_251);
  let x_253 : f32 = u_xlat17;
  u_xlat17 = max(x_253, 0.0078125f);
  let x_257 : f32 = u_xlat17;
  let x_258 : f32 = u_xlat17;
  u_xlat46 = (x_257 * x_258);
  let x_262 : f32 = u_xlat0.w;
  let x_263 : f32 = u_xlat45;
  u_xlat42 = (x_262 + x_263);
  let x_265 : f32 = u_xlat42;
  u_xlat42 = clamp(x_265, 0.0f, 1.0f);
  let x_267 : f32 = u_xlat17;
  u_xlat45 = ((x_267 * 4.0f) + 2.0f);
  let x_277 : vec4<f32> = u_xlat3;
  let x_280 : f32 = x_44.x_GlobalMipBias.x;
  let x_281 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_277.x, x_277.z), x_280);
  u_xlat3.x = x_281.x;
  let x_286 : f32 = u_xlat3.x;
  u_xlat31 = (x_286 + -1.0f);
  let x_291 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_292 : f32 = u_xlat31;
  u_xlat31 = ((x_291 * x_292) + 1.0f);
  let x_296 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_296, 1.0f);
  let x_301 : vec4<f32> = vs_TEXCOORD8;
  let x_302 : vec2<f32> = vec2<f32>(x_301.x, x_301.y);
  let x_304 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_302.x, x_302.y, x_304);
  let x_317 : vec3<f32> = txVec0;
  let x_319 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_317.xy, x_317.z);
  u_xlat5.x = x_319;
  let x_328 : f32 = x_326.x_MainLightShadowParams.x;
  u_xlat19.x = (-(x_328) + 1.0f);
  let x_333 : f32 = u_xlat5.x;
  let x_335 : f32 = x_326.x_MainLightShadowParams.x;
  let x_338 : f32 = u_xlat19.x;
  u_xlat5.x = ((x_333 * x_335) + x_338);
  let x_346 : f32 = vs_TEXCOORD8.z;
  u_xlatb19.x = (0.0f >= x_346);
  let x_352 : f32 = vs_TEXCOORD8.z;
  u_xlatb33 = (x_352 >= 1.0f);
  let x_354 : bool = u_xlatb33;
  let x_356 : bool = u_xlatb19.x;
  u_xlatb19.x = (x_354 | x_356);
  let x_360 : bool = u_xlatb19.x;
  if (x_360) {
    x_361 = 1.0f;
  } else {
    let x_366 : f32 = u_xlat5.x;
    x_361 = x_366;
  }
  let x_367 : f32 = x_361;
  u_xlat5.x = x_367;
  let x_369 : vec3<f32> = vs_TEXCOORD7;
  let x_373 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat19 = (x_369 + -(x_373));
  let x_376 : vec3<f32> = u_xlat19;
  let x_377 : vec3<f32> = u_xlat19;
  u_xlat19.x = dot(x_376, x_377);
  let x_381 : f32 = u_xlat19.x;
  let x_383 : f32 = x_326.x_MainLightShadowParams.z;
  let x_386 : f32 = x_326.x_MainLightShadowParams.w;
  u_xlat19.x = ((x_381 * x_383) + x_386);
  let x_390 : f32 = u_xlat19.x;
  u_xlat19.x = clamp(x_390, 0.0f, 1.0f);
  let x_395 : f32 = u_xlat5.x;
  u_xlat33 = (-(x_395) + 1.0f);
  let x_399 : f32 = u_xlat19.x;
  let x_400 : f32 = u_xlat33;
  let x_403 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_399 * x_400) + x_403);
  let x_412 : f32 = x_410.x_MainLightCookieTextureFormat;
  u_xlatb19.x = !((x_412 == -1.0f));
  let x_416 : bool = u_xlatb19.x;
  if (x_416) {
    let x_419 : vec3<f32> = vs_TEXCOORD7;
    let x_422 : vec4<f32> = x_410.x_MainLightWorldToLight[1i];
    let x_424 : vec2<f32> = (vec2<f32>(x_419.y, x_419.y) * vec2<f32>(x_422.x, x_422.y));
    let x_425 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_424.x, x_424.y, x_425.z);
    let x_428 : vec4<f32> = x_410.x_MainLightWorldToLight[0i];
    let x_430 : vec3<f32> = vs_TEXCOORD7;
    let x_433 : vec3<f32> = u_xlat19;
    let x_435 : vec2<f32> = ((vec2<f32>(x_428.x, x_428.y) * vec2<f32>(x_430.x, x_430.x)) + vec2<f32>(x_433.x, x_433.y));
    let x_436 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_435.x, x_435.y, x_436.z);
    let x_439 : vec4<f32> = x_410.x_MainLightWorldToLight[2i];
    let x_441 : vec3<f32> = vs_TEXCOORD7;
    let x_444 : vec3<f32> = u_xlat19;
    let x_446 : vec2<f32> = ((vec2<f32>(x_439.x, x_439.y) * vec2<f32>(x_441.z, x_441.z)) + vec2<f32>(x_444.x, x_444.y));
    let x_447 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_446.x, x_446.y, x_447.z);
    let x_449 : vec3<f32> = u_xlat19;
    let x_452 : vec4<f32> = x_410.x_MainLightWorldToLight[3i];
    let x_454 : vec2<f32> = (vec2<f32>(x_449.x, x_449.y) + vec2<f32>(x_452.x, x_452.y));
    let x_455 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_454.x, x_454.y, x_455.z);
    let x_457 : vec3<f32> = u_xlat19;
    let x_461 : vec2<f32> = ((vec2<f32>(x_457.x, x_457.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_462 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_461.x, x_461.y, x_462.z);
    let x_470 : vec3<f32> = u_xlat19;
    let x_473 : f32 = x_44.x_GlobalMipBias.x;
    let x_474 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_470.x, x_470.y), x_473);
    u_xlat6 = x_474;
    let x_476 : f32 = x_410.x_MainLightCookieTextureFormat;
    let x_478 : f32 = x_410.x_MainLightCookieTextureFormat;
    let x_480 : f32 = x_410.x_MainLightCookieTextureFormat;
    let x_482 : f32 = x_410.x_MainLightCookieTextureFormat;
    let x_483 : vec4<f32> = vec4<f32>(x_476, x_478, x_480, x_482);
    let x_491 : vec4<bool> = (vec4<f32>(x_483.x, x_483.y, x_483.z, x_483.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb19 = vec2<bool>(x_491.x, x_491.y);
    let x_494 : bool = u_xlatb19.y;
    if (x_494) {
      let x_499 : f32 = u_xlat6.w;
      x_495 = x_499;
    } else {
      let x_502 : f32 = u_xlat6.x;
      x_495 = x_502;
    }
    let x_503 : f32 = x_495;
    u_xlat33 = x_503;
    let x_505 : bool = u_xlatb19.x;
    if (x_505) {
      let x_509 : vec4<f32> = u_xlat6;
      x_506 = vec3<f32>(x_509.x, x_509.y, x_509.z);
    } else {
      let x_512 : f32 = u_xlat33;
      x_506 = vec3<f32>(x_512, x_512, x_512);
    }
    let x_514 : vec3<f32> = x_506;
    u_xlat19 = x_514;
  } else {
    u_xlat19.x = 1.0f;
    u_xlat19.y = 1.0f;
    u_xlat19.z = 1.0f;
  }
  let x_519 : vec3<f32> = u_xlat19;
  let x_521 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat19 = (x_519 * vec3<f32>(x_521.x, x_521.y, x_521.z));
  let x_524 : f32 = u_xlat31;
  let x_526 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_524, x_524, x_524) * x_526);
  let x_529 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_529;
  let x_533 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_533;
  let x_537 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_537;
  let x_540 : vec4<f32> = u_xlat6;
  let x_543 : vec3<f32> = u_xlat15;
  u_xlat48 = dot(-(vec3<f32>(x_540.x, x_540.y, x_540.z)), x_543);
  let x_545 : f32 = u_xlat48;
  let x_546 : f32 = u_xlat48;
  u_xlat48 = (x_545 + x_546);
  let x_549 : vec3<f32> = u_xlat15;
  let x_550 : f32 = u_xlat48;
  let x_554 : vec4<f32> = u_xlat6;
  let x_557 : vec3<f32> = ((x_549 * -(vec3<f32>(x_550, x_550, x_550))) + -(vec3<f32>(x_554.x, x_554.y, x_554.z)));
  let x_558 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_557.x, x_557.y, x_557.z, x_558.w);
  let x_560 : vec3<f32> = u_xlat15;
  let x_561 : vec4<f32> = u_xlat6;
  u_xlat48 = dot(x_560, vec3<f32>(x_561.x, x_561.y, x_561.z));
  let x_564 : f32 = u_xlat48;
  u_xlat48 = clamp(x_564, 0.0f, 1.0f);
  let x_566 : f32 = u_xlat48;
  u_xlat48 = (-(x_566) + 1.0f);
  let x_569 : f32 = u_xlat48;
  let x_570 : f32 = u_xlat48;
  u_xlat48 = (x_569 * x_570);
  let x_572 : f32 = u_xlat48;
  let x_573 : f32 = u_xlat48;
  u_xlat48 = (x_572 * x_573);
  let x_576 : f32 = u_xlat1;
  u_xlat49 = ((-(x_576) * 0.699999988f) + 1.700000048f);
  let x_582 : f32 = u_xlat1;
  let x_583 : f32 = u_xlat49;
  u_xlat1 = (x_582 * x_583);
  let x_585 : f32 = u_xlat1;
  u_xlat1 = (x_585 * 6.0f);
  let x_596 : vec4<f32> = u_xlat7;
  let x_598 : f32 = u_xlat1;
  let x_599 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_596.x, x_596.y, x_596.z), x_598);
  u_xlat7 = x_599;
  let x_601 : f32 = u_xlat7.w;
  u_xlat1 = (x_601 + -1.0f);
  let x_608 : f32 = x_606.unity_SpecCube0_HDR.w;
  let x_609 : f32 = u_xlat1;
  u_xlat1 = ((x_608 * x_609) + 1.0f);
  let x_612 : f32 = u_xlat1;
  u_xlat1 = max(x_612, 0.0f);
  let x_614 : f32 = u_xlat1;
  u_xlat1 = log2(x_614);
  let x_616 : f32 = u_xlat1;
  let x_618 : f32 = x_606.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_616 * x_618);
  let x_620 : f32 = u_xlat1;
  u_xlat1 = exp2(x_620);
  let x_622 : f32 = u_xlat1;
  let x_624 : f32 = x_606.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_622 * x_624);
  let x_626 : vec4<f32> = u_xlat7;
  let x_628 : f32 = u_xlat1;
  let x_630 : vec3<f32> = (vec3<f32>(x_626.x, x_626.y, x_626.z) * vec3<f32>(x_628, x_628, x_628));
  let x_631 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_630.x, x_630.y, x_630.z, x_631.w);
  let x_635 : f32 = u_xlat17;
  let x_637 : f32 = u_xlat17;
  u_xlat8 = ((vec2<f32>(x_635, x_635) * vec2<f32>(x_637, x_637)) + vec2<f32>(-1.0f, 1.0f));
  let x_643 : f32 = u_xlat8.y;
  u_xlat1 = (1.0f / x_643);
  let x_646 : vec4<f32> = u_xlat0;
  let x_649 : f32 = u_xlat42;
  u_xlat22 = (-(vec3<f32>(x_646.x, x_646.y, x_646.z)) + vec3<f32>(x_649, x_649, x_649));
  let x_652 : f32 = u_xlat48;
  let x_654 : vec3<f32> = u_xlat22;
  let x_656 : vec4<f32> = u_xlat0;
  u_xlat22 = ((vec3<f32>(x_652, x_652, x_652) * x_654) + vec3<f32>(x_656.x, x_656.y, x_656.z));
  let x_659 : f32 = u_xlat1;
  let x_661 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_659, x_659, x_659) * x_661);
  let x_663 : vec4<f32> = u_xlat7;
  let x_665 : vec3<f32> = u_xlat22;
  let x_666 : vec3<f32> = (vec3<f32>(x_663.x, x_663.y, x_663.z) * x_665);
  let x_667 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_666.x, x_666.y, x_666.z, x_667.w);
  let x_669 : vec3<f32> = u_xlat16;
  let x_670 : vec3<f32> = u_xlat4;
  let x_672 : vec4<f32> = u_xlat7;
  u_xlat16 = ((x_669 * x_670) + vec3<f32>(x_672.x, x_672.y, x_672.z));
  let x_676 : f32 = u_xlat5.x;
  let x_679 : f32 = x_606.unity_LightData.z;
  u_xlat42 = (x_676 * x_679);
  let x_681 : vec3<f32> = u_xlat15;
  let x_683 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1 = dot(x_681, vec3<f32>(x_683.x, x_683.y, x_683.z));
  let x_686 : f32 = u_xlat1;
  u_xlat1 = clamp(x_686, 0.0f, 1.0f);
  let x_688 : f32 = u_xlat42;
  let x_689 : f32 = u_xlat1;
  u_xlat42 = (x_688 * x_689);
  let x_691 : f32 = u_xlat42;
  let x_693 : vec3<f32> = u_xlat19;
  u_xlat5 = (vec3<f32>(x_691, x_691, x_691) * x_693);
  let x_695 : vec4<f32> = u_xlat6;
  let x_698 : vec4<f32> = x_44.x_MainLightPosition;
  let x_700 : vec3<f32> = (vec3<f32>(x_695.x, x_695.y, x_695.z) + vec3<f32>(x_698.x, x_698.y, x_698.z));
  let x_701 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_700.x, x_700.y, x_700.z, x_701.w);
  let x_703 : vec4<f32> = u_xlat7;
  let x_705 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_703.x, x_703.y, x_703.z), vec3<f32>(x_705.x, x_705.y, x_705.z));
  let x_708 : f32 = u_xlat42;
  u_xlat42 = max(x_708, 1.17549435e-37f);
  let x_711 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_711);
  let x_713 : f32 = u_xlat42;
  let x_715 : vec4<f32> = u_xlat7;
  let x_717 : vec3<f32> = (vec3<f32>(x_713, x_713, x_713) * vec3<f32>(x_715.x, x_715.y, x_715.z));
  let x_718 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_717.x, x_717.y, x_717.z, x_718.w);
  let x_720 : vec3<f32> = u_xlat15;
  let x_721 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(x_720, vec3<f32>(x_721.x, x_721.y, x_721.z));
  let x_724 : f32 = u_xlat42;
  u_xlat42 = clamp(x_724, 0.0f, 1.0f);
  let x_727 : vec4<f32> = x_44.x_MainLightPosition;
  let x_729 : vec4<f32> = u_xlat7;
  u_xlat1 = dot(vec3<f32>(x_727.x, x_727.y, x_727.z), vec3<f32>(x_729.x, x_729.y, x_729.z));
  let x_732 : f32 = u_xlat1;
  u_xlat1 = clamp(x_732, 0.0f, 1.0f);
  let x_734 : f32 = u_xlat42;
  let x_735 : f32 = u_xlat42;
  u_xlat42 = (x_734 * x_735);
  let x_737 : f32 = u_xlat42;
  let x_739 : f32 = u_xlat8.x;
  u_xlat42 = ((x_737 * x_739) + 1.000010014f);
  let x_743 : f32 = u_xlat1;
  let x_744 : f32 = u_xlat1;
  u_xlat1 = (x_743 * x_744);
  let x_746 : f32 = u_xlat42;
  let x_747 : f32 = u_xlat42;
  u_xlat42 = (x_746 * x_747);
  let x_749 : f32 = u_xlat1;
  u_xlat1 = max(x_749, 0.100000001f);
  let x_752 : f32 = u_xlat42;
  let x_753 : f32 = u_xlat1;
  u_xlat42 = (x_752 * x_753);
  let x_755 : f32 = u_xlat45;
  let x_756 : f32 = u_xlat42;
  u_xlat42 = (x_755 * x_756);
  let x_758 : f32 = u_xlat46;
  let x_759 : f32 = u_xlat42;
  u_xlat42 = (x_758 / x_759);
  let x_761 : vec4<f32> = u_xlat0;
  let x_763 : f32 = u_xlat42;
  let x_766 : vec3<f32> = u_xlat4;
  let x_767 : vec3<f32> = ((vec3<f32>(x_761.x, x_761.y, x_761.z) * vec3<f32>(x_763, x_763, x_763)) + x_766);
  let x_768 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_767.x, x_767.y, x_767.z, x_768.w);
  let x_770 : vec3<f32> = u_xlat5;
  let x_771 : vec4<f32> = u_xlat7;
  u_xlat5 = (x_770 * vec3<f32>(x_771.x, x_771.y, x_771.z));
  let x_775 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_777 : f32 = x_606.unity_LightData.y;
  u_xlat42 = min(x_775, x_777);
  let x_781 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_781));
  let x_786 : f32 = x_410.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_788 : f32 = x_410.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_790 : f32 = x_410.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_792 : f32 = x_410.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_793 : vec4<f32> = vec4<f32>(x_786, x_788, x_790, x_792);
  let x_799 : vec4<bool> = (vec4<f32>(x_793.x, x_793.y, x_793.z, x_793.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_799.x, x_799.y);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_810 : u32 = u_xlatu_loop_1;
    let x_811 : u32 = u_xlatu42;
    if ((x_810 < x_811)) {
    } else {
      break;
    }
    let x_814 : u32 = u_xlatu_loop_1;
    u_xlatu17 = (x_814 >> 2u);
    let x_818 : u32 = u_xlatu_loop_1;
    u_xlati47 = bitcast<i32>((x_818 & 3u));
    let x_821 : u32 = u_xlatu17;
    let x_824 : vec4<f32> = x_606.unity_LightIndices[bitcast<i32>(x_821)];
    let x_834 : i32 = u_xlati47;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_839 : vec4<u32> = indexable[x_834];
    u_xlat17 = dot(x_824, bitcast<vec4<f32>>(x_839));
    let x_842 : f32 = u_xlat17;
    u_xlatu17 = bitcast<u32>(i32(x_842));
    let x_846 : vec3<f32> = vs_TEXCOORD7;
    let x_858 : u32 = u_xlatu17;
    let x_861 : vec4<f32> = x_857.x_AdditionalLightsPosition[bitcast<i32>(x_858)];
    let x_864 : u32 = u_xlatu17;
    let x_867 : vec4<f32> = x_857.x_AdditionalLightsPosition[bitcast<i32>(x_864)];
    u_xlat9 = ((-(x_846) * vec3<f32>(x_861.w, x_861.w, x_861.w)) + vec3<f32>(x_867.x, x_867.y, x_867.z));
    let x_871 : vec3<f32> = u_xlat9;
    let x_872 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_871, x_872);
    let x_874 : f32 = u_xlat47;
    u_xlat47 = max(x_874, 6.10351562e-05f);
    let x_877 : f32 = u_xlat47;
    u_xlat48 = inverseSqrt(x_877);
    let x_880 : f32 = u_xlat48;
    let x_882 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_880, x_880, x_880) * x_882);
    let x_885 : f32 = u_xlat47;
    u_xlat35.x = (1.0f / x_885);
    let x_888 : f32 = u_xlat47;
    let x_889 : u32 = u_xlatu17;
    let x_892 : f32 = x_857.x_AdditionalLightsAttenuation[bitcast<i32>(x_889)].x;
    u_xlat47 = (x_888 * x_892);
    let x_894 : f32 = u_xlat47;
    let x_896 : f32 = u_xlat47;
    u_xlat47 = ((-(x_894) * x_896) + 1.0f);
    let x_899 : f32 = u_xlat47;
    u_xlat47 = max(x_899, 0.0f);
    let x_901 : f32 = u_xlat47;
    let x_902 : f32 = u_xlat47;
    u_xlat47 = (x_901 * x_902);
    let x_904 : f32 = u_xlat47;
    let x_906 : f32 = u_xlat35.x;
    u_xlat47 = (x_904 * x_906);
    let x_908 : u32 = u_xlatu17;
    let x_911 : vec4<f32> = x_857.x_AdditionalLightsSpotDir[bitcast<i32>(x_908)];
    let x_913 : vec3<f32> = u_xlat10;
    u_xlat35.x = dot(vec3<f32>(x_911.x, x_911.y, x_911.z), x_913);
    let x_917 : f32 = u_xlat35.x;
    let x_918 : u32 = u_xlatu17;
    let x_921 : f32 = x_857.x_AdditionalLightsAttenuation[bitcast<i32>(x_918)].z;
    let x_923 : u32 = u_xlatu17;
    let x_926 : f32 = x_857.x_AdditionalLightsAttenuation[bitcast<i32>(x_923)].w;
    u_xlat35.x = ((x_917 * x_921) + x_926);
    let x_930 : f32 = u_xlat35.x;
    u_xlat35.x = clamp(x_930, 0.0f, 1.0f);
    let x_934 : f32 = u_xlat35.x;
    let x_936 : f32 = u_xlat35.x;
    u_xlat35.x = (x_934 * x_936);
    let x_939 : f32 = u_xlat47;
    let x_941 : f32 = u_xlat35.x;
    u_xlat47 = (x_939 * x_941);
    let x_944 : u32 = u_xlatu17;
    u_xlatu35 = (x_944 >> 5u);
    let x_947 : u32 = u_xlatu17;
    u_xlati49 = (1i << bitcast<u32>((bitcast<i32>(x_947) & 31i)));
    let x_953 : i32 = u_xlati49;
    let x_955 : u32 = u_xlatu35;
    let x_958 : f32 = x_410.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_955)].el;
    u_xlati35 = bitcast<i32>((bitcast<u32>(x_953) & bitcast<u32>(x_958)));
    let x_962 : i32 = u_xlati35;
    if ((x_962 != 0i)) {
      let x_972 : u32 = u_xlatu17;
      let x_975 : f32 = x_971.x_AdditionalLightsLightTypes[bitcast<i32>(x_972)].el;
      u_xlati35 = i32(x_975);
      let x_977 : i32 = u_xlati35;
      u_xlati49 = select(1i, 0i, (x_977 != 0i));
      let x_981 : u32 = u_xlatu17;
      u_xlati51 = (bitcast<i32>(x_981) << bitcast<u32>(2i));
      let x_984 : i32 = u_xlati49;
      if ((x_984 != 0i)) {
        let x_989 : vec3<f32> = vs_TEXCOORD7;
        let x_991 : i32 = u_xlati51;
        let x_994 : i32 = u_xlati51;
        let x_998 : vec4<f32> = x_971.x_AdditionalLightsWorldToLights[((x_991 + 1i) / 4i)][((x_994 + 1i) % 4i)];
        let x_1000 : vec3<f32> = (vec3<f32>(x_989.y, x_989.y, x_989.y) * vec3<f32>(x_998.x, x_998.y, x_998.w));
        let x_1001 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1000.x, x_1000.y, x_1000.z, x_1001.w);
        let x_1003 : i32 = u_xlati51;
        let x_1005 : i32 = u_xlati51;
        let x_1008 : vec4<f32> = x_971.x_AdditionalLightsWorldToLights[(x_1003 / 4i)][(x_1005 % 4i)];
        let x_1010 : vec3<f32> = vs_TEXCOORD7;
        let x_1013 : vec4<f32> = u_xlat11;
        let x_1015 : vec3<f32> = ((vec3<f32>(x_1008.x, x_1008.y, x_1008.w) * vec3<f32>(x_1010.x, x_1010.x, x_1010.x)) + vec3<f32>(x_1013.x, x_1013.y, x_1013.z));
        let x_1016 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1015.x, x_1015.y, x_1015.z, x_1016.w);
        let x_1018 : i32 = u_xlati51;
        let x_1021 : i32 = u_xlati51;
        let x_1025 : vec4<f32> = x_971.x_AdditionalLightsWorldToLights[((x_1018 + 2i) / 4i)][((x_1021 + 2i) % 4i)];
        let x_1027 : vec3<f32> = vs_TEXCOORD7;
        let x_1030 : vec4<f32> = u_xlat11;
        let x_1032 : vec3<f32> = ((vec3<f32>(x_1025.x, x_1025.y, x_1025.w) * vec3<f32>(x_1027.z, x_1027.z, x_1027.z)) + vec3<f32>(x_1030.x, x_1030.y, x_1030.z));
        let x_1033 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1032.x, x_1032.y, x_1032.z, x_1033.w);
        let x_1035 : vec4<f32> = u_xlat11;
        let x_1037 : i32 = u_xlati51;
        let x_1040 : i32 = u_xlati51;
        let x_1044 : vec4<f32> = x_971.x_AdditionalLightsWorldToLights[((x_1037 + 3i) / 4i)][((x_1040 + 3i) % 4i)];
        let x_1046 : vec3<f32> = (vec3<f32>(x_1035.x, x_1035.y, x_1035.z) + vec3<f32>(x_1044.x, x_1044.y, x_1044.w));
        let x_1047 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1046.x, x_1046.y, x_1046.z, x_1047.w);
        let x_1049 : vec4<f32> = u_xlat11;
        let x_1051 : vec4<f32> = u_xlat11;
        let x_1053 : vec2<f32> = (vec2<f32>(x_1049.x, x_1049.y) / vec2<f32>(x_1051.z, x_1051.z));
        let x_1054 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1053.x, x_1053.y, x_1054.z, x_1054.w);
        let x_1056 : vec4<f32> = u_xlat11;
        let x_1059 : vec2<f32> = ((vec2<f32>(x_1056.x, x_1056.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1060 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1059.x, x_1059.y, x_1060.z, x_1060.w);
        let x_1062 : vec4<f32> = u_xlat11;
        let x_1066 : vec2<f32> = clamp(vec2<f32>(x_1062.x, x_1062.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1067 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1066.x, x_1066.y, x_1067.z, x_1067.w);
        let x_1069 : u32 = u_xlatu17;
        let x_1072 : vec4<f32> = x_971.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1069)];
        let x_1074 : vec4<f32> = u_xlat11;
        let x_1077 : u32 = u_xlatu17;
        let x_1080 : vec4<f32> = x_971.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1077)];
        let x_1082 : vec2<f32> = ((vec2<f32>(x_1072.x, x_1072.y) * vec2<f32>(x_1074.x, x_1074.y)) + vec2<f32>(x_1080.z, x_1080.w));
        let x_1083 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1082.x, x_1082.y, x_1083.z, x_1083.w);
      } else {
        let x_1087 : i32 = u_xlati35;
        u_xlatb35 = (x_1087 == 1i);
        let x_1089 : bool = u_xlatb35;
        u_xlati35 = select(0i, 1i, x_1089);
        let x_1091 : i32 = u_xlati35;
        if ((x_1091 != 0i)) {
          let x_1095 : vec3<f32> = vs_TEXCOORD7;
          let x_1097 : i32 = u_xlati51;
          let x_1100 : i32 = u_xlati51;
          let x_1104 : vec4<f32> = x_971.x_AdditionalLightsWorldToLights[((x_1097 + 1i) / 4i)][((x_1100 + 1i) % 4i)];
          u_xlat35 = (vec2<f32>(x_1095.y, x_1095.y) * vec2<f32>(x_1104.x, x_1104.y));
          let x_1107 : i32 = u_xlati51;
          let x_1109 : i32 = u_xlati51;
          let x_1112 : vec4<f32> = x_971.x_AdditionalLightsWorldToLights[(x_1107 / 4i)][(x_1109 % 4i)];
          let x_1114 : vec3<f32> = vs_TEXCOORD7;
          let x_1117 : vec2<f32> = u_xlat35;
          u_xlat35 = ((vec2<f32>(x_1112.x, x_1112.y) * vec2<f32>(x_1114.x, x_1114.x)) + x_1117);
          let x_1119 : i32 = u_xlati51;
          let x_1122 : i32 = u_xlati51;
          let x_1126 : vec4<f32> = x_971.x_AdditionalLightsWorldToLights[((x_1119 + 2i) / 4i)][((x_1122 + 2i) % 4i)];
          let x_1128 : vec3<f32> = vs_TEXCOORD7;
          let x_1131 : vec2<f32> = u_xlat35;
          u_xlat35 = ((vec2<f32>(x_1126.x, x_1126.y) * vec2<f32>(x_1128.z, x_1128.z)) + x_1131);
          let x_1133 : vec2<f32> = u_xlat35;
          let x_1134 : i32 = u_xlati51;
          let x_1137 : i32 = u_xlati51;
          let x_1141 : vec4<f32> = x_971.x_AdditionalLightsWorldToLights[((x_1134 + 3i) / 4i)][((x_1137 + 3i) % 4i)];
          u_xlat35 = (x_1133 + vec2<f32>(x_1141.x, x_1141.y));
          let x_1144 : vec2<f32> = u_xlat35;
          u_xlat35 = ((x_1144 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1147 : vec2<f32> = u_xlat35;
          u_xlat35 = fract(x_1147);
          let x_1149 : u32 = u_xlatu17;
          let x_1152 : vec4<f32> = x_971.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1149)];
          let x_1154 : vec2<f32> = u_xlat35;
          let x_1156 : u32 = u_xlatu17;
          let x_1159 : vec4<f32> = x_971.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1156)];
          let x_1161 : vec2<f32> = ((vec2<f32>(x_1152.x, x_1152.y) * x_1154) + vec2<f32>(x_1159.z, x_1159.w));
          let x_1162 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1161.x, x_1161.y, x_1162.z, x_1162.w);
        } else {
          let x_1166 : vec3<f32> = vs_TEXCOORD7;
          let x_1168 : i32 = u_xlati51;
          let x_1171 : i32 = u_xlati51;
          let x_1175 : vec4<f32> = x_971.x_AdditionalLightsWorldToLights[((x_1168 + 1i) / 4i)][((x_1171 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1166.y, x_1166.y, x_1166.y, x_1166.y) * x_1175);
          let x_1177 : i32 = u_xlati51;
          let x_1179 : i32 = u_xlati51;
          let x_1182 : vec4<f32> = x_971.x_AdditionalLightsWorldToLights[(x_1177 / 4i)][(x_1179 % 4i)];
          let x_1183 : vec3<f32> = vs_TEXCOORD7;
          let x_1186 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1182 * vec4<f32>(x_1183.x, x_1183.x, x_1183.x, x_1183.x)) + x_1186);
          let x_1188 : i32 = u_xlati51;
          let x_1191 : i32 = u_xlati51;
          let x_1195 : vec4<f32> = x_971.x_AdditionalLightsWorldToLights[((x_1188 + 2i) / 4i)][((x_1191 + 2i) % 4i)];
          let x_1196 : vec3<f32> = vs_TEXCOORD7;
          let x_1199 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1195 * vec4<f32>(x_1196.z, x_1196.z, x_1196.z, x_1196.z)) + x_1199);
          let x_1201 : vec4<f32> = u_xlat12;
          let x_1202 : i32 = u_xlati51;
          let x_1205 : i32 = u_xlati51;
          let x_1209 : vec4<f32> = x_971.x_AdditionalLightsWorldToLights[((x_1202 + 3i) / 4i)][((x_1205 + 3i) % 4i)];
          u_xlat12 = (x_1201 + x_1209);
          let x_1211 : vec4<f32> = u_xlat12;
          let x_1213 : vec4<f32> = u_xlat12;
          let x_1215 : vec3<f32> = (vec3<f32>(x_1211.x, x_1211.y, x_1211.z) / vec3<f32>(x_1213.w, x_1213.w, x_1213.w));
          let x_1216 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1215.x, x_1215.y, x_1215.z, x_1216.w);
          let x_1218 : vec4<f32> = u_xlat12;
          let x_1220 : vec4<f32> = u_xlat12;
          u_xlat35.x = dot(vec3<f32>(x_1218.x, x_1218.y, x_1218.z), vec3<f32>(x_1220.x, x_1220.y, x_1220.z));
          let x_1225 : f32 = u_xlat35.x;
          u_xlat35.x = inverseSqrt(x_1225);
          let x_1228 : vec2<f32> = u_xlat35;
          let x_1230 : vec4<f32> = u_xlat12;
          let x_1232 : vec3<f32> = (vec3<f32>(x_1228.x, x_1228.x, x_1228.x) * vec3<f32>(x_1230.x, x_1230.y, x_1230.z));
          let x_1233 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1232.x, x_1232.y, x_1232.z, x_1233.w);
          let x_1235 : vec4<f32> = u_xlat12;
          u_xlat35.x = dot(abs(vec3<f32>(x_1235.x, x_1235.y, x_1235.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1242 : f32 = u_xlat35.x;
          u_xlat35.x = max(x_1242, 0.000001f);
          let x_1247 : f32 = u_xlat35.x;
          u_xlat35.x = (1.0f / x_1247);
          let x_1251 : vec2<f32> = u_xlat35;
          let x_1253 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1251.x, x_1251.x, x_1251.x) * vec3<f32>(x_1253.z, x_1253.x, x_1253.y));
          let x_1257 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1257);
          let x_1261 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1261, 0.0f, 1.0f);
          let x_1265 : vec3<f32> = u_xlat13;
          let x_1268 : vec4<bool> = (vec4<f32>(x_1265.y, x_1265.z, x_1265.y, x_1265.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1268.x, x_1268.y);
          let x_1272 : bool = u_xlatb39.x;
          if (x_1272) {
            let x_1277 : f32 = u_xlat13.x;
            x_1273 = x_1277;
          } else {
            let x_1280 : f32 = u_xlat13.x;
            x_1273 = -(x_1280);
          }
          let x_1282 : f32 = x_1273;
          u_xlat39.x = x_1282;
          let x_1285 : bool = u_xlatb39.y;
          if (x_1285) {
            let x_1290 : f32 = u_xlat13.x;
            x_1286 = x_1290;
          } else {
            let x_1293 : f32 = u_xlat13.x;
            x_1286 = -(x_1293);
          }
          let x_1295 : f32 = x_1286;
          u_xlat39.y = x_1295;
          let x_1297 : vec4<f32> = u_xlat12;
          let x_1299 : vec2<f32> = u_xlat35;
          let x_1302 : vec2<f32> = u_xlat39;
          u_xlat35 = ((vec2<f32>(x_1297.x, x_1297.y) * vec2<f32>(x_1299.x, x_1299.x)) + x_1302);
          let x_1304 : vec2<f32> = u_xlat35;
          u_xlat35 = ((x_1304 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1307 : vec2<f32> = u_xlat35;
          u_xlat35 = clamp(x_1307, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1311 : u32 = u_xlatu17;
          let x_1314 : vec4<f32> = x_971.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1311)];
          let x_1316 : vec2<f32> = u_xlat35;
          let x_1318 : u32 = u_xlatu17;
          let x_1321 : vec4<f32> = x_971.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1318)];
          let x_1323 : vec2<f32> = ((vec2<f32>(x_1314.x, x_1314.y) * x_1316) + vec2<f32>(x_1321.z, x_1321.w));
          let x_1324 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1323.x, x_1323.y, x_1324.z, x_1324.w);
        }
      }
      let x_1331 : vec4<f32> = u_xlat11;
      let x_1334 : f32 = x_44.x_GlobalMipBias.x;
      let x_1335 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1331.x, x_1331.y), x_1334);
      u_xlat11 = x_1335;
      let x_1337 : bool = u_xlatb7.y;
      if (x_1337) {
        let x_1342 : f32 = u_xlat11.w;
        x_1338 = x_1342;
      } else {
        let x_1345 : f32 = u_xlat11.x;
        x_1338 = x_1345;
      }
      let x_1346 : f32 = x_1338;
      u_xlat35.x = x_1346;
      let x_1349 : bool = u_xlatb7.x;
      if (x_1349) {
        let x_1353 : vec4<f32> = u_xlat11;
        x_1350 = vec3<f32>(x_1353.x, x_1353.y, x_1353.z);
      } else {
        let x_1356 : vec2<f32> = u_xlat35;
        x_1350 = vec3<f32>(x_1356.x, x_1356.x, x_1356.x);
      }
      let x_1358 : vec3<f32> = x_1350;
      let x_1359 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1358.x, x_1358.y, x_1358.z, x_1359.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1365 : vec4<f32> = u_xlat11;
    let x_1367 : u32 = u_xlatu17;
    let x_1370 : vec4<f32> = x_857.x_AdditionalLightsColor[bitcast<i32>(x_1367)];
    let x_1372 : vec3<f32> = (vec3<f32>(x_1365.x, x_1365.y, x_1365.z) * vec3<f32>(x_1370.x, x_1370.y, x_1370.z));
    let x_1373 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1372.x, x_1372.y, x_1372.z, x_1373.w);
    let x_1375 : f32 = u_xlat31;
    let x_1377 : vec4<f32> = u_xlat11;
    let x_1379 : vec3<f32> = (vec3<f32>(x_1375, x_1375, x_1375) * vec3<f32>(x_1377.x, x_1377.y, x_1377.z));
    let x_1380 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1379.x, x_1379.y, x_1379.z, x_1380.w);
    let x_1382 : vec3<f32> = u_xlat15;
    let x_1383 : vec3<f32> = u_xlat10;
    u_xlat17 = dot(x_1382, x_1383);
    let x_1385 : f32 = u_xlat17;
    u_xlat17 = clamp(x_1385, 0.0f, 1.0f);
    let x_1387 : f32 = u_xlat17;
    let x_1388 : f32 = u_xlat47;
    u_xlat17 = (x_1387 * x_1388);
    let x_1390 : f32 = u_xlat17;
    let x_1392 : vec4<f32> = u_xlat11;
    let x_1394 : vec3<f32> = (vec3<f32>(x_1390, x_1390, x_1390) * vec3<f32>(x_1392.x, x_1392.y, x_1392.z));
    let x_1395 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1394.x, x_1394.y, x_1394.z, x_1395.w);
    let x_1397 : vec3<f32> = u_xlat9;
    let x_1398 : f32 = u_xlat48;
    let x_1401 : vec4<f32> = u_xlat6;
    u_xlat9 = ((x_1397 * vec3<f32>(x_1398, x_1398, x_1398)) + vec3<f32>(x_1401.x, x_1401.y, x_1401.z));
    let x_1404 : vec3<f32> = u_xlat9;
    let x_1405 : vec3<f32> = u_xlat9;
    u_xlat17 = dot(x_1404, x_1405);
    let x_1407 : f32 = u_xlat17;
    u_xlat17 = max(x_1407, 1.17549435e-37f);
    let x_1409 : f32 = u_xlat17;
    u_xlat17 = inverseSqrt(x_1409);
    let x_1411 : f32 = u_xlat17;
    let x_1413 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1411, x_1411, x_1411) * x_1413);
    let x_1415 : vec3<f32> = u_xlat15;
    let x_1416 : vec3<f32> = u_xlat9;
    u_xlat17 = dot(x_1415, x_1416);
    let x_1418 : f32 = u_xlat17;
    u_xlat17 = clamp(x_1418, 0.0f, 1.0f);
    let x_1420 : vec3<f32> = u_xlat10;
    let x_1421 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1420, x_1421);
    let x_1423 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1423, 0.0f, 1.0f);
    let x_1425 : f32 = u_xlat17;
    let x_1426 : f32 = u_xlat17;
    u_xlat17 = (x_1425 * x_1426);
    let x_1428 : f32 = u_xlat17;
    let x_1430 : f32 = u_xlat8.x;
    u_xlat17 = ((x_1428 * x_1430) + 1.000010014f);
    let x_1433 : f32 = u_xlat47;
    let x_1434 : f32 = u_xlat47;
    u_xlat47 = (x_1433 * x_1434);
    let x_1436 : f32 = u_xlat17;
    let x_1437 : f32 = u_xlat17;
    u_xlat17 = (x_1436 * x_1437);
    let x_1439 : f32 = u_xlat47;
    u_xlat47 = max(x_1439, 0.100000001f);
    let x_1441 : f32 = u_xlat17;
    let x_1442 : f32 = u_xlat47;
    u_xlat17 = (x_1441 * x_1442);
    let x_1444 : f32 = u_xlat45;
    let x_1445 : f32 = u_xlat17;
    u_xlat17 = (x_1444 * x_1445);
    let x_1447 : f32 = u_xlat46;
    let x_1448 : f32 = u_xlat17;
    u_xlat17 = (x_1447 / x_1448);
    let x_1450 : vec4<f32> = u_xlat0;
    let x_1452 : f32 = u_xlat17;
    let x_1455 : vec3<f32> = u_xlat4;
    u_xlat9 = ((vec3<f32>(x_1450.x, x_1450.y, x_1450.z) * vec3<f32>(x_1452, x_1452, x_1452)) + x_1455);
    let x_1457 : vec3<f32> = u_xlat9;
    let x_1458 : vec4<f32> = u_xlat11;
    let x_1461 : vec3<f32> = u_xlat22;
    u_xlat22 = ((x_1457 * vec3<f32>(x_1458.x, x_1458.y, x_1458.z)) + x_1461);

    continuing {
      let x_1463 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1463 + bitcast<u32>(1i));
    }
  }
  let x_1465 : vec3<f32> = u_xlat16;
  let x_1466 : vec4<f32> = u_xlat3;
  let x_1469 : vec3<f32> = u_xlat5;
  let x_1470 : vec3<f32> = ((x_1465 * vec3<f32>(x_1466.x, x_1466.x, x_1466.x)) + x_1469);
  let x_1471 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1470.x, x_1470.y, x_1470.z, x_1471.w);
  let x_1473 : vec3<f32> = u_xlat22;
  let x_1474 : vec4<f32> = u_xlat0;
  let x_1476 : vec3<f32> = (x_1473 + vec3<f32>(x_1474.x, x_1474.y, x_1474.z));
  let x_1477 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1476.x, x_1476.y, x_1476.z, x_1477.w);
  let x_1479 : f32 = u_xlat2;
  let x_1480 : f32 = u_xlat2;
  u_xlat42 = (x_1479 * -(x_1480));
  let x_1483 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1483);
  let x_1485 : vec4<f32> = u_xlat0;
  let x_1489 : vec4<f32> = x_44.unity_FogColor;
  let x_1492 : vec3<f32> = (vec3<f32>(x_1485.x, x_1485.y, x_1485.z) + -(vec3<f32>(x_1489.x, x_1489.y, x_1489.z)));
  let x_1493 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1492.x, x_1492.y, x_1492.z, x_1493.w);
  let x_1497 : f32 = u_xlat42;
  let x_1499 : vec4<f32> = u_xlat0;
  let x_1503 : vec4<f32> = x_44.unity_FogColor;
  let x_1505 : vec3<f32> = ((vec3<f32>(x_1497, x_1497, x_1497) * vec3<f32>(x_1499.x, x_1499.y, x_1499.z)) + vec3<f32>(x_1503.x, x_1503.y, x_1503.z));
  let x_1506 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1505.x, x_1505.y, x_1505.z, x_1506.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(5) vs_TEXCOORD8_param : vec4<f32>, @location(2) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD5_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  main_1();
  return main_out(SV_Target0);
}

