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
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
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

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MetallicTex : sampler;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_197 : UnityPerDraw;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(3) var<uniform> x_414 : MainLightShadows;

@group(1) @binding(4) var<uniform> x_481 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_929 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1042 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : f32;
  var u_xlatb15 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlat29 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat15 : vec3<f32>;
  var x_118 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat44 : f32;
  var u_xlat17 : vec3<f32>;
  var u_xlat18 : f32;
  var u_xlat46 : f32;
  var u_xlat42 : f32;
  var u_xlat32 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat47 : f32;
  var u_xlatb6 : bool;
  var u_xlatb20 : bool;
  var u_xlat20 : f32;
  var u_xlatb7 : vec2<bool>;
  var u_xlat48 : f32;
  var x_568 : f32;
  var x_579 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat49 : f32;
  var u_xlat8 : vec2<f32>;
  var u_xlat22 : vec3<f32>;
  var u_xlatu42 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu44 : u32;
  var u_xlati47 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat9 : vec3<f32>;
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
  var x_1344 : f32;
  var x_1357 : f32;
  var x_1409 : f32;
  var x_1421 : vec3<f32>;
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
  let x_76 : vec3<f32> = vs_TEXCOORD7;
  let x_81 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_82 : vec3<f32> = (-(x_76) + x_81);
  let x_83 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_82.x, x_82.y, x_82.z, x_83.w);
  let x_86 : vec4<f32> = u_xlat2;
  let x_88 : vec4<f32> = u_xlat2;
  u_xlat29 = dot(vec3<f32>(x_86.x, x_86.y, x_86.z), vec3<f32>(x_88.x, x_88.y, x_88.z));
  let x_91 : f32 = u_xlat29;
  u_xlat29 = inverseSqrt(x_91);
  let x_93 : f32 = u_xlat29;
  let x_95 : vec4<f32> = u_xlat2;
  let x_97 : vec3<f32> = (vec3<f32>(x_93, x_93, x_93) * vec3<f32>(x_95.x, x_95.y, x_95.z));
  let x_98 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_97.x, x_97.y, x_97.z, x_98.w);
  let x_106 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat3.x = x_106;
  let x_109 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat3.y = x_109;
  let x_114 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat3.z = x_114;
  let x_117 : bool = u_xlatb15;
  if (x_117) {
    let x_121 : vec4<f32> = u_xlat2;
    x_118 = vec3<f32>(x_121.x, x_121.y, x_121.z);
  } else {
    let x_124 : vec3<f32> = u_xlat3;
    x_118 = x_124;
  }
  let x_125 : vec3<f32> = x_118;
  u_xlat15 = x_125;
  let x_127 : vec3<f32> = vs_TEXCOORD3;
  let x_128 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2.x = dot(x_127, x_128);
  let x_132 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_132);
  let x_135 : vec4<f32> = u_xlat2;
  let x_137 : vec3<f32> = vs_TEXCOORD3;
  let x_138 : vec3<f32> = (vec3<f32>(x_135.x, x_135.x, x_135.x) * x_137);
  let x_139 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_138.x, x_138.y, x_138.z, x_139.w);
  let x_142 : f32 = vs_TEXCOORD7.y;
  let x_144 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat3.x = (x_142 * x_144);
  let x_148 : f32 = x_44.unity_MatrixV[0i].z;
  let x_150 : f32 = vs_TEXCOORD7.x;
  let x_153 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_148 * x_150) + x_153);
  let x_157 : f32 = x_44.unity_MatrixV[2i].z;
  let x_159 : f32 = vs_TEXCOORD7.z;
  let x_162 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_157 * x_159) + x_162);
  let x_166 : f32 = u_xlat3.x;
  let x_169 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat3.x = (x_166 + x_169);
  let x_173 : f32 = u_xlat3.x;
  let x_177 : f32 = x_44.x_ProjectionParams.y;
  u_xlat3.x = (-(x_173) + -(x_177));
  let x_182 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_182, 0.0f);
  let x_186 : f32 = u_xlat3.x;
  let x_189 : f32 = x_44.unity_FogParams.x;
  u_xlat3.x = (x_186 * x_189);
  u_xlat2.w = 1.0f;
  let x_201 : vec4<f32> = x_197.unity_SHAr;
  let x_202 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_201, x_202);
  let x_207 : vec4<f32> = x_197.unity_SHAg;
  let x_208 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_207, x_208);
  let x_213 : vec4<f32> = x_197.unity_SHAb;
  let x_214 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_213, x_214);
  let x_218 : vec4<f32> = u_xlat2;
  let x_220 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_218.y, x_218.z, x_218.z, x_218.x) * vec4<f32>(x_220.x, x_220.y, x_220.z, x_220.z));
  let x_226 : vec4<f32> = x_197.unity_SHBr;
  let x_227 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_226, x_227);
  let x_232 : vec4<f32> = x_197.unity_SHBg;
  let x_233 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_232, x_233);
  let x_238 : vec4<f32> = x_197.unity_SHBb;
  let x_239 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_238, x_239);
  let x_244 : f32 = u_xlat2.y;
  let x_246 : f32 = u_xlat2.y;
  u_xlat44 = (x_244 * x_246);
  let x_249 : f32 = u_xlat2.x;
  let x_251 : f32 = u_xlat2.x;
  let x_253 : f32 = u_xlat44;
  u_xlat44 = ((x_249 * x_251) + -(x_253));
  let x_259 : vec4<f32> = x_197.unity_SHC;
  let x_261 : f32 = u_xlat44;
  let x_264 : vec4<f32> = u_xlat6;
  u_xlat17 = ((vec3<f32>(x_259.x, x_259.y, x_259.z) * vec3<f32>(x_261, x_261, x_261)) + vec3<f32>(x_264.x, x_264.y, x_264.z));
  let x_267 : vec3<f32> = u_xlat17;
  let x_268 : vec3<f32> = u_xlat4;
  u_xlat17 = (x_267 + x_268);
  let x_270 : vec3<f32> = u_xlat17;
  u_xlat17 = max(x_270, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_275 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_276 : vec2<f32> = vec2<f32>(x_275.x, x_275.y);
  let x_280 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_276.x, x_276.y));
  let x_281 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_280.x, x_280.y, x_281.z);
  let x_283 : vec3<f32> = u_xlat4;
  let x_285 : vec4<f32> = hlslcc_FragCoord;
  let x_287 : vec2<f32> = (vec2<f32>(x_283.x, x_283.y) * vec2<f32>(x_285.x, x_285.y));
  let x_288 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_287.x, x_287.y, x_288.z);
  let x_291 : f32 = u_xlat4.y;
  let x_294 : f32 = x_44.x_ScaleBiasRt.x;
  let x_297 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat44 = ((x_291 * x_294) + x_297);
  let x_299 : f32 = u_xlat44;
  u_xlat4.z = (-(x_299) + 1.0f);
  let x_303 : f32 = u_xlat1;
  u_xlat44 = ((-(x_303) * 0.959999979f) + 0.959999979f);
  let x_309 : f32 = u_xlat44;
  u_xlat18 = (-(x_309) + 1.0f);
  let x_312 : vec4<f32> = u_xlat0;
  let x_314 : f32 = u_xlat44;
  let x_316 : vec3<f32> = (vec3<f32>(x_312.x, x_312.y, x_312.z) * vec3<f32>(x_314, x_314, x_314));
  let x_317 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_319 : vec4<f32> = u_xlat0;
  let x_323 : vec3<f32> = (vec3<f32>(x_319.x, x_319.y, x_319.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_324 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_323.x, x_323.y, x_323.z, x_324.w);
  let x_326 : f32 = u_xlat1;
  let x_328 : vec4<f32> = u_xlat0;
  let x_333 : vec3<f32> = ((vec3<f32>(x_326, x_326, x_326) * vec3<f32>(x_328.x, x_328.y, x_328.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_334 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_337 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_337) + 1.0f);
  let x_340 : f32 = u_xlat1;
  let x_341 : f32 = u_xlat1;
  u_xlat44 = (x_340 * x_341);
  let x_343 : f32 = u_xlat44;
  u_xlat44 = max(x_343, 0.0078125f);
  let x_347 : f32 = u_xlat44;
  let x_348 : f32 = u_xlat44;
  u_xlat46 = (x_347 * x_348);
  let x_352 : f32 = u_xlat0.w;
  let x_353 : f32 = u_xlat18;
  u_xlat42 = (x_352 + x_353);
  let x_355 : f32 = u_xlat42;
  u_xlat42 = clamp(x_355, 0.0f, 1.0f);
  let x_357 : f32 = u_xlat44;
  u_xlat18 = ((x_357 * 4.0f) + 2.0f);
  let x_367 : vec3<f32> = u_xlat4;
  let x_370 : f32 = x_44.x_GlobalMipBias.x;
  let x_371 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_367.x, x_367.z), x_370);
  u_xlat4.x = x_371.x;
  let x_376 : f32 = u_xlat4.x;
  u_xlat32 = (x_376 + -1.0f);
  let x_381 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_382 : f32 = u_xlat32;
  u_xlat32 = ((x_381 * x_382) + 1.0f);
  let x_386 : f32 = u_xlat4.x;
  u_xlat4.x = min(x_386, 1.0f);
  let x_391 : vec4<f32> = vs_TEXCOORD8;
  let x_392 : vec2<f32> = vec2<f32>(x_391.x, x_391.y);
  let x_394 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_392.x, x_392.y, x_394);
  let x_407 : vec3<f32> = txVec0;
  let x_409 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_407.xy, x_407.z);
  u_xlat47 = x_409;
  let x_416 : f32 = x_414.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_416) + 1.0f);
  let x_420 : f32 = u_xlat47;
  let x_422 : f32 = x_414.x_MainLightShadowParams.x;
  let x_425 : f32 = u_xlat6.x;
  u_xlat47 = ((x_420 * x_422) + x_425);
  let x_429 : f32 = vs_TEXCOORD8.z;
  u_xlatb6 = (0.0f >= x_429);
  let x_433 : f32 = vs_TEXCOORD8.z;
  u_xlatb20 = (x_433 >= 1.0f);
  let x_435 : bool = u_xlatb20;
  let x_436 : bool = u_xlatb6;
  u_xlatb6 = (x_435 | x_436);
  let x_438 : bool = u_xlatb6;
  let x_439 : f32 = u_xlat47;
  u_xlat47 = select(x_439, 1.0f, x_438);
  let x_441 : vec3<f32> = vs_TEXCOORD7;
  let x_443 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_445 : vec3<f32> = (x_441 + -(x_443));
  let x_446 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_445.x, x_445.y, x_445.z, x_446.w);
  let x_448 : vec4<f32> = u_xlat6;
  let x_450 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_448.x, x_448.y, x_448.z), vec3<f32>(x_450.x, x_450.y, x_450.z));
  let x_455 : f32 = u_xlat6.x;
  let x_457 : f32 = x_414.x_MainLightShadowParams.z;
  let x_460 : f32 = x_414.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_455 * x_457) + x_460);
  let x_464 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_464, 0.0f, 1.0f);
  let x_468 : f32 = u_xlat47;
  u_xlat20 = (-(x_468) + 1.0f);
  let x_472 : f32 = u_xlat6.x;
  let x_473 : f32 = u_xlat20;
  let x_475 : f32 = u_xlat47;
  u_xlat47 = ((x_472 * x_473) + x_475);
  let x_483 : f32 = x_481.x_MainLightCookieTextureFormat;
  u_xlatb6 = !((x_483 == -1.0f));
  let x_485 : bool = u_xlatb6;
  if (x_485) {
    let x_488 : vec3<f32> = vs_TEXCOORD7;
    let x_491 : vec4<f32> = x_481.x_MainLightWorldToLight[1i];
    let x_493 : vec2<f32> = (vec2<f32>(x_488.y, x_488.y) * vec2<f32>(x_491.x, x_491.y));
    let x_494 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_493.x, x_493.y, x_494.z, x_494.w);
    let x_497 : vec4<f32> = x_481.x_MainLightWorldToLight[0i];
    let x_499 : vec3<f32> = vs_TEXCOORD7;
    let x_502 : vec4<f32> = u_xlat6;
    let x_504 : vec2<f32> = ((vec2<f32>(x_497.x, x_497.y) * vec2<f32>(x_499.x, x_499.x)) + vec2<f32>(x_502.x, x_502.y));
    let x_505 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_504.x, x_504.y, x_505.z, x_505.w);
    let x_508 : vec4<f32> = x_481.x_MainLightWorldToLight[2i];
    let x_510 : vec3<f32> = vs_TEXCOORD7;
    let x_513 : vec4<f32> = u_xlat6;
    let x_515 : vec2<f32> = ((vec2<f32>(x_508.x, x_508.y) * vec2<f32>(x_510.z, x_510.z)) + vec2<f32>(x_513.x, x_513.y));
    let x_516 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_515.x, x_515.y, x_516.z, x_516.w);
    let x_518 : vec4<f32> = u_xlat6;
    let x_521 : vec4<f32> = x_481.x_MainLightWorldToLight[3i];
    let x_523 : vec2<f32> = (vec2<f32>(x_518.x, x_518.y) + vec2<f32>(x_521.x, x_521.y));
    let x_524 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_523.x, x_523.y, x_524.z, x_524.w);
    let x_526 : vec4<f32> = u_xlat6;
    let x_531 : vec2<f32> = ((vec2<f32>(x_526.x, x_526.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_532 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_531.x, x_531.y, x_532.z, x_532.w);
    let x_539 : vec4<f32> = u_xlat6;
    let x_542 : f32 = x_44.x_GlobalMipBias.x;
    let x_543 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_539.x, x_539.y), x_542);
    u_xlat6 = x_543;
    let x_548 : f32 = x_481.x_MainLightCookieTextureFormat;
    let x_550 : f32 = x_481.x_MainLightCookieTextureFormat;
    let x_552 : f32 = x_481.x_MainLightCookieTextureFormat;
    let x_554 : f32 = x_481.x_MainLightCookieTextureFormat;
    let x_555 : vec4<f32> = vec4<f32>(x_548, x_550, x_552, x_554);
    let x_563 : vec4<bool> = (vec4<f32>(x_555.x, x_555.y, x_555.z, x_555.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_563.x, x_563.y);
    let x_567 : bool = u_xlatb7.y;
    if (x_567) {
      let x_572 : f32 = u_xlat6.w;
      x_568 = x_572;
    } else {
      let x_575 : f32 = u_xlat6.x;
      x_568 = x_575;
    }
    let x_576 : f32 = x_568;
    u_xlat48 = x_576;
    let x_578 : bool = u_xlatb7.x;
    if (x_578) {
      let x_582 : vec4<f32> = u_xlat6;
      x_579 = vec3<f32>(x_582.x, x_582.y, x_582.z);
    } else {
      let x_585 : f32 = u_xlat48;
      x_579 = vec3<f32>(x_585, x_585, x_585);
    }
    let x_587 : vec3<f32> = x_579;
    let x_588 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_587.x, x_587.y, x_587.z, x_588.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_594 : vec4<f32> = u_xlat6;
  let x_597 : vec4<f32> = x_44.x_MainLightColor;
  let x_599 : vec3<f32> = (vec3<f32>(x_594.x, x_594.y, x_594.z) * vec3<f32>(x_597.x, x_597.y, x_597.z));
  let x_600 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_599.x, x_599.y, x_599.z, x_600.w);
  let x_602 : f32 = u_xlat32;
  let x_604 : vec4<f32> = u_xlat6;
  let x_606 : vec3<f32> = (vec3<f32>(x_602, x_602, x_602) * vec3<f32>(x_604.x, x_604.y, x_604.z));
  let x_607 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_606.x, x_606.y, x_606.z, x_607.w);
  let x_609 : vec3<f32> = u_xlat15;
  let x_611 : vec4<f32> = u_xlat2;
  u_xlat48 = dot(-(x_609), vec3<f32>(x_611.x, x_611.y, x_611.z));
  let x_614 : f32 = u_xlat48;
  let x_615 : f32 = u_xlat48;
  u_xlat48 = (x_614 + x_615);
  let x_618 : vec4<f32> = u_xlat2;
  let x_620 : f32 = u_xlat48;
  let x_624 : vec3<f32> = u_xlat15;
  let x_626 : vec3<f32> = ((vec3<f32>(x_618.x, x_618.y, x_618.z) * -(vec3<f32>(x_620, x_620, x_620))) + -(x_624));
  let x_627 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_626.x, x_626.y, x_626.z, x_627.w);
  let x_629 : vec4<f32> = u_xlat2;
  let x_631 : vec3<f32> = u_xlat15;
  u_xlat48 = dot(vec3<f32>(x_629.x, x_629.y, x_629.z), x_631);
  let x_633 : f32 = u_xlat48;
  u_xlat48 = clamp(x_633, 0.0f, 1.0f);
  let x_635 : f32 = u_xlat48;
  u_xlat48 = (-(x_635) + 1.0f);
  let x_638 : f32 = u_xlat48;
  let x_639 : f32 = u_xlat48;
  u_xlat48 = (x_638 * x_639);
  let x_641 : f32 = u_xlat48;
  let x_642 : f32 = u_xlat48;
  u_xlat48 = (x_641 * x_642);
  let x_645 : f32 = u_xlat1;
  u_xlat49 = ((-(x_645) * 0.699999988f) + 1.700000048f);
  let x_651 : f32 = u_xlat1;
  let x_652 : f32 = u_xlat49;
  u_xlat1 = (x_651 * x_652);
  let x_654 : f32 = u_xlat1;
  u_xlat1 = (x_654 * 6.0f);
  let x_665 : vec4<f32> = u_xlat7;
  let x_667 : f32 = u_xlat1;
  let x_668 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_665.x, x_665.y, x_665.z), x_667);
  u_xlat7 = x_668;
  let x_670 : f32 = u_xlat7.w;
  u_xlat1 = (x_670 + -1.0f);
  let x_673 : f32 = x_197.unity_SpecCube0_HDR.w;
  let x_674 : f32 = u_xlat1;
  u_xlat1 = ((x_673 * x_674) + 1.0f);
  let x_677 : f32 = u_xlat1;
  u_xlat1 = max(x_677, 0.0f);
  let x_679 : f32 = u_xlat1;
  u_xlat1 = log2(x_679);
  let x_681 : f32 = u_xlat1;
  let x_683 : f32 = x_197.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_681 * x_683);
  let x_685 : f32 = u_xlat1;
  u_xlat1 = exp2(x_685);
  let x_687 : f32 = u_xlat1;
  let x_689 : f32 = x_197.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_687 * x_689);
  let x_691 : vec4<f32> = u_xlat7;
  let x_693 : f32 = u_xlat1;
  let x_695 : vec3<f32> = (vec3<f32>(x_691.x, x_691.y, x_691.z) * vec3<f32>(x_693, x_693, x_693));
  let x_696 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_695.x, x_695.y, x_695.z, x_696.w);
  let x_700 : f32 = u_xlat44;
  let x_702 : f32 = u_xlat44;
  u_xlat8 = ((vec2<f32>(x_700, x_700) * vec2<f32>(x_702, x_702)) + vec2<f32>(-1.0f, 1.0f));
  let x_708 : f32 = u_xlat8.y;
  u_xlat1 = (1.0f / x_708);
  let x_711 : vec4<f32> = u_xlat0;
  let x_714 : f32 = u_xlat42;
  u_xlat22 = (-(vec3<f32>(x_711.x, x_711.y, x_711.z)) + vec3<f32>(x_714, x_714, x_714));
  let x_717 : f32 = u_xlat48;
  let x_719 : vec3<f32> = u_xlat22;
  let x_721 : vec4<f32> = u_xlat0;
  u_xlat22 = ((vec3<f32>(x_717, x_717, x_717) * x_719) + vec3<f32>(x_721.x, x_721.y, x_721.z));
  let x_724 : f32 = u_xlat1;
  let x_726 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_724, x_724, x_724) * x_726);
  let x_728 : vec4<f32> = u_xlat7;
  let x_730 : vec3<f32> = u_xlat22;
  let x_731 : vec3<f32> = (vec3<f32>(x_728.x, x_728.y, x_728.z) * x_730);
  let x_732 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_731.x, x_731.y, x_731.z, x_732.w);
  let x_734 : vec3<f32> = u_xlat17;
  let x_735 : vec4<f32> = u_xlat5;
  let x_738 : vec4<f32> = u_xlat7;
  u_xlat17 = ((x_734 * vec3<f32>(x_735.x, x_735.y, x_735.z)) + vec3<f32>(x_738.x, x_738.y, x_738.z));
  let x_741 : f32 = u_xlat47;
  let x_744 : f32 = x_197.unity_LightData.z;
  u_xlat42 = (x_741 * x_744);
  let x_746 : vec4<f32> = u_xlat2;
  let x_749 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1 = dot(vec3<f32>(x_746.x, x_746.y, x_746.z), vec3<f32>(x_749.x, x_749.y, x_749.z));
  let x_752 : f32 = u_xlat1;
  u_xlat1 = clamp(x_752, 0.0f, 1.0f);
  let x_754 : f32 = u_xlat42;
  let x_755 : f32 = u_xlat1;
  u_xlat42 = (x_754 * x_755);
  let x_757 : f32 = u_xlat42;
  let x_759 : vec4<f32> = u_xlat6;
  let x_761 : vec3<f32> = (vec3<f32>(x_757, x_757, x_757) * vec3<f32>(x_759.x, x_759.y, x_759.z));
  let x_762 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_761.x, x_761.y, x_761.z, x_762.w);
  let x_764 : vec3<f32> = u_xlat15;
  let x_766 : vec4<f32> = x_44.x_MainLightPosition;
  let x_768 : vec3<f32> = (x_764 + vec3<f32>(x_766.x, x_766.y, x_766.z));
  let x_769 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_768.x, x_768.y, x_768.z, x_769.w);
  let x_771 : vec4<f32> = u_xlat7;
  let x_773 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_771.x, x_771.y, x_771.z), vec3<f32>(x_773.x, x_773.y, x_773.z));
  let x_776 : f32 = u_xlat42;
  u_xlat42 = max(x_776, 1.17549435e-37f);
  let x_779 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_779);
  let x_781 : f32 = u_xlat42;
  let x_783 : vec4<f32> = u_xlat7;
  let x_785 : vec3<f32> = (vec3<f32>(x_781, x_781, x_781) * vec3<f32>(x_783.x, x_783.y, x_783.z));
  let x_786 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_785.x, x_785.y, x_785.z, x_786.w);
  let x_788 : vec4<f32> = u_xlat2;
  let x_790 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_788.x, x_788.y, x_788.z), vec3<f32>(x_790.x, x_790.y, x_790.z));
  let x_793 : f32 = u_xlat42;
  u_xlat42 = clamp(x_793, 0.0f, 1.0f);
  let x_796 : vec4<f32> = x_44.x_MainLightPosition;
  let x_798 : vec4<f32> = u_xlat7;
  u_xlat1 = dot(vec3<f32>(x_796.x, x_796.y, x_796.z), vec3<f32>(x_798.x, x_798.y, x_798.z));
  let x_801 : f32 = u_xlat1;
  u_xlat1 = clamp(x_801, 0.0f, 1.0f);
  let x_803 : f32 = u_xlat42;
  let x_804 : f32 = u_xlat42;
  u_xlat42 = (x_803 * x_804);
  let x_806 : f32 = u_xlat42;
  let x_808 : f32 = u_xlat8.x;
  u_xlat42 = ((x_806 * x_808) + 1.000010014f);
  let x_812 : f32 = u_xlat1;
  let x_813 : f32 = u_xlat1;
  u_xlat1 = (x_812 * x_813);
  let x_815 : f32 = u_xlat42;
  let x_816 : f32 = u_xlat42;
  u_xlat42 = (x_815 * x_816);
  let x_818 : f32 = u_xlat1;
  u_xlat1 = max(x_818, 0.100000001f);
  let x_821 : f32 = u_xlat42;
  let x_822 : f32 = u_xlat1;
  u_xlat42 = (x_821 * x_822);
  let x_824 : f32 = u_xlat18;
  let x_825 : f32 = u_xlat42;
  u_xlat42 = (x_824 * x_825);
  let x_827 : f32 = u_xlat46;
  let x_828 : f32 = u_xlat42;
  u_xlat42 = (x_827 / x_828);
  let x_830 : vec4<f32> = u_xlat0;
  let x_832 : f32 = u_xlat42;
  let x_835 : vec4<f32> = u_xlat5;
  let x_837 : vec3<f32> = ((vec3<f32>(x_830.x, x_830.y, x_830.z) * vec3<f32>(x_832, x_832, x_832)) + vec3<f32>(x_835.x, x_835.y, x_835.z));
  let x_838 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_837.x, x_837.y, x_837.z, x_838.w);
  let x_840 : vec4<f32> = u_xlat6;
  let x_842 : vec4<f32> = u_xlat7;
  let x_844 : vec3<f32> = (vec3<f32>(x_840.x, x_840.y, x_840.z) * vec3<f32>(x_842.x, x_842.y, x_842.z));
  let x_845 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_844.x, x_844.y, x_844.z, x_845.w);
  let x_848 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_850 : f32 = x_197.unity_LightData.y;
  u_xlat42 = min(x_848, x_850);
  let x_854 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_854));
  let x_858 : f32 = x_481.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_860 : f32 = x_481.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_862 : f32 = x_481.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_864 : f32 = x_481.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_865 : vec4<f32> = vec4<f32>(x_858, x_860, x_862, x_864);
  let x_871 : vec4<bool> = (vec4<f32>(x_865.x, x_865.y, x_865.z, x_865.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_871.x, x_871.y);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_882 : u32 = u_xlatu_loop_1;
    let x_883 : u32 = u_xlatu42;
    if ((x_882 < x_883)) {
    } else {
      break;
    }
    let x_886 : u32 = u_xlatu_loop_1;
    u_xlatu44 = (x_886 >> 2u);
    let x_890 : u32 = u_xlatu_loop_1;
    u_xlati47 = bitcast<i32>((x_890 & 3u));
    let x_893 : u32 = u_xlatu44;
    let x_896 : vec4<f32> = x_197.unity_LightIndices[bitcast<i32>(x_893)];
    let x_906 : i32 = u_xlati47;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_911 : vec4<u32> = indexable[x_906];
    u_xlat44 = dot(x_896, bitcast<vec4<f32>>(x_911));
    let x_914 : f32 = u_xlat44;
    u_xlatu44 = bitcast<u32>(i32(x_914));
    let x_918 : vec3<f32> = vs_TEXCOORD7;
    let x_930 : u32 = u_xlatu44;
    let x_933 : vec4<f32> = x_929.x_AdditionalLightsPosition[bitcast<i32>(x_930)];
    let x_936 : u32 = u_xlatu44;
    let x_939 : vec4<f32> = x_929.x_AdditionalLightsPosition[bitcast<i32>(x_936)];
    u_xlat9 = ((-(x_918) * vec3<f32>(x_933.w, x_933.w, x_933.w)) + vec3<f32>(x_939.x, x_939.y, x_939.z));
    let x_942 : vec3<f32> = u_xlat9;
    let x_943 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_942, x_943);
    let x_945 : f32 = u_xlat47;
    u_xlat47 = max(x_945, 6.10351562e-05f);
    let x_948 : f32 = u_xlat47;
    u_xlat48 = inverseSqrt(x_948);
    let x_951 : f32 = u_xlat48;
    let x_953 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_951, x_951, x_951) * x_953);
    let x_956 : f32 = u_xlat47;
    u_xlat35.x = (1.0f / x_956);
    let x_959 : f32 = u_xlat47;
    let x_960 : u32 = u_xlatu44;
    let x_963 : f32 = x_929.x_AdditionalLightsAttenuation[bitcast<i32>(x_960)].x;
    u_xlat47 = (x_959 * x_963);
    let x_965 : f32 = u_xlat47;
    let x_967 : f32 = u_xlat47;
    u_xlat47 = ((-(x_965) * x_967) + 1.0f);
    let x_970 : f32 = u_xlat47;
    u_xlat47 = max(x_970, 0.0f);
    let x_972 : f32 = u_xlat47;
    let x_973 : f32 = u_xlat47;
    u_xlat47 = (x_972 * x_973);
    let x_975 : f32 = u_xlat47;
    let x_977 : f32 = u_xlat35.x;
    u_xlat47 = (x_975 * x_977);
    let x_979 : u32 = u_xlatu44;
    let x_982 : vec4<f32> = x_929.x_AdditionalLightsSpotDir[bitcast<i32>(x_979)];
    let x_984 : vec3<f32> = u_xlat10;
    u_xlat35.x = dot(vec3<f32>(x_982.x, x_982.y, x_982.z), x_984);
    let x_988 : f32 = u_xlat35.x;
    let x_989 : u32 = u_xlatu44;
    let x_992 : f32 = x_929.x_AdditionalLightsAttenuation[bitcast<i32>(x_989)].z;
    let x_994 : u32 = u_xlatu44;
    let x_997 : f32 = x_929.x_AdditionalLightsAttenuation[bitcast<i32>(x_994)].w;
    u_xlat35.x = ((x_988 * x_992) + x_997);
    let x_1001 : f32 = u_xlat35.x;
    u_xlat35.x = clamp(x_1001, 0.0f, 1.0f);
    let x_1005 : f32 = u_xlat35.x;
    let x_1007 : f32 = u_xlat35.x;
    u_xlat35.x = (x_1005 * x_1007);
    let x_1010 : f32 = u_xlat47;
    let x_1012 : f32 = u_xlat35.x;
    u_xlat47 = (x_1010 * x_1012);
    let x_1015 : u32 = u_xlatu44;
    u_xlatu35 = (x_1015 >> 5u);
    let x_1018 : u32 = u_xlatu44;
    u_xlati49 = (1i << bitcast<u32>((bitcast<i32>(x_1018) & 31i)));
    let x_1024 : i32 = u_xlati49;
    let x_1026 : u32 = u_xlatu35;
    let x_1029 : f32 = x_481.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1026)].el;
    u_xlati35 = bitcast<i32>((bitcast<u32>(x_1024) & bitcast<u32>(x_1029)));
    let x_1033 : i32 = u_xlati35;
    if ((x_1033 != 0i)) {
      let x_1043 : u32 = u_xlatu44;
      let x_1046 : f32 = x_1042.x_AdditionalLightsLightTypes[bitcast<i32>(x_1043)].el;
      u_xlati35 = i32(x_1046);
      let x_1048 : i32 = u_xlati35;
      u_xlati49 = select(1i, 0i, (x_1048 != 0i));
      let x_1052 : u32 = u_xlatu44;
      u_xlati51 = (bitcast<i32>(x_1052) << bitcast<u32>(2i));
      let x_1055 : i32 = u_xlati49;
      if ((x_1055 != 0i)) {
        let x_1060 : vec3<f32> = vs_TEXCOORD7;
        let x_1062 : i32 = u_xlati51;
        let x_1065 : i32 = u_xlati51;
        let x_1069 : vec4<f32> = x_1042.x_AdditionalLightsWorldToLights[((x_1062 + 1i) / 4i)][((x_1065 + 1i) % 4i)];
        let x_1071 : vec3<f32> = (vec3<f32>(x_1060.y, x_1060.y, x_1060.y) * vec3<f32>(x_1069.x, x_1069.y, x_1069.w));
        let x_1072 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1071.x, x_1071.y, x_1071.z, x_1072.w);
        let x_1074 : i32 = u_xlati51;
        let x_1076 : i32 = u_xlati51;
        let x_1079 : vec4<f32> = x_1042.x_AdditionalLightsWorldToLights[(x_1074 / 4i)][(x_1076 % 4i)];
        let x_1081 : vec3<f32> = vs_TEXCOORD7;
        let x_1084 : vec4<f32> = u_xlat11;
        let x_1086 : vec3<f32> = ((vec3<f32>(x_1079.x, x_1079.y, x_1079.w) * vec3<f32>(x_1081.x, x_1081.x, x_1081.x)) + vec3<f32>(x_1084.x, x_1084.y, x_1084.z));
        let x_1087 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1086.x, x_1086.y, x_1086.z, x_1087.w);
        let x_1089 : i32 = u_xlati51;
        let x_1092 : i32 = u_xlati51;
        let x_1096 : vec4<f32> = x_1042.x_AdditionalLightsWorldToLights[((x_1089 + 2i) / 4i)][((x_1092 + 2i) % 4i)];
        let x_1098 : vec3<f32> = vs_TEXCOORD7;
        let x_1101 : vec4<f32> = u_xlat11;
        let x_1103 : vec3<f32> = ((vec3<f32>(x_1096.x, x_1096.y, x_1096.w) * vec3<f32>(x_1098.z, x_1098.z, x_1098.z)) + vec3<f32>(x_1101.x, x_1101.y, x_1101.z));
        let x_1104 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1103.x, x_1103.y, x_1103.z, x_1104.w);
        let x_1106 : vec4<f32> = u_xlat11;
        let x_1108 : i32 = u_xlati51;
        let x_1111 : i32 = u_xlati51;
        let x_1115 : vec4<f32> = x_1042.x_AdditionalLightsWorldToLights[((x_1108 + 3i) / 4i)][((x_1111 + 3i) % 4i)];
        let x_1117 : vec3<f32> = (vec3<f32>(x_1106.x, x_1106.y, x_1106.z) + vec3<f32>(x_1115.x, x_1115.y, x_1115.w));
        let x_1118 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1117.x, x_1117.y, x_1117.z, x_1118.w);
        let x_1120 : vec4<f32> = u_xlat11;
        let x_1122 : vec4<f32> = u_xlat11;
        let x_1124 : vec2<f32> = (vec2<f32>(x_1120.x, x_1120.y) / vec2<f32>(x_1122.z, x_1122.z));
        let x_1125 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1124.x, x_1124.y, x_1125.z, x_1125.w);
        let x_1127 : vec4<f32> = u_xlat11;
        let x_1130 : vec2<f32> = ((vec2<f32>(x_1127.x, x_1127.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1131 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1130.x, x_1130.y, x_1131.z, x_1131.w);
        let x_1133 : vec4<f32> = u_xlat11;
        let x_1137 : vec2<f32> = clamp(vec2<f32>(x_1133.x, x_1133.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1138 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1137.x, x_1137.y, x_1138.z, x_1138.w);
        let x_1140 : u32 = u_xlatu44;
        let x_1143 : vec4<f32> = x_1042.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1140)];
        let x_1145 : vec4<f32> = u_xlat11;
        let x_1148 : u32 = u_xlatu44;
        let x_1151 : vec4<f32> = x_1042.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1148)];
        let x_1153 : vec2<f32> = ((vec2<f32>(x_1143.x, x_1143.y) * vec2<f32>(x_1145.x, x_1145.y)) + vec2<f32>(x_1151.z, x_1151.w));
        let x_1154 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1153.x, x_1153.y, x_1154.z, x_1154.w);
      } else {
        let x_1158 : i32 = u_xlati35;
        u_xlatb35 = (x_1158 == 1i);
        let x_1160 : bool = u_xlatb35;
        u_xlati35 = select(0i, 1i, x_1160);
        let x_1162 : i32 = u_xlati35;
        if ((x_1162 != 0i)) {
          let x_1166 : vec3<f32> = vs_TEXCOORD7;
          let x_1168 : i32 = u_xlati51;
          let x_1171 : i32 = u_xlati51;
          let x_1175 : vec4<f32> = x_1042.x_AdditionalLightsWorldToLights[((x_1168 + 1i) / 4i)][((x_1171 + 1i) % 4i)];
          u_xlat35 = (vec2<f32>(x_1166.y, x_1166.y) * vec2<f32>(x_1175.x, x_1175.y));
          let x_1178 : i32 = u_xlati51;
          let x_1180 : i32 = u_xlati51;
          let x_1183 : vec4<f32> = x_1042.x_AdditionalLightsWorldToLights[(x_1178 / 4i)][(x_1180 % 4i)];
          let x_1185 : vec3<f32> = vs_TEXCOORD7;
          let x_1188 : vec2<f32> = u_xlat35;
          u_xlat35 = ((vec2<f32>(x_1183.x, x_1183.y) * vec2<f32>(x_1185.x, x_1185.x)) + x_1188);
          let x_1190 : i32 = u_xlati51;
          let x_1193 : i32 = u_xlati51;
          let x_1197 : vec4<f32> = x_1042.x_AdditionalLightsWorldToLights[((x_1190 + 2i) / 4i)][((x_1193 + 2i) % 4i)];
          let x_1199 : vec3<f32> = vs_TEXCOORD7;
          let x_1202 : vec2<f32> = u_xlat35;
          u_xlat35 = ((vec2<f32>(x_1197.x, x_1197.y) * vec2<f32>(x_1199.z, x_1199.z)) + x_1202);
          let x_1204 : vec2<f32> = u_xlat35;
          let x_1205 : i32 = u_xlati51;
          let x_1208 : i32 = u_xlati51;
          let x_1212 : vec4<f32> = x_1042.x_AdditionalLightsWorldToLights[((x_1205 + 3i) / 4i)][((x_1208 + 3i) % 4i)];
          u_xlat35 = (x_1204 + vec2<f32>(x_1212.x, x_1212.y));
          let x_1215 : vec2<f32> = u_xlat35;
          u_xlat35 = ((x_1215 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1218 : vec2<f32> = u_xlat35;
          u_xlat35 = fract(x_1218);
          let x_1220 : u32 = u_xlatu44;
          let x_1223 : vec4<f32> = x_1042.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1220)];
          let x_1225 : vec2<f32> = u_xlat35;
          let x_1227 : u32 = u_xlatu44;
          let x_1230 : vec4<f32> = x_1042.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1227)];
          let x_1232 : vec2<f32> = ((vec2<f32>(x_1223.x, x_1223.y) * x_1225) + vec2<f32>(x_1230.z, x_1230.w));
          let x_1233 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1232.x, x_1232.y, x_1233.z, x_1233.w);
        } else {
          let x_1237 : vec3<f32> = vs_TEXCOORD7;
          let x_1239 : i32 = u_xlati51;
          let x_1242 : i32 = u_xlati51;
          let x_1246 : vec4<f32> = x_1042.x_AdditionalLightsWorldToLights[((x_1239 + 1i) / 4i)][((x_1242 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1237.y, x_1237.y, x_1237.y, x_1237.y) * x_1246);
          let x_1248 : i32 = u_xlati51;
          let x_1250 : i32 = u_xlati51;
          let x_1253 : vec4<f32> = x_1042.x_AdditionalLightsWorldToLights[(x_1248 / 4i)][(x_1250 % 4i)];
          let x_1254 : vec3<f32> = vs_TEXCOORD7;
          let x_1257 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1253 * vec4<f32>(x_1254.x, x_1254.x, x_1254.x, x_1254.x)) + x_1257);
          let x_1259 : i32 = u_xlati51;
          let x_1262 : i32 = u_xlati51;
          let x_1266 : vec4<f32> = x_1042.x_AdditionalLightsWorldToLights[((x_1259 + 2i) / 4i)][((x_1262 + 2i) % 4i)];
          let x_1267 : vec3<f32> = vs_TEXCOORD7;
          let x_1270 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1266 * vec4<f32>(x_1267.z, x_1267.z, x_1267.z, x_1267.z)) + x_1270);
          let x_1272 : vec4<f32> = u_xlat12;
          let x_1273 : i32 = u_xlati51;
          let x_1276 : i32 = u_xlati51;
          let x_1280 : vec4<f32> = x_1042.x_AdditionalLightsWorldToLights[((x_1273 + 3i) / 4i)][((x_1276 + 3i) % 4i)];
          u_xlat12 = (x_1272 + x_1280);
          let x_1282 : vec4<f32> = u_xlat12;
          let x_1284 : vec4<f32> = u_xlat12;
          let x_1286 : vec3<f32> = (vec3<f32>(x_1282.x, x_1282.y, x_1282.z) / vec3<f32>(x_1284.w, x_1284.w, x_1284.w));
          let x_1287 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1286.x, x_1286.y, x_1286.z, x_1287.w);
          let x_1289 : vec4<f32> = u_xlat12;
          let x_1291 : vec4<f32> = u_xlat12;
          u_xlat35.x = dot(vec3<f32>(x_1289.x, x_1289.y, x_1289.z), vec3<f32>(x_1291.x, x_1291.y, x_1291.z));
          let x_1296 : f32 = u_xlat35.x;
          u_xlat35.x = inverseSqrt(x_1296);
          let x_1299 : vec2<f32> = u_xlat35;
          let x_1301 : vec4<f32> = u_xlat12;
          let x_1303 : vec3<f32> = (vec3<f32>(x_1299.x, x_1299.x, x_1299.x) * vec3<f32>(x_1301.x, x_1301.y, x_1301.z));
          let x_1304 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1303.x, x_1303.y, x_1303.z, x_1304.w);
          let x_1306 : vec4<f32> = u_xlat12;
          u_xlat35.x = dot(abs(vec3<f32>(x_1306.x, x_1306.y, x_1306.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1313 : f32 = u_xlat35.x;
          u_xlat35.x = max(x_1313, 0.000001f);
          let x_1318 : f32 = u_xlat35.x;
          u_xlat35.x = (1.0f / x_1318);
          let x_1322 : vec2<f32> = u_xlat35;
          let x_1324 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1322.x, x_1322.x, x_1322.x) * vec3<f32>(x_1324.z, x_1324.x, x_1324.y));
          let x_1328 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1328);
          let x_1332 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1332, 0.0f, 1.0f);
          let x_1336 : vec3<f32> = u_xlat13;
          let x_1339 : vec4<bool> = (vec4<f32>(x_1336.y, x_1336.z, x_1336.y, x_1336.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1339.x, x_1339.y);
          let x_1343 : bool = u_xlatb39.x;
          if (x_1343) {
            let x_1348 : f32 = u_xlat13.x;
            x_1344 = x_1348;
          } else {
            let x_1351 : f32 = u_xlat13.x;
            x_1344 = -(x_1351);
          }
          let x_1353 : f32 = x_1344;
          u_xlat39.x = x_1353;
          let x_1356 : bool = u_xlatb39.y;
          if (x_1356) {
            let x_1361 : f32 = u_xlat13.x;
            x_1357 = x_1361;
          } else {
            let x_1364 : f32 = u_xlat13.x;
            x_1357 = -(x_1364);
          }
          let x_1366 : f32 = x_1357;
          u_xlat39.y = x_1366;
          let x_1368 : vec4<f32> = u_xlat12;
          let x_1370 : vec2<f32> = u_xlat35;
          let x_1373 : vec2<f32> = u_xlat39;
          u_xlat35 = ((vec2<f32>(x_1368.x, x_1368.y) * vec2<f32>(x_1370.x, x_1370.x)) + x_1373);
          let x_1375 : vec2<f32> = u_xlat35;
          u_xlat35 = ((x_1375 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1378 : vec2<f32> = u_xlat35;
          u_xlat35 = clamp(x_1378, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1382 : u32 = u_xlatu44;
          let x_1385 : vec4<f32> = x_1042.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1382)];
          let x_1387 : vec2<f32> = u_xlat35;
          let x_1389 : u32 = u_xlatu44;
          let x_1392 : vec4<f32> = x_1042.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1389)];
          let x_1394 : vec2<f32> = ((vec2<f32>(x_1385.x, x_1385.y) * x_1387) + vec2<f32>(x_1392.z, x_1392.w));
          let x_1395 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1394.x, x_1394.y, x_1395.z, x_1395.w);
        }
      }
      let x_1402 : vec4<f32> = u_xlat11;
      let x_1405 : f32 = x_44.x_GlobalMipBias.x;
      let x_1406 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1402.x, x_1402.y), x_1405);
      u_xlat11 = x_1406;
      let x_1408 : bool = u_xlatb7.y;
      if (x_1408) {
        let x_1413 : f32 = u_xlat11.w;
        x_1409 = x_1413;
      } else {
        let x_1416 : f32 = u_xlat11.x;
        x_1409 = x_1416;
      }
      let x_1417 : f32 = x_1409;
      u_xlat35.x = x_1417;
      let x_1420 : bool = u_xlatb7.x;
      if (x_1420) {
        let x_1424 : vec4<f32> = u_xlat11;
        x_1421 = vec3<f32>(x_1424.x, x_1424.y, x_1424.z);
      } else {
        let x_1427 : vec2<f32> = u_xlat35;
        x_1421 = vec3<f32>(x_1427.x, x_1427.x, x_1427.x);
      }
      let x_1429 : vec3<f32> = x_1421;
      let x_1430 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1429.x, x_1429.y, x_1429.z, x_1430.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1436 : vec4<f32> = u_xlat11;
    let x_1438 : u32 = u_xlatu44;
    let x_1441 : vec4<f32> = x_929.x_AdditionalLightsColor[bitcast<i32>(x_1438)];
    let x_1443 : vec3<f32> = (vec3<f32>(x_1436.x, x_1436.y, x_1436.z) * vec3<f32>(x_1441.x, x_1441.y, x_1441.z));
    let x_1444 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1443.x, x_1443.y, x_1443.z, x_1444.w);
    let x_1446 : f32 = u_xlat32;
    let x_1448 : vec4<f32> = u_xlat11;
    let x_1450 : vec3<f32> = (vec3<f32>(x_1446, x_1446, x_1446) * vec3<f32>(x_1448.x, x_1448.y, x_1448.z));
    let x_1451 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1450.x, x_1450.y, x_1450.z, x_1451.w);
    let x_1453 : vec4<f32> = u_xlat2;
    let x_1455 : vec3<f32> = u_xlat10;
    u_xlat44 = dot(vec3<f32>(x_1453.x, x_1453.y, x_1453.z), x_1455);
    let x_1457 : f32 = u_xlat44;
    u_xlat44 = clamp(x_1457, 0.0f, 1.0f);
    let x_1459 : f32 = u_xlat44;
    let x_1460 : f32 = u_xlat47;
    u_xlat44 = (x_1459 * x_1460);
    let x_1462 : f32 = u_xlat44;
    let x_1464 : vec4<f32> = u_xlat11;
    let x_1466 : vec3<f32> = (vec3<f32>(x_1462, x_1462, x_1462) * vec3<f32>(x_1464.x, x_1464.y, x_1464.z));
    let x_1467 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1466.x, x_1466.y, x_1466.z, x_1467.w);
    let x_1469 : vec3<f32> = u_xlat9;
    let x_1470 : f32 = u_xlat48;
    let x_1473 : vec3<f32> = u_xlat15;
    u_xlat9 = ((x_1469 * vec3<f32>(x_1470, x_1470, x_1470)) + x_1473);
    let x_1475 : vec3<f32> = u_xlat9;
    let x_1476 : vec3<f32> = u_xlat9;
    u_xlat44 = dot(x_1475, x_1476);
    let x_1478 : f32 = u_xlat44;
    u_xlat44 = max(x_1478, 1.17549435e-37f);
    let x_1480 : f32 = u_xlat44;
    u_xlat44 = inverseSqrt(x_1480);
    let x_1482 : f32 = u_xlat44;
    let x_1484 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1482, x_1482, x_1482) * x_1484);
    let x_1486 : vec4<f32> = u_xlat2;
    let x_1488 : vec3<f32> = u_xlat9;
    u_xlat44 = dot(vec3<f32>(x_1486.x, x_1486.y, x_1486.z), x_1488);
    let x_1490 : f32 = u_xlat44;
    u_xlat44 = clamp(x_1490, 0.0f, 1.0f);
    let x_1492 : vec3<f32> = u_xlat10;
    let x_1493 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1492, x_1493);
    let x_1495 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1495, 0.0f, 1.0f);
    let x_1497 : f32 = u_xlat44;
    let x_1498 : f32 = u_xlat44;
    u_xlat44 = (x_1497 * x_1498);
    let x_1500 : f32 = u_xlat44;
    let x_1502 : f32 = u_xlat8.x;
    u_xlat44 = ((x_1500 * x_1502) + 1.000010014f);
    let x_1505 : f32 = u_xlat47;
    let x_1506 : f32 = u_xlat47;
    u_xlat47 = (x_1505 * x_1506);
    let x_1508 : f32 = u_xlat44;
    let x_1509 : f32 = u_xlat44;
    u_xlat44 = (x_1508 * x_1509);
    let x_1511 : f32 = u_xlat47;
    u_xlat47 = max(x_1511, 0.100000001f);
    let x_1513 : f32 = u_xlat44;
    let x_1514 : f32 = u_xlat47;
    u_xlat44 = (x_1513 * x_1514);
    let x_1516 : f32 = u_xlat18;
    let x_1517 : f32 = u_xlat44;
    u_xlat44 = (x_1516 * x_1517);
    let x_1519 : f32 = u_xlat46;
    let x_1520 : f32 = u_xlat44;
    u_xlat44 = (x_1519 / x_1520);
    let x_1522 : vec4<f32> = u_xlat0;
    let x_1524 : f32 = u_xlat44;
    let x_1527 : vec4<f32> = u_xlat5;
    u_xlat9 = ((vec3<f32>(x_1522.x, x_1522.y, x_1522.z) * vec3<f32>(x_1524, x_1524, x_1524)) + vec3<f32>(x_1527.x, x_1527.y, x_1527.z));
    let x_1530 : vec3<f32> = u_xlat9;
    let x_1531 : vec4<f32> = u_xlat11;
    let x_1534 : vec3<f32> = u_xlat22;
    u_xlat22 = ((x_1530 * vec3<f32>(x_1531.x, x_1531.y, x_1531.z)) + x_1534);

    continuing {
      let x_1536 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1536 + bitcast<u32>(1i));
    }
  }
  let x_1538 : vec3<f32> = u_xlat17;
  let x_1539 : vec3<f32> = u_xlat4;
  let x_1542 : vec4<f32> = u_xlat6;
  let x_1544 : vec3<f32> = ((x_1538 * vec3<f32>(x_1539.x, x_1539.x, x_1539.x)) + vec3<f32>(x_1542.x, x_1542.y, x_1542.z));
  let x_1545 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1544.x, x_1544.y, x_1544.z, x_1545.w);
  let x_1547 : vec3<f32> = u_xlat22;
  let x_1548 : vec4<f32> = u_xlat0;
  let x_1550 : vec3<f32> = (x_1547 + vec3<f32>(x_1548.x, x_1548.y, x_1548.z));
  let x_1551 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1550.x, x_1550.y, x_1550.z, x_1551.w);
  let x_1554 : f32 = u_xlat3.x;
  let x_1556 : f32 = u_xlat3.x;
  u_xlat42 = (x_1554 * -(x_1556));
  let x_1559 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1559);
  let x_1561 : vec4<f32> = u_xlat0;
  let x_1565 : vec4<f32> = x_44.unity_FogColor;
  let x_1568 : vec3<f32> = (vec3<f32>(x_1561.x, x_1561.y, x_1561.z) + -(vec3<f32>(x_1565.x, x_1565.y, x_1565.z)));
  let x_1569 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1568.x, x_1568.y, x_1568.z, x_1569.w);
  let x_1573 : f32 = u_xlat42;
  let x_1575 : vec4<f32> = u_xlat0;
  let x_1579 : vec4<f32> = x_44.unity_FogColor;
  let x_1581 : vec3<f32> = ((vec3<f32>(x_1573, x_1573, x_1573) * vec3<f32>(x_1575.x, x_1575.y, x_1575.z)) + vec3<f32>(x_1579.x, x_1579.y, x_1579.z));
  let x_1582 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1581.x, x_1581.y, x_1581.z, x_1582.w);
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

