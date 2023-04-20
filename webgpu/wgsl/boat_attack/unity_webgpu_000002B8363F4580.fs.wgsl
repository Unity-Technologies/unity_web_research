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

alias Arr = array<mat4x4<f32>, 5u>;

alias Arr_1 = array<vec4<f32>, 32u>;

alias Arr_2 = array<mat4x4<f32>, 32u>;

alias Arr_3 = array<vec4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr,
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
  x_AdditionalShadowParams : Arr_3,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_2,
}

alias Arr_4 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_4,
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
  x_AdditionalLightsPosition : Arr_3,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_3,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_3,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_3,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_3,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlat1 : f32;

@group(0) @binding(4) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MetallicTex : sampler;

var<private> u_xlat13 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat2 : f32;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> u_xlat14 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat15 : f32;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat16 : f32;

var<private> u_xlat36 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat28 : f32;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat40 : f32;

@group(1) @binding(3) var<uniform> x_269 : LightShadows;

var<private> u_xlatb40 : bool;

var<private> u_xlatb5 : bool;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat17 : f32;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlat41 : f32;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat42 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_405 : UnityPerDraw;

var<private> u_xlat7 : vec2<f32>;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlatu36 : u32;

var<private> u_xlatu42 : u32;

var<private> u_xlati8 : i32;

var<private> u_xlati42 : i32;

var<private> u_xlat8 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_638 : AdditionalLights;

var<private> u_xlat44 : f32;

var<private> u_xlat9 : f32;

var<private> u_xlat21 : vec3<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlati10 : i32;

var<private> u_xlatb22 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat34 : f32;

var<private> u_xlat22 : f32;

@group(0) @binding(6) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb34 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu41 : u32;

var<private> u_xlatb42 : bool;

