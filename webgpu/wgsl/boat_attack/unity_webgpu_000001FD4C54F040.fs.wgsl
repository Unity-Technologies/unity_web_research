diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
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

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MetallicTex : sampler;

var<private> u_xlat16 : f32;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_124 : UnityPerDraw;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat31 : f32;

var<private> u_xlat46 : f32;

var<private> u_xlat47 : f32;

var<private> u_xlat45 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat48 : f32;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat49 : f32;

@group(1) @binding(3) var<uniform> x_295 : LightShadows;

var<private> u_xlatb49 : bool;

var<private> u_xlatb5 : bool;

var<private> u_xlat20 : f32;

@group(1) @binding(4) var<uniform> x_363 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb6 : vec2<bool>;

var<private> u_xlat50 : f32;

var<private> u_xlat6 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat51 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlatu45 : u32;

var<private> u_xlatb8 : vec2<bool>;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlatu49 : u32;

var<private> u_xlati50 : i32;

var<private> u_xlati49 : i32;

var<private> u_xlat10 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_841 : AdditionalLights;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlat52 : f32;

var<private> u_xlati52 : i32;

var<private> u_xlatb38 : bool;

var<private> u_xlatb12 : vec4<bool>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat53 : f32;

var<private> u_xlat38 : vec2<f32>;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb53 : bool;

var<private> u_xlati38 : i32;

var<private> u_xlati53 : i32;

var<private> u_xlati54 : i32;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlatb42 : vec2<bool>;

