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

@group(1) @binding(2) var<uniform> x_162 : UnityPerDraw;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(3) var<uniform> x_386 : MainLightShadows;

@group(1) @binding(4) var<uniform> x_446 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_915 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1016 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlatb15 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlat29 : f32;
  var u_xlat3 : vec3<f32>;
  var x_104 : f32;
  var x_118 : f32;
  var x_130 : f32;
  var u_xlat15 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat44 : f32;
  var u_xlat45 : f32;
  var u_xlat18 : f32;
  var u_xlat42 : f32;
  var u_xlat32 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat46 : f32;
  var u_xlat47 : f32;
  var u_xlatb47 : bool;
  var u_xlatb6 : bool;
  var u_xlatb7 : vec2<bool>;
  var x_533 : f32;
  var x_544 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat48 : f32;
  var u_xlat8 : vec2<f32>;
  var u_xlat22 : vec3<f32>;
  var u_xlat43 : f32;
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
  var x_1311 : f32;
  var x_1324 : f32;
  var x_1376 : f32;
  var x_1387 : vec3<f32>;
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
  u_xlat1.x = x_63.x;
  let x_72 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb15 = (x_72 == 0.0f);
  let x_78 : vec3<f32> = vs_TEXCOORD7;
  let x_83 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_84 : vec3<f32> = (-(x_78) + x_83);
  let x_85 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_84.x, x_84.y, x_84.z, x_85.w);
  let x_88 : vec4<f32> = u_xlat2;
  let x_90 : vec4<f32> = u_xlat2;
  u_xlat29 = dot(vec3<f32>(x_88.x, x_88.y, x_88.z), vec3<f32>(x_90.x, x_90.y, x_90.z));
  let x_93 : f32 = u_xlat29;
  u_xlat29 = inverseSqrt(x_93);
  let x_95 : f32 = u_xlat29;
  let x_97 : vec4<f32> = u_xlat2;
  let x_99 : vec3<f32> = (vec3<f32>(x_95, x_95, x_95) * vec3<f32>(x_97.x, x_97.y, x_97.z));
  let x_100 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_99.x, x_99.y, x_99.z, x_100.w);
  let x_103 : bool = u_xlatb15;
  if (x_103) {
    let x_108 : f32 = u_xlat2.x;
    x_104 = x_108;
  } else {
    let x_114 : f32 = x_44.unity_MatrixV[0i].z;
    x_104 = x_114;
  }
  let x_115 : f32 = x_104;
  u_xlat3.x = x_115;
  let x_117 : bool = u_xlatb15;
  if (x_117) {
    let x_123 : f32 = u_xlat2.y;
    x_118 = x_123;
  } else {
    let x_126 : f32 = x_44.unity_MatrixV[1i].z;
    x_118 = x_126;
  }
  let x_127 : f32 = x_118;
  u_xlat3.y = x_127;
  let x_129 : bool = u_xlatb15;
  if (x_129) {
    let x_134 : f32 = u_xlat2.z;
    x_130 = x_134;
  } else {
    let x_138 : f32 = x_44.unity_MatrixV[2i].z;
    x_130 = x_138;
  }
  let x_139 : f32 = x_130;
  u_xlat3.z = x_139;
  let x_143 : vec3<f32> = vs_TEXCOORD3;
  let x_144 : vec3<f32> = vs_TEXCOORD3;
  u_xlat15.x = dot(x_143, x_144);
  let x_148 : f32 = u_xlat15.x;
  u_xlat15.x = inverseSqrt(x_148);
  let x_151 : vec3<f32> = u_xlat15;
  let x_153 : vec3<f32> = vs_TEXCOORD3;
  let x_154 : vec3<f32> = (vec3<f32>(x_151.x, x_151.x, x_151.x) * x_153);
  let x_155 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_154.x, x_154.y, x_154.z, x_155.w);
  u_xlat2.w = 1.0f;
  let x_166 : vec4<f32> = x_162.unity_SHAr;
  let x_167 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_166, x_167);
  let x_172 : vec4<f32> = x_162.unity_SHAg;
  let x_173 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_172, x_173);
  let x_178 : vec4<f32> = x_162.unity_SHAb;
  let x_179 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_178, x_179);
  let x_183 : vec4<f32> = u_xlat2;
  let x_185 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_183.y, x_183.z, x_183.z, x_183.x) * vec4<f32>(x_185.x, x_185.y, x_185.z, x_185.z));
  let x_191 : vec4<f32> = x_162.unity_SHBr;
  let x_192 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_191, x_192);
  let x_197 : vec4<f32> = x_162.unity_SHBg;
  let x_198 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_197, x_198);
  let x_203 : vec4<f32> = x_162.unity_SHBb;
  let x_204 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_203, x_204);
  let x_208 : f32 = u_xlat2.y;
  let x_210 : f32 = u_xlat2.y;
  u_xlat15.x = (x_208 * x_210);
  let x_214 : f32 = u_xlat2.x;
  let x_216 : f32 = u_xlat2.x;
  let x_219 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_214 * x_216) + -(x_219));
  let x_225 : vec4<f32> = x_162.unity_SHC;
  let x_227 : vec3<f32> = u_xlat15;
  let x_230 : vec4<f32> = u_xlat6;
  u_xlat15 = ((vec3<f32>(x_225.x, x_225.y, x_225.z) * vec3<f32>(x_227.x, x_227.x, x_227.x)) + vec3<f32>(x_230.x, x_230.y, x_230.z));
  let x_233 : vec3<f32> = u_xlat15;
  let x_234 : vec3<f32> = u_xlat4;
  u_xlat15 = (x_233 + x_234);
  let x_236 : vec3<f32> = u_xlat15;
  u_xlat15 = max(x_236, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_241 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_242 : vec2<f32> = vec2<f32>(x_241.x, x_241.y);
  let x_246 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_242.x, x_242.y));
  let x_247 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_246.x, x_246.y, x_247.z);
  let x_249 : vec3<f32> = u_xlat4;
  let x_251 : vec4<f32> = hlslcc_FragCoord;
  let x_253 : vec2<f32> = (vec2<f32>(x_249.x, x_249.y) * vec2<f32>(x_251.x, x_251.y));
  let x_254 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_253.x, x_253.y, x_254.z);
  let x_258 : f32 = u_xlat4.y;
  let x_261 : f32 = x_44.x_ScaleBiasRt.x;
  let x_264 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat44 = ((x_258 * x_261) + x_264);
  let x_266 : f32 = u_xlat44;
  u_xlat4.z = (-(x_266) + 1.0f);
  let x_271 : f32 = u_xlat1.x;
  u_xlat44 = ((-(x_271) * 0.959999979f) + 0.959999979f);
  let x_277 : f32 = u_xlat44;
  u_xlat45 = (-(x_277) + 1.0f);
  let x_280 : vec4<f32> = u_xlat0;
  let x_282 : f32 = u_xlat44;
  let x_284 : vec3<f32> = (vec3<f32>(x_280.x, x_280.y, x_280.z) * vec3<f32>(x_282, x_282, x_282));
  let x_285 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_284.x, x_284.y, x_284.z, x_285.w);
  let x_287 : vec4<f32> = u_xlat0;
  let x_291 : vec3<f32> = (vec3<f32>(x_287.x, x_287.y, x_287.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_292 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_291.x, x_291.y, x_291.z, x_292.w);
  let x_294 : vec3<f32> = u_xlat1;
  let x_296 : vec4<f32> = u_xlat0;
  let x_301 : vec3<f32> = ((vec3<f32>(x_294.x, x_294.x, x_294.x) * vec3<f32>(x_296.x, x_296.y, x_296.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_302 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
  let x_305 : f32 = u_xlat0.w;
  u_xlat1.x = (-(x_305) + 1.0f);
  let x_310 : f32 = u_xlat1.x;
  let x_312 : f32 = u_xlat1.x;
  u_xlat44 = (x_310 * x_312);
  let x_314 : f32 = u_xlat44;
  u_xlat44 = max(x_314, 0.0078125f);
  let x_318 : f32 = u_xlat44;
  let x_319 : f32 = u_xlat44;
  u_xlat18 = (x_318 * x_319);
  let x_323 : f32 = u_xlat0.w;
  let x_324 : f32 = u_xlat45;
  u_xlat42 = (x_323 + x_324);
  let x_326 : f32 = u_xlat42;
  u_xlat42 = clamp(x_326, 0.0f, 1.0f);
  let x_328 : f32 = u_xlat44;
  u_xlat45 = ((x_328 * 4.0f) + 2.0f);
  let x_338 : vec3<f32> = u_xlat4;
  let x_341 : f32 = x_44.x_GlobalMipBias.x;
  let x_342 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_338.x, x_338.z), x_341);
  u_xlat4.x = x_342.x;
  let x_347 : f32 = u_xlat4.x;
  u_xlat32 = (x_347 + -1.0f);
  let x_352 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_353 : f32 = u_xlat32;
  u_xlat32 = ((x_352 * x_353) + 1.0f);
  let x_357 : f32 = u_xlat4.x;
  u_xlat4.x = min(x_357, 1.0f);
  let x_362 : vec4<f32> = vs_TEXCOORD8;
  let x_363 : vec2<f32> = vec2<f32>(x_362.x, x_362.y);
  let x_365 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_363.x, x_363.y, x_365);
  let x_378 : vec3<f32> = txVec0;
  let x_380 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_378.xy, x_378.z);
  u_xlat46 = x_380;
  let x_388 : f32 = x_386.x_MainLightShadowParams.x;
  u_xlat47 = (-(x_388) + 1.0f);
  let x_391 : f32 = u_xlat46;
  let x_393 : f32 = x_386.x_MainLightShadowParams.x;
  let x_395 : f32 = u_xlat47;
  u_xlat46 = ((x_391 * x_393) + x_395);
  let x_399 : f32 = vs_TEXCOORD8.z;
  u_xlatb47 = (0.0f >= x_399);
  let x_403 : f32 = vs_TEXCOORD8.z;
  u_xlatb6 = (x_403 >= 1.0f);
  let x_405 : bool = u_xlatb47;
  let x_406 : bool = u_xlatb6;
  u_xlatb47 = (x_405 | x_406);
  let x_408 : bool = u_xlatb47;
  let x_409 : f32 = u_xlat46;
  u_xlat46 = select(x_409, 1.0f, x_408);
  let x_411 : vec3<f32> = vs_TEXCOORD7;
  let x_413 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_415 : vec3<f32> = (x_411 + -(x_413));
  let x_416 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_415.x, x_415.y, x_415.z, x_416.w);
  let x_418 : vec4<f32> = u_xlat6;
  let x_420 : vec4<f32> = u_xlat6;
  u_xlat47 = dot(vec3<f32>(x_418.x, x_418.y, x_418.z), vec3<f32>(x_420.x, x_420.y, x_420.z));
  let x_423 : f32 = u_xlat47;
  let x_425 : f32 = x_386.x_MainLightShadowParams.z;
  let x_428 : f32 = x_386.x_MainLightShadowParams.w;
  u_xlat47 = ((x_423 * x_425) + x_428);
  let x_430 : f32 = u_xlat47;
  u_xlat47 = clamp(x_430, 0.0f, 1.0f);
  let x_432 : f32 = u_xlat46;
  u_xlat6.x = (-(x_432) + 1.0f);
  let x_436 : f32 = u_xlat47;
  let x_438 : f32 = u_xlat6.x;
  let x_440 : f32 = u_xlat46;
  u_xlat46 = ((x_436 * x_438) + x_440);
  let x_448 : f32 = x_446.x_MainLightCookieTextureFormat;
  u_xlatb47 = !((x_448 == -1.0f));
  let x_450 : bool = u_xlatb47;
  if (x_450) {
    let x_453 : vec3<f32> = vs_TEXCOORD7;
    let x_456 : vec4<f32> = x_446.x_MainLightWorldToLight[1i];
    let x_458 : vec2<f32> = (vec2<f32>(x_453.y, x_453.y) * vec2<f32>(x_456.x, x_456.y));
    let x_459 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_458.x, x_458.y, x_459.z, x_459.w);
    let x_462 : vec4<f32> = x_446.x_MainLightWorldToLight[0i];
    let x_464 : vec3<f32> = vs_TEXCOORD7;
    let x_467 : vec4<f32> = u_xlat6;
    let x_469 : vec2<f32> = ((vec2<f32>(x_462.x, x_462.y) * vec2<f32>(x_464.x, x_464.x)) + vec2<f32>(x_467.x, x_467.y));
    let x_470 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_469.x, x_469.y, x_470.z, x_470.w);
    let x_473 : vec4<f32> = x_446.x_MainLightWorldToLight[2i];
    let x_475 : vec3<f32> = vs_TEXCOORD7;
    let x_478 : vec4<f32> = u_xlat6;
    let x_480 : vec2<f32> = ((vec2<f32>(x_473.x, x_473.y) * vec2<f32>(x_475.z, x_475.z)) + vec2<f32>(x_478.x, x_478.y));
    let x_481 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_480.x, x_480.y, x_481.z, x_481.w);
    let x_483 : vec4<f32> = u_xlat6;
    let x_487 : vec4<f32> = x_446.x_MainLightWorldToLight[3i];
    let x_489 : vec2<f32> = (vec2<f32>(x_483.x, x_483.y) + vec2<f32>(x_487.x, x_487.y));
    let x_490 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_489.x, x_489.y, x_490.z, x_490.w);
    let x_492 : vec4<f32> = u_xlat6;
    let x_497 : vec2<f32> = ((vec2<f32>(x_492.x, x_492.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_498 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_497.x, x_497.y, x_498.z, x_498.w);
    let x_505 : vec4<f32> = u_xlat6;
    let x_508 : f32 = x_44.x_GlobalMipBias.x;
    let x_509 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_505.x, x_505.y), x_508);
    u_xlat6 = x_509;
    let x_514 : f32 = x_446.x_MainLightCookieTextureFormat;
    let x_516 : f32 = x_446.x_MainLightCookieTextureFormat;
    let x_518 : f32 = x_446.x_MainLightCookieTextureFormat;
    let x_520 : f32 = x_446.x_MainLightCookieTextureFormat;
    let x_521 : vec4<f32> = vec4<f32>(x_514, x_516, x_518, x_520);
    let x_529 : vec4<bool> = (vec4<f32>(x_521.x, x_521.y, x_521.z, x_521.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_529.x, x_529.y);
    let x_532 : bool = u_xlatb7.y;
    if (x_532) {
      let x_537 : f32 = u_xlat6.w;
      x_533 = x_537;
    } else {
      let x_540 : f32 = u_xlat6.x;
      x_533 = x_540;
    }
    let x_541 : f32 = x_533;
    u_xlat47 = x_541;
    let x_543 : bool = u_xlatb7.x;
    if (x_543) {
      let x_547 : vec4<f32> = u_xlat6;
      x_544 = vec3<f32>(x_547.x, x_547.y, x_547.z);
    } else {
      let x_550 : f32 = u_xlat47;
      x_544 = vec3<f32>(x_550, x_550, x_550);
    }
    let x_552 : vec3<f32> = x_544;
    let x_553 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_552.x, x_552.y, x_552.z, x_553.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_559 : vec4<f32> = u_xlat6;
  let x_562 : vec4<f32> = x_44.x_MainLightColor;
  let x_564 : vec3<f32> = (vec3<f32>(x_559.x, x_559.y, x_559.z) * vec3<f32>(x_562.x, x_562.y, x_562.z));
  let x_565 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_564.x, x_564.y, x_564.z, x_565.w);
  let x_567 : f32 = u_xlat32;
  let x_569 : vec4<f32> = u_xlat6;
  let x_571 : vec3<f32> = (vec3<f32>(x_567, x_567, x_567) * vec3<f32>(x_569.x, x_569.y, x_569.z));
  let x_572 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_571.x, x_571.y, x_571.z, x_572.w);
  let x_574 : vec3<f32> = u_xlat3;
  let x_576 : vec4<f32> = u_xlat2;
  u_xlat47 = dot(-(x_574), vec3<f32>(x_576.x, x_576.y, x_576.z));
  let x_579 : f32 = u_xlat47;
  let x_580 : f32 = u_xlat47;
  u_xlat47 = (x_579 + x_580);
  let x_583 : vec4<f32> = u_xlat2;
  let x_585 : f32 = u_xlat47;
  let x_589 : vec3<f32> = u_xlat3;
  let x_591 : vec3<f32> = ((vec3<f32>(x_583.x, x_583.y, x_583.z) * -(vec3<f32>(x_585, x_585, x_585))) + -(x_589));
  let x_592 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_591.x, x_591.y, x_591.z, x_592.w);
  let x_594 : vec4<f32> = u_xlat2;
  let x_596 : vec3<f32> = u_xlat3;
  u_xlat47 = dot(vec3<f32>(x_594.x, x_594.y, x_594.z), x_596);
  let x_598 : f32 = u_xlat47;
  u_xlat47 = clamp(x_598, 0.0f, 1.0f);
  let x_600 : f32 = u_xlat47;
  u_xlat47 = (-(x_600) + 1.0f);
  let x_603 : f32 = u_xlat47;
  let x_604 : f32 = u_xlat47;
  u_xlat47 = (x_603 * x_604);
  let x_606 : f32 = u_xlat47;
  let x_607 : f32 = u_xlat47;
  u_xlat47 = (x_606 * x_607);
  let x_611 : f32 = u_xlat1.x;
  u_xlat48 = ((-(x_611) * 0.699999988f) + 1.700000048f);
  let x_618 : f32 = u_xlat1.x;
  let x_619 : f32 = u_xlat48;
  u_xlat1.x = (x_618 * x_619);
  let x_623 : f32 = u_xlat1.x;
  u_xlat1.x = (x_623 * 6.0f);
  let x_635 : vec4<f32> = u_xlat7;
  let x_638 : f32 = u_xlat1.x;
  let x_639 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_635.x, x_635.y, x_635.z), x_638);
  u_xlat7 = x_639;
  let x_641 : f32 = u_xlat7.w;
  u_xlat1.x = (x_641 + -1.0f);
  let x_645 : f32 = x_162.unity_SpecCube0_HDR.w;
  let x_647 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_645 * x_647) + 1.0f);
  let x_652 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_652, 0.0f);
  let x_656 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_656);
  let x_660 : f32 = u_xlat1.x;
  let x_662 : f32 = x_162.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_660 * x_662);
  let x_666 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_666);
  let x_670 : f32 = u_xlat1.x;
  let x_672 : f32 = x_162.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_670 * x_672);
  let x_675 : vec4<f32> = u_xlat7;
  let x_677 : vec3<f32> = u_xlat1;
  let x_679 : vec3<f32> = (vec3<f32>(x_675.x, x_675.y, x_675.z) * vec3<f32>(x_677.x, x_677.x, x_677.x));
  let x_680 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_679.x, x_679.y, x_679.z, x_680.w);
  let x_684 : f32 = u_xlat44;
  let x_686 : f32 = u_xlat44;
  u_xlat8 = ((vec2<f32>(x_684, x_684) * vec2<f32>(x_686, x_686)) + vec2<f32>(-1.0f, 1.0f));
  let x_692 : f32 = u_xlat8.y;
  u_xlat1.x = (1.0f / x_692);
  let x_696 : vec4<f32> = u_xlat0;
  let x_699 : f32 = u_xlat42;
  u_xlat22 = (-(vec3<f32>(x_696.x, x_696.y, x_696.z)) + vec3<f32>(x_699, x_699, x_699));
  let x_702 : f32 = u_xlat47;
  let x_704 : vec3<f32> = u_xlat22;
  let x_706 : vec4<f32> = u_xlat0;
  u_xlat22 = ((vec3<f32>(x_702, x_702, x_702) * x_704) + vec3<f32>(x_706.x, x_706.y, x_706.z));
  let x_709 : vec3<f32> = u_xlat1;
  let x_711 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_709.x, x_709.x, x_709.x) * x_711);
  let x_713 : vec4<f32> = u_xlat7;
  let x_715 : vec3<f32> = u_xlat22;
  let x_716 : vec3<f32> = (vec3<f32>(x_713.x, x_713.y, x_713.z) * x_715);
  let x_717 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_716.x, x_716.y, x_716.z, x_717.w);
  let x_719 : vec3<f32> = u_xlat15;
  let x_720 : vec4<f32> = u_xlat5;
  let x_723 : vec4<f32> = u_xlat7;
  u_xlat1 = ((x_719 * vec3<f32>(x_720.x, x_720.y, x_720.z)) + vec3<f32>(x_723.x, x_723.y, x_723.z));
  let x_726 : f32 = u_xlat46;
  let x_729 : f32 = x_162.unity_LightData.z;
  u_xlat42 = (x_726 * x_729);
  let x_732 : vec4<f32> = u_xlat2;
  let x_735 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat43 = dot(vec3<f32>(x_732.x, x_732.y, x_732.z), vec3<f32>(x_735.x, x_735.y, x_735.z));
  let x_738 : f32 = u_xlat43;
  u_xlat43 = clamp(x_738, 0.0f, 1.0f);
  let x_740 : f32 = u_xlat42;
  let x_741 : f32 = u_xlat43;
  u_xlat42 = (x_740 * x_741);
  let x_743 : f32 = u_xlat42;
  let x_745 : vec4<f32> = u_xlat6;
  let x_747 : vec3<f32> = (vec3<f32>(x_743, x_743, x_743) * vec3<f32>(x_745.x, x_745.y, x_745.z));
  let x_748 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_747.x, x_747.y, x_747.z, x_748.w);
  let x_750 : vec3<f32> = u_xlat3;
  let x_752 : vec4<f32> = x_44.x_MainLightPosition;
  let x_754 : vec3<f32> = (x_750 + vec3<f32>(x_752.x, x_752.y, x_752.z));
  let x_755 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_754.x, x_754.y, x_754.z, x_755.w);
  let x_757 : vec4<f32> = u_xlat7;
  let x_759 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_757.x, x_757.y, x_757.z), vec3<f32>(x_759.x, x_759.y, x_759.z));
  let x_762 : f32 = u_xlat42;
  u_xlat42 = max(x_762, 1.17549435e-37f);
  let x_765 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_765);
  let x_767 : f32 = u_xlat42;
  let x_769 : vec4<f32> = u_xlat7;
  let x_771 : vec3<f32> = (vec3<f32>(x_767, x_767, x_767) * vec3<f32>(x_769.x, x_769.y, x_769.z));
  let x_772 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_771.x, x_771.y, x_771.z, x_772.w);
  let x_774 : vec4<f32> = u_xlat2;
  let x_776 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_774.x, x_774.y, x_774.z), vec3<f32>(x_776.x, x_776.y, x_776.z));
  let x_779 : f32 = u_xlat42;
  u_xlat42 = clamp(x_779, 0.0f, 1.0f);
  let x_782 : vec4<f32> = x_44.x_MainLightPosition;
  let x_784 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec3<f32>(x_782.x, x_782.y, x_782.z), vec3<f32>(x_784.x, x_784.y, x_784.z));
  let x_787 : f32 = u_xlat43;
  u_xlat43 = clamp(x_787, 0.0f, 1.0f);
  let x_789 : f32 = u_xlat42;
  let x_790 : f32 = u_xlat42;
  u_xlat42 = (x_789 * x_790);
  let x_792 : f32 = u_xlat42;
  let x_794 : f32 = u_xlat8.x;
  u_xlat42 = ((x_792 * x_794) + 1.000010014f);
  let x_798 : f32 = u_xlat43;
  let x_799 : f32 = u_xlat43;
  u_xlat43 = (x_798 * x_799);
  let x_801 : f32 = u_xlat42;
  let x_802 : f32 = u_xlat42;
  u_xlat42 = (x_801 * x_802);
  let x_804 : f32 = u_xlat43;
  u_xlat43 = max(x_804, 0.100000001f);
  let x_807 : f32 = u_xlat42;
  let x_808 : f32 = u_xlat43;
  u_xlat42 = (x_807 * x_808);
  let x_810 : f32 = u_xlat45;
  let x_811 : f32 = u_xlat42;
  u_xlat42 = (x_810 * x_811);
  let x_813 : f32 = u_xlat18;
  let x_814 : f32 = u_xlat42;
  u_xlat42 = (x_813 / x_814);
  let x_816 : vec4<f32> = u_xlat0;
  let x_818 : f32 = u_xlat42;
  let x_821 : vec4<f32> = u_xlat5;
  let x_823 : vec3<f32> = ((vec3<f32>(x_816.x, x_816.y, x_816.z) * vec3<f32>(x_818, x_818, x_818)) + vec3<f32>(x_821.x, x_821.y, x_821.z));
  let x_824 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_823.x, x_823.y, x_823.z, x_824.w);
  let x_826 : vec4<f32> = u_xlat6;
  let x_828 : vec4<f32> = u_xlat7;
  let x_830 : vec3<f32> = (vec3<f32>(x_826.x, x_826.y, x_826.z) * vec3<f32>(x_828.x, x_828.y, x_828.z));
  let x_831 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_830.x, x_830.y, x_830.z, x_831.w);
  let x_834 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_836 : f32 = x_162.unity_LightData.y;
  u_xlat42 = min(x_834, x_836);
  let x_840 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_840));
  let x_844 : f32 = x_446.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_846 : f32 = x_446.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_848 : f32 = x_446.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_850 : f32 = x_446.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_851 : vec4<f32> = vec4<f32>(x_844, x_846, x_848, x_850);
  let x_857 : vec4<bool> = (vec4<f32>(x_851.x, x_851.y, x_851.z, x_851.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_857.x, x_857.y);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_868 : u32 = u_xlatu_loop_1;
    let x_869 : u32 = u_xlatu42;
    if ((x_868 < x_869)) {
    } else {
      break;
    }
    let x_872 : u32 = u_xlatu_loop_1;
    u_xlatu44 = (x_872 >> 2u);
    let x_876 : u32 = u_xlatu_loop_1;
    u_xlati46 = bitcast<i32>((x_876 & 3u));
    let x_879 : u32 = u_xlatu44;
    let x_882 : vec4<f32> = x_162.unity_LightIndices[bitcast<i32>(x_879)];
    let x_892 : i32 = u_xlati46;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_897 : vec4<u32> = indexable[x_892];
    u_xlat44 = dot(x_882, bitcast<vec4<f32>>(x_897));
    let x_900 : f32 = u_xlat44;
    u_xlatu44 = bitcast<u32>(i32(x_900));
    let x_904 : vec3<f32> = vs_TEXCOORD7;
    let x_916 : u32 = u_xlatu44;
    let x_919 : vec4<f32> = x_915.x_AdditionalLightsPosition[bitcast<i32>(x_916)];
    let x_922 : u32 = u_xlatu44;
    let x_925 : vec4<f32> = x_915.x_AdditionalLightsPosition[bitcast<i32>(x_922)];
    u_xlat9 = ((-(x_904) * vec3<f32>(x_919.w, x_919.w, x_919.w)) + vec3<f32>(x_925.x, x_925.y, x_925.z));
    let x_928 : vec3<f32> = u_xlat9;
    let x_929 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(x_928, x_929);
    let x_931 : f32 = u_xlat46;
    u_xlat46 = max(x_931, 6.10351562e-05f);
    let x_934 : f32 = u_xlat46;
    u_xlat47 = inverseSqrt(x_934);
    let x_937 : f32 = u_xlat47;
    let x_939 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_937, x_937, x_937) * x_939);
    let x_941 : f32 = u_xlat46;
    u_xlat48 = (1.0f / x_941);
    let x_943 : f32 = u_xlat46;
    let x_944 : u32 = u_xlatu44;
    let x_947 : f32 = x_915.x_AdditionalLightsAttenuation[bitcast<i32>(x_944)].x;
    u_xlat46 = (x_943 * x_947);
    let x_949 : f32 = u_xlat46;
    let x_951 : f32 = u_xlat46;
    u_xlat46 = ((-(x_949) * x_951) + 1.0f);
    let x_954 : f32 = u_xlat46;
    u_xlat46 = max(x_954, 0.0f);
    let x_956 : f32 = u_xlat46;
    let x_957 : f32 = u_xlat46;
    u_xlat46 = (x_956 * x_957);
    let x_959 : f32 = u_xlat46;
    let x_960 : f32 = u_xlat48;
    u_xlat46 = (x_959 * x_960);
    let x_962 : u32 = u_xlatu44;
    let x_965 : vec4<f32> = x_915.x_AdditionalLightsSpotDir[bitcast<i32>(x_962)];
    let x_967 : vec3<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_965.x, x_965.y, x_965.z), x_967);
    let x_969 : f32 = u_xlat48;
    let x_970 : u32 = u_xlatu44;
    let x_973 : f32 = x_915.x_AdditionalLightsAttenuation[bitcast<i32>(x_970)].z;
    let x_975 : u32 = u_xlatu44;
    let x_978 : f32 = x_915.x_AdditionalLightsAttenuation[bitcast<i32>(x_975)].w;
    u_xlat48 = ((x_969 * x_973) + x_978);
    let x_980 : f32 = u_xlat48;
    u_xlat48 = clamp(x_980, 0.0f, 1.0f);
    let x_982 : f32 = u_xlat48;
    let x_983 : f32 = u_xlat48;
    u_xlat48 = (x_982 * x_983);
    let x_985 : f32 = u_xlat46;
    let x_986 : f32 = u_xlat48;
    u_xlat46 = (x_985 * x_986);
    let x_989 : u32 = u_xlatu44;
    u_xlatu48 = (x_989 >> 5u);
    let x_992 : u32 = u_xlatu44;
    u_xlati35 = (1i << bitcast<u32>((bitcast<i32>(x_992) & 31i)));
    let x_998 : i32 = u_xlati35;
    let x_1000 : u32 = u_xlatu48;
    let x_1003 : f32 = x_446.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1000)].el;
    u_xlati48 = bitcast<i32>((bitcast<u32>(x_998) & bitcast<u32>(x_1003)));
    let x_1007 : i32 = u_xlati48;
    if ((x_1007 != 0i)) {
      let x_1017 : u32 = u_xlatu44;
      let x_1020 : f32 = x_1016.x_AdditionalLightsLightTypes[bitcast<i32>(x_1017)].el;
      u_xlati48 = i32(x_1020);
      let x_1022 : i32 = u_xlati48;
      u_xlati35 = select(1i, 0i, (x_1022 != 0i));
      let x_1026 : u32 = u_xlatu44;
      u_xlati49 = (bitcast<i32>(x_1026) << bitcast<u32>(2i));
      let x_1029 : i32 = u_xlati35;
      if ((x_1029 != 0i)) {
        let x_1034 : vec3<f32> = vs_TEXCOORD7;
        let x_1036 : i32 = u_xlati49;
        let x_1039 : i32 = u_xlati49;
        let x_1043 : vec4<f32> = x_1016.x_AdditionalLightsWorldToLights[((x_1036 + 1i) / 4i)][((x_1039 + 1i) % 4i)];
        let x_1045 : vec3<f32> = (vec3<f32>(x_1034.y, x_1034.y, x_1034.y) * vec3<f32>(x_1043.x, x_1043.y, x_1043.w));
        let x_1046 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1045.x, x_1045.y, x_1045.z, x_1046.w);
        let x_1048 : i32 = u_xlati49;
        let x_1050 : i32 = u_xlati49;
        let x_1053 : vec4<f32> = x_1016.x_AdditionalLightsWorldToLights[(x_1048 / 4i)][(x_1050 % 4i)];
        let x_1055 : vec3<f32> = vs_TEXCOORD7;
        let x_1058 : vec4<f32> = u_xlat11;
        let x_1060 : vec3<f32> = ((vec3<f32>(x_1053.x, x_1053.y, x_1053.w) * vec3<f32>(x_1055.x, x_1055.x, x_1055.x)) + vec3<f32>(x_1058.x, x_1058.y, x_1058.z));
        let x_1061 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1060.x, x_1060.y, x_1060.z, x_1061.w);
        let x_1063 : i32 = u_xlati49;
        let x_1066 : i32 = u_xlati49;
        let x_1070 : vec4<f32> = x_1016.x_AdditionalLightsWorldToLights[((x_1063 + 2i) / 4i)][((x_1066 + 2i) % 4i)];
        let x_1072 : vec3<f32> = vs_TEXCOORD7;
        let x_1075 : vec4<f32> = u_xlat11;
        let x_1077 : vec3<f32> = ((vec3<f32>(x_1070.x, x_1070.y, x_1070.w) * vec3<f32>(x_1072.z, x_1072.z, x_1072.z)) + vec3<f32>(x_1075.x, x_1075.y, x_1075.z));
        let x_1078 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1077.x, x_1077.y, x_1077.z, x_1078.w);
        let x_1080 : vec4<f32> = u_xlat11;
        let x_1082 : i32 = u_xlati49;
        let x_1085 : i32 = u_xlati49;
        let x_1089 : vec4<f32> = x_1016.x_AdditionalLightsWorldToLights[((x_1082 + 3i) / 4i)][((x_1085 + 3i) % 4i)];
        let x_1091 : vec3<f32> = (vec3<f32>(x_1080.x, x_1080.y, x_1080.z) + vec3<f32>(x_1089.x, x_1089.y, x_1089.w));
        let x_1092 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1091.x, x_1091.y, x_1091.z, x_1092.w);
        let x_1094 : vec4<f32> = u_xlat11;
        let x_1096 : vec4<f32> = u_xlat11;
        let x_1098 : vec2<f32> = (vec2<f32>(x_1094.x, x_1094.y) / vec2<f32>(x_1096.z, x_1096.z));
        let x_1099 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1098.x, x_1098.y, x_1099.z, x_1099.w);
        let x_1101 : vec4<f32> = u_xlat11;
        let x_1104 : vec2<f32> = ((vec2<f32>(x_1101.x, x_1101.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1105 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1104.x, x_1104.y, x_1105.z, x_1105.w);
        let x_1107 : vec4<f32> = u_xlat11;
        let x_1111 : vec2<f32> = clamp(vec2<f32>(x_1107.x, x_1107.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1112 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1111.x, x_1111.y, x_1112.z, x_1112.w);
        let x_1114 : u32 = u_xlatu44;
        let x_1117 : vec4<f32> = x_1016.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1114)];
        let x_1119 : vec4<f32> = u_xlat11;
        let x_1122 : u32 = u_xlatu44;
        let x_1125 : vec4<f32> = x_1016.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1122)];
        let x_1127 : vec2<f32> = ((vec2<f32>(x_1117.x, x_1117.y) * vec2<f32>(x_1119.x, x_1119.y)) + vec2<f32>(x_1125.z, x_1125.w));
        let x_1128 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1127.x, x_1127.y, x_1128.z, x_1128.w);
      } else {
        let x_1132 : i32 = u_xlati48;
        u_xlatb48 = (x_1132 == 1i);
        let x_1134 : bool = u_xlatb48;
        u_xlati48 = select(0i, 1i, x_1134);
        let x_1136 : i32 = u_xlati48;
        if ((x_1136 != 0i)) {
          let x_1141 : vec3<f32> = vs_TEXCOORD7;
          let x_1143 : i32 = u_xlati49;
          let x_1146 : i32 = u_xlati49;
          let x_1150 : vec4<f32> = x_1016.x_AdditionalLightsWorldToLights[((x_1143 + 1i) / 4i)][((x_1146 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1141.y, x_1141.y) * vec2<f32>(x_1150.x, x_1150.y));
          let x_1153 : i32 = u_xlati49;
          let x_1155 : i32 = u_xlati49;
          let x_1158 : vec4<f32> = x_1016.x_AdditionalLightsWorldToLights[(x_1153 / 4i)][(x_1155 % 4i)];
          let x_1160 : vec3<f32> = vs_TEXCOORD7;
          let x_1163 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1158.x, x_1158.y) * vec2<f32>(x_1160.x, x_1160.x)) + x_1163);
          let x_1165 : i32 = u_xlati49;
          let x_1168 : i32 = u_xlati49;
          let x_1172 : vec4<f32> = x_1016.x_AdditionalLightsWorldToLights[((x_1165 + 2i) / 4i)][((x_1168 + 2i) % 4i)];
          let x_1174 : vec3<f32> = vs_TEXCOORD7;
          let x_1177 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1172.x, x_1172.y) * vec2<f32>(x_1174.z, x_1174.z)) + x_1177);
          let x_1179 : vec2<f32> = u_xlat39;
          let x_1180 : i32 = u_xlati49;
          let x_1183 : i32 = u_xlati49;
          let x_1187 : vec4<f32> = x_1016.x_AdditionalLightsWorldToLights[((x_1180 + 3i) / 4i)][((x_1183 + 3i) % 4i)];
          u_xlat39 = (x_1179 + vec2<f32>(x_1187.x, x_1187.y));
          let x_1190 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1190 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1193 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1193);
          let x_1195 : u32 = u_xlatu44;
          let x_1198 : vec4<f32> = x_1016.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1195)];
          let x_1200 : vec2<f32> = u_xlat39;
          let x_1202 : u32 = u_xlatu44;
          let x_1205 : vec4<f32> = x_1016.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1202)];
          let x_1207 : vec2<f32> = ((vec2<f32>(x_1198.x, x_1198.y) * x_1200) + vec2<f32>(x_1205.z, x_1205.w));
          let x_1208 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1207.x, x_1207.y, x_1208.z, x_1208.w);
        } else {
          let x_1212 : vec3<f32> = vs_TEXCOORD7;
          let x_1214 : i32 = u_xlati49;
          let x_1217 : i32 = u_xlati49;
          let x_1221 : vec4<f32> = x_1016.x_AdditionalLightsWorldToLights[((x_1214 + 1i) / 4i)][((x_1217 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1212.y, x_1212.y, x_1212.y, x_1212.y) * x_1221);
          let x_1223 : i32 = u_xlati49;
          let x_1225 : i32 = u_xlati49;
          let x_1228 : vec4<f32> = x_1016.x_AdditionalLightsWorldToLights[(x_1223 / 4i)][(x_1225 % 4i)];
          let x_1229 : vec3<f32> = vs_TEXCOORD7;
          let x_1232 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1228 * vec4<f32>(x_1229.x, x_1229.x, x_1229.x, x_1229.x)) + x_1232);
          let x_1234 : i32 = u_xlati49;
          let x_1237 : i32 = u_xlati49;
          let x_1241 : vec4<f32> = x_1016.x_AdditionalLightsWorldToLights[((x_1234 + 2i) / 4i)][((x_1237 + 2i) % 4i)];
          let x_1242 : vec3<f32> = vs_TEXCOORD7;
          let x_1245 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1241 * vec4<f32>(x_1242.z, x_1242.z, x_1242.z, x_1242.z)) + x_1245);
          let x_1247 : vec4<f32> = u_xlat12;
          let x_1248 : i32 = u_xlati49;
          let x_1251 : i32 = u_xlati49;
          let x_1255 : vec4<f32> = x_1016.x_AdditionalLightsWorldToLights[((x_1248 + 3i) / 4i)][((x_1251 + 3i) % 4i)];
          u_xlat12 = (x_1247 + x_1255);
          let x_1257 : vec4<f32> = u_xlat12;
          let x_1259 : vec4<f32> = u_xlat12;
          let x_1261 : vec3<f32> = (vec3<f32>(x_1257.x, x_1257.y, x_1257.z) / vec3<f32>(x_1259.w, x_1259.w, x_1259.w));
          let x_1262 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1261.x, x_1261.y, x_1261.z, x_1262.w);
          let x_1264 : vec4<f32> = u_xlat12;
          let x_1266 : vec4<f32> = u_xlat12;
          u_xlat48 = dot(vec3<f32>(x_1264.x, x_1264.y, x_1264.z), vec3<f32>(x_1266.x, x_1266.y, x_1266.z));
          let x_1269 : f32 = u_xlat48;
          u_xlat48 = inverseSqrt(x_1269);
          let x_1271 : f32 = u_xlat48;
          let x_1273 : vec4<f32> = u_xlat12;
          let x_1275 : vec3<f32> = (vec3<f32>(x_1271, x_1271, x_1271) * vec3<f32>(x_1273.x, x_1273.y, x_1273.z));
          let x_1276 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1275.x, x_1275.y, x_1275.z, x_1276.w);
          let x_1278 : vec4<f32> = u_xlat12;
          u_xlat48 = dot(abs(vec3<f32>(x_1278.x, x_1278.y, x_1278.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1283 : f32 = u_xlat48;
          u_xlat48 = max(x_1283, 0.000001f);
          let x_1286 : f32 = u_xlat48;
          u_xlat48 = (1.0f / x_1286);
          let x_1289 : f32 = u_xlat48;
          let x_1291 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1289, x_1289, x_1289) * vec3<f32>(x_1291.z, x_1291.x, x_1291.y));
          let x_1295 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1295);
          let x_1299 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1299, 0.0f, 1.0f);
          let x_1303 : vec3<f32> = u_xlat13;
          let x_1306 : vec4<bool> = (vec4<f32>(x_1303.y, x_1303.z, x_1303.y, x_1303.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb35 = vec2<bool>(x_1306.x, x_1306.y);
          let x_1310 : bool = u_xlatb35.x;
          if (x_1310) {
            let x_1315 : f32 = u_xlat13.x;
            x_1311 = x_1315;
          } else {
            let x_1318 : f32 = u_xlat13.x;
            x_1311 = -(x_1318);
          }
          let x_1320 : f32 = x_1311;
          u_xlat35.x = x_1320;
          let x_1323 : bool = u_xlatb35.y;
          if (x_1323) {
            let x_1328 : f32 = u_xlat13.x;
            x_1324 = x_1328;
          } else {
            let x_1331 : f32 = u_xlat13.x;
            x_1324 = -(x_1331);
          }
          let x_1333 : f32 = x_1324;
          u_xlat35.y = x_1333;
          let x_1335 : vec4<f32> = u_xlat12;
          let x_1337 : f32 = u_xlat48;
          let x_1340 : vec2<f32> = u_xlat35;
          u_xlat35 = ((vec2<f32>(x_1335.x, x_1335.y) * vec2<f32>(x_1337, x_1337)) + x_1340);
          let x_1342 : vec2<f32> = u_xlat35;
          u_xlat35 = ((x_1342 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1345 : vec2<f32> = u_xlat35;
          u_xlat35 = clamp(x_1345, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1349 : u32 = u_xlatu44;
          let x_1352 : vec4<f32> = x_1016.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1349)];
          let x_1354 : vec2<f32> = u_xlat35;
          let x_1356 : u32 = u_xlatu44;
          let x_1359 : vec4<f32> = x_1016.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1356)];
          let x_1361 : vec2<f32> = ((vec2<f32>(x_1352.x, x_1352.y) * x_1354) + vec2<f32>(x_1359.z, x_1359.w));
          let x_1362 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1361.x, x_1361.y, x_1362.z, x_1362.w);
        }
      }
      let x_1369 : vec4<f32> = u_xlat11;
      let x_1372 : f32 = x_44.x_GlobalMipBias.x;
      let x_1373 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1369.x, x_1369.y), x_1372);
      u_xlat11 = x_1373;
      let x_1375 : bool = u_xlatb7.y;
      if (x_1375) {
        let x_1380 : f32 = u_xlat11.w;
        x_1376 = x_1380;
      } else {
        let x_1383 : f32 = u_xlat11.x;
        x_1376 = x_1383;
      }
      let x_1384 : f32 = x_1376;
      u_xlat48 = x_1384;
      let x_1386 : bool = u_xlatb7.x;
      if (x_1386) {
        let x_1390 : vec4<f32> = u_xlat11;
        x_1387 = vec3<f32>(x_1390.x, x_1390.y, x_1390.z);
      } else {
        let x_1393 : f32 = u_xlat48;
        x_1387 = vec3<f32>(x_1393, x_1393, x_1393);
      }
      let x_1395 : vec3<f32> = x_1387;
      let x_1396 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1395.x, x_1395.y, x_1395.z, x_1396.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1402 : vec4<f32> = u_xlat11;
    let x_1404 : u32 = u_xlatu44;
    let x_1407 : vec4<f32> = x_915.x_AdditionalLightsColor[bitcast<i32>(x_1404)];
    let x_1409 : vec3<f32> = (vec3<f32>(x_1402.x, x_1402.y, x_1402.z) * vec3<f32>(x_1407.x, x_1407.y, x_1407.z));
    let x_1410 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1409.x, x_1409.y, x_1409.z, x_1410.w);
    let x_1412 : f32 = u_xlat32;
    let x_1414 : vec4<f32> = u_xlat11;
    let x_1416 : vec3<f32> = (vec3<f32>(x_1412, x_1412, x_1412) * vec3<f32>(x_1414.x, x_1414.y, x_1414.z));
    let x_1417 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1416.x, x_1416.y, x_1416.z, x_1417.w);
    let x_1419 : vec4<f32> = u_xlat2;
    let x_1421 : vec3<f32> = u_xlat10;
    u_xlat44 = dot(vec3<f32>(x_1419.x, x_1419.y, x_1419.z), x_1421);
    let x_1423 : f32 = u_xlat44;
    u_xlat44 = clamp(x_1423, 0.0f, 1.0f);
    let x_1425 : f32 = u_xlat44;
    let x_1426 : f32 = u_xlat46;
    u_xlat44 = (x_1425 * x_1426);
    let x_1428 : f32 = u_xlat44;
    let x_1430 : vec4<f32> = u_xlat11;
    let x_1432 : vec3<f32> = (vec3<f32>(x_1428, x_1428, x_1428) * vec3<f32>(x_1430.x, x_1430.y, x_1430.z));
    let x_1433 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1432.x, x_1432.y, x_1432.z, x_1433.w);
    let x_1435 : vec3<f32> = u_xlat9;
    let x_1436 : f32 = u_xlat47;
    let x_1439 : vec3<f32> = u_xlat3;
    u_xlat9 = ((x_1435 * vec3<f32>(x_1436, x_1436, x_1436)) + x_1439);
    let x_1441 : vec3<f32> = u_xlat9;
    let x_1442 : vec3<f32> = u_xlat9;
    u_xlat44 = dot(x_1441, x_1442);
    let x_1444 : f32 = u_xlat44;
    u_xlat44 = max(x_1444, 1.17549435e-37f);
    let x_1446 : f32 = u_xlat44;
    u_xlat44 = inverseSqrt(x_1446);
    let x_1448 : f32 = u_xlat44;
    let x_1450 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1448, x_1448, x_1448) * x_1450);
    let x_1452 : vec4<f32> = u_xlat2;
    let x_1454 : vec3<f32> = u_xlat9;
    u_xlat44 = dot(vec3<f32>(x_1452.x, x_1452.y, x_1452.z), x_1454);
    let x_1456 : f32 = u_xlat44;
    u_xlat44 = clamp(x_1456, 0.0f, 1.0f);
    let x_1458 : vec3<f32> = u_xlat10;
    let x_1459 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(x_1458, x_1459);
    let x_1461 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1461, 0.0f, 1.0f);
    let x_1463 : f32 = u_xlat44;
    let x_1464 : f32 = u_xlat44;
    u_xlat44 = (x_1463 * x_1464);
    let x_1466 : f32 = u_xlat44;
    let x_1468 : f32 = u_xlat8.x;
    u_xlat44 = ((x_1466 * x_1468) + 1.000010014f);
    let x_1471 : f32 = u_xlat46;
    let x_1472 : f32 = u_xlat46;
    u_xlat46 = (x_1471 * x_1472);
    let x_1474 : f32 = u_xlat44;
    let x_1475 : f32 = u_xlat44;
    u_xlat44 = (x_1474 * x_1475);
    let x_1477 : f32 = u_xlat46;
    u_xlat46 = max(x_1477, 0.100000001f);
    let x_1479 : f32 = u_xlat44;
    let x_1480 : f32 = u_xlat46;
    u_xlat44 = (x_1479 * x_1480);
    let x_1482 : f32 = u_xlat45;
    let x_1483 : f32 = u_xlat44;
    u_xlat44 = (x_1482 * x_1483);
    let x_1485 : f32 = u_xlat18;
    let x_1486 : f32 = u_xlat44;
    u_xlat44 = (x_1485 / x_1486);
    let x_1488 : vec4<f32> = u_xlat0;
    let x_1490 : f32 = u_xlat44;
    let x_1493 : vec4<f32> = u_xlat5;
    u_xlat9 = ((vec3<f32>(x_1488.x, x_1488.y, x_1488.z) * vec3<f32>(x_1490, x_1490, x_1490)) + vec3<f32>(x_1493.x, x_1493.y, x_1493.z));
    let x_1496 : vec3<f32> = u_xlat9;
    let x_1497 : vec4<f32> = u_xlat11;
    let x_1500 : vec3<f32> = u_xlat22;
    u_xlat22 = ((x_1496 * vec3<f32>(x_1497.x, x_1497.y, x_1497.z)) + x_1500);

    continuing {
      let x_1502 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1502 + bitcast<u32>(1i));
    }
  }
  let x_1504 : vec3<f32> = u_xlat1;
  let x_1505 : vec3<f32> = u_xlat4;
  let x_1508 : vec4<f32> = u_xlat6;
  let x_1510 : vec3<f32> = ((x_1504 * vec3<f32>(x_1505.x, x_1505.x, x_1505.x)) + vec3<f32>(x_1508.x, x_1508.y, x_1508.z));
  let x_1511 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1510.x, x_1510.y, x_1510.z, x_1511.w);
  let x_1515 : vec3<f32> = u_xlat22;
  let x_1516 : vec4<f32> = u_xlat0;
  let x_1518 : vec3<f32> = (x_1515 + vec3<f32>(x_1516.x, x_1516.y, x_1516.z));
  let x_1519 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1518.x, x_1518.y, x_1518.z, x_1519.w);
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

