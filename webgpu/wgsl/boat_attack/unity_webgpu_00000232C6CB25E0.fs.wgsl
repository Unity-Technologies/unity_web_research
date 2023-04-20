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

alias Arr_5 = array<mat4x4<f32>, 32u>;

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
  x_AdditionalLightsWorldToShadow : Arr_5,
}

alias Arr_6 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_7 = array<strided_arr, 32u>;

alias Arr_8 = array<strided_arr, 32u>;

struct LightCookies {
  /* @offset(0) */
  x_MainLightWorldToLight : mat4x4<f32>,
  /* @offset(64) */
  x_AdditionalLightsCookieEnableBits : f32,
  /* @offset(68) */
  x_MainLightCookieTextureFormat : f32,
  /* @offset(72) */
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
  /* @offset(80) */
  x_AdditionalLightsWorldToLights : Arr_5,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_4,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
}

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

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
  x_AdditionalLightsLayerMasks : Arr_8,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_42 : UnityPerMaterial;

var<private> u_xlatb0 : bool;

var<private> u_xlat12 : vec3<f32>;

var<private> u_xlat24 : f32;

var<private> u_xlat36 : f32;

var<private> u_xlatb24 : bool;

var<private> u_xlatb12 : bool;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BumpMap : sampler;

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

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat38 : f32;

@group(1) @binding(4) var<uniform> x_428 : LightShadows;

var<private> u_xlatb38 : bool;

var<private> u_xlatb39 : bool;

var<private> u_xlat39 : f32;

var<private> u_xlat40 : f32;

@group(1) @binding(5) var<uniform> x_503 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb6 : vec2<bool>;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlatu39 : u32;

var<private> u_xlatu41 : u32;

var<private> u_xlati30 : i32;

var<private> u_xlat41 : f32;

var<private> u_xlati41 : i32;

var<private> u_xlat8 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_810 : AdditionalLights;

var<private> u_xlat30 : f32;

var<private> u_xlat42 : f32;

var<private> u_xlati42 : i32;

var<private> u_xlatb43 : bool;

var<private> u_xlatb9 : vec4<bool>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat43 : f32;

@group(0) @binding(3) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb44 : bool;

var<private> u_xlati43 : i32;

var<private> u_xlati44 : i32;

var<private> u_xlati9 : i32;

var<private> u_xlat21 : vec3<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec3<f32>;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu40 : u32;

var<private> u_xlatb41 : bool;