var<private> u_xlat42 : vec2<f32>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu48 : u32;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_452 : f32;
  var x_463 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_973 : f32;
  var x_984 : f32;
  var txVec1 : vec3<f32>;
  var x_1422 : f32;
  var x_1435 : f32;
  var x_1483 : f32;
  var x_1495 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y), x_36);
  u_xlat0 = x_37;
  let x_45 : vec4<f32> = vs_TEXCOORD0;
  let x_48 : f32 = x_29.x_GlobalMipBias.x;
  let x_49 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_45.x, x_45.y), x_48);
  u_xlat1.x = x_49.x;
  let x_55 : vec4<f32> = vs_TEXCOORD3;
  let x_57 : vec4<f32> = vs_TEXCOORD3;
  u_xlat16 = dot(vec3<f32>(x_55.x, x_55.y, x_55.z), vec3<f32>(x_57.x, x_57.y, x_57.z));
  let x_60 : f32 = u_xlat16;
  u_xlat16 = inverseSqrt(x_60);
  let x_63 : f32 = u_xlat16;
  let x_65 : vec4<f32> = vs_TEXCOORD3;
  let x_67 : vec3<f32> = (vec3<f32>(x_63, x_63, x_63) * vec3<f32>(x_65.x, x_65.y, x_65.z));
  let x_68 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_67.x, x_67.y, x_67.z, x_68.w);
  let x_75 : f32 = vs_TEXCOORD7.y;
  let x_80 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat16 = (x_75 * x_80);
  let x_83 : f32 = x_29.unity_MatrixV[0i].z;
  let x_85 : f32 = vs_TEXCOORD7.x;
  let x_87 : f32 = u_xlat16;
  u_xlat16 = ((x_83 * x_85) + x_87);
  let x_91 : f32 = x_29.unity_MatrixV[2i].z;
  let x_93 : f32 = vs_TEXCOORD7.z;
  let x_95 : f32 = u_xlat16;
  u_xlat16 = ((x_91 * x_93) + x_95);
  let x_97 : f32 = u_xlat16;
  let x_100 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat16 = (x_97 + x_100);
  let x_102 : f32 = u_xlat16;
  let x_106 : f32 = x_29.x_ProjectionParams.y;
  u_xlat16 = (-(x_102) + -(x_106));
  let x_109 : f32 = u_xlat16;
  u_xlat16 = max(x_109, 0.0f);
  let x_112 : f32 = u_xlat16;
  let x_115 : f32 = x_29.unity_FogParams.x;
  u_xlat16 = (x_112 * x_115);
  u_xlat2.w = 1.0f;
  let x_128 : vec4<f32> = x_124.unity_SHAr;
  let x_129 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_128, x_129);
  let x_134 : vec4<f32> = x_124.unity_SHAg;
  let x_135 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_134, x_135);
  let x_140 : vec4<f32> = x_124.unity_SHAb;
  let x_141 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_140, x_141);
  let x_145 : vec4<f32> = u_xlat2;
  let x_147 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_145.y, x_145.z, x_145.z, x_145.x) * vec4<f32>(x_147.x, x_147.y, x_147.z, x_147.z));
  let x_153 : vec4<f32> = x_124.unity_SHBr;
  let x_154 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_153, x_154);
  let x_159 : vec4<f32> = x_124.unity_SHBg;
  let x_160 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_159, x_160);
  let x_165 : vec4<f32> = x_124.unity_SHBb;
  let x_166 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_165, x_166);
  let x_171 : f32 = u_xlat2.y;
  let x_173 : f32 = u_xlat2.y;
  u_xlat31 = (x_171 * x_173);
  let x_176 : f32 = u_xlat2.x;
  let x_178 : f32 = u_xlat2.x;
  let x_180 : f32 = u_xlat31;
  u_xlat31 = ((x_176 * x_178) + -(x_180));
  let x_185 : vec4<f32> = x_124.unity_SHC;
  let x_187 : f32 = u_xlat31;
  let x_190 : vec4<f32> = u_xlat5;
  let x_192 : vec3<f32> = ((vec3<f32>(x_185.x, x_185.y, x_185.z) * vec3<f32>(x_187, x_187, x_187)) + vec3<f32>(x_190.x, x_190.y, x_190.z));
  let x_193 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
  let x_195 : vec3<f32> = u_xlat3;
  let x_196 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_195 + vec3<f32>(x_196.x, x_196.y, x_196.z));
  let x_199 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_199, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_203 : f32 = u_xlat1.x;
  u_xlat31 = ((-(x_203) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_209 : f32 = u_xlat31;
  u_xlat46 = (-(x_209) + 1.0f);
  let x_212 : vec4<f32> = u_xlat0;
  let x_214 : f32 = u_xlat31;
  let x_216 : vec3<f32> = (vec3<f32>(x_212.x, x_212.y, x_212.z) * vec3<f32>(x_214, x_214, x_214));
  let x_217 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_216.x, x_216.y, x_216.z, x_217.w);
  let x_219 : vec4<f32> = u_xlat0;
  let x_223 : vec3<f32> = (vec3<f32>(x_219.x, x_219.y, x_219.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_224 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_223.x, x_223.y, x_223.z, x_224.w);
  let x_226 : vec3<f32> = u_xlat1;
  let x_228 : vec4<f32> = u_xlat0;
  let x_233 : vec3<f32> = ((vec3<f32>(x_226.x, x_226.x, x_226.x) * vec3<f32>(x_228.x, x_228.y, x_228.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_234 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_233.x, x_233.y, x_233.z, x_234.w);
  let x_237 : f32 = u_xlat0.w;
  u_xlat1.x = (-(x_237) + 1.0f);
  let x_242 : f32 = u_xlat1.x;
  let x_244 : f32 = u_xlat1.x;
  u_xlat31 = (x_242 * x_244);
  let x_246 : f32 = u_xlat31;
  u_xlat31 = max(x_246, 0.0078125f);
  let x_250 : f32 = u_xlat31;
  let x_251 : f32 = u_xlat31;
  u_xlat47 = (x_250 * x_251);
  let x_255 : f32 = u_xlat0.w;
  let x_256 : f32 = u_xlat46;
  u_xlat45 = (x_255 + x_256);
  let x_258 : f32 = u_xlat45;
  u_xlat45 = clamp(x_258, 0.0f, 1.0f);
  let x_260 : f32 = u_xlat31;
  u_xlat46 = ((x_260 * 4.0f) + 2.0f);
  let x_268 : vec4<f32> = vs_TEXCOORD8;
  let x_269 : vec2<f32> = vec2<f32>(x_268.x, x_268.y);
  let x_271 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_269.x, x_269.y, x_271);
  let x_284 : vec3<f32> = txVec0;
  let x_286 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_284.xy, x_284.z);
  u_xlat48 = x_286;
  let x_297 : f32 = x_295.x_MainLightShadowParams.x;
  u_xlat49 = (-(x_297) + 1.0f);
  let x_300 : f32 = u_xlat48;
  let x_302 : f32 = x_295.x_MainLightShadowParams.x;
  let x_304 : f32 = u_xlat49;
  u_xlat48 = ((x_300 * x_302) + x_304);
  let x_310 : f32 = vs_TEXCOORD8.z;
  u_xlatb49 = (0.0f >= x_310);
  let x_314 : f32 = vs_TEXCOORD8.z;
  u_xlatb5 = (x_314 >= 1.0f);
  let x_316 : bool = u_xlatb49;
  let x_317 : bool = u_xlatb5;
  u_xlatb49 = (x_316 | x_317);
  let x_319 : bool = u_xlatb49;
  let x_320 : f32 = u_xlat48;
  u_xlat48 = select(x_320, 1.0f, x_319);
  let x_322 : vec3<f32> = vs_TEXCOORD7;
  let x_326 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_328 : vec3<f32> = (x_322 + -(x_326));
  let x_329 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
  let x_331 : vec4<f32> = u_xlat5;
  let x_333 : vec4<f32> = u_xlat5;
  u_xlat49 = dot(vec3<f32>(x_331.x, x_331.y, x_331.z), vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_336 : f32 = u_xlat49;
  let x_338 : f32 = x_295.x_MainLightShadowParams.z;
  let x_341 : f32 = x_295.x_MainLightShadowParams.w;
  u_xlat5.x = ((x_336 * x_338) + x_341);
  let x_345 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_345, 0.0f, 1.0f);
  let x_349 : f32 = u_xlat48;
  u_xlat20 = (-(x_349) + 1.0f);
  let x_353 : f32 = u_xlat5.x;
  let x_354 : f32 = u_xlat20;
  let x_356 : f32 = u_xlat48;
  u_xlat48 = ((x_353 * x_354) + x_356);
  let x_365 : f32 = x_363.x_MainLightCookieTextureFormat;
  u_xlatb5 = !((x_365 == -1.0f));
  let x_368 : bool = u_xlatb5;
  if (x_368) {
    let x_371 : vec3<f32> = vs_TEXCOORD7;
    let x_374 : vec4<f32> = x_363.x_MainLightWorldToLight[1i];
    let x_376 : vec2<f32> = (vec2<f32>(x_371.y, x_371.y) * vec2<f32>(x_374.x, x_374.y));
    let x_377 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_376.x, x_376.y, x_377.z, x_377.w);
    let x_380 : vec4<f32> = x_363.x_MainLightWorldToLight[0i];
    let x_382 : vec3<f32> = vs_TEXCOORD7;
    let x_385 : vec4<f32> = u_xlat5;
    let x_387 : vec2<f32> = ((vec2<f32>(x_380.x, x_380.y) * vec2<f32>(x_382.x, x_382.x)) + vec2<f32>(x_385.x, x_385.y));
    let x_388 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_387.x, x_387.y, x_388.z, x_388.w);
    let x_391 : vec4<f32> = x_363.x_MainLightWorldToLight[2i];
    let x_393 : vec3<f32> = vs_TEXCOORD7;
    let x_396 : vec4<f32> = u_xlat5;
    let x_398 : vec2<f32> = ((vec2<f32>(x_391.x, x_391.y) * vec2<f32>(x_393.z, x_393.z)) + vec2<f32>(x_396.x, x_396.y));
    let x_399 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_398.x, x_398.y, x_399.z, x_399.w);
    let x_401 : vec4<f32> = u_xlat5;
    let x_404 : vec4<f32> = x_363.x_MainLightWorldToLight[3i];
    let x_406 : vec2<f32> = (vec2<f32>(x_401.x, x_401.y) + vec2<f32>(x_404.x, x_404.y));
    let x_407 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_406.x, x_406.y, x_407.z, x_407.w);
    let x_409 : vec4<f32> = u_xlat5;
    let x_414 : vec2<f32> = ((vec2<f32>(x_409.x, x_409.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_415 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_414.x, x_414.y, x_415.z, x_415.w);
    let x_422 : vec4<f32> = u_xlat5;
    let x_425 : f32 = x_29.x_GlobalMipBias.x;
    let x_426 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_422.x, x_422.y), x_425);
    u_xlat5 = x_426;
    let x_431 : f32 = x_363.x_MainLightCookieTextureFormat;
    let x_433 : f32 = x_363.x_MainLightCookieTextureFormat;
    let x_435 : f32 = x_363.x_MainLightCookieTextureFormat;
    let x_437 : f32 = x_363.x_MainLightCookieTextureFormat;
    let x_438 : vec4<f32> = vec4<f32>(x_431, x_433, x_435, x_437);
    let x_446 : vec4<bool> = (vec4<f32>(x_438.x, x_438.y, x_438.z, x_438.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb6 = vec2<bool>(x_446.x, x_446.y);
    let x_450 : bool = u_xlatb6.y;
    if (x_450) {
      let x_456 : f32 = u_xlat5.w;
      x_452 = x_456;
    } else {
      let x_459 : f32 = u_xlat5.x;
      x_452 = x_459;
    }
    let x_460 : f32 = x_452;
    u_xlat50 = x_460;
    let x_462 : bool = u_xlatb6.x;
    if (x_462) {
      let x_466 : vec4<f32> = u_xlat5;
      x_463 = vec3<f32>(x_466.x, x_466.y, x_466.z);
    } else {
      let x_469 : f32 = u_xlat50;
      x_463 = vec3<f32>(x_469, x_469, x_469);
    }
    let x_471 : vec3<f32> = x_463;
    let x_472 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_471.x, x_471.y, x_471.z, x_472.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_478 : vec4<f32> = u_xlat5;
  let x_481 : vec4<f32> = x_29.x_MainLightColor;
  let x_483 : vec3<f32> = (vec3<f32>(x_478.x, x_478.y, x_478.z) * vec3<f32>(x_481.x, x_481.y, x_481.z));
  let x_484 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_483.x, x_483.y, x_483.z, x_484.w);
  let x_488 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_488;
  let x_492 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_492;
  let x_496 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_496;
  let x_498 : vec3<f32> = u_xlat6;
  let x_500 : vec4<f32> = u_xlat2;
  u_xlat50 = dot(-(x_498), vec3<f32>(x_500.x, x_500.y, x_500.z));
  let x_503 : f32 = u_xlat50;
  let x_504 : f32 = u_xlat50;
  u_xlat50 = (x_503 + x_504);
  let x_507 : vec4<f32> = u_xlat2;
  let x_509 : f32 = u_xlat50;
  let x_513 : vec3<f32> = u_xlat6;
  let x_515 : vec3<f32> = ((vec3<f32>(x_507.x, x_507.y, x_507.z) * -(vec3<f32>(x_509, x_509, x_509))) + -(x_513));
  let x_516 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_515.x, x_515.y, x_515.z, x_516.w);
  let x_518 : vec4<f32> = u_xlat2;
  let x_520 : vec3<f32> = u_xlat6;
  u_xlat50 = dot(vec3<f32>(x_518.x, x_518.y, x_518.z), x_520);
  let x_522 : f32 = u_xlat50;
  u_xlat50 = clamp(x_522, 0.0f, 1.0f);
  let x_524 : f32 = u_xlat50;
  u_xlat50 = (-(x_524) + 1.0f);
  let x_527 : f32 = u_xlat50;
  let x_528 : f32 = u_xlat50;
  u_xlat50 = (x_527 * x_528);
  let x_530 : f32 = u_xlat50;
  let x_531 : f32 = u_xlat50;
  u_xlat50 = (x_530 * x_531);
  let x_535 : f32 = u_xlat1.x;
  u_xlat51 = ((-(x_535) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_542 : f32 = u_xlat1.x;
  let x_543 : f32 = u_xlat51;
  u_xlat1.x = (x_542 * x_543);
  let x_547 : f32 = u_xlat1.x;
  u_xlat1.x = (x_547 * 6.0f);
  let x_559 : vec4<f32> = u_xlat7;
  let x_562 : f32 = u_xlat1.x;
  let x_563 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_559.x, x_559.y, x_559.z), x_562);
  u_xlat7 = x_563;
  let x_565 : f32 = u_xlat7.w;
  u_xlat1.x = (x_565 + -1.0f);
  let x_569 : f32 = x_124.unity_SpecCube0_HDR.w;
  let x_571 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_569 * x_571) + 1.0f);
  let x_576 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_576, 0.0f);
  let x_580 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_580);
  let x_584 : f32 = u_xlat1.x;
  let x_586 : f32 = x_124.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_584 * x_586);
  let x_590 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_590);
  let x_594 : f32 = u_xlat1.x;
  let x_596 : f32 = x_124.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_594 * x_596);
  let x_599 : vec4<f32> = u_xlat7;
  let x_601 : vec3<f32> = u_xlat1;
  let x_603 : vec3<f32> = (vec3<f32>(x_599.x, x_599.y, x_599.z) * vec3<f32>(x_601.x, x_601.x, x_601.x));
  let x_604 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_603.x, x_603.y, x_603.z, x_604.w);
  let x_606 : f32 = u_xlat31;
  let x_608 : f32 = u_xlat31;
  let x_612 : vec2<f32> = ((vec2<f32>(x_606, x_606) * vec2<f32>(x_608, x_608)) + vec2<f32>(-1.0f, 1.0f));
  let x_613 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_612.x, x_613.y, x_612.y);
  let x_616 : f32 = u_xlat1.z;
  u_xlat31 = (1.0f / x_616);
  let x_619 : vec4<f32> = u_xlat0;
  let x_622 : f32 = u_xlat45;
  u_xlat8 = (-(vec3<f32>(x_619.x, x_619.y, x_619.z)) + vec3<f32>(x_622, x_622, x_622));
  let x_625 : f32 = u_xlat50;
  let x_627 : vec3<f32> = u_xlat8;
  let x_629 : vec4<f32> = u_xlat0;
  u_xlat8 = ((vec3<f32>(x_625, x_625, x_625) * x_627) + vec3<f32>(x_629.x, x_629.y, x_629.z));
  let x_632 : f32 = u_xlat31;
  let x_634 : vec3<f32> = u_xlat8;
  u_xlat8 = (vec3<f32>(x_632, x_632, x_632) * x_634);
  let x_636 : vec4<f32> = u_xlat7;
  let x_638 : vec3<f32> = u_xlat8;
  let x_639 : vec3<f32> = (vec3<f32>(x_636.x, x_636.y, x_636.z) * x_638);
  let x_640 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_639.x, x_639.y, x_639.z, x_640.w);
  let x_642 : vec3<f32> = u_xlat3;
  let x_643 : vec4<f32> = u_xlat4;
  let x_646 : vec4<f32> = u_xlat7;
  u_xlat3 = ((x_642 * vec3<f32>(x_643.x, x_643.y, x_643.z)) + vec3<f32>(x_646.x, x_646.y, x_646.z));
  let x_649 : f32 = u_xlat48;
  let x_651 : f32 = x_124.unity_LightData.z;
  u_xlat45 = (x_649 * x_651);
  let x_653 : vec4<f32> = u_xlat2;
  let x_656 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat31 = dot(vec3<f32>(x_653.x, x_653.y, x_653.z), vec3<f32>(x_656.x, x_656.y, x_656.z));
  let x_659 : f32 = u_xlat31;
  u_xlat31 = clamp(x_659, 0.0f, 1.0f);
  let x_661 : f32 = u_xlat45;
  let x_662 : f32 = u_xlat31;
  u_xlat45 = (x_661 * x_662);
  let x_664 : f32 = u_xlat45;
  let x_666 : vec4<f32> = u_xlat5;
  let x_668 : vec3<f32> = (vec3<f32>(x_664, x_664, x_664) * vec3<f32>(x_666.x, x_666.y, x_666.z));
  let x_669 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_668.x, x_668.y, x_668.z, x_669.w);
  let x_671 : vec3<f32> = u_xlat6;
  let x_673 : vec4<f32> = x_29.x_MainLightPosition;
  let x_675 : vec3<f32> = (x_671 + vec3<f32>(x_673.x, x_673.y, x_673.z));
  let x_676 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_675.x, x_675.y, x_675.z, x_676.w);
  let x_678 : vec4<f32> = u_xlat7;
  let x_680 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_678.x, x_678.y, x_678.z), vec3<f32>(x_680.x, x_680.y, x_680.z));
  let x_683 : f32 = u_xlat45;
  u_xlat45 = max(x_683, 1.17549435e-38f);
  let x_686 : f32 = u_xlat45;
  u_xlat45 = inverseSqrt(x_686);
  let x_688 : f32 = u_xlat45;
  let x_690 : vec4<f32> = u_xlat7;
  let x_692 : vec3<f32> = (vec3<f32>(x_688, x_688, x_688) * vec3<f32>(x_690.x, x_690.y, x_690.z));
  let x_693 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_692.x, x_692.y, x_692.z, x_693.w);
  let x_695 : vec4<f32> = u_xlat2;
  let x_697 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_695.x, x_695.y, x_695.z), vec3<f32>(x_697.x, x_697.y, x_697.z));
  let x_700 : f32 = u_xlat45;
  u_xlat45 = clamp(x_700, 0.0f, 1.0f);
  let x_703 : vec4<f32> = x_29.x_MainLightPosition;
  let x_705 : vec4<f32> = u_xlat7;
  u_xlat31 = dot(vec3<f32>(x_703.x, x_703.y, x_703.z), vec3<f32>(x_705.x, x_705.y, x_705.z));
  let x_708 : f32 = u_xlat31;
  u_xlat31 = clamp(x_708, 0.0f, 1.0f);
  let x_710 : f32 = u_xlat45;
  let x_711 : f32 = u_xlat45;
  u_xlat45 = (x_710 * x_711);
  let x_713 : f32 = u_xlat45;
  let x_715 : f32 = u_xlat1.x;
  u_xlat45 = ((x_713 * x_715) + 1.00001001358032226562f);
  let x_719 : f32 = u_xlat31;
  let x_720 : f32 = u_xlat31;
  u_xlat31 = (x_719 * x_720);
  let x_722 : f32 = u_xlat45;
  let x_723 : f32 = u_xlat45;
  u_xlat45 = (x_722 * x_723);
  let x_725 : f32 = u_xlat31;
  u_xlat31 = max(x_725, 0.10000000149011611938f);
  let x_728 : f32 = u_xlat45;
  let x_729 : f32 = u_xlat31;
  u_xlat45 = (x_728 * x_729);
  let x_731 : f32 = u_xlat46;
  let x_732 : f32 = u_xlat45;
  u_xlat45 = (x_731 * x_732);
  let x_734 : f32 = u_xlat47;
  let x_735 : f32 = u_xlat45;
  u_xlat45 = (x_734 / x_735);
  let x_737 : vec4<f32> = u_xlat0;
  let x_739 : f32 = u_xlat45;
  let x_742 : vec4<f32> = u_xlat4;
  let x_744 : vec3<f32> = ((vec3<f32>(x_737.x, x_737.y, x_737.z) * vec3<f32>(x_739, x_739, x_739)) + vec3<f32>(x_742.x, x_742.y, x_742.z));
  let x_745 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_744.x, x_744.y, x_744.z, x_745.w);
  let x_748 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_750 : f32 = x_124.unity_LightData.y;
  u_xlat45 = min(x_748, x_750);
  let x_754 : f32 = u_xlat45;
  u_xlatu45 = bitcast<u32>(i32(x_754));
  let x_757 : f32 = u_xlat49;
  let x_760 : f32 = x_295.x_AdditionalShadowFadeParams.x;
  let x_763 : f32 = x_295.x_AdditionalShadowFadeParams.y;
  u_xlat31 = ((x_757 * x_760) + x_763);
  let x_765 : f32 = u_xlat31;
  u_xlat31 = clamp(x_765, 0.0f, 1.0f);
  let x_769 : f32 = x_363.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_771 : f32 = x_363.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_773 : f32 = x_363.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_775 : f32 = x_363.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_776 : vec4<f32> = vec4<f32>(x_769, x_771, x_773, x_775);
  let x_782 : vec4<bool> = (vec4<f32>(x_776.x, x_776.y, x_776.z, x_776.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb8 = vec2<bool>(x_782.x, x_782.y);
  u_xlat9.x = 0.0f;
  u_xlat9.y = 0.0f;
  u_xlat9.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_795 : u32 = u_xlatu_loop_1;
    let x_796 : u32 = u_xlatu45;
    if ((x_795 < x_796)) {
    } else {
      break;
    }
    let x_799 : u32 = u_xlatu_loop_1;
    u_xlatu49 = (x_799 >> 2u);
    let x_803 : u32 = u_xlatu_loop_1;
    u_xlati50 = bitcast<i32>((x_803 & 3u));
    let x_806 : u32 = u_xlatu49;
    let x_809 : vec4<f32> = x_124.unity_LightIndices[bitcast<i32>(x_806)];
    let x_819 : i32 = u_xlati50;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_824 : vec4<u32> = indexable[x_819];
    u_xlat49 = dot(x_809, bitcast<vec4<f32>>(x_824));
    let x_828 : f32 = u_xlat49;
    u_xlati49 = i32(x_828);
    let x_831 : vec3<f32> = vs_TEXCOORD7;
    let x_842 : i32 = u_xlati49;
    let x_844 : vec4<f32> = x_841.x_AdditionalLightsPosition[x_842];
    let x_847 : i32 = u_xlati49;
    let x_849 : vec4<f32> = x_841.x_AdditionalLightsPosition[x_847];
    u_xlat10 = ((-(x_831) * vec3<f32>(x_844.w, x_844.w, x_844.w)) + vec3<f32>(x_849.x, x_849.y, x_849.z));
    let x_852 : vec3<f32> = u_xlat10;
    let x_853 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(x_852, x_853);
    let x_855 : f32 = u_xlat50;
    u_xlat50 = max(x_855, 0.00006103515625f);
    let x_858 : f32 = u_xlat50;
    u_xlat51 = inverseSqrt(x_858);
    let x_861 : f32 = u_xlat51;
    let x_863 : vec3<f32> = u_xlat10;
    u_xlat11 = (vec3<f32>(x_861, x_861, x_861) * x_863);
    let x_866 : f32 = u_xlat50;
    u_xlat52 = (1.0f / x_866);
    let x_868 : f32 = u_xlat50;
    let x_869 : i32 = u_xlati49;
    let x_871 : f32 = x_841.x_AdditionalLightsAttenuation[x_869].x;
    u_xlat50 = (x_868 * x_871);
    let x_873 : f32 = u_xlat50;
    let x_875 : f32 = u_xlat50;
    u_xlat50 = ((-(x_873) * x_875) + 1.0f);
    let x_878 : f32 = u_xlat50;
    u_xlat50 = max(x_878, 0.0f);
    let x_880 : f32 = u_xlat50;
    let x_881 : f32 = u_xlat50;
    u_xlat50 = (x_880 * x_881);
    let x_883 : f32 = u_xlat50;
    let x_884 : f32 = u_xlat52;
    u_xlat50 = (x_883 * x_884);
    let x_886 : i32 = u_xlati49;
    let x_888 : vec4<f32> = x_841.x_AdditionalLightsSpotDir[x_886];
    let x_890 : vec3<f32> = u_xlat11;
    u_xlat52 = dot(vec3<f32>(x_888.x, x_888.y, x_888.z), x_890);
    let x_892 : f32 = u_xlat52;
    let x_893 : i32 = u_xlati49;
    let x_895 : f32 = x_841.x_AdditionalLightsAttenuation[x_893].z;
    let x_897 : i32 = u_xlati49;
    let x_899 : f32 = x_841.x_AdditionalLightsAttenuation[x_897].w;
    u_xlat52 = ((x_892 * x_895) + x_899);
    let x_901 : f32 = u_xlat52;
    u_xlat52 = clamp(x_901, 0.0f, 1.0f);
    let x_903 : f32 = u_xlat52;
    let x_904 : f32 = u_xlat52;
    u_xlat52 = (x_903 * x_904);
    let x_906 : f32 = u_xlat50;
    let x_907 : f32 = u_xlat52;
    u_xlat50 = (x_906 * x_907);
    let x_911 : i32 = u_xlati49;
    let x_913 : f32 = x_295.x_AdditionalShadowParams[x_911].w;
    u_xlati52 = i32(x_913);
    let x_916 : i32 = u_xlati52;
    u_xlatb38 = (x_916 >= 0i);
    let x_918 : bool = u_xlatb38;
    if (x_918) {
      let x_922 : i32 = u_xlati49;
      let x_924 : f32 = x_295.x_AdditionalShadowParams[x_922].z;
      u_xlatb38 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_924, x_924, x_924, x_924))));
      let x_928 : bool = u_xlatb38;
      if (x_928) {
        let x_933 : vec3<f32> = u_xlat11;
        let x_936 : vec3<f32> = u_xlat11;
        let x_939 : vec4<bool> = (abs(vec4<f32>(x_933.z, x_933.z, x_933.y, x_933.z)) >= abs(vec4<f32>(x_936.x, x_936.y, x_936.x, x_936.x)));
        let x_941 : vec3<bool> = vec3<bool>(x_939.x, x_939.y, x_939.z);
        let x_942 : vec4<bool> = u_xlatb12;
        u_xlatb12 = vec4<bool>(x_941.x, x_941.y, x_941.z, x_942.w);
        let x_945 : bool = u_xlatb12.y;
        let x_947 : bool = u_xlatb12.x;
        u_xlatb38 = (x_945 & x_947);
        let x_949 : vec3<f32> = u_xlat11;
        let x_952 : vec4<bool> = (-(vec4<f32>(x_949.z, x_949.y, x_949.z, x_949.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_953 : vec3<bool> = vec3<bool>(x_952.x, x_952.y, x_952.w);
        let x_954 : vec4<bool> = u_xlatb12;
        u_xlatb12 = vec4<bool>(x_953.x, x_953.y, x_954.z, x_953.z);
        let x_958 : bool = u_xlatb12.x;
        u_xlat12.x = select(4.0f, 5.0f, x_958);
        let x_963 : bool = u_xlatb12.y;
        u_xlat12.y = select(2.0f, 3.0f, x_963);
        let x_969 : bool = u_xlatb12.w;
        u_xlat53 = select(0.0f, 1.0f, x_969);
        let x_972 : bool = u_xlatb12.z;
        if (x_972) {
          let x_977 : f32 = u_xlat12.y;
          x_973 = x_977;
        } else {
          let x_979 : f32 = u_xlat53;
          x_973 = x_979;
        }
        let x_980 : f32 = x_973;
        u_xlat53 = x_980;
        let x_983 : bool = u_xlatb38;
        if (x_983) {
          let x_988 : f32 = u_xlat12.x;
          x_984 = x_988;
        } else {
          let x_990 : f32 = u_xlat53;
          x_984 = x_990;
        }
        let x_991 : f32 = x_984;
        u_xlat38.x = x_991;
        let x_993 : i32 = u_xlati49;
        let x_995 : f32 = x_295.x_AdditionalShadowParams[x_993].w;
        u_xlat53 = trunc(x_995);
        let x_998 : f32 = u_xlat38.x;
        let x_999 : f32 = u_xlat53;
        u_xlat38.x = (x_998 + x_999);
        let x_1003 : f32 = u_xlat38.x;
        u_xlati52 = i32(x_1003);
      }
      let x_1005 : i32 = u_xlati52;
      u_xlati52 = (x_1005 << bitcast<u32>(2i));
      let x_1007 : vec3<f32> = vs_TEXCOORD7;
      let x_1010 : i32 = u_xlati52;
      let x_1013 : i32 = u_xlati52;
      let x_1017 : vec4<f32> = x_295.x_AdditionalLightsWorldToShadow[((x_1010 + 1i) / 4i)][((x_1013 + 1i) % 4i)];
      u_xlat12 = (vec4<f32>(x_1007.y, x_1007.y, x_1007.y, x_1007.y) * x_1017);
      let x_1019 : i32 = u_xlati52;
      let x_1021 : i32 = u_xlati52;
      let x_1024 : vec4<f32> = x_295.x_AdditionalLightsWorldToShadow[(x_1019 / 4i)][(x_1021 % 4i)];
      let x_1025 : vec3<f32> = vs_TEXCOORD7;
      let x_1028 : vec4<f32> = u_xlat12;
      u_xlat12 = ((x_1024 * vec4<f32>(x_1025.x, x_1025.x, x_1025.x, x_1025.x)) + x_1028);
      let x_1030 : i32 = u_xlati52;
      let x_1033 : i32 = u_xlati52;
      let x_1037 : vec4<f32> = x_295.x_AdditionalLightsWorldToShadow[((x_1030 + 2i) / 4i)][((x_1033 + 2i) % 4i)];
      let x_1038 : vec3<f32> = vs_TEXCOORD7;
      let x_1041 : vec4<f32> = u_xlat12;
      u_xlat12 = ((x_1037 * vec4<f32>(x_1038.z, x_1038.z, x_1038.z, x_1038.z)) + x_1041);
      let x_1043 : vec4<f32> = u_xlat12;
      let x_1044 : i32 = u_xlati52;
      let x_1047 : i32 = u_xlati52;
      let x_1051 : vec4<f32> = x_295.x_AdditionalLightsWorldToShadow[((x_1044 + 3i) / 4i)][((x_1047 + 3i) % 4i)];
      u_xlat12 = (x_1043 + x_1051);
      let x_1053 : vec4<f32> = u_xlat12;
      let x_1055 : vec4<f32> = u_xlat12;
      let x_1057 : vec3<f32> = (vec3<f32>(x_1053.x, x_1053.y, x_1053.z) / vec3<f32>(x_1055.w, x_1055.w, x_1055.w));
      let x_1058 : vec4<f32> = u_xlat12;
      u_xlat12 = vec4<f32>(x_1057.x, x_1057.y, x_1057.z, x_1058.w);
      let x_1061 : vec4<f32> = u_xlat12;
      let x_1062 : vec2<f32> = vec2<f32>(x_1061.x, x_1061.y);
      let x_1064 : f32 = u_xlat12.z;
      txVec1 = vec3<f32>(x_1062.x, x_1062.y, x_1064);
      let x_1072 : vec3<f32> = txVec1;
      let x_1074 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1072.xy, x_1072.z);
      u_xlat52 = x_1074;
      let x_1075 : i32 = u_xlati49;
      let x_1077 : f32 = x_295.x_AdditionalShadowParams[x_1075].x;
      u_xlat38.x = (1.0f + -(x_1077));
      let x_1081 : f32 = u_xlat52;
      let x_1082 : i32 = u_xlati49;
      let x_1084 : f32 = x_295.x_AdditionalShadowParams[x_1082].x;
      let x_1087 : f32 = u_xlat38.x;
      u_xlat52 = ((x_1081 * x_1084) + x_1087);
      let x_1090 : f32 = u_xlat12.z;
      u_xlatb38 = (0.0f >= x_1090);
      let x_1094 : f32 = u_xlat12.z;
      u_xlatb53 = (x_1094 >= 1.0f);
      let x_1096 : bool = u_xlatb53;
      let x_1097 : bool = u_xlatb38;
      u_xlatb38 = (x_1096 | x_1097);
      let x_1099 : bool = u_xlatb38;
      let x_1100 : f32 = u_xlat52;
      u_xlat52 = select(x_1100, 1.0f, x_1099);
    } else {
      u_xlat52 = 1.0f;
    }
    let x_1103 : f32 = u_xlat52;
    u_xlat38.x = (-(x_1103) + 1.0f);
    let x_1107 : f32 = u_xlat31;
    let x_1109 : f32 = u_xlat38.x;
    let x_1111 : f32 = u_xlat52;
    u_xlat52 = ((x_1107 * x_1109) + x_1111);
    let x_1114 : i32 = u_xlati49;
    u_xlati38 = (1i << bitcast<u32>((x_1114 & 31i)));
    let x_1118 : i32 = u_xlati38;
    let x_1121 : f32 = x_363.x_AdditionalLightsCookieEnableBits;
    u_xlati38 = bitcast<i32>((bitcast<u32>(x_1118) & bitcast<u32>(x_1121)));
    let x_1125 : i32 = u_xlati38;
    if ((x_1125 != 0i)) {
      let x_1129 : i32 = u_xlati49;
      let x_1131 : f32 = x_363.x_AdditionalLightsLightTypes[x_1129].el;
      u_xlati38 = i32(x_1131);
      let x_1134 : i32 = u_xlati38;
      u_xlati53 = select(1i, 0i, (x_1134 != 0i));
      let x_1138 : i32 = u_xlati49;
      u_xlati54 = (x_1138 << bitcast<u32>(2i));
      let x_1140 : i32 = u_xlati53;
      if ((x_1140 != 0i)) {
        let x_1144 : vec3<f32> = vs_TEXCOORD7;
        let x_1146 : i32 = u_xlati54;
        let x_1149 : i32 = u_xlati54;
        let x_1153 : vec4<f32> = x_363.x_AdditionalLightsWorldToLights[((x_1146 + 1i) / 4i)][((x_1149 + 1i) % 4i)];
        let x_1155 : vec3<f32> = (vec3<f32>(x_1144.y, x_1144.y, x_1144.y) * vec3<f32>(x_1153.x, x_1153.y, x_1153.w));
        let x_1156 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1155.x, x_1155.y, x_1155.z, x_1156.w);
        let x_1158 : i32 = u_xlati54;
        let x_1160 : i32 = u_xlati54;
        let x_1163 : vec4<f32> = x_363.x_AdditionalLightsWorldToLights[(x_1158 / 4i)][(x_1160 % 4i)];
        let x_1165 : vec3<f32> = vs_TEXCOORD7;
        let x_1168 : vec4<f32> = u_xlat12;
        let x_1170 : vec3<f32> = ((vec3<f32>(x_1163.x, x_1163.y, x_1163.w) * vec3<f32>(x_1165.x, x_1165.x, x_1165.x)) + vec3<f32>(x_1168.x, x_1168.y, x_1168.z));
        let x_1171 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1170.x, x_1170.y, x_1170.z, x_1171.w);
        let x_1173 : i32 = u_xlati54;
        let x_1176 : i32 = u_xlati54;
        let x_1180 : vec4<f32> = x_363.x_AdditionalLightsWorldToLights[((x_1173 + 2i) / 4i)][((x_1176 + 2i) % 4i)];
        let x_1182 : vec3<f32> = vs_TEXCOORD7;
        let x_1185 : vec4<f32> = u_xlat12;
        let x_1187 : vec3<f32> = ((vec3<f32>(x_1180.x, x_1180.y, x_1180.w) * vec3<f32>(x_1182.z, x_1182.z, x_1182.z)) + vec3<f32>(x_1185.x, x_1185.y, x_1185.z));
        let x_1188 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1187.x, x_1187.y, x_1187.z, x_1188.w);
        let x_1190 : vec4<f32> = u_xlat12;
        let x_1192 : i32 = u_xlati54;
        let x_1195 : i32 = u_xlati54;
        let x_1199 : vec4<f32> = x_363.x_AdditionalLightsWorldToLights[((x_1192 + 3i) / 4i)][((x_1195 + 3i) % 4i)];
        let x_1201 : vec3<f32> = (vec3<f32>(x_1190.x, x_1190.y, x_1190.z) + vec3<f32>(x_1199.x, x_1199.y, x_1199.w));
        let x_1202 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1201.x, x_1201.y, x_1201.z, x_1202.w);
        let x_1204 : vec4<f32> = u_xlat12;
        let x_1206 : vec4<f32> = u_xlat12;
        let x_1208 : vec2<f32> = (vec2<f32>(x_1204.x, x_1204.y) / vec2<f32>(x_1206.z, x_1206.z));
        let x_1209 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1208.x, x_1208.y, x_1209.z, x_1209.w);
        let x_1211 : vec4<f32> = u_xlat12;
        let x_1214 : vec2<f32> = ((vec2<f32>(x_1211.x, x_1211.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1215 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1214.x, x_1214.y, x_1215.z, x_1215.w);
        let x_1217 : vec4<f32> = u_xlat12;
        let x_1221 : vec2<f32> = clamp(vec2<f32>(x_1217.x, x_1217.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1222 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1221.x, x_1221.y, x_1222.z, x_1222.w);
        let x_1224 : i32 = u_xlati49;
        let x_1226 : vec4<f32> = x_363.x_AdditionalLightsCookieAtlasUVRects[x_1224];
        let x_1228 : vec4<f32> = u_xlat12;
        let x_1231 : i32 = u_xlati49;
        let x_1233 : vec4<f32> = x_363.x_AdditionalLightsCookieAtlasUVRects[x_1231];
        let x_1235 : vec2<f32> = ((vec2<f32>(x_1226.x, x_1226.y) * vec2<f32>(x_1228.x, x_1228.y)) + vec2<f32>(x_1233.z, x_1233.w));
        let x_1236 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1235.x, x_1235.y, x_1236.z, x_1236.w);
      } else {
        let x_1239 : i32 = u_xlati38;
        u_xlatb38 = (x_1239 == 1i);
        let x_1241 : bool = u_xlatb38;
        u_xlati38 = select(0i, 1i, x_1241);
        let x_1243 : i32 = u_xlati38;
        if ((x_1243 != 0i)) {
          let x_1247 : vec3<f32> = vs_TEXCOORD7;
          let x_1249 : i32 = u_xlati54;
          let x_1252 : i32 = u_xlati54;
          let x_1256 : vec4<f32> = x_363.x_AdditionalLightsWorldToLights[((x_1249 + 1i) / 4i)][((x_1252 + 1i) % 4i)];
          u_xlat38 = (vec2<f32>(x_1247.y, x_1247.y) * vec2<f32>(x_1256.x, x_1256.y));
          let x_1259 : i32 = u_xlati54;
          let x_1261 : i32 = u_xlati54;
          let x_1264 : vec4<f32> = x_363.x_AdditionalLightsWorldToLights[(x_1259 / 4i)][(x_1261 % 4i)];
          let x_1266 : vec3<f32> = vs_TEXCOORD7;
          let x_1269 : vec2<f32> = u_xlat38;
          u_xlat38 = ((vec2<f32>(x_1264.x, x_1264.y) * vec2<f32>(x_1266.x, x_1266.x)) + x_1269);
          let x_1271 : i32 = u_xlati54;
          let x_1274 : i32 = u_xlati54;
          let x_1278 : vec4<f32> = x_363.x_AdditionalLightsWorldToLights[((x_1271 + 2i) / 4i)][((x_1274 + 2i) % 4i)];
          let x_1280 : vec3<f32> = vs_TEXCOORD7;
          let x_1283 : vec2<f32> = u_xlat38;
          u_xlat38 = ((vec2<f32>(x_1278.x, x_1278.y) * vec2<f32>(x_1280.z, x_1280.z)) + x_1283);
          let x_1285 : vec2<f32> = u_xlat38;
          let x_1286 : i32 = u_xlati54;
          let x_1289 : i32 = u_xlati54;
          let x_1293 : vec4<f32> = x_363.x_AdditionalLightsWorldToLights[((x_1286 + 3i) / 4i)][((x_1289 + 3i) % 4i)];
          u_xlat38 = (x_1285 + vec2<f32>(x_1293.x, x_1293.y));
          let x_1296 : vec2<f32> = u_xlat38;
          u_xlat38 = ((x_1296 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1299 : vec2<f32> = u_xlat38;
          u_xlat38 = fract(x_1299);
          let x_1301 : i32 = u_xlati49;
          let x_1303 : vec4<f32> = x_363.x_AdditionalLightsCookieAtlasUVRects[x_1301];
          let x_1305 : vec2<f32> = u_xlat38;
          let x_1307 : i32 = u_xlati49;
          let x_1309 : vec4<f32> = x_363.x_AdditionalLightsCookieAtlasUVRects[x_1307];
          let x_1311 : vec2<f32> = ((vec2<f32>(x_1303.x, x_1303.y) * x_1305) + vec2<f32>(x_1309.z, x_1309.w));
          let x_1312 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1311.x, x_1311.y, x_1312.z, x_1312.w);
        } else {
          let x_1316 : vec3<f32> = vs_TEXCOORD7;
          let x_1318 : i32 = u_xlati54;
          let x_1321 : i32 = u_xlati54;
          let x_1325 : vec4<f32> = x_363.x_AdditionalLightsWorldToLights[((x_1318 + 1i) / 4i)][((x_1321 + 1i) % 4i)];
          u_xlat13 = (vec4<f32>(x_1316.y, x_1316.y, x_1316.y, x_1316.y) * x_1325);
          let x_1327 : i32 = u_xlati54;
          let x_1329 : i32 = u_xlati54;
          let x_1332 : vec4<f32> = x_363.x_AdditionalLightsWorldToLights[(x_1327 / 4i)][(x_1329 % 4i)];
          let x_1333 : vec3<f32> = vs_TEXCOORD7;
          let x_1336 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_1332 * vec4<f32>(x_1333.x, x_1333.x, x_1333.x, x_1333.x)) + x_1336);
          let x_1338 : i32 = u_xlati54;
          let x_1341 : i32 = u_xlati54;
          let x_1345 : vec4<f32> = x_363.x_AdditionalLightsWorldToLights[((x_1338 + 2i) / 4i)][((x_1341 + 2i) % 4i)];
          let x_1346 : vec3<f32> = vs_TEXCOORD7;
          let x_1349 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_1345 * vec4<f32>(x_1346.z, x_1346.z, x_1346.z, x_1346.z)) + x_1349);
          let x_1351 : vec4<f32> = u_xlat13;
          let x_1352 : i32 = u_xlati54;
          let x_1355 : i32 = u_xlati54;
          let x_1359 : vec4<f32> = x_363.x_AdditionalLightsWorldToLights[((x_1352 + 3i) / 4i)][((x_1355 + 3i) % 4i)];
          u_xlat13 = (x_1351 + x_1359);
          let x_1361 : vec4<f32> = u_xlat13;
          let x_1363 : vec4<f32> = u_xlat13;
          let x_1365 : vec3<f32> = (vec3<f32>(x_1361.x, x_1361.y, x_1361.z) / vec3<f32>(x_1363.w, x_1363.w, x_1363.w));
          let x_1366 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1365.x, x_1365.y, x_1365.z, x_1366.w);
          let x_1368 : vec4<f32> = u_xlat13;
          let x_1370 : vec4<f32> = u_xlat13;
          u_xlat38.x = dot(vec3<f32>(x_1368.x, x_1368.y, x_1368.z), vec3<f32>(x_1370.x, x_1370.y, x_1370.z));
          let x_1375 : f32 = u_xlat38.x;
          u_xlat38.x = inverseSqrt(x_1375);
          let x_1378 : vec2<f32> = u_xlat38;
          let x_1380 : vec4<f32> = u_xlat13;
          let x_1382 : vec3<f32> = (vec3<f32>(x_1378.x, x_1378.x, x_1378.x) * vec3<f32>(x_1380.x, x_1380.y, x_1380.z));
          let x_1383 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1382.x, x_1382.y, x_1382.z, x_1383.w);
          let x_1385 : vec4<f32> = u_xlat13;
          u_xlat38.x = dot(abs(vec3<f32>(x_1385.x, x_1385.y, x_1385.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1392 : f32 = u_xlat38.x;
          u_xlat38.x = max(x_1392, 0.00000099999999747524f);
          let x_1397 : f32 = u_xlat38.x;
          u_xlat38.x = (1.0f / x_1397);
          let x_1401 : vec2<f32> = u_xlat38;
          let x_1403 : vec4<f32> = u_xlat13;
          u_xlat14 = (vec3<f32>(x_1401.x, x_1401.x, x_1401.x) * vec3<f32>(x_1403.z, x_1403.x, x_1403.y));
          let x_1407 : f32 = u_xlat14.x;
          u_xlat14.x = -(x_1407);
          let x_1411 : f32 = u_xlat14.x;
          u_xlat14.x = clamp(x_1411, 0.0f, 1.0f);
          let x_1415 : vec3<f32> = u_xlat14;
          let x_1417 : vec4<bool> = (vec4<f32>(x_1415.y, x_1415.z, x_1415.y, x_1415.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb42 = vec2<bool>(x_1417.x, x_1417.y);
          let x_1421 : bool = u_xlatb42.x;
          if (x_1421) {
            let x_1426 : f32 = u_xlat14.x;
            x_1422 = x_1426;
          } else {
            let x_1429 : f32 = u_xlat14.x;
            x_1422 = -(x_1429);
          }
          let x_1431 : f32 = x_1422;
          u_xlat42.x = x_1431;
          let x_1434 : bool = u_xlatb42.y;
          if (x_1434) {
            let x_1439 : f32 = u_xlat14.x;
            x_1435 = x_1439;
          } else {
            let x_1442 : f32 = u_xlat14.x;
            x_1435 = -(x_1442);
          }
          let x_1444 : f32 = x_1435;
          u_xlat42.y = x_1444;
          let x_1446 : vec4<f32> = u_xlat13;
          let x_1448 : vec2<f32> = u_xlat38;
          let x_1451 : vec2<f32> = u_xlat42;
          u_xlat38 = ((vec2<f32>(x_1446.x, x_1446.y) * vec2<f32>(x_1448.x, x_1448.x)) + x_1451);
          let x_1453 : vec2<f32> = u_xlat38;
          u_xlat38 = ((x_1453 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1456 : vec2<f32> = u_xlat38;
          u_xlat38 = clamp(x_1456, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1460 : i32 = u_xlati49;
          let x_1462 : vec4<f32> = x_363.x_AdditionalLightsCookieAtlasUVRects[x_1460];
          let x_1464 : vec2<f32> = u_xlat38;
          let x_1466 : i32 = u_xlati49;
          let x_1468 : vec4<f32> = x_363.x_AdditionalLightsCookieAtlasUVRects[x_1466];
          let x_1470 : vec2<f32> = ((vec2<f32>(x_1462.x, x_1462.y) * x_1464) + vec2<f32>(x_1468.z, x_1468.w));
          let x_1471 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1470.x, x_1470.y, x_1471.z, x_1471.w);
        }
      }
      let x_1478 : vec4<f32> = u_xlat12;
      let x_1480 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1478.x, x_1478.y), 0.0f);
      u_xlat12 = x_1480;
      let x_1482 : bool = u_xlatb8.y;
      if (x_1482) {
        let x_1487 : f32 = u_xlat12.w;
        x_1483 = x_1487;
      } else {
        let x_1490 : f32 = u_xlat12.x;
        x_1483 = x_1490;
      }
      let x_1491 : f32 = x_1483;
      u_xlat38.x = x_1491;
      let x_1494 : bool = u_xlatb8.x;
      if (x_1494) {
        let x_1498 : vec4<f32> = u_xlat12;
        x_1495 = vec3<f32>(x_1498.x, x_1498.y, x_1498.z);
      } else {
        let x_1501 : vec2<f32> = u_xlat38;
        x_1495 = vec3<f32>(x_1501.x, x_1501.x, x_1501.x);
      }
      let x_1503 : vec3<f32> = x_1495;
      let x_1504 : vec4<f32> = u_xlat12;
      u_xlat12 = vec4<f32>(x_1503.x, x_1503.y, x_1503.z, x_1504.w);
    } else {
      u_xlat12.x = 1.0f;
      u_xlat12.y = 1.0f;
      u_xlat12.z = 1.0f;
    }
    let x_1510 : vec4<f32> = u_xlat12;
    let x_1512 : i32 = u_xlati49;
    let x_1514 : vec4<f32> = x_841.x_AdditionalLightsColor[x_1512];
    let x_1516 : vec3<f32> = (vec3<f32>(x_1510.x, x_1510.y, x_1510.z) * vec3<f32>(x_1514.x, x_1514.y, x_1514.z));
    let x_1517 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_1516.x, x_1516.y, x_1516.z, x_1517.w);
    let x_1519 : f32 = u_xlat50;
    let x_1520 : f32 = u_xlat52;
    u_xlat49 = (x_1519 * x_1520);
    let x_1522 : vec4<f32> = u_xlat2;
    let x_1524 : vec3<f32> = u_xlat11;
    u_xlat50 = dot(vec3<f32>(x_1522.x, x_1522.y, x_1522.z), x_1524);
    let x_1526 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1526, 0.0f, 1.0f);
    let x_1528 : f32 = u_xlat49;
    let x_1529 : f32 = u_xlat50;
    u_xlat49 = (x_1528 * x_1529);
    let x_1531 : f32 = u_xlat49;
    let x_1533 : vec4<f32> = u_xlat12;
    let x_1535 : vec3<f32> = (vec3<f32>(x_1531, x_1531, x_1531) * vec3<f32>(x_1533.x, x_1533.y, x_1533.z));
    let x_1536 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_1535.x, x_1535.y, x_1535.z, x_1536.w);
    let x_1538 : vec3<f32> = u_xlat10;
    let x_1539 : f32 = u_xlat51;
    let x_1542 : vec3<f32> = u_xlat6;
    u_xlat10 = ((x_1538 * vec3<f32>(x_1539, x_1539, x_1539)) + x_1542);
    let x_1544 : vec3<f32> = u_xlat10;
    let x_1545 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(x_1544, x_1545);
    let x_1547 : f32 = u_xlat49;
    u_xlat49 = max(x_1547, 1.17549435e-38f);
    let x_1549 : f32 = u_xlat49;
    u_xlat49 = inverseSqrt(x_1549);
    let x_1551 : f32 = u_xlat49;
    let x_1553 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1551, x_1551, x_1551) * x_1553);
    let x_1555 : vec4<f32> = u_xlat2;
    let x_1557 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1555.x, x_1555.y, x_1555.z), x_1557);
    let x_1559 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1559, 0.0f, 1.0f);
    let x_1561 : vec3<f32> = u_xlat11;
    let x_1562 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(x_1561, x_1562);
    let x_1564 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1564, 0.0f, 1.0f);
    let x_1566 : f32 = u_xlat49;
    let x_1567 : f32 = u_xlat49;
    u_xlat49 = (x_1566 * x_1567);
    let x_1569 : f32 = u_xlat49;
    let x_1571 : f32 = u_xlat1.x;
    u_xlat49 = ((x_1569 * x_1571) + 1.00001001358032226562f);
    let x_1574 : f32 = u_xlat50;
    let x_1575 : f32 = u_xlat50;
    u_xlat50 = (x_1574 * x_1575);
    let x_1577 : f32 = u_xlat49;
    let x_1578 : f32 = u_xlat49;
    u_xlat49 = (x_1577 * x_1578);
    let x_1580 : f32 = u_xlat50;
    u_xlat50 = max(x_1580, 0.10000000149011611938f);
    let x_1582 : f32 = u_xlat49;
    let x_1583 : f32 = u_xlat50;
    u_xlat49 = (x_1582 * x_1583);
    let x_1585 : f32 = u_xlat46;
    let x_1586 : f32 = u_xlat49;
    u_xlat49 = (x_1585 * x_1586);
    let x_1588 : f32 = u_xlat47;
    let x_1589 : f32 = u_xlat49;
    u_xlat49 = (x_1588 / x_1589);
    let x_1591 : vec4<f32> = u_xlat0;
    let x_1593 : f32 = u_xlat49;
    let x_1596 : vec4<f32> = u_xlat4;
    u_xlat10 = ((vec3<f32>(x_1591.x, x_1591.y, x_1591.z) * vec3<f32>(x_1593, x_1593, x_1593)) + vec3<f32>(x_1596.x, x_1596.y, x_1596.z));
    let x_1599 : vec3<f32> = u_xlat10;
    let x_1600 : vec4<f32> = u_xlat12;
    let x_1603 : vec3<f32> = u_xlat9;
    u_xlat9 = ((x_1599 * vec3<f32>(x_1600.x, x_1600.y, x_1600.z)) + x_1603);

    continuing {
      let x_1605 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1605 + bitcast<u32>(1i));
    }
  }
  let x_1607 : vec4<f32> = u_xlat7;
  let x_1609 : vec4<f32> = u_xlat5;
  let x_1612 : vec3<f32> = u_xlat3;
  let x_1613 : vec3<f32> = ((vec3<f32>(x_1607.x, x_1607.y, x_1607.z) * vec3<f32>(x_1609.x, x_1609.y, x_1609.z)) + x_1612);
  let x_1614 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1613.x, x_1613.y, x_1613.z, x_1614.w);
  let x_1616 : vec3<f32> = u_xlat9;
  let x_1617 : vec4<f32> = u_xlat0;
  let x_1619 : vec3<f32> = (x_1616 + vec3<f32>(x_1617.x, x_1617.y, x_1617.z));
  let x_1620 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1619.x, x_1619.y, x_1619.z, x_1620.w);
  let x_1622 : f32 = u_xlat16;
  let x_1623 : f32 = u_xlat16;
  u_xlat45 = (x_1622 * -(x_1623));
  let x_1626 : f32 = u_xlat45;
  u_xlat45 = exp2(x_1626);
  let x_1628 : vec4<f32> = u_xlat0;
  let x_1632 : vec4<f32> = x_29.unity_FogColor;
  let x_1635 : vec3<f32> = (vec3<f32>(x_1628.x, x_1628.y, x_1628.z) + -(vec3<f32>(x_1632.x, x_1632.y, x_1632.z)));
  let x_1636 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1635.x, x_1635.y, x_1635.z, x_1636.w);
  let x_1640 : f32 = u_xlat45;
  let x_1642 : vec4<f32> = u_xlat0;
  let x_1646 : vec4<f32> = x_29.unity_FogColor;
  let x_1648 : vec3<f32> = ((vec3<f32>(x_1640, x_1640, x_1640) * vec3<f32>(x_1642.x, x_1642.y, x_1642.z)) + vec3<f32>(x_1646.x, x_1646.y, x_1646.z));
  let x_1649 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1648.x, x_1648.y, x_1648.z, x_1649.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(5) vs_TEXCOORD8_param : vec4<f32>, @location(2) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD5_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