fn main_1() {
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_786 : f32;
  var x_797 : f32;
  var txVec1 : vec3<f32>;
  var x_914 : f32;
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
  u_xlat1 = x_49.x;
  let x_54 : vec4<f32> = vs_TEXCOORD3;
  let x_56 : vec4<f32> = vs_TEXCOORD3;
  u_xlat13.x = dot(vec3<f32>(x_54.x, x_54.y, x_54.z), vec3<f32>(x_56.x, x_56.y, x_56.z));
  let x_61 : f32 = u_xlat13.x;
  u_xlat13.x = inverseSqrt(x_61);
  let x_64 : vec3<f32> = u_xlat13;
  let x_66 : vec4<f32> = vs_TEXCOORD3;
  u_xlat13 = (vec3<f32>(x_64.x, x_64.x, x_64.x) * vec3<f32>(x_66.x, x_66.y, x_66.z));
  let x_75 : f32 = vs_TEXCOORD7.y;
  let x_80 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat2 = (x_75 * x_80);
  let x_83 : f32 = x_29.unity_MatrixV[0i].z;
  let x_85 : f32 = vs_TEXCOORD7.x;
  let x_87 : f32 = u_xlat2;
  u_xlat2 = ((x_83 * x_85) + x_87);
  let x_91 : f32 = x_29.unity_MatrixV[2i].z;
  let x_93 : f32 = vs_TEXCOORD7.z;
  let x_95 : f32 = u_xlat2;
  u_xlat2 = ((x_91 * x_93) + x_95);
  let x_97 : f32 = u_xlat2;
  let x_100 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat2 = (x_97 + x_100);
  let x_102 : f32 = u_xlat2;
  let x_106 : f32 = x_29.x_ProjectionParams.y;
  u_xlat2 = (-(x_102) + -(x_106));
  let x_109 : f32 = u_xlat2;
  u_xlat2 = max(x_109, 0.0f);
  let x_112 : f32 = u_xlat2;
  let x_115 : f32 = x_29.unity_FogParams.x;
  u_xlat2 = (x_112 * x_115);
  let x_123 : vec4<f32> = vs_TEXCOORD0;
  let x_126 : f32 = x_29.x_GlobalMipBias.x;
  let x_127 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_123.z, x_123.w), x_126);
  u_xlat3 = x_127;
  let x_133 : vec4<f32> = vs_TEXCOORD0;
  let x_136 : f32 = x_29.x_GlobalMipBias.x;
  let x_137 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_133.z, x_133.w), x_136);
  u_xlat14 = vec3<f32>(x_137.x, x_137.y, x_137.z);
  let x_139 : vec4<f32> = u_xlat3;
  let x_143 : vec3<f32> = (vec3<f32>(x_139.x, x_139.y, x_139.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_144 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_143.x, x_143.y, x_143.z, x_144.w);
  let x_146 : vec3<f32> = u_xlat13;
  let x_147 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(x_146, vec3<f32>(x_147.x, x_147.y, x_147.z));
  let x_152 : f32 = u_xlat3.x;
  u_xlat3.x = (x_152 + 0.5f);
  let x_156 : vec3<f32> = u_xlat14;
  let x_157 : vec4<f32> = u_xlat3;
  u_xlat14 = (x_156 * vec3<f32>(x_157.x, x_157.x, x_157.x));
  let x_162 : f32 = u_xlat3.w;
  u_xlat3.x = max(x_162, 0.00009999999747378752f);
  let x_166 : vec3<f32> = u_xlat14;
  let x_167 : vec4<f32> = u_xlat3;
  u_xlat14 = (x_166 / vec3<f32>(x_167.x, x_167.x, x_167.x));
  let x_170 : f32 = u_xlat1;
  u_xlat3.x = ((-(x_170) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_178 : f32 = u_xlat3.x;
  u_xlat15 = (-(x_178) + 1.0f);
  let x_182 : vec4<f32> = u_xlat0;
  let x_184 : vec4<f32> = u_xlat3;
  let x_186 : vec3<f32> = (vec3<f32>(x_182.x, x_182.y, x_182.z) * vec3<f32>(x_184.x, x_184.x, x_184.x));
  let x_187 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_186.x, x_187.y, x_186.y, x_186.z);
  let x_189 : vec4<f32> = u_xlat0;
  let x_193 : vec3<f32> = (vec3<f32>(x_189.x, x_189.y, x_189.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_194 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
  let x_196 : f32 = u_xlat1;
  let x_198 : vec4<f32> = u_xlat0;
  let x_203 : vec3<f32> = ((vec3<f32>(x_196, x_196, x_196) * vec3<f32>(x_198.x, x_198.y, x_198.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_204 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
  let x_207 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_207) + 1.0f);
  let x_211 : f32 = u_xlat1;
  let x_212 : f32 = u_xlat1;
  u_xlat4.x = (x_211 * x_212);
  let x_216 : f32 = u_xlat4.x;
  u_xlat4.x = max(x_216, 0.0078125f);
  let x_222 : f32 = u_xlat4.x;
  let x_224 : f32 = u_xlat4.x;
  u_xlat16 = (x_222 * x_224);
  let x_228 : f32 = u_xlat0.w;
  let x_229 : f32 = u_xlat15;
  u_xlat36 = (x_228 + x_229);
  let x_231 : f32 = u_xlat36;
  u_xlat36 = clamp(x_231, 0.0f, 1.0f);
  let x_234 : f32 = u_xlat4.x;
  u_xlat15 = ((x_234 * 4.0f) + 2.0f);
  let x_242 : vec4<f32> = vs_TEXCOORD8;
  let x_243 : vec2<f32> = vec2<f32>(x_242.x, x_242.y);
  let x_245 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_243.x, x_243.y, x_245);
  let x_258 : vec3<f32> = txVec0;
  let x_260 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_258.xy, x_258.z);
  u_xlat28 = x_260;
  let x_271 : f32 = x_269.x_MainLightShadowParams.x;
  u_xlat40 = (-(x_271) + 1.0f);
  let x_274 : f32 = u_xlat28;
  let x_276 : f32 = x_269.x_MainLightShadowParams.x;
  let x_278 : f32 = u_xlat40;
  u_xlat28 = ((x_274 * x_276) + x_278);
  let x_284 : f32 = vs_TEXCOORD8.z;
  u_xlatb40 = (0.0f >= x_284);
  let x_288 : f32 = vs_TEXCOORD8.z;
  u_xlatb5 = (x_288 >= 1.0f);
  let x_290 : bool = u_xlatb40;
  let x_291 : bool = u_xlatb5;
  u_xlatb40 = (x_290 | x_291);
  let x_293 : bool = u_xlatb40;
  let x_294 : f32 = u_xlat28;
  u_xlat28 = select(x_294, 1.0f, x_293);
  let x_297 : vec3<f32> = vs_TEXCOORD7;
  let x_301 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat5 = (x_297 + -(x_301));
  let x_304 : vec3<f32> = u_xlat5;
  let x_305 : vec3<f32> = u_xlat5;
  u_xlat40 = dot(x_304, x_305);
  let x_307 : f32 = u_xlat40;
  let x_309 : f32 = x_269.x_MainLightShadowParams.z;
  let x_312 : f32 = x_269.x_MainLightShadowParams.w;
  u_xlat5.x = ((x_307 * x_309) + x_312);
  let x_316 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_316, 0.0f, 1.0f);
  let x_320 : f32 = u_xlat28;
  u_xlat17 = (-(x_320) + 1.0f);
  let x_324 : f32 = u_xlat5.x;
  let x_325 : f32 = u_xlat17;
  let x_327 : f32 = u_xlat28;
  u_xlat28 = ((x_324 * x_325) + x_327);
  let x_330 : f32 = vs_TEXCOORD3.w;
  u_xlat5.x = x_330;
  let x_334 : f32 = vs_TEXCOORD4.w;
  u_xlat5.y = x_334;
  let x_338 : f32 = vs_TEXCOORD5.w;
  u_xlat5.z = x_338;
  let x_341 : vec3<f32> = u_xlat5;
  let x_343 : vec3<f32> = u_xlat13;
  u_xlat41 = dot(-(x_341), x_343);
  let x_345 : f32 = u_xlat41;
  let x_346 : f32 = u_xlat41;
  u_xlat41 = (x_345 + x_346);
  let x_349 : vec3<f32> = u_xlat13;
  let x_350 : f32 = u_xlat41;
  let x_354 : vec3<f32> = u_xlat5;
  let x_356 : vec3<f32> = ((x_349 * -(vec3<f32>(x_350, x_350, x_350))) + -(x_354));
  let x_357 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_356.x, x_356.y, x_356.z, x_357.w);
  let x_359 : vec3<f32> = u_xlat13;
  let x_360 : vec3<f32> = u_xlat5;
  u_xlat41 = dot(x_359, x_360);
  let x_362 : f32 = u_xlat41;
  u_xlat41 = clamp(x_362, 0.0f, 1.0f);
  let x_364 : f32 = u_xlat41;
  u_xlat41 = (-(x_364) + 1.0f);
  let x_367 : f32 = u_xlat41;
  let x_368 : f32 = u_xlat41;
  u_xlat41 = (x_367 * x_368);
  let x_370 : f32 = u_xlat41;
  let x_371 : f32 = u_xlat41;
  u_xlat41 = (x_370 * x_371);
  let x_374 : f32 = u_xlat1;
  u_xlat42 = ((-(x_374) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_380 : f32 = u_xlat1;
  let x_381 : f32 = u_xlat42;
  u_xlat1 = (x_380 * x_381);
  let x_383 : f32 = u_xlat1;
  u_xlat1 = (x_383 * 6.0f);
  let x_394 : vec4<f32> = u_xlat6;
  let x_396 : f32 = u_xlat1;
  let x_397 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_394.x, x_394.y, x_394.z), x_396);
  u_xlat6 = x_397;
  let x_399 : f32 = u_xlat6.w;
  u_xlat1 = (x_399 + -1.0f);
  let x_407 : f32 = x_405.unity_SpecCube0_HDR.w;
  let x_408 : f32 = u_xlat1;
  u_xlat1 = ((x_407 * x_408) + 1.0f);
  let x_411 : f32 = u_xlat1;
  u_xlat1 = max(x_411, 0.0f);
  let x_413 : f32 = u_xlat1;
  u_xlat1 = log2(x_413);
  let x_415 : f32 = u_xlat1;
  let x_417 : f32 = x_405.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_415 * x_417);
  let x_419 : f32 = u_xlat1;
  u_xlat1 = exp2(x_419);
  let x_421 : f32 = u_xlat1;
  let x_423 : f32 = x_405.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_421 * x_423);
  let x_425 : vec4<f32> = u_xlat6;
  let x_427 : f32 = u_xlat1;
  let x_429 : vec3<f32> = (vec3<f32>(x_425.x, x_425.y, x_425.z) * vec3<f32>(x_427, x_427, x_427));
  let x_430 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_429.x, x_429.y, x_429.z, x_430.w);
  let x_434 : vec4<f32> = u_xlat4;
  let x_436 : vec4<f32> = u_xlat4;
  u_xlat7 = ((vec2<f32>(x_434.x, x_434.x) * vec2<f32>(x_436.x, x_436.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_442 : f32 = u_xlat7.y;
  u_xlat1 = (1.0f / x_442);
  let x_445 : vec4<f32> = u_xlat0;
  let x_448 : f32 = u_xlat36;
  u_xlat19 = (-(vec3<f32>(x_445.x, x_445.y, x_445.z)) + vec3<f32>(x_448, x_448, x_448));
  let x_451 : f32 = u_xlat41;
  let x_453 : vec3<f32> = u_xlat19;
  let x_455 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_451, x_451, x_451) * x_453) + vec3<f32>(x_455.x, x_455.y, x_455.z));
  let x_458 : f32 = u_xlat1;
  let x_460 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_458, x_458, x_458) * x_460);
  let x_462 : vec4<f32> = u_xlat6;
  let x_464 : vec3<f32> = u_xlat19;
  let x_465 : vec3<f32> = (vec3<f32>(x_462.x, x_462.y, x_462.z) * x_464);
  let x_466 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_465.x, x_465.y, x_465.z, x_466.w);
  let x_468 : vec3<f32> = u_xlat14;
  let x_469 : vec4<f32> = u_xlat3;
  let x_472 : vec4<f32> = u_xlat6;
  u_xlat14 = ((x_468 * vec3<f32>(x_469.x, x_469.z, x_469.w)) + vec3<f32>(x_472.x, x_472.y, x_472.z));
  let x_475 : f32 = u_xlat28;
  let x_477 : f32 = x_405.unity_LightData.z;
  u_xlat36 = (x_475 * x_477);
  let x_479 : vec3<f32> = u_xlat13;
  let x_482 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1 = dot(x_479, vec3<f32>(x_482.x, x_482.y, x_482.z));
  let x_485 : f32 = u_xlat1;
  u_xlat1 = clamp(x_485, 0.0f, 1.0f);
  let x_487 : f32 = u_xlat36;
  let x_488 : f32 = u_xlat1;
  u_xlat36 = (x_487 * x_488);
  let x_490 : f32 = u_xlat36;
  let x_493 : vec4<f32> = x_29.x_MainLightColor;
  let x_495 : vec3<f32> = (vec3<f32>(x_490, x_490, x_490) * vec3<f32>(x_493.x, x_493.y, x_493.z));
  let x_496 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_495.x, x_495.y, x_495.z, x_496.w);
  let x_498 : vec3<f32> = u_xlat5;
  let x_500 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat19 = (x_498 + vec3<f32>(x_500.x, x_500.y, x_500.z));
  let x_503 : vec3<f32> = u_xlat19;
  let x_504 : vec3<f32> = u_xlat19;
  u_xlat36 = dot(x_503, x_504);
  let x_506 : f32 = u_xlat36;
  u_xlat36 = max(x_506, 1.17549435e-38f);
  let x_509 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_509);
  let x_511 : f32 = u_xlat36;
  let x_513 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_511, x_511, x_511) * x_513);
  let x_515 : vec3<f32> = u_xlat13;
  let x_516 : vec3<f32> = u_xlat19;
  u_xlat36 = dot(x_515, x_516);
  let x_518 : f32 = u_xlat36;
  u_xlat36 = clamp(x_518, 0.0f, 1.0f);
  let x_521 : vec4<f32> = x_29.x_MainLightPosition;
  let x_523 : vec3<f32> = u_xlat19;
  u_xlat1 = dot(vec3<f32>(x_521.x, x_521.y, x_521.z), x_523);
  let x_525 : f32 = u_xlat1;
  u_xlat1 = clamp(x_525, 0.0f, 1.0f);
  let x_527 : f32 = u_xlat36;
  let x_528 : f32 = u_xlat36;
  u_xlat36 = (x_527 * x_528);
  let x_530 : f32 = u_xlat36;
  let x_532 : f32 = u_xlat7.x;
  u_xlat36 = ((x_530 * x_532) + 1.00001001358032226562f);
  let x_536 : f32 = u_xlat1;
  let x_537 : f32 = u_xlat1;
  u_xlat1 = (x_536 * x_537);
  let x_539 : f32 = u_xlat36;
  let x_540 : f32 = u_xlat36;
  u_xlat36 = (x_539 * x_540);
  let x_542 : f32 = u_xlat1;
  u_xlat1 = max(x_542, 0.10000000149011611938f);
  let x_545 : f32 = u_xlat36;
  let x_546 : f32 = u_xlat1;
  u_xlat36 = (x_545 * x_546);
  let x_548 : f32 = u_xlat15;
  let x_549 : f32 = u_xlat36;
  u_xlat36 = (x_548 * x_549);
  let x_551 : f32 = u_xlat16;
  let x_552 : f32 = u_xlat36;
  u_xlat36 = (x_551 / x_552);
  let x_554 : vec4<f32> = u_xlat0;
  let x_556 : f32 = u_xlat36;
  let x_559 : vec4<f32> = u_xlat3;
  u_xlat19 = ((vec3<f32>(x_554.x, x_554.y, x_554.z) * vec3<f32>(x_556, x_556, x_556)) + vec3<f32>(x_559.x, x_559.z, x_559.w));
  let x_563 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_565 : f32 = x_405.unity_LightData.y;
  u_xlat36 = min(x_563, x_565);
  let x_569 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_569));
  let x_572 : f32 = u_xlat40;
  let x_575 : f32 = x_269.x_AdditionalShadowFadeParams.x;
  let x_578 : f32 = x_269.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_572 * x_575) + x_578);
  let x_580 : f32 = u_xlat1;
  u_xlat1 = clamp(x_580, 0.0f, 1.0f);
  u_xlat4.x = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlat4.w = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_592 : u32 = u_xlatu_loop_1;
    let x_593 : u32 = u_xlatu36;
    if ((x_592 < x_593)) {
    } else {
      break;
    }
    let x_596 : u32 = u_xlatu_loop_1;
    u_xlatu42 = (x_596 >> 2u);
    let x_600 : u32 = u_xlatu_loop_1;
    u_xlati8 = bitcast<i32>((x_600 & 3u));
    let x_603 : u32 = u_xlatu42;
    let x_606 : vec4<f32> = x_405.unity_LightIndices[bitcast<i32>(x_603)];
    let x_616 : i32 = u_xlati8;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_621 : vec4<u32> = indexable[x_616];
    u_xlat42 = dot(x_606, bitcast<vec4<f32>>(x_621));
    let x_625 : f32 = u_xlat42;
    u_xlati42 = i32(x_625);
    let x_628 : vec3<f32> = vs_TEXCOORD7;
    let x_639 : i32 = u_xlati42;
    let x_641 : vec4<f32> = x_638.x_AdditionalLightsPosition[x_639];
    let x_644 : i32 = u_xlati42;
    let x_646 : vec4<f32> = x_638.x_AdditionalLightsPosition[x_644];
    u_xlat8 = ((-(x_628) * vec3<f32>(x_641.w, x_641.w, x_641.w)) + vec3<f32>(x_646.x, x_646.y, x_646.z));
    let x_650 : vec3<f32> = u_xlat8;
    let x_651 : vec3<f32> = u_xlat8;
    u_xlat44 = dot(x_650, x_651);
    let x_653 : f32 = u_xlat44;
    u_xlat44 = max(x_653, 0.00006103515625f);
    let x_657 : f32 = u_xlat44;
    u_xlat9 = inverseSqrt(x_657);
    let x_660 : vec3<f32> = u_xlat8;
    let x_661 : f32 = u_xlat9;
    u_xlat21 = (x_660 * vec3<f32>(x_661, x_661, x_661));
    let x_665 : f32 = u_xlat44;
    u_xlat10.x = (1.0f / x_665);
    let x_668 : f32 = u_xlat44;
    let x_669 : i32 = u_xlati42;
    let x_671 : f32 = x_638.x_AdditionalLightsAttenuation[x_669].x;
    u_xlat44 = (x_668 * x_671);
    let x_673 : f32 = u_xlat44;
    let x_675 : f32 = u_xlat44;
    u_xlat44 = ((-(x_673) * x_675) + 1.0f);
    let x_678 : f32 = u_xlat44;
    u_xlat44 = max(x_678, 0.0f);
    let x_680 : f32 = u_xlat44;
    let x_681 : f32 = u_xlat44;
    u_xlat44 = (x_680 * x_681);
    let x_683 : f32 = u_xlat44;
    let x_685 : f32 = u_xlat10.x;
    u_xlat44 = (x_683 * x_685);
    let x_687 : i32 = u_xlati42;
    let x_689 : vec4<f32> = x_638.x_AdditionalLightsSpotDir[x_687];
    let x_691 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(vec3<f32>(x_689.x, x_689.y, x_689.z), x_691);
    let x_695 : f32 = u_xlat10.x;
    let x_696 : i32 = u_xlati42;
    let x_698 : f32 = x_638.x_AdditionalLightsAttenuation[x_696].z;
    let x_700 : i32 = u_xlati42;
    let x_702 : f32 = x_638.x_AdditionalLightsAttenuation[x_700].w;
    u_xlat10.x = ((x_695 * x_698) + x_702);
    let x_706 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_706, 0.0f, 1.0f);
    let x_710 : f32 = u_xlat10.x;
    let x_712 : f32 = u_xlat10.x;
    u_xlat10.x = (x_710 * x_712);
    let x_715 : f32 = u_xlat44;
    let x_717 : f32 = u_xlat10.x;
    u_xlat44 = (x_715 * x_717);
    let x_721 : i32 = u_xlati42;
    let x_723 : f32 = x_269.x_AdditionalShadowParams[x_721].w;
    u_xlati10 = i32(x_723);
    let x_728 : i32 = u_xlati10;
    u_xlatb22.x = (x_728 >= 0i);
    let x_732 : bool = u_xlatb22.x;
    if (x_732) {
      let x_736 : i32 = u_xlati42;
      let x_738 : f32 = x_269.x_AdditionalShadowParams[x_736].z;
      u_xlatb22.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_738, x_738, x_738, x_738))));
      let x_745 : bool = u_xlatb22.x;
      if (x_745) {
        let x_748 : vec3<f32> = u_xlat21;
        let x_751 : vec3<f32> = u_xlat21;
        let x_754 : vec4<bool> = (abs(vec4<f32>(x_748.z, x_748.z, x_748.y, x_748.y)) >= abs(vec4<f32>(x_751.x, x_751.y, x_751.x, x_751.x)));
        u_xlatb22 = vec3<bool>(x_754.x, x_754.y, x_754.z);
        let x_757 : bool = u_xlatb22.y;
        let x_759 : bool = u_xlatb22.x;
        u_xlatb22.x = (x_757 & x_759);
        let x_763 : vec3<f32> = u_xlat21;
        let x_766 : vec4<bool> = (-(vec4<f32>(x_763.z, x_763.y, x_763.x, x_763.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_766.x, x_766.y, x_766.z);
        let x_770 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_770);
        let x_775 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_775);
        let x_781 : bool = u_xlatb11.z;
        u_xlat34 = select(0.0f, 1.0f, x_781);
        let x_784 : bool = u_xlatb22.z;
        if (x_784) {
          let x_790 : f32 = u_xlat11.y;
          x_786 = x_790;
        } else {
          let x_792 : f32 = u_xlat34;
          x_786 = x_792;
        }
        let x_793 : f32 = x_786;
        u_xlat34 = x_793;
        let x_796 : bool = u_xlatb22.x;
        if (x_796) {
          let x_801 : f32 = u_xlat11.x;
          x_797 = x_801;
        } else {
          let x_803 : f32 = u_xlat34;
          x_797 = x_803;
        }
        let x_804 : f32 = x_797;
        u_xlat22 = x_804;
        let x_805 : i32 = u_xlati42;
        let x_807 : f32 = x_269.x_AdditionalShadowParams[x_805].w;
        u_xlat34 = trunc(x_807);
        let x_809 : f32 = u_xlat22;
        let x_810 : f32 = u_xlat34;
        u_xlat22 = (x_809 + x_810);
        let x_812 : f32 = u_xlat22;
        u_xlati10 = i32(x_812);
      }
      let x_814 : i32 = u_xlati10;
      u_xlati10 = (x_814 << bitcast<u32>(2i));
      let x_816 : vec3<f32> = vs_TEXCOORD7;
      let x_819 : i32 = u_xlati10;
      let x_822 : i32 = u_xlati10;
      let x_826 : vec4<f32> = x_269.x_AdditionalLightsWorldToShadow[((x_819 + 1i) / 4i)][((x_822 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_816.y, x_816.y, x_816.y, x_816.y) * x_826);
      let x_828 : i32 = u_xlati10;
      let x_830 : i32 = u_xlati10;
      let x_833 : vec4<f32> = x_269.x_AdditionalLightsWorldToShadow[(x_828 / 4i)][(x_830 % 4i)];
      let x_834 : vec3<f32> = vs_TEXCOORD7;
      let x_837 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_833 * vec4<f32>(x_834.x, x_834.x, x_834.x, x_834.x)) + x_837);
      let x_839 : i32 = u_xlati10;
      let x_842 : i32 = u_xlati10;
      let x_846 : vec4<f32> = x_269.x_AdditionalLightsWorldToShadow[((x_839 + 2i) / 4i)][((x_842 + 2i) % 4i)];
      let x_847 : vec3<f32> = vs_TEXCOORD7;
      let x_850 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_846 * vec4<f32>(x_847.z, x_847.z, x_847.z, x_847.z)) + x_850);
      let x_852 : vec4<f32> = u_xlat11;
      let x_853 : i32 = u_xlati10;
      let x_856 : i32 = u_xlati10;
      let x_860 : vec4<f32> = x_269.x_AdditionalLightsWorldToShadow[((x_853 + 3i) / 4i)][((x_856 + 3i) % 4i)];
      u_xlat10 = (x_852 + x_860);
      let x_862 : vec4<f32> = u_xlat10;
      let x_864 : vec4<f32> = u_xlat10;
      let x_866 : vec3<f32> = (vec3<f32>(x_862.x, x_862.y, x_862.z) / vec3<f32>(x_864.w, x_864.w, x_864.w));
      let x_867 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_866.x, x_866.y, x_866.z, x_867.w);
      let x_870 : vec4<f32> = u_xlat10;
      let x_871 : vec2<f32> = vec2<f32>(x_870.x, x_870.y);
      let x_873 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_871.x, x_871.y, x_873);
      let x_881 : vec3<f32> = txVec1;
      let x_883 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_881.xy, x_881.z);
      u_xlat10.x = x_883;
      let x_885 : i32 = u_xlati42;
      let x_887 : f32 = x_269.x_AdditionalShadowParams[x_885].x;
      u_xlat22 = (1.0f + -(x_887));
      let x_891 : f32 = u_xlat10.x;
      let x_892 : i32 = u_xlati42;
      let x_894 : f32 = x_269.x_AdditionalShadowParams[x_892].x;
      let x_896 : f32 = u_xlat22;
      u_xlat10.x = ((x_891 * x_894) + x_896);
      let x_900 : f32 = u_xlat10.z;
      u_xlatb22.x = (0.0f >= x_900);
      let x_905 : f32 = u_xlat10.z;
      u_xlatb34 = (x_905 >= 1.0f);
      let x_907 : bool = u_xlatb34;
      let x_909 : bool = u_xlatb22.x;
      u_xlatb22.x = (x_907 | x_909);
      let x_913 : bool = u_xlatb22.x;
      if (x_913) {
        x_914 = 1.0f;
      } else {
        let x_919 : f32 = u_xlat10.x;
        x_914 = x_919;
      }
      let x_920 : f32 = x_914;
      u_xlat10.x = x_920;
    } else {
      u_xlat10.x = 1.0f;
    }
    let x_925 : f32 = u_xlat10.x;
    u_xlat22 = (-(x_925) + 1.0f);
    let x_928 : f32 = u_xlat1;
    let x_929 : f32 = u_xlat22;
    let x_932 : f32 = u_xlat10.x;
    u_xlat10.x = ((x_928 * x_929) + x_932);
    let x_935 : f32 = u_xlat44;
    let x_937 : f32 = u_xlat10.x;
    u_xlat44 = (x_935 * x_937);
    let x_939 : vec3<f32> = u_xlat13;
    let x_940 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(x_939, x_940);
    let x_944 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_944, 0.0f, 1.0f);
    let x_947 : f32 = u_xlat44;
    let x_949 : f32 = u_xlat10.x;
    u_xlat44 = (x_947 * x_949);
    let x_951 : f32 = u_xlat44;
    let x_953 : i32 = u_xlati42;
    let x_955 : vec4<f32> = x_638.x_AdditionalLightsColor[x_953];
    let x_957 : vec3<f32> = (vec3<f32>(x_951, x_951, x_951) * vec3<f32>(x_955.x, x_955.y, x_955.z));
    let x_958 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_957.x, x_957.y, x_957.z, x_958.w);
    let x_960 : vec3<f32> = u_xlat8;
    let x_961 : f32 = u_xlat9;
    let x_964 : vec3<f32> = u_xlat5;
    u_xlat8 = ((x_960 * vec3<f32>(x_961, x_961, x_961)) + x_964);
    let x_966 : vec3<f32> = u_xlat8;
    let x_967 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(x_966, x_967);
    let x_969 : f32 = u_xlat42;
    u_xlat42 = max(x_969, 1.17549435e-38f);
    let x_971 : f32 = u_xlat42;
    u_xlat42 = inverseSqrt(x_971);
    let x_973 : f32 = u_xlat42;
    let x_975 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_973, x_973, x_973) * x_975);
    let x_977 : vec3<f32> = u_xlat13;
    let x_978 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(x_977, x_978);
    let x_980 : f32 = u_xlat42;
    u_xlat42 = clamp(x_980, 0.0f, 1.0f);
    let x_982 : vec3<f32> = u_xlat21;
    let x_983 : vec3<f32> = u_xlat8;
    u_xlat8.x = dot(x_982, x_983);
    let x_987 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_987, 0.0f, 1.0f);
    let x_990 : f32 = u_xlat42;
    let x_991 : f32 = u_xlat42;
    u_xlat42 = (x_990 * x_991);
    let x_993 : f32 = u_xlat42;
    let x_995 : f32 = u_xlat7.x;
    u_xlat42 = ((x_993 * x_995) + 1.00001001358032226562f);
    let x_999 : f32 = u_xlat8.x;
    let x_1001 : f32 = u_xlat8.x;
    u_xlat8.x = (x_999 * x_1001);
    let x_1004 : f32 = u_xlat42;
    let x_1005 : f32 = u_xlat42;
    u_xlat42 = (x_1004 * x_1005);
    let x_1008 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_1008, 0.10000000149011611938f);
    let x_1011 : f32 = u_xlat42;
    let x_1013 : f32 = u_xlat8.x;
    u_xlat42 = (x_1011 * x_1013);
    let x_1015 : f32 = u_xlat15;
    let x_1016 : f32 = u_xlat42;
    u_xlat42 = (x_1015 * x_1016);
    let x_1018 : f32 = u_xlat16;
    let x_1019 : f32 = u_xlat42;
    u_xlat42 = (x_1018 / x_1019);
    let x_1021 : vec4<f32> = u_xlat0;
    let x_1023 : f32 = u_xlat42;
    let x_1026 : vec4<f32> = u_xlat3;
    u_xlat8 = ((vec3<f32>(x_1021.x, x_1021.y, x_1021.z) * vec3<f32>(x_1023, x_1023, x_1023)) + vec3<f32>(x_1026.x, x_1026.z, x_1026.w));
    let x_1029 : vec3<f32> = u_xlat8;
    let x_1030 : vec4<f32> = u_xlat10;
    let x_1033 : vec4<f32> = u_xlat4;
    let x_1035 : vec3<f32> = ((x_1029 * vec3<f32>(x_1030.x, x_1030.y, x_1030.z)) + vec3<f32>(x_1033.x, x_1033.z, x_1033.w));
    let x_1036 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1035.x, x_1036.y, x_1035.y, x_1035.z);

    continuing {
      let x_1038 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1038 + bitcast<u32>(1i));
    }
  }
  let x_1040 : vec3<f32> = u_xlat19;
  let x_1041 : vec4<f32> = u_xlat6;
  let x_1044 : vec3<f32> = u_xlat14;
  let x_1045 : vec3<f32> = ((x_1040 * vec3<f32>(x_1041.x, x_1041.y, x_1041.z)) + x_1044);
  let x_1046 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1045.x, x_1045.y, x_1045.z, x_1046.w);
  let x_1048 : vec4<f32> = u_xlat4;
  let x_1050 : vec4<f32> = u_xlat0;
  let x_1052 : vec3<f32> = (vec3<f32>(x_1048.x, x_1048.z, x_1048.w) + vec3<f32>(x_1050.x, x_1050.y, x_1050.z));
  let x_1053 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1052.x, x_1052.y, x_1052.z, x_1053.w);
  let x_1055 : f32 = u_xlat2;
  let x_1056 : f32 = u_xlat2;
  u_xlat36 = (x_1055 * -(x_1056));
  let x_1059 : f32 = u_xlat36;
  u_xlat36 = exp2(x_1059);
  let x_1061 : vec4<f32> = u_xlat0;
  let x_1065 : vec4<f32> = x_29.unity_FogColor;
  let x_1068 : vec3<f32> = (vec3<f32>(x_1061.x, x_1061.y, x_1061.z) + -(vec3<f32>(x_1065.x, x_1065.y, x_1065.z)));
  let x_1069 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1068.x, x_1068.y, x_1068.z, x_1069.w);
  let x_1073 : f32 = u_xlat36;
  let x_1075 : vec4<f32> = u_xlat0;
  let x_1079 : vec4<f32> = x_29.unity_FogColor;
  let x_1081 : vec3<f32> = ((vec3<f32>(x_1073, x_1073, x_1073) * vec3<f32>(x_1075.x, x_1075.y, x_1075.z)) + vec3<f32>(x_1079.x, x_1079.y, x_1079.z));
  let x_1082 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1081.x, x_1081.y, x_1081.z, x_1082.w);
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


