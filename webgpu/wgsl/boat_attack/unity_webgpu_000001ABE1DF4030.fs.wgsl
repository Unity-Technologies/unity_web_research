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

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_55 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_86 : MainLightShadows;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_452 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_574 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_687 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_789 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlatb2 : vec4<bool>;
  var u_xlat31 : f32;
  var u_xlatu31 : u32;
  var u_xlati31 : i32;
  var u_xlat32 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat12 : vec2<f32>;
  var u_xlatb12 : vec2<bool>;
  var u_xlatb22 : bool;
  var x_399 : f32;
  var u_xlat22 : f32;
  var x_521 : f32;
  var x_532 : vec3<f32>;
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
  var x_1092 : f32;
  var x_1105 : f32;
  var x_1167 : f32;
  var x_1178 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb10 : bool;
  var x_1256 : f32;
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
  let x_80 : vec3<f32> = vs_TEXCOORD1;
  let x_88 : vec4<f32> = x_86.x_CascadeShadowSplitSpheres0;
  let x_91 : vec3<f32> = (x_80 + -(vec3<f32>(x_88.x, x_88.y, x_88.z)));
  let x_92 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_91.x, x_91.y, x_91.z, x_92.w);
  let x_95 : vec3<f32> = vs_TEXCOORD1;
  let x_98 : vec4<f32> = x_86.x_CascadeShadowSplitSpheres1;
  let x_101 : vec3<f32> = (x_95 + -(vec3<f32>(x_98.x, x_98.y, x_98.z)));
  let x_102 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_101.x, x_101.y, x_101.z, x_102.w);
  let x_105 : vec3<f32> = vs_TEXCOORD1;
  let x_108 : vec4<f32> = x_86.x_CascadeShadowSplitSpheres2;
  let x_111 : vec3<f32> = (x_105 + -(vec3<f32>(x_108.x, x_108.y, x_108.z)));
  let x_112 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_111.x, x_111.y, x_111.z, x_112.w);
  let x_115 : vec3<f32> = vs_TEXCOORD1;
  let x_118 : vec4<f32> = x_86.x_CascadeShadowSplitSpheres3;
  u_xlat5 = (x_115 + -(vec3<f32>(x_118.x, x_118.y, x_118.z)));
  let x_122 : vec4<f32> = u_xlat2;
  let x_124 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_122.x, x_122.y, x_122.z), vec3<f32>(x_124.x, x_124.y, x_124.z));
  let x_128 : vec4<f32> = u_xlat3;
  let x_130 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_128.x, x_128.y, x_128.z), vec3<f32>(x_130.x, x_130.y, x_130.z));
  let x_135 : vec4<f32> = u_xlat4;
  let x_137 : vec4<f32> = u_xlat4;
  u_xlat2.z = dot(vec3<f32>(x_135.x, x_135.y, x_135.z), vec3<f32>(x_137.x, x_137.y, x_137.z));
  let x_142 : vec3<f32> = u_xlat5;
  let x_143 : vec3<f32> = u_xlat5;
  u_xlat2.w = dot(x_142, x_143);
  let x_150 : vec4<f32> = u_xlat2;
  let x_153 : vec4<f32> = x_86.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_150 < x_153);
  let x_157 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_157);
  let x_162 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_162);
  let x_166 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_166);
  let x_170 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_170);
  let x_174 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_174);
  let x_180 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_180);
  let x_184 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_184);
  let x_187 : vec4<f32> = u_xlat2;
  let x_189 : vec4<f32> = u_xlat3;
  let x_191 : vec3<f32> = (vec3<f32>(x_187.x, x_187.y, x_187.z) + vec3<f32>(x_189.y, x_189.z, x_189.w));
  let x_192 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
  let x_194 : vec4<f32> = u_xlat2;
  let x_197 : vec3<f32> = max(vec3<f32>(x_194.x, x_194.y, x_194.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_198 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_198.x, x_197.x, x_197.y, x_197.z);
  let x_201 : vec4<f32> = u_xlat3;
  u_xlat31 = dot(x_201, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_207 : f32 = u_xlat31;
  u_xlat31 = (-(x_207) + 4.0f);
  let x_212 : f32 = u_xlat31;
  u_xlatu31 = u32(x_212);
  let x_216 : u32 = u_xlatu31;
  u_xlati31 = (bitcast<i32>(x_216) << bitcast<u32>(2i));
  let x_219 : vec3<f32> = vs_TEXCOORD1;
  let x_222 : i32 = u_xlati31;
  let x_225 : i32 = u_xlati31;
  let x_229 : vec4<f32> = x_86.x_MainLightWorldToShadow[((x_222 + 1i) / 4i)][((x_225 + 1i) % 4i)];
  let x_231 : vec3<f32> = (vec3<f32>(x_219.y, x_219.y, x_219.y) * vec3<f32>(x_229.x, x_229.y, x_229.z));
  let x_232 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_231.x, x_231.y, x_231.z, x_232.w);
  let x_234 : i32 = u_xlati31;
  let x_236 : i32 = u_xlati31;
  let x_239 : vec4<f32> = x_86.x_MainLightWorldToShadow[(x_234 / 4i)][(x_236 % 4i)];
  let x_241 : vec3<f32> = vs_TEXCOORD1;
  let x_244 : vec4<f32> = u_xlat2;
  let x_246 : vec3<f32> = ((vec3<f32>(x_239.x, x_239.y, x_239.z) * vec3<f32>(x_241.x, x_241.x, x_241.x)) + vec3<f32>(x_244.x, x_244.y, x_244.z));
  let x_247 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_246.x, x_246.y, x_246.z, x_247.w);
  let x_249 : i32 = u_xlati31;
  let x_252 : i32 = u_xlati31;
  let x_256 : vec4<f32> = x_86.x_MainLightWorldToShadow[((x_249 + 2i) / 4i)][((x_252 + 2i) % 4i)];
  let x_258 : vec3<f32> = vs_TEXCOORD1;
  let x_261 : vec4<f32> = u_xlat2;
  let x_263 : vec3<f32> = ((vec3<f32>(x_256.x, x_256.y, x_256.z) * vec3<f32>(x_258.z, x_258.z, x_258.z)) + vec3<f32>(x_261.x, x_261.y, x_261.z));
  let x_264 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_263.x, x_263.y, x_263.z, x_264.w);
  let x_266 : vec4<f32> = u_xlat2;
  let x_268 : i32 = u_xlati31;
  let x_271 : i32 = u_xlati31;
  let x_275 : vec4<f32> = x_86.x_MainLightWorldToShadow[((x_268 + 3i) / 4i)][((x_271 + 3i) % 4i)];
  let x_277 : vec3<f32> = (vec3<f32>(x_266.x, x_266.y, x_266.z) + vec3<f32>(x_275.x, x_275.y, x_275.z));
  let x_278 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
  let x_286 : vec2<f32> = vs_TEXCOORD7;
  let x_288 : f32 = x_43.x_GlobalMipBias.x;
  let x_289 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_286, x_288);
  let x_290 : vec3<f32> = vec3<f32>(x_289.x, x_289.y, x_289.z);
  let x_291 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
  let x_295 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_296 : vec2<f32> = vec2<f32>(x_295.x, x_295.y);
  let x_300 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_296.x, x_296.y));
  let x_301 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_300.x, x_300.y, x_301.z, x_301.w);
  let x_303 : vec4<f32> = u_xlat4;
  let x_305 : vec4<f32> = hlslcc_FragCoord;
  let x_307 : vec2<f32> = (vec2<f32>(x_303.x, x_303.y) * vec2<f32>(x_305.x, x_305.y));
  let x_308 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_307.x, x_307.y, x_308.z, x_308.w);
  let x_311 : f32 = u_xlat4.y;
  let x_314 : f32 = x_43.x_ScaleBiasRt.x;
  let x_317 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat31 = ((x_311 * x_314) + x_317);
  let x_319 : f32 = u_xlat31;
  u_xlat4.z = (-(x_319) + 1.0f);
  let x_328 : vec4<f32> = u_xlat4;
  let x_331 : f32 = x_43.x_GlobalMipBias.x;
  let x_332 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_328.x, x_328.z), x_331);
  u_xlat31 = x_332.x;
  let x_335 : f32 = u_xlat31;
  u_xlat32 = (x_335 + -1.0f);
  let x_338 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_339 : f32 = u_xlat32;
  u_xlat32 = ((x_338 * x_339) + 1.0f);
  let x_342 : f32 = u_xlat31;
  u_xlat31 = min(x_342, 1.0f);
  let x_345 : vec4<f32> = u_xlat2;
  let x_346 : vec2<f32> = vec2<f32>(x_345.x, x_345.y);
  let x_348 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_346.x, x_346.y, x_348);
  let x_360 : vec3<f32> = txVec0;
  let x_362 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_360.xy, x_360.z);
  u_xlat2.x = x_362;
  let x_368 : f32 = x_86.x_MainLightShadowParams.x;
  u_xlat12.x = (-(x_368) + 1.0f);
  let x_373 : f32 = u_xlat2.x;
  let x_375 : f32 = x_86.x_MainLightShadowParams.x;
  let x_378 : f32 = u_xlat12.x;
  u_xlat2.x = ((x_373 * x_375) + x_378);
  let x_385 : f32 = u_xlat2.z;
  u_xlatb12.x = (0.0f >= x_385);
  let x_390 : f32 = u_xlat2.z;
  u_xlatb22 = (x_390 >= 1.0f);
  let x_392 : bool = u_xlatb22;
  let x_394 : bool = u_xlatb12.x;
  u_xlatb12.x = (x_392 | x_394);
  let x_398 : bool = u_xlatb12.x;
  if (x_398) {
    x_399 = 1.0f;
  } else {
    let x_404 : f32 = u_xlat2.x;
    x_399 = x_404;
  }
  let x_405 : f32 = x_399;
  u_xlat2.x = x_405;
  let x_407 : vec3<f32> = vs_TEXCOORD1;
  let x_411 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_413 : vec3<f32> = (x_407 + -(x_411));
  let x_414 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_413.x, x_413.y, x_413.z, x_414.w);
  let x_416 : vec4<f32> = u_xlat4;
  let x_418 : vec4<f32> = u_xlat4;
  u_xlat12.x = dot(vec3<f32>(x_416.x, x_416.y, x_416.z), vec3<f32>(x_418.x, x_418.y, x_418.z));
  let x_423 : f32 = u_xlat12.x;
  let x_425 : f32 = x_86.x_MainLightShadowParams.z;
  let x_428 : f32 = x_86.x_MainLightShadowParams.w;
  u_xlat12.x = ((x_423 * x_425) + x_428);
  let x_432 : f32 = u_xlat12.x;
  u_xlat12.x = clamp(x_432, 0.0f, 1.0f);
  let x_437 : f32 = u_xlat2.x;
  u_xlat22 = (-(x_437) + 1.0f);
  let x_441 : f32 = u_xlat12.x;
  let x_442 : f32 = u_xlat22;
  let x_445 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_441 * x_442) + x_445);
  let x_454 : f32 = x_452.x_MainLightCookieTextureFormat;
  u_xlatb12.x = !((x_454 == -1.0f));
  let x_458 : bool = u_xlatb12.x;
  if (x_458) {
    let x_461 : vec3<f32> = vs_TEXCOORD1;
    let x_464 : vec4<f32> = x_452.x_MainLightWorldToLight[1i];
    u_xlat12 = (vec2<f32>(x_461.y, x_461.y) * vec2<f32>(x_464.x, x_464.y));
    let x_468 : vec4<f32> = x_452.x_MainLightWorldToLight[0i];
    let x_470 : vec3<f32> = vs_TEXCOORD1;
    let x_473 : vec2<f32> = u_xlat12;
    u_xlat12 = ((vec2<f32>(x_468.x, x_468.y) * vec2<f32>(x_470.x, x_470.x)) + x_473);
    let x_476 : vec4<f32> = x_452.x_MainLightWorldToLight[2i];
    let x_478 : vec3<f32> = vs_TEXCOORD1;
    let x_481 : vec2<f32> = u_xlat12;
    u_xlat12 = ((vec2<f32>(x_476.x, x_476.y) * vec2<f32>(x_478.z, x_478.z)) + x_481);
    let x_483 : vec2<f32> = u_xlat12;
    let x_485 : vec4<f32> = x_452.x_MainLightWorldToLight[3i];
    u_xlat12 = (x_483 + vec2<f32>(x_485.x, x_485.y));
    let x_488 : vec2<f32> = u_xlat12;
    u_xlat12 = ((x_488 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_498 : vec2<f32> = u_xlat12;
    let x_500 : f32 = x_43.x_GlobalMipBias.x;
    let x_501 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_498, x_500);
    u_xlat4 = x_501;
    let x_503 : f32 = x_452.x_MainLightCookieTextureFormat;
    let x_505 : f32 = x_452.x_MainLightCookieTextureFormat;
    let x_507 : f32 = x_452.x_MainLightCookieTextureFormat;
    let x_509 : f32 = x_452.x_MainLightCookieTextureFormat;
    let x_510 : vec4<f32> = vec4<f32>(x_503, x_505, x_507, x_509);
    let x_517 : vec4<bool> = (vec4<f32>(x_510.x, x_510.y, x_510.z, x_510.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb12 = vec2<bool>(x_517.x, x_517.y);
    let x_520 : bool = u_xlatb12.y;
    if (x_520) {
      let x_525 : f32 = u_xlat4.w;
      x_521 = x_525;
    } else {
      let x_528 : f32 = u_xlat4.x;
      x_521 = x_528;
    }
    let x_529 : f32 = x_521;
    u_xlat22 = x_529;
    let x_531 : bool = u_xlatb12.x;
    if (x_531) {
      let x_535 : vec4<f32> = u_xlat4;
      x_532 = vec3<f32>(x_535.x, x_535.y, x_535.z);
    } else {
      let x_538 : f32 = u_xlat22;
      x_532 = vec3<f32>(x_538, x_538, x_538);
    }
    let x_540 : vec3<f32> = x_532;
    let x_541 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_540.x, x_540.y, x_540.z, x_541.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_547 : vec4<f32> = u_xlat4;
  let x_550 : vec4<f32> = x_43.x_MainLightColor;
  let x_552 : vec3<f32> = (vec3<f32>(x_547.x, x_547.y, x_547.z) * vec3<f32>(x_550.x, x_550.y, x_550.z));
  let x_553 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_552.x, x_552.y, x_552.z, x_553.w);
  let x_555 : f32 = u_xlat32;
  let x_557 : vec4<f32> = u_xlat4;
  let x_559 : vec3<f32> = (vec3<f32>(x_555, x_555, x_555) * vec3<f32>(x_557.x, x_557.y, x_557.z));
  let x_560 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_559.x, x_559.y, x_559.z, x_560.w);
  let x_562 : f32 = u_xlat31;
  let x_564 : vec4<f32> = u_xlat3;
  let x_566 : vec3<f32> = (vec3<f32>(x_562, x_562, x_562) * vec3<f32>(x_564.x, x_564.y, x_564.z));
  let x_567 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_566.x, x_566.y, x_566.z, x_567.w);
  let x_570 : f32 = u_xlat2.x;
  let x_576 : f32 = x_574.unity_LightData.z;
  u_xlat31 = (x_570 * x_576);
  let x_578 : f32 = u_xlat31;
  let x_580 : vec4<f32> = u_xlat4;
  let x_582 : vec3<f32> = (vec3<f32>(x_578, x_578, x_578) * vec3<f32>(x_580.x, x_580.y, x_580.z));
  let x_583 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_582.x, x_582.y, x_582.z, x_583.w);
  let x_585 : vec3<f32> = u_xlat1;
  let x_587 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat31 = dot(x_585, vec3<f32>(x_587.x, x_587.y, x_587.z));
  let x_590 : f32 = u_xlat31;
  u_xlat31 = clamp(x_590, 0.0f, 1.0f);
  let x_592 : f32 = u_xlat31;
  let x_594 : vec4<f32> = u_xlat2;
  let x_596 : vec3<f32> = (vec3<f32>(x_592, x_592, x_592) * vec3<f32>(x_594.x, x_594.y, x_594.z));
  let x_597 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_596.x, x_596.y, x_596.z, x_597.w);
  let x_599 : vec4<f32> = u_xlat0;
  let x_601 : vec4<f32> = u_xlat2;
  let x_603 : vec3<f32> = (vec3<f32>(x_599.y, x_599.z, x_599.w) * vec3<f32>(x_601.x, x_601.y, x_601.z));
  let x_604 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_603.x, x_603.y, x_603.z, x_604.w);
  let x_607 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_609 : f32 = x_574.unity_LightData.y;
  u_xlat31 = min(x_607, x_609);
  let x_611 : f32 = u_xlat31;
  u_xlatu31 = bitcast<u32>(i32(x_611));
  let x_616 : f32 = x_452.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_618 : f32 = x_452.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_620 : f32 = x_452.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_622 : f32 = x_452.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_623 : vec4<f32> = vec4<f32>(x_616, x_618, x_620, x_622);
  let x_629 : vec4<bool> = (vec4<f32>(x_623.x, x_623.y, x_623.z, x_623.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb4 = vec2<bool>(x_629.x, x_629.y);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_640 : u32 = u_xlatu_loop_1;
    let x_641 : u32 = u_xlatu31;
    if ((x_640 < x_641)) {
    } else {
      break;
    }
    let x_644 : u32 = u_xlatu_loop_1;
    u_xlatu24 = (x_644 >> 2u);
    let x_647 : u32 = u_xlatu_loop_1;
    u_xlati34 = bitcast<i32>((x_647 & 3u));
    let x_651 : u32 = u_xlatu24;
    let x_654 : vec4<f32> = x_574.unity_LightIndices[bitcast<i32>(x_651)];
    let x_664 : i32 = u_xlati34;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_669 : vec4<u32> = indexable[x_664];
    u_xlat24 = dot(x_654, bitcast<vec4<f32>>(x_669));
    let x_672 : f32 = u_xlat24;
    u_xlatu24 = bitcast<u32>(i32(x_672));
    let x_676 : vec3<f32> = vs_TEXCOORD1;
    let x_688 : u32 = u_xlatu24;
    let x_691 : vec4<f32> = x_687.x_AdditionalLightsPosition[bitcast<i32>(x_688)];
    let x_694 : u32 = u_xlatu24;
    let x_697 : vec4<f32> = x_687.x_AdditionalLightsPosition[bitcast<i32>(x_694)];
    u_xlat6 = ((-(x_676) * vec3<f32>(x_691.w, x_691.w, x_691.w)) + vec3<f32>(x_697.x, x_697.y, x_697.z));
    let x_701 : vec3<f32> = u_xlat6;
    let x_702 : vec3<f32> = u_xlat6;
    u_xlat34 = dot(x_701, x_702);
    let x_704 : f32 = u_xlat34;
    u_xlat34 = max(x_704, 6.10351562e-05f);
    let x_708 : f32 = u_xlat34;
    u_xlat35 = inverseSqrt(x_708);
    let x_710 : f32 = u_xlat35;
    let x_712 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_710, x_710, x_710) * x_712);
    let x_714 : f32 = u_xlat34;
    u_xlat35 = (1.0f / x_714);
    let x_716 : f32 = u_xlat34;
    let x_717 : u32 = u_xlatu24;
    let x_720 : f32 = x_687.x_AdditionalLightsAttenuation[bitcast<i32>(x_717)].x;
    u_xlat34 = (x_716 * x_720);
    let x_722 : f32 = u_xlat34;
    let x_724 : f32 = u_xlat34;
    u_xlat34 = ((-(x_722) * x_724) + 1.0f);
    let x_727 : f32 = u_xlat34;
    u_xlat34 = max(x_727, 0.0f);
    let x_729 : f32 = u_xlat34;
    let x_730 : f32 = u_xlat34;
    u_xlat34 = (x_729 * x_730);
    let x_732 : f32 = u_xlat34;
    let x_733 : f32 = u_xlat35;
    u_xlat34 = (x_732 * x_733);
    let x_735 : u32 = u_xlatu24;
    let x_738 : vec4<f32> = x_687.x_AdditionalLightsSpotDir[bitcast<i32>(x_735)];
    let x_740 : vec3<f32> = u_xlat6;
    u_xlat35 = dot(vec3<f32>(x_738.x, x_738.y, x_738.z), x_740);
    let x_742 : f32 = u_xlat35;
    let x_743 : u32 = u_xlatu24;
    let x_746 : f32 = x_687.x_AdditionalLightsAttenuation[bitcast<i32>(x_743)].z;
    let x_748 : u32 = u_xlatu24;
    let x_751 : f32 = x_687.x_AdditionalLightsAttenuation[bitcast<i32>(x_748)].w;
    u_xlat35 = ((x_742 * x_746) + x_751);
    let x_753 : f32 = u_xlat35;
    u_xlat35 = clamp(x_753, 0.0f, 1.0f);
    let x_755 : f32 = u_xlat35;
    let x_756 : f32 = u_xlat35;
    u_xlat35 = (x_755 * x_756);
    let x_758 : f32 = u_xlat34;
    let x_759 : f32 = u_xlat35;
    u_xlat34 = (x_758 * x_759);
    let x_762 : u32 = u_xlatu24;
    u_xlatu35 = (x_762 >> 5u);
    let x_765 : u32 = u_xlatu24;
    u_xlati36 = (1i << bitcast<u32>((bitcast<i32>(x_765) & 31i)));
    let x_771 : i32 = u_xlati36;
    let x_773 : u32 = u_xlatu35;
    let x_776 : f32 = x_452.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_773)].el;
    u_xlati35 = bitcast<i32>((bitcast<u32>(x_771) & bitcast<u32>(x_776)));
    let x_780 : i32 = u_xlati35;
    if ((x_780 != 0i)) {
      let x_790 : u32 = u_xlatu24;
      let x_793 : f32 = x_789.x_AdditionalLightsLightTypes[bitcast<i32>(x_790)].el;
      u_xlati35 = i32(x_793);
      let x_795 : i32 = u_xlati35;
      u_xlati36 = select(1i, 0i, (x_795 != 0i));
      let x_799 : u32 = u_xlatu24;
      u_xlati7 = (bitcast<i32>(x_799) << bitcast<u32>(2i));
      let x_802 : i32 = u_xlati36;
      if ((x_802 != 0i)) {
        let x_807 : vec3<f32> = vs_TEXCOORD1;
        let x_809 : i32 = u_xlati7;
        let x_812 : i32 = u_xlati7;
        let x_816 : vec4<f32> = x_789.x_AdditionalLightsWorldToLights[((x_809 + 1i) / 4i)][((x_812 + 1i) % 4i)];
        u_xlat17 = (vec3<f32>(x_807.y, x_807.y, x_807.y) * vec3<f32>(x_816.x, x_816.y, x_816.w));
        let x_819 : i32 = u_xlati7;
        let x_821 : i32 = u_xlati7;
        let x_824 : vec4<f32> = x_789.x_AdditionalLightsWorldToLights[(x_819 / 4i)][(x_821 % 4i)];
        let x_826 : vec3<f32> = vs_TEXCOORD1;
        let x_829 : vec3<f32> = u_xlat17;
        u_xlat17 = ((vec3<f32>(x_824.x, x_824.y, x_824.w) * vec3<f32>(x_826.x, x_826.x, x_826.x)) + x_829);
        let x_831 : i32 = u_xlati7;
        let x_834 : i32 = u_xlati7;
        let x_838 : vec4<f32> = x_789.x_AdditionalLightsWorldToLights[((x_831 + 2i) / 4i)][((x_834 + 2i) % 4i)];
        let x_840 : vec3<f32> = vs_TEXCOORD1;
        let x_843 : vec3<f32> = u_xlat17;
        u_xlat17 = ((vec3<f32>(x_838.x, x_838.y, x_838.w) * vec3<f32>(x_840.z, x_840.z, x_840.z)) + x_843);
        let x_845 : vec3<f32> = u_xlat17;
        let x_846 : i32 = u_xlati7;
        let x_849 : i32 = u_xlati7;
        let x_853 : vec4<f32> = x_789.x_AdditionalLightsWorldToLights[((x_846 + 3i) / 4i)][((x_849 + 3i) % 4i)];
        u_xlat17 = (x_845 + vec3<f32>(x_853.x, x_853.y, x_853.w));
        let x_856 : vec3<f32> = u_xlat17;
        let x_858 : vec3<f32> = u_xlat17;
        let x_860 : vec2<f32> = (vec2<f32>(x_856.x, x_856.y) / vec2<f32>(x_858.z, x_858.z));
        let x_861 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_860.x, x_860.y, x_861.z);
        let x_863 : vec3<f32> = u_xlat17;
        let x_866 : vec2<f32> = ((vec2<f32>(x_863.x, x_863.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_867 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_866.x, x_866.y, x_867.z);
        let x_869 : vec3<f32> = u_xlat17;
        let x_873 : vec2<f32> = clamp(vec2<f32>(x_869.x, x_869.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_874 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_873.x, x_873.y, x_874.z);
        let x_876 : u32 = u_xlatu24;
        let x_879 : vec4<f32> = x_789.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_876)];
        let x_881 : vec3<f32> = u_xlat17;
        let x_884 : u32 = u_xlatu24;
        let x_887 : vec4<f32> = x_789.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_884)];
        let x_889 : vec2<f32> = ((vec2<f32>(x_879.x, x_879.y) * vec2<f32>(x_881.x, x_881.y)) + vec2<f32>(x_887.z, x_887.w));
        let x_890 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_889.x, x_889.y, x_890.z);
      } else {
        let x_894 : i32 = u_xlati35;
        u_xlatb35 = (x_894 == 1i);
        let x_896 : bool = u_xlatb35;
        u_xlati35 = select(0i, 1i, x_896);
        let x_898 : i32 = u_xlati35;
        if ((x_898 != 0i)) {
          let x_903 : vec3<f32> = vs_TEXCOORD1;
          let x_905 : i32 = u_xlati7;
          let x_908 : i32 = u_xlati7;
          let x_912 : vec4<f32> = x_789.x_AdditionalLightsWorldToLights[((x_905 + 1i) / 4i)][((x_908 + 1i) % 4i)];
          let x_914 : vec2<f32> = (vec2<f32>(x_903.y, x_903.y) * vec2<f32>(x_912.x, x_912.y));
          let x_915 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_914.x, x_914.y, x_915.z, x_915.w);
          let x_917 : i32 = u_xlati7;
          let x_919 : i32 = u_xlati7;
          let x_922 : vec4<f32> = x_789.x_AdditionalLightsWorldToLights[(x_917 / 4i)][(x_919 % 4i)];
          let x_924 : vec3<f32> = vs_TEXCOORD1;
          let x_927 : vec4<f32> = u_xlat8;
          let x_929 : vec2<f32> = ((vec2<f32>(x_922.x, x_922.y) * vec2<f32>(x_924.x, x_924.x)) + vec2<f32>(x_927.x, x_927.y));
          let x_930 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_929.x, x_929.y, x_930.z, x_930.w);
          let x_932 : i32 = u_xlati7;
          let x_935 : i32 = u_xlati7;
          let x_939 : vec4<f32> = x_789.x_AdditionalLightsWorldToLights[((x_932 + 2i) / 4i)][((x_935 + 2i) % 4i)];
          let x_941 : vec3<f32> = vs_TEXCOORD1;
          let x_944 : vec4<f32> = u_xlat8;
          let x_946 : vec2<f32> = ((vec2<f32>(x_939.x, x_939.y) * vec2<f32>(x_941.z, x_941.z)) + vec2<f32>(x_944.x, x_944.y));
          let x_947 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_946.x, x_946.y, x_947.z, x_947.w);
          let x_949 : vec4<f32> = u_xlat8;
          let x_951 : i32 = u_xlati7;
          let x_954 : i32 = u_xlati7;
          let x_958 : vec4<f32> = x_789.x_AdditionalLightsWorldToLights[((x_951 + 3i) / 4i)][((x_954 + 3i) % 4i)];
          let x_960 : vec2<f32> = (vec2<f32>(x_949.x, x_949.y) + vec2<f32>(x_958.x, x_958.y));
          let x_961 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_960.x, x_960.y, x_961.z, x_961.w);
          let x_963 : vec4<f32> = u_xlat8;
          let x_966 : vec2<f32> = ((vec2<f32>(x_963.x, x_963.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_967 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_966.x, x_966.y, x_967.z, x_967.w);
          let x_969 : vec4<f32> = u_xlat8;
          let x_971 : vec2<f32> = fract(vec2<f32>(x_969.x, x_969.y));
          let x_972 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_971.x, x_971.y, x_972.z, x_972.w);
          let x_974 : u32 = u_xlatu24;
          let x_977 : vec4<f32> = x_789.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_974)];
          let x_979 : vec4<f32> = u_xlat8;
          let x_982 : u32 = u_xlatu24;
          let x_985 : vec4<f32> = x_789.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_982)];
          let x_987 : vec2<f32> = ((vec2<f32>(x_977.x, x_977.y) * vec2<f32>(x_979.x, x_979.y)) + vec2<f32>(x_985.z, x_985.w));
          let x_988 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_987.x, x_987.y, x_988.z);
        } else {
          let x_991 : vec3<f32> = vs_TEXCOORD1;
          let x_993 : i32 = u_xlati7;
          let x_996 : i32 = u_xlati7;
          let x_1000 : vec4<f32> = x_789.x_AdditionalLightsWorldToLights[((x_993 + 1i) / 4i)][((x_996 + 1i) % 4i)];
          u_xlat8 = (vec4<f32>(x_991.y, x_991.y, x_991.y, x_991.y) * x_1000);
          let x_1002 : i32 = u_xlati7;
          let x_1004 : i32 = u_xlati7;
          let x_1007 : vec4<f32> = x_789.x_AdditionalLightsWorldToLights[(x_1002 / 4i)][(x_1004 % 4i)];
          let x_1008 : vec3<f32> = vs_TEXCOORD1;
          let x_1011 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_1007 * vec4<f32>(x_1008.x, x_1008.x, x_1008.x, x_1008.x)) + x_1011);
          let x_1013 : i32 = u_xlati7;
          let x_1016 : i32 = u_xlati7;
          let x_1020 : vec4<f32> = x_789.x_AdditionalLightsWorldToLights[((x_1013 + 2i) / 4i)][((x_1016 + 2i) % 4i)];
          let x_1021 : vec3<f32> = vs_TEXCOORD1;
          let x_1024 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_1020 * vec4<f32>(x_1021.z, x_1021.z, x_1021.z, x_1021.z)) + x_1024);
          let x_1026 : vec4<f32> = u_xlat8;
          let x_1027 : i32 = u_xlati7;
          let x_1030 : i32 = u_xlati7;
          let x_1034 : vec4<f32> = x_789.x_AdditionalLightsWorldToLights[((x_1027 + 3i) / 4i)][((x_1030 + 3i) % 4i)];
          u_xlat8 = (x_1026 + x_1034);
          let x_1036 : vec4<f32> = u_xlat8;
          let x_1038 : vec4<f32> = u_xlat8;
          let x_1040 : vec3<f32> = (vec3<f32>(x_1036.x, x_1036.y, x_1036.z) / vec3<f32>(x_1038.w, x_1038.w, x_1038.w));
          let x_1041 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1040.x, x_1040.y, x_1040.z, x_1041.w);
          let x_1043 : vec4<f32> = u_xlat8;
          let x_1045 : vec4<f32> = u_xlat8;
          u_xlat35 = dot(vec3<f32>(x_1043.x, x_1043.y, x_1043.z), vec3<f32>(x_1045.x, x_1045.y, x_1045.z));
          let x_1048 : f32 = u_xlat35;
          u_xlat35 = inverseSqrt(x_1048);
          let x_1050 : f32 = u_xlat35;
          let x_1052 : vec4<f32> = u_xlat8;
          let x_1054 : vec3<f32> = (vec3<f32>(x_1050, x_1050, x_1050) * vec3<f32>(x_1052.x, x_1052.y, x_1052.z));
          let x_1055 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1054.x, x_1054.y, x_1054.z, x_1055.w);
          let x_1057 : vec4<f32> = u_xlat8;
          u_xlat35 = dot(abs(vec3<f32>(x_1057.x, x_1057.y, x_1057.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1062 : f32 = u_xlat35;
          u_xlat35 = max(x_1062, 0.000001f);
          let x_1065 : f32 = u_xlat35;
          u_xlat35 = (1.0f / x_1065);
          let x_1068 : f32 = u_xlat35;
          let x_1070 : vec4<f32> = u_xlat8;
          u_xlat9 = (vec3<f32>(x_1068, x_1068, x_1068) * vec3<f32>(x_1070.z, x_1070.x, x_1070.y));
          let x_1074 : f32 = u_xlat9.x;
          u_xlat9.x = -(x_1074);
          let x_1078 : f32 = u_xlat9.x;
          u_xlat9.x = clamp(x_1078, 0.0f, 1.0f);
          let x_1082 : vec3<f32> = u_xlat9;
          let x_1085 : vec4<bool> = (vec4<f32>(x_1082.y, x_1082.y, x_1082.y, x_1082.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1086 : vec2<bool> = vec2<bool>(x_1085.x, x_1085.w);
          let x_1087 : vec4<bool> = u_xlatb7;
          u_xlatb7 = vec4<bool>(x_1086.x, x_1087.y, x_1087.z, x_1086.y);
          let x_1091 : bool = u_xlatb7.x;
          if (x_1091) {
            let x_1096 : f32 = u_xlat9.x;
            x_1092 = x_1096;
          } else {
            let x_1099 : f32 = u_xlat9.x;
            x_1092 = -(x_1099);
          }
          let x_1101 : f32 = x_1092;
          u_xlat7.x = x_1101;
          let x_1104 : bool = u_xlatb7.w;
          if (x_1104) {
            let x_1109 : f32 = u_xlat9.x;
            x_1105 = x_1109;
          } else {
            let x_1112 : f32 = u_xlat9.x;
            x_1105 = -(x_1112);
          }
          let x_1114 : f32 = x_1105;
          u_xlat7.w = x_1114;
          let x_1116 : vec4<f32> = u_xlat8;
          let x_1118 : f32 = u_xlat35;
          let x_1121 : vec4<f32> = u_xlat7;
          let x_1123 : vec2<f32> = ((vec2<f32>(x_1116.x, x_1116.y) * vec2<f32>(x_1118, x_1118)) + vec2<f32>(x_1121.x, x_1121.w));
          let x_1124 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_1123.x, x_1124.y, x_1124.z, x_1123.y);
          let x_1126 : vec4<f32> = u_xlat7;
          let x_1129 : vec2<f32> = ((vec2<f32>(x_1126.x, x_1126.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1130 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_1129.x, x_1130.y, x_1130.z, x_1129.y);
          let x_1132 : vec4<f32> = u_xlat7;
          let x_1136 : vec2<f32> = clamp(vec2<f32>(x_1132.x, x_1132.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1137 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_1136.x, x_1137.y, x_1137.z, x_1136.y);
          let x_1139 : u32 = u_xlatu24;
          let x_1142 : vec4<f32> = x_789.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1139)];
          let x_1144 : vec4<f32> = u_xlat7;
          let x_1147 : u32 = u_xlatu24;
          let x_1150 : vec4<f32> = x_789.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1147)];
          let x_1152 : vec2<f32> = ((vec2<f32>(x_1142.x, x_1142.y) * vec2<f32>(x_1144.x, x_1144.w)) + vec2<f32>(x_1150.z, x_1150.w));
          let x_1153 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_1152.x, x_1152.y, x_1153.z);
        }
      }
      let x_1160 : vec3<f32> = u_xlat17;
      let x_1163 : f32 = x_43.x_GlobalMipBias.x;
      let x_1164 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1160.x, x_1160.y), x_1163);
      u_xlat7 = x_1164;
      let x_1166 : bool = u_xlatb4.y;
      if (x_1166) {
        let x_1171 : f32 = u_xlat7.w;
        x_1167 = x_1171;
      } else {
        let x_1174 : f32 = u_xlat7.x;
        x_1167 = x_1174;
      }
      let x_1175 : f32 = x_1167;
      u_xlat35 = x_1175;
      let x_1177 : bool = u_xlatb4.x;
      if (x_1177) {
        let x_1181 : vec4<f32> = u_xlat7;
        x_1178 = vec3<f32>(x_1181.x, x_1181.y, x_1181.z);
      } else {
        let x_1184 : f32 = u_xlat35;
        x_1178 = vec3<f32>(x_1184, x_1184, x_1184);
      }
      let x_1186 : vec3<f32> = x_1178;
      let x_1187 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_1186.x, x_1186.y, x_1186.z, x_1187.w);
    } else {
      u_xlat7.x = 1.0f;
      u_xlat7.y = 1.0f;
      u_xlat7.z = 1.0f;
    }
    let x_1193 : vec4<f32> = u_xlat7;
    let x_1195 : u32 = u_xlatu24;
    let x_1198 : vec4<f32> = x_687.x_AdditionalLightsColor[bitcast<i32>(x_1195)];
    let x_1200 : vec3<f32> = (vec3<f32>(x_1193.x, x_1193.y, x_1193.z) * vec3<f32>(x_1198.x, x_1198.y, x_1198.z));
    let x_1201 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1200.x, x_1200.y, x_1200.z, x_1201.w);
    let x_1203 : f32 = u_xlat32;
    let x_1205 : vec4<f32> = u_xlat7;
    let x_1207 : vec3<f32> = (vec3<f32>(x_1203, x_1203, x_1203) * vec3<f32>(x_1205.x, x_1205.y, x_1205.z));
    let x_1208 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1207.x, x_1207.y, x_1207.z, x_1208.w);
    let x_1210 : f32 = u_xlat34;
    let x_1212 : vec4<f32> = u_xlat7;
    let x_1214 : vec3<f32> = (vec3<f32>(x_1210, x_1210, x_1210) * vec3<f32>(x_1212.x, x_1212.y, x_1212.z));
    let x_1215 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1214.x, x_1214.y, x_1214.z, x_1215.w);
    let x_1217 : vec3<f32> = u_xlat1;
    let x_1218 : vec3<f32> = u_xlat6;
    u_xlat24 = dot(x_1217, x_1218);
    let x_1220 : f32 = u_xlat24;
    u_xlat24 = clamp(x_1220, 0.0f, 1.0f);
    let x_1222 : f32 = u_xlat24;
    let x_1224 : vec4<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_1222, x_1222, x_1222) * vec3<f32>(x_1224.x, x_1224.y, x_1224.z));
    let x_1227 : vec3<f32> = u_xlat6;
    let x_1228 : vec4<f32> = u_xlat0;
    let x_1231 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_1227 * vec3<f32>(x_1228.y, x_1228.z, x_1228.w)) + x_1231);

    continuing {
      let x_1233 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1233 + bitcast<u32>(1i));
    }
  }
  let x_1236 : vec4<f32> = u_xlat3;
  let x_1238 : vec4<f32> = u_xlat0;
  let x_1241 : vec4<f32> = u_xlat2;
  u_xlat10 = ((vec3<f32>(x_1236.x, x_1236.y, x_1236.z) * vec3<f32>(x_1238.y, x_1238.z, x_1238.w)) + vec3<f32>(x_1241.x, x_1241.y, x_1241.z));
  let x_1246 : vec3<f32> = u_xlat5;
  let x_1247 : vec3<f32> = u_xlat10;
  let x_1248 : vec3<f32> = (x_1246 + x_1247);
  let x_1249 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1248.x, x_1248.y, x_1248.z, x_1249.w);
  let x_1253 : f32 = x_55.x_Surface;
  u_xlatb10 = (x_1253 == 1.0f);
  let x_1255 : bool = u_xlatb10;
  if (x_1255) {
    let x_1260 : f32 = u_xlat0.x;
    x_1256 = x_1260;
  } else {
    x_1256 = 1.0f;
  }
  let x_1262 : f32 = x_1256;
  SV_Target0.w = x_1262;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD7_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  main_1();
  return main_out(SV_Target0);
}

