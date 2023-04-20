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

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MetallicTex : sampler;

var<private> u_xlat13 : f32;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_124 : UnityPerDraw;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat25 : f32;

var<private> u_xlat37 : f32;

var<private> u_xlat38 : f32;

var<private> u_xlat36 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat39 : f32;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat40 : f32;

@group(1) @binding(3) var<uniform> x_294 : LightShadows;

var<private> u_xlatb40 : bool;

var<private> u_xlatb5 : bool;

var<private> u_xlat17 : f32;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlat41 : f32;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat42 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlatu36 : u32;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlatu40 : u32;

var<private> u_xlati41 : i32;

var<private> u_xlati40 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_682 : AdditionalLights;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat43 : f32;

var<private> u_xlati43 : i32;

var<private> u_xlatb44 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat45 : f32;

var<private> u_xlat44 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb45 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu39 : u32;

fn main_1() {
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_816 : f32;
  var x_826 : f32;
  var txVec1 : vec3<f32>;
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
  u_xlat13 = dot(vec3<f32>(x_55.x, x_55.y, x_55.z), vec3<f32>(x_57.x, x_57.y, x_57.z));
  let x_60 : f32 = u_xlat13;
  u_xlat13 = inverseSqrt(x_60);
  let x_63 : f32 = u_xlat13;
  let x_65 : vec4<f32> = vs_TEXCOORD3;
  let x_67 : vec3<f32> = (vec3<f32>(x_63, x_63, x_63) * vec3<f32>(x_65.x, x_65.y, x_65.z));
  let x_68 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_67.x, x_67.y, x_67.z, x_68.w);
  let x_75 : f32 = vs_TEXCOORD7.y;
  let x_80 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat13 = (x_75 * x_80);
  let x_83 : f32 = x_29.unity_MatrixV[0i].z;
  let x_85 : f32 = vs_TEXCOORD7.x;
  let x_87 : f32 = u_xlat13;
  u_xlat13 = ((x_83 * x_85) + x_87);
  let x_91 : f32 = x_29.unity_MatrixV[2i].z;
  let x_93 : f32 = vs_TEXCOORD7.z;
  let x_95 : f32 = u_xlat13;
  u_xlat13 = ((x_91 * x_93) + x_95);
  let x_97 : f32 = u_xlat13;
  let x_100 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat13 = (x_97 + x_100);
  let x_102 : f32 = u_xlat13;
  let x_106 : f32 = x_29.x_ProjectionParams.y;
  u_xlat13 = (-(x_102) + -(x_106));
  let x_109 : f32 = u_xlat13;
  u_xlat13 = max(x_109, 0.0f);
  let x_112 : f32 = u_xlat13;
  let x_115 : f32 = x_29.unity_FogParams.x;
  u_xlat13 = (x_112 * x_115);
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
  u_xlat25 = (x_171 * x_173);
  let x_176 : f32 = u_xlat2.x;
  let x_178 : f32 = u_xlat2.x;
  let x_180 : f32 = u_xlat25;
  u_xlat25 = ((x_176 * x_178) + -(x_180));
  let x_185 : vec4<f32> = x_124.unity_SHC;
  let x_187 : f32 = u_xlat25;
  let x_190 : vec3<f32> = u_xlat5;
  let x_191 : vec3<f32> = ((vec3<f32>(x_185.x, x_185.y, x_185.z) * vec3<f32>(x_187, x_187, x_187)) + x_190);
  let x_192 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
  let x_194 : vec3<f32> = u_xlat3;
  let x_195 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_194 + vec3<f32>(x_195.x, x_195.y, x_195.z));
  let x_198 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_198, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_202 : f32 = u_xlat1.x;
  u_xlat25 = ((-(x_202) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_208 : f32 = u_xlat25;
  u_xlat37 = (-(x_208) + 1.0f);
  let x_211 : vec4<f32> = u_xlat0;
  let x_213 : f32 = u_xlat25;
  let x_215 : vec3<f32> = (vec3<f32>(x_211.x, x_211.y, x_211.z) * vec3<f32>(x_213, x_213, x_213));
  let x_216 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_215.x, x_215.y, x_215.z, x_216.w);
  let x_218 : vec4<f32> = u_xlat0;
  let x_222 : vec3<f32> = (vec3<f32>(x_218.x, x_218.y, x_218.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_223 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_222.x, x_222.y, x_222.z, x_223.w);
  let x_225 : vec3<f32> = u_xlat1;
  let x_227 : vec4<f32> = u_xlat0;
  let x_232 : vec3<f32> = ((vec3<f32>(x_225.x, x_225.x, x_225.x) * vec3<f32>(x_227.x, x_227.y, x_227.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_233 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_232.x, x_232.y, x_232.z, x_233.w);
  let x_236 : f32 = u_xlat0.w;
  u_xlat1.x = (-(x_236) + 1.0f);
  let x_241 : f32 = u_xlat1.x;
  let x_243 : f32 = u_xlat1.x;
  u_xlat25 = (x_241 * x_243);
  let x_245 : f32 = u_xlat25;
  u_xlat25 = max(x_245, 0.0078125f);
  let x_249 : f32 = u_xlat25;
  let x_250 : f32 = u_xlat25;
  u_xlat38 = (x_249 * x_250);
  let x_254 : f32 = u_xlat0.w;
  let x_255 : f32 = u_xlat37;
  u_xlat36 = (x_254 + x_255);
  let x_257 : f32 = u_xlat36;
  u_xlat36 = clamp(x_257, 0.0f, 1.0f);
  let x_259 : f32 = u_xlat25;
  u_xlat37 = ((x_259 * 4.0f) + 2.0f);
  let x_267 : vec4<f32> = vs_TEXCOORD8;
  let x_268 : vec2<f32> = vec2<f32>(x_267.x, x_267.y);
  let x_270 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_268.x, x_268.y, x_270);
  let x_283 : vec3<f32> = txVec0;
  let x_285 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_283.xy, x_283.z);
  u_xlat39 = x_285;
  let x_296 : f32 = x_294.x_MainLightShadowParams.x;
  u_xlat40 = (-(x_296) + 1.0f);
  let x_299 : f32 = u_xlat39;
  let x_301 : f32 = x_294.x_MainLightShadowParams.x;
  let x_303 : f32 = u_xlat40;
  u_xlat39 = ((x_299 * x_301) + x_303);
  let x_309 : f32 = vs_TEXCOORD8.z;
  u_xlatb40 = (0.0f >= x_309);
  let x_313 : f32 = vs_TEXCOORD8.z;
  u_xlatb5 = (x_313 >= 1.0f);
  let x_315 : bool = u_xlatb40;
  let x_316 : bool = u_xlatb5;
  u_xlatb40 = (x_315 | x_316);
  let x_318 : bool = u_xlatb40;
  let x_319 : f32 = u_xlat39;
  u_xlat39 = select(x_319, 1.0f, x_318);
  let x_321 : vec3<f32> = vs_TEXCOORD7;
  let x_325 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat5 = (x_321 + -(x_325));
  let x_328 : vec3<f32> = u_xlat5;
  let x_329 : vec3<f32> = u_xlat5;
  u_xlat40 = dot(x_328, x_329);
  let x_331 : f32 = u_xlat40;
  let x_333 : f32 = x_294.x_MainLightShadowParams.z;
  let x_336 : f32 = x_294.x_MainLightShadowParams.w;
  u_xlat5.x = ((x_331 * x_333) + x_336);
  let x_340 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_340, 0.0f, 1.0f);
  let x_344 : f32 = u_xlat39;
  u_xlat17 = (-(x_344) + 1.0f);
  let x_348 : f32 = u_xlat5.x;
  let x_349 : f32 = u_xlat17;
  let x_351 : f32 = u_xlat39;
  u_xlat39 = ((x_348 * x_349) + x_351);
  let x_354 : f32 = vs_TEXCOORD3.w;
  u_xlat5.x = x_354;
  let x_358 : f32 = vs_TEXCOORD4.w;
  u_xlat5.y = x_358;
  let x_362 : f32 = vs_TEXCOORD5.w;
  u_xlat5.z = x_362;
  let x_365 : vec3<f32> = u_xlat5;
  let x_367 : vec4<f32> = u_xlat2;
  u_xlat41 = dot(-(x_365), vec3<f32>(x_367.x, x_367.y, x_367.z));
  let x_370 : f32 = u_xlat41;
  let x_371 : f32 = u_xlat41;
  u_xlat41 = (x_370 + x_371);
  let x_374 : vec4<f32> = u_xlat2;
  let x_376 : f32 = u_xlat41;
  let x_380 : vec3<f32> = u_xlat5;
  let x_382 : vec3<f32> = ((vec3<f32>(x_374.x, x_374.y, x_374.z) * -(vec3<f32>(x_376, x_376, x_376))) + -(x_380));
  let x_383 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_382.x, x_382.y, x_382.z, x_383.w);
  let x_385 : vec4<f32> = u_xlat2;
  let x_387 : vec3<f32> = u_xlat5;
  u_xlat41 = dot(vec3<f32>(x_385.x, x_385.y, x_385.z), x_387);
  let x_389 : f32 = u_xlat41;
  u_xlat41 = clamp(x_389, 0.0f, 1.0f);
  let x_391 : f32 = u_xlat41;
  u_xlat41 = (-(x_391) + 1.0f);
  let x_394 : f32 = u_xlat41;
  let x_395 : f32 = u_xlat41;
  u_xlat41 = (x_394 * x_395);
  let x_397 : f32 = u_xlat41;
  let x_398 : f32 = u_xlat41;
  u_xlat41 = (x_397 * x_398);
  let x_402 : f32 = u_xlat1.x;
  u_xlat42 = ((-(x_402) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_409 : f32 = u_xlat1.x;
  let x_410 : f32 = u_xlat42;
  u_xlat1.x = (x_409 * x_410);
  let x_414 : f32 = u_xlat1.x;
  u_xlat1.x = (x_414 * 6.0f);
  let x_426 : vec4<f32> = u_xlat6;
  let x_429 : f32 = u_xlat1.x;
  let x_430 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_426.x, x_426.y, x_426.z), x_429);
  u_xlat6 = x_430;
  let x_432 : f32 = u_xlat6.w;
  u_xlat1.x = (x_432 + -1.0f);
  let x_437 : f32 = x_124.unity_SpecCube0_HDR.w;
  let x_439 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_437 * x_439) + 1.0f);
  let x_444 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_444, 0.0f);
  let x_448 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_448);
  let x_452 : f32 = u_xlat1.x;
  let x_454 : f32 = x_124.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_452 * x_454);
  let x_458 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_458);
  let x_462 : f32 = u_xlat1.x;
  let x_464 : f32 = x_124.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_462 * x_464);
  let x_467 : vec4<f32> = u_xlat6;
  let x_469 : vec3<f32> = u_xlat1;
  let x_471 : vec3<f32> = (vec3<f32>(x_467.x, x_467.y, x_467.z) * vec3<f32>(x_469.x, x_469.x, x_469.x));
  let x_472 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_471.x, x_471.y, x_471.z, x_472.w);
  let x_474 : f32 = u_xlat25;
  let x_476 : f32 = u_xlat25;
  let x_480 : vec2<f32> = ((vec2<f32>(x_474, x_474) * vec2<f32>(x_476, x_476)) + vec2<f32>(-1.0f, 1.0f));
  let x_481 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_480.x, x_481.y, x_480.y);
  let x_484 : f32 = u_xlat1.z;
  u_xlat25 = (1.0f / x_484);
  let x_487 : vec4<f32> = u_xlat0;
  let x_490 : f32 = u_xlat36;
  u_xlat7 = (-(vec3<f32>(x_487.x, x_487.y, x_487.z)) + vec3<f32>(x_490, x_490, x_490));
  let x_493 : f32 = u_xlat41;
  let x_495 : vec3<f32> = u_xlat7;
  let x_497 : vec4<f32> = u_xlat0;
  u_xlat7 = ((vec3<f32>(x_493, x_493, x_493) * x_495) + vec3<f32>(x_497.x, x_497.y, x_497.z));
  let x_500 : f32 = u_xlat25;
  let x_502 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_500, x_500, x_500) * x_502);
  let x_504 : vec4<f32> = u_xlat6;
  let x_506 : vec3<f32> = u_xlat7;
  let x_507 : vec3<f32> = (vec3<f32>(x_504.x, x_504.y, x_504.z) * x_506);
  let x_508 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_507.x, x_507.y, x_507.z, x_508.w);
  let x_510 : vec3<f32> = u_xlat3;
  let x_511 : vec4<f32> = u_xlat4;
  let x_514 : vec4<f32> = u_xlat6;
  u_xlat3 = ((x_510 * vec3<f32>(x_511.x, x_511.y, x_511.z)) + vec3<f32>(x_514.x, x_514.y, x_514.z));
  let x_517 : f32 = u_xlat39;
  let x_519 : f32 = x_124.unity_LightData.z;
  u_xlat36 = (x_517 * x_519);
  let x_521 : vec4<f32> = u_xlat2;
  let x_524 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat25 = dot(vec3<f32>(x_521.x, x_521.y, x_521.z), vec3<f32>(x_524.x, x_524.y, x_524.z));
  let x_527 : f32 = u_xlat25;
  u_xlat25 = clamp(x_527, 0.0f, 1.0f);
  let x_529 : f32 = u_xlat36;
  let x_530 : f32 = u_xlat25;
  u_xlat36 = (x_529 * x_530);
  let x_532 : f32 = u_xlat36;
  let x_535 : vec4<f32> = x_29.x_MainLightColor;
  let x_537 : vec3<f32> = (vec3<f32>(x_532, x_532, x_532) * vec3<f32>(x_535.x, x_535.y, x_535.z));
  let x_538 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_537.x, x_537.y, x_537.z, x_538.w);
  let x_540 : vec3<f32> = u_xlat5;
  let x_542 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat7 = (x_540 + vec3<f32>(x_542.x, x_542.y, x_542.z));
  let x_545 : vec3<f32> = u_xlat7;
  let x_546 : vec3<f32> = u_xlat7;
  u_xlat36 = dot(x_545, x_546);
  let x_548 : f32 = u_xlat36;
  u_xlat36 = max(x_548, 1.17549435e-38f);
  let x_551 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_551);
  let x_553 : f32 = u_xlat36;
  let x_555 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_553, x_553, x_553) * x_555);
  let x_557 : vec4<f32> = u_xlat2;
  let x_559 : vec3<f32> = u_xlat7;
  u_xlat36 = dot(vec3<f32>(x_557.x, x_557.y, x_557.z), x_559);
  let x_561 : f32 = u_xlat36;
  u_xlat36 = clamp(x_561, 0.0f, 1.0f);
  let x_564 : vec4<f32> = x_29.x_MainLightPosition;
  let x_566 : vec3<f32> = u_xlat7;
  u_xlat25 = dot(vec3<f32>(x_564.x, x_564.y, x_564.z), x_566);
  let x_568 : f32 = u_xlat25;
  u_xlat25 = clamp(x_568, 0.0f, 1.0f);
  let x_570 : f32 = u_xlat36;
  let x_571 : f32 = u_xlat36;
  u_xlat36 = (x_570 * x_571);
  let x_573 : f32 = u_xlat36;
  let x_575 : f32 = u_xlat1.x;
  u_xlat36 = ((x_573 * x_575) + 1.00001001358032226562f);
  let x_579 : f32 = u_xlat25;
  let x_580 : f32 = u_xlat25;
  u_xlat25 = (x_579 * x_580);
  let x_582 : f32 = u_xlat36;
  let x_583 : f32 = u_xlat36;
  u_xlat36 = (x_582 * x_583);
  let x_585 : f32 = u_xlat25;
  u_xlat25 = max(x_585, 0.10000000149011611938f);
  let x_588 : f32 = u_xlat36;
  let x_589 : f32 = u_xlat25;
  u_xlat36 = (x_588 * x_589);
  let x_591 : f32 = u_xlat37;
  let x_592 : f32 = u_xlat36;
  u_xlat36 = (x_591 * x_592);
  let x_594 : f32 = u_xlat38;
  let x_595 : f32 = u_xlat36;
  u_xlat36 = (x_594 / x_595);
  let x_597 : vec4<f32> = u_xlat0;
  let x_599 : f32 = u_xlat36;
  let x_602 : vec4<f32> = u_xlat4;
  u_xlat7 = ((vec3<f32>(x_597.x, x_597.y, x_597.z) * vec3<f32>(x_599, x_599, x_599)) + vec3<f32>(x_602.x, x_602.y, x_602.z));
  let x_606 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_608 : f32 = x_124.unity_LightData.y;
  u_xlat36 = min(x_606, x_608);
  let x_612 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_612));
  let x_615 : f32 = u_xlat40;
  let x_618 : f32 = x_294.x_AdditionalShadowFadeParams.x;
  let x_621 : f32 = x_294.x_AdditionalShadowFadeParams.y;
  u_xlat25 = ((x_615 * x_618) + x_621);
  let x_623 : f32 = u_xlat25;
  u_xlat25 = clamp(x_623, 0.0f, 1.0f);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_636 : u32 = u_xlatu_loop_1;
    let x_637 : u32 = u_xlatu36;
    if ((x_636 < x_637)) {
    } else {
      break;
    }
    let x_640 : u32 = u_xlatu_loop_1;
    u_xlatu40 = (x_640 >> 2u);
    let x_644 : u32 = u_xlatu_loop_1;
    u_xlati41 = bitcast<i32>((x_644 & 3u));
    let x_647 : u32 = u_xlatu40;
    let x_650 : vec4<f32> = x_124.unity_LightIndices[bitcast<i32>(x_647)];
    let x_660 : i32 = u_xlati41;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_665 : vec4<u32> = indexable[x_660];
    u_xlat40 = dot(x_650, bitcast<vec4<f32>>(x_665));
    let x_669 : f32 = u_xlat40;
    u_xlati40 = i32(x_669);
    let x_672 : vec3<f32> = vs_TEXCOORD7;
    let x_683 : i32 = u_xlati40;
    let x_685 : vec4<f32> = x_682.x_AdditionalLightsPosition[x_683];
    let x_688 : i32 = u_xlati40;
    let x_690 : vec4<f32> = x_682.x_AdditionalLightsPosition[x_688];
    u_xlat9 = ((-(x_672) * vec3<f32>(x_685.w, x_685.w, x_685.w)) + vec3<f32>(x_690.x, x_690.y, x_690.z));
    let x_693 : vec3<f32> = u_xlat9;
    let x_694 : vec3<f32> = u_xlat9;
    u_xlat41 = dot(x_693, x_694);
    let x_696 : f32 = u_xlat41;
    u_xlat41 = max(x_696, 0.00006103515625f);
    let x_699 : f32 = u_xlat41;
    u_xlat42 = inverseSqrt(x_699);
    let x_702 : f32 = u_xlat42;
    let x_704 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_702, x_702, x_702) * x_704);
    let x_707 : f32 = u_xlat41;
    u_xlat43 = (1.0f / x_707);
    let x_709 : f32 = u_xlat41;
    let x_710 : i32 = u_xlati40;
    let x_712 : f32 = x_682.x_AdditionalLightsAttenuation[x_710].x;
    u_xlat41 = (x_709 * x_712);
    let x_714 : f32 = u_xlat41;
    let x_716 : f32 = u_xlat41;
    u_xlat41 = ((-(x_714) * x_716) + 1.0f);
    let x_719 : f32 = u_xlat41;
    u_xlat41 = max(x_719, 0.0f);
    let x_721 : f32 = u_xlat41;
    let x_722 : f32 = u_xlat41;
    u_xlat41 = (x_721 * x_722);
    let x_724 : f32 = u_xlat41;
    let x_725 : f32 = u_xlat43;
    u_xlat41 = (x_724 * x_725);
    let x_727 : i32 = u_xlati40;
    let x_729 : vec4<f32> = x_682.x_AdditionalLightsSpotDir[x_727];
    let x_731 : vec3<f32> = u_xlat10;
    u_xlat43 = dot(vec3<f32>(x_729.x, x_729.y, x_729.z), x_731);
    let x_733 : f32 = u_xlat43;
    let x_734 : i32 = u_xlati40;
    let x_736 : f32 = x_682.x_AdditionalLightsAttenuation[x_734].z;
    let x_738 : i32 = u_xlati40;
    let x_740 : f32 = x_682.x_AdditionalLightsAttenuation[x_738].w;
    u_xlat43 = ((x_733 * x_736) + x_740);
    let x_742 : f32 = u_xlat43;
    u_xlat43 = clamp(x_742, 0.0f, 1.0f);
    let x_744 : f32 = u_xlat43;
    let x_745 : f32 = u_xlat43;
    u_xlat43 = (x_744 * x_745);
    let x_747 : f32 = u_xlat41;
    let x_748 : f32 = u_xlat43;
    u_xlat41 = (x_747 * x_748);
    let x_752 : i32 = u_xlati40;
    let x_754 : f32 = x_294.x_AdditionalShadowParams[x_752].w;
    u_xlati43 = i32(x_754);
    let x_757 : i32 = u_xlati43;
    u_xlatb44 = (x_757 >= 0i);
    let x_759 : bool = u_xlatb44;
    if (x_759) {
      let x_763 : i32 = u_xlati40;
      let x_765 : f32 = x_294.x_AdditionalShadowParams[x_763].z;
      u_xlatb44 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_765, x_765, x_765, x_765))));
      let x_770 : bool = u_xlatb44;
      if (x_770) {
        let x_775 : vec3<f32> = u_xlat10;
        let x_778 : vec3<f32> = u_xlat10;
        let x_781 : vec4<bool> = (abs(vec4<f32>(x_775.z, x_775.z, x_775.y, x_775.z)) >= abs(vec4<f32>(x_778.x, x_778.y, x_778.x, x_778.x)));
        let x_783 : vec3<bool> = vec3<bool>(x_781.x, x_781.y, x_781.z);
        let x_784 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_783.x, x_783.y, x_783.z, x_784.w);
        let x_787 : bool = u_xlatb11.y;
        let x_789 : bool = u_xlatb11.x;
        u_xlatb44 = (x_787 & x_789);
        let x_791 : vec3<f32> = u_xlat10;
        let x_794 : vec4<bool> = (-(vec4<f32>(x_791.z, x_791.y, x_791.z, x_791.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_795 : vec3<bool> = vec3<bool>(x_794.x, x_794.y, x_794.w);
        let x_796 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_795.x, x_795.y, x_796.z, x_795.z);
        let x_800 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_800);
        let x_805 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_805);
        let x_811 : bool = u_xlatb11.w;
        u_xlat45 = select(0.0f, 1.0f, x_811);
        let x_814 : bool = u_xlatb11.z;
        if (x_814) {
          let x_820 : f32 = u_xlat11.y;
          x_816 = x_820;
        } else {
          let x_822 : f32 = u_xlat45;
          x_816 = x_822;
        }
        let x_823 : f32 = x_816;
        u_xlat45 = x_823;
        let x_825 : bool = u_xlatb44;
        if (x_825) {
          let x_830 : f32 = u_xlat11.x;
          x_826 = x_830;
        } else {
          let x_832 : f32 = u_xlat45;
          x_826 = x_832;
        }
        let x_833 : f32 = x_826;
        u_xlat44 = x_833;
        let x_834 : i32 = u_xlati40;
        let x_836 : f32 = x_294.x_AdditionalShadowParams[x_834].w;
        u_xlat45 = trunc(x_836);
        let x_838 : f32 = u_xlat44;
        let x_839 : f32 = u_xlat45;
        u_xlat44 = (x_838 + x_839);
        let x_841 : f32 = u_xlat44;
        u_xlati43 = i32(x_841);
      }
      let x_843 : i32 = u_xlati43;
      u_xlati43 = (x_843 << bitcast<u32>(2i));
      let x_845 : vec3<f32> = vs_TEXCOORD7;
      let x_848 : i32 = u_xlati43;
      let x_851 : i32 = u_xlati43;
      let x_855 : vec4<f32> = x_294.x_AdditionalLightsWorldToShadow[((x_848 + 1i) / 4i)][((x_851 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_845.y, x_845.y, x_845.y, x_845.y) * x_855);
      let x_857 : i32 = u_xlati43;
      let x_859 : i32 = u_xlati43;
      let x_862 : vec4<f32> = x_294.x_AdditionalLightsWorldToShadow[(x_857 / 4i)][(x_859 % 4i)];
      let x_863 : vec3<f32> = vs_TEXCOORD7;
      let x_866 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_862 * vec4<f32>(x_863.x, x_863.x, x_863.x, x_863.x)) + x_866);
      let x_868 : i32 = u_xlati43;
      let x_871 : i32 = u_xlati43;
      let x_875 : vec4<f32> = x_294.x_AdditionalLightsWorldToShadow[((x_868 + 2i) / 4i)][((x_871 + 2i) % 4i)];
      let x_876 : vec3<f32> = vs_TEXCOORD7;
      let x_879 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_875 * vec4<f32>(x_876.z, x_876.z, x_876.z, x_876.z)) + x_879);
      let x_881 : vec4<f32> = u_xlat11;
      let x_882 : i32 = u_xlati43;
      let x_885 : i32 = u_xlati43;
      let x_889 : vec4<f32> = x_294.x_AdditionalLightsWorldToShadow[((x_882 + 3i) / 4i)][((x_885 + 3i) % 4i)];
      u_xlat11 = (x_881 + x_889);
      let x_891 : vec4<f32> = u_xlat11;
      let x_893 : vec4<f32> = u_xlat11;
      let x_895 : vec3<f32> = (vec3<f32>(x_891.x, x_891.y, x_891.z) / vec3<f32>(x_893.w, x_893.w, x_893.w));
      let x_896 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_895.x, x_895.y, x_895.z, x_896.w);
      let x_899 : vec4<f32> = u_xlat11;
      let x_900 : vec2<f32> = vec2<f32>(x_899.x, x_899.y);
      let x_902 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_900.x, x_900.y, x_902);
      let x_910 : vec3<f32> = txVec1;
      let x_912 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_910.xy, x_910.z);
      u_xlat43 = x_912;
      let x_913 : i32 = u_xlati40;
      let x_915 : f32 = x_294.x_AdditionalShadowParams[x_913].x;
      u_xlat44 = (1.0f + -(x_915));
      let x_918 : f32 = u_xlat43;
      let x_919 : i32 = u_xlati40;
      let x_921 : f32 = x_294.x_AdditionalShadowParams[x_919].x;
      let x_923 : f32 = u_xlat44;
      u_xlat43 = ((x_918 * x_921) + x_923);
      let x_926 : f32 = u_xlat11.z;
      u_xlatb44 = (0.0f >= x_926);
      let x_930 : f32 = u_xlat11.z;
      u_xlatb45 = (x_930 >= 1.0f);
      let x_932 : bool = u_xlatb44;
      let x_933 : bool = u_xlatb45;
      u_xlatb44 = (x_932 | x_933);
      let x_935 : bool = u_xlatb44;
      let x_936 : f32 = u_xlat43;
      u_xlat43 = select(x_936, 1.0f, x_935);
    } else {
      u_xlat43 = 1.0f;
    }
    let x_939 : f32 = u_xlat43;
    u_xlat44 = (-(x_939) + 1.0f);
    let x_942 : f32 = u_xlat25;
    let x_943 : f32 = u_xlat44;
    let x_945 : f32 = u_xlat43;
    u_xlat43 = ((x_942 * x_943) + x_945);
    let x_947 : f32 = u_xlat41;
    let x_948 : f32 = u_xlat43;
    u_xlat41 = (x_947 * x_948);
    let x_950 : vec4<f32> = u_xlat2;
    let x_952 : vec3<f32> = u_xlat10;
    u_xlat43 = dot(vec3<f32>(x_950.x, x_950.y, x_950.z), x_952);
    let x_954 : f32 = u_xlat43;
    u_xlat43 = clamp(x_954, 0.0f, 1.0f);
    let x_956 : f32 = u_xlat41;
    let x_957 : f32 = u_xlat43;
    u_xlat41 = (x_956 * x_957);
    let x_959 : f32 = u_xlat41;
    let x_961 : i32 = u_xlati40;
    let x_963 : vec4<f32> = x_682.x_AdditionalLightsColor[x_961];
    let x_965 : vec3<f32> = (vec3<f32>(x_959, x_959, x_959) * vec3<f32>(x_963.x, x_963.y, x_963.z));
    let x_966 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_965.x, x_965.y, x_965.z, x_966.w);
    let x_968 : vec3<f32> = u_xlat9;
    let x_969 : f32 = u_xlat42;
    let x_972 : vec3<f32> = u_xlat5;
    u_xlat9 = ((x_968 * vec3<f32>(x_969, x_969, x_969)) + x_972);
    let x_974 : vec3<f32> = u_xlat9;
    let x_975 : vec3<f32> = u_xlat9;
    u_xlat40 = dot(x_974, x_975);
    let x_977 : f32 = u_xlat40;
    u_xlat40 = max(x_977, 1.17549435e-38f);
    let x_979 : f32 = u_xlat40;
    u_xlat40 = inverseSqrt(x_979);
    let x_981 : f32 = u_xlat40;
    let x_983 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_981, x_981, x_981) * x_983);
    let x_985 : vec4<f32> = u_xlat2;
    let x_987 : vec3<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_985.x, x_985.y, x_985.z), x_987);
    let x_989 : f32 = u_xlat40;
    u_xlat40 = clamp(x_989, 0.0f, 1.0f);
    let x_991 : vec3<f32> = u_xlat10;
    let x_992 : vec3<f32> = u_xlat9;
    u_xlat41 = dot(x_991, x_992);
    let x_994 : f32 = u_xlat41;
    u_xlat41 = clamp(x_994, 0.0f, 1.0f);
    let x_996 : f32 = u_xlat40;
    let x_997 : f32 = u_xlat40;
    u_xlat40 = (x_996 * x_997);
    let x_999 : f32 = u_xlat40;
    let x_1001 : f32 = u_xlat1.x;
    u_xlat40 = ((x_999 * x_1001) + 1.00001001358032226562f);
    let x_1004 : f32 = u_xlat41;
    let x_1005 : f32 = u_xlat41;
    u_xlat41 = (x_1004 * x_1005);
    let x_1007 : f32 = u_xlat40;
    let x_1008 : f32 = u_xlat40;
    u_xlat40 = (x_1007 * x_1008);
    let x_1010 : f32 = u_xlat41;
    u_xlat41 = max(x_1010, 0.10000000149011611938f);
    let x_1012 : f32 = u_xlat40;
    let x_1013 : f32 = u_xlat41;
    u_xlat40 = (x_1012 * x_1013);
    let x_1015 : f32 = u_xlat37;
    let x_1016 : f32 = u_xlat40;
    u_xlat40 = (x_1015 * x_1016);
    let x_1018 : f32 = u_xlat38;
    let x_1019 : f32 = u_xlat40;
    u_xlat40 = (x_1018 / x_1019);
    let x_1021 : vec4<f32> = u_xlat0;
    let x_1023 : f32 = u_xlat40;
    let x_1026 : vec4<f32> = u_xlat4;
    u_xlat9 = ((vec3<f32>(x_1021.x, x_1021.y, x_1021.z) * vec3<f32>(x_1023, x_1023, x_1023)) + vec3<f32>(x_1026.x, x_1026.y, x_1026.z));
    let x_1029 : vec3<f32> = u_xlat9;
    let x_1030 : vec4<f32> = u_xlat11;
    let x_1033 : vec3<f32> = u_xlat8;
    u_xlat8 = ((x_1029 * vec3<f32>(x_1030.x, x_1030.y, x_1030.z)) + x_1033);

    continuing {
      let x_1035 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1035 + bitcast<u32>(1i));
    }
  }
  let x_1037 : vec3<f32> = u_xlat7;
  let x_1038 : vec4<f32> = u_xlat6;
  let x_1041 : vec3<f32> = u_xlat3;
  let x_1042 : vec3<f32> = ((x_1037 * vec3<f32>(x_1038.x, x_1038.y, x_1038.z)) + x_1041);
  let x_1043 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1042.x, x_1042.y, x_1042.z, x_1043.w);
  let x_1045 : vec3<f32> = u_xlat8;
  let x_1046 : vec4<f32> = u_xlat0;
  let x_1048 : vec3<f32> = (x_1045 + vec3<f32>(x_1046.x, x_1046.y, x_1046.z));
  let x_1049 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1048.x, x_1048.y, x_1048.z, x_1049.w);
  let x_1051 : f32 = u_xlat13;
  let x_1052 : f32 = u_xlat13;
  u_xlat36 = (x_1051 * -(x_1052));
  let x_1055 : f32 = u_xlat36;
  u_xlat36 = exp2(x_1055);
  let x_1057 : vec4<f32> = u_xlat0;
  let x_1061 : vec4<f32> = x_29.unity_FogColor;
  let x_1064 : vec3<f32> = (vec3<f32>(x_1057.x, x_1057.y, x_1057.z) + -(vec3<f32>(x_1061.x, x_1061.y, x_1061.z)));
  let x_1065 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1064.x, x_1064.y, x_1064.z, x_1065.w);
  let x_1069 : f32 = u_xlat36;
  let x_1071 : vec4<f32> = u_xlat0;
  let x_1075 : vec4<f32> = x_29.unity_FogColor;
  let x_1077 : vec3<f32> = ((vec3<f32>(x_1069, x_1069, x_1069) * vec3<f32>(x_1071.x, x_1071.y, x_1071.z)) + vec3<f32>(x_1075.x, x_1075.y, x_1075.z));
  let x_1078 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1077.x, x_1077.y, x_1077.z, x_1078.w);
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


