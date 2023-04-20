diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(8) */
  x_AlphaToMaskAvailable : f32,
  /* @offset(16) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(32) */
  x_MainLightColor : vec4<f32>,
  /* @offset(48) */
  x_AdditionalLightsCount : vec4<f32>,
  /* @offset(64) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(80) */
  x_ProjectionParams : vec4<f32>,
  /* @offset(96) */
  unity_FogParams : vec4<f32>,
  /* @offset(112) */
  unity_FogColor : vec4<f32>,
  /* @offset(128) */
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseMap_ST : vec4<f32>,
  /* @offset(16) */
  x_BaseColor : vec4<f32>,
  /* @offset(32) */
  x_SpecColor : vec4<f32>,
  /* @offset(48) */
  x_EmissionColor : vec4<f32>,
  /* @offset(64) */
  x_Cutoff : f32,
  /* @offset(68) */
  x_Surface : f32,
}

alias Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  /* @offset(0) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(64) */
  unity_WorldToObject : mat4x4<f32>,
  /* @offset(128) */
  unity_LODFade : vec4<f32>,
  /* @offset(144) */
  unity_WorldTransformParams : vec4<f32>,
  /* @offset(160) */
  unity_RenderingLayer : vec4<f32>,
  /* @offset(176) */
  unity_LightData : vec4<f32>,
  /* @offset(192) */
  unity_LightIndices : Arr,
  /* @offset(224) */
  unity_ProbesOcclusion : vec4<f32>,
  /* @offset(240) */
  unity_SpecCube0_HDR : vec4<f32>,
  /* @offset(256) */
  unity_SpecCube1_HDR : vec4<f32>,
  /* @offset(272) */
  unity_SpecCube0_BoxMax : vec4<f32>,
  /* @offset(288) */
  unity_SpecCube0_BoxMin : vec4<f32>,
  /* @offset(304) */
  unity_SpecCube0_ProbePosition : vec4<f32>,
  /* @offset(320) */
  unity_SpecCube1_BoxMax : vec4<f32>,
  /* @offset(336) */
  unity_SpecCube1_BoxMin : vec4<f32>,
  /* @offset(352) */
  unity_SpecCube1_ProbePosition : vec4<f32>,
  /* @offset(368) */
  unity_LightmapST : vec4<f32>,
  /* @offset(384) */
  unity_DynamicLightmapST : vec4<f32>,
  /* @offset(400) */
  unity_SHAr : vec4<f32>,
  /* @offset(416) */
  unity_SHAg : vec4<f32>,
  /* @offset(432) */
  unity_SHAb : vec4<f32>,
  /* @offset(448) */
  unity_SHBr : vec4<f32>,
  /* @offset(464) */
  unity_SHBg : vec4<f32>,
  /* @offset(480) */
  unity_SHBb : vec4<f32>,
  /* @offset(496) */
  unity_SHC : vec4<f32>,
  /* @offset(512) */
  unity_RendererBounds_Min : vec4<f32>,
  /* @offset(528) */
  unity_RendererBounds_Max : vec4<f32>,
  /* @offset(544) */
  unity_MatrixPreviousM : mat4x4<f32>,
  /* @offset(608) */
  unity_MatrixPreviousMI : mat4x4<f32>,
  /* @offset(672) */
  unity_MotionVectorsParams : vec4<f32>,
  /* @offset(688) */
  unity_SpriteColor : vec4<f32>,
  /* @offset(704) */
  unity_SpriteProps : vec4<f32>,
}

alias Arr_1 = array<mat4x4<f32>, 5u>;

alias Arr_2 = array<vec4<f32>, 32u>;

alias Arr_3 = array<mat4x4<f32>, 32u>;

alias Arr_4 = array<vec4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr_1,
  /* @offset(320) */
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  /* @offset(336) */
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  /* @offset(352) */
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  /* @offset(368) */
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  /* @offset(384) */
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  /* @offset(400) */
  x_MainLightShadowOffset0 : vec4<f32>,
  /* @offset(416) */
  x_MainLightShadowOffset1 : vec4<f32>,
  /* @offset(432) */
  x_MainLightShadowParams : vec4<f32>,
  /* @offset(448) */
  x_MainLightShadowmapSize : vec4<f32>,
  /* @offset(464) */
  x_AdditionalShadowOffset0 : vec4<f32>,
  /* @offset(480) */
  x_AdditionalShadowOffset1 : vec4<f32>,
  /* @offset(496) */
  x_AdditionalShadowFadeParams : vec4<f32>,
  /* @offset(512) */
  x_AdditionalShadowmapSize : vec4<f32>,
  /* @offset(528) */
  x_AdditionalShadowParams : Arr_4,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_3,
}

alias Arr_5 = array<vec4<f32>, 32u>;

alias Arr_6 = array<vec4<f32>, 32u>;

alias Arr_7 = array<vec4<f32>, 32u>;

alias Arr_8 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_9 = array<strided_arr, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_4,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_4,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_4,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_4,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_4,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(4) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_42 : UnityPerMaterial;

