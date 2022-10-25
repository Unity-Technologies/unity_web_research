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

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

@group(0) @binding(6) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_93 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_310 : MainLightShadows;

@group(1) @binding(5) var<uniform> x_390 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_677 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_779 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlatb12 : bool;
  var x_100 : f32;
  var u_xlatb1 : bool;
  var u_xlat12 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var x_161 : f32;
  var x_173 : f32;
  var x_185 : f32;
  var u_xlat34 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlat36 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat15 : vec3<f32>;
  var u_xlatb15 : vec2<bool>;
  var u_xlatb26 : bool;
  var x_343 : f32;
  var u_xlat26 : f32;
  var u_xlat5 : vec4<f32>;
  var x_477 : f32;
  var x_488 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat37 : f32;
  var u_xlatu37 : u32;
  var u_xlatb5 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu38 : u32;
  var u_xlati39 : i32;
  var u_xlat38 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat7 : vec3<f32>;
  var u_xlat39 : f32;
  var u_xlat40 : f32;
  var u_xlatu40 : u32;
  var u_xlati8 : i32;
  var u_xlati40 : i32;
  var u_xlati19 : i32;
  var u_xlat8 : vec4<f32>;
  var u_xlatb40 : bool;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb19 : vec3<bool>;
  var u_xlat19 : vec3<f32>;
  var x_1095 : f32;
  var x_1108 : f32;
  var x_1170 : f32;
  var x_1181 : vec3<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlatb11 : bool;
  var x_1302 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_40, x_50);
  u_xlat0 = x_51;
  let x_52 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = x_56.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_52.w, x_52.x, x_52.y, x_52.z) * vec4<f32>(x_59.w, x_59.x, x_59.y, x_59.z));
  let x_64 : vec4<f32> = hlslcc_FragCoord;
  let x_68 : f32 = x_44.x_DitheringTextureInvSize;
  let x_70 : vec2<f32> = (vec2<f32>(x_64.x, x_64.y) * vec2<f32>(x_68, x_68));
  let x_71 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_70.x, x_70.y, x_71.z);
  let x_78 : vec3<f32> = u_xlat1;
  let x_81 : f32 = x_44.x_GlobalMipBias.x;
  let x_82 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_78.x, x_78.y), x_81);
  u_xlat1.x = x_82.w;
  let x_96 : f32 = x_93.unity_LODFade.x;
  u_xlatb12 = (x_96 >= 0.0f);
  let x_99 : bool = u_xlatb12;
  if (x_99) {
    let x_104 : f32 = u_xlat1.x;
    x_100 = abs(x_104);
  } else {
    let x_108 : f32 = u_xlat1.x;
    x_100 = -(abs(x_108));
  }
  let x_111 : f32 = x_100;
  u_xlat1.x = x_111;
  let x_114 : f32 = u_xlat1.x;
  let x_117 : f32 = x_93.unity_LODFade.x;
  u_xlat1.x = (-(x_114) + x_117);
  let x_122 : f32 = u_xlat1.x;
  u_xlatb1 = (x_122 < 0.0f);
  let x_124 : bool = u_xlatb1;
  if (((select(0i, 1i, x_124) * -1i) != 0i)) {
    discard;
  }
  let x_135 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb1 = (x_135 == 0.0f);
  let x_140 : vec3<f32> = vs_TEXCOORD1;
  let x_145 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat12 = (-(x_140) + x_145);
  let x_148 : vec3<f32> = u_xlat12;
  let x_149 : vec3<f32> = u_xlat12;
  u_xlat2.x = dot(x_148, x_149);
  let x_153 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_153);
  let x_156 : vec3<f32> = u_xlat12;
  let x_157 : vec3<f32> = u_xlat2;
  u_xlat12 = (x_156 * vec3<f32>(x_157.x, x_157.x, x_157.x));
  let x_160 : bool = u_xlatb1;
  if (x_160) {
    let x_165 : f32 = u_xlat12.x;
    x_161 = x_165;
  } else {
    let x_169 : f32 = x_44.unity_MatrixV[0i].z;
    x_161 = x_169;
  }
  let x_170 : f32 = x_161;
  u_xlat2.x = x_170;
  let x_172 : bool = u_xlatb1;
  if (x_172) {
    let x_178 : f32 = u_xlat12.y;
    x_173 = x_178;
  } else {
    let x_181 : f32 = x_44.unity_MatrixV[1i].z;
    x_173 = x_181;
  }
  let x_182 : f32 = x_173;
  u_xlat2.y = x_182;
  let x_184 : bool = u_xlatb1;
  if (x_184) {
    let x_189 : f32 = u_xlat12.z;
    x_185 = x_189;
  } else {
    let x_192 : f32 = x_44.unity_MatrixV[2i].z;
    x_185 = x_192;
  }
  let x_193 : f32 = x_185;
  u_xlat2.z = x_193;
  let x_196 : vec3<f32> = vs_TEXCOORD2;
  let x_197 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_196, x_197);
  let x_201 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_201);
  let x_204 : vec3<f32> = u_xlat1;
  let x_206 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = (vec3<f32>(x_204.x, x_204.x, x_204.x) * x_206);
  let x_209 : vec3<f32> = u_xlat2;
  let x_210 : vec3<f32> = u_xlat2;
  u_xlat34 = dot(x_209, x_210);
  let x_212 : f32 = u_xlat34;
  u_xlat34 = max(x_212, 1.17549435e-37f);
  let x_215 : f32 = u_xlat34;
  u_xlat34 = inverseSqrt(x_215);
  let x_224 : vec2<f32> = vs_TEXCOORD7;
  let x_226 : f32 = x_44.x_GlobalMipBias.x;
  let x_227 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_224, x_226);
  u_xlat3 = vec3<f32>(x_227.x, x_227.y, x_227.z);
  let x_232 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_233 : vec2<f32> = vec2<f32>(x_232.x, x_232.y);
  let x_237 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_233.x, x_233.y));
  let x_238 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_237.x, x_237.y, x_238.z);
  let x_240 : vec3<f32> = u_xlat4;
  let x_242 : vec4<f32> = hlslcc_FragCoord;
  let x_244 : vec2<f32> = (vec2<f32>(x_240.x, x_240.y) * vec2<f32>(x_242.x, x_242.y));
  let x_245 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_244.x, x_244.y, x_245.z);
  let x_249 : f32 = u_xlat4.y;
  let x_252 : f32 = x_44.x_ScaleBiasRt.x;
  let x_255 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat35 = ((x_249 * x_252) + x_255);
  let x_257 : f32 = u_xlat35;
  u_xlat4.z = (-(x_257) + 1.0f);
  let x_266 : vec3<f32> = u_xlat4;
  let x_269 : f32 = x_44.x_GlobalMipBias.x;
  let x_270 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_266.x, x_266.z), x_269);
  u_xlat35 = x_270.x;
  let x_273 : f32 = u_xlat35;
  u_xlat36 = (x_273 + -1.0f);
  let x_278 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_279 : f32 = u_xlat36;
  u_xlat36 = ((x_278 * x_279) + 1.0f);
  let x_282 : f32 = u_xlat35;
  u_xlat35 = min(x_282, 1.0f);
  let x_286 : vec4<f32> = vs_TEXCOORD6;
  let x_287 : vec2<f32> = vec2<f32>(x_286.x, x_286.y);
  let x_289 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_287.x, x_287.y, x_289);
  let x_301 : vec3<f32> = txVec0;
  let x_303 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_301.xy, x_301.z);
  u_xlat4.x = x_303;
  let x_312 : f32 = x_310.x_MainLightShadowParams.x;
  u_xlat15.x = (-(x_312) + 1.0f);
  let x_317 : f32 = u_xlat4.x;
  let x_319 : f32 = x_310.x_MainLightShadowParams.x;
  let x_322 : f32 = u_xlat15.x;
  u_xlat4.x = ((x_317 * x_319) + x_322);
  let x_329 : f32 = vs_TEXCOORD6.z;
  u_xlatb15.x = (0.0f >= x_329);
  let x_334 : f32 = vs_TEXCOORD6.z;
  u_xlatb26 = (x_334 >= 1.0f);
  let x_336 : bool = u_xlatb26;
  let x_338 : bool = u_xlatb15.x;
  u_xlatb15.x = (x_336 | x_338);
  let x_342 : bool = u_xlatb15.x;
  if (x_342) {
    x_343 = 1.0f;
  } else {
    let x_348 : f32 = u_xlat4.x;
    x_343 = x_348;
  }
  let x_349 : f32 = x_343;
  u_xlat4.x = x_349;
  let x_351 : vec3<f32> = vs_TEXCOORD1;
  let x_353 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat15 = (x_351 + -(x_353));
  let x_356 : vec3<f32> = u_xlat15;
  let x_357 : vec3<f32> = u_xlat15;
  u_xlat15.x = dot(x_356, x_357);
  let x_361 : f32 = u_xlat15.x;
  let x_363 : f32 = x_310.x_MainLightShadowParams.z;
  let x_366 : f32 = x_310.x_MainLightShadowParams.w;
  u_xlat15.x = ((x_361 * x_363) + x_366);
  let x_370 : f32 = u_xlat15.x;
  u_xlat15.x = clamp(x_370, 0.0f, 1.0f);
  let x_375 : f32 = u_xlat4.x;
  u_xlat26 = (-(x_375) + 1.0f);
  let x_379 : f32 = u_xlat15.x;
  let x_380 : f32 = u_xlat26;
  let x_383 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_379 * x_380) + x_383);
  let x_392 : f32 = x_390.x_MainLightCookieTextureFormat;
  u_xlatb15.x = !((x_392 == -1.0f));
  let x_396 : bool = u_xlatb15.x;
  if (x_396) {
    let x_399 : vec3<f32> = vs_TEXCOORD1;
    let x_402 : vec4<f32> = x_390.x_MainLightWorldToLight[1i];
    let x_404 : vec2<f32> = (vec2<f32>(x_399.y, x_399.y) * vec2<f32>(x_402.x, x_402.y));
    let x_405 : vec3<f32> = u_xlat15;
    u_xlat15 = vec3<f32>(x_404.x, x_404.y, x_405.z);
    let x_408 : vec4<f32> = x_390.x_MainLightWorldToLight[0i];
    let x_410 : vec3<f32> = vs_TEXCOORD1;
    let x_413 : vec3<f32> = u_xlat15;
    let x_415 : vec2<f32> = ((vec2<f32>(x_408.x, x_408.y) * vec2<f32>(x_410.x, x_410.x)) + vec2<f32>(x_413.x, x_413.y));
    let x_416 : vec3<f32> = u_xlat15;
    u_xlat15 = vec3<f32>(x_415.x, x_415.y, x_416.z);
    let x_419 : vec4<f32> = x_390.x_MainLightWorldToLight[2i];
    let x_421 : vec3<f32> = vs_TEXCOORD1;
    let x_424 : vec3<f32> = u_xlat15;
    let x_426 : vec2<f32> = ((vec2<f32>(x_419.x, x_419.y) * vec2<f32>(x_421.z, x_421.z)) + vec2<f32>(x_424.x, x_424.y));
    let x_427 : vec3<f32> = u_xlat15;
    u_xlat15 = vec3<f32>(x_426.x, x_426.y, x_427.z);
    let x_429 : vec3<f32> = u_xlat15;
    let x_433 : vec4<f32> = x_390.x_MainLightWorldToLight[3i];
    let x_435 : vec2<f32> = (vec2<f32>(x_429.x, x_429.y) + vec2<f32>(x_433.x, x_433.y));
    let x_436 : vec3<f32> = u_xlat15;
    u_xlat15 = vec3<f32>(x_435.x, x_435.y, x_436.z);
    let x_438 : vec3<f32> = u_xlat15;
    let x_443 : vec2<f32> = ((vec2<f32>(x_438.x, x_438.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_444 : vec3<f32> = u_xlat15;
    u_xlat15 = vec3<f32>(x_443.x, x_443.y, x_444.z);
    let x_452 : vec3<f32> = u_xlat15;
    let x_455 : f32 = x_44.x_GlobalMipBias.x;
    let x_456 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_452.x, x_452.y), x_455);
    u_xlat5 = x_456;
    let x_458 : f32 = x_390.x_MainLightCookieTextureFormat;
    let x_460 : f32 = x_390.x_MainLightCookieTextureFormat;
    let x_462 : f32 = x_390.x_MainLightCookieTextureFormat;
    let x_464 : f32 = x_390.x_MainLightCookieTextureFormat;
    let x_465 : vec4<f32> = vec4<f32>(x_458, x_460, x_462, x_464);
    let x_473 : vec4<bool> = (vec4<f32>(x_465.x, x_465.y, x_465.z, x_465.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb15 = vec2<bool>(x_473.x, x_473.y);
    let x_476 : bool = u_xlatb15.y;
    if (x_476) {
      let x_481 : f32 = u_xlat5.w;
      x_477 = x_481;
    } else {
      let x_484 : f32 = u_xlat5.x;
      x_477 = x_484;
    }
    let x_485 : f32 = x_477;
    u_xlat26 = x_485;
    let x_487 : bool = u_xlatb15.x;
    if (x_487) {
      let x_491 : vec4<f32> = u_xlat5;
      x_488 = vec3<f32>(x_491.x, x_491.y, x_491.z);
    } else {
      let x_494 : f32 = u_xlat26;
      x_488 = vec3<f32>(x_494, x_494, x_494);
    }
    let x_496 : vec3<f32> = x_488;
    u_xlat15 = x_496;
  } else {
    u_xlat15.x = 1.0f;
    u_xlat15.y = 1.0f;
    u_xlat15.z = 1.0f;
  }
  let x_501 : vec3<f32> = u_xlat15;
  let x_503 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat15 = (x_501 * vec3<f32>(x_503.x, x_503.y, x_503.z));
  let x_506 : f32 = u_xlat36;
  let x_508 : vec3<f32> = u_xlat15;
  u_xlat15 = (vec3<f32>(x_506, x_506, x_506) * x_508);
  let x_510 : f32 = u_xlat35;
  let x_512 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_510, x_510, x_510) * x_512);
  let x_515 : f32 = u_xlat4.x;
  let x_518 : f32 = x_93.unity_LightData.z;
  u_xlat35 = (x_515 * x_518);
  let x_520 : f32 = u_xlat35;
  let x_522 : vec3<f32> = u_xlat15;
  u_xlat4 = (vec3<f32>(x_520, x_520, x_520) * x_522);
  let x_524 : vec3<f32> = u_xlat1;
  let x_526 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat35 = dot(x_524, vec3<f32>(x_526.x, x_526.y, x_526.z));
  let x_529 : f32 = u_xlat35;
  u_xlat35 = clamp(x_529, 0.0f, 1.0f);
  let x_531 : f32 = u_xlat35;
  let x_533 : vec3<f32> = u_xlat4;
  let x_534 : vec3<f32> = (vec3<f32>(x_531, x_531, x_531) * x_533);
  let x_535 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_534.x, x_534.y, x_534.z, x_535.w);
  let x_538 : f32 = u_xlat0.x;
  u_xlat35 = ((x_538 * 10.0f) + 1.0f);
  let x_542 : f32 = u_xlat35;
  u_xlat35 = exp2(x_542);
  let x_545 : vec3<f32> = u_xlat2;
  let x_546 : f32 = u_xlat34;
  let x_550 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat6 = ((x_545 * vec3<f32>(x_546, x_546, x_546)) + vec3<f32>(x_550.x, x_550.y, x_550.z));
  let x_554 : vec3<f32> = u_xlat6;
  let x_555 : vec3<f32> = u_xlat6;
  u_xlat37 = dot(x_554, x_555);
  let x_557 : f32 = u_xlat37;
  u_xlat37 = max(x_557, 1.17549435e-37f);
  let x_559 : f32 = u_xlat37;
  u_xlat37 = inverseSqrt(x_559);
  let x_561 : f32 = u_xlat37;
  let x_563 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_561, x_561, x_561) * x_563);
  let x_565 : vec3<f32> = u_xlat1;
  let x_566 : vec3<f32> = u_xlat6;
  u_xlat37 = dot(x_565, x_566);
  let x_568 : f32 = u_xlat37;
  u_xlat37 = clamp(x_568, 0.0f, 1.0f);
  let x_570 : f32 = u_xlat37;
  u_xlat37 = log2(x_570);
  let x_572 : f32 = u_xlat35;
  let x_573 : f32 = u_xlat37;
  u_xlat37 = (x_572 * x_573);
  let x_575 : f32 = u_xlat37;
  u_xlat37 = exp2(x_575);
  let x_577 : f32 = u_xlat37;
  let x_580 : vec4<f32> = x_56.x_SpecColor;
  u_xlat6 = (vec3<f32>(x_577, x_577, x_577) * vec3<f32>(x_580.x, x_580.y, x_580.z));
  let x_583 : vec3<f32> = u_xlat4;
  let x_584 : vec3<f32> = u_xlat6;
  u_xlat4 = (x_583 * x_584);
  let x_586 : vec4<f32> = u_xlat5;
  let x_588 : vec4<f32> = u_xlat0;
  let x_591 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_586.x, x_586.y, x_586.z) * vec3<f32>(x_588.y, x_588.z, x_588.w)) + x_591);
  let x_594 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_596 : f32 = x_93.unity_LightData.y;
  u_xlat37 = min(x_594, x_596);
  let x_600 : f32 = u_xlat37;
  u_xlatu37 = bitcast<u32>(i32(x_600));
  let x_605 : f32 = x_390.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_607 : f32 = x_390.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_609 : f32 = x_390.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_611 : f32 = x_390.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_612 : vec4<f32> = vec4<f32>(x_605, x_607, x_609, x_611);
  let x_618 : vec4<bool> = (vec4<f32>(x_612.x, x_612.y, x_612.z, x_612.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_618.x, x_618.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_629 : u32 = u_xlatu_loop_1;
    let x_630 : u32 = u_xlatu37;
    if ((x_629 < x_630)) {
    } else {
      break;
    }
    let x_633 : u32 = u_xlatu_loop_1;
    u_xlatu38 = (x_633 >> 2u);
    let x_637 : u32 = u_xlatu_loop_1;
    u_xlati39 = bitcast<i32>((x_637 & 3u));
    let x_641 : u32 = u_xlatu38;
    let x_644 : vec4<f32> = x_93.unity_LightIndices[bitcast<i32>(x_641)];
    let x_654 : i32 = u_xlati39;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_659 : vec4<u32> = indexable[x_654];
    u_xlat38 = dot(x_644, bitcast<vec4<f32>>(x_659));
    let x_662 : f32 = u_xlat38;
    u_xlatu38 = bitcast<u32>(i32(x_662));
    let x_666 : vec3<f32> = vs_TEXCOORD1;
    let x_678 : u32 = u_xlatu38;
    let x_681 : vec4<f32> = x_677.x_AdditionalLightsPosition[bitcast<i32>(x_678)];
    let x_684 : u32 = u_xlatu38;
    let x_687 : vec4<f32> = x_677.x_AdditionalLightsPosition[bitcast<i32>(x_684)];
    u_xlat7 = ((-(x_666) * vec3<f32>(x_681.w, x_681.w, x_681.w)) + vec3<f32>(x_687.x, x_687.y, x_687.z));
    let x_691 : vec3<f32> = u_xlat7;
    let x_692 : vec3<f32> = u_xlat7;
    u_xlat39 = dot(x_691, x_692);
    let x_694 : f32 = u_xlat39;
    u_xlat39 = max(x_694, 6.10351562e-05f);
    let x_698 : f32 = u_xlat39;
    u_xlat40 = inverseSqrt(x_698);
    let x_700 : f32 = u_xlat40;
    let x_702 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_700, x_700, x_700) * x_702);
    let x_704 : f32 = u_xlat39;
    u_xlat40 = (1.0f / x_704);
    let x_706 : f32 = u_xlat39;
    let x_707 : u32 = u_xlatu38;
    let x_710 : f32 = x_677.x_AdditionalLightsAttenuation[bitcast<i32>(x_707)].x;
    u_xlat39 = (x_706 * x_710);
    let x_712 : f32 = u_xlat39;
    let x_714 : f32 = u_xlat39;
    u_xlat39 = ((-(x_712) * x_714) + 1.0f);
    let x_717 : f32 = u_xlat39;
    u_xlat39 = max(x_717, 0.0f);
    let x_719 : f32 = u_xlat39;
    let x_720 : f32 = u_xlat39;
    u_xlat39 = (x_719 * x_720);
    let x_722 : f32 = u_xlat39;
    let x_723 : f32 = u_xlat40;
    u_xlat39 = (x_722 * x_723);
    let x_725 : u32 = u_xlatu38;
    let x_728 : vec4<f32> = x_677.x_AdditionalLightsSpotDir[bitcast<i32>(x_725)];
    let x_730 : vec3<f32> = u_xlat7;
    u_xlat40 = dot(vec3<f32>(x_728.x, x_728.y, x_728.z), x_730);
    let x_732 : f32 = u_xlat40;
    let x_733 : u32 = u_xlatu38;
    let x_736 : f32 = x_677.x_AdditionalLightsAttenuation[bitcast<i32>(x_733)].z;
    let x_738 : u32 = u_xlatu38;
    let x_741 : f32 = x_677.x_AdditionalLightsAttenuation[bitcast<i32>(x_738)].w;
    u_xlat40 = ((x_732 * x_736) + x_741);
    let x_743 : f32 = u_xlat40;
    u_xlat40 = clamp(x_743, 0.0f, 1.0f);
    let x_745 : f32 = u_xlat40;
    let x_746 : f32 = u_xlat40;
    u_xlat40 = (x_745 * x_746);
    let x_748 : f32 = u_xlat39;
    let x_749 : f32 = u_xlat40;
    u_xlat39 = (x_748 * x_749);
    let x_752 : u32 = u_xlatu38;
    u_xlatu40 = (x_752 >> 5u);
    let x_755 : u32 = u_xlatu38;
    u_xlati8 = (1i << bitcast<u32>((bitcast<i32>(x_755) & 31i)));
    let x_761 : i32 = u_xlati8;
    let x_763 : u32 = u_xlatu40;
    let x_766 : f32 = x_390.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_763)].el;
    u_xlati40 = bitcast<i32>((bitcast<u32>(x_761) & bitcast<u32>(x_766)));
    let x_770 : i32 = u_xlati40;
    if ((x_770 != 0i)) {
      let x_780 : u32 = u_xlatu38;
      let x_783 : f32 = x_779.x_AdditionalLightsLightTypes[bitcast<i32>(x_780)].el;
      u_xlati40 = i32(x_783);
      let x_785 : i32 = u_xlati40;
      u_xlati8 = select(1i, 0i, (x_785 != 0i));
      let x_789 : u32 = u_xlatu38;
      u_xlati19 = (bitcast<i32>(x_789) << bitcast<u32>(2i));
      let x_792 : i32 = u_xlati8;
      if ((x_792 != 0i)) {
        let x_797 : vec3<f32> = vs_TEXCOORD1;
        let x_799 : i32 = u_xlati19;
        let x_802 : i32 = u_xlati19;
        let x_806 : vec4<f32> = x_779.x_AdditionalLightsWorldToLights[((x_799 + 1i) / 4i)][((x_802 + 1i) % 4i)];
        let x_808 : vec3<f32> = (vec3<f32>(x_797.y, x_797.y, x_797.y) * vec3<f32>(x_806.x, x_806.y, x_806.w));
        let x_809 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_808.x, x_809.y, x_808.y, x_808.z);
        let x_811 : i32 = u_xlati19;
        let x_813 : i32 = u_xlati19;
        let x_816 : vec4<f32> = x_779.x_AdditionalLightsWorldToLights[(x_811 / 4i)][(x_813 % 4i)];
        let x_818 : vec3<f32> = vs_TEXCOORD1;
        let x_821 : vec4<f32> = u_xlat8;
        let x_823 : vec3<f32> = ((vec3<f32>(x_816.x, x_816.y, x_816.w) * vec3<f32>(x_818.x, x_818.x, x_818.x)) + vec3<f32>(x_821.x, x_821.z, x_821.w));
        let x_824 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_823.x, x_824.y, x_823.y, x_823.z);
        let x_826 : i32 = u_xlati19;
        let x_829 : i32 = u_xlati19;
        let x_833 : vec4<f32> = x_779.x_AdditionalLightsWorldToLights[((x_826 + 2i) / 4i)][((x_829 + 2i) % 4i)];
        let x_835 : vec3<f32> = vs_TEXCOORD1;
        let x_838 : vec4<f32> = u_xlat8;
        let x_840 : vec3<f32> = ((vec3<f32>(x_833.x, x_833.y, x_833.w) * vec3<f32>(x_835.z, x_835.z, x_835.z)) + vec3<f32>(x_838.x, x_838.z, x_838.w));
        let x_841 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_840.x, x_841.y, x_840.y, x_840.z);
        let x_843 : vec4<f32> = u_xlat8;
        let x_845 : i32 = u_xlati19;
        let x_848 : i32 = u_xlati19;
        let x_852 : vec4<f32> = x_779.x_AdditionalLightsWorldToLights[((x_845 + 3i) / 4i)][((x_848 + 3i) % 4i)];
        let x_854 : vec3<f32> = (vec3<f32>(x_843.x, x_843.z, x_843.w) + vec3<f32>(x_852.x, x_852.y, x_852.w));
        let x_855 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_854.x, x_855.y, x_854.y, x_854.z);
        let x_857 : vec4<f32> = u_xlat8;
        let x_859 : vec4<f32> = u_xlat8;
        let x_861 : vec2<f32> = (vec2<f32>(x_857.x, x_857.z) / vec2<f32>(x_859.w, x_859.w));
        let x_862 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_861.x, x_862.y, x_861.y, x_862.w);
        let x_864 : vec4<f32> = u_xlat8;
        let x_867 : vec2<f32> = ((vec2<f32>(x_864.x, x_864.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_868 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_867.x, x_868.y, x_867.y, x_868.w);
        let x_870 : vec4<f32> = u_xlat8;
        let x_874 : vec2<f32> = clamp(vec2<f32>(x_870.x, x_870.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_875 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_874.x, x_875.y, x_874.y, x_875.w);
        let x_877 : u32 = u_xlatu38;
        let x_880 : vec4<f32> = x_779.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_877)];
        let x_882 : vec4<f32> = u_xlat8;
        let x_885 : u32 = u_xlatu38;
        let x_888 : vec4<f32> = x_779.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_885)];
        let x_890 : vec2<f32> = ((vec2<f32>(x_880.x, x_880.y) * vec2<f32>(x_882.x, x_882.z)) + vec2<f32>(x_888.z, x_888.w));
        let x_891 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_890.x, x_891.y, x_890.y, x_891.w);
      } else {
        let x_895 : i32 = u_xlati40;
        u_xlatb40 = (x_895 == 1i);
        let x_897 : bool = u_xlatb40;
        u_xlati40 = select(0i, 1i, x_897);
        let x_899 : i32 = u_xlati40;
        if ((x_899 != 0i)) {
          let x_904 : vec3<f32> = vs_TEXCOORD1;
          let x_906 : i32 = u_xlati19;
          let x_909 : i32 = u_xlati19;
          let x_913 : vec4<f32> = x_779.x_AdditionalLightsWorldToLights[((x_906 + 1i) / 4i)][((x_909 + 1i) % 4i)];
          let x_915 : vec2<f32> = (vec2<f32>(x_904.y, x_904.y) * vec2<f32>(x_913.x, x_913.y));
          let x_916 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_915.x, x_915.y, x_916.z, x_916.w);
          let x_918 : i32 = u_xlati19;
          let x_920 : i32 = u_xlati19;
          let x_923 : vec4<f32> = x_779.x_AdditionalLightsWorldToLights[(x_918 / 4i)][(x_920 % 4i)];
          let x_925 : vec3<f32> = vs_TEXCOORD1;
          let x_928 : vec4<f32> = u_xlat9;
          let x_930 : vec2<f32> = ((vec2<f32>(x_923.x, x_923.y) * vec2<f32>(x_925.x, x_925.x)) + vec2<f32>(x_928.x, x_928.y));
          let x_931 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_930.x, x_930.y, x_931.z, x_931.w);
          let x_933 : i32 = u_xlati19;
          let x_936 : i32 = u_xlati19;
          let x_940 : vec4<f32> = x_779.x_AdditionalLightsWorldToLights[((x_933 + 2i) / 4i)][((x_936 + 2i) % 4i)];
          let x_942 : vec3<f32> = vs_TEXCOORD1;
          let x_945 : vec4<f32> = u_xlat9;
          let x_947 : vec2<f32> = ((vec2<f32>(x_940.x, x_940.y) * vec2<f32>(x_942.z, x_942.z)) + vec2<f32>(x_945.x, x_945.y));
          let x_948 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_947.x, x_947.y, x_948.z, x_948.w);
          let x_950 : vec4<f32> = u_xlat9;
          let x_952 : i32 = u_xlati19;
          let x_955 : i32 = u_xlati19;
          let x_959 : vec4<f32> = x_779.x_AdditionalLightsWorldToLights[((x_952 + 3i) / 4i)][((x_955 + 3i) % 4i)];
          let x_961 : vec2<f32> = (vec2<f32>(x_950.x, x_950.y) + vec2<f32>(x_959.x, x_959.y));
          let x_962 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_961.x, x_961.y, x_962.z, x_962.w);
          let x_964 : vec4<f32> = u_xlat9;
          let x_967 : vec2<f32> = ((vec2<f32>(x_964.x, x_964.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_968 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_967.x, x_967.y, x_968.z, x_968.w);
          let x_970 : vec4<f32> = u_xlat9;
          let x_972 : vec2<f32> = fract(vec2<f32>(x_970.x, x_970.y));
          let x_973 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_972.x, x_972.y, x_973.z, x_973.w);
          let x_975 : u32 = u_xlatu38;
          let x_978 : vec4<f32> = x_779.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_975)];
          let x_980 : vec4<f32> = u_xlat9;
          let x_983 : u32 = u_xlatu38;
          let x_986 : vec4<f32> = x_779.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_983)];
          let x_988 : vec2<f32> = ((vec2<f32>(x_978.x, x_978.y) * vec2<f32>(x_980.x, x_980.y)) + vec2<f32>(x_986.z, x_986.w));
          let x_989 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_988.x, x_989.y, x_988.y, x_989.w);
        } else {
          let x_992 : vec3<f32> = vs_TEXCOORD1;
          let x_994 : i32 = u_xlati19;
          let x_997 : i32 = u_xlati19;
          let x_1001 : vec4<f32> = x_779.x_AdditionalLightsWorldToLights[((x_994 + 1i) / 4i)][((x_997 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_992.y, x_992.y, x_992.y, x_992.y) * x_1001);
          let x_1003 : i32 = u_xlati19;
          let x_1005 : i32 = u_xlati19;
          let x_1008 : vec4<f32> = x_779.x_AdditionalLightsWorldToLights[(x_1003 / 4i)][(x_1005 % 4i)];
          let x_1009 : vec3<f32> = vs_TEXCOORD1;
          let x_1012 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1008 * vec4<f32>(x_1009.x, x_1009.x, x_1009.x, x_1009.x)) + x_1012);
          let x_1014 : i32 = u_xlati19;
          let x_1017 : i32 = u_xlati19;
          let x_1021 : vec4<f32> = x_779.x_AdditionalLightsWorldToLights[((x_1014 + 2i) / 4i)][((x_1017 + 2i) % 4i)];
          let x_1022 : vec3<f32> = vs_TEXCOORD1;
          let x_1025 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1021 * vec4<f32>(x_1022.z, x_1022.z, x_1022.z, x_1022.z)) + x_1025);
          let x_1027 : vec4<f32> = u_xlat9;
          let x_1028 : i32 = u_xlati19;
          let x_1031 : i32 = u_xlati19;
          let x_1035 : vec4<f32> = x_779.x_AdditionalLightsWorldToLights[((x_1028 + 3i) / 4i)][((x_1031 + 3i) % 4i)];
          u_xlat9 = (x_1027 + x_1035);
          let x_1037 : vec4<f32> = u_xlat9;
          let x_1039 : vec4<f32> = u_xlat9;
          let x_1041 : vec3<f32> = (vec3<f32>(x_1037.x, x_1037.y, x_1037.z) / vec3<f32>(x_1039.w, x_1039.w, x_1039.w));
          let x_1042 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1041.x, x_1041.y, x_1041.z, x_1042.w);
          let x_1044 : vec4<f32> = u_xlat9;
          let x_1046 : vec4<f32> = u_xlat9;
          u_xlat40 = dot(vec3<f32>(x_1044.x, x_1044.y, x_1044.z), vec3<f32>(x_1046.x, x_1046.y, x_1046.z));
          let x_1049 : f32 = u_xlat40;
          u_xlat40 = inverseSqrt(x_1049);
          let x_1051 : f32 = u_xlat40;
          let x_1053 : vec4<f32> = u_xlat9;
          let x_1055 : vec3<f32> = (vec3<f32>(x_1051, x_1051, x_1051) * vec3<f32>(x_1053.x, x_1053.y, x_1053.z));
          let x_1056 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1055.x, x_1055.y, x_1055.z, x_1056.w);
          let x_1058 : vec4<f32> = u_xlat9;
          u_xlat40 = dot(abs(vec3<f32>(x_1058.x, x_1058.y, x_1058.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1063 : f32 = u_xlat40;
          u_xlat40 = max(x_1063, 0.000001f);
          let x_1066 : f32 = u_xlat40;
          u_xlat40 = (1.0f / x_1066);
          let x_1069 : f32 = u_xlat40;
          let x_1071 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_1069, x_1069, x_1069) * vec3<f32>(x_1071.z, x_1071.x, x_1071.y));
          let x_1075 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1075);
          let x_1079 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1079, 0.0f, 1.0f);
          let x_1085 : vec3<f32> = u_xlat10;
          let x_1088 : vec4<bool> = (vec4<f32>(x_1085.y, x_1085.y, x_1085.z, x_1085.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1089 : vec2<bool> = vec2<bool>(x_1088.x, x_1088.z);
          let x_1090 : vec3<bool> = u_xlatb19;
          u_xlatb19 = vec3<bool>(x_1089.x, x_1090.y, x_1089.y);
          let x_1094 : bool = u_xlatb19.x;
          if (x_1094) {
            let x_1099 : f32 = u_xlat10.x;
            x_1095 = x_1099;
          } else {
            let x_1102 : f32 = u_xlat10.x;
            x_1095 = -(x_1102);
          }
          let x_1104 : f32 = x_1095;
          u_xlat19.x = x_1104;
          let x_1107 : bool = u_xlatb19.z;
          if (x_1107) {
            let x_1112 : f32 = u_xlat10.x;
            x_1108 = x_1112;
          } else {
            let x_1115 : f32 = u_xlat10.x;
            x_1108 = -(x_1115);
          }
          let x_1117 : f32 = x_1108;
          u_xlat19.z = x_1117;
          let x_1119 : vec4<f32> = u_xlat9;
          let x_1121 : f32 = u_xlat40;
          let x_1124 : vec3<f32> = u_xlat19;
          let x_1126 : vec2<f32> = ((vec2<f32>(x_1119.x, x_1119.y) * vec2<f32>(x_1121, x_1121)) + vec2<f32>(x_1124.x, x_1124.z));
          let x_1127 : vec3<f32> = u_xlat19;
          u_xlat19 = vec3<f32>(x_1126.x, x_1127.y, x_1126.y);
          let x_1129 : vec3<f32> = u_xlat19;
          let x_1132 : vec2<f32> = ((vec2<f32>(x_1129.x, x_1129.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1133 : vec3<f32> = u_xlat19;
          u_xlat19 = vec3<f32>(x_1132.x, x_1133.y, x_1132.y);
          let x_1135 : vec3<f32> = u_xlat19;
          let x_1139 : vec2<f32> = clamp(vec2<f32>(x_1135.x, x_1135.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1140 : vec3<f32> = u_xlat19;
          u_xlat19 = vec3<f32>(x_1139.x, x_1140.y, x_1139.y);
          let x_1142 : u32 = u_xlatu38;
          let x_1145 : vec4<f32> = x_779.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1142)];
          let x_1147 : vec3<f32> = u_xlat19;
          let x_1150 : u32 = u_xlatu38;
          let x_1153 : vec4<f32> = x_779.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1150)];
          let x_1155 : vec2<f32> = ((vec2<f32>(x_1145.x, x_1145.y) * vec2<f32>(x_1147.x, x_1147.z)) + vec2<f32>(x_1153.z, x_1153.w));
          let x_1156 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1155.x, x_1156.y, x_1155.y, x_1156.w);
        }
      }
      let x_1163 : vec4<f32> = u_xlat8;
      let x_1166 : f32 = x_44.x_GlobalMipBias.x;
      let x_1167 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1163.x, x_1163.z), x_1166);
      u_xlat8 = x_1167;
      let x_1169 : bool = u_xlatb5.y;
      if (x_1169) {
        let x_1174 : f32 = u_xlat8.w;
        x_1170 = x_1174;
      } else {
        let x_1177 : f32 = u_xlat8.x;
        x_1170 = x_1177;
      }
      let x_1178 : f32 = x_1170;
      u_xlat40 = x_1178;
      let x_1180 : bool = u_xlatb5.x;
      if (x_1180) {
        let x_1184 : vec4<f32> = u_xlat8;
        x_1181 = vec3<f32>(x_1184.x, x_1184.y, x_1184.z);
      } else {
        let x_1187 : f32 = u_xlat40;
        x_1181 = vec3<f32>(x_1187, x_1187, x_1187);
      }
      let x_1189 : vec3<f32> = x_1181;
      let x_1190 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1189.x, x_1189.y, x_1189.z, x_1190.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1196 : vec4<f32> = u_xlat8;
    let x_1198 : u32 = u_xlatu38;
    let x_1201 : vec4<f32> = x_677.x_AdditionalLightsColor[bitcast<i32>(x_1198)];
    let x_1203 : vec3<f32> = (vec3<f32>(x_1196.x, x_1196.y, x_1196.z) * vec3<f32>(x_1201.x, x_1201.y, x_1201.z));
    let x_1204 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1203.x, x_1203.y, x_1203.z, x_1204.w);
    let x_1206 : f32 = u_xlat36;
    let x_1208 : vec4<f32> = u_xlat8;
    let x_1210 : vec3<f32> = (vec3<f32>(x_1206, x_1206, x_1206) * vec3<f32>(x_1208.x, x_1208.y, x_1208.z));
    let x_1211 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1210.x, x_1210.y, x_1210.z, x_1211.w);
    let x_1213 : f32 = u_xlat39;
    let x_1215 : vec4<f32> = u_xlat8;
    let x_1217 : vec3<f32> = (vec3<f32>(x_1213, x_1213, x_1213) * vec3<f32>(x_1215.x, x_1215.y, x_1215.z));
    let x_1218 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1217.x, x_1217.y, x_1217.z, x_1218.w);
    let x_1220 : vec3<f32> = u_xlat1;
    let x_1221 : vec3<f32> = u_xlat7;
    u_xlat38 = dot(x_1220, x_1221);
    let x_1223 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1223, 0.0f, 1.0f);
    let x_1225 : f32 = u_xlat38;
    let x_1227 : vec4<f32> = u_xlat8;
    let x_1229 : vec3<f32> = (vec3<f32>(x_1225, x_1225, x_1225) * vec3<f32>(x_1227.x, x_1227.y, x_1227.z));
    let x_1230 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1229.x, x_1229.y, x_1229.z, x_1230.w);
    let x_1232 : vec3<f32> = u_xlat2;
    let x_1233 : f32 = u_xlat34;
    let x_1236 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_1232 * vec3<f32>(x_1233, x_1233, x_1233)) + x_1236);
    let x_1238 : vec3<f32> = u_xlat7;
    let x_1239 : vec3<f32> = u_xlat7;
    u_xlat38 = dot(x_1238, x_1239);
    let x_1241 : f32 = u_xlat38;
    u_xlat38 = max(x_1241, 1.17549435e-37f);
    let x_1243 : f32 = u_xlat38;
    u_xlat38 = inverseSqrt(x_1243);
    let x_1245 : f32 = u_xlat38;
    let x_1247 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_1245, x_1245, x_1245) * x_1247);
    let x_1249 : vec3<f32> = u_xlat1;
    let x_1250 : vec3<f32> = u_xlat7;
    u_xlat38 = dot(x_1249, x_1250);
    let x_1252 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1252, 0.0f, 1.0f);
    let x_1254 : f32 = u_xlat38;
    u_xlat38 = log2(x_1254);
    let x_1256 : f32 = u_xlat35;
    let x_1257 : f32 = u_xlat38;
    u_xlat38 = (x_1256 * x_1257);
    let x_1259 : f32 = u_xlat38;
    u_xlat38 = exp2(x_1259);
    let x_1261 : f32 = u_xlat38;
    let x_1264 : vec4<f32> = x_56.x_SpecColor;
    u_xlat7 = (vec3<f32>(x_1261, x_1261, x_1261) * vec3<f32>(x_1264.x, x_1264.y, x_1264.z));
    let x_1267 : vec3<f32> = u_xlat7;
    let x_1268 : vec4<f32> = u_xlat8;
    u_xlat7 = (x_1267 * vec3<f32>(x_1268.x, x_1268.y, x_1268.z));
    let x_1271 : vec4<f32> = u_xlat9;
    let x_1273 : vec4<f32> = u_xlat0;
    let x_1276 : vec3<f32> = u_xlat7;
    u_xlat7 = ((vec3<f32>(x_1271.x, x_1271.y, x_1271.z) * vec3<f32>(x_1273.y, x_1273.z, x_1273.w)) + x_1276);
    let x_1278 : vec3<f32> = u_xlat6;
    let x_1279 : vec3<f32> = u_xlat7;
    u_xlat6 = (x_1278 + x_1279);

    continuing {
      let x_1281 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1281 + bitcast<u32>(1i));
    }
  }
  let x_1284 : vec3<f32> = u_xlat3;
  let x_1285 : vec4<f32> = u_xlat0;
  let x_1288 : vec3<f32> = u_xlat4;
  u_xlat11 = ((x_1284 * vec3<f32>(x_1285.y, x_1285.z, x_1285.w)) + x_1288);
  let x_1292 : vec3<f32> = u_xlat6;
  let x_1293 : vec3<f32> = u_xlat11;
  let x_1294 : vec3<f32> = (x_1292 + x_1293);
  let x_1295 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1294.x, x_1294.y, x_1294.z, x_1295.w);
  let x_1299 : f32 = x_56.x_Surface;
  u_xlatb11 = (x_1299 == 1.0f);
  let x_1301 : bool = u_xlatb11;
  if (x_1301) {
    let x_1306 : f32 = u_xlat0.x;
    x_1302 = x_1306;
  } else {
    x_1302 = 1.0f;
  }
  let x_1308 : f32 = x_1302;
  SV_Target0.w = x_1308;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

