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

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(0) @binding(3) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MetallicTex : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

@group(0) @binding(4) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(3) var<uniform> x_243 : MainLightShadows;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_317 : LightCookies;

@group(0) @binding(6) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_522 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_777 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_878 : AdditionalLightsCookies;

@group(0) @binding(7) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : f32;
  var u_xlat15 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat44 : f32;
  var u_xlat17 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat45 : f32;
  var u_xlat42 : f32;
  var u_xlat31 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat46 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlatb5 : bool;
  var u_xlatb19 : bool;
  var u_xlat19 : f32;
  var u_xlatb6 : vec2<bool>;
  var u_xlat47 : f32;
  var x_406 : f32;
  var x_417 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat48 : f32;
  var u_xlat8 : vec2<f32>;
  var u_xlat22 : vec3<f32>;
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
  var x_1173 : f32;
  var x_1186 : f32;
  var x_1238 : f32;
  var x_1249 : vec3<f32>;
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
  u_xlat1 = x_62.x;
  let x_67 : vec4<f32> = vs_TEXCOORD3;
  let x_69 : vec4<f32> = vs_TEXCOORD3;
  u_xlat15.x = dot(vec3<f32>(x_67.x, x_67.y, x_67.z), vec3<f32>(x_69.x, x_69.y, x_69.z));
  let x_74 : f32 = u_xlat15.x;
  u_xlat15.x = inverseSqrt(x_74);
  let x_77 : vec3<f32> = u_xlat15;
  let x_79 : vec4<f32> = vs_TEXCOORD3;
  u_xlat15 = (vec3<f32>(x_77.x, x_77.x, x_77.x) * vec3<f32>(x_79.x, x_79.y, x_79.z));
  let x_88 : vec4<f32> = vs_TEXCOORD0;
  let x_91 : f32 = x_43.x_GlobalMipBias.x;
  let x_92 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_88.z, x_88.w), x_91);
  u_xlat2 = vec3<f32>(x_92.x, x_92.y, x_92.z);
  let x_99 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_100 : vec2<f32> = vec2<f32>(x_99.x, x_99.y);
  let x_104 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_100.x, x_100.y));
  let x_105 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_104.x, x_104.y, x_105.z);
  let x_107 : vec3<f32> = u_xlat3;
  let x_109 : vec4<f32> = hlslcc_FragCoord;
  let x_111 : vec2<f32> = (vec2<f32>(x_107.x, x_107.y) * vec2<f32>(x_109.x, x_109.y));
  let x_112 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_111.x, x_111.y, x_112.z);
  let x_117 : f32 = u_xlat3.y;
  let x_120 : f32 = x_43.x_ScaleBiasRt.x;
  let x_123 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat44 = ((x_117 * x_120) + x_123);
  let x_125 : f32 = u_xlat44;
  u_xlat3.z = (-(x_125) + 1.0f);
  let x_130 : f32 = u_xlat1;
  u_xlat44 = ((-(x_130) * 0.959999979f) + 0.959999979f);
  let x_136 : f32 = u_xlat44;
  u_xlat17 = (-(x_136) + 1.0f);
  let x_140 : vec4<f32> = u_xlat0;
  let x_142 : f32 = u_xlat44;
  u_xlat4 = (vec3<f32>(x_140.x, x_140.y, x_140.z) * vec3<f32>(x_142, x_142, x_142));
  let x_145 : vec4<f32> = u_xlat0;
  let x_149 : vec3<f32> = (vec3<f32>(x_145.x, x_145.y, x_145.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_150 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_149.x, x_149.y, x_149.z, x_150.w);
  let x_152 : f32 = u_xlat1;
  let x_154 : vec4<f32> = u_xlat0;
  let x_159 : vec3<f32> = ((vec3<f32>(x_152, x_152, x_152) * vec3<f32>(x_154.x, x_154.y, x_154.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_160 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_159.x, x_159.y, x_159.z, x_160.w);
  let x_163 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_163) + 1.0f);
  let x_166 : f32 = u_xlat1;
  let x_167 : f32 = u_xlat1;
  u_xlat44 = (x_166 * x_167);
  let x_169 : f32 = u_xlat44;
  u_xlat44 = max(x_169, 0.0078125f);
  let x_173 : f32 = u_xlat44;
  let x_174 : f32 = u_xlat44;
  u_xlat45 = (x_173 * x_174);
  let x_178 : f32 = u_xlat0.w;
  let x_179 : f32 = u_xlat17;
  u_xlat42 = (x_178 + x_179);
  let x_181 : f32 = u_xlat42;
  u_xlat42 = clamp(x_181, 0.0f, 1.0f);
  let x_184 : f32 = u_xlat44;
  u_xlat17 = ((x_184 * 4.0f) + 2.0f);
  let x_194 : vec3<f32> = u_xlat3;
  let x_197 : f32 = x_43.x_GlobalMipBias.x;
  let x_198 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_194.x, x_194.z), x_197);
  u_xlat3.x = x_198.x;
  let x_203 : f32 = u_xlat3.x;
  u_xlat31 = (x_203 + -1.0f);
  let x_208 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_209 : f32 = u_xlat31;
  u_xlat31 = ((x_208 * x_209) + 1.0f);
  let x_213 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_213, 1.0f);
  let x_218 : vec4<f32> = vs_TEXCOORD8;
  let x_219 : vec2<f32> = vec2<f32>(x_218.x, x_218.y);
  let x_221 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_219.x, x_219.y, x_221);
  let x_234 : vec3<f32> = txVec0;
  let x_236 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_234.xy, x_234.z);
  u_xlat46 = x_236;
  let x_246 : f32 = x_243.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_246) + 1.0f);
  let x_250 : f32 = u_xlat46;
  let x_252 : f32 = x_243.x_MainLightShadowParams.x;
  let x_255 : f32 = u_xlat5.x;
  u_xlat46 = ((x_250 * x_252) + x_255);
  let x_261 : f32 = vs_TEXCOORD8.z;
  u_xlatb5 = (0.0f >= x_261);
  let x_265 : f32 = vs_TEXCOORD8.z;
  u_xlatb19 = (x_265 >= 1.0f);
  let x_267 : bool = u_xlatb19;
  let x_268 : bool = u_xlatb5;
  u_xlatb5 = (x_267 | x_268);
  let x_270 : bool = u_xlatb5;
  let x_271 : f32 = u_xlat46;
  u_xlat46 = select(x_271, 1.0f, x_270);
  let x_275 : vec3<f32> = vs_TEXCOORD7;
  let x_279 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_281 : vec3<f32> = (x_275 + -(x_279));
  let x_282 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_281.x, x_281.y, x_281.z, x_282.w);
  let x_284 : vec4<f32> = u_xlat5;
  let x_286 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_284.x, x_284.y, x_284.z), vec3<f32>(x_286.x, x_286.y, x_286.z));
  let x_291 : f32 = u_xlat5.x;
  let x_293 : f32 = x_243.x_MainLightShadowParams.z;
  let x_296 : f32 = x_243.x_MainLightShadowParams.w;
  u_xlat5.x = ((x_291 * x_293) + x_296);
  let x_300 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_300, 0.0f, 1.0f);
  let x_304 : f32 = u_xlat46;
  u_xlat19 = (-(x_304) + 1.0f);
  let x_308 : f32 = u_xlat5.x;
  let x_309 : f32 = u_xlat19;
  let x_311 : f32 = u_xlat46;
  u_xlat46 = ((x_308 * x_309) + x_311);
  let x_320 : f32 = x_317.x_MainLightCookieTextureFormat;
  u_xlatb5 = !((x_320 == -1.0f));
  let x_322 : bool = u_xlatb5;
  if (x_322) {
    let x_325 : vec3<f32> = vs_TEXCOORD7;
    let x_328 : vec4<f32> = x_317.x_MainLightWorldToLight[1i];
    let x_330 : vec2<f32> = (vec2<f32>(x_325.y, x_325.y) * vec2<f32>(x_328.x, x_328.y));
    let x_331 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_330.x, x_330.y, x_331.z, x_331.w);
    let x_334 : vec4<f32> = x_317.x_MainLightWorldToLight[0i];
    let x_336 : vec3<f32> = vs_TEXCOORD7;
    let x_339 : vec4<f32> = u_xlat5;
    let x_341 : vec2<f32> = ((vec2<f32>(x_334.x, x_334.y) * vec2<f32>(x_336.x, x_336.x)) + vec2<f32>(x_339.x, x_339.y));
    let x_342 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_341.x, x_341.y, x_342.z, x_342.w);
    let x_345 : vec4<f32> = x_317.x_MainLightWorldToLight[2i];
    let x_347 : vec3<f32> = vs_TEXCOORD7;
    let x_350 : vec4<f32> = u_xlat5;
    let x_352 : vec2<f32> = ((vec2<f32>(x_345.x, x_345.y) * vec2<f32>(x_347.z, x_347.z)) + vec2<f32>(x_350.x, x_350.y));
    let x_353 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_352.x, x_352.y, x_353.z, x_353.w);
    let x_355 : vec4<f32> = u_xlat5;
    let x_359 : vec4<f32> = x_317.x_MainLightWorldToLight[3i];
    let x_361 : vec2<f32> = (vec2<f32>(x_355.x, x_355.y) + vec2<f32>(x_359.x, x_359.y));
    let x_362 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_361.x, x_361.y, x_362.z, x_362.w);
    let x_364 : vec4<f32> = u_xlat5;
    let x_369 : vec2<f32> = ((vec2<f32>(x_364.x, x_364.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_370 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_369.x, x_369.y, x_370.z, x_370.w);
    let x_377 : vec4<f32> = u_xlat5;
    let x_380 : f32 = x_43.x_GlobalMipBias.x;
    let x_381 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_377.x, x_377.y), x_380);
    u_xlat5 = x_381;
    let x_386 : f32 = x_317.x_MainLightCookieTextureFormat;
    let x_388 : f32 = x_317.x_MainLightCookieTextureFormat;
    let x_390 : f32 = x_317.x_MainLightCookieTextureFormat;
    let x_392 : f32 = x_317.x_MainLightCookieTextureFormat;
    let x_393 : vec4<f32> = vec4<f32>(x_386, x_388, x_390, x_392);
    let x_401 : vec4<bool> = (vec4<f32>(x_393.x, x_393.y, x_393.z, x_393.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb6 = vec2<bool>(x_401.x, x_401.y);
    let x_405 : bool = u_xlatb6.y;
    if (x_405) {
      let x_410 : f32 = u_xlat5.w;
      x_406 = x_410;
    } else {
      let x_413 : f32 = u_xlat5.x;
      x_406 = x_413;
    }
    let x_414 : f32 = x_406;
    u_xlat47 = x_414;
    let x_416 : bool = u_xlatb6.x;
    if (x_416) {
      let x_420 : vec4<f32> = u_xlat5;
      x_417 = vec3<f32>(x_420.x, x_420.y, x_420.z);
    } else {
      let x_423 : f32 = u_xlat47;
      x_417 = vec3<f32>(x_423, x_423, x_423);
    }
    let x_425 : vec3<f32> = x_417;
    let x_426 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_425.x, x_425.y, x_425.z, x_426.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_432 : vec4<f32> = u_xlat5;
  let x_435 : vec4<f32> = x_43.x_MainLightColor;
  let x_437 : vec3<f32> = (vec3<f32>(x_432.x, x_432.y, x_432.z) * vec3<f32>(x_435.x, x_435.y, x_435.z));
  let x_438 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_437.x, x_437.y, x_437.z, x_438.w);
  let x_440 : f32 = u_xlat31;
  let x_442 : vec4<f32> = u_xlat5;
  let x_444 : vec3<f32> = (vec3<f32>(x_440, x_440, x_440) * vec3<f32>(x_442.x, x_442.y, x_442.z));
  let x_445 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_444.x, x_444.y, x_444.z, x_445.w);
  let x_449 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_449;
  let x_453 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_453;
  let x_457 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_457;
  let x_459 : vec3<f32> = u_xlat6;
  let x_461 : vec3<f32> = u_xlat15;
  u_xlat47 = dot(-(x_459), x_461);
  let x_463 : f32 = u_xlat47;
  let x_464 : f32 = u_xlat47;
  u_xlat47 = (x_463 + x_464);
  let x_467 : vec3<f32> = u_xlat15;
  let x_468 : f32 = u_xlat47;
  let x_472 : vec3<f32> = u_xlat6;
  let x_474 : vec3<f32> = ((x_467 * -(vec3<f32>(x_468, x_468, x_468))) + -(x_472));
  let x_475 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_474.x, x_474.y, x_474.z, x_475.w);
  let x_477 : vec3<f32> = u_xlat15;
  let x_478 : vec3<f32> = u_xlat6;
  u_xlat47 = dot(x_477, x_478);
  let x_480 : f32 = u_xlat47;
  u_xlat47 = clamp(x_480, 0.0f, 1.0f);
  let x_482 : f32 = u_xlat47;
  u_xlat47 = (-(x_482) + 1.0f);
  let x_485 : f32 = u_xlat47;
  let x_486 : f32 = u_xlat47;
  u_xlat47 = (x_485 * x_486);
  let x_488 : f32 = u_xlat47;
  let x_489 : f32 = u_xlat47;
  u_xlat47 = (x_488 * x_489);
  let x_492 : f32 = u_xlat1;
  u_xlat48 = ((-(x_492) * 0.699999988f) + 1.700000048f);
  let x_498 : f32 = u_xlat1;
  let x_499 : f32 = u_xlat48;
  u_xlat1 = (x_498 * x_499);
  let x_501 : f32 = u_xlat1;
  u_xlat1 = (x_501 * 6.0f);
  let x_512 : vec4<f32> = u_xlat7;
  let x_514 : f32 = u_xlat1;
  let x_515 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_512.x, x_512.y, x_512.z), x_514);
  u_xlat7 = x_515;
  let x_517 : f32 = u_xlat7.w;
  u_xlat1 = (x_517 + -1.0f);
  let x_524 : f32 = x_522.unity_SpecCube0_HDR.w;
  let x_525 : f32 = u_xlat1;
  u_xlat1 = ((x_524 * x_525) + 1.0f);
  let x_528 : f32 = u_xlat1;
  u_xlat1 = max(x_528, 0.0f);
  let x_530 : f32 = u_xlat1;
  u_xlat1 = log2(x_530);
  let x_532 : f32 = u_xlat1;
  let x_534 : f32 = x_522.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_532 * x_534);
  let x_536 : f32 = u_xlat1;
  u_xlat1 = exp2(x_536);
  let x_538 : f32 = u_xlat1;
  let x_540 : f32 = x_522.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_538 * x_540);
  let x_542 : vec4<f32> = u_xlat7;
  let x_544 : f32 = u_xlat1;
  let x_546 : vec3<f32> = (vec3<f32>(x_542.x, x_542.y, x_542.z) * vec3<f32>(x_544, x_544, x_544));
  let x_547 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_546.x, x_546.y, x_546.z, x_547.w);
  let x_551 : f32 = u_xlat44;
  let x_553 : f32 = u_xlat44;
  u_xlat8 = ((vec2<f32>(x_551, x_551) * vec2<f32>(x_553, x_553)) + vec2<f32>(-1.0f, 1.0f));
  let x_559 : f32 = u_xlat8.y;
  u_xlat1 = (1.0f / x_559);
  let x_562 : vec4<f32> = u_xlat0;
  let x_565 : f32 = u_xlat42;
  u_xlat22 = (-(vec3<f32>(x_562.x, x_562.y, x_562.z)) + vec3<f32>(x_565, x_565, x_565));
  let x_568 : f32 = u_xlat47;
  let x_570 : vec3<f32> = u_xlat22;
  let x_572 : vec4<f32> = u_xlat0;
  u_xlat22 = ((vec3<f32>(x_568, x_568, x_568) * x_570) + vec3<f32>(x_572.x, x_572.y, x_572.z));
  let x_575 : f32 = u_xlat1;
  let x_577 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_575, x_575, x_575) * x_577);
  let x_579 : vec4<f32> = u_xlat7;
  let x_581 : vec3<f32> = u_xlat22;
  let x_582 : vec3<f32> = (vec3<f32>(x_579.x, x_579.y, x_579.z) * x_581);
  let x_583 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_582.x, x_582.y, x_582.z, x_583.w);
  let x_585 : vec3<f32> = u_xlat2;
  let x_586 : vec3<f32> = u_xlat4;
  let x_588 : vec4<f32> = u_xlat7;
  u_xlat2 = ((x_585 * x_586) + vec3<f32>(x_588.x, x_588.y, x_588.z));
  let x_591 : f32 = u_xlat46;
  let x_594 : f32 = x_522.unity_LightData.z;
  u_xlat42 = (x_591 * x_594);
  let x_596 : vec3<f32> = u_xlat15;
  let x_598 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat1 = dot(x_596, vec3<f32>(x_598.x, x_598.y, x_598.z));
  let x_601 : f32 = u_xlat1;
  u_xlat1 = clamp(x_601, 0.0f, 1.0f);
  let x_603 : f32 = u_xlat42;
  let x_604 : f32 = u_xlat1;
  u_xlat42 = (x_603 * x_604);
  let x_606 : f32 = u_xlat42;
  let x_608 : vec4<f32> = u_xlat5;
  let x_610 : vec3<f32> = (vec3<f32>(x_606, x_606, x_606) * vec3<f32>(x_608.x, x_608.y, x_608.z));
  let x_611 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_610.x, x_610.y, x_610.z, x_611.w);
  let x_613 : vec3<f32> = u_xlat6;
  let x_615 : vec4<f32> = x_43.x_MainLightPosition;
  let x_617 : vec3<f32> = (x_613 + vec3<f32>(x_615.x, x_615.y, x_615.z));
  let x_618 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
  let x_620 : vec4<f32> = u_xlat7;
  let x_622 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_620.x, x_620.y, x_620.z), vec3<f32>(x_622.x, x_622.y, x_622.z));
  let x_625 : f32 = u_xlat42;
  u_xlat42 = max(x_625, 1.17549435e-37f);
  let x_628 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_628);
  let x_630 : f32 = u_xlat42;
  let x_632 : vec4<f32> = u_xlat7;
  let x_634 : vec3<f32> = (vec3<f32>(x_630, x_630, x_630) * vec3<f32>(x_632.x, x_632.y, x_632.z));
  let x_635 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_634.x, x_634.y, x_634.z, x_635.w);
  let x_637 : vec3<f32> = u_xlat15;
  let x_638 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(x_637, vec3<f32>(x_638.x, x_638.y, x_638.z));
  let x_641 : f32 = u_xlat42;
  u_xlat42 = clamp(x_641, 0.0f, 1.0f);
  let x_644 : vec4<f32> = x_43.x_MainLightPosition;
  let x_646 : vec4<f32> = u_xlat7;
  u_xlat1 = dot(vec3<f32>(x_644.x, x_644.y, x_644.z), vec3<f32>(x_646.x, x_646.y, x_646.z));
  let x_649 : f32 = u_xlat1;
  u_xlat1 = clamp(x_649, 0.0f, 1.0f);
  let x_651 : f32 = u_xlat42;
  let x_652 : f32 = u_xlat42;
  u_xlat42 = (x_651 * x_652);
  let x_654 : f32 = u_xlat42;
  let x_656 : f32 = u_xlat8.x;
  u_xlat42 = ((x_654 * x_656) + 1.000010014f);
  let x_660 : f32 = u_xlat1;
  let x_661 : f32 = u_xlat1;
  u_xlat1 = (x_660 * x_661);
  let x_663 : f32 = u_xlat42;
  let x_664 : f32 = u_xlat42;
  u_xlat42 = (x_663 * x_664);
  let x_666 : f32 = u_xlat1;
  u_xlat1 = max(x_666, 0.100000001f);
  let x_669 : f32 = u_xlat42;
  let x_670 : f32 = u_xlat1;
  u_xlat42 = (x_669 * x_670);
  let x_672 : f32 = u_xlat17;
  let x_673 : f32 = u_xlat42;
  u_xlat42 = (x_672 * x_673);
  let x_675 : f32 = u_xlat45;
  let x_676 : f32 = u_xlat42;
  u_xlat42 = (x_675 / x_676);
  let x_678 : vec4<f32> = u_xlat0;
  let x_680 : f32 = u_xlat42;
  let x_683 : vec3<f32> = u_xlat4;
  let x_684 : vec3<f32> = ((vec3<f32>(x_678.x, x_678.y, x_678.z) * vec3<f32>(x_680, x_680, x_680)) + x_683);
  let x_685 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_684.x, x_684.y, x_684.z, x_685.w);
  let x_687 : vec4<f32> = u_xlat5;
  let x_689 : vec4<f32> = u_xlat7;
  let x_691 : vec3<f32> = (vec3<f32>(x_687.x, x_687.y, x_687.z) * vec3<f32>(x_689.x, x_689.y, x_689.z));
  let x_692 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_691.x, x_691.y, x_691.z, x_692.w);
  let x_695 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_697 : f32 = x_522.unity_LightData.y;
  u_xlat42 = min(x_695, x_697);
  let x_701 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_701));
  let x_706 : f32 = x_317.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_708 : f32 = x_317.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_710 : f32 = x_317.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_712 : f32 = x_317.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_713 : vec4<f32> = vec4<f32>(x_706, x_708, x_710, x_712);
  let x_719 : vec4<bool> = (vec4<f32>(x_713.x, x_713.y, x_713.z, x_713.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_719.x, x_719.y);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_730 : u32 = u_xlatu_loop_1;
    let x_731 : u32 = u_xlatu42;
    if ((x_730 < x_731)) {
    } else {
      break;
    }
    let x_734 : u32 = u_xlatu_loop_1;
    u_xlatu44 = (x_734 >> 2u);
    let x_738 : u32 = u_xlatu_loop_1;
    u_xlati46 = bitcast<i32>((x_738 & 3u));
    let x_741 : u32 = u_xlatu44;
    let x_744 : vec4<f32> = x_522.unity_LightIndices[bitcast<i32>(x_741)];
    let x_754 : i32 = u_xlati46;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_759 : vec4<u32> = indexable[x_754];
    u_xlat44 = dot(x_744, bitcast<vec4<f32>>(x_759));
    let x_762 : f32 = u_xlat44;
    u_xlatu44 = bitcast<u32>(i32(x_762));
    let x_766 : vec3<f32> = vs_TEXCOORD7;
    let x_778 : u32 = u_xlatu44;
    let x_781 : vec4<f32> = x_777.x_AdditionalLightsPosition[bitcast<i32>(x_778)];
    let x_784 : u32 = u_xlatu44;
    let x_787 : vec4<f32> = x_777.x_AdditionalLightsPosition[bitcast<i32>(x_784)];
    u_xlat9 = ((-(x_766) * vec3<f32>(x_781.w, x_781.w, x_781.w)) + vec3<f32>(x_787.x, x_787.y, x_787.z));
    let x_790 : vec3<f32> = u_xlat9;
    let x_791 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(x_790, x_791);
    let x_793 : f32 = u_xlat46;
    u_xlat46 = max(x_793, 6.10351562e-05f);
    let x_796 : f32 = u_xlat46;
    u_xlat47 = inverseSqrt(x_796);
    let x_799 : f32 = u_xlat47;
    let x_801 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_799, x_799, x_799) * x_801);
    let x_803 : f32 = u_xlat46;
    u_xlat48 = (1.0f / x_803);
    let x_805 : f32 = u_xlat46;
    let x_806 : u32 = u_xlatu44;
    let x_809 : f32 = x_777.x_AdditionalLightsAttenuation[bitcast<i32>(x_806)].x;
    u_xlat46 = (x_805 * x_809);
    let x_811 : f32 = u_xlat46;
    let x_813 : f32 = u_xlat46;
    u_xlat46 = ((-(x_811) * x_813) + 1.0f);
    let x_816 : f32 = u_xlat46;
    u_xlat46 = max(x_816, 0.0f);
    let x_818 : f32 = u_xlat46;
    let x_819 : f32 = u_xlat46;
    u_xlat46 = (x_818 * x_819);
    let x_821 : f32 = u_xlat46;
    let x_822 : f32 = u_xlat48;
    u_xlat46 = (x_821 * x_822);
    let x_824 : u32 = u_xlatu44;
    let x_827 : vec4<f32> = x_777.x_AdditionalLightsSpotDir[bitcast<i32>(x_824)];
    let x_829 : vec3<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_827.x, x_827.y, x_827.z), x_829);
    let x_831 : f32 = u_xlat48;
    let x_832 : u32 = u_xlatu44;
    let x_835 : f32 = x_777.x_AdditionalLightsAttenuation[bitcast<i32>(x_832)].z;
    let x_837 : u32 = u_xlatu44;
    let x_840 : f32 = x_777.x_AdditionalLightsAttenuation[bitcast<i32>(x_837)].w;
    u_xlat48 = ((x_831 * x_835) + x_840);
    let x_842 : f32 = u_xlat48;
    u_xlat48 = clamp(x_842, 0.0f, 1.0f);
    let x_844 : f32 = u_xlat48;
    let x_845 : f32 = u_xlat48;
    u_xlat48 = (x_844 * x_845);
    let x_847 : f32 = u_xlat46;
    let x_848 : f32 = u_xlat48;
    u_xlat46 = (x_847 * x_848);
    let x_851 : u32 = u_xlatu44;
    u_xlatu48 = (x_851 >> 5u);
    let x_854 : u32 = u_xlatu44;
    u_xlati35 = (1i << bitcast<u32>((bitcast<i32>(x_854) & 31i)));
    let x_860 : i32 = u_xlati35;
    let x_862 : u32 = u_xlatu48;
    let x_865 : f32 = x_317.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_862)].el;
    u_xlati48 = bitcast<i32>((bitcast<u32>(x_860) & bitcast<u32>(x_865)));
    let x_869 : i32 = u_xlati48;
    if ((x_869 != 0i)) {
      let x_879 : u32 = u_xlatu44;
      let x_882 : f32 = x_878.x_AdditionalLightsLightTypes[bitcast<i32>(x_879)].el;
      u_xlati48 = i32(x_882);
      let x_884 : i32 = u_xlati48;
      u_xlati35 = select(1i, 0i, (x_884 != 0i));
      let x_888 : u32 = u_xlatu44;
      u_xlati49 = (bitcast<i32>(x_888) << bitcast<u32>(2i));
      let x_891 : i32 = u_xlati35;
      if ((x_891 != 0i)) {
        let x_896 : vec3<f32> = vs_TEXCOORD7;
        let x_898 : i32 = u_xlati49;
        let x_901 : i32 = u_xlati49;
        let x_905 : vec4<f32> = x_878.x_AdditionalLightsWorldToLights[((x_898 + 1i) / 4i)][((x_901 + 1i) % 4i)];
        let x_907 : vec3<f32> = (vec3<f32>(x_896.y, x_896.y, x_896.y) * vec3<f32>(x_905.x, x_905.y, x_905.w));
        let x_908 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_907.x, x_907.y, x_907.z, x_908.w);
        let x_910 : i32 = u_xlati49;
        let x_912 : i32 = u_xlati49;
        let x_915 : vec4<f32> = x_878.x_AdditionalLightsWorldToLights[(x_910 / 4i)][(x_912 % 4i)];
        let x_917 : vec3<f32> = vs_TEXCOORD7;
        let x_920 : vec4<f32> = u_xlat11;
        let x_922 : vec3<f32> = ((vec3<f32>(x_915.x, x_915.y, x_915.w) * vec3<f32>(x_917.x, x_917.x, x_917.x)) + vec3<f32>(x_920.x, x_920.y, x_920.z));
        let x_923 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_922.x, x_922.y, x_922.z, x_923.w);
        let x_925 : i32 = u_xlati49;
        let x_928 : i32 = u_xlati49;
        let x_932 : vec4<f32> = x_878.x_AdditionalLightsWorldToLights[((x_925 + 2i) / 4i)][((x_928 + 2i) % 4i)];
        let x_934 : vec3<f32> = vs_TEXCOORD7;
        let x_937 : vec4<f32> = u_xlat11;
        let x_939 : vec3<f32> = ((vec3<f32>(x_932.x, x_932.y, x_932.w) * vec3<f32>(x_934.z, x_934.z, x_934.z)) + vec3<f32>(x_937.x, x_937.y, x_937.z));
        let x_940 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_939.x, x_939.y, x_939.z, x_940.w);
        let x_942 : vec4<f32> = u_xlat11;
        let x_944 : i32 = u_xlati49;
        let x_947 : i32 = u_xlati49;
        let x_951 : vec4<f32> = x_878.x_AdditionalLightsWorldToLights[((x_944 + 3i) / 4i)][((x_947 + 3i) % 4i)];
        let x_953 : vec3<f32> = (vec3<f32>(x_942.x, x_942.y, x_942.z) + vec3<f32>(x_951.x, x_951.y, x_951.w));
        let x_954 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_953.x, x_953.y, x_953.z, x_954.w);
        let x_956 : vec4<f32> = u_xlat11;
        let x_958 : vec4<f32> = u_xlat11;
        let x_960 : vec2<f32> = (vec2<f32>(x_956.x, x_956.y) / vec2<f32>(x_958.z, x_958.z));
        let x_961 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_960.x, x_960.y, x_961.z, x_961.w);
        let x_963 : vec4<f32> = u_xlat11;
        let x_966 : vec2<f32> = ((vec2<f32>(x_963.x, x_963.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_967 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_966.x, x_966.y, x_967.z, x_967.w);
        let x_969 : vec4<f32> = u_xlat11;
        let x_973 : vec2<f32> = clamp(vec2<f32>(x_969.x, x_969.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_974 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_973.x, x_973.y, x_974.z, x_974.w);
        let x_976 : u32 = u_xlatu44;
        let x_979 : vec4<f32> = x_878.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_976)];
        let x_981 : vec4<f32> = u_xlat11;
        let x_984 : u32 = u_xlatu44;
        let x_987 : vec4<f32> = x_878.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_984)];
        let x_989 : vec2<f32> = ((vec2<f32>(x_979.x, x_979.y) * vec2<f32>(x_981.x, x_981.y)) + vec2<f32>(x_987.z, x_987.w));
        let x_990 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_989.x, x_989.y, x_990.z, x_990.w);
      } else {
        let x_994 : i32 = u_xlati48;
        u_xlatb48 = (x_994 == 1i);
        let x_996 : bool = u_xlatb48;
        u_xlati48 = select(0i, 1i, x_996);
        let x_998 : i32 = u_xlati48;
        if ((x_998 != 0i)) {
          let x_1003 : vec3<f32> = vs_TEXCOORD7;
          let x_1005 : i32 = u_xlati49;
          let x_1008 : i32 = u_xlati49;
          let x_1012 : vec4<f32> = x_878.x_AdditionalLightsWorldToLights[((x_1005 + 1i) / 4i)][((x_1008 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1003.y, x_1003.y) * vec2<f32>(x_1012.x, x_1012.y));
          let x_1015 : i32 = u_xlati49;
          let x_1017 : i32 = u_xlati49;
          let x_1020 : vec4<f32> = x_878.x_AdditionalLightsWorldToLights[(x_1015 / 4i)][(x_1017 % 4i)];
          let x_1022 : vec3<f32> = vs_TEXCOORD7;
          let x_1025 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1020.x, x_1020.y) * vec2<f32>(x_1022.x, x_1022.x)) + x_1025);
          let x_1027 : i32 = u_xlati49;
          let x_1030 : i32 = u_xlati49;
          let x_1034 : vec4<f32> = x_878.x_AdditionalLightsWorldToLights[((x_1027 + 2i) / 4i)][((x_1030 + 2i) % 4i)];
          let x_1036 : vec3<f32> = vs_TEXCOORD7;
          let x_1039 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1034.x, x_1034.y) * vec2<f32>(x_1036.z, x_1036.z)) + x_1039);
          let x_1041 : vec2<f32> = u_xlat39;
          let x_1042 : i32 = u_xlati49;
          let x_1045 : i32 = u_xlati49;
          let x_1049 : vec4<f32> = x_878.x_AdditionalLightsWorldToLights[((x_1042 + 3i) / 4i)][((x_1045 + 3i) % 4i)];
          u_xlat39 = (x_1041 + vec2<f32>(x_1049.x, x_1049.y));
          let x_1052 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1052 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1055 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1055);
          let x_1057 : u32 = u_xlatu44;
          let x_1060 : vec4<f32> = x_878.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1057)];
          let x_1062 : vec2<f32> = u_xlat39;
          let x_1064 : u32 = u_xlatu44;
          let x_1067 : vec4<f32> = x_878.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1064)];
          let x_1069 : vec2<f32> = ((vec2<f32>(x_1060.x, x_1060.y) * x_1062) + vec2<f32>(x_1067.z, x_1067.w));
          let x_1070 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1069.x, x_1069.y, x_1070.z, x_1070.w);
        } else {
          let x_1074 : vec3<f32> = vs_TEXCOORD7;
          let x_1076 : i32 = u_xlati49;
          let x_1079 : i32 = u_xlati49;
          let x_1083 : vec4<f32> = x_878.x_AdditionalLightsWorldToLights[((x_1076 + 1i) / 4i)][((x_1079 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1074.y, x_1074.y, x_1074.y, x_1074.y) * x_1083);
          let x_1085 : i32 = u_xlati49;
          let x_1087 : i32 = u_xlati49;
          let x_1090 : vec4<f32> = x_878.x_AdditionalLightsWorldToLights[(x_1085 / 4i)][(x_1087 % 4i)];
          let x_1091 : vec3<f32> = vs_TEXCOORD7;
          let x_1094 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1090 * vec4<f32>(x_1091.x, x_1091.x, x_1091.x, x_1091.x)) + x_1094);
          let x_1096 : i32 = u_xlati49;
          let x_1099 : i32 = u_xlati49;
          let x_1103 : vec4<f32> = x_878.x_AdditionalLightsWorldToLights[((x_1096 + 2i) / 4i)][((x_1099 + 2i) % 4i)];
          let x_1104 : vec3<f32> = vs_TEXCOORD7;
          let x_1107 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1103 * vec4<f32>(x_1104.z, x_1104.z, x_1104.z, x_1104.z)) + x_1107);
          let x_1109 : vec4<f32> = u_xlat12;
          let x_1110 : i32 = u_xlati49;
          let x_1113 : i32 = u_xlati49;
          let x_1117 : vec4<f32> = x_878.x_AdditionalLightsWorldToLights[((x_1110 + 3i) / 4i)][((x_1113 + 3i) % 4i)];
          u_xlat12 = (x_1109 + x_1117);
          let x_1119 : vec4<f32> = u_xlat12;
          let x_1121 : vec4<f32> = u_xlat12;
          let x_1123 : vec3<f32> = (vec3<f32>(x_1119.x, x_1119.y, x_1119.z) / vec3<f32>(x_1121.w, x_1121.w, x_1121.w));
          let x_1124 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1123.x, x_1123.y, x_1123.z, x_1124.w);
          let x_1126 : vec4<f32> = u_xlat12;
          let x_1128 : vec4<f32> = u_xlat12;
          u_xlat48 = dot(vec3<f32>(x_1126.x, x_1126.y, x_1126.z), vec3<f32>(x_1128.x, x_1128.y, x_1128.z));
          let x_1131 : f32 = u_xlat48;
          u_xlat48 = inverseSqrt(x_1131);
          let x_1133 : f32 = u_xlat48;
          let x_1135 : vec4<f32> = u_xlat12;
          let x_1137 : vec3<f32> = (vec3<f32>(x_1133, x_1133, x_1133) * vec3<f32>(x_1135.x, x_1135.y, x_1135.z));
          let x_1138 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1137.x, x_1137.y, x_1137.z, x_1138.w);
          let x_1140 : vec4<f32> = u_xlat12;
          u_xlat48 = dot(abs(vec3<f32>(x_1140.x, x_1140.y, x_1140.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1145 : f32 = u_xlat48;
          u_xlat48 = max(x_1145, 0.000001f);
          let x_1148 : f32 = u_xlat48;
          u_xlat48 = (1.0f / x_1148);
          let x_1151 : f32 = u_xlat48;
          let x_1153 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1151, x_1151, x_1151) * vec3<f32>(x_1153.z, x_1153.x, x_1153.y));
          let x_1157 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1157);
          let x_1161 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1161, 0.0f, 1.0f);
          let x_1165 : vec3<f32> = u_xlat13;
          let x_1168 : vec4<bool> = (vec4<f32>(x_1165.y, x_1165.z, x_1165.y, x_1165.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb35 = vec2<bool>(x_1168.x, x_1168.y);
          let x_1172 : bool = u_xlatb35.x;
          if (x_1172) {
            let x_1177 : f32 = u_xlat13.x;
            x_1173 = x_1177;
          } else {
            let x_1180 : f32 = u_xlat13.x;
            x_1173 = -(x_1180);
          }
          let x_1182 : f32 = x_1173;
          u_xlat35.x = x_1182;
          let x_1185 : bool = u_xlatb35.y;
          if (x_1185) {
            let x_1190 : f32 = u_xlat13.x;
            x_1186 = x_1190;
          } else {
            let x_1193 : f32 = u_xlat13.x;
            x_1186 = -(x_1193);
          }
          let x_1195 : f32 = x_1186;
          u_xlat35.y = x_1195;
          let x_1197 : vec4<f32> = u_xlat12;
          let x_1199 : f32 = u_xlat48;
          let x_1202 : vec2<f32> = u_xlat35;
          u_xlat35 = ((vec2<f32>(x_1197.x, x_1197.y) * vec2<f32>(x_1199, x_1199)) + x_1202);
          let x_1204 : vec2<f32> = u_xlat35;
          u_xlat35 = ((x_1204 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1207 : vec2<f32> = u_xlat35;
          u_xlat35 = clamp(x_1207, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1211 : u32 = u_xlatu44;
          let x_1214 : vec4<f32> = x_878.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1211)];
          let x_1216 : vec2<f32> = u_xlat35;
          let x_1218 : u32 = u_xlatu44;
          let x_1221 : vec4<f32> = x_878.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1218)];
          let x_1223 : vec2<f32> = ((vec2<f32>(x_1214.x, x_1214.y) * x_1216) + vec2<f32>(x_1221.z, x_1221.w));
          let x_1224 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1223.x, x_1223.y, x_1224.z, x_1224.w);
        }
      }
      let x_1231 : vec4<f32> = u_xlat11;
      let x_1234 : f32 = x_43.x_GlobalMipBias.x;
      let x_1235 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1231.x, x_1231.y), x_1234);
      u_xlat11 = x_1235;
      let x_1237 : bool = u_xlatb7.y;
      if (x_1237) {
        let x_1242 : f32 = u_xlat11.w;
        x_1238 = x_1242;
      } else {
        let x_1245 : f32 = u_xlat11.x;
        x_1238 = x_1245;
      }
      let x_1246 : f32 = x_1238;
      u_xlat48 = x_1246;
      let x_1248 : bool = u_xlatb7.x;
      if (x_1248) {
        let x_1252 : vec4<f32> = u_xlat11;
        x_1249 = vec3<f32>(x_1252.x, x_1252.y, x_1252.z);
      } else {
        let x_1255 : f32 = u_xlat48;
        x_1249 = vec3<f32>(x_1255, x_1255, x_1255);
      }
      let x_1257 : vec3<f32> = x_1249;
      let x_1258 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1257.x, x_1257.y, x_1257.z, x_1258.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1264 : vec4<f32> = u_xlat11;
    let x_1266 : u32 = u_xlatu44;
    let x_1269 : vec4<f32> = x_777.x_AdditionalLightsColor[bitcast<i32>(x_1266)];
    let x_1271 : vec3<f32> = (vec3<f32>(x_1264.x, x_1264.y, x_1264.z) * vec3<f32>(x_1269.x, x_1269.y, x_1269.z));
    let x_1272 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1271.x, x_1271.y, x_1271.z, x_1272.w);
    let x_1274 : f32 = u_xlat31;
    let x_1276 : vec4<f32> = u_xlat11;
    let x_1278 : vec3<f32> = (vec3<f32>(x_1274, x_1274, x_1274) * vec3<f32>(x_1276.x, x_1276.y, x_1276.z));
    let x_1279 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1278.x, x_1278.y, x_1278.z, x_1279.w);
    let x_1281 : vec3<f32> = u_xlat15;
    let x_1282 : vec3<f32> = u_xlat10;
    u_xlat44 = dot(x_1281, x_1282);
    let x_1284 : f32 = u_xlat44;
    u_xlat44 = clamp(x_1284, 0.0f, 1.0f);
    let x_1286 : f32 = u_xlat44;
    let x_1287 : f32 = u_xlat46;
    u_xlat44 = (x_1286 * x_1287);
    let x_1289 : f32 = u_xlat44;
    let x_1291 : vec4<f32> = u_xlat11;
    let x_1293 : vec3<f32> = (vec3<f32>(x_1289, x_1289, x_1289) * vec3<f32>(x_1291.x, x_1291.y, x_1291.z));
    let x_1294 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1293.x, x_1293.y, x_1293.z, x_1294.w);
    let x_1296 : vec3<f32> = u_xlat9;
    let x_1297 : f32 = u_xlat47;
    let x_1300 : vec3<f32> = u_xlat6;
    u_xlat9 = ((x_1296 * vec3<f32>(x_1297, x_1297, x_1297)) + x_1300);
    let x_1302 : vec3<f32> = u_xlat9;
    let x_1303 : vec3<f32> = u_xlat9;
    u_xlat44 = dot(x_1302, x_1303);
    let x_1305 : f32 = u_xlat44;
    u_xlat44 = max(x_1305, 1.17549435e-37f);
    let x_1307 : f32 = u_xlat44;
    u_xlat44 = inverseSqrt(x_1307);
    let x_1309 : f32 = u_xlat44;
    let x_1311 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1309, x_1309, x_1309) * x_1311);
    let x_1313 : vec3<f32> = u_xlat15;
    let x_1314 : vec3<f32> = u_xlat9;
    u_xlat44 = dot(x_1313, x_1314);
    let x_1316 : f32 = u_xlat44;
    u_xlat44 = clamp(x_1316, 0.0f, 1.0f);
    let x_1318 : vec3<f32> = u_xlat10;
    let x_1319 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(x_1318, x_1319);
    let x_1321 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1321, 0.0f, 1.0f);
    let x_1323 : f32 = u_xlat44;
    let x_1324 : f32 = u_xlat44;
    u_xlat44 = (x_1323 * x_1324);
    let x_1326 : f32 = u_xlat44;
    let x_1328 : f32 = u_xlat8.x;
    u_xlat44 = ((x_1326 * x_1328) + 1.000010014f);
    let x_1331 : f32 = u_xlat46;
    let x_1332 : f32 = u_xlat46;
    u_xlat46 = (x_1331 * x_1332);
    let x_1334 : f32 = u_xlat44;
    let x_1335 : f32 = u_xlat44;
    u_xlat44 = (x_1334 * x_1335);
    let x_1337 : f32 = u_xlat46;
    u_xlat46 = max(x_1337, 0.100000001f);
    let x_1339 : f32 = u_xlat44;
    let x_1340 : f32 = u_xlat46;
    u_xlat44 = (x_1339 * x_1340);
    let x_1342 : f32 = u_xlat17;
    let x_1343 : f32 = u_xlat44;
    u_xlat44 = (x_1342 * x_1343);
    let x_1345 : f32 = u_xlat45;
    let x_1346 : f32 = u_xlat44;
    u_xlat44 = (x_1345 / x_1346);
    let x_1348 : vec4<f32> = u_xlat0;
    let x_1350 : f32 = u_xlat44;
    let x_1353 : vec3<f32> = u_xlat4;
    u_xlat9 = ((vec3<f32>(x_1348.x, x_1348.y, x_1348.z) * vec3<f32>(x_1350, x_1350, x_1350)) + x_1353);
    let x_1355 : vec3<f32> = u_xlat9;
    let x_1356 : vec4<f32> = u_xlat11;
    let x_1359 : vec3<f32> = u_xlat22;
    u_xlat22 = ((x_1355 * vec3<f32>(x_1356.x, x_1356.y, x_1356.z)) + x_1359);

    continuing {
      let x_1361 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1361 + bitcast<u32>(1i));
    }
  }
  let x_1363 : vec3<f32> = u_xlat2;
  let x_1364 : vec3<f32> = u_xlat3;
  let x_1367 : vec4<f32> = u_xlat5;
  let x_1369 : vec3<f32> = ((x_1363 * vec3<f32>(x_1364.x, x_1364.x, x_1364.x)) + vec3<f32>(x_1367.x, x_1367.y, x_1367.z));
  let x_1370 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1369.x, x_1369.y, x_1369.z, x_1370.w);
  let x_1374 : vec3<f32> = u_xlat22;
  let x_1375 : vec4<f32> = u_xlat0;
  let x_1377 : vec3<f32> = (x_1374 + vec3<f32>(x_1375.x, x_1375.y, x_1375.z));
  let x_1378 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1377.x, x_1377.y, x_1377.z, x_1378.w);
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

