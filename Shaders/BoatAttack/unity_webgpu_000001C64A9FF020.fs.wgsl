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

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MetallicTex : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_93 : UnityPerDraw;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(3) var<uniform> x_319 : MainLightShadows;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_393 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_877 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_978 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat15 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat44 : f32;
  var u_xlat17 : f32;
  var u_xlat45 : f32;
  var u_xlat42 : f32;
  var u_xlat31 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat46 : f32;
  var u_xlatb5 : bool;
  var u_xlatb19 : bool;
  var u_xlat19 : f32;
  var u_xlatb6 : vec2<bool>;
  var u_xlat47 : f32;
  var x_482 : f32;
  var x_493 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat48 : f32;
  var u_xlat8 : vec2<f32>;
  var u_xlat22 : vec3<f32>;
  var u_xlat43 : f32;
  var u_xlatu42 : u32;
  var u_xlatb7 : vec2<bool>;
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
  var x_1273 : f32;
  var x_1286 : f32;
  var x_1338 : f32;
  var x_1349 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_39 : vec4<f32> = vs_TEXCOORD0;
  let x_49 : f32 = x_43.x_GlobalMipBias.x;
  let x_50 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_39.x, x_39.y), x_49);
  u_xlat0 = x_50;
  let x_58 : vec4<f32> = vs_TEXCOORD0;
  let x_61 : f32 = x_43.x_GlobalMipBias.x;
  let x_62 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_58.x, x_58.y), x_61);
  u_xlat1.x = x_62.x;
  let x_68 : vec4<f32> = vs_TEXCOORD3;
  let x_70 : vec4<f32> = vs_TEXCOORD3;
  u_xlat15.x = dot(vec3<f32>(x_68.x, x_68.y, x_68.z), vec3<f32>(x_70.x, x_70.y, x_70.z));
  let x_75 : f32 = u_xlat15.x;
  u_xlat15.x = inverseSqrt(x_75);
  let x_79 : vec3<f32> = u_xlat15;
  let x_81 : vec4<f32> = vs_TEXCOORD3;
  let x_83 : vec3<f32> = (vec3<f32>(x_79.x, x_79.x, x_79.x) * vec3<f32>(x_81.x, x_81.y, x_81.z));
  let x_84 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_83.x, x_83.y, x_83.z, x_84.w);
  u_xlat2.w = 1.0f;
  let x_97 : vec4<f32> = x_93.unity_SHAr;
  let x_98 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_97, x_98);
  let x_103 : vec4<f32> = x_93.unity_SHAg;
  let x_104 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_103, x_104);
  let x_110 : vec4<f32> = x_93.unity_SHAb;
  let x_111 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_110, x_111);
  let x_115 : vec4<f32> = u_xlat2;
  let x_117 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_115.y, x_115.z, x_115.z, x_115.x) * vec4<f32>(x_117.x, x_117.y, x_117.z, x_117.z));
  let x_123 : vec4<f32> = x_93.unity_SHBr;
  let x_124 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_123, x_124);
  let x_129 : vec4<f32> = x_93.unity_SHBg;
  let x_130 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_129, x_130);
  let x_135 : vec4<f32> = x_93.unity_SHBb;
  let x_136 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_135, x_136);
  let x_140 : f32 = u_xlat2.y;
  let x_142 : f32 = u_xlat2.y;
  u_xlat15.x = (x_140 * x_142);
  let x_146 : f32 = u_xlat2.x;
  let x_148 : f32 = u_xlat2.x;
  let x_151 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_146 * x_148) + -(x_151));
  let x_157 : vec4<f32> = x_93.unity_SHC;
  let x_159 : vec3<f32> = u_xlat15;
  let x_162 : vec4<f32> = u_xlat5;
  u_xlat15 = ((vec3<f32>(x_157.x, x_157.y, x_157.z) * vec3<f32>(x_159.x, x_159.x, x_159.x)) + vec3<f32>(x_162.x, x_162.y, x_162.z));
  let x_165 : vec3<f32> = u_xlat15;
  let x_166 : vec3<f32> = u_xlat3;
  u_xlat15 = (x_165 + x_166);
  let x_168 : vec3<f32> = u_xlat15;
  u_xlat15 = max(x_168, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_175 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_176 : vec2<f32> = vec2<f32>(x_175.x, x_175.y);
  let x_180 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_176.x, x_176.y));
  let x_181 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_180.x, x_180.y, x_181.z);
  let x_183 : vec3<f32> = u_xlat3;
  let x_185 : vec4<f32> = hlslcc_FragCoord;
  let x_187 : vec2<f32> = (vec2<f32>(x_183.x, x_183.y) * vec2<f32>(x_185.x, x_185.y));
  let x_188 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_187.x, x_187.y, x_188.z);
  let x_192 : f32 = u_xlat3.y;
  let x_195 : f32 = x_43.x_ScaleBiasRt.x;
  let x_198 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat44 = ((x_192 * x_195) + x_198);
  let x_200 : f32 = u_xlat44;
  u_xlat3.z = (-(x_200) + 1.0f);
  let x_205 : f32 = u_xlat1.x;
  u_xlat44 = ((-(x_205) * 0.959999979f) + 0.959999979f);
  let x_211 : f32 = u_xlat44;
  u_xlat17 = (-(x_211) + 1.0f);
  let x_214 : vec4<f32> = u_xlat0;
  let x_216 : f32 = u_xlat44;
  let x_218 : vec3<f32> = (vec3<f32>(x_214.x, x_214.y, x_214.z) * vec3<f32>(x_216, x_216, x_216));
  let x_219 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_218.x, x_218.y, x_218.z, x_219.w);
  let x_221 : vec4<f32> = u_xlat0;
  let x_225 : vec3<f32> = (vec3<f32>(x_221.x, x_221.y, x_221.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_226 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_225.x, x_225.y, x_225.z, x_226.w);
  let x_228 : vec3<f32> = u_xlat1;
  let x_230 : vec4<f32> = u_xlat0;
  let x_235 : vec3<f32> = ((vec3<f32>(x_228.x, x_228.x, x_228.x) * vec3<f32>(x_230.x, x_230.y, x_230.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_236 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_235.x, x_235.y, x_235.z, x_236.w);
  let x_239 : f32 = u_xlat0.w;
  u_xlat1.x = (-(x_239) + 1.0f);
  let x_244 : f32 = u_xlat1.x;
  let x_246 : f32 = u_xlat1.x;
  u_xlat44 = (x_244 * x_246);
  let x_248 : f32 = u_xlat44;
  u_xlat44 = max(x_248, 0.0078125f);
  let x_252 : f32 = u_xlat44;
  let x_253 : f32 = u_xlat44;
  u_xlat45 = (x_252 * x_253);
  let x_257 : f32 = u_xlat0.w;
  let x_258 : f32 = u_xlat17;
  u_xlat42 = (x_257 + x_258);
  let x_260 : f32 = u_xlat42;
  u_xlat42 = clamp(x_260, 0.0f, 1.0f);
  let x_262 : f32 = u_xlat44;
  u_xlat17 = ((x_262 * 4.0f) + 2.0f);
  let x_272 : vec3<f32> = u_xlat3;
  let x_275 : f32 = x_43.x_GlobalMipBias.x;
  let x_276 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_272.x, x_272.z), x_275);
  u_xlat3.x = x_276.x;
  let x_281 : f32 = u_xlat3.x;
  u_xlat31 = (x_281 + -1.0f);
  let x_286 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_287 : f32 = u_xlat31;
  u_xlat31 = ((x_286 * x_287) + 1.0f);
  let x_291 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_291, 1.0f);
  let x_296 : vec4<f32> = vs_TEXCOORD8;
  let x_297 : vec2<f32> = vec2<f32>(x_296.x, x_296.y);
  let x_299 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_297.x, x_297.y, x_299);
  let x_312 : vec3<f32> = txVec0;
  let x_314 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_312.xy, x_312.z);
  u_xlat46 = x_314;
  let x_322 : f32 = x_319.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_322) + 1.0f);
  let x_326 : f32 = u_xlat46;
  let x_328 : f32 = x_319.x_MainLightShadowParams.x;
  let x_331 : f32 = u_xlat5.x;
  u_xlat46 = ((x_326 * x_328) + x_331);
  let x_337 : f32 = vs_TEXCOORD8.z;
  u_xlatb5 = (0.0f >= x_337);
  let x_341 : f32 = vs_TEXCOORD8.z;
  u_xlatb19 = (x_341 >= 1.0f);
  let x_343 : bool = u_xlatb19;
  let x_344 : bool = u_xlatb5;
  u_xlatb5 = (x_343 | x_344);
  let x_346 : bool = u_xlatb5;
  let x_347 : f32 = u_xlat46;
  u_xlat46 = select(x_347, 1.0f, x_346);
  let x_351 : vec3<f32> = vs_TEXCOORD7;
  let x_355 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_357 : vec3<f32> = (x_351 + -(x_355));
  let x_358 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_357.x, x_357.y, x_357.z, x_358.w);
  let x_360 : vec4<f32> = u_xlat5;
  let x_362 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_360.x, x_360.y, x_360.z), vec3<f32>(x_362.x, x_362.y, x_362.z));
  let x_367 : f32 = u_xlat5.x;
  let x_369 : f32 = x_319.x_MainLightShadowParams.z;
  let x_372 : f32 = x_319.x_MainLightShadowParams.w;
  u_xlat5.x = ((x_367 * x_369) + x_372);
  let x_376 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_376, 0.0f, 1.0f);
  let x_380 : f32 = u_xlat46;
  u_xlat19 = (-(x_380) + 1.0f);
  let x_384 : f32 = u_xlat5.x;
  let x_385 : f32 = u_xlat19;
  let x_387 : f32 = u_xlat46;
  u_xlat46 = ((x_384 * x_385) + x_387);
  let x_396 : f32 = x_393.x_MainLightCookieTextureFormat;
  u_xlatb5 = !((x_396 == -1.0f));
  let x_398 : bool = u_xlatb5;
  if (x_398) {
    let x_401 : vec3<f32> = vs_TEXCOORD7;
    let x_404 : vec4<f32> = x_393.x_MainLightWorldToLight[1i];
    let x_406 : vec2<f32> = (vec2<f32>(x_401.y, x_401.y) * vec2<f32>(x_404.x, x_404.y));
    let x_407 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_406.x, x_406.y, x_407.z, x_407.w);
    let x_410 : vec4<f32> = x_393.x_MainLightWorldToLight[0i];
    let x_412 : vec3<f32> = vs_TEXCOORD7;
    let x_415 : vec4<f32> = u_xlat5;
    let x_417 : vec2<f32> = ((vec2<f32>(x_410.x, x_410.y) * vec2<f32>(x_412.x, x_412.x)) + vec2<f32>(x_415.x, x_415.y));
    let x_418 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_417.x, x_417.y, x_418.z, x_418.w);
    let x_421 : vec4<f32> = x_393.x_MainLightWorldToLight[2i];
    let x_423 : vec3<f32> = vs_TEXCOORD7;
    let x_426 : vec4<f32> = u_xlat5;
    let x_428 : vec2<f32> = ((vec2<f32>(x_421.x, x_421.y) * vec2<f32>(x_423.z, x_423.z)) + vec2<f32>(x_426.x, x_426.y));
    let x_429 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_428.x, x_428.y, x_429.z, x_429.w);
    let x_431 : vec4<f32> = u_xlat5;
    let x_435 : vec4<f32> = x_393.x_MainLightWorldToLight[3i];
    let x_437 : vec2<f32> = (vec2<f32>(x_431.x, x_431.y) + vec2<f32>(x_435.x, x_435.y));
    let x_438 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_437.x, x_437.y, x_438.z, x_438.w);
    let x_440 : vec4<f32> = u_xlat5;
    let x_445 : vec2<f32> = ((vec2<f32>(x_440.x, x_440.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_446 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_445.x, x_445.y, x_446.z, x_446.w);
    let x_453 : vec4<f32> = u_xlat5;
    let x_456 : f32 = x_43.x_GlobalMipBias.x;
    let x_457 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_453.x, x_453.y), x_456);
    u_xlat5 = x_457;
    let x_462 : f32 = x_393.x_MainLightCookieTextureFormat;
    let x_464 : f32 = x_393.x_MainLightCookieTextureFormat;
    let x_466 : f32 = x_393.x_MainLightCookieTextureFormat;
    let x_468 : f32 = x_393.x_MainLightCookieTextureFormat;
    let x_469 : vec4<f32> = vec4<f32>(x_462, x_464, x_466, x_468);
    let x_477 : vec4<bool> = (vec4<f32>(x_469.x, x_469.y, x_469.z, x_469.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb6 = vec2<bool>(x_477.x, x_477.y);
    let x_481 : bool = u_xlatb6.y;
    if (x_481) {
      let x_486 : f32 = u_xlat5.w;
      x_482 = x_486;
    } else {
      let x_489 : f32 = u_xlat5.x;
      x_482 = x_489;
    }
    let x_490 : f32 = x_482;
    u_xlat47 = x_490;
    let x_492 : bool = u_xlatb6.x;
    if (x_492) {
      let x_496 : vec4<f32> = u_xlat5;
      x_493 = vec3<f32>(x_496.x, x_496.y, x_496.z);
    } else {
      let x_499 : f32 = u_xlat47;
      x_493 = vec3<f32>(x_499, x_499, x_499);
    }
    let x_501 : vec3<f32> = x_493;
    let x_502 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_501.x, x_501.y, x_501.z, x_502.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_508 : vec4<f32> = u_xlat5;
  let x_511 : vec4<f32> = x_43.x_MainLightColor;
  let x_513 : vec3<f32> = (vec3<f32>(x_508.x, x_508.y, x_508.z) * vec3<f32>(x_511.x, x_511.y, x_511.z));
  let x_514 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_513.x, x_513.y, x_513.z, x_514.w);
  let x_516 : f32 = u_xlat31;
  let x_518 : vec4<f32> = u_xlat5;
  let x_520 : vec3<f32> = (vec3<f32>(x_516, x_516, x_516) * vec3<f32>(x_518.x, x_518.y, x_518.z));
  let x_521 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_520.x, x_520.y, x_520.z, x_521.w);
  let x_525 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_525;
  let x_529 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_529;
  let x_533 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_533;
  let x_535 : vec3<f32> = u_xlat6;
  let x_537 : vec4<f32> = u_xlat2;
  u_xlat47 = dot(-(x_535), vec3<f32>(x_537.x, x_537.y, x_537.z));
  let x_540 : f32 = u_xlat47;
  let x_541 : f32 = u_xlat47;
  u_xlat47 = (x_540 + x_541);
  let x_544 : vec4<f32> = u_xlat2;
  let x_546 : f32 = u_xlat47;
  let x_550 : vec3<f32> = u_xlat6;
  let x_552 : vec3<f32> = ((vec3<f32>(x_544.x, x_544.y, x_544.z) * -(vec3<f32>(x_546, x_546, x_546))) + -(x_550));
  let x_553 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_552.x, x_552.y, x_552.z, x_553.w);
  let x_555 : vec4<f32> = u_xlat2;
  let x_557 : vec3<f32> = u_xlat6;
  u_xlat47 = dot(vec3<f32>(x_555.x, x_555.y, x_555.z), x_557);
  let x_559 : f32 = u_xlat47;
  u_xlat47 = clamp(x_559, 0.0f, 1.0f);
  let x_561 : f32 = u_xlat47;
  u_xlat47 = (-(x_561) + 1.0f);
  let x_564 : f32 = u_xlat47;
  let x_565 : f32 = u_xlat47;
  u_xlat47 = (x_564 * x_565);
  let x_567 : f32 = u_xlat47;
  let x_568 : f32 = u_xlat47;
  u_xlat47 = (x_567 * x_568);
  let x_572 : f32 = u_xlat1.x;
  u_xlat48 = ((-(x_572) * 0.699999988f) + 1.700000048f);
  let x_579 : f32 = u_xlat1.x;
  let x_580 : f32 = u_xlat48;
  u_xlat1.x = (x_579 * x_580);
  let x_584 : f32 = u_xlat1.x;
  u_xlat1.x = (x_584 * 6.0f);
  let x_596 : vec4<f32> = u_xlat7;
  let x_599 : f32 = u_xlat1.x;
  let x_600 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_596.x, x_596.y, x_596.z), x_599);
  u_xlat7 = x_600;
  let x_602 : f32 = u_xlat7.w;
  u_xlat1.x = (x_602 + -1.0f);
  let x_606 : f32 = x_93.unity_SpecCube0_HDR.w;
  let x_608 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_606 * x_608) + 1.0f);
  let x_613 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_613, 0.0f);
  let x_617 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_617);
  let x_621 : f32 = u_xlat1.x;
  let x_623 : f32 = x_93.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_621 * x_623);
  let x_627 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_627);
  let x_631 : f32 = u_xlat1.x;
  let x_633 : f32 = x_93.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_631 * x_633);
  let x_636 : vec4<f32> = u_xlat7;
  let x_638 : vec3<f32> = u_xlat1;
  let x_640 : vec3<f32> = (vec3<f32>(x_636.x, x_636.y, x_636.z) * vec3<f32>(x_638.x, x_638.x, x_638.x));
  let x_641 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_640.x, x_640.y, x_640.z, x_641.w);
  let x_645 : f32 = u_xlat44;
  let x_647 : f32 = u_xlat44;
  u_xlat8 = ((vec2<f32>(x_645, x_645) * vec2<f32>(x_647, x_647)) + vec2<f32>(-1.0f, 1.0f));
  let x_653 : f32 = u_xlat8.y;
  u_xlat1.x = (1.0f / x_653);
  let x_657 : vec4<f32> = u_xlat0;
  let x_660 : f32 = u_xlat42;
  u_xlat22 = (-(vec3<f32>(x_657.x, x_657.y, x_657.z)) + vec3<f32>(x_660, x_660, x_660));
  let x_663 : f32 = u_xlat47;
  let x_665 : vec3<f32> = u_xlat22;
  let x_667 : vec4<f32> = u_xlat0;
  u_xlat22 = ((vec3<f32>(x_663, x_663, x_663) * x_665) + vec3<f32>(x_667.x, x_667.y, x_667.z));
  let x_670 : vec3<f32> = u_xlat1;
  let x_672 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_670.x, x_670.x, x_670.x) * x_672);
  let x_674 : vec4<f32> = u_xlat7;
  let x_676 : vec3<f32> = u_xlat22;
  let x_677 : vec3<f32> = (vec3<f32>(x_674.x, x_674.y, x_674.z) * x_676);
  let x_678 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_677.x, x_677.y, x_677.z, x_678.w);
  let x_680 : vec3<f32> = u_xlat15;
  let x_681 : vec4<f32> = u_xlat4;
  let x_684 : vec4<f32> = u_xlat7;
  u_xlat1 = ((x_680 * vec3<f32>(x_681.x, x_681.y, x_681.z)) + vec3<f32>(x_684.x, x_684.y, x_684.z));
  let x_687 : f32 = u_xlat46;
  let x_690 : f32 = x_93.unity_LightData.z;
  u_xlat42 = (x_687 * x_690);
  let x_693 : vec4<f32> = u_xlat2;
  let x_696 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat43 = dot(vec3<f32>(x_693.x, x_693.y, x_693.z), vec3<f32>(x_696.x, x_696.y, x_696.z));
  let x_699 : f32 = u_xlat43;
  u_xlat43 = clamp(x_699, 0.0f, 1.0f);
  let x_701 : f32 = u_xlat42;
  let x_702 : f32 = u_xlat43;
  u_xlat42 = (x_701 * x_702);
  let x_704 : f32 = u_xlat42;
  let x_706 : vec4<f32> = u_xlat5;
  let x_708 : vec3<f32> = (vec3<f32>(x_704, x_704, x_704) * vec3<f32>(x_706.x, x_706.y, x_706.z));
  let x_709 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_708.x, x_708.y, x_708.z, x_709.w);
  let x_711 : vec3<f32> = u_xlat6;
  let x_713 : vec4<f32> = x_43.x_MainLightPosition;
  let x_715 : vec3<f32> = (x_711 + vec3<f32>(x_713.x, x_713.y, x_713.z));
  let x_716 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_715.x, x_715.y, x_715.z, x_716.w);
  let x_718 : vec4<f32> = u_xlat7;
  let x_720 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_718.x, x_718.y, x_718.z), vec3<f32>(x_720.x, x_720.y, x_720.z));
  let x_723 : f32 = u_xlat42;
  u_xlat42 = max(x_723, 1.17549435e-37f);
  let x_726 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_726);
  let x_728 : f32 = u_xlat42;
  let x_730 : vec4<f32> = u_xlat7;
  let x_732 : vec3<f32> = (vec3<f32>(x_728, x_728, x_728) * vec3<f32>(x_730.x, x_730.y, x_730.z));
  let x_733 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_732.x, x_732.y, x_732.z, x_733.w);
  let x_735 : vec4<f32> = u_xlat2;
  let x_737 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_735.x, x_735.y, x_735.z), vec3<f32>(x_737.x, x_737.y, x_737.z));
  let x_740 : f32 = u_xlat42;
  u_xlat42 = clamp(x_740, 0.0f, 1.0f);
  let x_743 : vec4<f32> = x_43.x_MainLightPosition;
  let x_745 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec3<f32>(x_743.x, x_743.y, x_743.z), vec3<f32>(x_745.x, x_745.y, x_745.z));
  let x_748 : f32 = u_xlat43;
  u_xlat43 = clamp(x_748, 0.0f, 1.0f);
  let x_750 : f32 = u_xlat42;
  let x_751 : f32 = u_xlat42;
  u_xlat42 = (x_750 * x_751);
  let x_753 : f32 = u_xlat42;
  let x_755 : f32 = u_xlat8.x;
  u_xlat42 = ((x_753 * x_755) + 1.000010014f);
  let x_759 : f32 = u_xlat43;
  let x_760 : f32 = u_xlat43;
  u_xlat43 = (x_759 * x_760);
  let x_762 : f32 = u_xlat42;
  let x_763 : f32 = u_xlat42;
  u_xlat42 = (x_762 * x_763);
  let x_765 : f32 = u_xlat43;
  u_xlat43 = max(x_765, 0.100000001f);
  let x_768 : f32 = u_xlat42;
  let x_769 : f32 = u_xlat43;
  u_xlat42 = (x_768 * x_769);
  let x_771 : f32 = u_xlat17;
  let x_772 : f32 = u_xlat42;
  u_xlat42 = (x_771 * x_772);
  let x_774 : f32 = u_xlat45;
  let x_775 : f32 = u_xlat42;
  u_xlat42 = (x_774 / x_775);
  let x_777 : vec4<f32> = u_xlat0;
  let x_779 : f32 = u_xlat42;
  let x_782 : vec4<f32> = u_xlat4;
  let x_784 : vec3<f32> = ((vec3<f32>(x_777.x, x_777.y, x_777.z) * vec3<f32>(x_779, x_779, x_779)) + vec3<f32>(x_782.x, x_782.y, x_782.z));
  let x_785 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_784.x, x_784.y, x_784.z, x_785.w);
  let x_787 : vec4<f32> = u_xlat5;
  let x_789 : vec4<f32> = u_xlat7;
  let x_791 : vec3<f32> = (vec3<f32>(x_787.x, x_787.y, x_787.z) * vec3<f32>(x_789.x, x_789.y, x_789.z));
  let x_792 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_791.x, x_791.y, x_791.z, x_792.w);
  let x_795 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_797 : f32 = x_93.unity_LightData.y;
  u_xlat42 = min(x_795, x_797);
  let x_801 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_801));
  let x_806 : f32 = x_393.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_808 : f32 = x_393.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_810 : f32 = x_393.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_812 : f32 = x_393.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_813 : vec4<f32> = vec4<f32>(x_806, x_808, x_810, x_812);
  let x_819 : vec4<bool> = (vec4<f32>(x_813.x, x_813.y, x_813.z, x_813.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_819.x, x_819.y);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_830 : u32 = u_xlatu_loop_1;
    let x_831 : u32 = u_xlatu42;
    if ((x_830 < x_831)) {
    } else {
      break;
    }
    let x_834 : u32 = u_xlatu_loop_1;
    u_xlatu44 = (x_834 >> 2u);
    let x_838 : u32 = u_xlatu_loop_1;
    u_xlati46 = bitcast<i32>((x_838 & 3u));
    let x_841 : u32 = u_xlatu44;
    let x_844 : vec4<f32> = x_93.unity_LightIndices[bitcast<i32>(x_841)];
    let x_854 : i32 = u_xlati46;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_859 : vec4<u32> = indexable[x_854];
    u_xlat44 = dot(x_844, bitcast<vec4<f32>>(x_859));
    let x_862 : f32 = u_xlat44;
    u_xlatu44 = bitcast<u32>(i32(x_862));
    let x_866 : vec3<f32> = vs_TEXCOORD7;
    let x_878 : u32 = u_xlatu44;
    let x_881 : vec4<f32> = x_877.x_AdditionalLightsPosition[bitcast<i32>(x_878)];
    let x_884 : u32 = u_xlatu44;
    let x_887 : vec4<f32> = x_877.x_AdditionalLightsPosition[bitcast<i32>(x_884)];
    u_xlat9 = ((-(x_866) * vec3<f32>(x_881.w, x_881.w, x_881.w)) + vec3<f32>(x_887.x, x_887.y, x_887.z));
    let x_890 : vec3<f32> = u_xlat9;
    let x_891 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(x_890, x_891);
    let x_893 : f32 = u_xlat46;
    u_xlat46 = max(x_893, 6.10351562e-05f);
    let x_896 : f32 = u_xlat46;
    u_xlat47 = inverseSqrt(x_896);
    let x_899 : f32 = u_xlat47;
    let x_901 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_899, x_899, x_899) * x_901);
    let x_903 : f32 = u_xlat46;
    u_xlat48 = (1.0f / x_903);
    let x_905 : f32 = u_xlat46;
    let x_906 : u32 = u_xlatu44;
    let x_909 : f32 = x_877.x_AdditionalLightsAttenuation[bitcast<i32>(x_906)].x;
    u_xlat46 = (x_905 * x_909);
    let x_911 : f32 = u_xlat46;
    let x_913 : f32 = u_xlat46;
    u_xlat46 = ((-(x_911) * x_913) + 1.0f);
    let x_916 : f32 = u_xlat46;
    u_xlat46 = max(x_916, 0.0f);
    let x_918 : f32 = u_xlat46;
    let x_919 : f32 = u_xlat46;
    u_xlat46 = (x_918 * x_919);
    let x_921 : f32 = u_xlat46;
    let x_922 : f32 = u_xlat48;
    u_xlat46 = (x_921 * x_922);
    let x_924 : u32 = u_xlatu44;
    let x_927 : vec4<f32> = x_877.x_AdditionalLightsSpotDir[bitcast<i32>(x_924)];
    let x_929 : vec3<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_927.x, x_927.y, x_927.z), x_929);
    let x_931 : f32 = u_xlat48;
    let x_932 : u32 = u_xlatu44;
    let x_935 : f32 = x_877.x_AdditionalLightsAttenuation[bitcast<i32>(x_932)].z;
    let x_937 : u32 = u_xlatu44;
    let x_940 : f32 = x_877.x_AdditionalLightsAttenuation[bitcast<i32>(x_937)].w;
    u_xlat48 = ((x_931 * x_935) + x_940);
    let x_942 : f32 = u_xlat48;
    u_xlat48 = clamp(x_942, 0.0f, 1.0f);
    let x_944 : f32 = u_xlat48;
    let x_945 : f32 = u_xlat48;
    u_xlat48 = (x_944 * x_945);
    let x_947 : f32 = u_xlat46;
    let x_948 : f32 = u_xlat48;
    u_xlat46 = (x_947 * x_948);
    let x_951 : u32 = u_xlatu44;
    u_xlatu48 = (x_951 >> 5u);
    let x_954 : u32 = u_xlatu44;
    u_xlati35 = (1i << bitcast<u32>((bitcast<i32>(x_954) & 31i)));
    let x_960 : i32 = u_xlati35;
    let x_962 : u32 = u_xlatu48;
    let x_965 : f32 = x_393.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_962)].el;
    u_xlati48 = bitcast<i32>((bitcast<u32>(x_960) & bitcast<u32>(x_965)));
    let x_969 : i32 = u_xlati48;
    if ((x_969 != 0i)) {
      let x_979 : u32 = u_xlatu44;
      let x_982 : f32 = x_978.x_AdditionalLightsLightTypes[bitcast<i32>(x_979)].el;
      u_xlati48 = i32(x_982);
      let x_984 : i32 = u_xlati48;
      u_xlati35 = select(1i, 0i, (x_984 != 0i));
      let x_988 : u32 = u_xlatu44;
      u_xlati49 = (bitcast<i32>(x_988) << bitcast<u32>(2i));
      let x_991 : i32 = u_xlati35;
      if ((x_991 != 0i)) {
        let x_996 : vec3<f32> = vs_TEXCOORD7;
        let x_998 : i32 = u_xlati49;
        let x_1001 : i32 = u_xlati49;
        let x_1005 : vec4<f32> = x_978.x_AdditionalLightsWorldToLights[((x_998 + 1i) / 4i)][((x_1001 + 1i) % 4i)];
        let x_1007 : vec3<f32> = (vec3<f32>(x_996.y, x_996.y, x_996.y) * vec3<f32>(x_1005.x, x_1005.y, x_1005.w));
        let x_1008 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1007.x, x_1007.y, x_1007.z, x_1008.w);
        let x_1010 : i32 = u_xlati49;
        let x_1012 : i32 = u_xlati49;
        let x_1015 : vec4<f32> = x_978.x_AdditionalLightsWorldToLights[(x_1010 / 4i)][(x_1012 % 4i)];
        let x_1017 : vec3<f32> = vs_TEXCOORD7;
        let x_1020 : vec4<f32> = u_xlat11;
        let x_1022 : vec3<f32> = ((vec3<f32>(x_1015.x, x_1015.y, x_1015.w) * vec3<f32>(x_1017.x, x_1017.x, x_1017.x)) + vec3<f32>(x_1020.x, x_1020.y, x_1020.z));
        let x_1023 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1022.x, x_1022.y, x_1022.z, x_1023.w);
        let x_1025 : i32 = u_xlati49;
        let x_1028 : i32 = u_xlati49;
        let x_1032 : vec4<f32> = x_978.x_AdditionalLightsWorldToLights[((x_1025 + 2i) / 4i)][((x_1028 + 2i) % 4i)];
        let x_1034 : vec3<f32> = vs_TEXCOORD7;
        let x_1037 : vec4<f32> = u_xlat11;
        let x_1039 : vec3<f32> = ((vec3<f32>(x_1032.x, x_1032.y, x_1032.w) * vec3<f32>(x_1034.z, x_1034.z, x_1034.z)) + vec3<f32>(x_1037.x, x_1037.y, x_1037.z));
        let x_1040 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1039.x, x_1039.y, x_1039.z, x_1040.w);
        let x_1042 : vec4<f32> = u_xlat11;
        let x_1044 : i32 = u_xlati49;
        let x_1047 : i32 = u_xlati49;
        let x_1051 : vec4<f32> = x_978.x_AdditionalLightsWorldToLights[((x_1044 + 3i) / 4i)][((x_1047 + 3i) % 4i)];
        let x_1053 : vec3<f32> = (vec3<f32>(x_1042.x, x_1042.y, x_1042.z) + vec3<f32>(x_1051.x, x_1051.y, x_1051.w));
        let x_1054 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1053.x, x_1053.y, x_1053.z, x_1054.w);
        let x_1056 : vec4<f32> = u_xlat11;
        let x_1058 : vec4<f32> = u_xlat11;
        let x_1060 : vec2<f32> = (vec2<f32>(x_1056.x, x_1056.y) / vec2<f32>(x_1058.z, x_1058.z));
        let x_1061 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1060.x, x_1060.y, x_1061.z, x_1061.w);
        let x_1063 : vec4<f32> = u_xlat11;
        let x_1066 : vec2<f32> = ((vec2<f32>(x_1063.x, x_1063.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1067 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1066.x, x_1066.y, x_1067.z, x_1067.w);
        let x_1069 : vec4<f32> = u_xlat11;
        let x_1073 : vec2<f32> = clamp(vec2<f32>(x_1069.x, x_1069.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1074 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1073.x, x_1073.y, x_1074.z, x_1074.w);
        let x_1076 : u32 = u_xlatu44;
        let x_1079 : vec4<f32> = x_978.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1076)];
        let x_1081 : vec4<f32> = u_xlat11;
        let x_1084 : u32 = u_xlatu44;
        let x_1087 : vec4<f32> = x_978.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1084)];
        let x_1089 : vec2<f32> = ((vec2<f32>(x_1079.x, x_1079.y) * vec2<f32>(x_1081.x, x_1081.y)) + vec2<f32>(x_1087.z, x_1087.w));
        let x_1090 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1089.x, x_1089.y, x_1090.z, x_1090.w);
      } else {
        let x_1094 : i32 = u_xlati48;
        u_xlatb48 = (x_1094 == 1i);
        let x_1096 : bool = u_xlatb48;
        u_xlati48 = select(0i, 1i, x_1096);
        let x_1098 : i32 = u_xlati48;
        if ((x_1098 != 0i)) {
          let x_1103 : vec3<f32> = vs_TEXCOORD7;
          let x_1105 : i32 = u_xlati49;
          let x_1108 : i32 = u_xlati49;
          let x_1112 : vec4<f32> = x_978.x_AdditionalLightsWorldToLights[((x_1105 + 1i) / 4i)][((x_1108 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1103.y, x_1103.y) * vec2<f32>(x_1112.x, x_1112.y));
          let x_1115 : i32 = u_xlati49;
          let x_1117 : i32 = u_xlati49;
          let x_1120 : vec4<f32> = x_978.x_AdditionalLightsWorldToLights[(x_1115 / 4i)][(x_1117 % 4i)];
          let x_1122 : vec3<f32> = vs_TEXCOORD7;
          let x_1125 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1120.x, x_1120.y) * vec2<f32>(x_1122.x, x_1122.x)) + x_1125);
          let x_1127 : i32 = u_xlati49;
          let x_1130 : i32 = u_xlati49;
          let x_1134 : vec4<f32> = x_978.x_AdditionalLightsWorldToLights[((x_1127 + 2i) / 4i)][((x_1130 + 2i) % 4i)];
          let x_1136 : vec3<f32> = vs_TEXCOORD7;
          let x_1139 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1134.x, x_1134.y) * vec2<f32>(x_1136.z, x_1136.z)) + x_1139);
          let x_1141 : vec2<f32> = u_xlat39;
          let x_1142 : i32 = u_xlati49;
          let x_1145 : i32 = u_xlati49;
          let x_1149 : vec4<f32> = x_978.x_AdditionalLightsWorldToLights[((x_1142 + 3i) / 4i)][((x_1145 + 3i) % 4i)];
          u_xlat39 = (x_1141 + vec2<f32>(x_1149.x, x_1149.y));
          let x_1152 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1152 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1155 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1155);
          let x_1157 : u32 = u_xlatu44;
          let x_1160 : vec4<f32> = x_978.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1157)];
          let x_1162 : vec2<f32> = u_xlat39;
          let x_1164 : u32 = u_xlatu44;
          let x_1167 : vec4<f32> = x_978.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1164)];
          let x_1169 : vec2<f32> = ((vec2<f32>(x_1160.x, x_1160.y) * x_1162) + vec2<f32>(x_1167.z, x_1167.w));
          let x_1170 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1169.x, x_1169.y, x_1170.z, x_1170.w);
        } else {
          let x_1174 : vec3<f32> = vs_TEXCOORD7;
          let x_1176 : i32 = u_xlati49;
          let x_1179 : i32 = u_xlati49;
          let x_1183 : vec4<f32> = x_978.x_AdditionalLightsWorldToLights[((x_1176 + 1i) / 4i)][((x_1179 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1174.y, x_1174.y, x_1174.y, x_1174.y) * x_1183);
          let x_1185 : i32 = u_xlati49;
          let x_1187 : i32 = u_xlati49;
          let x_1190 : vec4<f32> = x_978.x_AdditionalLightsWorldToLights[(x_1185 / 4i)][(x_1187 % 4i)];
          let x_1191 : vec3<f32> = vs_TEXCOORD7;
          let x_1194 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1190 * vec4<f32>(x_1191.x, x_1191.x, x_1191.x, x_1191.x)) + x_1194);
          let x_1196 : i32 = u_xlati49;
          let x_1199 : i32 = u_xlati49;
          let x_1203 : vec4<f32> = x_978.x_AdditionalLightsWorldToLights[((x_1196 + 2i) / 4i)][((x_1199 + 2i) % 4i)];
          let x_1204 : vec3<f32> = vs_TEXCOORD7;
          let x_1207 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1203 * vec4<f32>(x_1204.z, x_1204.z, x_1204.z, x_1204.z)) + x_1207);
          let x_1209 : vec4<f32> = u_xlat12;
          let x_1210 : i32 = u_xlati49;
          let x_1213 : i32 = u_xlati49;
          let x_1217 : vec4<f32> = x_978.x_AdditionalLightsWorldToLights[((x_1210 + 3i) / 4i)][((x_1213 + 3i) % 4i)];
          u_xlat12 = (x_1209 + x_1217);
          let x_1219 : vec4<f32> = u_xlat12;
          let x_1221 : vec4<f32> = u_xlat12;
          let x_1223 : vec3<f32> = (vec3<f32>(x_1219.x, x_1219.y, x_1219.z) / vec3<f32>(x_1221.w, x_1221.w, x_1221.w));
          let x_1224 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1223.x, x_1223.y, x_1223.z, x_1224.w);
          let x_1226 : vec4<f32> = u_xlat12;
          let x_1228 : vec4<f32> = u_xlat12;
          u_xlat48 = dot(vec3<f32>(x_1226.x, x_1226.y, x_1226.z), vec3<f32>(x_1228.x, x_1228.y, x_1228.z));
          let x_1231 : f32 = u_xlat48;
          u_xlat48 = inverseSqrt(x_1231);
          let x_1233 : f32 = u_xlat48;
          let x_1235 : vec4<f32> = u_xlat12;
          let x_1237 : vec3<f32> = (vec3<f32>(x_1233, x_1233, x_1233) * vec3<f32>(x_1235.x, x_1235.y, x_1235.z));
          let x_1238 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1237.x, x_1237.y, x_1237.z, x_1238.w);
          let x_1240 : vec4<f32> = u_xlat12;
          u_xlat48 = dot(abs(vec3<f32>(x_1240.x, x_1240.y, x_1240.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1245 : f32 = u_xlat48;
          u_xlat48 = max(x_1245, 0.000001f);
          let x_1248 : f32 = u_xlat48;
          u_xlat48 = (1.0f / x_1248);
          let x_1251 : f32 = u_xlat48;
          let x_1253 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1251, x_1251, x_1251) * vec3<f32>(x_1253.z, x_1253.x, x_1253.y));
          let x_1257 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1257);
          let x_1261 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1261, 0.0f, 1.0f);
          let x_1265 : vec3<f32> = u_xlat13;
          let x_1268 : vec4<bool> = (vec4<f32>(x_1265.y, x_1265.z, x_1265.y, x_1265.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb35 = vec2<bool>(x_1268.x, x_1268.y);
          let x_1272 : bool = u_xlatb35.x;
          if (x_1272) {
            let x_1277 : f32 = u_xlat13.x;
            x_1273 = x_1277;
          } else {
            let x_1280 : f32 = u_xlat13.x;
            x_1273 = -(x_1280);
          }
          let x_1282 : f32 = x_1273;
          u_xlat35.x = x_1282;
          let x_1285 : bool = u_xlatb35.y;
          if (x_1285) {
            let x_1290 : f32 = u_xlat13.x;
            x_1286 = x_1290;
          } else {
            let x_1293 : f32 = u_xlat13.x;
            x_1286 = -(x_1293);
          }
          let x_1295 : f32 = x_1286;
          u_xlat35.y = x_1295;
          let x_1297 : vec4<f32> = u_xlat12;
          let x_1299 : f32 = u_xlat48;
          let x_1302 : vec2<f32> = u_xlat35;
          u_xlat35 = ((vec2<f32>(x_1297.x, x_1297.y) * vec2<f32>(x_1299, x_1299)) + x_1302);
          let x_1304 : vec2<f32> = u_xlat35;
          u_xlat35 = ((x_1304 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1307 : vec2<f32> = u_xlat35;
          u_xlat35 = clamp(x_1307, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1311 : u32 = u_xlatu44;
          let x_1314 : vec4<f32> = x_978.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1311)];
          let x_1316 : vec2<f32> = u_xlat35;
          let x_1318 : u32 = u_xlatu44;
          let x_1321 : vec4<f32> = x_978.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1318)];
          let x_1323 : vec2<f32> = ((vec2<f32>(x_1314.x, x_1314.y) * x_1316) + vec2<f32>(x_1321.z, x_1321.w));
          let x_1324 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1323.x, x_1323.y, x_1324.z, x_1324.w);
        }
      }
      let x_1331 : vec4<f32> = u_xlat11;
      let x_1334 : f32 = x_43.x_GlobalMipBias.x;
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
      u_xlat48 = x_1346;
      let x_1348 : bool = u_xlatb7.x;
      if (x_1348) {
        let x_1352 : vec4<f32> = u_xlat11;
        x_1349 = vec3<f32>(x_1352.x, x_1352.y, x_1352.z);
      } else {
        let x_1355 : f32 = u_xlat48;
        x_1349 = vec3<f32>(x_1355, x_1355, x_1355);
      }
      let x_1357 : vec3<f32> = x_1349;
      let x_1358 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1357.x, x_1357.y, x_1357.z, x_1358.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1364 : vec4<f32> = u_xlat11;
    let x_1366 : u32 = u_xlatu44;
    let x_1369 : vec4<f32> = x_877.x_AdditionalLightsColor[bitcast<i32>(x_1366)];
    let x_1371 : vec3<f32> = (vec3<f32>(x_1364.x, x_1364.y, x_1364.z) * vec3<f32>(x_1369.x, x_1369.y, x_1369.z));
    let x_1372 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1371.x, x_1371.y, x_1371.z, x_1372.w);
    let x_1374 : f32 = u_xlat31;
    let x_1376 : vec4<f32> = u_xlat11;
    let x_1378 : vec3<f32> = (vec3<f32>(x_1374, x_1374, x_1374) * vec3<f32>(x_1376.x, x_1376.y, x_1376.z));
    let x_1379 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1378.x, x_1378.y, x_1378.z, x_1379.w);
    let x_1381 : vec4<f32> = u_xlat2;
    let x_1383 : vec3<f32> = u_xlat10;
    u_xlat44 = dot(vec3<f32>(x_1381.x, x_1381.y, x_1381.z), x_1383);
    let x_1385 : f32 = u_xlat44;
    u_xlat44 = clamp(x_1385, 0.0f, 1.0f);
    let x_1387 : f32 = u_xlat44;
    let x_1388 : f32 = u_xlat46;
    u_xlat44 = (x_1387 * x_1388);
    let x_1390 : f32 = u_xlat44;
    let x_1392 : vec4<f32> = u_xlat11;
    let x_1394 : vec3<f32> = (vec3<f32>(x_1390, x_1390, x_1390) * vec3<f32>(x_1392.x, x_1392.y, x_1392.z));
    let x_1395 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1394.x, x_1394.y, x_1394.z, x_1395.w);
    let x_1397 : vec3<f32> = u_xlat9;
    let x_1398 : f32 = u_xlat47;
    let x_1401 : vec3<f32> = u_xlat6;
    u_xlat9 = ((x_1397 * vec3<f32>(x_1398, x_1398, x_1398)) + x_1401);
    let x_1403 : vec3<f32> = u_xlat9;
    let x_1404 : vec3<f32> = u_xlat9;
    u_xlat44 = dot(x_1403, x_1404);
    let x_1406 : f32 = u_xlat44;
    u_xlat44 = max(x_1406, 1.17549435e-37f);
    let x_1408 : f32 = u_xlat44;
    u_xlat44 = inverseSqrt(x_1408);
    let x_1410 : f32 = u_xlat44;
    let x_1412 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1410, x_1410, x_1410) * x_1412);
    let x_1414 : vec4<f32> = u_xlat2;
    let x_1416 : vec3<f32> = u_xlat9;
    u_xlat44 = dot(vec3<f32>(x_1414.x, x_1414.y, x_1414.z), x_1416);
    let x_1418 : f32 = u_xlat44;
    u_xlat44 = clamp(x_1418, 0.0f, 1.0f);
    let x_1420 : vec3<f32> = u_xlat10;
    let x_1421 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(x_1420, x_1421);
    let x_1423 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1423, 0.0f, 1.0f);
    let x_1425 : f32 = u_xlat44;
    let x_1426 : f32 = u_xlat44;
    u_xlat44 = (x_1425 * x_1426);
    let x_1428 : f32 = u_xlat44;
    let x_1430 : f32 = u_xlat8.x;
    u_xlat44 = ((x_1428 * x_1430) + 1.000010014f);
    let x_1433 : f32 = u_xlat46;
    let x_1434 : f32 = u_xlat46;
    u_xlat46 = (x_1433 * x_1434);
    let x_1436 : f32 = u_xlat44;
    let x_1437 : f32 = u_xlat44;
    u_xlat44 = (x_1436 * x_1437);
    let x_1439 : f32 = u_xlat46;
    u_xlat46 = max(x_1439, 0.100000001f);
    let x_1441 : f32 = u_xlat44;
    let x_1442 : f32 = u_xlat46;
    u_xlat44 = (x_1441 * x_1442);
    let x_1444 : f32 = u_xlat17;
    let x_1445 : f32 = u_xlat44;
    u_xlat44 = (x_1444 * x_1445);
    let x_1447 : f32 = u_xlat45;
    let x_1448 : f32 = u_xlat44;
    u_xlat44 = (x_1447 / x_1448);
    let x_1450 : vec4<f32> = u_xlat0;
    let x_1452 : f32 = u_xlat44;
    let x_1455 : vec4<f32> = u_xlat4;
    u_xlat9 = ((vec3<f32>(x_1450.x, x_1450.y, x_1450.z) * vec3<f32>(x_1452, x_1452, x_1452)) + vec3<f32>(x_1455.x, x_1455.y, x_1455.z));
    let x_1458 : vec3<f32> = u_xlat9;
    let x_1459 : vec4<f32> = u_xlat11;
    let x_1462 : vec3<f32> = u_xlat22;
    u_xlat22 = ((x_1458 * vec3<f32>(x_1459.x, x_1459.y, x_1459.z)) + x_1462);

    continuing {
      let x_1464 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1464 + bitcast<u32>(1i));
    }
  }
  let x_1466 : vec3<f32> = u_xlat1;
  let x_1467 : vec3<f32> = u_xlat3;
  let x_1470 : vec4<f32> = u_xlat5;
  let x_1472 : vec3<f32> = ((x_1466 * vec3<f32>(x_1467.x, x_1467.x, x_1467.x)) + vec3<f32>(x_1470.x, x_1470.y, x_1470.z));
  let x_1473 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1472.x, x_1472.y, x_1472.z, x_1473.w);
  let x_1477 : vec3<f32> = u_xlat22;
  let x_1478 : vec4<f32> = u_xlat0;
  let x_1480 : vec3<f32> = (x_1477 + vec3<f32>(x_1478.x, x_1478.y, x_1478.z));
  let x_1481 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1480.x, x_1480.y, x_1480.z, x_1481.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD3_param : vec4<f32>, @location(5) vs_TEXCOORD8_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(2) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD5_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  main_1();
  return main_out(SV_Target0);
}