var<private> u_xlatb0 : bool;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat20 : f32;

var<private> u_xlat30 : f32;

var<private> u_xlatb20 : bool;

var<private> u_xlatb10 : bool;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat4 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_320 : UnityPerDraw;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat32 : f32;

@group(1) @binding(4) var<uniform> x_428 : LightShadows;

var<private> u_xlatb32 : bool;

var<private> u_xlatb33 : bool;

var<private> u_xlat33 : f32;

var<private> u_xlat34 : f32;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlatu33 : u32;

var<private> u_xlatu35 : u32;

var<private> u_xlati36 : i32;

var<private> u_xlat35 : f32;

var<private> u_xlati35 : i32;

@group(1) @binding(1) var<uniform> x_670 : AdditionalLights;

var<private> u_xlat36 : f32;

var<private> u_xlat37 : f32;

var<private> u_xlati37 : i32;

var<private> u_xlatb8 : vec3<bool>;

var<private> u_xlatb9 : vec3<bool>;

var<private> u_xlat18 : vec3<f32>;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat28 : f32;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(3) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb18 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu34 : u32;

var<private> u_xlatb35 : bool;

fn main_1() {
  var x_61 : f32;
  var x_119 : f32;
  var txVec0 : vec3<f32>;
  var x_454 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_806 : f32;
  var x_818 : f32;
  var txVec1 : vec3<f32>;
  var x_1081 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_35);
  u_xlat0 = x_36;
  let x_38 : vec4<f32> = u_xlat0;
  let x_46 : vec4<f32> = x_42.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_38.w, x_38.x, x_38.y, x_38.z) * vec4<f32>(x_46.w, x_46.x, x_46.y, x_46.z));
  let x_54 : f32 = u_xlat1.x;
  let x_57 : f32 = x_42.x_Cutoff;
  u_xlatb0 = (x_54 >= x_57);
  let x_59 : bool = u_xlatb0;
  if (x_59) {
    let x_65 : f32 = u_xlat1.x;
    x_61 = x_65;
  } else {
    x_61 = 0.0f;
  }
  let x_68 : f32 = x_61;
  u_xlat0.x = x_68;
  let x_74 : f32 = u_xlat0.w;
  let x_76 : f32 = x_42.x_BaseColor.w;
  let x_79 : f32 = x_42.x_Cutoff;
  u_xlat10.x = ((x_74 * x_76) + -(x_79));
  let x_85 : f32 = u_xlat1.x;
  u_xlat20 = dpdxCoarse(x_85);
  let x_89 : f32 = u_xlat1.x;
  u_xlat30 = dpdyCoarse(x_89);
  let x_91 : f32 = u_xlat30;
  let x_93 : f32 = u_xlat20;
  u_xlat20 = (abs(x_91) + abs(x_93));
  let x_96 : f32 = u_xlat20;
  u_xlat20 = max(x_96, 0.00009999999747378752f);
  let x_100 : f32 = u_xlat10.x;
  let x_101 : f32 = u_xlat20;
  u_xlat10.x = (x_100 / x_101);
  let x_105 : f32 = u_xlat10.x;
  u_xlat10.x = (x_105 + 0.5f);
  let x_110 : f32 = u_xlat10.x;
  u_xlat10.x = clamp(x_110, 0.0f, 1.0f);
  let x_116 : f32 = x_28.x_AlphaToMaskAvailable;
  u_xlatb20 = !((x_116 == 0.0f));
  let x_118 : bool = u_xlatb20;
  if (x_118) {
    let x_123 : f32 = u_xlat10.x;
    x_119 = x_123;
  } else {
    let x_126 : f32 = u_xlat0.x;
    x_119 = x_126;
  }
  let x_127 : f32 = x_119;
  u_xlat0.x = x_127;
  let x_130 : f32 = u_xlat0.x;
  u_xlat10.x = (x_130 + -0.00009999999747378752f);
  let x_136 : f32 = u_xlat10.x;
  u_xlatb10 = (x_136 < 0.0f);
  let x_138 : bool = u_xlatb10;
  if (((select(0i, 1i, x_138) * -1i) != 0i)) {
    discard;
  }
  let x_152 : vec2<f32> = vs_TEXCOORD0;
  let x_154 : f32 = x_28.x_GlobalMipBias.x;
  let x_155 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_152, x_154);
  let x_156 : vec3<f32> = vec3<f32>(x_155.x, x_155.y, x_155.w);
  let x_157 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_156.x, x_156.y, x_156.z, x_157.w);
  let x_160 : f32 = u_xlat2.x;
  let x_163 : f32 = u_xlat2.z;
  u_xlat2.x = (x_160 * x_163);
  let x_166 : vec4<f32> = u_xlat2;
  let x_173 : vec2<f32> = ((vec2<f32>(x_166.x, x_166.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_174 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_173.x, x_174.y, x_173.y);
  let x_176 : vec3<f32> = u_xlat10;
  let x_178 : vec3<f32> = u_xlat10;
  u_xlat1.x = dot(vec2<f32>(x_176.x, x_176.z), vec2<f32>(x_178.x, x_178.z));
  let x_183 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_183, 1.0f);
  let x_187 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_187) + 1.0f);
  let x_192 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_192);
  let x_196 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_196, 0.0000000000000001f);
  let x_200 : vec3<f32> = u_xlat10;
  let x_204 : vec4<f32> = vs_TEXCOORD4;
  let x_206 : vec3<f32> = (vec3<f32>(x_200.z, x_200.z, x_200.z) * vec3<f32>(x_204.x, x_204.y, x_204.z));
  let x_207 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_206.x, x_206.y, x_206.z, x_207.w);
  let x_209 : vec3<f32> = u_xlat10;
  let x_212 : vec4<f32> = vs_TEXCOORD3;
  let x_215 : vec4<f32> = u_xlat2;
  let x_217 : vec3<f32> = ((vec3<f32>(x_209.x, x_209.x, x_209.x) * vec3<f32>(x_212.x, x_212.y, x_212.z)) + vec3<f32>(x_215.x, x_215.y, x_215.z));
  let x_218 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_217.x, x_217.y, x_217.z, x_218.w);
  let x_220 : vec4<f32> = u_xlat1;
  let x_223 : vec4<f32> = vs_TEXCOORD2;
  let x_226 : vec4<f32> = u_xlat2;
  let x_228 : vec3<f32> = ((vec3<f32>(x_220.x, x_220.x, x_220.x) * vec3<f32>(x_223.x, x_223.y, x_223.z)) + vec3<f32>(x_226.x, x_226.y, x_226.z));
  let x_229 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_228.x, x_228.y, x_228.z, x_229.w);
  let x_231 : vec4<f32> = u_xlat2;
  let x_233 : vec4<f32> = u_xlat2;
  u_xlat10.x = dot(vec3<f32>(x_231.x, x_231.y, x_231.z), vec3<f32>(x_233.x, x_233.y, x_233.z));
  let x_238 : f32 = u_xlat10.x;
  u_xlat10.x = inverseSqrt(x_238);
  let x_241 : vec3<f32> = u_xlat10;
  let x_243 : vec4<f32> = u_xlat2;
  let x_245 : vec3<f32> = (vec3<f32>(x_241.x, x_241.x, x_241.x) * vec3<f32>(x_243.x, x_243.y, x_243.z));
  let x_246 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_245.x, x_245.y, x_245.z, x_246.w);
  let x_251 : f32 = vs_TEXCOORD2.w;
  u_xlat3.x = x_251;
  let x_254 : f32 = vs_TEXCOORD3.w;
  u_xlat3.y = x_254;
  let x_258 : f32 = vs_TEXCOORD4.w;
  u_xlat3.z = x_258;
  let x_260 : vec3<f32> = u_xlat3;
  let x_261 : vec3<f32> = u_xlat3;
  u_xlat10.x = dot(x_260, x_261);
  let x_265 : f32 = u_xlat10.x;
  u_xlat10.x = max(x_265, 0.00006103515625f);
  let x_270 : f32 = u_xlat10.x;
  u_xlat10.x = inverseSqrt(x_270);
  let x_276 : f32 = vs_TEXCOORD1.y;
  let x_279 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat30 = (x_276 * x_279);
  let x_282 : f32 = x_28.unity_MatrixV[0i].z;
  let x_284 : f32 = vs_TEXCOORD1.x;
  let x_286 : f32 = u_xlat30;
  u_xlat30 = ((x_282 * x_284) + x_286);
  let x_290 : f32 = x_28.unity_MatrixV[2i].z;
  let x_292 : f32 = vs_TEXCOORD1.z;
  let x_294 : f32 = u_xlat30;
  u_xlat30 = ((x_290 * x_292) + x_294);
  let x_296 : f32 = u_xlat30;
  let x_299 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat30 = (x_296 + x_299);
  let x_301 : f32 = u_xlat30;
  let x_305 : f32 = x_28.x_ProjectionParams.y;
  u_xlat30 = (-(x_301) + -(x_305));
  let x_308 : f32 = u_xlat30;
  u_xlat30 = max(x_308, 0.0f);
  let x_310 : f32 = u_xlat30;
  let x_313 : f32 = x_28.unity_FogParams.x;
  u_xlat30 = (x_310 * x_313);
  u_xlat2.w = 1.0f;
  let x_323 : vec4<f32> = x_320.unity_SHAr;
  let x_324 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_323, x_324);
  let x_329 : vec4<f32> = x_320.unity_SHAg;
  let x_330 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_329, x_330);
  let x_335 : vec4<f32> = x_320.unity_SHAb;
  let x_336 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_335, x_336);
  let x_340 : vec4<f32> = u_xlat2;
  let x_342 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_340.y, x_340.z, x_340.z, x_340.x) * vec4<f32>(x_342.x, x_342.y, x_342.z, x_342.z));
  let x_348 : vec4<f32> = x_320.unity_SHBr;
  let x_349 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_348, x_349);
  let x_354 : vec4<f32> = x_320.unity_SHBg;
  let x_355 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_354, x_355);
  let x_360 : vec4<f32> = x_320.unity_SHBb;
  let x_361 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_360, x_361);
  let x_365 : f32 = u_xlat2.y;
  let x_367 : f32 = u_xlat2.y;
  u_xlat1.x = (x_365 * x_367);
  let x_371 : f32 = u_xlat2.x;
  let x_373 : f32 = u_xlat2.x;
  let x_376 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_371 * x_373) + -(x_376));
  let x_382 : vec4<f32> = x_320.unity_SHC;
  let x_384 : vec4<f32> = u_xlat1;
  let x_387 : vec3<f32> = u_xlat6;
  let x_388 : vec3<f32> = ((vec3<f32>(x_382.x, x_382.y, x_382.z) * vec3<f32>(x_384.x, x_384.x, x_384.x)) + x_387);
  let x_389 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
  let x_391 : vec3<f32> = u_xlat4;
  let x_392 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_391 + vec3<f32>(x_392.x, x_392.y, x_392.z));
  let x_395 : vec3<f32> = u_xlat4;
  u_xlat4 = max(x_395, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_401 : vec4<f32> = vs_TEXCOORD6;
  let x_402 : vec2<f32> = vec2<f32>(x_401.x, x_401.y);
  let x_404 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_402.x, x_402.y, x_404);
  let x_416 : vec3<f32> = txVec0;
  let x_418 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_416.xy, x_416.z);
  u_xlat1.x = x_418;
  let x_431 : f32 = x_428.x_MainLightShadowParams.x;
  u_xlat32 = (-(x_431) + 1.0f);
  let x_435 : f32 = u_xlat1.x;
  let x_437 : f32 = x_428.x_MainLightShadowParams.x;
  let x_439 : f32 = u_xlat32;
  u_xlat1.x = ((x_435 * x_437) + x_439);
  let x_444 : f32 = vs_TEXCOORD6.z;
  u_xlatb32 = (0.0f >= x_444);
  let x_448 : f32 = vs_TEXCOORD6.z;
  u_xlatb33 = (x_448 >= 1.0f);
  let x_450 : bool = u_xlatb32;
  let x_451 : bool = u_xlatb33;
  u_xlatb32 = (x_450 | x_451);
  let x_453 : bool = u_xlatb32;
  if (x_453) {
    x_454 = 1.0f;
  } else {
    let x_459 : f32 = u_xlat1.x;
    x_454 = x_459;
  }
  let x_460 : f32 = x_454;
  u_xlat1.x = x_460;
  let x_462 : vec3<f32> = vs_TEXCOORD1;
  let x_466 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_468 : vec3<f32> = (x_462 + -(x_466));
  let x_469 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_468.x, x_468.y, x_468.z, x_469.w);
  let x_471 : vec4<f32> = u_xlat5;
  let x_473 : vec4<f32> = u_xlat5;
  u_xlat32 = dot(vec3<f32>(x_471.x, x_471.y, x_471.z), vec3<f32>(x_473.x, x_473.y, x_473.z));
  let x_477 : f32 = u_xlat32;
  let x_479 : f32 = x_428.x_MainLightShadowParams.z;
  let x_482 : f32 = x_428.x_MainLightShadowParams.w;
  u_xlat33 = ((x_477 * x_479) + x_482);
  let x_484 : f32 = u_xlat33;
  u_xlat33 = clamp(x_484, 0.0f, 1.0f);
  let x_488 : f32 = u_xlat1.x;
  u_xlat34 = (-(x_488) + 1.0f);
  let x_491 : f32 = u_xlat33;
  let x_492 : f32 = u_xlat34;
  let x_495 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_491 * x_492) + x_495);
  let x_499 : f32 = u_xlat1.x;
  let x_501 : f32 = x_320.unity_LightData.z;
  u_xlat1.x = (x_499 * x_501);
  let x_504 : vec4<f32> = u_xlat1;
  let x_507 : vec4<f32> = x_28.x_MainLightColor;
  let x_509 : vec3<f32> = (vec3<f32>(x_504.x, x_504.x, x_504.x) * vec3<f32>(x_507.x, x_507.y, x_507.z));
  let x_510 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_509.x, x_509.y, x_509.z, x_510.w);
  let x_512 : vec4<f32> = u_xlat2;
  let x_515 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_512.x, x_512.y, x_512.z), vec3<f32>(x_515.x, x_515.y, x_515.z));
  let x_520 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_520, 0.0f, 1.0f);
  let x_523 : vec4<f32> = u_xlat1;
  let x_525 : vec4<f32> = u_xlat5;
  u_xlat6 = (vec3<f32>(x_523.x, x_523.x, x_523.x) * vec3<f32>(x_525.x, x_525.y, x_525.z));
  let x_529 : f32 = x_42.x_SpecColor.w;
  u_xlat1.x = ((x_529 * 10.0f) + 1.0f);
  let x_535 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_535);
  let x_539 : vec3<f32> = u_xlat3;
  let x_540 : vec3<f32> = u_xlat10;
  let x_544 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat7 = ((x_539 * vec3<f32>(x_540.x, x_540.x, x_540.x)) + vec3<f32>(x_544.x, x_544.y, x_544.z));
  let x_547 : vec3<f32> = u_xlat7;
  let x_548 : vec3<f32> = u_xlat7;
  u_xlat33 = dot(x_547, x_548);
  let x_550 : f32 = u_xlat33;
  u_xlat33 = max(x_550, 1.17549435e-38f);
  let x_553 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_553);
  let x_555 : f32 = u_xlat33;
  let x_557 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_555, x_555, x_555) * x_557);
  let x_559 : vec4<f32> = u_xlat2;
  let x_561 : vec3<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_559.x, x_559.y, x_559.z), x_561);
  let x_563 : f32 = u_xlat33;
  u_xlat33 = clamp(x_563, 0.0f, 1.0f);
  let x_565 : f32 = u_xlat33;
  u_xlat33 = log2(x_565);
  let x_568 : f32 = u_xlat1.x;
  let x_569 : f32 = u_xlat33;
  u_xlat33 = (x_568 * x_569);
  let x_571 : f32 = u_xlat33;
  u_xlat33 = exp2(x_571);
  let x_573 : f32 = u_xlat33;
  let x_576 : vec4<f32> = x_42.x_SpecColor;
  u_xlat7 = (vec3<f32>(x_573, x_573, x_573) * vec3<f32>(x_576.x, x_576.y, x_576.z));
  let x_579 : vec4<f32> = u_xlat5;
  let x_581 : vec3<f32> = u_xlat7;
  let x_582 : vec3<f32> = (vec3<f32>(x_579.x, x_579.y, x_579.z) * x_581);
  let x_583 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_582.x, x_582.y, x_582.z, x_583.w);
  let x_585 : vec3<f32> = u_xlat6;
  let x_586 : vec4<f32> = u_xlat1;
  let x_589 : vec4<f32> = u_xlat5;
  let x_591 : vec3<f32> = ((x_585 * vec3<f32>(x_586.y, x_586.z, x_586.w)) + vec3<f32>(x_589.x, x_589.y, x_589.z));
  let x_592 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_591.x, x_591.y, x_591.z, x_592.w);
  let x_595 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_597 : f32 = x_320.unity_LightData.y;
  u_xlat33 = min(x_595, x_597);
  let x_601 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_601));
  let x_604 : f32 = u_xlat32;
  let x_607 : f32 = x_428.x_AdditionalShadowFadeParams.x;
  let x_610 : f32 = x_428.x_AdditionalShadowFadeParams.y;
  u_xlat32 = ((x_604 * x_607) + x_610);
  let x_612 : f32 = u_xlat32;
  u_xlat32 = clamp(x_612, 0.0f, 1.0f);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_624 : u32 = u_xlatu_loop_1;
    let x_625 : u32 = u_xlatu33;
    if ((x_624 < x_625)) {
    } else {
      break;
    }
    let x_628 : u32 = u_xlatu_loop_1;
    u_xlatu35 = (x_628 >> 2u);
    let x_632 : u32 = u_xlatu_loop_1;
    u_xlati36 = bitcast<i32>((x_632 & 3u));
    let x_636 : u32 = u_xlatu35;
    let x_639 : vec4<f32> = x_320.unity_LightIndices[bitcast<i32>(x_636)];
    let x_649 : i32 = u_xlati36;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_654 : vec4<u32> = indexable[x_649];
    u_xlat35 = dot(x_639, bitcast<vec4<f32>>(x_654));
    let x_658 : f32 = u_xlat35;
    u_xlati35 = i32(x_658);
    let x_660 : vec3<f32> = vs_TEXCOORD1;
    let x_671 : i32 = u_xlati35;
    let x_673 : vec4<f32> = x_670.x_AdditionalLightsPosition[x_671];
    let x_676 : i32 = u_xlati35;
    let x_678 : vec4<f32> = x_670.x_AdditionalLightsPosition[x_676];
    u_xlat7 = ((-(x_660) * vec3<f32>(x_673.w, x_673.w, x_673.w)) + vec3<f32>(x_678.x, x_678.y, x_678.z));
    let x_682 : vec3<f32> = u_xlat7;
    let x_683 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(x_682, x_683);
    let x_685 : f32 = u_xlat36;
    u_xlat36 = max(x_685, 0.00006103515625f);
    let x_688 : f32 = u_xlat36;
    u_xlat37 = inverseSqrt(x_688);
    let x_690 : f32 = u_xlat37;
    let x_692 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_690, x_690, x_690) * x_692);
    let x_694 : f32 = u_xlat36;
    u_xlat37 = (1.0f / x_694);
    let x_696 : f32 = u_xlat36;
    let x_697 : i32 = u_xlati35;
    let x_699 : f32 = x_670.x_AdditionalLightsAttenuation[x_697].x;
    u_xlat36 = (x_696 * x_699);
    let x_701 : f32 = u_xlat36;
    let x_703 : f32 = u_xlat36;
    u_xlat36 = ((-(x_701) * x_703) + 1.0f);
    let x_706 : f32 = u_xlat36;
    u_xlat36 = max(x_706, 0.0f);
    let x_708 : f32 = u_xlat36;
    let x_709 : f32 = u_xlat36;
    u_xlat36 = (x_708 * x_709);
    let x_711 : f32 = u_xlat36;
    let x_712 : f32 = u_xlat37;
    u_xlat36 = (x_711 * x_712);
    let x_714 : i32 = u_xlati35;
    let x_716 : vec4<f32> = x_670.x_AdditionalLightsSpotDir[x_714];
    let x_718 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(vec3<f32>(x_716.x, x_716.y, x_716.z), x_718);
    let x_720 : f32 = u_xlat37;
    let x_721 : i32 = u_xlati35;
    let x_723 : f32 = x_670.x_AdditionalLightsAttenuation[x_721].z;
    let x_725 : i32 = u_xlati35;
    let x_727 : f32 = x_670.x_AdditionalLightsAttenuation[x_725].w;
    u_xlat37 = ((x_720 * x_723) + x_727);
    let x_729 : f32 = u_xlat37;
    u_xlat37 = clamp(x_729, 0.0f, 1.0f);
    let x_731 : f32 = u_xlat37;
    let x_732 : f32 = u_xlat37;
    u_xlat37 = (x_731 * x_732);
    let x_734 : f32 = u_xlat36;
    let x_735 : f32 = u_xlat37;
    u_xlat36 = (x_734 * x_735);
    let x_739 : i32 = u_xlati35;
    let x_741 : f32 = x_428.x_AdditionalShadowParams[x_739].w;
    u_xlati37 = i32(x_741);
    let x_746 : i32 = u_xlati37;
    u_xlatb8.x = (x_746 >= 0i);
    let x_750 : bool = u_xlatb8.x;
    if (x_750) {
      let x_754 : i32 = u_xlati35;
      let x_756 : f32 = x_428.x_AdditionalShadowParams[x_754].z;
      u_xlatb8.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_756, x_756, x_756, x_756))));
      let x_763 : bool = u_xlatb8.x;
      if (x_763) {
        let x_766 : vec3<f32> = u_xlat7;
        let x_769 : vec3<f32> = u_xlat7;
        let x_772 : vec4<bool> = (abs(vec4<f32>(x_766.z, x_766.z, x_766.y, x_766.z)) >= abs(vec4<f32>(x_769.x, x_769.y, x_769.x, x_769.x)));
        u_xlatb8 = vec3<bool>(x_772.x, x_772.y, x_772.z);
        let x_775 : bool = u_xlatb8.y;
        let x_777 : bool = u_xlatb8.x;
        u_xlatb8.x = (x_775 & x_777);
        let x_781 : vec3<f32> = u_xlat7;
        let x_784 : vec4<bool> = (-(vec4<f32>(x_781.z, x_781.y, x_781.x, x_781.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb9 = vec3<bool>(x_784.x, x_784.y, x_784.z);
        let x_788 : bool = u_xlatb9.x;
        u_xlat18.x = select(4.0f, 5.0f, x_788);
        let x_794 : bool = u_xlatb9.y;
        u_xlat18.z = select(2.0f, 3.0f, x_794);
        let x_800 : bool = u_xlatb9.z;
        u_xlat9.x = select(0.0f, 1.0f, x_800);
        let x_805 : bool = u_xlatb8.z;
        if (x_805) {
          let x_810 : f32 = u_xlat18.z;
          x_806 = x_810;
        } else {
          let x_813 : f32 = u_xlat9.x;
          x_806 = x_813;
        }
        let x_814 : f32 = x_806;
        u_xlat28 = x_814;
        let x_817 : bool = u_xlatb8.x;
        if (x_817) {
          let x_822 : f32 = u_xlat18.x;
          x_818 = x_822;
        } else {
          let x_824 : f32 = u_xlat28;
          x_818 = x_824;
        }
        let x_825 : f32 = x_818;
        u_xlat8.x = x_825;
        let x_827 : i32 = u_xlati35;
        let x_829 : f32 = x_428.x_AdditionalShadowParams[x_827].w;
        u_xlat18.x = trunc(x_829);
        let x_833 : f32 = u_xlat8.x;
        let x_835 : f32 = u_xlat18.x;
        u_xlat8.x = (x_833 + x_835);
        let x_839 : f32 = u_xlat8.x;
        u_xlati37 = i32(x_839);
      }
      let x_841 : i32 = u_xlati37;
      u_xlati37 = (x_841 << bitcast<u32>(2i));
      let x_843 : vec3<f32> = vs_TEXCOORD1;
      let x_846 : i32 = u_xlati37;
      let x_849 : i32 = u_xlati37;
      let x_853 : vec4<f32> = x_428.x_AdditionalLightsWorldToShadow[((x_846 + 1i) / 4i)][((x_849 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_843.y, x_843.y, x_843.y, x_843.y) * x_853);
      let x_855 : i32 = u_xlati37;
      let x_857 : i32 = u_xlati37;
      let x_860 : vec4<f32> = x_428.x_AdditionalLightsWorldToShadow[(x_855 / 4i)][(x_857 % 4i)];
      let x_861 : vec3<f32> = vs_TEXCOORD1;
      let x_864 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_860 * vec4<f32>(x_861.x, x_861.x, x_861.x, x_861.x)) + x_864);
      let x_866 : i32 = u_xlati37;
      let x_869 : i32 = u_xlati37;
      let x_873 : vec4<f32> = x_428.x_AdditionalLightsWorldToShadow[((x_866 + 2i) / 4i)][((x_869 + 2i) % 4i)];
      let x_874 : vec3<f32> = vs_TEXCOORD1;
      let x_877 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_873 * vec4<f32>(x_874.z, x_874.z, x_874.z, x_874.z)) + x_877);
      let x_879 : vec4<f32> = u_xlat8;
      let x_880 : i32 = u_xlati37;
      let x_883 : i32 = u_xlati37;
      let x_887 : vec4<f32> = x_428.x_AdditionalLightsWorldToShadow[((x_880 + 3i) / 4i)][((x_883 + 3i) % 4i)];
      u_xlat8 = (x_879 + x_887);
      let x_889 : vec4<f32> = u_xlat8;
      let x_891 : vec4<f32> = u_xlat8;
      let x_893 : vec3<f32> = (vec3<f32>(x_889.x, x_889.y, x_889.z) / vec3<f32>(x_891.w, x_891.w, x_891.w));
      let x_894 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_893.x, x_893.y, x_893.z, x_894.w);
      let x_897 : vec4<f32> = u_xlat8;
      let x_898 : vec2<f32> = vec2<f32>(x_897.x, x_897.y);
      let x_900 : f32 = u_xlat8.z;
      txVec1 = vec3<f32>(x_898.x, x_898.y, x_900);
      let x_908 : vec3<f32> = txVec1;
      let x_910 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_908.xy, x_908.z);
      u_xlat37 = x_910;
      let x_911 : i32 = u_xlati35;
      let x_913 : f32 = x_428.x_AdditionalShadowParams[x_911].x;
      u_xlat8.x = (1.0f + -(x_913));
      let x_917 : f32 = u_xlat37;
      let x_918 : i32 = u_xlati35;
      let x_920 : f32 = x_428.x_AdditionalShadowParams[x_918].x;
      let x_923 : f32 = u_xlat8.x;
      u_xlat37 = ((x_917 * x_920) + x_923);
      let x_926 : f32 = u_xlat8.z;
      u_xlatb8.x = (0.0f >= x_926);
      let x_931 : f32 = u_xlat8.z;
      u_xlatb18 = (x_931 >= 1.0f);
      let x_933 : bool = u_xlatb18;
      let x_935 : bool = u_xlatb8.x;
      u_xlatb8.x = (x_933 | x_935);
      let x_939 : bool = u_xlatb8.x;
      let x_940 : f32 = u_xlat37;
      u_xlat37 = select(x_940, 1.0f, x_939);
    } else {
      u_xlat37 = 1.0f;
    }
    let x_943 : f32 = u_xlat37;
    u_xlat8.x = (-(x_943) + 1.0f);
    let x_947 : f32 = u_xlat32;
    let x_949 : f32 = u_xlat8.x;
    let x_951 : f32 = u_xlat37;
    u_xlat37 = ((x_947 * x_949) + x_951);
    let x_953 : f32 = u_xlat36;
    let x_954 : f32 = u_xlat37;
    u_xlat36 = (x_953 * x_954);
    let x_956 : f32 = u_xlat36;
    let x_958 : i32 = u_xlati35;
    let x_960 : vec4<f32> = x_670.x_AdditionalLightsColor[x_958];
    let x_962 : vec3<f32> = (vec3<f32>(x_956, x_956, x_956) * vec3<f32>(x_960.x, x_960.y, x_960.z));
    let x_963 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_962.x, x_962.y, x_962.z, x_963.w);
    let x_965 : vec4<f32> = u_xlat2;
    let x_967 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(vec3<f32>(x_965.x, x_965.y, x_965.z), x_967);
    let x_969 : f32 = u_xlat35;
    u_xlat35 = clamp(x_969, 0.0f, 1.0f);
    let x_971 : f32 = u_xlat35;
    let x_973 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_971, x_971, x_971) * vec3<f32>(x_973.x, x_973.y, x_973.z));
    let x_976 : vec3<f32> = u_xlat3;
    let x_977 : vec3<f32> = u_xlat10;
    let x_980 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_976 * vec3<f32>(x_977.x, x_977.x, x_977.x)) + x_980);
    let x_982 : vec3<f32> = u_xlat7;
    let x_983 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(x_982, x_983);
    let x_985 : f32 = u_xlat35;
    u_xlat35 = max(x_985, 1.17549435e-38f);
    let x_987 : f32 = u_xlat35;
    u_xlat35 = inverseSqrt(x_987);
    let x_989 : f32 = u_xlat35;
    let x_991 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_989, x_989, x_989) * x_991);
    let x_993 : vec4<f32> = u_xlat2;
    let x_995 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(vec3<f32>(x_993.x, x_993.y, x_993.z), x_995);
    let x_997 : f32 = u_xlat35;
    u_xlat35 = clamp(x_997, 0.0f, 1.0f);
    let x_999 : f32 = u_xlat35;
    u_xlat35 = log2(x_999);
    let x_1002 : f32 = u_xlat1.x;
    let x_1003 : f32 = u_xlat35;
    u_xlat35 = (x_1002 * x_1003);
    let x_1005 : f32 = u_xlat35;
    u_xlat35 = exp2(x_1005);
    let x_1007 : f32 = u_xlat35;
    let x_1010 : vec4<f32> = x_42.x_SpecColor;
    u_xlat7 = (vec3<f32>(x_1007, x_1007, x_1007) * vec3<f32>(x_1010.x, x_1010.y, x_1010.z));
    let x_1013 : vec3<f32> = u_xlat7;
    let x_1014 : vec4<f32> = u_xlat8;
    u_xlat7 = (x_1013 * vec3<f32>(x_1014.x, x_1014.y, x_1014.z));
    let x_1017 : vec3<f32> = u_xlat9;
    let x_1018 : vec4<f32> = u_xlat1;
    let x_1021 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_1017 * vec3<f32>(x_1018.y, x_1018.z, x_1018.w)) + x_1021);
    let x_1023 : vec3<f32> = u_xlat6;
    let x_1024 : vec3<f32> = u_xlat7;
    u_xlat6 = (x_1023 + x_1024);

    continuing {
      let x_1026 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1026 + bitcast<u32>(1i));
    }
  }
  let x_1028 : vec3<f32> = u_xlat4;
  let x_1029 : vec4<f32> = u_xlat1;
  let x_1032 : vec4<f32> = u_xlat5;
  let x_1034 : vec3<f32> = ((x_1028 * vec3<f32>(x_1029.y, x_1029.z, x_1029.w)) + vec3<f32>(x_1032.x, x_1032.y, x_1032.z));
  let x_1035 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1034.x, x_1034.y, x_1034.z, x_1035.w);
  let x_1037 : vec3<f32> = u_xlat6;
  let x_1038 : vec4<f32> = u_xlat1;
  let x_1040 : vec3<f32> = (x_1037 + vec3<f32>(x_1038.x, x_1038.y, x_1038.z));
  let x_1041 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1040.x, x_1040.y, x_1040.z, x_1041.w);
  let x_1043 : f32 = u_xlat30;
  let x_1044 : f32 = u_xlat30;
  u_xlat10.x = (x_1043 * -(x_1044));
  let x_1049 : f32 = u_xlat10.x;
  u_xlat10.x = exp2(x_1049);
  let x_1052 : vec4<f32> = u_xlat1;
  let x_1055 : vec4<f32> = x_28.unity_FogColor;
  let x_1058 : vec3<f32> = (vec3<f32>(x_1052.x, x_1052.y, x_1052.z) + -(vec3<f32>(x_1055.x, x_1055.y, x_1055.z)));
  let x_1059 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1058.x, x_1058.y, x_1058.z, x_1059.w);
  let x_1063 : vec3<f32> = u_xlat10;
  let x_1065 : vec4<f32> = u_xlat1;
  let x_1069 : vec4<f32> = x_28.unity_FogColor;
  let x_1071 : vec3<f32> = ((vec3<f32>(x_1063.x, x_1063.x, x_1063.x) * vec3<f32>(x_1065.x, x_1065.y, x_1065.z)) + vec3<f32>(x_1069.x, x_1069.y, x_1069.z));
  let x_1072 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1071.x, x_1071.y, x_1071.z, x_1072.w);
  let x_1075 : f32 = x_42.x_Surface;
  u_xlatb10 = (x_1075 == 1.0f);
  let x_1077 : bool = u_xlatb10;
  let x_1078 : bool = u_xlatb20;
  u_xlatb10 = (x_1077 | x_1078);
  let x_1080 : bool = u_xlatb10;
  if (x_1080) {
    let x_1085 : f32 = u_xlat0.x;
    x_1081 = x_1085;
  } else {
    x_1081 = 1.0f;
  }
  let x_1087 : f32 = x_1081;
  SV_Target0.w = x_1087;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(5) vs_TEXCOORD6_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


