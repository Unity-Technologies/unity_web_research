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

@group(1) @binding(3) var<uniform> x_325 : MainLightShadows;

@group(1) @binding(4) var<uniform> x_392 : LightCookies;

@group(0) @binding(6) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_583 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_837 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_950 : AdditionalLightsCookies;

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
  var u_xlat15 : vec3<f32>;
  var x_111 : vec3<f32>;
  var u_xlat44 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat45 : f32;
  var u_xlat18 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat46 : f32;
  var u_xlat42 : f32;
  var u_xlat32 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat47 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlatb6 : bool;
  var u_xlatb20 : bool;
  var u_xlat20 : f32;
  var u_xlatb7 : vec2<bool>;
  var u_xlat48 : f32;
  var x_479 : f32;
  var x_490 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat49 : f32;
  var u_xlat8 : vec2<f32>;
  var u_xlat22 : vec3<f32>;
  var u_xlatu42 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu45 : u32;
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
  var x_1252 : f32;
  var x_1265 : f32;
  var x_1317 : f32;
  var x_1329 : vec3<f32>;
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
  let x_99 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat3.x = x_99;
  let x_102 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat3.y = x_102;
  let x_107 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat3.z = x_107;
  let x_110 : bool = u_xlatb15;
  if (x_110) {
    let x_114 : vec3<f32> = u_xlat2;
    x_111 = x_114;
  } else {
    let x_116 : vec3<f32> = u_xlat3;
    x_111 = x_116;
  }
  let x_117 : vec3<f32> = x_111;
  u_xlat15 = x_117;
  let x_119 : vec3<f32> = vs_TEXCOORD3;
  let x_120 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2.x = dot(x_119, x_120);
  let x_124 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_124);
  let x_127 : vec3<f32> = u_xlat2;
  let x_129 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_127.x, x_127.x, x_127.x) * x_129);
  let x_133 : f32 = vs_TEXCOORD7.y;
  let x_135 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat44 = (x_133 * x_135);
  let x_138 : f32 = x_44.unity_MatrixV[0i].z;
  let x_140 : f32 = vs_TEXCOORD7.x;
  let x_142 : f32 = u_xlat44;
  u_xlat44 = ((x_138 * x_140) + x_142);
  let x_145 : f32 = x_44.unity_MatrixV[2i].z;
  let x_147 : f32 = vs_TEXCOORD7.z;
  let x_149 : f32 = u_xlat44;
  u_xlat44 = ((x_145 * x_147) + x_149);
  let x_151 : f32 = u_xlat44;
  let x_154 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat44 = (x_151 + x_154);
  let x_156 : f32 = u_xlat44;
  let x_160 : f32 = x_44.x_ProjectionParams.y;
  u_xlat44 = (-(x_156) + -(x_160));
  let x_163 : f32 = u_xlat44;
  u_xlat44 = max(x_163, 0.0f);
  let x_165 : f32 = u_xlat44;
  let x_168 : f32 = x_44.unity_FogParams.x;
  u_xlat44 = (x_165 * x_168);
  let x_175 : vec4<f32> = vs_TEXCOORD0;
  let x_178 : f32 = x_44.x_GlobalMipBias.x;
  let x_179 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_175.z, x_175.w), x_178);
  u_xlat3 = vec3<f32>(x_179.x, x_179.y, x_179.z);
  let x_185 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_186 : vec2<f32> = vec2<f32>(x_185.x, x_185.y);
  let x_190 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_186.x, x_186.y));
  let x_191 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_190.x, x_190.y, x_191.z);
  let x_193 : vec3<f32> = u_xlat4;
  let x_195 : vec4<f32> = hlslcc_FragCoord;
  let x_197 : vec2<f32> = (vec2<f32>(x_193.x, x_193.y) * vec2<f32>(x_195.x, x_195.y));
  let x_198 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_197.x, x_197.y, x_198.z);
  let x_202 : f32 = u_xlat4.y;
  let x_205 : f32 = x_44.x_ScaleBiasRt.x;
  let x_208 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat45 = ((x_202 * x_205) + x_208);
  let x_210 : f32 = u_xlat45;
  u_xlat4.z = (-(x_210) + 1.0f);
  let x_214 : f32 = u_xlat1;
  u_xlat45 = ((-(x_214) * 0.959999979f) + 0.959999979f);
  let x_220 : f32 = u_xlat45;
  u_xlat18 = (-(x_220) + 1.0f);
  let x_224 : vec4<f32> = u_xlat0;
  let x_226 : f32 = u_xlat45;
  u_xlat5 = (vec3<f32>(x_224.x, x_224.y, x_224.z) * vec3<f32>(x_226, x_226, x_226));
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
  u_xlat45 = (x_250 * x_251);
  let x_253 : f32 = u_xlat45;
  u_xlat45 = max(x_253, 0.0078125f);
  let x_257 : f32 = u_xlat45;
  let x_258 : f32 = u_xlat45;
  u_xlat46 = (x_257 * x_258);
  let x_262 : f32 = u_xlat0.w;
  let x_263 : f32 = u_xlat18;
  u_xlat42 = (x_262 + x_263);
  let x_265 : f32 = u_xlat42;
  u_xlat42 = clamp(x_265, 0.0f, 1.0f);
  let x_267 : f32 = u_xlat45;
  u_xlat18 = ((x_267 * 4.0f) + 2.0f);
  let x_277 : vec3<f32> = u_xlat4;
  let x_280 : f32 = x_44.x_GlobalMipBias.x;
  let x_281 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_277.x, x_277.z), x_280);
  u_xlat4.x = x_281.x;
  let x_286 : f32 = u_xlat4.x;
  u_xlat32 = (x_286 + -1.0f);
  let x_291 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_292 : f32 = u_xlat32;
  u_xlat32 = ((x_291 * x_292) + 1.0f);
  let x_296 : f32 = u_xlat4.x;
  u_xlat4.x = min(x_296, 1.0f);
  let x_301 : vec4<f32> = vs_TEXCOORD8;
  let x_302 : vec2<f32> = vec2<f32>(x_301.x, x_301.y);
  let x_304 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_302.x, x_302.y, x_304);
  let x_317 : vec3<f32> = txVec0;
  let x_319 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_317.xy, x_317.z);
  u_xlat47 = x_319;
  let x_327 : f32 = x_325.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_327) + 1.0f);
  let x_331 : f32 = u_xlat47;
  let x_333 : f32 = x_325.x_MainLightShadowParams.x;
  let x_336 : f32 = u_xlat6.x;
  u_xlat47 = ((x_331 * x_333) + x_336);
  let x_340 : f32 = vs_TEXCOORD8.z;
  u_xlatb6 = (0.0f >= x_340);
  let x_344 : f32 = vs_TEXCOORD8.z;
  u_xlatb20 = (x_344 >= 1.0f);
  let x_346 : bool = u_xlatb20;
  let x_347 : bool = u_xlatb6;
  u_xlatb6 = (x_346 | x_347);
  let x_349 : bool = u_xlatb6;
  let x_350 : f32 = u_xlat47;
  u_xlat47 = select(x_350, 1.0f, x_349);
  let x_352 : vec3<f32> = vs_TEXCOORD7;
  let x_354 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_356 : vec3<f32> = (x_352 + -(x_354));
  let x_357 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_356.x, x_356.y, x_356.z, x_357.w);
  let x_359 : vec4<f32> = u_xlat6;
  let x_361 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_359.x, x_359.y, x_359.z), vec3<f32>(x_361.x, x_361.y, x_361.z));
  let x_366 : f32 = u_xlat6.x;
  let x_368 : f32 = x_325.x_MainLightShadowParams.z;
  let x_371 : f32 = x_325.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_366 * x_368) + x_371);
  let x_375 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_375, 0.0f, 1.0f);
  let x_379 : f32 = u_xlat47;
  u_xlat20 = (-(x_379) + 1.0f);
  let x_383 : f32 = u_xlat6.x;
  let x_384 : f32 = u_xlat20;
  let x_386 : f32 = u_xlat47;
  u_xlat47 = ((x_383 * x_384) + x_386);
  let x_394 : f32 = x_392.x_MainLightCookieTextureFormat;
  u_xlatb6 = !((x_394 == -1.0f));
  let x_396 : bool = u_xlatb6;
  if (x_396) {
    let x_399 : vec3<f32> = vs_TEXCOORD7;
    let x_402 : vec4<f32> = x_392.x_MainLightWorldToLight[1i];
    let x_404 : vec2<f32> = (vec2<f32>(x_399.y, x_399.y) * vec2<f32>(x_402.x, x_402.y));
    let x_405 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_404.x, x_404.y, x_405.z, x_405.w);
    let x_408 : vec4<f32> = x_392.x_MainLightWorldToLight[0i];
    let x_410 : vec3<f32> = vs_TEXCOORD7;
    let x_413 : vec4<f32> = u_xlat6;
    let x_415 : vec2<f32> = ((vec2<f32>(x_408.x, x_408.y) * vec2<f32>(x_410.x, x_410.x)) + vec2<f32>(x_413.x, x_413.y));
    let x_416 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_415.x, x_415.y, x_416.z, x_416.w);
    let x_419 : vec4<f32> = x_392.x_MainLightWorldToLight[2i];
    let x_421 : vec3<f32> = vs_TEXCOORD7;
    let x_424 : vec4<f32> = u_xlat6;
    let x_426 : vec2<f32> = ((vec2<f32>(x_419.x, x_419.y) * vec2<f32>(x_421.z, x_421.z)) + vec2<f32>(x_424.x, x_424.y));
    let x_427 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_426.x, x_426.y, x_427.z, x_427.w);
    let x_429 : vec4<f32> = u_xlat6;
    let x_432 : vec4<f32> = x_392.x_MainLightWorldToLight[3i];
    let x_434 : vec2<f32> = (vec2<f32>(x_429.x, x_429.y) + vec2<f32>(x_432.x, x_432.y));
    let x_435 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_434.x, x_434.y, x_435.z, x_435.w);
    let x_437 : vec4<f32> = u_xlat6;
    let x_442 : vec2<f32> = ((vec2<f32>(x_437.x, x_437.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_443 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_442.x, x_442.y, x_443.z, x_443.w);
    let x_450 : vec4<f32> = u_xlat6;
    let x_453 : f32 = x_44.x_GlobalMipBias.x;
    let x_454 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_450.x, x_450.y), x_453);
    u_xlat6 = x_454;
    let x_459 : f32 = x_392.x_MainLightCookieTextureFormat;
    let x_461 : f32 = x_392.x_MainLightCookieTextureFormat;
    let x_463 : f32 = x_392.x_MainLightCookieTextureFormat;
    let x_465 : f32 = x_392.x_MainLightCookieTextureFormat;
    let x_466 : vec4<f32> = vec4<f32>(x_459, x_461, x_463, x_465);
    let x_474 : vec4<bool> = (vec4<f32>(x_466.x, x_466.y, x_466.z, x_466.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_474.x, x_474.y);
    let x_478 : bool = u_xlatb7.y;
    if (x_478) {
      let x_483 : f32 = u_xlat6.w;
      x_479 = x_483;
    } else {
      let x_486 : f32 = u_xlat6.x;
      x_479 = x_486;
    }
    let x_487 : f32 = x_479;
    u_xlat48 = x_487;
    let x_489 : bool = u_xlatb7.x;
    if (x_489) {
      let x_493 : vec4<f32> = u_xlat6;
      x_490 = vec3<f32>(x_493.x, x_493.y, x_493.z);
    } else {
      let x_496 : f32 = u_xlat48;
      x_490 = vec3<f32>(x_496, x_496, x_496);
    }
    let x_498 : vec3<f32> = x_490;
    let x_499 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_498.x, x_498.y, x_498.z, x_499.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_505 : vec4<f32> = u_xlat6;
  let x_508 : vec4<f32> = x_44.x_MainLightColor;
  let x_510 : vec3<f32> = (vec3<f32>(x_505.x, x_505.y, x_505.z) * vec3<f32>(x_508.x, x_508.y, x_508.z));
  let x_511 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_510.x, x_510.y, x_510.z, x_511.w);
  let x_513 : f32 = u_xlat32;
  let x_515 : vec4<f32> = u_xlat6;
  let x_517 : vec3<f32> = (vec3<f32>(x_513, x_513, x_513) * vec3<f32>(x_515.x, x_515.y, x_515.z));
  let x_518 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_517.x, x_517.y, x_517.z, x_518.w);
  let x_520 : vec3<f32> = u_xlat15;
  let x_522 : vec3<f32> = u_xlat2;
  u_xlat48 = dot(-(x_520), x_522);
  let x_524 : f32 = u_xlat48;
  let x_525 : f32 = u_xlat48;
  u_xlat48 = (x_524 + x_525);
  let x_528 : vec3<f32> = u_xlat2;
  let x_529 : f32 = u_xlat48;
  let x_533 : vec3<f32> = u_xlat15;
  let x_535 : vec3<f32> = ((x_528 * -(vec3<f32>(x_529, x_529, x_529))) + -(x_533));
  let x_536 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_535.x, x_535.y, x_535.z, x_536.w);
  let x_538 : vec3<f32> = u_xlat2;
  let x_539 : vec3<f32> = u_xlat15;
  u_xlat48 = dot(x_538, x_539);
  let x_541 : f32 = u_xlat48;
  u_xlat48 = clamp(x_541, 0.0f, 1.0f);
  let x_543 : f32 = u_xlat48;
  u_xlat48 = (-(x_543) + 1.0f);
  let x_546 : f32 = u_xlat48;
  let x_547 : f32 = u_xlat48;
  u_xlat48 = (x_546 * x_547);
  let x_549 : f32 = u_xlat48;
  let x_550 : f32 = u_xlat48;
  u_xlat48 = (x_549 * x_550);
  let x_553 : f32 = u_xlat1;
  u_xlat49 = ((-(x_553) * 0.699999988f) + 1.700000048f);
  let x_559 : f32 = u_xlat1;
  let x_560 : f32 = u_xlat49;
  u_xlat1 = (x_559 * x_560);
  let x_562 : f32 = u_xlat1;
  u_xlat1 = (x_562 * 6.0f);
  let x_573 : vec4<f32> = u_xlat7;
  let x_575 : f32 = u_xlat1;
  let x_576 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_573.x, x_573.y, x_573.z), x_575);
  u_xlat7 = x_576;
  let x_578 : f32 = u_xlat7.w;
  u_xlat1 = (x_578 + -1.0f);
  let x_585 : f32 = x_583.unity_SpecCube0_HDR.w;
  let x_586 : f32 = u_xlat1;
  u_xlat1 = ((x_585 * x_586) + 1.0f);
  let x_589 : f32 = u_xlat1;
  u_xlat1 = max(x_589, 0.0f);
  let x_591 : f32 = u_xlat1;
  u_xlat1 = log2(x_591);
  let x_593 : f32 = u_xlat1;
  let x_595 : f32 = x_583.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_593 * x_595);
  let x_597 : f32 = u_xlat1;
  u_xlat1 = exp2(x_597);
  let x_599 : f32 = u_xlat1;
  let x_601 : f32 = x_583.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_599 * x_601);
  let x_603 : vec4<f32> = u_xlat7;
  let x_605 : f32 = u_xlat1;
  let x_607 : vec3<f32> = (vec3<f32>(x_603.x, x_603.y, x_603.z) * vec3<f32>(x_605, x_605, x_605));
  let x_608 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_607.x, x_607.y, x_607.z, x_608.w);
  let x_612 : f32 = u_xlat45;
  let x_614 : f32 = u_xlat45;
  u_xlat8 = ((vec2<f32>(x_612, x_612) * vec2<f32>(x_614, x_614)) + vec2<f32>(-1.0f, 1.0f));
  let x_620 : f32 = u_xlat8.y;
  u_xlat1 = (1.0f / x_620);
  let x_623 : vec4<f32> = u_xlat0;
  let x_626 : f32 = u_xlat42;
  u_xlat22 = (-(vec3<f32>(x_623.x, x_623.y, x_623.z)) + vec3<f32>(x_626, x_626, x_626));
  let x_629 : f32 = u_xlat48;
  let x_631 : vec3<f32> = u_xlat22;
  let x_633 : vec4<f32> = u_xlat0;
  u_xlat22 = ((vec3<f32>(x_629, x_629, x_629) * x_631) + vec3<f32>(x_633.x, x_633.y, x_633.z));
  let x_636 : f32 = u_xlat1;
  let x_638 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_636, x_636, x_636) * x_638);
  let x_640 : vec4<f32> = u_xlat7;
  let x_642 : vec3<f32> = u_xlat22;
  let x_643 : vec3<f32> = (vec3<f32>(x_640.x, x_640.y, x_640.z) * x_642);
  let x_644 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_643.x, x_643.y, x_643.z, x_644.w);
  let x_646 : vec3<f32> = u_xlat3;
  let x_647 : vec3<f32> = u_xlat5;
  let x_649 : vec4<f32> = u_xlat7;
  u_xlat3 = ((x_646 * x_647) + vec3<f32>(x_649.x, x_649.y, x_649.z));
  let x_652 : f32 = u_xlat47;
  let x_655 : f32 = x_583.unity_LightData.z;
  u_xlat42 = (x_652 * x_655);
  let x_657 : vec3<f32> = u_xlat2;
  let x_659 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1 = dot(x_657, vec3<f32>(x_659.x, x_659.y, x_659.z));
  let x_662 : f32 = u_xlat1;
  u_xlat1 = clamp(x_662, 0.0f, 1.0f);
  let x_664 : f32 = u_xlat42;
  let x_665 : f32 = u_xlat1;
  u_xlat42 = (x_664 * x_665);
  let x_667 : f32 = u_xlat42;
  let x_669 : vec4<f32> = u_xlat6;
  let x_671 : vec3<f32> = (vec3<f32>(x_667, x_667, x_667) * vec3<f32>(x_669.x, x_669.y, x_669.z));
  let x_672 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_671.x, x_671.y, x_671.z, x_672.w);
  let x_674 : vec3<f32> = u_xlat15;
  let x_676 : vec4<f32> = x_44.x_MainLightPosition;
  let x_678 : vec3<f32> = (x_674 + vec3<f32>(x_676.x, x_676.y, x_676.z));
  let x_679 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_678.x, x_678.y, x_678.z, x_679.w);
  let x_681 : vec4<f32> = u_xlat7;
  let x_683 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_681.x, x_681.y, x_681.z), vec3<f32>(x_683.x, x_683.y, x_683.z));
  let x_686 : f32 = u_xlat42;
  u_xlat42 = max(x_686, 1.17549435e-37f);
  let x_689 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_689);
  let x_691 : f32 = u_xlat42;
  let x_693 : vec4<f32> = u_xlat7;
  let x_695 : vec3<f32> = (vec3<f32>(x_691, x_691, x_691) * vec3<f32>(x_693.x, x_693.y, x_693.z));
  let x_696 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_695.x, x_695.y, x_695.z, x_696.w);
  let x_698 : vec3<f32> = u_xlat2;
  let x_699 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(x_698, vec3<f32>(x_699.x, x_699.y, x_699.z));
  let x_702 : f32 = u_xlat42;
  u_xlat42 = clamp(x_702, 0.0f, 1.0f);
  let x_705 : vec4<f32> = x_44.x_MainLightPosition;
  let x_707 : vec4<f32> = u_xlat7;
  u_xlat1 = dot(vec3<f32>(x_705.x, x_705.y, x_705.z), vec3<f32>(x_707.x, x_707.y, x_707.z));
  let x_710 : f32 = u_xlat1;
  u_xlat1 = clamp(x_710, 0.0f, 1.0f);
  let x_712 : f32 = u_xlat42;
  let x_713 : f32 = u_xlat42;
  u_xlat42 = (x_712 * x_713);
  let x_715 : f32 = u_xlat42;
  let x_717 : f32 = u_xlat8.x;
  u_xlat42 = ((x_715 * x_717) + 1.000010014f);
  let x_721 : f32 = u_xlat1;
  let x_722 : f32 = u_xlat1;
  u_xlat1 = (x_721 * x_722);
  let x_724 : f32 = u_xlat42;
  let x_725 : f32 = u_xlat42;
  u_xlat42 = (x_724 * x_725);
  let x_727 : f32 = u_xlat1;
  u_xlat1 = max(x_727, 0.100000001f);
  let x_730 : f32 = u_xlat42;
  let x_731 : f32 = u_xlat1;
  u_xlat42 = (x_730 * x_731);
  let x_733 : f32 = u_xlat18;
  let x_734 : f32 = u_xlat42;
  u_xlat42 = (x_733 * x_734);
  let x_736 : f32 = u_xlat46;
  let x_737 : f32 = u_xlat42;
  u_xlat42 = (x_736 / x_737);
  let x_739 : vec4<f32> = u_xlat0;
  let x_741 : f32 = u_xlat42;
  let x_744 : vec3<f32> = u_xlat5;
  let x_745 : vec3<f32> = ((vec3<f32>(x_739.x, x_739.y, x_739.z) * vec3<f32>(x_741, x_741, x_741)) + x_744);
  let x_746 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_745.x, x_745.y, x_745.z, x_746.w);
  let x_748 : vec4<f32> = u_xlat6;
  let x_750 : vec4<f32> = u_xlat7;
  let x_752 : vec3<f32> = (vec3<f32>(x_748.x, x_748.y, x_748.z) * vec3<f32>(x_750.x, x_750.y, x_750.z));
  let x_753 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_752.x, x_752.y, x_752.z, x_753.w);
  let x_756 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_758 : f32 = x_583.unity_LightData.y;
  u_xlat42 = min(x_756, x_758);
  let x_762 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_762));
  let x_766 : f32 = x_392.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_768 : f32 = x_392.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_770 : f32 = x_392.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_772 : f32 = x_392.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_773 : vec4<f32> = vec4<f32>(x_766, x_768, x_770, x_772);
  let x_779 : vec4<bool> = (vec4<f32>(x_773.x, x_773.y, x_773.z, x_773.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_779.x, x_779.y);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_790 : u32 = u_xlatu_loop_1;
    let x_791 : u32 = u_xlatu42;
    if ((x_790 < x_791)) {
    } else {
      break;
    }
    let x_794 : u32 = u_xlatu_loop_1;
    u_xlatu45 = (x_794 >> 2u);
    let x_798 : u32 = u_xlatu_loop_1;
    u_xlati47 = bitcast<i32>((x_798 & 3u));
    let x_801 : u32 = u_xlatu45;
    let x_804 : vec4<f32> = x_583.unity_LightIndices[bitcast<i32>(x_801)];
    let x_814 : i32 = u_xlati47;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_819 : vec4<u32> = indexable[x_814];
    u_xlat45 = dot(x_804, bitcast<vec4<f32>>(x_819));
    let x_822 : f32 = u_xlat45;
    u_xlatu45 = bitcast<u32>(i32(x_822));
    let x_826 : vec3<f32> = vs_TEXCOORD7;
    let x_838 : u32 = u_xlatu45;
    let x_841 : vec4<f32> = x_837.x_AdditionalLightsPosition[bitcast<i32>(x_838)];
    let x_844 : u32 = u_xlatu45;
    let x_847 : vec4<f32> = x_837.x_AdditionalLightsPosition[bitcast<i32>(x_844)];
    u_xlat9 = ((-(x_826) * vec3<f32>(x_841.w, x_841.w, x_841.w)) + vec3<f32>(x_847.x, x_847.y, x_847.z));
    let x_850 : vec3<f32> = u_xlat9;
    let x_851 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_850, x_851);
    let x_853 : f32 = u_xlat47;
    u_xlat47 = max(x_853, 6.10351562e-05f);
    let x_856 : f32 = u_xlat47;
    u_xlat48 = inverseSqrt(x_856);
    let x_859 : f32 = u_xlat48;
    let x_861 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_859, x_859, x_859) * x_861);
    let x_864 : f32 = u_xlat47;
    u_xlat35.x = (1.0f / x_864);
    let x_867 : f32 = u_xlat47;
    let x_868 : u32 = u_xlatu45;
    let x_871 : f32 = x_837.x_AdditionalLightsAttenuation[bitcast<i32>(x_868)].x;
    u_xlat47 = (x_867 * x_871);
    let x_873 : f32 = u_xlat47;
    let x_875 : f32 = u_xlat47;
    u_xlat47 = ((-(x_873) * x_875) + 1.0f);
    let x_878 : f32 = u_xlat47;
    u_xlat47 = max(x_878, 0.0f);
    let x_880 : f32 = u_xlat47;
    let x_881 : f32 = u_xlat47;
    u_xlat47 = (x_880 * x_881);
    let x_883 : f32 = u_xlat47;
    let x_885 : f32 = u_xlat35.x;
    u_xlat47 = (x_883 * x_885);
    let x_887 : u32 = u_xlatu45;
    let x_890 : vec4<f32> = x_837.x_AdditionalLightsSpotDir[bitcast<i32>(x_887)];
    let x_892 : vec3<f32> = u_xlat10;
    u_xlat35.x = dot(vec3<f32>(x_890.x, x_890.y, x_890.z), x_892);
    let x_896 : f32 = u_xlat35.x;
    let x_897 : u32 = u_xlatu45;
    let x_900 : f32 = x_837.x_AdditionalLightsAttenuation[bitcast<i32>(x_897)].z;
    let x_902 : u32 = u_xlatu45;
    let x_905 : f32 = x_837.x_AdditionalLightsAttenuation[bitcast<i32>(x_902)].w;
    u_xlat35.x = ((x_896 * x_900) + x_905);
    let x_909 : f32 = u_xlat35.x;
    u_xlat35.x = clamp(x_909, 0.0f, 1.0f);
    let x_913 : f32 = u_xlat35.x;
    let x_915 : f32 = u_xlat35.x;
    u_xlat35.x = (x_913 * x_915);
    let x_918 : f32 = u_xlat47;
    let x_920 : f32 = u_xlat35.x;
    u_xlat47 = (x_918 * x_920);
    let x_923 : u32 = u_xlatu45;
    u_xlatu35 = (x_923 >> 5u);
    let x_926 : u32 = u_xlatu45;
    u_xlati49 = (1i << bitcast<u32>((bitcast<i32>(x_926) & 31i)));
    let x_932 : i32 = u_xlati49;
    let x_934 : u32 = u_xlatu35;
    let x_937 : f32 = x_392.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_934)].el;
    u_xlati35 = bitcast<i32>((bitcast<u32>(x_932) & bitcast<u32>(x_937)));
    let x_941 : i32 = u_xlati35;
    if ((x_941 != 0i)) {
      let x_951 : u32 = u_xlatu45;
      let x_954 : f32 = x_950.x_AdditionalLightsLightTypes[bitcast<i32>(x_951)].el;
      u_xlati35 = i32(x_954);
      let x_956 : i32 = u_xlati35;
      u_xlati49 = select(1i, 0i, (x_956 != 0i));
      let x_960 : u32 = u_xlatu45;
      u_xlati51 = (bitcast<i32>(x_960) << bitcast<u32>(2i));
      let x_963 : i32 = u_xlati49;
      if ((x_963 != 0i)) {
        let x_968 : vec3<f32> = vs_TEXCOORD7;
        let x_970 : i32 = u_xlati51;
        let x_973 : i32 = u_xlati51;
        let x_977 : vec4<f32> = x_950.x_AdditionalLightsWorldToLights[((x_970 + 1i) / 4i)][((x_973 + 1i) % 4i)];
        let x_979 : vec3<f32> = (vec3<f32>(x_968.y, x_968.y, x_968.y) * vec3<f32>(x_977.x, x_977.y, x_977.w));
        let x_980 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_979.x, x_979.y, x_979.z, x_980.w);
        let x_982 : i32 = u_xlati51;
        let x_984 : i32 = u_xlati51;
        let x_987 : vec4<f32> = x_950.x_AdditionalLightsWorldToLights[(x_982 / 4i)][(x_984 % 4i)];
        let x_989 : vec3<f32> = vs_TEXCOORD7;
        let x_992 : vec4<f32> = u_xlat11;
        let x_994 : vec3<f32> = ((vec3<f32>(x_987.x, x_987.y, x_987.w) * vec3<f32>(x_989.x, x_989.x, x_989.x)) + vec3<f32>(x_992.x, x_992.y, x_992.z));
        let x_995 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_994.x, x_994.y, x_994.z, x_995.w);
        let x_997 : i32 = u_xlati51;
        let x_1000 : i32 = u_xlati51;
        let x_1004 : vec4<f32> = x_950.x_AdditionalLightsWorldToLights[((x_997 + 2i) / 4i)][((x_1000 + 2i) % 4i)];
        let x_1006 : vec3<f32> = vs_TEXCOORD7;
        let x_1009 : vec4<f32> = u_xlat11;
        let x_1011 : vec3<f32> = ((vec3<f32>(x_1004.x, x_1004.y, x_1004.w) * vec3<f32>(x_1006.z, x_1006.z, x_1006.z)) + vec3<f32>(x_1009.x, x_1009.y, x_1009.z));
        let x_1012 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1011.x, x_1011.y, x_1011.z, x_1012.w);
        let x_1014 : vec4<f32> = u_xlat11;
        let x_1016 : i32 = u_xlati51;
        let x_1019 : i32 = u_xlati51;
        let x_1023 : vec4<f32> = x_950.x_AdditionalLightsWorldToLights[((x_1016 + 3i) / 4i)][((x_1019 + 3i) % 4i)];
        let x_1025 : vec3<f32> = (vec3<f32>(x_1014.x, x_1014.y, x_1014.z) + vec3<f32>(x_1023.x, x_1023.y, x_1023.w));
        let x_1026 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1025.x, x_1025.y, x_1025.z, x_1026.w);
        let x_1028 : vec4<f32> = u_xlat11;
        let x_1030 : vec4<f32> = u_xlat11;
        let x_1032 : vec2<f32> = (vec2<f32>(x_1028.x, x_1028.y) / vec2<f32>(x_1030.z, x_1030.z));
        let x_1033 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1032.x, x_1032.y, x_1033.z, x_1033.w);
        let x_1035 : vec4<f32> = u_xlat11;
        let x_1038 : vec2<f32> = ((vec2<f32>(x_1035.x, x_1035.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1039 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1038.x, x_1038.y, x_1039.z, x_1039.w);
        let x_1041 : vec4<f32> = u_xlat11;
        let x_1045 : vec2<f32> = clamp(vec2<f32>(x_1041.x, x_1041.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1046 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1045.x, x_1045.y, x_1046.z, x_1046.w);
        let x_1048 : u32 = u_xlatu45;
        let x_1051 : vec4<f32> = x_950.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1048)];
        let x_1053 : vec4<f32> = u_xlat11;
        let x_1056 : u32 = u_xlatu45;
        let x_1059 : vec4<f32> = x_950.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1056)];
        let x_1061 : vec2<f32> = ((vec2<f32>(x_1051.x, x_1051.y) * vec2<f32>(x_1053.x, x_1053.y)) + vec2<f32>(x_1059.z, x_1059.w));
        let x_1062 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1061.x, x_1061.y, x_1062.z, x_1062.w);
      } else {
        let x_1066 : i32 = u_xlati35;
        u_xlatb35 = (x_1066 == 1i);
        let x_1068 : bool = u_xlatb35;
        u_xlati35 = select(0i, 1i, x_1068);
        let x_1070 : i32 = u_xlati35;
        if ((x_1070 != 0i)) {
          let x_1074 : vec3<f32> = vs_TEXCOORD7;
          let x_1076 : i32 = u_xlati51;
          let x_1079 : i32 = u_xlati51;
          let x_1083 : vec4<f32> = x_950.x_AdditionalLightsWorldToLights[((x_1076 + 1i) / 4i)][((x_1079 + 1i) % 4i)];
          u_xlat35 = (vec2<f32>(x_1074.y, x_1074.y) * vec2<f32>(x_1083.x, x_1083.y));
          let x_1086 : i32 = u_xlati51;
          let x_1088 : i32 = u_xlati51;
          let x_1091 : vec4<f32> = x_950.x_AdditionalLightsWorldToLights[(x_1086 / 4i)][(x_1088 % 4i)];
          let x_1093 : vec3<f32> = vs_TEXCOORD7;
          let x_1096 : vec2<f32> = u_xlat35;
          u_xlat35 = ((vec2<f32>(x_1091.x, x_1091.y) * vec2<f32>(x_1093.x, x_1093.x)) + x_1096);
          let x_1098 : i32 = u_xlati51;
          let x_1101 : i32 = u_xlati51;
          let x_1105 : vec4<f32> = x_950.x_AdditionalLightsWorldToLights[((x_1098 + 2i) / 4i)][((x_1101 + 2i) % 4i)];
          let x_1107 : vec3<f32> = vs_TEXCOORD7;
          let x_1110 : vec2<f32> = u_xlat35;
          u_xlat35 = ((vec2<f32>(x_1105.x, x_1105.y) * vec2<f32>(x_1107.z, x_1107.z)) + x_1110);
          let x_1112 : vec2<f32> = u_xlat35;
          let x_1113 : i32 = u_xlati51;
          let x_1116 : i32 = u_xlati51;
          let x_1120 : vec4<f32> = x_950.x_AdditionalLightsWorldToLights[((x_1113 + 3i) / 4i)][((x_1116 + 3i) % 4i)];
          u_xlat35 = (x_1112 + vec2<f32>(x_1120.x, x_1120.y));
          let x_1123 : vec2<f32> = u_xlat35;
          u_xlat35 = ((x_1123 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1126 : vec2<f32> = u_xlat35;
          u_xlat35 = fract(x_1126);
          let x_1128 : u32 = u_xlatu45;
          let x_1131 : vec4<f32> = x_950.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1128)];
          let x_1133 : vec2<f32> = u_xlat35;
          let x_1135 : u32 = u_xlatu45;
          let x_1138 : vec4<f32> = x_950.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1135)];
          let x_1140 : vec2<f32> = ((vec2<f32>(x_1131.x, x_1131.y) * x_1133) + vec2<f32>(x_1138.z, x_1138.w));
          let x_1141 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1140.x, x_1140.y, x_1141.z, x_1141.w);
        } else {
          let x_1145 : vec3<f32> = vs_TEXCOORD7;
          let x_1147 : i32 = u_xlati51;
          let x_1150 : i32 = u_xlati51;
          let x_1154 : vec4<f32> = x_950.x_AdditionalLightsWorldToLights[((x_1147 + 1i) / 4i)][((x_1150 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1145.y, x_1145.y, x_1145.y, x_1145.y) * x_1154);
          let x_1156 : i32 = u_xlati51;
          let x_1158 : i32 = u_xlati51;
          let x_1161 : vec4<f32> = x_950.x_AdditionalLightsWorldToLights[(x_1156 / 4i)][(x_1158 % 4i)];
          let x_1162 : vec3<f32> = vs_TEXCOORD7;
          let x_1165 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1161 * vec4<f32>(x_1162.x, x_1162.x, x_1162.x, x_1162.x)) + x_1165);
          let x_1167 : i32 = u_xlati51;
          let x_1170 : i32 = u_xlati51;
          let x_1174 : vec4<f32> = x_950.x_AdditionalLightsWorldToLights[((x_1167 + 2i) / 4i)][((x_1170 + 2i) % 4i)];
          let x_1175 : vec3<f32> = vs_TEXCOORD7;
          let x_1178 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1174 * vec4<f32>(x_1175.z, x_1175.z, x_1175.z, x_1175.z)) + x_1178);
          let x_1180 : vec4<f32> = u_xlat12;
          let x_1181 : i32 = u_xlati51;
          let x_1184 : i32 = u_xlati51;
          let x_1188 : vec4<f32> = x_950.x_AdditionalLightsWorldToLights[((x_1181 + 3i) / 4i)][((x_1184 + 3i) % 4i)];
          u_xlat12 = (x_1180 + x_1188);
          let x_1190 : vec4<f32> = u_xlat12;
          let x_1192 : vec4<f32> = u_xlat12;
          let x_1194 : vec3<f32> = (vec3<f32>(x_1190.x, x_1190.y, x_1190.z) / vec3<f32>(x_1192.w, x_1192.w, x_1192.w));
          let x_1195 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1194.x, x_1194.y, x_1194.z, x_1195.w);
          let x_1197 : vec4<f32> = u_xlat12;
          let x_1199 : vec4<f32> = u_xlat12;
          u_xlat35.x = dot(vec3<f32>(x_1197.x, x_1197.y, x_1197.z), vec3<f32>(x_1199.x, x_1199.y, x_1199.z));
          let x_1204 : f32 = u_xlat35.x;
          u_xlat35.x = inverseSqrt(x_1204);
          let x_1207 : vec2<f32> = u_xlat35;
          let x_1209 : vec4<f32> = u_xlat12;
          let x_1211 : vec3<f32> = (vec3<f32>(x_1207.x, x_1207.x, x_1207.x) * vec3<f32>(x_1209.x, x_1209.y, x_1209.z));
          let x_1212 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1211.x, x_1211.y, x_1211.z, x_1212.w);
          let x_1214 : vec4<f32> = u_xlat12;
          u_xlat35.x = dot(abs(vec3<f32>(x_1214.x, x_1214.y, x_1214.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1221 : f32 = u_xlat35.x;
          u_xlat35.x = max(x_1221, 0.000001f);
          let x_1226 : f32 = u_xlat35.x;
          u_xlat35.x = (1.0f / x_1226);
          let x_1230 : vec2<f32> = u_xlat35;
          let x_1232 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1230.x, x_1230.x, x_1230.x) * vec3<f32>(x_1232.z, x_1232.x, x_1232.y));
          let x_1236 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1236);
          let x_1240 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1240, 0.0f, 1.0f);
          let x_1244 : vec3<f32> = u_xlat13;
          let x_1247 : vec4<bool> = (vec4<f32>(x_1244.y, x_1244.z, x_1244.y, x_1244.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1247.x, x_1247.y);
          let x_1251 : bool = u_xlatb39.x;
          if (x_1251) {
            let x_1256 : f32 = u_xlat13.x;
            x_1252 = x_1256;
          } else {
            let x_1259 : f32 = u_xlat13.x;
            x_1252 = -(x_1259);
          }
          let x_1261 : f32 = x_1252;
          u_xlat39.x = x_1261;
          let x_1264 : bool = u_xlatb39.y;
          if (x_1264) {
            let x_1269 : f32 = u_xlat13.x;
            x_1265 = x_1269;
          } else {
            let x_1272 : f32 = u_xlat13.x;
            x_1265 = -(x_1272);
          }
          let x_1274 : f32 = x_1265;
          u_xlat39.y = x_1274;
          let x_1276 : vec4<f32> = u_xlat12;
          let x_1278 : vec2<f32> = u_xlat35;
          let x_1281 : vec2<f32> = u_xlat39;
          u_xlat35 = ((vec2<f32>(x_1276.x, x_1276.y) * vec2<f32>(x_1278.x, x_1278.x)) + x_1281);
          let x_1283 : vec2<f32> = u_xlat35;
          u_xlat35 = ((x_1283 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1286 : vec2<f32> = u_xlat35;
          u_xlat35 = clamp(x_1286, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1290 : u32 = u_xlatu45;
          let x_1293 : vec4<f32> = x_950.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1290)];
          let x_1295 : vec2<f32> = u_xlat35;
          let x_1297 : u32 = u_xlatu45;
          let x_1300 : vec4<f32> = x_950.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1297)];
          let x_1302 : vec2<f32> = ((vec2<f32>(x_1293.x, x_1293.y) * x_1295) + vec2<f32>(x_1300.z, x_1300.w));
          let x_1303 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1302.x, x_1302.y, x_1303.z, x_1303.w);
        }
      }
      let x_1310 : vec4<f32> = u_xlat11;
      let x_1313 : f32 = x_44.x_GlobalMipBias.x;
      let x_1314 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1310.x, x_1310.y), x_1313);
      u_xlat11 = x_1314;
      let x_1316 : bool = u_xlatb7.y;
      if (x_1316) {
        let x_1321 : f32 = u_xlat11.w;
        x_1317 = x_1321;
      } else {
        let x_1324 : f32 = u_xlat11.x;
        x_1317 = x_1324;
      }
      let x_1325 : f32 = x_1317;
      u_xlat35.x = x_1325;
      let x_1328 : bool = u_xlatb7.x;
      if (x_1328) {
        let x_1332 : vec4<f32> = u_xlat11;
        x_1329 = vec3<f32>(x_1332.x, x_1332.y, x_1332.z);
      } else {
        let x_1335 : vec2<f32> = u_xlat35;
        x_1329 = vec3<f32>(x_1335.x, x_1335.x, x_1335.x);
      }
      let x_1337 : vec3<f32> = x_1329;
      let x_1338 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1337.x, x_1337.y, x_1337.z, x_1338.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1344 : vec4<f32> = u_xlat11;
    let x_1346 : u32 = u_xlatu45;
    let x_1349 : vec4<f32> = x_837.x_AdditionalLightsColor[bitcast<i32>(x_1346)];
    let x_1351 : vec3<f32> = (vec3<f32>(x_1344.x, x_1344.y, x_1344.z) * vec3<f32>(x_1349.x, x_1349.y, x_1349.z));
    let x_1352 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1351.x, x_1351.y, x_1351.z, x_1352.w);
    let x_1354 : f32 = u_xlat32;
    let x_1356 : vec4<f32> = u_xlat11;
    let x_1358 : vec3<f32> = (vec3<f32>(x_1354, x_1354, x_1354) * vec3<f32>(x_1356.x, x_1356.y, x_1356.z));
    let x_1359 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1358.x, x_1358.y, x_1358.z, x_1359.w);
    let x_1361 : vec3<f32> = u_xlat2;
    let x_1362 : vec3<f32> = u_xlat10;
    u_xlat45 = dot(x_1361, x_1362);
    let x_1364 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1364, 0.0f, 1.0f);
    let x_1366 : f32 = u_xlat45;
    let x_1367 : f32 = u_xlat47;
    u_xlat45 = (x_1366 * x_1367);
    let x_1369 : f32 = u_xlat45;
    let x_1371 : vec4<f32> = u_xlat11;
    let x_1373 : vec3<f32> = (vec3<f32>(x_1369, x_1369, x_1369) * vec3<f32>(x_1371.x, x_1371.y, x_1371.z));
    let x_1374 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1373.x, x_1373.y, x_1373.z, x_1374.w);
    let x_1376 : vec3<f32> = u_xlat9;
    let x_1377 : f32 = u_xlat48;
    let x_1380 : vec3<f32> = u_xlat15;
    u_xlat9 = ((x_1376 * vec3<f32>(x_1377, x_1377, x_1377)) + x_1380);
    let x_1382 : vec3<f32> = u_xlat9;
    let x_1383 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_1382, x_1383);
    let x_1385 : f32 = u_xlat45;
    u_xlat45 = max(x_1385, 1.17549435e-37f);
    let x_1387 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_1387);
    let x_1389 : f32 = u_xlat45;
    let x_1391 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1389, x_1389, x_1389) * x_1391);
    let x_1393 : vec3<f32> = u_xlat2;
    let x_1394 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_1393, x_1394);
    let x_1396 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1396, 0.0f, 1.0f);
    let x_1398 : vec3<f32> = u_xlat10;
    let x_1399 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1398, x_1399);
    let x_1401 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1401, 0.0f, 1.0f);
    let x_1403 : f32 = u_xlat45;
    let x_1404 : f32 = u_xlat45;
    u_xlat45 = (x_1403 * x_1404);
    let x_1406 : f32 = u_xlat45;
    let x_1408 : f32 = u_xlat8.x;
    u_xlat45 = ((x_1406 * x_1408) + 1.000010014f);
    let x_1411 : f32 = u_xlat47;
    let x_1412 : f32 = u_xlat47;
    u_xlat47 = (x_1411 * x_1412);
    let x_1414 : f32 = u_xlat45;
    let x_1415 : f32 = u_xlat45;
    u_xlat45 = (x_1414 * x_1415);
    let x_1417 : f32 = u_xlat47;
    u_xlat47 = max(x_1417, 0.100000001f);
    let x_1419 : f32 = u_xlat45;
    let x_1420 : f32 = u_xlat47;
    u_xlat45 = (x_1419 * x_1420);
    let x_1422 : f32 = u_xlat18;
    let x_1423 : f32 = u_xlat45;
    u_xlat45 = (x_1422 * x_1423);
    let x_1425 : f32 = u_xlat46;
    let x_1426 : f32 = u_xlat45;
    u_xlat45 = (x_1425 / x_1426);
    let x_1428 : vec4<f32> = u_xlat0;
    let x_1430 : f32 = u_xlat45;
    let x_1433 : vec3<f32> = u_xlat5;
    u_xlat9 = ((vec3<f32>(x_1428.x, x_1428.y, x_1428.z) * vec3<f32>(x_1430, x_1430, x_1430)) + x_1433);
    let x_1435 : vec3<f32> = u_xlat9;
    let x_1436 : vec4<f32> = u_xlat11;
    let x_1439 : vec3<f32> = u_xlat22;
    u_xlat22 = ((x_1435 * vec3<f32>(x_1436.x, x_1436.y, x_1436.z)) + x_1439);

    continuing {
      let x_1441 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1441 + bitcast<u32>(1i));
    }
  }
  let x_1443 : vec3<f32> = u_xlat3;
  let x_1444 : vec3<f32> = u_xlat4;
  let x_1447 : vec4<f32> = u_xlat6;
  let x_1449 : vec3<f32> = ((x_1443 * vec3<f32>(x_1444.x, x_1444.x, x_1444.x)) + vec3<f32>(x_1447.x, x_1447.y, x_1447.z));
  let x_1450 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1449.x, x_1449.y, x_1449.z, x_1450.w);
  let x_1452 : vec3<f32> = u_xlat22;
  let x_1453 : vec4<f32> = u_xlat0;
  let x_1455 : vec3<f32> = (x_1452 + vec3<f32>(x_1453.x, x_1453.y, x_1453.z));
  let x_1456 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1455.x, x_1455.y, x_1455.z, x_1456.w);
  let x_1458 : f32 = u_xlat44;
  let x_1459 : f32 = u_xlat44;
  u_xlat42 = (x_1458 * -(x_1459));
  let x_1462 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1462);
  let x_1464 : vec4<f32> = u_xlat0;
  let x_1468 : vec4<f32> = x_44.unity_FogColor;
  let x_1471 : vec3<f32> = (vec3<f32>(x_1464.x, x_1464.y, x_1464.z) + -(vec3<f32>(x_1468.x, x_1468.y, x_1468.z)));
  let x_1472 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1471.x, x_1471.y, x_1471.z, x_1472.w);
  let x_1476 : f32 = u_xlat42;
  let x_1478 : vec4<f32> = u_xlat0;
  let x_1482 : vec4<f32> = x_44.unity_FogColor;
  let x_1484 : vec3<f32> = ((vec3<f32>(x_1476, x_1476, x_1476) * vec3<f32>(x_1478.x, x_1478.y, x_1478.z)) + vec3<f32>(x_1482.x, x_1482.y, x_1482.z));
  let x_1485 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1484.x, x_1484.y, x_1484.z, x_1485.w);
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

