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

type Arr_1 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_1,
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

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_55 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_87 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_281 : UnityPerDraw;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_517 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_765 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_867 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlatb2 : vec4<bool>;
  var u_xlatu2 : u32;
  var u_xlati2 : i32;
  var u_xlat12 : vec3<f32>;
  var u_xlat31 : f32;
  var u_xlat32 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatb12 : vec2<bool>;
  var u_xlatb22 : bool;
  var x_464 : f32;
  var u_xlat22 : f32;
  var x_601 : f32;
  var x_612 : vec3<f32>;
  var u_xlatu31 : u32;
  var u_xlatb4 : vec2<bool>;
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
  var x_1170 : f32;
  var x_1183 : f32;
  var x_1245 : f32;
  var x_1256 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb10 : bool;
  var x_1335 : f32;
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
  let x_64 : vec3<f32> = vs_TEXCOORD2;
  let x_65 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_64, x_65);
  let x_70 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_70);
  let x_73 : vec4<f32> = u_xlat1;
  let x_75 : vec3<f32> = vs_TEXCOORD2;
  let x_76 : vec3<f32> = (vec3<f32>(x_73.x, x_73.x, x_73.x) * x_75);
  let x_77 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_76.x, x_76.y, x_76.z, x_77.w);
  let x_81 : vec3<f32> = vs_TEXCOORD1;
  let x_89 : vec4<f32> = x_87.x_CascadeShadowSplitSpheres0;
  let x_92 : vec3<f32> = (x_81 + -(vec3<f32>(x_89.x, x_89.y, x_89.z)));
  let x_93 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_92.x, x_92.y, x_92.z, x_93.w);
  let x_96 : vec3<f32> = vs_TEXCOORD1;
  let x_99 : vec4<f32> = x_87.x_CascadeShadowSplitSpheres1;
  let x_102 : vec3<f32> = (x_96 + -(vec3<f32>(x_99.x, x_99.y, x_99.z)));
  let x_103 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_102.x, x_102.y, x_102.z, x_103.w);
  let x_106 : vec3<f32> = vs_TEXCOORD1;
  let x_109 : vec4<f32> = x_87.x_CascadeShadowSplitSpheres2;
  let x_112 : vec3<f32> = (x_106 + -(vec3<f32>(x_109.x, x_109.y, x_109.z)));
  let x_113 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_112.x, x_112.y, x_112.z, x_113.w);
  let x_117 : vec3<f32> = vs_TEXCOORD1;
  let x_120 : vec4<f32> = x_87.x_CascadeShadowSplitSpheres3;
  u_xlat5 = (x_117 + -(vec3<f32>(x_120.x, x_120.y, x_120.z)));
  let x_124 : vec4<f32> = u_xlat2;
  let x_126 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_124.x, x_124.y, x_124.z), vec3<f32>(x_126.x, x_126.y, x_126.z));
  let x_130 : vec4<f32> = u_xlat3;
  let x_132 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_130.x, x_130.y, x_130.z), vec3<f32>(x_132.x, x_132.y, x_132.z));
  let x_137 : vec4<f32> = u_xlat4;
  let x_139 : vec4<f32> = u_xlat4;
  u_xlat2.z = dot(vec3<f32>(x_137.x, x_137.y, x_137.z), vec3<f32>(x_139.x, x_139.y, x_139.z));
  let x_144 : vec3<f32> = u_xlat5;
  let x_145 : vec3<f32> = u_xlat5;
  u_xlat2.w = dot(x_144, x_145);
  let x_152 : vec4<f32> = u_xlat2;
  let x_155 : vec4<f32> = x_87.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_152 < x_155);
  let x_159 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_159);
  let x_164 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_164);
  let x_168 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_168);
  let x_172 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_172);
  let x_176 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_176);
  let x_182 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_182);
  let x_186 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_186);
  let x_189 : vec4<f32> = u_xlat2;
  let x_191 : vec4<f32> = u_xlat3;
  let x_193 : vec3<f32> = (vec3<f32>(x_189.x, x_189.y, x_189.z) + vec3<f32>(x_191.y, x_191.z, x_191.w));
  let x_194 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
  let x_196 : vec4<f32> = u_xlat2;
  let x_199 : vec3<f32> = max(vec3<f32>(x_196.x, x_196.y, x_196.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_200 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_200.x, x_199.x, x_199.y, x_199.z);
  let x_202 : vec4<f32> = u_xlat3;
  u_xlat2.x = dot(x_202, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_210 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_210) + 4.0f);
  let x_217 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_217);
  let x_221 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_221) << bitcast<u32>(2i));
  let x_225 : vec3<f32> = vs_TEXCOORD1;
  let x_228 : i32 = u_xlati2;
  let x_231 : i32 = u_xlati2;
  let x_235 : vec4<f32> = x_87.x_MainLightWorldToShadow[((x_228 + 1i) / 4i)][((x_231 + 1i) % 4i)];
  u_xlat12 = (vec3<f32>(x_225.y, x_225.y, x_225.y) * vec3<f32>(x_235.x, x_235.y, x_235.z));
  let x_238 : i32 = u_xlati2;
  let x_240 : i32 = u_xlati2;
  let x_243 : vec4<f32> = x_87.x_MainLightWorldToShadow[(x_238 / 4i)][(x_240 % 4i)];
  let x_245 : vec3<f32> = vs_TEXCOORD1;
  let x_248 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_243.x, x_243.y, x_243.z) * vec3<f32>(x_245.x, x_245.x, x_245.x)) + x_248);
  let x_250 : i32 = u_xlati2;
  let x_253 : i32 = u_xlati2;
  let x_257 : vec4<f32> = x_87.x_MainLightWorldToShadow[((x_250 + 2i) / 4i)][((x_253 + 2i) % 4i)];
  let x_259 : vec3<f32> = vs_TEXCOORD1;
  let x_262 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_257.x, x_257.y, x_257.z) * vec3<f32>(x_259.z, x_259.z, x_259.z)) + x_262);
  let x_264 : vec3<f32> = u_xlat12;
  let x_265 : i32 = u_xlati2;
  let x_268 : i32 = u_xlati2;
  let x_272 : vec4<f32> = x_87.x_MainLightWorldToShadow[((x_265 + 3i) / 4i)][((x_268 + 3i) % 4i)];
  let x_274 : vec3<f32> = (x_264 + vec3<f32>(x_272.x, x_272.y, x_272.z));
  let x_275 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_274.x, x_274.y, x_274.z, x_275.w);
  u_xlat1.w = 1.0f;
  let x_284 : vec4<f32> = x_281.unity_SHAr;
  let x_285 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_284, x_285);
  let x_290 : vec4<f32> = x_281.unity_SHAg;
  let x_291 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_290, x_291);
  let x_296 : vec4<f32> = x_281.unity_SHAb;
  let x_297 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_296, x_297);
  let x_300 : vec4<f32> = u_xlat1;
  let x_302 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_300.y, x_300.z, x_300.z, x_300.x) * vec4<f32>(x_302.x, x_302.y, x_302.z, x_302.z));
  let x_307 : vec4<f32> = x_281.unity_SHBr;
  let x_308 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_307, x_308);
  let x_313 : vec4<f32> = x_281.unity_SHBg;
  let x_314 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_313, x_314);
  let x_319 : vec4<f32> = x_281.unity_SHBb;
  let x_320 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_319, x_320);
  let x_325 : f32 = u_xlat1.y;
  let x_327 : f32 = u_xlat1.y;
  u_xlat31 = (x_325 * x_327);
  let x_330 : f32 = u_xlat1.x;
  let x_332 : f32 = u_xlat1.x;
  let x_334 : f32 = u_xlat31;
  u_xlat31 = ((x_330 * x_332) + -(x_334));
  let x_339 : vec4<f32> = x_281.unity_SHC;
  let x_341 : f32 = u_xlat31;
  let x_344 : vec3<f32> = u_xlat5;
  let x_345 : vec3<f32> = ((vec3<f32>(x_339.x, x_339.y, x_339.z) * vec3<f32>(x_341, x_341, x_341)) + x_344);
  let x_346 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
  let x_348 : vec4<f32> = u_xlat3;
  let x_350 : vec4<f32> = u_xlat4;
  let x_352 : vec3<f32> = (vec3<f32>(x_348.x, x_348.y, x_348.z) + vec3<f32>(x_350.x, x_350.y, x_350.z));
  let x_353 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_355 : vec4<f32> = u_xlat3;
  let x_357 : vec3<f32> = max(vec3<f32>(x_355.x, x_355.y, x_355.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_358 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_357.x, x_357.y, x_357.z, x_358.w);
  let x_362 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_363 : vec2<f32> = vec2<f32>(x_362.x, x_362.y);
  let x_367 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_363.x, x_363.y));
  let x_368 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_367.x, x_367.y, x_368.z, x_368.w);
  let x_370 : vec4<f32> = u_xlat4;
  let x_372 : vec4<f32> = hlslcc_FragCoord;
  let x_374 : vec2<f32> = (vec2<f32>(x_370.x, x_370.y) * vec2<f32>(x_372.x, x_372.y));
  let x_375 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_374.x, x_374.y, x_375.z, x_375.w);
  let x_378 : f32 = u_xlat4.y;
  let x_381 : f32 = x_43.x_ScaleBiasRt.x;
  let x_384 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat31 = ((x_378 * x_381) + x_384);
  let x_386 : f32 = u_xlat31;
  u_xlat4.z = (-(x_386) + 1.0f);
  let x_395 : vec4<f32> = u_xlat4;
  let x_398 : f32 = x_43.x_GlobalMipBias.x;
  let x_399 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_395.x, x_395.z), x_398);
  u_xlat31 = x_399.x;
  let x_402 : f32 = u_xlat31;
  u_xlat32 = (x_402 + -1.0f);
  let x_405 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_406 : f32 = u_xlat32;
  u_xlat32 = ((x_405 * x_406) + 1.0f);
  let x_409 : f32 = u_xlat31;
  u_xlat31 = min(x_409, 1.0f);
  let x_412 : vec4<f32> = u_xlat2;
  let x_413 : vec2<f32> = vec2<f32>(x_412.x, x_412.y);
  let x_415 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_413.x, x_413.y, x_415);
  let x_427 : vec3<f32> = txVec0;
  let x_429 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_427.xy, x_427.z);
  u_xlat2.x = x_429;
  let x_433 : f32 = x_87.x_MainLightShadowParams.x;
  u_xlat12.x = (-(x_433) + 1.0f);
  let x_438 : f32 = u_xlat2.x;
  let x_440 : f32 = x_87.x_MainLightShadowParams.x;
  let x_443 : f32 = u_xlat12.x;
  u_xlat2.x = ((x_438 * x_440) + x_443);
  let x_450 : f32 = u_xlat2.z;
  u_xlatb12.x = (0.0f >= x_450);
  let x_455 : f32 = u_xlat2.z;
  u_xlatb22 = (x_455 >= 1.0f);
  let x_457 : bool = u_xlatb22;
  let x_459 : bool = u_xlatb12.x;
  u_xlatb12.x = (x_457 | x_459);
  let x_463 : bool = u_xlatb12.x;
  if (x_463) {
    x_464 = 1.0f;
  } else {
    let x_469 : f32 = u_xlat2.x;
    x_464 = x_469;
  }
  let x_470 : f32 = x_464;
  u_xlat2.x = x_470;
  let x_472 : vec3<f32> = vs_TEXCOORD1;
  let x_476 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_478 : vec3<f32> = (x_472 + -(x_476));
  let x_479 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_478.x, x_478.y, x_478.z, x_479.w);
  let x_481 : vec4<f32> = u_xlat4;
  let x_483 : vec4<f32> = u_xlat4;
  u_xlat12.x = dot(vec3<f32>(x_481.x, x_481.y, x_481.z), vec3<f32>(x_483.x, x_483.y, x_483.z));
  let x_488 : f32 = u_xlat12.x;
  let x_490 : f32 = x_87.x_MainLightShadowParams.z;
  let x_493 : f32 = x_87.x_MainLightShadowParams.w;
  u_xlat12.x = ((x_488 * x_490) + x_493);
  let x_497 : f32 = u_xlat12.x;
  u_xlat12.x = clamp(x_497, 0.0f, 1.0f);
  let x_502 : f32 = u_xlat2.x;
  u_xlat22 = (-(x_502) + 1.0f);
  let x_506 : f32 = u_xlat12.x;
  let x_507 : f32 = u_xlat22;
  let x_510 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_506 * x_507) + x_510);
  let x_519 : f32 = x_517.x_MainLightCookieTextureFormat;
  u_xlatb12.x = !((x_519 == -1.0f));
  let x_523 : bool = u_xlatb12.x;
  if (x_523) {
    let x_526 : vec3<f32> = vs_TEXCOORD1;
    let x_529 : vec4<f32> = x_517.x_MainLightWorldToLight[1i];
    let x_531 : vec2<f32> = (vec2<f32>(x_526.y, x_526.y) * vec2<f32>(x_529.x, x_529.y));
    let x_532 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_531.x, x_531.y, x_532.z);
    let x_535 : vec4<f32> = x_517.x_MainLightWorldToLight[0i];
    let x_537 : vec3<f32> = vs_TEXCOORD1;
    let x_540 : vec3<f32> = u_xlat12;
    let x_542 : vec2<f32> = ((vec2<f32>(x_535.x, x_535.y) * vec2<f32>(x_537.x, x_537.x)) + vec2<f32>(x_540.x, x_540.y));
    let x_543 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_542.x, x_542.y, x_543.z);
    let x_546 : vec4<f32> = x_517.x_MainLightWorldToLight[2i];
    let x_548 : vec3<f32> = vs_TEXCOORD1;
    let x_551 : vec3<f32> = u_xlat12;
    let x_553 : vec2<f32> = ((vec2<f32>(x_546.x, x_546.y) * vec2<f32>(x_548.z, x_548.z)) + vec2<f32>(x_551.x, x_551.y));
    let x_554 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_553.x, x_553.y, x_554.z);
    let x_556 : vec3<f32> = u_xlat12;
    let x_559 : vec4<f32> = x_517.x_MainLightWorldToLight[3i];
    let x_561 : vec2<f32> = (vec2<f32>(x_556.x, x_556.y) + vec2<f32>(x_559.x, x_559.y));
    let x_562 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_561.x, x_561.y, x_562.z);
    let x_564 : vec3<f32> = u_xlat12;
    let x_569 : vec2<f32> = ((vec2<f32>(x_564.x, x_564.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_570 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_569.x, x_569.y, x_570.z);
    let x_577 : vec3<f32> = u_xlat12;
    let x_580 : f32 = x_43.x_GlobalMipBias.x;
    let x_581 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_577.x, x_577.y), x_580);
    u_xlat4 = x_581;
    let x_583 : f32 = x_517.x_MainLightCookieTextureFormat;
    let x_585 : f32 = x_517.x_MainLightCookieTextureFormat;
    let x_587 : f32 = x_517.x_MainLightCookieTextureFormat;
    let x_589 : f32 = x_517.x_MainLightCookieTextureFormat;
    let x_590 : vec4<f32> = vec4<f32>(x_583, x_585, x_587, x_589);
    let x_597 : vec4<bool> = (vec4<f32>(x_590.x, x_590.y, x_590.z, x_590.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb12 = vec2<bool>(x_597.x, x_597.y);
    let x_600 : bool = u_xlatb12.y;
    if (x_600) {
      let x_605 : f32 = u_xlat4.w;
      x_601 = x_605;
    } else {
      let x_608 : f32 = u_xlat4.x;
      x_601 = x_608;
    }
    let x_609 : f32 = x_601;
    u_xlat22 = x_609;
    let x_611 : bool = u_xlatb12.x;
    if (x_611) {
      let x_615 : vec4<f32> = u_xlat4;
      x_612 = vec3<f32>(x_615.x, x_615.y, x_615.z);
    } else {
      let x_618 : f32 = u_xlat22;
      x_612 = vec3<f32>(x_618, x_618, x_618);
    }
    let x_620 : vec3<f32> = x_612;
    let x_621 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_620.x, x_620.y, x_620.z, x_621.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_627 : vec4<f32> = u_xlat4;
  let x_630 : vec4<f32> = x_43.x_MainLightColor;
  let x_632 : vec3<f32> = (vec3<f32>(x_627.x, x_627.y, x_627.z) * vec3<f32>(x_630.x, x_630.y, x_630.z));
  let x_633 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_632.x, x_632.y, x_632.z, x_633.w);
  let x_635 : f32 = u_xlat32;
  let x_637 : vec4<f32> = u_xlat4;
  let x_639 : vec3<f32> = (vec3<f32>(x_635, x_635, x_635) * vec3<f32>(x_637.x, x_637.y, x_637.z));
  let x_640 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_639.x, x_639.y, x_639.z, x_640.w);
  let x_642 : f32 = u_xlat31;
  let x_644 : vec4<f32> = u_xlat3;
  let x_646 : vec3<f32> = (vec3<f32>(x_642, x_642, x_642) * vec3<f32>(x_644.x, x_644.y, x_644.z));
  let x_647 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_646.x, x_646.y, x_646.z, x_647.w);
  let x_650 : f32 = u_xlat2.x;
  let x_652 : f32 = x_281.unity_LightData.z;
  u_xlat31 = (x_650 * x_652);
  let x_654 : f32 = u_xlat31;
  let x_656 : vec4<f32> = u_xlat4;
  let x_658 : vec3<f32> = (vec3<f32>(x_654, x_654, x_654) * vec3<f32>(x_656.x, x_656.y, x_656.z));
  let x_659 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_658.x, x_658.y, x_658.z, x_659.w);
  let x_661 : vec4<f32> = u_xlat1;
  let x_664 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat31 = dot(vec3<f32>(x_661.x, x_661.y, x_661.z), vec3<f32>(x_664.x, x_664.y, x_664.z));
  let x_667 : f32 = u_xlat31;
  u_xlat31 = clamp(x_667, 0.0f, 1.0f);
  let x_669 : f32 = u_xlat31;
  let x_671 : vec4<f32> = u_xlat2;
  let x_673 : vec3<f32> = (vec3<f32>(x_669, x_669, x_669) * vec3<f32>(x_671.x, x_671.y, x_671.z));
  let x_674 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_673.x, x_673.y, x_673.z, x_674.w);
  let x_676 : vec4<f32> = u_xlat0;
  let x_678 : vec4<f32> = u_xlat2;
  let x_680 : vec3<f32> = (vec3<f32>(x_676.y, x_676.z, x_676.w) * vec3<f32>(x_678.x, x_678.y, x_678.z));
  let x_681 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_680.x, x_680.y, x_680.z, x_681.w);
  let x_684 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_686 : f32 = x_281.unity_LightData.y;
  u_xlat31 = min(x_684, x_686);
  let x_689 : f32 = u_xlat31;
  u_xlatu31 = bitcast<u32>(i32(x_689));
  let x_694 : f32 = x_517.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_696 : f32 = x_517.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_698 : f32 = x_517.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_700 : f32 = x_517.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_701 : vec4<f32> = vec4<f32>(x_694, x_696, x_698, x_700);
  let x_707 : vec4<bool> = (vec4<f32>(x_701.x, x_701.y, x_701.z, x_701.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb4 = vec2<bool>(x_707.x, x_707.y);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_718 : u32 = u_xlatu_loop_1;
    let x_719 : u32 = u_xlatu31;
    if ((x_718 < x_719)) {
    } else {
      break;
    }
    let x_722 : u32 = u_xlatu_loop_1;
    u_xlatu24 = (x_722 >> 2u);
    let x_725 : u32 = u_xlatu_loop_1;
    u_xlati34 = bitcast<i32>((x_725 & 3u));
    let x_729 : u32 = u_xlatu24;
    let x_732 : vec4<f32> = x_281.unity_LightIndices[bitcast<i32>(x_729)];
    let x_742 : i32 = u_xlati34;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_747 : vec4<u32> = indexable[x_742];
    u_xlat24 = dot(x_732, bitcast<vec4<f32>>(x_747));
    let x_750 : f32 = u_xlat24;
    u_xlatu24 = bitcast<u32>(i32(x_750));
    let x_754 : vec3<f32> = vs_TEXCOORD1;
    let x_766 : u32 = u_xlatu24;
    let x_769 : vec4<f32> = x_765.x_AdditionalLightsPosition[bitcast<i32>(x_766)];
    let x_772 : u32 = u_xlatu24;
    let x_775 : vec4<f32> = x_765.x_AdditionalLightsPosition[bitcast<i32>(x_772)];
    u_xlat6 = ((-(x_754) * vec3<f32>(x_769.w, x_769.w, x_769.w)) + vec3<f32>(x_775.x, x_775.y, x_775.z));
    let x_779 : vec3<f32> = u_xlat6;
    let x_780 : vec3<f32> = u_xlat6;
    u_xlat34 = dot(x_779, x_780);
    let x_782 : f32 = u_xlat34;
    u_xlat34 = max(x_782, 6.10351562e-05f);
    let x_786 : f32 = u_xlat34;
    u_xlat35 = inverseSqrt(x_786);
    let x_788 : f32 = u_xlat35;
    let x_790 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_788, x_788, x_788) * x_790);
    let x_792 : f32 = u_xlat34;
    u_xlat35 = (1.0f / x_792);
    let x_794 : f32 = u_xlat34;
    let x_795 : u32 = u_xlatu24;
    let x_798 : f32 = x_765.x_AdditionalLightsAttenuation[bitcast<i32>(x_795)].x;
    u_xlat34 = (x_794 * x_798);
    let x_800 : f32 = u_xlat34;
    let x_802 : f32 = u_xlat34;
    u_xlat34 = ((-(x_800) * x_802) + 1.0f);
    let x_805 : f32 = u_xlat34;
    u_xlat34 = max(x_805, 0.0f);
    let x_807 : f32 = u_xlat34;
    let x_808 : f32 = u_xlat34;
    u_xlat34 = (x_807 * x_808);
    let x_810 : f32 = u_xlat34;
    let x_811 : f32 = u_xlat35;
    u_xlat34 = (x_810 * x_811);
    let x_813 : u32 = u_xlatu24;
    let x_816 : vec4<f32> = x_765.x_AdditionalLightsSpotDir[bitcast<i32>(x_813)];
    let x_818 : vec3<f32> = u_xlat6;
    u_xlat35 = dot(vec3<f32>(x_816.x, x_816.y, x_816.z), x_818);
    let x_820 : f32 = u_xlat35;
    let x_821 : u32 = u_xlatu24;
    let x_824 : f32 = x_765.x_AdditionalLightsAttenuation[bitcast<i32>(x_821)].z;
    let x_826 : u32 = u_xlatu24;
    let x_829 : f32 = x_765.x_AdditionalLightsAttenuation[bitcast<i32>(x_826)].w;
    u_xlat35 = ((x_820 * x_824) + x_829);
    let x_831 : f32 = u_xlat35;
    u_xlat35 = clamp(x_831, 0.0f, 1.0f);
    let x_833 : f32 = u_xlat35;
    let x_834 : f32 = u_xlat35;
    u_xlat35 = (x_833 * x_834);
    let x_836 : f32 = u_xlat34;
    let x_837 : f32 = u_xlat35;
    u_xlat34 = (x_836 * x_837);
    let x_840 : u32 = u_xlatu24;
    u_xlatu35 = (x_840 >> 5u);
    let x_843 : u32 = u_xlatu24;
    u_xlati36 = (1i << bitcast<u32>((bitcast<i32>(x_843) & 31i)));
    let x_849 : i32 = u_xlati36;
    let x_851 : u32 = u_xlatu35;
    let x_854 : f32 = x_517.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_851)].el;
    u_xlati35 = bitcast<i32>((bitcast<u32>(x_849) & bitcast<u32>(x_854)));
    let x_858 : i32 = u_xlati35;
    if ((x_858 != 0i)) {
      let x_868 : u32 = u_xlatu24;
      let x_871 : f32 = x_867.x_AdditionalLightsLightTypes[bitcast<i32>(x_868)].el;
      u_xlati35 = i32(x_871);
      let x_873 : i32 = u_xlati35;
      u_xlati36 = select(1i, 0i, (x_873 != 0i));
      let x_877 : u32 = u_xlatu24;
      u_xlati7 = (bitcast<i32>(x_877) << bitcast<u32>(2i));
      let x_880 : i32 = u_xlati36;
      if ((x_880 != 0i)) {
        let x_885 : vec3<f32> = vs_TEXCOORD1;
        let x_887 : i32 = u_xlati7;
        let x_890 : i32 = u_xlati7;
        let x_894 : vec4<f32> = x_867.x_AdditionalLightsWorldToLights[((x_887 + 1i) / 4i)][((x_890 + 1i) % 4i)];
        u_xlat17 = (vec3<f32>(x_885.y, x_885.y, x_885.y) * vec3<f32>(x_894.x, x_894.y, x_894.w));
        let x_897 : i32 = u_xlati7;
        let x_899 : i32 = u_xlati7;
        let x_902 : vec4<f32> = x_867.x_AdditionalLightsWorldToLights[(x_897 / 4i)][(x_899 % 4i)];
        let x_904 : vec3<f32> = vs_TEXCOORD1;
        let x_907 : vec3<f32> = u_xlat17;
        u_xlat17 = ((vec3<f32>(x_902.x, x_902.y, x_902.w) * vec3<f32>(x_904.x, x_904.x, x_904.x)) + x_907);
        let x_909 : i32 = u_xlati7;
        let x_912 : i32 = u_xlati7;
        let x_916 : vec4<f32> = x_867.x_AdditionalLightsWorldToLights[((x_909 + 2i) / 4i)][((x_912 + 2i) % 4i)];
        let x_918 : vec3<f32> = vs_TEXCOORD1;
        let x_921 : vec3<f32> = u_xlat17;
        u_xlat17 = ((vec3<f32>(x_916.x, x_916.y, x_916.w) * vec3<f32>(x_918.z, x_918.z, x_918.z)) + x_921);
        let x_923 : vec3<f32> = u_xlat17;
        let x_924 : i32 = u_xlati7;
        let x_927 : i32 = u_xlati7;
        let x_931 : vec4<f32> = x_867.x_AdditionalLightsWorldToLights[((x_924 + 3i) / 4i)][((x_927 + 3i) % 4i)];
        u_xlat17 = (x_923 + vec3<f32>(x_931.x, x_931.y, x_931.w));
        let x_934 : vec3<f32> = u_xlat17;
        let x_936 : vec3<f32> = u_xlat17;
        let x_938 : vec2<f32> = (vec2<f32>(x_934.x, x_934.y) / vec2<f32>(x_936.z, x_936.z));
        let x_939 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_938.x, x_938.y, x_939.z);
        let x_941 : vec3<f32> = u_xlat17;
        let x_944 : vec2<f32> = ((vec2<f32>(x_941.x, x_941.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_945 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_944.x, x_944.y, x_945.z);
        let x_947 : vec3<f32> = u_xlat17;
        let x_951 : vec2<f32> = clamp(vec2<f32>(x_947.x, x_947.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_952 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_951.x, x_951.y, x_952.z);
        let x_954 : u32 = u_xlatu24;
        let x_957 : vec4<f32> = x_867.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_954)];
        let x_959 : vec3<f32> = u_xlat17;
        let x_962 : u32 = u_xlatu24;
        let x_965 : vec4<f32> = x_867.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_962)];
        let x_967 : vec2<f32> = ((vec2<f32>(x_957.x, x_957.y) * vec2<f32>(x_959.x, x_959.y)) + vec2<f32>(x_965.z, x_965.w));
        let x_968 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_967.x, x_967.y, x_968.z);
      } else {
        let x_972 : i32 = u_xlati35;
        u_xlatb35 = (x_972 == 1i);
        let x_974 : bool = u_xlatb35;
        u_xlati35 = select(0i, 1i, x_974);
        let x_976 : i32 = u_xlati35;
        if ((x_976 != 0i)) {
          let x_981 : vec3<f32> = vs_TEXCOORD1;
          let x_983 : i32 = u_xlati7;
          let x_986 : i32 = u_xlati7;
          let x_990 : vec4<f32> = x_867.x_AdditionalLightsWorldToLights[((x_983 + 1i) / 4i)][((x_986 + 1i) % 4i)];
          let x_992 : vec2<f32> = (vec2<f32>(x_981.y, x_981.y) * vec2<f32>(x_990.x, x_990.y));
          let x_993 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_992.x, x_992.y, x_993.z, x_993.w);
          let x_995 : i32 = u_xlati7;
          let x_997 : i32 = u_xlati7;
          let x_1000 : vec4<f32> = x_867.x_AdditionalLightsWorldToLights[(x_995 / 4i)][(x_997 % 4i)];
          let x_1002 : vec3<f32> = vs_TEXCOORD1;
          let x_1005 : vec4<f32> = u_xlat8;
          let x_1007 : vec2<f32> = ((vec2<f32>(x_1000.x, x_1000.y) * vec2<f32>(x_1002.x, x_1002.x)) + vec2<f32>(x_1005.x, x_1005.y));
          let x_1008 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1007.x, x_1007.y, x_1008.z, x_1008.w);
          let x_1010 : i32 = u_xlati7;
          let x_1013 : i32 = u_xlati7;
          let x_1017 : vec4<f32> = x_867.x_AdditionalLightsWorldToLights[((x_1010 + 2i) / 4i)][((x_1013 + 2i) % 4i)];
          let x_1019 : vec3<f32> = vs_TEXCOORD1;
          let x_1022 : vec4<f32> = u_xlat8;
          let x_1024 : vec2<f32> = ((vec2<f32>(x_1017.x, x_1017.y) * vec2<f32>(x_1019.z, x_1019.z)) + vec2<f32>(x_1022.x, x_1022.y));
          let x_1025 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1024.x, x_1024.y, x_1025.z, x_1025.w);
          let x_1027 : vec4<f32> = u_xlat8;
          let x_1029 : i32 = u_xlati7;
          let x_1032 : i32 = u_xlati7;
          let x_1036 : vec4<f32> = x_867.x_AdditionalLightsWorldToLights[((x_1029 + 3i) / 4i)][((x_1032 + 3i) % 4i)];
          let x_1038 : vec2<f32> = (vec2<f32>(x_1027.x, x_1027.y) + vec2<f32>(x_1036.x, x_1036.y));
          let x_1039 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1038.x, x_1038.y, x_1039.z, x_1039.w);
          let x_1041 : vec4<f32> = u_xlat8;
          let x_1044 : vec2<f32> = ((vec2<f32>(x_1041.x, x_1041.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1045 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1044.x, x_1044.y, x_1045.z, x_1045.w);
          let x_1047 : vec4<f32> = u_xlat8;
          let x_1049 : vec2<f32> = fract(vec2<f32>(x_1047.x, x_1047.y));
          let x_1050 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1049.x, x_1049.y, x_1050.z, x_1050.w);
          let x_1052 : u32 = u_xlatu24;
          let x_1055 : vec4<f32> = x_867.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1052)];
          let x_1057 : vec4<f32> = u_xlat8;
          let x_1060 : u32 = u_xlatu24;
          let x_1063 : vec4<f32> = x_867.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1060)];
          let x_1065 : vec2<f32> = ((vec2<f32>(x_1055.x, x_1055.y) * vec2<f32>(x_1057.x, x_1057.y)) + vec2<f32>(x_1063.z, x_1063.w));
          let x_1066 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_1065.x, x_1065.y, x_1066.z);
        } else {
          let x_1069 : vec3<f32> = vs_TEXCOORD1;
          let x_1071 : i32 = u_xlati7;
          let x_1074 : i32 = u_xlati7;
          let x_1078 : vec4<f32> = x_867.x_AdditionalLightsWorldToLights[((x_1071 + 1i) / 4i)][((x_1074 + 1i) % 4i)];
          u_xlat8 = (vec4<f32>(x_1069.y, x_1069.y, x_1069.y, x_1069.y) * x_1078);
          let x_1080 : i32 = u_xlati7;
          let x_1082 : i32 = u_xlati7;
          let x_1085 : vec4<f32> = x_867.x_AdditionalLightsWorldToLights[(x_1080 / 4i)][(x_1082 % 4i)];
          let x_1086 : vec3<f32> = vs_TEXCOORD1;
          let x_1089 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_1085 * vec4<f32>(x_1086.x, x_1086.x, x_1086.x, x_1086.x)) + x_1089);
          let x_1091 : i32 = u_xlati7;
          let x_1094 : i32 = u_xlati7;
          let x_1098 : vec4<f32> = x_867.x_AdditionalLightsWorldToLights[((x_1091 + 2i) / 4i)][((x_1094 + 2i) % 4i)];
          let x_1099 : vec3<f32> = vs_TEXCOORD1;
          let x_1102 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_1098 * vec4<f32>(x_1099.z, x_1099.z, x_1099.z, x_1099.z)) + x_1102);
          let x_1104 : vec4<f32> = u_xlat8;
          let x_1105 : i32 = u_xlati7;
          let x_1108 : i32 = u_xlati7;
          let x_1112 : vec4<f32> = x_867.x_AdditionalLightsWorldToLights[((x_1105 + 3i) / 4i)][((x_1108 + 3i) % 4i)];
          u_xlat8 = (x_1104 + x_1112);
          let x_1114 : vec4<f32> = u_xlat8;
          let x_1116 : vec4<f32> = u_xlat8;
          let x_1118 : vec3<f32> = (vec3<f32>(x_1114.x, x_1114.y, x_1114.z) / vec3<f32>(x_1116.w, x_1116.w, x_1116.w));
          let x_1119 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1118.x, x_1118.y, x_1118.z, x_1119.w);
          let x_1121 : vec4<f32> = u_xlat8;
          let x_1123 : vec4<f32> = u_xlat8;
          u_xlat35 = dot(vec3<f32>(x_1121.x, x_1121.y, x_1121.z), vec3<f32>(x_1123.x, x_1123.y, x_1123.z));
          let x_1126 : f32 = u_xlat35;
          u_xlat35 = inverseSqrt(x_1126);
          let x_1128 : f32 = u_xlat35;
          let x_1130 : vec4<f32> = u_xlat8;
          let x_1132 : vec3<f32> = (vec3<f32>(x_1128, x_1128, x_1128) * vec3<f32>(x_1130.x, x_1130.y, x_1130.z));
          let x_1133 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1132.x, x_1132.y, x_1132.z, x_1133.w);
          let x_1135 : vec4<f32> = u_xlat8;
          u_xlat35 = dot(abs(vec3<f32>(x_1135.x, x_1135.y, x_1135.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1140 : f32 = u_xlat35;
          u_xlat35 = max(x_1140, 0.000001f);
          let x_1143 : f32 = u_xlat35;
          u_xlat35 = (1.0f / x_1143);
          let x_1146 : f32 = u_xlat35;
          let x_1148 : vec4<f32> = u_xlat8;
          u_xlat9 = (vec3<f32>(x_1146, x_1146, x_1146) * vec3<f32>(x_1148.z, x_1148.x, x_1148.y));
          let x_1152 : f32 = u_xlat9.x;
          u_xlat9.x = -(x_1152);
          let x_1156 : f32 = u_xlat9.x;
          u_xlat9.x = clamp(x_1156, 0.0f, 1.0f);
          let x_1160 : vec3<f32> = u_xlat9;
          let x_1163 : vec4<bool> = (vec4<f32>(x_1160.y, x_1160.y, x_1160.y, x_1160.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1164 : vec2<bool> = vec2<bool>(x_1163.x, x_1163.w);
          let x_1165 : vec4<bool> = u_xlatb7;
          u_xlatb7 = vec4<bool>(x_1164.x, x_1165.y, x_1165.z, x_1164.y);
          let x_1169 : bool = u_xlatb7.x;
          if (x_1169) {
            let x_1174 : f32 = u_xlat9.x;
            x_1170 = x_1174;
          } else {
            let x_1177 : f32 = u_xlat9.x;
            x_1170 = -(x_1177);
          }
          let x_1179 : f32 = x_1170;
          u_xlat7.x = x_1179;
          let x_1182 : bool = u_xlatb7.w;
          if (x_1182) {
            let x_1187 : f32 = u_xlat9.x;
            x_1183 = x_1187;
          } else {
            let x_1190 : f32 = u_xlat9.x;
            x_1183 = -(x_1190);
          }
          let x_1192 : f32 = x_1183;
          u_xlat7.w = x_1192;
          let x_1194 : vec4<f32> = u_xlat8;
          let x_1196 : f32 = u_xlat35;
          let x_1199 : vec4<f32> = u_xlat7;
          let x_1201 : vec2<f32> = ((vec2<f32>(x_1194.x, x_1194.y) * vec2<f32>(x_1196, x_1196)) + vec2<f32>(x_1199.x, x_1199.w));
          let x_1202 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_1201.x, x_1202.y, x_1202.z, x_1201.y);
          let x_1204 : vec4<f32> = u_xlat7;
          let x_1207 : vec2<f32> = ((vec2<f32>(x_1204.x, x_1204.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1208 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_1207.x, x_1208.y, x_1208.z, x_1207.y);
          let x_1210 : vec4<f32> = u_xlat7;
          let x_1214 : vec2<f32> = clamp(vec2<f32>(x_1210.x, x_1210.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1215 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_1214.x, x_1215.y, x_1215.z, x_1214.y);
          let x_1217 : u32 = u_xlatu24;
          let x_1220 : vec4<f32> = x_867.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1217)];
          let x_1222 : vec4<f32> = u_xlat7;
          let x_1225 : u32 = u_xlatu24;
          let x_1228 : vec4<f32> = x_867.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1225)];
          let x_1230 : vec2<f32> = ((vec2<f32>(x_1220.x, x_1220.y) * vec2<f32>(x_1222.x, x_1222.w)) + vec2<f32>(x_1228.z, x_1228.w));
          let x_1231 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_1230.x, x_1230.y, x_1231.z);
        }
      }
      let x_1238 : vec3<f32> = u_xlat17;
      let x_1241 : f32 = x_43.x_GlobalMipBias.x;
      let x_1242 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1238.x, x_1238.y), x_1241);
      u_xlat7 = x_1242;
      let x_1244 : bool = u_xlatb4.y;
      if (x_1244) {
        let x_1249 : f32 = u_xlat7.w;
        x_1245 = x_1249;
      } else {
        let x_1252 : f32 = u_xlat7.x;
        x_1245 = x_1252;
      }
      let x_1253 : f32 = x_1245;
      u_xlat35 = x_1253;
      let x_1255 : bool = u_xlatb4.x;
      if (x_1255) {
        let x_1259 : vec4<f32> = u_xlat7;
        x_1256 = vec3<f32>(x_1259.x, x_1259.y, x_1259.z);
      } else {
        let x_1262 : f32 = u_xlat35;
        x_1256 = vec3<f32>(x_1262, x_1262, x_1262);
      }
      let x_1264 : vec3<f32> = x_1256;
      let x_1265 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_1264.x, x_1264.y, x_1264.z, x_1265.w);
    } else {
      u_xlat7.x = 1.0f;
      u_xlat7.y = 1.0f;
      u_xlat7.z = 1.0f;
    }
    let x_1271 : vec4<f32> = u_xlat7;
    let x_1273 : u32 = u_xlatu24;
    let x_1276 : vec4<f32> = x_765.x_AdditionalLightsColor[bitcast<i32>(x_1273)];
    let x_1278 : vec3<f32> = (vec3<f32>(x_1271.x, x_1271.y, x_1271.z) * vec3<f32>(x_1276.x, x_1276.y, x_1276.z));
    let x_1279 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1278.x, x_1278.y, x_1278.z, x_1279.w);
    let x_1281 : f32 = u_xlat32;
    let x_1283 : vec4<f32> = u_xlat7;
    let x_1285 : vec3<f32> = (vec3<f32>(x_1281, x_1281, x_1281) * vec3<f32>(x_1283.x, x_1283.y, x_1283.z));
    let x_1286 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1285.x, x_1285.y, x_1285.z, x_1286.w);
    let x_1288 : f32 = u_xlat34;
    let x_1290 : vec4<f32> = u_xlat7;
    let x_1292 : vec3<f32> = (vec3<f32>(x_1288, x_1288, x_1288) * vec3<f32>(x_1290.x, x_1290.y, x_1290.z));
    let x_1293 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1292.x, x_1292.y, x_1292.z, x_1293.w);
    let x_1295 : vec4<f32> = u_xlat1;
    let x_1297 : vec3<f32> = u_xlat6;
    u_xlat24 = dot(vec3<f32>(x_1295.x, x_1295.y, x_1295.z), x_1297);
    let x_1299 : f32 = u_xlat24;
    u_xlat24 = clamp(x_1299, 0.0f, 1.0f);
    let x_1301 : f32 = u_xlat24;
    let x_1303 : vec4<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_1301, x_1301, x_1301) * vec3<f32>(x_1303.x, x_1303.y, x_1303.z));
    let x_1306 : vec3<f32> = u_xlat6;
    let x_1307 : vec4<f32> = u_xlat0;
    let x_1310 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_1306 * vec3<f32>(x_1307.y, x_1307.z, x_1307.w)) + x_1310);

    continuing {
      let x_1312 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1312 + bitcast<u32>(1i));
    }
  }
  let x_1315 : vec4<f32> = u_xlat3;
  let x_1317 : vec4<f32> = u_xlat0;
  let x_1320 : vec4<f32> = u_xlat2;
  u_xlat10 = ((vec3<f32>(x_1315.x, x_1315.y, x_1315.z) * vec3<f32>(x_1317.y, x_1317.z, x_1317.w)) + vec3<f32>(x_1320.x, x_1320.y, x_1320.z));
  let x_1325 : vec3<f32> = u_xlat5;
  let x_1326 : vec3<f32> = u_xlat10;
  let x_1327 : vec3<f32> = (x_1325 + x_1326);
  let x_1328 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1327.x, x_1327.y, x_1327.z, x_1328.w);
  let x_1332 : f32 = x_55.x_Surface;
  u_xlatb10 = (x_1332 == 1.0f);
  let x_1334 : bool = u_xlatb10;
  if (x_1334) {
    let x_1339 : f32 = u_xlat0.x;
    x_1335 = x_1339;
  } else {
    x_1335 = 1.0f;
  }
  let x_1341 : f32 = x_1335;
  SV_Target0.w = x_1341;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}

