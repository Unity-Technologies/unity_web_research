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

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_55 : UnityPerMaterial;

@group(0) @binding(5) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_92 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_155 : MainLightShadows;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_574 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_822 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_924 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb11 : bool;
  var x_99 : f32;
  var u_xlatb1 : bool;
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
  var x_521 : f32;
  var u_xlat22 : f32;
  var x_658 : f32;
  var x_669 : vec3<f32>;
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
  var x_1227 : f32;
  var x_1240 : f32;
  var x_1302 : f32;
  var x_1313 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb10 : bool;
  var x_1392 : f32;
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
  u_xlatb11 = (x_95 >= 0.0f);
  let x_98 : bool = u_xlatb11;
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
  let x_150 : vec3<f32> = vs_TEXCOORD1;
  let x_157 : vec4<f32> = x_155.x_CascadeShadowSplitSpheres0;
  let x_160 : vec3<f32> = (x_150 + -(vec3<f32>(x_157.x, x_157.y, x_157.z)));
  let x_161 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
  let x_164 : vec3<f32> = vs_TEXCOORD1;
  let x_166 : vec4<f32> = x_155.x_CascadeShadowSplitSpheres1;
  let x_169 : vec3<f32> = (x_164 + -(vec3<f32>(x_166.x, x_166.y, x_166.z)));
  let x_170 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_169.x, x_169.y, x_169.z, x_170.w);
  let x_173 : vec3<f32> = vs_TEXCOORD1;
  let x_176 : vec4<f32> = x_155.x_CascadeShadowSplitSpheres2;
  let x_179 : vec3<f32> = (x_173 + -(vec3<f32>(x_176.x, x_176.y, x_176.z)));
  let x_180 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
  let x_184 : vec3<f32> = vs_TEXCOORD1;
  let x_187 : vec4<f32> = x_155.x_CascadeShadowSplitSpheres3;
  u_xlat5 = (x_184 + -(vec3<f32>(x_187.x, x_187.y, x_187.z)));
  let x_191 : vec4<f32> = u_xlat2;
  let x_193 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_191.x, x_191.y, x_191.z), vec3<f32>(x_193.x, x_193.y, x_193.z));
  let x_197 : vec4<f32> = u_xlat3;
  let x_199 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_197.x, x_197.y, x_197.z), vec3<f32>(x_199.x, x_199.y, x_199.z));
  let x_204 : vec4<f32> = u_xlat4;
  let x_206 : vec4<f32> = u_xlat4;
  u_xlat2.z = dot(vec3<f32>(x_204.x, x_204.y, x_204.z), vec3<f32>(x_206.x, x_206.y, x_206.z));
  let x_210 : vec3<f32> = u_xlat5;
  let x_211 : vec3<f32> = u_xlat5;
  u_xlat2.w = dot(x_210, x_211);
  let x_217 : vec4<f32> = u_xlat2;
  let x_220 : vec4<f32> = x_155.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_217 < x_220);
  let x_223 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_223);
  let x_227 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_227);
  let x_231 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_231);
  let x_235 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_235);
  let x_239 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_239);
  let x_245 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_245);
  let x_249 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_249);
  let x_252 : vec4<f32> = u_xlat2;
  let x_254 : vec4<f32> = u_xlat3;
  let x_256 : vec3<f32> = (vec3<f32>(x_252.x, x_252.y, x_252.z) + vec3<f32>(x_254.y, x_254.z, x_254.w));
  let x_257 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_256.x, x_256.y, x_256.z, x_257.w);
  let x_259 : vec4<f32> = u_xlat2;
  let x_262 : vec3<f32> = max(vec3<f32>(x_259.x, x_259.y, x_259.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_263 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_263.x, x_262.x, x_262.y, x_262.z);
  let x_265 : vec4<f32> = u_xlat3;
  u_xlat2.x = dot(x_265, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_273 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_273) + 4.0f);
  let x_280 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_280);
  let x_284 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_284) << bitcast<u32>(2i));
  let x_288 : vec3<f32> = vs_TEXCOORD1;
  let x_290 : i32 = u_xlati2;
  let x_293 : i32 = u_xlati2;
  let x_297 : vec4<f32> = x_155.x_MainLightWorldToShadow[((x_290 + 1i) / 4i)][((x_293 + 1i) % 4i)];
  u_xlat12 = (vec3<f32>(x_288.y, x_288.y, x_288.y) * vec3<f32>(x_297.x, x_297.y, x_297.z));
  let x_300 : i32 = u_xlati2;
  let x_302 : i32 = u_xlati2;
  let x_305 : vec4<f32> = x_155.x_MainLightWorldToShadow[(x_300 / 4i)][(x_302 % 4i)];
  let x_307 : vec3<f32> = vs_TEXCOORD1;
  let x_310 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_305.x, x_305.y, x_305.z) * vec3<f32>(x_307.x, x_307.x, x_307.x)) + x_310);
  let x_312 : i32 = u_xlati2;
  let x_315 : i32 = u_xlati2;
  let x_319 : vec4<f32> = x_155.x_MainLightWorldToShadow[((x_312 + 2i) / 4i)][((x_315 + 2i) % 4i)];
  let x_321 : vec3<f32> = vs_TEXCOORD1;
  let x_324 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_319.x, x_319.y, x_319.z) * vec3<f32>(x_321.z, x_321.z, x_321.z)) + x_324);
  let x_326 : vec3<f32> = u_xlat12;
  let x_327 : i32 = u_xlati2;
  let x_330 : i32 = u_xlati2;
  let x_334 : vec4<f32> = x_155.x_MainLightWorldToShadow[((x_327 + 3i) / 4i)][((x_330 + 3i) % 4i)];
  let x_336 : vec3<f32> = (x_326 + vec3<f32>(x_334.x, x_334.y, x_334.z));
  let x_337 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_336.x, x_336.y, x_336.z, x_337.w);
  u_xlat1.w = 1.0f;
  let x_342 : vec4<f32> = x_92.unity_SHAr;
  let x_343 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_342, x_343);
  let x_348 : vec4<f32> = x_92.unity_SHAg;
  let x_349 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_348, x_349);
  let x_354 : vec4<f32> = x_92.unity_SHAb;
  let x_355 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_354, x_355);
  let x_358 : vec4<f32> = u_xlat1;
  let x_360 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_358.y, x_358.z, x_358.z, x_358.x) * vec4<f32>(x_360.x, x_360.y, x_360.z, x_360.z));
  let x_365 : vec4<f32> = x_92.unity_SHBr;
  let x_366 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_365, x_366);
  let x_371 : vec4<f32> = x_92.unity_SHBg;
  let x_372 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_371, x_372);
  let x_377 : vec4<f32> = x_92.unity_SHBb;
  let x_378 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_377, x_378);
  let x_383 : f32 = u_xlat1.y;
  let x_385 : f32 = u_xlat1.y;
  u_xlat31 = (x_383 * x_385);
  let x_388 : f32 = u_xlat1.x;
  let x_390 : f32 = u_xlat1.x;
  let x_392 : f32 = u_xlat31;
  u_xlat31 = ((x_388 * x_390) + -(x_392));
  let x_397 : vec4<f32> = x_92.unity_SHC;
  let x_399 : f32 = u_xlat31;
  let x_402 : vec3<f32> = u_xlat5;
  let x_403 : vec3<f32> = ((vec3<f32>(x_397.x, x_397.y, x_397.z) * vec3<f32>(x_399, x_399, x_399)) + x_402);
  let x_404 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_403.x, x_403.y, x_403.z, x_404.w);
  let x_406 : vec4<f32> = u_xlat3;
  let x_408 : vec4<f32> = u_xlat4;
  let x_410 : vec3<f32> = (vec3<f32>(x_406.x, x_406.y, x_406.z) + vec3<f32>(x_408.x, x_408.y, x_408.z));
  let x_411 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_410.x, x_410.y, x_410.z, x_411.w);
  let x_413 : vec4<f32> = u_xlat3;
  let x_415 : vec3<f32> = max(vec3<f32>(x_413.x, x_413.y, x_413.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_416 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_415.x, x_415.y, x_415.z, x_416.w);
  let x_420 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_421 : vec2<f32> = vec2<f32>(x_420.x, x_420.y);
  let x_425 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_421.x, x_421.y));
  let x_426 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_425.x, x_425.y, x_426.z, x_426.w);
  let x_428 : vec4<f32> = u_xlat4;
  let x_430 : vec4<f32> = hlslcc_FragCoord;
  let x_432 : vec2<f32> = (vec2<f32>(x_428.x, x_428.y) * vec2<f32>(x_430.x, x_430.y));
  let x_433 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_432.x, x_432.y, x_433.z, x_433.w);
  let x_436 : f32 = u_xlat4.y;
  let x_439 : f32 = x_43.x_ScaleBiasRt.x;
  let x_442 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat31 = ((x_436 * x_439) + x_442);
  let x_444 : f32 = u_xlat31;
  u_xlat4.z = (-(x_444) + 1.0f);
  let x_453 : vec4<f32> = u_xlat4;
  let x_456 : f32 = x_43.x_GlobalMipBias.x;
  let x_457 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_453.x, x_453.z), x_456);
  u_xlat31 = x_457.x;
  let x_460 : f32 = u_xlat31;
  u_xlat32 = (x_460 + -1.0f);
  let x_463 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_464 : f32 = u_xlat32;
  u_xlat32 = ((x_463 * x_464) + 1.0f);
  let x_467 : f32 = u_xlat31;
  u_xlat31 = min(x_467, 1.0f);
  let x_470 : vec4<f32> = u_xlat2;
  let x_471 : vec2<f32> = vec2<f32>(x_470.x, x_470.y);
  let x_473 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_471.x, x_471.y, x_473);
  let x_485 : vec3<f32> = txVec0;
  let x_487 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_485.xy, x_485.z);
  u_xlat2.x = x_487;
  let x_490 : f32 = x_155.x_MainLightShadowParams.x;
  u_xlat12.x = (-(x_490) + 1.0f);
  let x_495 : f32 = u_xlat2.x;
  let x_497 : f32 = x_155.x_MainLightShadowParams.x;
  let x_500 : f32 = u_xlat12.x;
  u_xlat2.x = ((x_495 * x_497) + x_500);
  let x_507 : f32 = u_xlat2.z;
  u_xlatb12.x = (0.0f >= x_507);
  let x_512 : f32 = u_xlat2.z;
  u_xlatb22 = (x_512 >= 1.0f);
  let x_514 : bool = u_xlatb22;
  let x_516 : bool = u_xlatb12.x;
  u_xlatb12.x = (x_514 | x_516);
  let x_520 : bool = u_xlatb12.x;
  if (x_520) {
    x_521 = 1.0f;
  } else {
    let x_526 : f32 = u_xlat2.x;
    x_521 = x_526;
  }
  let x_527 : f32 = x_521;
  u_xlat2.x = x_527;
  let x_529 : vec3<f32> = vs_TEXCOORD1;
  let x_533 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_535 : vec3<f32> = (x_529 + -(x_533));
  let x_536 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_535.x, x_535.y, x_535.z, x_536.w);
  let x_538 : vec4<f32> = u_xlat4;
  let x_540 : vec4<f32> = u_xlat4;
  u_xlat12.x = dot(vec3<f32>(x_538.x, x_538.y, x_538.z), vec3<f32>(x_540.x, x_540.y, x_540.z));
  let x_545 : f32 = u_xlat12.x;
  let x_547 : f32 = x_155.x_MainLightShadowParams.z;
  let x_550 : f32 = x_155.x_MainLightShadowParams.w;
  u_xlat12.x = ((x_545 * x_547) + x_550);
  let x_554 : f32 = u_xlat12.x;
  u_xlat12.x = clamp(x_554, 0.0f, 1.0f);
  let x_559 : f32 = u_xlat2.x;
  u_xlat22 = (-(x_559) + 1.0f);
  let x_563 : f32 = u_xlat12.x;
  let x_564 : f32 = u_xlat22;
  let x_567 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_563 * x_564) + x_567);
  let x_576 : f32 = x_574.x_MainLightCookieTextureFormat;
  u_xlatb12.x = !((x_576 == -1.0f));
  let x_580 : bool = u_xlatb12.x;
  if (x_580) {
    let x_583 : vec3<f32> = vs_TEXCOORD1;
    let x_586 : vec4<f32> = x_574.x_MainLightWorldToLight[1i];
    let x_588 : vec2<f32> = (vec2<f32>(x_583.y, x_583.y) * vec2<f32>(x_586.x, x_586.y));
    let x_589 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_588.x, x_588.y, x_589.z);
    let x_592 : vec4<f32> = x_574.x_MainLightWorldToLight[0i];
    let x_594 : vec3<f32> = vs_TEXCOORD1;
    let x_597 : vec3<f32> = u_xlat12;
    let x_599 : vec2<f32> = ((vec2<f32>(x_592.x, x_592.y) * vec2<f32>(x_594.x, x_594.x)) + vec2<f32>(x_597.x, x_597.y));
    let x_600 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_599.x, x_599.y, x_600.z);
    let x_603 : vec4<f32> = x_574.x_MainLightWorldToLight[2i];
    let x_605 : vec3<f32> = vs_TEXCOORD1;
    let x_608 : vec3<f32> = u_xlat12;
    let x_610 : vec2<f32> = ((vec2<f32>(x_603.x, x_603.y) * vec2<f32>(x_605.z, x_605.z)) + vec2<f32>(x_608.x, x_608.y));
    let x_611 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_610.x, x_610.y, x_611.z);
    let x_613 : vec3<f32> = u_xlat12;
    let x_616 : vec4<f32> = x_574.x_MainLightWorldToLight[3i];
    let x_618 : vec2<f32> = (vec2<f32>(x_613.x, x_613.y) + vec2<f32>(x_616.x, x_616.y));
    let x_619 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_618.x, x_618.y, x_619.z);
    let x_621 : vec3<f32> = u_xlat12;
    let x_626 : vec2<f32> = ((vec2<f32>(x_621.x, x_621.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_627 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_626.x, x_626.y, x_627.z);
    let x_634 : vec3<f32> = u_xlat12;
    let x_637 : f32 = x_43.x_GlobalMipBias.x;
    let x_638 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_634.x, x_634.y), x_637);
    u_xlat4 = x_638;
    let x_640 : f32 = x_574.x_MainLightCookieTextureFormat;
    let x_642 : f32 = x_574.x_MainLightCookieTextureFormat;
    let x_644 : f32 = x_574.x_MainLightCookieTextureFormat;
    let x_646 : f32 = x_574.x_MainLightCookieTextureFormat;
    let x_647 : vec4<f32> = vec4<f32>(x_640, x_642, x_644, x_646);
    let x_654 : vec4<bool> = (vec4<f32>(x_647.x, x_647.y, x_647.z, x_647.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb12 = vec2<bool>(x_654.x, x_654.y);
    let x_657 : bool = u_xlatb12.y;
    if (x_657) {
      let x_662 : f32 = u_xlat4.w;
      x_658 = x_662;
    } else {
      let x_665 : f32 = u_xlat4.x;
      x_658 = x_665;
    }
    let x_666 : f32 = x_658;
    u_xlat22 = x_666;
    let x_668 : bool = u_xlatb12.x;
    if (x_668) {
      let x_672 : vec4<f32> = u_xlat4;
      x_669 = vec3<f32>(x_672.x, x_672.y, x_672.z);
    } else {
      let x_675 : f32 = u_xlat22;
      x_669 = vec3<f32>(x_675, x_675, x_675);
    }
    let x_677 : vec3<f32> = x_669;
    let x_678 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_677.x, x_677.y, x_677.z, x_678.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_684 : vec4<f32> = u_xlat4;
  let x_687 : vec4<f32> = x_43.x_MainLightColor;
  let x_689 : vec3<f32> = (vec3<f32>(x_684.x, x_684.y, x_684.z) * vec3<f32>(x_687.x, x_687.y, x_687.z));
  let x_690 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_689.x, x_689.y, x_689.z, x_690.w);
  let x_692 : f32 = u_xlat32;
  let x_694 : vec4<f32> = u_xlat4;
  let x_696 : vec3<f32> = (vec3<f32>(x_692, x_692, x_692) * vec3<f32>(x_694.x, x_694.y, x_694.z));
  let x_697 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_696.x, x_696.y, x_696.z, x_697.w);
  let x_699 : f32 = u_xlat31;
  let x_701 : vec4<f32> = u_xlat3;
  let x_703 : vec3<f32> = (vec3<f32>(x_699, x_699, x_699) * vec3<f32>(x_701.x, x_701.y, x_701.z));
  let x_704 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_703.x, x_703.y, x_703.z, x_704.w);
  let x_707 : f32 = u_xlat2.x;
  let x_709 : f32 = x_92.unity_LightData.z;
  u_xlat31 = (x_707 * x_709);
  let x_711 : f32 = u_xlat31;
  let x_713 : vec4<f32> = u_xlat4;
  let x_715 : vec3<f32> = (vec3<f32>(x_711, x_711, x_711) * vec3<f32>(x_713.x, x_713.y, x_713.z));
  let x_716 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_715.x, x_715.y, x_715.z, x_716.w);
  let x_718 : vec4<f32> = u_xlat1;
  let x_721 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat31 = dot(vec3<f32>(x_718.x, x_718.y, x_718.z), vec3<f32>(x_721.x, x_721.y, x_721.z));
  let x_724 : f32 = u_xlat31;
  u_xlat31 = clamp(x_724, 0.0f, 1.0f);
  let x_726 : f32 = u_xlat31;
  let x_728 : vec4<f32> = u_xlat2;
  let x_730 : vec3<f32> = (vec3<f32>(x_726, x_726, x_726) * vec3<f32>(x_728.x, x_728.y, x_728.z));
  let x_731 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_730.x, x_730.y, x_730.z, x_731.w);
  let x_733 : vec4<f32> = u_xlat0;
  let x_735 : vec4<f32> = u_xlat2;
  let x_737 : vec3<f32> = (vec3<f32>(x_733.y, x_733.z, x_733.w) * vec3<f32>(x_735.x, x_735.y, x_735.z));
  let x_738 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_737.x, x_737.y, x_737.z, x_738.w);
  let x_741 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_743 : f32 = x_92.unity_LightData.y;
  u_xlat31 = min(x_741, x_743);
  let x_746 : f32 = u_xlat31;
  u_xlatu31 = bitcast<u32>(i32(x_746));
  let x_751 : f32 = x_574.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_753 : f32 = x_574.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_755 : f32 = x_574.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_757 : f32 = x_574.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_758 : vec4<f32> = vec4<f32>(x_751, x_753, x_755, x_757);
  let x_764 : vec4<bool> = (vec4<f32>(x_758.x, x_758.y, x_758.z, x_758.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb4 = vec2<bool>(x_764.x, x_764.y);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_775 : u32 = u_xlatu_loop_1;
    let x_776 : u32 = u_xlatu31;
    if ((x_775 < x_776)) {
    } else {
      break;
    }
    let x_779 : u32 = u_xlatu_loop_1;
    u_xlatu24 = (x_779 >> 2u);
    let x_782 : u32 = u_xlatu_loop_1;
    u_xlati34 = bitcast<i32>((x_782 & 3u));
    let x_786 : u32 = u_xlatu24;
    let x_789 : vec4<f32> = x_92.unity_LightIndices[bitcast<i32>(x_786)];
    let x_799 : i32 = u_xlati34;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_804 : vec4<u32> = indexable[x_799];
    u_xlat24 = dot(x_789, bitcast<vec4<f32>>(x_804));
    let x_807 : f32 = u_xlat24;
    u_xlatu24 = bitcast<u32>(i32(x_807));
    let x_811 : vec3<f32> = vs_TEXCOORD1;
    let x_823 : u32 = u_xlatu24;
    let x_826 : vec4<f32> = x_822.x_AdditionalLightsPosition[bitcast<i32>(x_823)];
    let x_829 : u32 = u_xlatu24;
    let x_832 : vec4<f32> = x_822.x_AdditionalLightsPosition[bitcast<i32>(x_829)];
    u_xlat6 = ((-(x_811) * vec3<f32>(x_826.w, x_826.w, x_826.w)) + vec3<f32>(x_832.x, x_832.y, x_832.z));
    let x_836 : vec3<f32> = u_xlat6;
    let x_837 : vec3<f32> = u_xlat6;
    u_xlat34 = dot(x_836, x_837);
    let x_839 : f32 = u_xlat34;
    u_xlat34 = max(x_839, 6.10351562e-05f);
    let x_843 : f32 = u_xlat34;
    u_xlat35 = inverseSqrt(x_843);
    let x_845 : f32 = u_xlat35;
    let x_847 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_845, x_845, x_845) * x_847);
    let x_849 : f32 = u_xlat34;
    u_xlat35 = (1.0f / x_849);
    let x_851 : f32 = u_xlat34;
    let x_852 : u32 = u_xlatu24;
    let x_855 : f32 = x_822.x_AdditionalLightsAttenuation[bitcast<i32>(x_852)].x;
    u_xlat34 = (x_851 * x_855);
    let x_857 : f32 = u_xlat34;
    let x_859 : f32 = u_xlat34;
    u_xlat34 = ((-(x_857) * x_859) + 1.0f);
    let x_862 : f32 = u_xlat34;
    u_xlat34 = max(x_862, 0.0f);
    let x_864 : f32 = u_xlat34;
    let x_865 : f32 = u_xlat34;
    u_xlat34 = (x_864 * x_865);
    let x_867 : f32 = u_xlat34;
    let x_868 : f32 = u_xlat35;
    u_xlat34 = (x_867 * x_868);
    let x_870 : u32 = u_xlatu24;
    let x_873 : vec4<f32> = x_822.x_AdditionalLightsSpotDir[bitcast<i32>(x_870)];
    let x_875 : vec3<f32> = u_xlat6;
    u_xlat35 = dot(vec3<f32>(x_873.x, x_873.y, x_873.z), x_875);
    let x_877 : f32 = u_xlat35;
    let x_878 : u32 = u_xlatu24;
    let x_881 : f32 = x_822.x_AdditionalLightsAttenuation[bitcast<i32>(x_878)].z;
    let x_883 : u32 = u_xlatu24;
    let x_886 : f32 = x_822.x_AdditionalLightsAttenuation[bitcast<i32>(x_883)].w;
    u_xlat35 = ((x_877 * x_881) + x_886);
    let x_888 : f32 = u_xlat35;
    u_xlat35 = clamp(x_888, 0.0f, 1.0f);
    let x_890 : f32 = u_xlat35;
    let x_891 : f32 = u_xlat35;
    u_xlat35 = (x_890 * x_891);
    let x_893 : f32 = u_xlat34;
    let x_894 : f32 = u_xlat35;
    u_xlat34 = (x_893 * x_894);
    let x_897 : u32 = u_xlatu24;
    u_xlatu35 = (x_897 >> 5u);
    let x_900 : u32 = u_xlatu24;
    u_xlati36 = (1i << bitcast<u32>((bitcast<i32>(x_900) & 31i)));
    let x_906 : i32 = u_xlati36;
    let x_908 : u32 = u_xlatu35;
    let x_911 : f32 = x_574.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_908)].el;
    u_xlati35 = bitcast<i32>((bitcast<u32>(x_906) & bitcast<u32>(x_911)));
    let x_915 : i32 = u_xlati35;
    if ((x_915 != 0i)) {
      let x_925 : u32 = u_xlatu24;
      let x_928 : f32 = x_924.x_AdditionalLightsLightTypes[bitcast<i32>(x_925)].el;
      u_xlati35 = i32(x_928);
      let x_930 : i32 = u_xlati35;
      u_xlati36 = select(1i, 0i, (x_930 != 0i));
      let x_934 : u32 = u_xlatu24;
      u_xlati7 = (bitcast<i32>(x_934) << bitcast<u32>(2i));
      let x_937 : i32 = u_xlati36;
      if ((x_937 != 0i)) {
        let x_942 : vec3<f32> = vs_TEXCOORD1;
        let x_944 : i32 = u_xlati7;
        let x_947 : i32 = u_xlati7;
        let x_951 : vec4<f32> = x_924.x_AdditionalLightsWorldToLights[((x_944 + 1i) / 4i)][((x_947 + 1i) % 4i)];
        u_xlat17 = (vec3<f32>(x_942.y, x_942.y, x_942.y) * vec3<f32>(x_951.x, x_951.y, x_951.w));
        let x_954 : i32 = u_xlati7;
        let x_956 : i32 = u_xlati7;
        let x_959 : vec4<f32> = x_924.x_AdditionalLightsWorldToLights[(x_954 / 4i)][(x_956 % 4i)];
        let x_961 : vec3<f32> = vs_TEXCOORD1;
        let x_964 : vec3<f32> = u_xlat17;
        u_xlat17 = ((vec3<f32>(x_959.x, x_959.y, x_959.w) * vec3<f32>(x_961.x, x_961.x, x_961.x)) + x_964);
        let x_966 : i32 = u_xlati7;
        let x_969 : i32 = u_xlati7;
        let x_973 : vec4<f32> = x_924.x_AdditionalLightsWorldToLights[((x_966 + 2i) / 4i)][((x_969 + 2i) % 4i)];
        let x_975 : vec3<f32> = vs_TEXCOORD1;
        let x_978 : vec3<f32> = u_xlat17;
        u_xlat17 = ((vec3<f32>(x_973.x, x_973.y, x_973.w) * vec3<f32>(x_975.z, x_975.z, x_975.z)) + x_978);
        let x_980 : vec3<f32> = u_xlat17;
        let x_981 : i32 = u_xlati7;
        let x_984 : i32 = u_xlati7;
        let x_988 : vec4<f32> = x_924.x_AdditionalLightsWorldToLights[((x_981 + 3i) / 4i)][((x_984 + 3i) % 4i)];
        u_xlat17 = (x_980 + vec3<f32>(x_988.x, x_988.y, x_988.w));
        let x_991 : vec3<f32> = u_xlat17;
        let x_993 : vec3<f32> = u_xlat17;
        let x_995 : vec2<f32> = (vec2<f32>(x_991.x, x_991.y) / vec2<f32>(x_993.z, x_993.z));
        let x_996 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_995.x, x_995.y, x_996.z);
        let x_998 : vec3<f32> = u_xlat17;
        let x_1001 : vec2<f32> = ((vec2<f32>(x_998.x, x_998.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1002 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_1001.x, x_1001.y, x_1002.z);
        let x_1004 : vec3<f32> = u_xlat17;
        let x_1008 : vec2<f32> = clamp(vec2<f32>(x_1004.x, x_1004.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1009 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_1008.x, x_1008.y, x_1009.z);
        let x_1011 : u32 = u_xlatu24;
        let x_1014 : vec4<f32> = x_924.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1011)];
        let x_1016 : vec3<f32> = u_xlat17;
        let x_1019 : u32 = u_xlatu24;
        let x_1022 : vec4<f32> = x_924.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1019)];
        let x_1024 : vec2<f32> = ((vec2<f32>(x_1014.x, x_1014.y) * vec2<f32>(x_1016.x, x_1016.y)) + vec2<f32>(x_1022.z, x_1022.w));
        let x_1025 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_1024.x, x_1024.y, x_1025.z);
      } else {
        let x_1029 : i32 = u_xlati35;
        u_xlatb35 = (x_1029 == 1i);
        let x_1031 : bool = u_xlatb35;
        u_xlati35 = select(0i, 1i, x_1031);
        let x_1033 : i32 = u_xlati35;
        if ((x_1033 != 0i)) {
          let x_1038 : vec3<f32> = vs_TEXCOORD1;
          let x_1040 : i32 = u_xlati7;
          let x_1043 : i32 = u_xlati7;
          let x_1047 : vec4<f32> = x_924.x_AdditionalLightsWorldToLights[((x_1040 + 1i) / 4i)][((x_1043 + 1i) % 4i)];
          let x_1049 : vec2<f32> = (vec2<f32>(x_1038.y, x_1038.y) * vec2<f32>(x_1047.x, x_1047.y));
          let x_1050 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1049.x, x_1049.y, x_1050.z, x_1050.w);
          let x_1052 : i32 = u_xlati7;
          let x_1054 : i32 = u_xlati7;
          let x_1057 : vec4<f32> = x_924.x_AdditionalLightsWorldToLights[(x_1052 / 4i)][(x_1054 % 4i)];
          let x_1059 : vec3<f32> = vs_TEXCOORD1;
          let x_1062 : vec4<f32> = u_xlat8;
          let x_1064 : vec2<f32> = ((vec2<f32>(x_1057.x, x_1057.y) * vec2<f32>(x_1059.x, x_1059.x)) + vec2<f32>(x_1062.x, x_1062.y));
          let x_1065 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1064.x, x_1064.y, x_1065.z, x_1065.w);
          let x_1067 : i32 = u_xlati7;
          let x_1070 : i32 = u_xlati7;
          let x_1074 : vec4<f32> = x_924.x_AdditionalLightsWorldToLights[((x_1067 + 2i) / 4i)][((x_1070 + 2i) % 4i)];
          let x_1076 : vec3<f32> = vs_TEXCOORD1;
          let x_1079 : vec4<f32> = u_xlat8;
          let x_1081 : vec2<f32> = ((vec2<f32>(x_1074.x, x_1074.y) * vec2<f32>(x_1076.z, x_1076.z)) + vec2<f32>(x_1079.x, x_1079.y));
          let x_1082 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1081.x, x_1081.y, x_1082.z, x_1082.w);
          let x_1084 : vec4<f32> = u_xlat8;
          let x_1086 : i32 = u_xlati7;
          let x_1089 : i32 = u_xlati7;
          let x_1093 : vec4<f32> = x_924.x_AdditionalLightsWorldToLights[((x_1086 + 3i) / 4i)][((x_1089 + 3i) % 4i)];
          let x_1095 : vec2<f32> = (vec2<f32>(x_1084.x, x_1084.y) + vec2<f32>(x_1093.x, x_1093.y));
          let x_1096 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1095.x, x_1095.y, x_1096.z, x_1096.w);
          let x_1098 : vec4<f32> = u_xlat8;
          let x_1101 : vec2<f32> = ((vec2<f32>(x_1098.x, x_1098.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1102 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1101.x, x_1101.y, x_1102.z, x_1102.w);
          let x_1104 : vec4<f32> = u_xlat8;
          let x_1106 : vec2<f32> = fract(vec2<f32>(x_1104.x, x_1104.y));
          let x_1107 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1106.x, x_1106.y, x_1107.z, x_1107.w);
          let x_1109 : u32 = u_xlatu24;
          let x_1112 : vec4<f32> = x_924.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1109)];
          let x_1114 : vec4<f32> = u_xlat8;
          let x_1117 : u32 = u_xlatu24;
          let x_1120 : vec4<f32> = x_924.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1117)];
          let x_1122 : vec2<f32> = ((vec2<f32>(x_1112.x, x_1112.y) * vec2<f32>(x_1114.x, x_1114.y)) + vec2<f32>(x_1120.z, x_1120.w));
          let x_1123 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_1122.x, x_1122.y, x_1123.z);
        } else {
          let x_1126 : vec3<f32> = vs_TEXCOORD1;
          let x_1128 : i32 = u_xlati7;
          let x_1131 : i32 = u_xlati7;
          let x_1135 : vec4<f32> = x_924.x_AdditionalLightsWorldToLights[((x_1128 + 1i) / 4i)][((x_1131 + 1i) % 4i)];
          u_xlat8 = (vec4<f32>(x_1126.y, x_1126.y, x_1126.y, x_1126.y) * x_1135);
          let x_1137 : i32 = u_xlati7;
          let x_1139 : i32 = u_xlati7;
          let x_1142 : vec4<f32> = x_924.x_AdditionalLightsWorldToLights[(x_1137 / 4i)][(x_1139 % 4i)];
          let x_1143 : vec3<f32> = vs_TEXCOORD1;
          let x_1146 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_1142 * vec4<f32>(x_1143.x, x_1143.x, x_1143.x, x_1143.x)) + x_1146);
          let x_1148 : i32 = u_xlati7;
          let x_1151 : i32 = u_xlati7;
          let x_1155 : vec4<f32> = x_924.x_AdditionalLightsWorldToLights[((x_1148 + 2i) / 4i)][((x_1151 + 2i) % 4i)];
          let x_1156 : vec3<f32> = vs_TEXCOORD1;
          let x_1159 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_1155 * vec4<f32>(x_1156.z, x_1156.z, x_1156.z, x_1156.z)) + x_1159);
          let x_1161 : vec4<f32> = u_xlat8;
          let x_1162 : i32 = u_xlati7;
          let x_1165 : i32 = u_xlati7;
          let x_1169 : vec4<f32> = x_924.x_AdditionalLightsWorldToLights[((x_1162 + 3i) / 4i)][((x_1165 + 3i) % 4i)];
          u_xlat8 = (x_1161 + x_1169);
          let x_1171 : vec4<f32> = u_xlat8;
          let x_1173 : vec4<f32> = u_xlat8;
          let x_1175 : vec3<f32> = (vec3<f32>(x_1171.x, x_1171.y, x_1171.z) / vec3<f32>(x_1173.w, x_1173.w, x_1173.w));
          let x_1176 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1175.x, x_1175.y, x_1175.z, x_1176.w);
          let x_1178 : vec4<f32> = u_xlat8;
          let x_1180 : vec4<f32> = u_xlat8;
          u_xlat35 = dot(vec3<f32>(x_1178.x, x_1178.y, x_1178.z), vec3<f32>(x_1180.x, x_1180.y, x_1180.z));
          let x_1183 : f32 = u_xlat35;
          u_xlat35 = inverseSqrt(x_1183);
          let x_1185 : f32 = u_xlat35;
          let x_1187 : vec4<f32> = u_xlat8;
          let x_1189 : vec3<f32> = (vec3<f32>(x_1185, x_1185, x_1185) * vec3<f32>(x_1187.x, x_1187.y, x_1187.z));
          let x_1190 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1189.x, x_1189.y, x_1189.z, x_1190.w);
          let x_1192 : vec4<f32> = u_xlat8;
          u_xlat35 = dot(abs(vec3<f32>(x_1192.x, x_1192.y, x_1192.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1197 : f32 = u_xlat35;
          u_xlat35 = max(x_1197, 0.000001f);
          let x_1200 : f32 = u_xlat35;
          u_xlat35 = (1.0f / x_1200);
          let x_1203 : f32 = u_xlat35;
          let x_1205 : vec4<f32> = u_xlat8;
          u_xlat9 = (vec3<f32>(x_1203, x_1203, x_1203) * vec3<f32>(x_1205.z, x_1205.x, x_1205.y));
          let x_1209 : f32 = u_xlat9.x;
          u_xlat9.x = -(x_1209);
          let x_1213 : f32 = u_xlat9.x;
          u_xlat9.x = clamp(x_1213, 0.0f, 1.0f);
          let x_1217 : vec3<f32> = u_xlat9;
          let x_1220 : vec4<bool> = (vec4<f32>(x_1217.y, x_1217.y, x_1217.y, x_1217.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1221 : vec2<bool> = vec2<bool>(x_1220.x, x_1220.w);
          let x_1222 : vec4<bool> = u_xlatb7;
          u_xlatb7 = vec4<bool>(x_1221.x, x_1222.y, x_1222.z, x_1221.y);
          let x_1226 : bool = u_xlatb7.x;
          if (x_1226) {
            let x_1231 : f32 = u_xlat9.x;
            x_1227 = x_1231;
          } else {
            let x_1234 : f32 = u_xlat9.x;
            x_1227 = -(x_1234);
          }
          let x_1236 : f32 = x_1227;
          u_xlat7.x = x_1236;
          let x_1239 : bool = u_xlatb7.w;
          if (x_1239) {
            let x_1244 : f32 = u_xlat9.x;
            x_1240 = x_1244;
          } else {
            let x_1247 : f32 = u_xlat9.x;
            x_1240 = -(x_1247);
          }
          let x_1249 : f32 = x_1240;
          u_xlat7.w = x_1249;
          let x_1251 : vec4<f32> = u_xlat8;
          let x_1253 : f32 = u_xlat35;
          let x_1256 : vec4<f32> = u_xlat7;
          let x_1258 : vec2<f32> = ((vec2<f32>(x_1251.x, x_1251.y) * vec2<f32>(x_1253, x_1253)) + vec2<f32>(x_1256.x, x_1256.w));
          let x_1259 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_1258.x, x_1259.y, x_1259.z, x_1258.y);
          let x_1261 : vec4<f32> = u_xlat7;
          let x_1264 : vec2<f32> = ((vec2<f32>(x_1261.x, x_1261.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1265 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_1264.x, x_1265.y, x_1265.z, x_1264.y);
          let x_1267 : vec4<f32> = u_xlat7;
          let x_1271 : vec2<f32> = clamp(vec2<f32>(x_1267.x, x_1267.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1272 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_1271.x, x_1272.y, x_1272.z, x_1271.y);
          let x_1274 : u32 = u_xlatu24;
          let x_1277 : vec4<f32> = x_924.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1274)];
          let x_1279 : vec4<f32> = u_xlat7;
          let x_1282 : u32 = u_xlatu24;
          let x_1285 : vec4<f32> = x_924.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1282)];
          let x_1287 : vec2<f32> = ((vec2<f32>(x_1277.x, x_1277.y) * vec2<f32>(x_1279.x, x_1279.w)) + vec2<f32>(x_1285.z, x_1285.w));
          let x_1288 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_1287.x, x_1287.y, x_1288.z);
        }
      }
      let x_1295 : vec3<f32> = u_xlat17;
      let x_1298 : f32 = x_43.x_GlobalMipBias.x;
      let x_1299 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1295.x, x_1295.y), x_1298);
      u_xlat7 = x_1299;
      let x_1301 : bool = u_xlatb4.y;
      if (x_1301) {
        let x_1306 : f32 = u_xlat7.w;
        x_1302 = x_1306;
      } else {
        let x_1309 : f32 = u_xlat7.x;
        x_1302 = x_1309;
      }
      let x_1310 : f32 = x_1302;
      u_xlat35 = x_1310;
      let x_1312 : bool = u_xlatb4.x;
      if (x_1312) {
        let x_1316 : vec4<f32> = u_xlat7;
        x_1313 = vec3<f32>(x_1316.x, x_1316.y, x_1316.z);
      } else {
        let x_1319 : f32 = u_xlat35;
        x_1313 = vec3<f32>(x_1319, x_1319, x_1319);
      }
      let x_1321 : vec3<f32> = x_1313;
      let x_1322 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_1321.x, x_1321.y, x_1321.z, x_1322.w);
    } else {
      u_xlat7.x = 1.0f;
      u_xlat7.y = 1.0f;
      u_xlat7.z = 1.0f;
    }
    let x_1328 : vec4<f32> = u_xlat7;
    let x_1330 : u32 = u_xlatu24;
    let x_1333 : vec4<f32> = x_822.x_AdditionalLightsColor[bitcast<i32>(x_1330)];
    let x_1335 : vec3<f32> = (vec3<f32>(x_1328.x, x_1328.y, x_1328.z) * vec3<f32>(x_1333.x, x_1333.y, x_1333.z));
    let x_1336 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1335.x, x_1335.y, x_1335.z, x_1336.w);
    let x_1338 : f32 = u_xlat32;
    let x_1340 : vec4<f32> = u_xlat7;
    let x_1342 : vec3<f32> = (vec3<f32>(x_1338, x_1338, x_1338) * vec3<f32>(x_1340.x, x_1340.y, x_1340.z));
    let x_1343 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1342.x, x_1342.y, x_1342.z, x_1343.w);
    let x_1345 : f32 = u_xlat34;
    let x_1347 : vec4<f32> = u_xlat7;
    let x_1349 : vec3<f32> = (vec3<f32>(x_1345, x_1345, x_1345) * vec3<f32>(x_1347.x, x_1347.y, x_1347.z));
    let x_1350 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1349.x, x_1349.y, x_1349.z, x_1350.w);
    let x_1352 : vec4<f32> = u_xlat1;
    let x_1354 : vec3<f32> = u_xlat6;
    u_xlat24 = dot(vec3<f32>(x_1352.x, x_1352.y, x_1352.z), x_1354);
    let x_1356 : f32 = u_xlat24;
    u_xlat24 = clamp(x_1356, 0.0f, 1.0f);
    let x_1358 : f32 = u_xlat24;
    let x_1360 : vec4<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_1358, x_1358, x_1358) * vec3<f32>(x_1360.x, x_1360.y, x_1360.z));
    let x_1363 : vec3<f32> = u_xlat6;
    let x_1364 : vec4<f32> = u_xlat0;
    let x_1367 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_1363 * vec3<f32>(x_1364.y, x_1364.z, x_1364.w)) + x_1367);

    continuing {
      let x_1369 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1369 + bitcast<u32>(1i));
    }
  }
  let x_1372 : vec4<f32> = u_xlat3;
  let x_1374 : vec4<f32> = u_xlat0;
  let x_1377 : vec4<f32> = u_xlat2;
  u_xlat10 = ((vec3<f32>(x_1372.x, x_1372.y, x_1372.z) * vec3<f32>(x_1374.y, x_1374.z, x_1374.w)) + vec3<f32>(x_1377.x, x_1377.y, x_1377.z));
  let x_1382 : vec3<f32> = u_xlat5;
  let x_1383 : vec3<f32> = u_xlat10;
  let x_1384 : vec3<f32> = (x_1382 + x_1383);
  let x_1385 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1384.x, x_1384.y, x_1384.z, x_1385.w);
  let x_1389 : f32 = x_55.x_Surface;
  u_xlatb10 = (x_1389 == 1.0f);
  let x_1391 : bool = u_xlatb10;
  if (x_1391) {
    let x_1396 : f32 = u_xlat0.x;
    x_1392 = x_1396;
  } else {
    x_1392 = 1.0f;
  }
  let x_1398 : f32 = x_1392;
  SV_Target0.w = x_1398;
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