fn main_1() {
  var x_61 : f32;
  var x_119 : f32;
  var txVec0 : vec3<f32>;
  var x_454 : f32;
  var x_588 : f32;
  var x_599 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_942 : f32;
  var x_952 : f32;
  var txVec1 : vec3<f32>;
  var x_1382 : f32;
  var x_1395 : f32;
  var x_1453 : f32;
  var x_1464 : vec3<f32>;
  var x_1617 : f32;
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
  u_xlat12.x = ((x_74 * x_76) + -(x_79));
  let x_85 : f32 = u_xlat1.x;
  u_xlat24 = dpdxCoarse(x_85);
  let x_89 : f32 = u_xlat1.x;
  u_xlat36 = dpdyCoarse(x_89);
  let x_91 : f32 = u_xlat36;
  let x_93 : f32 = u_xlat24;
  u_xlat24 = (abs(x_91) + abs(x_93));
  let x_96 : f32 = u_xlat24;
  u_xlat24 = max(x_96, 0.00009999999747378752f);
  let x_100 : f32 = u_xlat12.x;
  let x_101 : f32 = u_xlat24;
  u_xlat12.x = (x_100 / x_101);
  let x_105 : f32 = u_xlat12.x;
  u_xlat12.x = (x_105 + 0.5f);
  let x_110 : f32 = u_xlat12.x;
  u_xlat12.x = clamp(x_110, 0.0f, 1.0f);
  let x_116 : f32 = x_28.x_AlphaToMaskAvailable;
  u_xlatb24 = !((x_116 == 0.0f));
  let x_118 : bool = u_xlatb24;
  if (x_118) {
    let x_123 : f32 = u_xlat12.x;
    x_119 = x_123;
  } else {
    let x_126 : f32 = u_xlat0.x;
    x_119 = x_126;
  }
  let x_127 : f32 = x_119;
  u_xlat0.x = x_127;
  let x_130 : f32 = u_xlat0.x;
  u_xlat12.x = (x_130 + -0.00009999999747378752f);
  let x_136 : f32 = u_xlat12.x;
  u_xlatb12 = (x_136 < 0.0f);
  let x_138 : bool = u_xlatb12;
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
  let x_174 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_173.x, x_174.y, x_173.y);
  let x_176 : vec3<f32> = u_xlat12;
  let x_178 : vec3<f32> = u_xlat12;
  u_xlat1.x = dot(vec2<f32>(x_176.x, x_176.z), vec2<f32>(x_178.x, x_178.z));
  let x_183 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_183, 1.0f);
  let x_187 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_187) + 1.0f);
  let x_192 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_192);
  let x_196 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_196, 0.0000000000000001f);
  let x_200 : vec3<f32> = u_xlat12;
  let x_204 : vec4<f32> = vs_TEXCOORD4;
  let x_206 : vec3<f32> = (vec3<f32>(x_200.z, x_200.z, x_200.z) * vec3<f32>(x_204.x, x_204.y, x_204.z));
  let x_207 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_206.x, x_206.y, x_206.z, x_207.w);
  let x_209 : vec3<f32> = u_xlat12;
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
  u_xlat12.x = dot(vec3<f32>(x_231.x, x_231.y, x_231.z), vec3<f32>(x_233.x, x_233.y, x_233.z));
  let x_238 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_238);
  let x_241 : vec3<f32> = u_xlat12;
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
  u_xlat12.x = dot(x_260, x_261);
  let x_265 : f32 = u_xlat12.x;
  u_xlat12.x = max(x_265, 0.00006103515625f);
  let x_270 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_270);
  let x_276 : f32 = vs_TEXCOORD1.y;
  let x_279 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat36 = (x_276 * x_279);
  let x_282 : f32 = x_28.unity_MatrixV[0i].z;
  let x_284 : f32 = vs_TEXCOORD1.x;
  let x_286 : f32 = u_xlat36;
  u_xlat36 = ((x_282 * x_284) + x_286);
  let x_290 : f32 = x_28.unity_MatrixV[2i].z;
  let x_292 : f32 = vs_TEXCOORD1.z;
  let x_294 : f32 = u_xlat36;
  u_xlat36 = ((x_290 * x_292) + x_294);
  let x_296 : f32 = u_xlat36;
  let x_299 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat36 = (x_296 + x_299);
  let x_301 : f32 = u_xlat36;
  let x_305 : f32 = x_28.x_ProjectionParams.y;
  u_xlat36 = (-(x_301) + -(x_305));
  let x_308 : f32 = u_xlat36;
  u_xlat36 = max(x_308, 0.0f);
  let x_310 : f32 = u_xlat36;
  let x_313 : f32 = x_28.unity_FogParams.x;
  u_xlat36 = (x_310 * x_313);
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
  u_xlat38 = (-(x_431) + 1.0f);
  let x_435 : f32 = u_xlat1.x;
  let x_437 : f32 = x_428.x_MainLightShadowParams.x;
  let x_439 : f32 = u_xlat38;
  u_xlat1.x = ((x_435 * x_437) + x_439);
  let x_444 : f32 = vs_TEXCOORD6.z;
  u_xlatb38 = (0.0f >= x_444);
  let x_448 : f32 = vs_TEXCOORD6.z;
  u_xlatb39 = (x_448 >= 1.0f);
  let x_450 : bool = u_xlatb38;
  let x_451 : bool = u_xlatb39;
  u_xlatb38 = (x_450 | x_451);
  let x_453 : bool = u_xlatb38;
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
  u_xlat38 = dot(vec3<f32>(x_471.x, x_471.y, x_471.z), vec3<f32>(x_473.x, x_473.y, x_473.z));
  let x_477 : f32 = u_xlat38;
  let x_479 : f32 = x_428.x_MainLightShadowParams.z;
  let x_482 : f32 = x_428.x_MainLightShadowParams.w;
  u_xlat39 = ((x_477 * x_479) + x_482);
  let x_484 : f32 = u_xlat39;
  u_xlat39 = clamp(x_484, 0.0f, 1.0f);
  let x_488 : f32 = u_xlat1.x;
  u_xlat40 = (-(x_488) + 1.0f);
  let x_491 : f32 = u_xlat39;
  let x_492 : f32 = u_xlat40;
  let x_495 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_491 * x_492) + x_495);
  let x_505 : f32 = x_503.x_MainLightCookieTextureFormat;
  u_xlatb39 = !((x_505 == -1.0f));
  let x_507 : bool = u_xlatb39;
  if (x_507) {
    let x_510 : vec3<f32> = vs_TEXCOORD1;
    let x_513 : vec4<f32> = x_503.x_MainLightWorldToLight[1i];
    let x_515 : vec2<f32> = (vec2<f32>(x_510.y, x_510.y) * vec2<f32>(x_513.x, x_513.y));
    let x_516 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_515.x, x_515.y, x_516.z, x_516.w);
    let x_519 : vec4<f32> = x_503.x_MainLightWorldToLight[0i];
    let x_521 : vec3<f32> = vs_TEXCOORD1;
    let x_524 : vec4<f32> = u_xlat5;
    let x_526 : vec2<f32> = ((vec2<f32>(x_519.x, x_519.y) * vec2<f32>(x_521.x, x_521.x)) + vec2<f32>(x_524.x, x_524.y));
    let x_527 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_526.x, x_526.y, x_527.z, x_527.w);
    let x_530 : vec4<f32> = x_503.x_MainLightWorldToLight[2i];
    let x_532 : vec3<f32> = vs_TEXCOORD1;
    let x_535 : vec4<f32> = u_xlat5;
    let x_537 : vec2<f32> = ((vec2<f32>(x_530.x, x_530.y) * vec2<f32>(x_532.z, x_532.z)) + vec2<f32>(x_535.x, x_535.y));
    let x_538 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_537.x, x_537.y, x_538.z, x_538.w);
    let x_540 : vec4<f32> = u_xlat5;
    let x_543 : vec4<f32> = x_503.x_MainLightWorldToLight[3i];
    let x_545 : vec2<f32> = (vec2<f32>(x_540.x, x_540.y) + vec2<f32>(x_543.x, x_543.y));
    let x_546 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_545.x, x_545.y, x_546.z, x_546.w);
    let x_548 : vec4<f32> = u_xlat5;
    let x_552 : vec2<f32> = ((vec2<f32>(x_548.x, x_548.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_553 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_552.x, x_552.y, x_553.z, x_553.w);
    let x_560 : vec4<f32> = u_xlat5;
    let x_563 : f32 = x_28.x_GlobalMipBias.x;
    let x_564 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_560.x, x_560.y), x_563);
    u_xlat5 = x_564;
    let x_569 : f32 = x_503.x_MainLightCookieTextureFormat;
    let x_571 : f32 = x_503.x_MainLightCookieTextureFormat;
    let x_573 : f32 = x_503.x_MainLightCookieTextureFormat;
    let x_575 : f32 = x_503.x_MainLightCookieTextureFormat;
    let x_576 : vec4<f32> = vec4<f32>(x_569, x_571, x_573, x_575);
    let x_584 : vec4<bool> = (vec4<f32>(x_576.x, x_576.y, x_576.z, x_576.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb6 = vec2<bool>(x_584.x, x_584.y);
    let x_587 : bool = u_xlatb6.y;
    if (x_587) {
      let x_592 : f32 = u_xlat5.w;
      x_588 = x_592;
    } else {
      let x_595 : f32 = u_xlat5.x;
      x_588 = x_595;
    }
    let x_596 : f32 = x_588;
    u_xlat39 = x_596;
    let x_598 : bool = u_xlatb6.x;
    if (x_598) {
      let x_602 : vec4<f32> = u_xlat5;
      x_599 = vec3<f32>(x_602.x, x_602.y, x_602.z);
    } else {
      let x_605 : f32 = u_xlat39;
      x_599 = vec3<f32>(x_605, x_605, x_605);
    }
    let x_607 : vec3<f32> = x_599;
    let x_608 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_607.x, x_607.y, x_607.z, x_608.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_614 : vec4<f32> = u_xlat5;
  let x_617 : vec4<f32> = x_28.x_MainLightColor;
  let x_619 : vec3<f32> = (vec3<f32>(x_614.x, x_614.y, x_614.z) * vec3<f32>(x_617.x, x_617.y, x_617.z));
  let x_620 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_619.x, x_619.y, x_619.z, x_620.w);
  let x_623 : f32 = u_xlat1.x;
  let x_625 : f32 = x_320.unity_LightData.z;
  u_xlat1.x = (x_623 * x_625);
  let x_628 : vec4<f32> = u_xlat1;
  let x_630 : vec4<f32> = u_xlat5;
  let x_632 : vec3<f32> = (vec3<f32>(x_628.x, x_628.x, x_628.x) * vec3<f32>(x_630.x, x_630.y, x_630.z));
  let x_633 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_632.x, x_632.y, x_632.z, x_633.w);
  let x_635 : vec4<f32> = u_xlat2;
  let x_638 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_635.x, x_635.y, x_635.z), vec3<f32>(x_638.x, x_638.y, x_638.z));
  let x_643 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_643, 0.0f, 1.0f);
  let x_646 : vec4<f32> = u_xlat1;
  let x_648 : vec4<f32> = u_xlat5;
  u_xlat6 = (vec3<f32>(x_646.x, x_646.x, x_646.x) * vec3<f32>(x_648.x, x_648.y, x_648.z));
  let x_652 : f32 = x_42.x_SpecColor.w;
  u_xlat1.x = ((x_652 * 10.0f) + 1.0f);
  let x_658 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_658);
  let x_662 : vec3<f32> = u_xlat3;
  let x_663 : vec3<f32> = u_xlat12;
  let x_667 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat7 = ((x_662 * vec3<f32>(x_663.x, x_663.x, x_663.x)) + vec3<f32>(x_667.x, x_667.y, x_667.z));
  let x_670 : vec3<f32> = u_xlat7;
  let x_671 : vec3<f32> = u_xlat7;
  u_xlat39 = dot(x_670, x_671);
  let x_673 : f32 = u_xlat39;
  u_xlat39 = max(x_673, 1.17549435e-38f);
  let x_676 : f32 = u_xlat39;
  u_xlat39 = inverseSqrt(x_676);
  let x_678 : f32 = u_xlat39;
  let x_680 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_678, x_678, x_678) * x_680);
  let x_682 : vec4<f32> = u_xlat2;
  let x_684 : vec3<f32> = u_xlat7;
  u_xlat39 = dot(vec3<f32>(x_682.x, x_682.y, x_682.z), x_684);
  let x_686 : f32 = u_xlat39;
  u_xlat39 = clamp(x_686, 0.0f, 1.0f);
  let x_688 : f32 = u_xlat39;
  u_xlat39 = log2(x_688);
  let x_691 : f32 = u_xlat1.x;
  let x_692 : f32 = u_xlat39;
  u_xlat39 = (x_691 * x_692);
  let x_694 : f32 = u_xlat39;
  u_xlat39 = exp2(x_694);
  let x_696 : f32 = u_xlat39;
  let x_699 : vec4<f32> = x_42.x_SpecColor;
  u_xlat7 = (vec3<f32>(x_696, x_696, x_696) * vec3<f32>(x_699.x, x_699.y, x_699.z));
  let x_702 : vec4<f32> = u_xlat5;
  let x_704 : vec3<f32> = u_xlat7;
  let x_705 : vec3<f32> = (vec3<f32>(x_702.x, x_702.y, x_702.z) * x_704);
  let x_706 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_705.x, x_705.y, x_705.z, x_706.w);
  let x_708 : vec3<f32> = u_xlat6;
  let x_709 : vec4<f32> = u_xlat1;
  let x_712 : vec4<f32> = u_xlat5;
  let x_714 : vec3<f32> = ((x_708 * vec3<f32>(x_709.y, x_709.z, x_709.w)) + vec3<f32>(x_712.x, x_712.y, x_712.z));
  let x_715 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_714.x, x_714.y, x_714.z, x_715.w);
  let x_718 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_720 : f32 = x_320.unity_LightData.y;
  u_xlat39 = min(x_718, x_720);
  let x_724 : f32 = u_xlat39;
  u_xlatu39 = bitcast<u32>(i32(x_724));
  let x_727 : f32 = u_xlat38;
  let x_730 : f32 = x_428.x_AdditionalShadowFadeParams.x;
  let x_733 : f32 = x_428.x_AdditionalShadowFadeParams.y;
  u_xlat38 = ((x_727 * x_730) + x_733);
  let x_735 : f32 = u_xlat38;
  u_xlat38 = clamp(x_735, 0.0f, 1.0f);
  let x_738 : f32 = x_503.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_740 : f32 = x_503.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_742 : f32 = x_503.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_744 : f32 = x_503.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_745 : vec4<f32> = vec4<f32>(x_738, x_740, x_742, x_744);
  let x_751 : vec4<bool> = (vec4<f32>(x_745.x, x_745.y, x_745.z, x_745.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_751.x, x_751.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_763 : u32 = u_xlatu_loop_1;
    let x_764 : u32 = u_xlatu39;
    if ((x_763 < x_764)) {
    } else {
      break;
    }
    let x_767 : u32 = u_xlatu_loop_1;
    u_xlatu41 = (x_767 >> 2u);
    let x_771 : u32 = u_xlatu_loop_1;
    u_xlati30 = bitcast<i32>((x_771 & 3u));
    let x_775 : u32 = u_xlatu41;
    let x_778 : vec4<f32> = x_320.unity_LightIndices[bitcast<i32>(x_775)];
    let x_788 : i32 = u_xlati30;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_793 : vec4<u32> = indexable[x_788];
    u_xlat41 = dot(x_778, bitcast<vec4<f32>>(x_793));
    let x_797 : f32 = u_xlat41;
    u_xlati41 = i32(x_797);
    let x_800 : vec3<f32> = vs_TEXCOORD1;
    let x_811 : i32 = u_xlati41;
    let x_813 : vec4<f32> = x_810.x_AdditionalLightsPosition[x_811];
    let x_816 : i32 = u_xlati41;
    let x_818 : vec4<f32> = x_810.x_AdditionalLightsPosition[x_816];
    u_xlat8 = ((-(x_800) * vec3<f32>(x_813.w, x_813.w, x_813.w)) + vec3<f32>(x_818.x, x_818.y, x_818.z));
    let x_822 : vec3<f32> = u_xlat8;
    let x_823 : vec3<f32> = u_xlat8;
    u_xlat30 = dot(x_822, x_823);
    let x_825 : f32 = u_xlat30;
    u_xlat30 = max(x_825, 0.00006103515625f);
    let x_828 : f32 = u_xlat30;
    u_xlat42 = inverseSqrt(x_828);
    let x_830 : f32 = u_xlat42;
    let x_832 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_830, x_830, x_830) * x_832);
    let x_834 : f32 = u_xlat30;
    u_xlat42 = (1.0f / x_834);
    let x_836 : f32 = u_xlat30;
    let x_837 : i32 = u_xlati41;
    let x_839 : f32 = x_810.x_AdditionalLightsAttenuation[x_837].x;
    u_xlat30 = (x_836 * x_839);
    let x_841 : f32 = u_xlat30;
    let x_843 : f32 = u_xlat30;
    u_xlat30 = ((-(x_841) * x_843) + 1.0f);
    let x_846 : f32 = u_xlat30;
    u_xlat30 = max(x_846, 0.0f);
    let x_848 : f32 = u_xlat30;
    let x_849 : f32 = u_xlat30;
    u_xlat30 = (x_848 * x_849);
    let x_851 : f32 = u_xlat30;
    let x_852 : f32 = u_xlat42;
    u_xlat30 = (x_851 * x_852);
    let x_854 : i32 = u_xlati41;
    let x_856 : vec4<f32> = x_810.x_AdditionalLightsSpotDir[x_854];
    let x_858 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(vec3<f32>(x_856.x, x_856.y, x_856.z), x_858);
    let x_860 : f32 = u_xlat42;
    let x_861 : i32 = u_xlati41;
    let x_863 : f32 = x_810.x_AdditionalLightsAttenuation[x_861].z;
    let x_865 : i32 = u_xlati41;
    let x_867 : f32 = x_810.x_AdditionalLightsAttenuation[x_865].w;
    u_xlat42 = ((x_860 * x_863) + x_867);
    let x_869 : f32 = u_xlat42;
    u_xlat42 = clamp(x_869, 0.0f, 1.0f);
    let x_871 : f32 = u_xlat42;
    let x_872 : f32 = u_xlat42;
    u_xlat42 = (x_871 * x_872);
    let x_874 : f32 = u_xlat42;
    let x_875 : f32 = u_xlat30;
    u_xlat30 = (x_874 * x_875);
    let x_879 : i32 = u_xlati41;
    let x_881 : f32 = x_428.x_AdditionalShadowParams[x_879].w;
    u_xlati42 = i32(x_881);
    let x_884 : i32 = u_xlati42;
    u_xlatb43 = (x_884 >= 0i);
    let x_886 : bool = u_xlatb43;
    if (x_886) {
      let x_890 : i32 = u_xlati41;
      let x_892 : f32 = x_428.x_AdditionalShadowParams[x_890].z;
      u_xlatb43 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_892, x_892, x_892, x_892))));
      let x_896 : bool = u_xlatb43;
      if (x_896) {
        let x_901 : vec3<f32> = u_xlat8;
        let x_904 : vec3<f32> = u_xlat8;
        let x_907 : vec4<bool> = (abs(vec4<f32>(x_901.z, x_901.z, x_901.y, x_901.z)) >= abs(vec4<f32>(x_904.x, x_904.y, x_904.x, x_904.x)));
        let x_909 : vec3<bool> = vec3<bool>(x_907.x, x_907.y, x_907.z);
        let x_910 : vec4<bool> = u_xlatb9;
        u_xlatb9 = vec4<bool>(x_909.x, x_909.y, x_909.z, x_910.w);
        let x_913 : bool = u_xlatb9.y;
        let x_915 : bool = u_xlatb9.x;
        u_xlatb43 = (x_913 & x_915);
        let x_917 : vec3<f32> = u_xlat8;
        let x_920 : vec4<bool> = (-(vec4<f32>(x_917.z, x_917.y, x_917.z, x_917.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_921 : vec3<bool> = vec3<bool>(x_920.x, x_920.y, x_920.w);
        let x_922 : vec4<bool> = u_xlatb9;
        u_xlatb9 = vec4<bool>(x_921.x, x_921.y, x_922.z, x_921.z);
        let x_926 : bool = u_xlatb9.x;
        u_xlat9.x = select(4.0f, 5.0f, x_926);
        let x_932 : bool = u_xlatb9.y;
        u_xlat9.y = select(2.0f, 3.0f, x_932);
        let x_938 : bool = u_xlatb9.w;
        u_xlat44 = select(0.0f, 1.0f, x_938);
        let x_941 : bool = u_xlatb9.z;
        if (x_941) {
          let x_946 : f32 = u_xlat9.y;
          x_942 = x_946;
        } else {
          let x_948 : f32 = u_xlat44;
          x_942 = x_948;
        }
        let x_949 : f32 = x_942;
        u_xlat44 = x_949;
        let x_951 : bool = u_xlatb43;
        if (x_951) {
          let x_956 : f32 = u_xlat9.x;
          x_952 = x_956;
        } else {
          let x_958 : f32 = u_xlat44;
          x_952 = x_958;
        }
        let x_959 : f32 = x_952;
        u_xlat43 = x_959;
        let x_960 : i32 = u_xlati41;
        let x_962 : f32 = x_428.x_AdditionalShadowParams[x_960].w;
        u_xlat44 = trunc(x_962);
        let x_964 : f32 = u_xlat43;
        let x_965 : f32 = u_xlat44;
        u_xlat43 = (x_964 + x_965);
        let x_967 : f32 = u_xlat43;
        u_xlati42 = i32(x_967);
      }
      let x_969 : i32 = u_xlati42;
      u_xlati42 = (x_969 << bitcast<u32>(2i));
      let x_971 : vec3<f32> = vs_TEXCOORD1;
      let x_974 : i32 = u_xlati42;
      let x_977 : i32 = u_xlati42;
      let x_981 : vec4<f32> = x_428.x_AdditionalLightsWorldToShadow[((x_974 + 1i) / 4i)][((x_977 + 1i) % 4i)];
      u_xlat9 = (vec4<f32>(x_971.y, x_971.y, x_971.y, x_971.y) * x_981);
      let x_983 : i32 = u_xlati42;
      let x_985 : i32 = u_xlati42;
      let x_988 : vec4<f32> = x_428.x_AdditionalLightsWorldToShadow[(x_983 / 4i)][(x_985 % 4i)];
      let x_989 : vec3<f32> = vs_TEXCOORD1;
      let x_992 : vec4<f32> = u_xlat9;
      u_xlat9 = ((x_988 * vec4<f32>(x_989.x, x_989.x, x_989.x, x_989.x)) + x_992);
      let x_994 : i32 = u_xlati42;
      let x_997 : i32 = u_xlati42;
      let x_1001 : vec4<f32> = x_428.x_AdditionalLightsWorldToShadow[((x_994 + 2i) / 4i)][((x_997 + 2i) % 4i)];
      let x_1002 : vec3<f32> = vs_TEXCOORD1;
      let x_1005 : vec4<f32> = u_xlat9;
      u_xlat9 = ((x_1001 * vec4<f32>(x_1002.z, x_1002.z, x_1002.z, x_1002.z)) + x_1005);
      let x_1007 : vec4<f32> = u_xlat9;
      let x_1008 : i32 = u_xlati42;
      let x_1011 : i32 = u_xlati42;
      let x_1015 : vec4<f32> = x_428.x_AdditionalLightsWorldToShadow[((x_1008 + 3i) / 4i)][((x_1011 + 3i) % 4i)];
      u_xlat9 = (x_1007 + x_1015);
      let x_1017 : vec4<f32> = u_xlat9;
      let x_1019 : vec4<f32> = u_xlat9;
      let x_1021 : vec3<f32> = (vec3<f32>(x_1017.x, x_1017.y, x_1017.z) / vec3<f32>(x_1019.w, x_1019.w, x_1019.w));
      let x_1022 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_1021.x, x_1021.y, x_1021.z, x_1022.w);
      let x_1025 : vec4<f32> = u_xlat9;
      let x_1026 : vec2<f32> = vec2<f32>(x_1025.x, x_1025.y);
      let x_1028 : f32 = u_xlat9.z;
      txVec1 = vec3<f32>(x_1026.x, x_1026.y, x_1028);
      let x_1036 : vec3<f32> = txVec1;
      let x_1038 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1036.xy, x_1036.z);
      u_xlat42 = x_1038;
      let x_1039 : i32 = u_xlati41;
      let x_1041 : f32 = x_428.x_AdditionalShadowParams[x_1039].x;
      u_xlat43 = (1.0f + -(x_1041));
      let x_1044 : f32 = u_xlat42;
      let x_1045 : i32 = u_xlati41;
      let x_1047 : f32 = x_428.x_AdditionalShadowParams[x_1045].x;
      let x_1049 : f32 = u_xlat43;
      u_xlat42 = ((x_1044 * x_1047) + x_1049);
      let x_1052 : f32 = u_xlat9.z;
      u_xlatb43 = (0.0f >= x_1052);
      let x_1056 : f32 = u_xlat9.z;
      u_xlatb44 = (x_1056 >= 1.0f);
      let x_1058 : bool = u_xlatb43;
      let x_1059 : bool = u_xlatb44;
      u_xlatb43 = (x_1058 | x_1059);
      let x_1061 : bool = u_xlatb43;
      let x_1062 : f32 = u_xlat42;
      u_xlat42 = select(x_1062, 1.0f, x_1061);
    } else {
      u_xlat42 = 1.0f;
    }
    let x_1065 : f32 = u_xlat42;
    u_xlat43 = (-(x_1065) + 1.0f);
    let x_1068 : f32 = u_xlat38;
    let x_1069 : f32 = u_xlat43;
    let x_1071 : f32 = u_xlat42;
    u_xlat42 = ((x_1068 * x_1069) + x_1071);
    let x_1074 : i32 = u_xlati41;
    u_xlati43 = (1i << bitcast<u32>((x_1074 & 31i)));
    let x_1078 : i32 = u_xlati43;
    let x_1081 : f32 = x_503.x_AdditionalLightsCookieEnableBits;
    u_xlati43 = bitcast<i32>((bitcast<u32>(x_1078) & bitcast<u32>(x_1081)));
    let x_1085 : i32 = u_xlati43;
    if ((x_1085 != 0i)) {
      let x_1089 : i32 = u_xlati41;
      let x_1091 : f32 = x_503.x_AdditionalLightsLightTypes[x_1089].el;
      u_xlati43 = i32(x_1091);
      let x_1094 : i32 = u_xlati43;
      u_xlati44 = select(1i, 0i, (x_1094 != 0i));
      let x_1098 : i32 = u_xlati41;
      u_xlati9 = (x_1098 << bitcast<u32>(2i));
      let x_1100 : i32 = u_xlati44;
      if ((x_1100 != 0i)) {
        let x_1105 : vec3<f32> = vs_TEXCOORD1;
        let x_1107 : i32 = u_xlati9;
        let x_1110 : i32 = u_xlati9;
        let x_1114 : vec4<f32> = x_503.x_AdditionalLightsWorldToLights[((x_1107 + 1i) / 4i)][((x_1110 + 1i) % 4i)];
        u_xlat21 = (vec3<f32>(x_1105.y, x_1105.y, x_1105.y) * vec3<f32>(x_1114.x, x_1114.y, x_1114.w));
        let x_1117 : i32 = u_xlati9;
        let x_1119 : i32 = u_xlati9;
        let x_1122 : vec4<f32> = x_503.x_AdditionalLightsWorldToLights[(x_1117 / 4i)][(x_1119 % 4i)];
        let x_1124 : vec3<f32> = vs_TEXCOORD1;
        let x_1127 : vec3<f32> = u_xlat21;
        u_xlat21 = ((vec3<f32>(x_1122.x, x_1122.y, x_1122.w) * vec3<f32>(x_1124.x, x_1124.x, x_1124.x)) + x_1127);
        let x_1129 : i32 = u_xlati9;
        let x_1132 : i32 = u_xlati9;
        let x_1136 : vec4<f32> = x_503.x_AdditionalLightsWorldToLights[((x_1129 + 2i) / 4i)][((x_1132 + 2i) % 4i)];
        let x_1138 : vec3<f32> = vs_TEXCOORD1;
        let x_1141 : vec3<f32> = u_xlat21;
        u_xlat21 = ((vec3<f32>(x_1136.x, x_1136.y, x_1136.w) * vec3<f32>(x_1138.z, x_1138.z, x_1138.z)) + x_1141);
        let x_1143 : vec3<f32> = u_xlat21;
        let x_1144 : i32 = u_xlati9;
        let x_1147 : i32 = u_xlati9;
        let x_1151 : vec4<f32> = x_503.x_AdditionalLightsWorldToLights[((x_1144 + 3i) / 4i)][((x_1147 + 3i) % 4i)];
        u_xlat21 = (x_1143 + vec3<f32>(x_1151.x, x_1151.y, x_1151.w));
        let x_1154 : vec3<f32> = u_xlat21;
        let x_1156 : vec3<f32> = u_xlat21;
        let x_1158 : vec2<f32> = (vec2<f32>(x_1154.x, x_1154.y) / vec2<f32>(x_1156.z, x_1156.z));
        let x_1159 : vec3<f32> = u_xlat21;
        u_xlat21 = vec3<f32>(x_1158.x, x_1158.y, x_1159.z);
        let x_1161 : vec3<f32> = u_xlat21;
        let x_1164 : vec2<f32> = ((vec2<f32>(x_1161.x, x_1161.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1165 : vec3<f32> = u_xlat21;
        u_xlat21 = vec3<f32>(x_1164.x, x_1164.y, x_1165.z);
        let x_1167 : vec3<f32> = u_xlat21;
        let x_1171 : vec2<f32> = clamp(vec2<f32>(x_1167.x, x_1167.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1172 : vec3<f32> = u_xlat21;
        u_xlat21 = vec3<f32>(x_1171.x, x_1171.y, x_1172.z);
        let x_1174 : i32 = u_xlati41;
        let x_1176 : vec4<f32> = x_503.x_AdditionalLightsCookieAtlasUVRects[x_1174];
        let x_1178 : vec3<f32> = u_xlat21;
        let x_1181 : i32 = u_xlati41;
        let x_1183 : vec4<f32> = x_503.x_AdditionalLightsCookieAtlasUVRects[x_1181];
        let x_1185 : vec2<f32> = ((vec2<f32>(x_1176.x, x_1176.y) * vec2<f32>(x_1178.x, x_1178.y)) + vec2<f32>(x_1183.z, x_1183.w));
        let x_1186 : vec3<f32> = u_xlat21;
        u_xlat21 = vec3<f32>(x_1185.x, x_1185.y, x_1186.z);
      } else {
        let x_1189 : i32 = u_xlati43;
        u_xlatb43 = (x_1189 == 1i);
        let x_1191 : bool = u_xlatb43;
        u_xlati43 = select(0i, 1i, x_1191);
        let x_1193 : i32 = u_xlati43;
        if ((x_1193 != 0i)) {
          let x_1198 : vec3<f32> = vs_TEXCOORD1;
          let x_1200 : i32 = u_xlati9;
          let x_1203 : i32 = u_xlati9;
          let x_1207 : vec4<f32> = x_503.x_AdditionalLightsWorldToLights[((x_1200 + 1i) / 4i)][((x_1203 + 1i) % 4i)];
          let x_1209 : vec2<f32> = (vec2<f32>(x_1198.y, x_1198.y) * vec2<f32>(x_1207.x, x_1207.y));
          let x_1210 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1209.x, x_1209.y, x_1210.z, x_1210.w);
          let x_1212 : i32 = u_xlati9;
          let x_1214 : i32 = u_xlati9;
          let x_1217 : vec4<f32> = x_503.x_AdditionalLightsWorldToLights[(x_1212 / 4i)][(x_1214 % 4i)];
          let x_1219 : vec3<f32> = vs_TEXCOORD1;
          let x_1222 : vec4<f32> = u_xlat10;
          let x_1224 : vec2<f32> = ((vec2<f32>(x_1217.x, x_1217.y) * vec2<f32>(x_1219.x, x_1219.x)) + vec2<f32>(x_1222.x, x_1222.y));
          let x_1225 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1224.x, x_1224.y, x_1225.z, x_1225.w);
          let x_1227 : i32 = u_xlati9;
          let x_1230 : i32 = u_xlati9;
          let x_1234 : vec4<f32> = x_503.x_AdditionalLightsWorldToLights[((x_1227 + 2i) / 4i)][((x_1230 + 2i) % 4i)];
          let x_1236 : vec3<f32> = vs_TEXCOORD1;
          let x_1239 : vec4<f32> = u_xlat10;
          let x_1241 : vec2<f32> = ((vec2<f32>(x_1234.x, x_1234.y) * vec2<f32>(x_1236.z, x_1236.z)) + vec2<f32>(x_1239.x, x_1239.y));
          let x_1242 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1241.x, x_1241.y, x_1242.z, x_1242.w);
          let x_1244 : vec4<f32> = u_xlat10;
          let x_1246 : i32 = u_xlati9;
          let x_1249 : i32 = u_xlati9;
          let x_1253 : vec4<f32> = x_503.x_AdditionalLightsWorldToLights[((x_1246 + 3i) / 4i)][((x_1249 + 3i) % 4i)];
          let x_1255 : vec2<f32> = (vec2<f32>(x_1244.x, x_1244.y) + vec2<f32>(x_1253.x, x_1253.y));
          let x_1256 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1255.x, x_1255.y, x_1256.z, x_1256.w);
          let x_1258 : vec4<f32> = u_xlat10;
          let x_1261 : vec2<f32> = ((vec2<f32>(x_1258.x, x_1258.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1262 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1261.x, x_1261.y, x_1262.z, x_1262.w);
          let x_1264 : vec4<f32> = u_xlat10;
          let x_1266 : vec2<f32> = fract(vec2<f32>(x_1264.x, x_1264.y));
          let x_1267 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1266.x, x_1266.y, x_1267.z, x_1267.w);
          let x_1269 : i32 = u_xlati41;
          let x_1271 : vec4<f32> = x_503.x_AdditionalLightsCookieAtlasUVRects[x_1269];
          let x_1273 : vec4<f32> = u_xlat10;
          let x_1276 : i32 = u_xlati41;
          let x_1278 : vec4<f32> = x_503.x_AdditionalLightsCookieAtlasUVRects[x_1276];
          let x_1280 : vec2<f32> = ((vec2<f32>(x_1271.x, x_1271.y) * vec2<f32>(x_1273.x, x_1273.y)) + vec2<f32>(x_1278.z, x_1278.w));
          let x_1281 : vec3<f32> = u_xlat21;
          u_xlat21 = vec3<f32>(x_1280.x, x_1280.y, x_1281.z);
        } else {
          let x_1284 : vec3<f32> = vs_TEXCOORD1;
          let x_1286 : i32 = u_xlati9;
          let x_1289 : i32 = u_xlati9;
          let x_1293 : vec4<f32> = x_503.x_AdditionalLightsWorldToLights[((x_1286 + 1i) / 4i)][((x_1289 + 1i) % 4i)];
          u_xlat10 = (vec4<f32>(x_1284.y, x_1284.y, x_1284.y, x_1284.y) * x_1293);
          let x_1295 : i32 = u_xlati9;
          let x_1297 : i32 = u_xlati9;
          let x_1300 : vec4<f32> = x_503.x_AdditionalLightsWorldToLights[(x_1295 / 4i)][(x_1297 % 4i)];
          let x_1301 : vec3<f32> = vs_TEXCOORD1;
          let x_1304 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_1300 * vec4<f32>(x_1301.x, x_1301.x, x_1301.x, x_1301.x)) + x_1304);
          let x_1306 : i32 = u_xlati9;
          let x_1309 : i32 = u_xlati9;
          let x_1313 : vec4<f32> = x_503.x_AdditionalLightsWorldToLights[((x_1306 + 2i) / 4i)][((x_1309 + 2i) % 4i)];
          let x_1314 : vec3<f32> = vs_TEXCOORD1;
          let x_1317 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_1313 * vec4<f32>(x_1314.z, x_1314.z, x_1314.z, x_1314.z)) + x_1317);
          let x_1319 : vec4<f32> = u_xlat10;
          let x_1320 : i32 = u_xlati9;
          let x_1323 : i32 = u_xlati9;
          let x_1327 : vec4<f32> = x_503.x_AdditionalLightsWorldToLights[((x_1320 + 3i) / 4i)][((x_1323 + 3i) % 4i)];
          u_xlat10 = (x_1319 + x_1327);
          let x_1329 : vec4<f32> = u_xlat10;
          let x_1331 : vec4<f32> = u_xlat10;
          let x_1333 : vec3<f32> = (vec3<f32>(x_1329.x, x_1329.y, x_1329.z) / vec3<f32>(x_1331.w, x_1331.w, x_1331.w));
          let x_1334 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1333.x, x_1333.y, x_1333.z, x_1334.w);
          let x_1336 : vec4<f32> = u_xlat10;
          let x_1338 : vec4<f32> = u_xlat10;
          u_xlat43 = dot(vec3<f32>(x_1336.x, x_1336.y, x_1336.z), vec3<f32>(x_1338.x, x_1338.y, x_1338.z));
          let x_1341 : f32 = u_xlat43;
          u_xlat43 = inverseSqrt(x_1341);
          let x_1343 : f32 = u_xlat43;
          let x_1345 : vec4<f32> = u_xlat10;
          let x_1347 : vec3<f32> = (vec3<f32>(x_1343, x_1343, x_1343) * vec3<f32>(x_1345.x, x_1345.y, x_1345.z));
          let x_1348 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1347.x, x_1347.y, x_1347.z, x_1348.w);
          let x_1350 : vec4<f32> = u_xlat10;
          u_xlat43 = dot(abs(vec3<f32>(x_1350.x, x_1350.y, x_1350.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1355 : f32 = u_xlat43;
          u_xlat43 = max(x_1355, 0.00000099999999747524f);
          let x_1358 : f32 = u_xlat43;
          u_xlat43 = (1.0f / x_1358);
          let x_1361 : f32 = u_xlat43;
          let x_1363 : vec4<f32> = u_xlat10;
          u_xlat11 = (vec3<f32>(x_1361, x_1361, x_1361) * vec3<f32>(x_1363.z, x_1363.x, x_1363.y));
          let x_1367 : f32 = u_xlat11.x;
          u_xlat11.x = -(x_1367);
          let x_1371 : f32 = u_xlat11.x;
          u_xlat11.x = clamp(x_1371, 0.0f, 1.0f);
          let x_1374 : vec3<f32> = u_xlat11;
          let x_1376 : vec4<bool> = (vec4<f32>(x_1374.y, x_1374.y, x_1374.y, x_1374.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1377 : vec2<bool> = vec2<bool>(x_1376.x, x_1376.w);
          let x_1378 : vec4<bool> = u_xlatb9;
          u_xlatb9 = vec4<bool>(x_1377.x, x_1378.y, x_1378.z, x_1377.y);
          let x_1381 : bool = u_xlatb9.x;
          if (x_1381) {
            let x_1386 : f32 = u_xlat11.x;
            x_1382 = x_1386;
          } else {
            let x_1389 : f32 = u_xlat11.x;
            x_1382 = -(x_1389);
          }
          let x_1391 : f32 = x_1382;
          u_xlat9.x = x_1391;
          let x_1394 : bool = u_xlatb9.w;
          if (x_1394) {
            let x_1399 : f32 = u_xlat11.x;
            x_1395 = x_1399;
          } else {
            let x_1402 : f32 = u_xlat11.x;
            x_1395 = -(x_1402);
          }
          let x_1404 : f32 = x_1395;
          u_xlat9.w = x_1404;
          let x_1406 : vec4<f32> = u_xlat10;
          let x_1408 : f32 = u_xlat43;
          let x_1411 : vec4<f32> = u_xlat9;
          let x_1413 : vec2<f32> = ((vec2<f32>(x_1406.x, x_1406.y) * vec2<f32>(x_1408, x_1408)) + vec2<f32>(x_1411.x, x_1411.w));
          let x_1414 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1413.x, x_1414.y, x_1414.z, x_1413.y);
          let x_1416 : vec4<f32> = u_xlat9;
          let x_1419 : vec2<f32> = ((vec2<f32>(x_1416.x, x_1416.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1420 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1419.x, x_1420.y, x_1420.z, x_1419.y);
          let x_1422 : vec4<f32> = u_xlat9;
          let x_1426 : vec2<f32> = clamp(vec2<f32>(x_1422.x, x_1422.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1427 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1426.x, x_1427.y, x_1427.z, x_1426.y);
          let x_1429 : i32 = u_xlati41;
          let x_1431 : vec4<f32> = x_503.x_AdditionalLightsCookieAtlasUVRects[x_1429];
          let x_1433 : vec4<f32> = u_xlat9;
          let x_1436 : i32 = u_xlati41;
          let x_1438 : vec4<f32> = x_503.x_AdditionalLightsCookieAtlasUVRects[x_1436];
          let x_1440 : vec2<f32> = ((vec2<f32>(x_1431.x, x_1431.y) * vec2<f32>(x_1433.x, x_1433.w)) + vec2<f32>(x_1438.z, x_1438.w));
          let x_1441 : vec3<f32> = u_xlat21;
          u_xlat21 = vec3<f32>(x_1440.x, x_1440.y, x_1441.z);
        }
      }
      let x_1448 : vec3<f32> = u_xlat21;
      let x_1450 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1448.x, x_1448.y), 0.0f);
      u_xlat9 = x_1450;
      let x_1452 : bool = u_xlatb6.y;
      if (x_1452) {
        let x_1457 : f32 = u_xlat9.w;
        x_1453 = x_1457;
      } else {
        let x_1460 : f32 = u_xlat9.x;
        x_1453 = x_1460;
      }
      let x_1461 : f32 = x_1453;
      u_xlat43 = x_1461;
      let x_1463 : bool = u_xlatb6.x;
      if (x_1463) {
        let x_1467 : vec4<f32> = u_xlat9;
        x_1464 = vec3<f32>(x_1467.x, x_1467.y, x_1467.z);
      } else {
        let x_1470 : f32 = u_xlat43;
        x_1464 = vec3<f32>(x_1470, x_1470, x_1470);
      }
      let x_1472 : vec3<f32> = x_1464;
      let x_1473 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_1472.x, x_1472.y, x_1472.z, x_1473.w);
    } else {
      u_xlat9.x = 1.0f;
      u_xlat9.y = 1.0f;
      u_xlat9.z = 1.0f;
    }
    let x_1479 : vec4<f32> = u_xlat9;
    let x_1481 : i32 = u_xlati41;
    let x_1483 : vec4<f32> = x_810.x_AdditionalLightsColor[x_1481];
    let x_1485 : vec3<f32> = (vec3<f32>(x_1479.x, x_1479.y, x_1479.z) * vec3<f32>(x_1483.x, x_1483.y, x_1483.z));
    let x_1486 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1485.x, x_1485.y, x_1485.z, x_1486.w);
    let x_1488 : f32 = u_xlat42;
    let x_1489 : f32 = u_xlat30;
    u_xlat41 = (x_1488 * x_1489);
    let x_1491 : f32 = u_xlat41;
    let x_1493 : vec4<f32> = u_xlat9;
    let x_1495 : vec3<f32> = (vec3<f32>(x_1491, x_1491, x_1491) * vec3<f32>(x_1493.x, x_1493.y, x_1493.z));
    let x_1496 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1495.x, x_1495.y, x_1495.z, x_1496.w);
    let x_1498 : vec4<f32> = u_xlat2;
    let x_1500 : vec3<f32> = u_xlat8;
    u_xlat41 = dot(vec3<f32>(x_1498.x, x_1498.y, x_1498.z), x_1500);
    let x_1502 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1502, 0.0f, 1.0f);
    let x_1504 : f32 = u_xlat41;
    let x_1506 : vec4<f32> = u_xlat9;
    let x_1508 : vec3<f32> = (vec3<f32>(x_1504, x_1504, x_1504) * vec3<f32>(x_1506.x, x_1506.y, x_1506.z));
    let x_1509 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1508.x, x_1508.y, x_1508.z, x_1509.w);
    let x_1511 : vec3<f32> = u_xlat3;
    let x_1512 : vec3<f32> = u_xlat12;
    let x_1515 : vec3<f32> = u_xlat8;
    u_xlat8 = ((x_1511 * vec3<f32>(x_1512.x, x_1512.x, x_1512.x)) + x_1515);
    let x_1517 : vec3<f32> = u_xlat8;
    let x_1518 : vec3<f32> = u_xlat8;
    u_xlat41 = dot(x_1517, x_1518);
    let x_1520 : f32 = u_xlat41;
    u_xlat41 = max(x_1520, 1.17549435e-38f);
    let x_1522 : f32 = u_xlat41;
    u_xlat41 = inverseSqrt(x_1522);
    let x_1524 : f32 = u_xlat41;
    let x_1526 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1524, x_1524, x_1524) * x_1526);
    let x_1528 : vec4<f32> = u_xlat2;
    let x_1530 : vec3<f32> = u_xlat8;
    u_xlat41 = dot(vec3<f32>(x_1528.x, x_1528.y, x_1528.z), x_1530);
    let x_1532 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1532, 0.0f, 1.0f);
    let x_1534 : f32 = u_xlat41;
    u_xlat41 = log2(x_1534);
    let x_1537 : f32 = u_xlat1.x;
    let x_1538 : f32 = u_xlat41;
    u_xlat41 = (x_1537 * x_1538);
    let x_1540 : f32 = u_xlat41;
    u_xlat41 = exp2(x_1540);
    let x_1542 : f32 = u_xlat41;
    let x_1545 : vec4<f32> = x_42.x_SpecColor;
    u_xlat8 = (vec3<f32>(x_1542, x_1542, x_1542) * vec3<f32>(x_1545.x, x_1545.y, x_1545.z));
    let x_1548 : vec3<f32> = u_xlat8;
    let x_1549 : vec4<f32> = u_xlat9;
    u_xlat8 = (x_1548 * vec3<f32>(x_1549.x, x_1549.y, x_1549.z));
    let x_1552 : vec4<f32> = u_xlat10;
    let x_1554 : vec4<f32> = u_xlat1;
    let x_1557 : vec3<f32> = u_xlat8;
    u_xlat8 = ((vec3<f32>(x_1552.x, x_1552.y, x_1552.z) * vec3<f32>(x_1554.y, x_1554.z, x_1554.w)) + x_1557);
    let x_1559 : vec3<f32> = u_xlat7;
    let x_1560 : vec3<f32> = u_xlat8;
    u_xlat7 = (x_1559 + x_1560);

    continuing {
      let x_1562 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1562 + bitcast<u32>(1i));
    }
  }
  let x_1564 : vec3<f32> = u_xlat4;
  let x_1565 : vec4<f32> = u_xlat1;
  let x_1568 : vec4<f32> = u_xlat5;
  let x_1570 : vec3<f32> = ((x_1564 * vec3<f32>(x_1565.y, x_1565.z, x_1565.w)) + vec3<f32>(x_1568.x, x_1568.y, x_1568.z));
  let x_1571 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1570.x, x_1570.y, x_1570.z, x_1571.w);
  let x_1573 : vec3<f32> = u_xlat7;
  let x_1574 : vec4<f32> = u_xlat1;
  let x_1576 : vec3<f32> = (x_1573 + vec3<f32>(x_1574.x, x_1574.y, x_1574.z));
  let x_1577 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1576.x, x_1576.y, x_1576.z, x_1577.w);
  let x_1579 : f32 = u_xlat36;
  let x_1580 : f32 = u_xlat36;
  u_xlat12.x = (x_1579 * -(x_1580));
  let x_1585 : f32 = u_xlat12.x;
  u_xlat12.x = exp2(x_1585);
  let x_1588 : vec4<f32> = u_xlat1;
  let x_1591 : vec4<f32> = x_28.unity_FogColor;
  let x_1594 : vec3<f32> = (vec3<f32>(x_1588.x, x_1588.y, x_1588.z) + -(vec3<f32>(x_1591.x, x_1591.y, x_1591.z)));
  let x_1595 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1594.x, x_1594.y, x_1594.z, x_1595.w);
  let x_1599 : vec3<f32> = u_xlat12;
  let x_1601 : vec4<f32> = u_xlat1;
  let x_1605 : vec4<f32> = x_28.unity_FogColor;
  let x_1607 : vec3<f32> = ((vec3<f32>(x_1599.x, x_1599.x, x_1599.x) * vec3<f32>(x_1601.x, x_1601.y, x_1601.z)) + vec3<f32>(x_1605.x, x_1605.y, x_1605.z));
  let x_1608 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1607.x, x_1607.y, x_1607.z, x_1608.w);
  let x_1611 : f32 = x_42.x_Surface;
  u_xlatb12 = (x_1611 == 1.0f);
  let x_1613 : bool = u_xlatb12;
  let x_1614 : bool = u_xlatb24;
  u_xlatb12 = (x_1613 | x_1614);
  let x_1616 : bool = u_xlatb12;
  if (x_1616) {
    let x_1621 : f32 = u_xlat0.x;
    x_1617 = x_1621;
  } else {
    x_1617 = 1.0f;
  }
  let x_1623 : f32 = x_1617;
  SV_Target0.w = x_1623;
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


