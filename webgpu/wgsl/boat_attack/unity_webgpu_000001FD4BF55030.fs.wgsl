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
  unity_OrthoParams : vec4<f32>,
  /* @offset(112) */
  unity_FogParams : vec4<f32>,
  /* @offset(128) */
  unity_FogColor : vec4<f32>,
  /* @offset(144) */
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

var<private> u_xlat1 : f32;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MetallicTex : sampler;

var<private> u_xlatb13 : bool;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat25 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat4 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_187 : UnityPerDraw;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat38 : f32;

var<private> u_xlat15 : vec3<f32>;

var<private> u_xlat16 : vec3<f32>;

var<private> u_xlat36 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat17 : vec3<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat29 : f32;

@group(1) @binding(3) var<uniform> x_353 : LightShadows;

var<private> u_xlatb29 : bool;

var<private> u_xlatb41 : bool;

var<private> u_xlat41 : f32;

var<private> u_xlat42 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat7 : vec2<f32>;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlatu36 : u32;

var<private> u_xlatu42 : u32;

var<private> u_xlati8 : i32;

var<private> u_xlati42 : i32;

var<private> u_xlat8 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_720 : AdditionalLights;

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

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb34 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu38 : u32;

var<private> u_xlatb42 : bool;

fn main_1() {
  var x_106 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_380 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_867 : f32;
  var x_878 : f32;
  var txVec1 : vec3<f32>;
  var x_995 : f32;
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
  let x_57 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb13 = (x_57 == 0.0f);
  let x_63 : vec3<f32> = vs_TEXCOORD7;
  let x_68 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_69 : vec3<f32> = (-(x_63) + x_68);
  let x_70 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_69.x, x_69.y, x_69.z, x_70.w);
  let x_73 : vec4<f32> = u_xlat2;
  let x_75 : vec4<f32> = u_xlat2;
  u_xlat25 = dot(vec3<f32>(x_73.x, x_73.y, x_73.z), vec3<f32>(x_75.x, x_75.y, x_75.z));
  let x_78 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_78);
  let x_80 : f32 = u_xlat25;
  let x_82 : vec4<f32> = u_xlat2;
  let x_84 : vec3<f32> = (vec3<f32>(x_80, x_80, x_80) * vec3<f32>(x_82.x, x_82.y, x_82.z));
  let x_85 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_84.x, x_84.y, x_84.z, x_85.w);
  let x_92 : f32 = x_29.unity_MatrixV[0i].z;
  u_xlat3.x = x_92;
  let x_96 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat3.y = x_96;
  let x_101 : f32 = x_29.unity_MatrixV[2i].z;
  u_xlat3.z = x_101;
  let x_104 : bool = u_xlatb13;
  if (x_104) {
    let x_109 : vec4<f32> = u_xlat2;
    x_106 = vec3<f32>(x_109.x, x_109.y, x_109.z);
  } else {
    let x_112 : vec3<f32> = u_xlat3;
    x_106 = x_112;
  }
  let x_113 : vec3<f32> = x_106;
  u_xlat13 = x_113;
  let x_115 : vec3<f32> = vs_TEXCOORD3;
  let x_116 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2.x = dot(x_115, x_116);
  let x_120 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_120);
  let x_123 : vec4<f32> = u_xlat2;
  let x_125 : vec3<f32> = vs_TEXCOORD3;
  let x_126 : vec3<f32> = (vec3<f32>(x_123.x, x_123.x, x_123.x) * x_125);
  let x_127 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_126.x, x_126.y, x_126.z, x_127.w);
  let x_131 : f32 = vs_TEXCOORD7.y;
  let x_133 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat3.x = (x_131 * x_133);
  let x_137 : f32 = x_29.unity_MatrixV[0i].z;
  let x_139 : f32 = vs_TEXCOORD7.x;
  let x_142 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_137 * x_139) + x_142);
  let x_146 : f32 = x_29.unity_MatrixV[2i].z;
  let x_148 : f32 = vs_TEXCOORD7.z;
  let x_151 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_146 * x_148) + x_151);
  let x_155 : f32 = u_xlat3.x;
  let x_158 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat3.x = (x_155 + x_158);
  let x_162 : f32 = u_xlat3.x;
  let x_166 : f32 = x_29.x_ProjectionParams.y;
  u_xlat3.x = (-(x_162) + -(x_166));
  let x_171 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_171, 0.0f);
  let x_175 : f32 = u_xlat3.x;
  let x_178 : f32 = x_29.unity_FogParams.x;
  u_xlat3.x = (x_175 * x_178);
  u_xlat2.w = 1.0f;
  let x_191 : vec4<f32> = x_187.unity_SHAr;
  let x_192 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_191, x_192);
  let x_197 : vec4<f32> = x_187.unity_SHAg;
  let x_198 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_197, x_198);
  let x_203 : vec4<f32> = x_187.unity_SHAb;
  let x_204 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_203, x_204);
  let x_208 : vec4<f32> = u_xlat2;
  let x_210 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_208.y, x_208.z, x_208.z, x_208.x) * vec4<f32>(x_210.x, x_210.y, x_210.z, x_210.z));
  let x_216 : vec4<f32> = x_187.unity_SHBr;
  let x_217 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_216, x_217);
  let x_222 : vec4<f32> = x_187.unity_SHBg;
  let x_223 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_222, x_223);
  let x_228 : vec4<f32> = x_187.unity_SHBb;
  let x_229 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_228, x_229);
  let x_234 : f32 = u_xlat2.y;
  let x_236 : f32 = u_xlat2.y;
  u_xlat38 = (x_234 * x_236);
  let x_239 : f32 = u_xlat2.x;
  let x_241 : f32 = u_xlat2.x;
  let x_243 : f32 = u_xlat38;
  u_xlat38 = ((x_239 * x_241) + -(x_243));
  let x_249 : vec4<f32> = x_187.unity_SHC;
  let x_251 : f32 = u_xlat38;
  let x_254 : vec4<f32> = u_xlat6;
  u_xlat15 = ((vec3<f32>(x_249.x, x_249.y, x_249.z) * vec3<f32>(x_251, x_251, x_251)) + vec3<f32>(x_254.x, x_254.y, x_254.z));
  let x_257 : vec3<f32> = u_xlat15;
  let x_258 : vec3<f32> = u_xlat4;
  u_xlat15 = (x_257 + x_258);
  let x_260 : vec3<f32> = u_xlat15;
  u_xlat15 = max(x_260, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_263 : f32 = u_xlat1;
  u_xlat38 = ((-(x_263) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_268 : f32 = u_xlat38;
  u_xlat4.x = (-(x_268) + 1.0f);
  let x_273 : vec4<f32> = u_xlat0;
  let x_275 : f32 = u_xlat38;
  u_xlat16 = (vec3<f32>(x_273.x, x_273.y, x_273.z) * vec3<f32>(x_275, x_275, x_275));
  let x_278 : vec4<f32> = u_xlat0;
  let x_282 : vec3<f32> = (vec3<f32>(x_278.x, x_278.y, x_278.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_283 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_282.x, x_282.y, x_282.z, x_283.w);
  let x_285 : f32 = u_xlat1;
  let x_287 : vec4<f32> = u_xlat0;
  let x_292 : vec3<f32> = ((vec3<f32>(x_285, x_285, x_285) * vec3<f32>(x_287.x, x_287.y, x_287.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_293 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_292.x, x_292.y, x_292.z, x_293.w);
  let x_296 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_296) + 1.0f);
  let x_299 : f32 = u_xlat1;
  let x_300 : f32 = u_xlat1;
  u_xlat38 = (x_299 * x_300);
  let x_302 : f32 = u_xlat38;
  u_xlat38 = max(x_302, 0.0078125f);
  let x_305 : f32 = u_xlat38;
  let x_306 : f32 = u_xlat38;
  u_xlat5.x = (x_305 * x_306);
  let x_311 : f32 = u_xlat0.w;
  let x_313 : f32 = u_xlat4.x;
  u_xlat36 = (x_311 + x_313);
  let x_315 : f32 = u_xlat36;
  u_xlat36 = clamp(x_315, 0.0f, 1.0f);
  let x_317 : f32 = u_xlat38;
  u_xlat4.x = ((x_317 * 4.0f) + 2.0f);
  let x_325 : vec4<f32> = vs_TEXCOORD8;
  let x_326 : vec2<f32> = vec2<f32>(x_325.x, x_325.y);
  let x_328 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_326.x, x_326.y, x_328);
  let x_341 : vec3<f32> = txVec0;
  let x_343 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_341.xy, x_341.z);
  u_xlat17.x = x_343;
  let x_356 : f32 = x_353.x_MainLightShadowParams.x;
  u_xlat29 = (-(x_356) + 1.0f);
  let x_360 : f32 = u_xlat17.x;
  let x_362 : f32 = x_353.x_MainLightShadowParams.x;
  let x_364 : f32 = u_xlat29;
  u_xlat17.x = ((x_360 * x_362) + x_364);
  let x_369 : f32 = vs_TEXCOORD8.z;
  u_xlatb29 = (0.0f >= x_369);
  let x_373 : f32 = vs_TEXCOORD8.z;
  u_xlatb41 = (x_373 >= 1.0f);
  let x_375 : bool = u_xlatb41;
  let x_376 : bool = u_xlatb29;
  u_xlatb29 = (x_375 | x_376);
  let x_378 : bool = u_xlatb29;
  if (x_378) {
    x_380 = 1.0f;
  } else {
    let x_385 : f32 = u_xlat17.x;
    x_380 = x_385;
  }
  let x_386 : f32 = x_380;
  u_xlat17.x = x_386;
  let x_388 : vec3<f32> = vs_TEXCOORD7;
  let x_390 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_392 : vec3<f32> = (x_388 + -(x_390));
  let x_393 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_392.x, x_392.y, x_392.z, x_393.w);
  let x_395 : vec4<f32> = u_xlat6;
  let x_397 : vec4<f32> = u_xlat6;
  u_xlat29 = dot(vec3<f32>(x_395.x, x_395.y, x_395.z), vec3<f32>(x_397.x, x_397.y, x_397.z));
  let x_401 : f32 = u_xlat29;
  let x_403 : f32 = x_353.x_MainLightShadowParams.z;
  let x_406 : f32 = x_353.x_MainLightShadowParams.w;
  u_xlat41 = ((x_401 * x_403) + x_406);
  let x_408 : f32 = u_xlat41;
  u_xlat41 = clamp(x_408, 0.0f, 1.0f);
  let x_411 : f32 = u_xlat17.x;
  u_xlat6.x = (-(x_411) + 1.0f);
  let x_415 : f32 = u_xlat41;
  let x_417 : f32 = u_xlat6.x;
  let x_420 : f32 = u_xlat17.x;
  u_xlat17.x = ((x_415 * x_417) + x_420);
  let x_423 : vec3<f32> = u_xlat13;
  let x_425 : vec4<f32> = u_xlat2;
  u_xlat41 = dot(-(x_423), vec3<f32>(x_425.x, x_425.y, x_425.z));
  let x_428 : f32 = u_xlat41;
  let x_429 : f32 = u_xlat41;
  u_xlat41 = (x_428 + x_429);
  let x_431 : vec4<f32> = u_xlat2;
  let x_433 : f32 = u_xlat41;
  let x_437 : vec3<f32> = u_xlat13;
  let x_439 : vec3<f32> = ((vec3<f32>(x_431.x, x_431.y, x_431.z) * -(vec3<f32>(x_433, x_433, x_433))) + -(x_437));
  let x_440 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_439.x, x_439.y, x_439.z, x_440.w);
  let x_442 : vec4<f32> = u_xlat2;
  let x_444 : vec3<f32> = u_xlat13;
  u_xlat41 = dot(vec3<f32>(x_442.x, x_442.y, x_442.z), x_444);
  let x_446 : f32 = u_xlat41;
  u_xlat41 = clamp(x_446, 0.0f, 1.0f);
  let x_448 : f32 = u_xlat41;
  u_xlat41 = (-(x_448) + 1.0f);
  let x_451 : f32 = u_xlat41;
  let x_452 : f32 = u_xlat41;
  u_xlat41 = (x_451 * x_452);
  let x_454 : f32 = u_xlat41;
  let x_455 : f32 = u_xlat41;
  u_xlat41 = (x_454 * x_455);
  let x_458 : f32 = u_xlat1;
  u_xlat42 = ((-(x_458) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_464 : f32 = u_xlat1;
  let x_465 : f32 = u_xlat42;
  u_xlat1 = (x_464 * x_465);
  let x_467 : f32 = u_xlat1;
  u_xlat1 = (x_467 * 6.0f);
  let x_478 : vec4<f32> = u_xlat6;
  let x_480 : f32 = u_xlat1;
  let x_481 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_478.x, x_478.y, x_478.z), x_480);
  u_xlat6 = x_481;
  let x_483 : f32 = u_xlat6.w;
  u_xlat1 = (x_483 + -1.0f);
  let x_487 : f32 = x_187.unity_SpecCube0_HDR.w;
  let x_488 : f32 = u_xlat1;
  u_xlat1 = ((x_487 * x_488) + 1.0f);
  let x_491 : f32 = u_xlat1;
  u_xlat1 = max(x_491, 0.0f);
  let x_493 : f32 = u_xlat1;
  u_xlat1 = log2(x_493);
  let x_495 : f32 = u_xlat1;
  let x_497 : f32 = x_187.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_495 * x_497);
  let x_499 : f32 = u_xlat1;
  u_xlat1 = exp2(x_499);
  let x_501 : f32 = u_xlat1;
  let x_503 : f32 = x_187.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_501 * x_503);
  let x_505 : vec4<f32> = u_xlat6;
  let x_507 : f32 = u_xlat1;
  let x_509 : vec3<f32> = (vec3<f32>(x_505.x, x_505.y, x_505.z) * vec3<f32>(x_507, x_507, x_507));
  let x_510 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_509.x, x_509.y, x_509.z, x_510.w);
  let x_514 : f32 = u_xlat38;
  let x_516 : f32 = u_xlat38;
  u_xlat7 = ((vec2<f32>(x_514, x_514) * vec2<f32>(x_516, x_516)) + vec2<f32>(-1.0f, 1.0f));
  let x_522 : f32 = u_xlat7.y;
  u_xlat1 = (1.0f / x_522);
  let x_525 : vec4<f32> = u_xlat0;
  let x_528 : f32 = u_xlat36;
  u_xlat19 = (-(vec3<f32>(x_525.x, x_525.y, x_525.z)) + vec3<f32>(x_528, x_528, x_528));
  let x_531 : f32 = u_xlat41;
  let x_533 : vec3<f32> = u_xlat19;
  let x_535 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_531, x_531, x_531) * x_533) + vec3<f32>(x_535.x, x_535.y, x_535.z));
  let x_538 : f32 = u_xlat1;
  let x_540 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_538, x_538, x_538) * x_540);
  let x_542 : vec4<f32> = u_xlat6;
  let x_544 : vec3<f32> = u_xlat19;
  let x_545 : vec3<f32> = (vec3<f32>(x_542.x, x_542.y, x_542.z) * x_544);
  let x_546 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_545.x, x_545.y, x_545.z, x_546.w);
  let x_548 : vec3<f32> = u_xlat15;
  let x_549 : vec3<f32> = u_xlat16;
  let x_551 : vec4<f32> = u_xlat6;
  u_xlat15 = ((x_548 * x_549) + vec3<f32>(x_551.x, x_551.y, x_551.z));
  let x_555 : f32 = u_xlat17.x;
  let x_557 : f32 = x_187.unity_LightData.z;
  u_xlat36 = (x_555 * x_557);
  let x_559 : vec4<f32> = u_xlat2;
  let x_562 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1 = dot(vec3<f32>(x_559.x, x_559.y, x_559.z), vec3<f32>(x_562.x, x_562.y, x_562.z));
  let x_565 : f32 = u_xlat1;
  u_xlat1 = clamp(x_565, 0.0f, 1.0f);
  let x_567 : f32 = u_xlat36;
  let x_568 : f32 = u_xlat1;
  u_xlat36 = (x_567 * x_568);
  let x_570 : f32 = u_xlat36;
  let x_573 : vec4<f32> = x_29.x_MainLightColor;
  let x_575 : vec3<f32> = (vec3<f32>(x_570, x_570, x_570) * vec3<f32>(x_573.x, x_573.y, x_573.z));
  let x_576 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_575.x, x_575.y, x_575.z, x_576.w);
  let x_578 : vec3<f32> = u_xlat13;
  let x_580 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat19 = (x_578 + vec3<f32>(x_580.x, x_580.y, x_580.z));
  let x_583 : vec3<f32> = u_xlat19;
  let x_584 : vec3<f32> = u_xlat19;
  u_xlat36 = dot(x_583, x_584);
  let x_586 : f32 = u_xlat36;
  u_xlat36 = max(x_586, 1.17549435e-38f);
  let x_589 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_589);
  let x_591 : f32 = u_xlat36;
  let x_593 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_591, x_591, x_591) * x_593);
  let x_595 : vec4<f32> = u_xlat2;
  let x_597 : vec3<f32> = u_xlat19;
  u_xlat36 = dot(vec3<f32>(x_595.x, x_595.y, x_595.z), x_597);
  let x_599 : f32 = u_xlat36;
  u_xlat36 = clamp(x_599, 0.0f, 1.0f);
  let x_602 : vec4<f32> = x_29.x_MainLightPosition;
  let x_604 : vec3<f32> = u_xlat19;
  u_xlat1 = dot(vec3<f32>(x_602.x, x_602.y, x_602.z), x_604);
  let x_606 : f32 = u_xlat1;
  u_xlat1 = clamp(x_606, 0.0f, 1.0f);
  let x_608 : f32 = u_xlat36;
  let x_609 : f32 = u_xlat36;
  u_xlat36 = (x_608 * x_609);
  let x_611 : f32 = u_xlat36;
  let x_613 : f32 = u_xlat7.x;
  u_xlat36 = ((x_611 * x_613) + 1.00001001358032226562f);
  let x_617 : f32 = u_xlat1;
  let x_618 : f32 = u_xlat1;
  u_xlat1 = (x_617 * x_618);
  let x_620 : f32 = u_xlat36;
  let x_621 : f32 = u_xlat36;
  u_xlat36 = (x_620 * x_621);
  let x_623 : f32 = u_xlat1;
  u_xlat1 = max(x_623, 0.10000000149011611938f);
  let x_626 : f32 = u_xlat36;
  let x_627 : f32 = u_xlat1;
  u_xlat36 = (x_626 * x_627);
  let x_630 : f32 = u_xlat4.x;
  let x_631 : f32 = u_xlat36;
  u_xlat36 = (x_630 * x_631);
  let x_634 : f32 = u_xlat5.x;
  let x_635 : f32 = u_xlat36;
  u_xlat36 = (x_634 / x_635);
  let x_637 : vec4<f32> = u_xlat0;
  let x_639 : f32 = u_xlat36;
  let x_642 : vec3<f32> = u_xlat16;
  u_xlat19 = ((vec3<f32>(x_637.x, x_637.y, x_637.z) * vec3<f32>(x_639, x_639, x_639)) + x_642);
  let x_645 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_647 : f32 = x_187.unity_LightData.y;
  u_xlat36 = min(x_645, x_647);
  let x_651 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_651));
  let x_654 : f32 = u_xlat29;
  let x_657 : f32 = x_353.x_AdditionalShadowFadeParams.x;
  let x_660 : f32 = x_353.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_654 * x_657) + x_660);
  let x_662 : f32 = u_xlat1;
  u_xlat1 = clamp(x_662, 0.0f, 1.0f);
  u_xlat17.x = 0.0f;
  u_xlat17.y = 0.0f;
  u_xlat17.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_674 : u32 = u_xlatu_loop_1;
    let x_675 : u32 = u_xlatu36;
    if ((x_674 < x_675)) {
    } else {
      break;
    }
    let x_678 : u32 = u_xlatu_loop_1;
    u_xlatu42 = (x_678 >> 2u);
    let x_682 : u32 = u_xlatu_loop_1;
    u_xlati8 = bitcast<i32>((x_682 & 3u));
    let x_685 : u32 = u_xlatu42;
    let x_688 : vec4<f32> = x_187.unity_LightIndices[bitcast<i32>(x_685)];
    let x_698 : i32 = u_xlati8;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_703 : vec4<u32> = indexable[x_698];
    u_xlat42 = dot(x_688, bitcast<vec4<f32>>(x_703));
    let x_707 : f32 = u_xlat42;
    u_xlati42 = i32(x_707);
    let x_710 : vec3<f32> = vs_TEXCOORD7;
    let x_721 : i32 = u_xlati42;
    let x_723 : vec4<f32> = x_720.x_AdditionalLightsPosition[x_721];
    let x_726 : i32 = u_xlati42;
    let x_728 : vec4<f32> = x_720.x_AdditionalLightsPosition[x_726];
    u_xlat8 = ((-(x_710) * vec3<f32>(x_723.w, x_723.w, x_723.w)) + vec3<f32>(x_728.x, x_728.y, x_728.z));
    let x_732 : vec3<f32> = u_xlat8;
    let x_733 : vec3<f32> = u_xlat8;
    u_xlat44 = dot(x_732, x_733);
    let x_735 : f32 = u_xlat44;
    u_xlat44 = max(x_735, 0.00006103515625f);
    let x_739 : f32 = u_xlat44;
    u_xlat9 = inverseSqrt(x_739);
    let x_742 : vec3<f32> = u_xlat8;
    let x_743 : f32 = u_xlat9;
    u_xlat21 = (x_742 * vec3<f32>(x_743, x_743, x_743));
    let x_747 : f32 = u_xlat44;
    u_xlat10.x = (1.0f / x_747);
    let x_750 : f32 = u_xlat44;
    let x_751 : i32 = u_xlati42;
    let x_753 : f32 = x_720.x_AdditionalLightsAttenuation[x_751].x;
    u_xlat44 = (x_750 * x_753);
    let x_755 : f32 = u_xlat44;
    let x_757 : f32 = u_xlat44;
    u_xlat44 = ((-(x_755) * x_757) + 1.0f);
    let x_760 : f32 = u_xlat44;
    u_xlat44 = max(x_760, 0.0f);
    let x_762 : f32 = u_xlat44;
    let x_763 : f32 = u_xlat44;
    u_xlat44 = (x_762 * x_763);
    let x_765 : f32 = u_xlat44;
    let x_767 : f32 = u_xlat10.x;
    u_xlat44 = (x_765 * x_767);
    let x_769 : i32 = u_xlati42;
    let x_771 : vec4<f32> = x_720.x_AdditionalLightsSpotDir[x_769];
    let x_773 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(vec3<f32>(x_771.x, x_771.y, x_771.z), x_773);
    let x_777 : f32 = u_xlat10.x;
    let x_778 : i32 = u_xlati42;
    let x_780 : f32 = x_720.x_AdditionalLightsAttenuation[x_778].z;
    let x_782 : i32 = u_xlati42;
    let x_784 : f32 = x_720.x_AdditionalLightsAttenuation[x_782].w;
    u_xlat10.x = ((x_777 * x_780) + x_784);
    let x_788 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_788, 0.0f, 1.0f);
    let x_792 : f32 = u_xlat10.x;
    let x_794 : f32 = u_xlat10.x;
    u_xlat10.x = (x_792 * x_794);
    let x_797 : f32 = u_xlat44;
    let x_799 : f32 = u_xlat10.x;
    u_xlat44 = (x_797 * x_799);
    let x_803 : i32 = u_xlati42;
    let x_805 : f32 = x_353.x_AdditionalShadowParams[x_803].w;
    u_xlati10 = i32(x_805);
    let x_810 : i32 = u_xlati10;
    u_xlatb22.x = (x_810 >= 0i);
    let x_814 : bool = u_xlatb22.x;
    if (x_814) {
      let x_818 : i32 = u_xlati42;
      let x_820 : f32 = x_353.x_AdditionalShadowParams[x_818].z;
      u_xlatb22.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_820, x_820, x_820, x_820))));
      let x_827 : bool = u_xlatb22.x;
      if (x_827) {
        let x_830 : vec3<f32> = u_xlat21;
        let x_833 : vec3<f32> = u_xlat21;
        let x_836 : vec4<bool> = (abs(vec4<f32>(x_830.z, x_830.z, x_830.y, x_830.y)) >= abs(vec4<f32>(x_833.x, x_833.y, x_833.x, x_833.x)));
        u_xlatb22 = vec3<bool>(x_836.x, x_836.y, x_836.z);
        let x_839 : bool = u_xlatb22.y;
        let x_841 : bool = u_xlatb22.x;
        u_xlatb22.x = (x_839 & x_841);
        let x_845 : vec3<f32> = u_xlat21;
        let x_848 : vec4<bool> = (-(vec4<f32>(x_845.z, x_845.y, x_845.x, x_845.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_848.x, x_848.y, x_848.z);
        let x_852 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_852);
        let x_857 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_857);
        let x_863 : bool = u_xlatb11.z;
        u_xlat34 = select(0.0f, 1.0f, x_863);
        let x_866 : bool = u_xlatb22.z;
        if (x_866) {
          let x_871 : f32 = u_xlat11.y;
          x_867 = x_871;
        } else {
          let x_873 : f32 = u_xlat34;
          x_867 = x_873;
        }
        let x_874 : f32 = x_867;
        u_xlat34 = x_874;
        let x_877 : bool = u_xlatb22.x;
        if (x_877) {
          let x_882 : f32 = u_xlat11.x;
          x_878 = x_882;
        } else {
          let x_884 : f32 = u_xlat34;
          x_878 = x_884;
        }
        let x_885 : f32 = x_878;
        u_xlat22 = x_885;
        let x_886 : i32 = u_xlati42;
        let x_888 : f32 = x_353.x_AdditionalShadowParams[x_886].w;
        u_xlat34 = trunc(x_888);
        let x_890 : f32 = u_xlat22;
        let x_891 : f32 = u_xlat34;
        u_xlat22 = (x_890 + x_891);
        let x_893 : f32 = u_xlat22;
        u_xlati10 = i32(x_893);
      }
      let x_895 : i32 = u_xlati10;
      u_xlati10 = (x_895 << bitcast<u32>(2i));
      let x_897 : vec3<f32> = vs_TEXCOORD7;
      let x_900 : i32 = u_xlati10;
      let x_903 : i32 = u_xlati10;
      let x_907 : vec4<f32> = x_353.x_AdditionalLightsWorldToShadow[((x_900 + 1i) / 4i)][((x_903 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_897.y, x_897.y, x_897.y, x_897.y) * x_907);
      let x_909 : i32 = u_xlati10;
      let x_911 : i32 = u_xlati10;
      let x_914 : vec4<f32> = x_353.x_AdditionalLightsWorldToShadow[(x_909 / 4i)][(x_911 % 4i)];
      let x_915 : vec3<f32> = vs_TEXCOORD7;
      let x_918 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_914 * vec4<f32>(x_915.x, x_915.x, x_915.x, x_915.x)) + x_918);
      let x_920 : i32 = u_xlati10;
      let x_923 : i32 = u_xlati10;
      let x_927 : vec4<f32> = x_353.x_AdditionalLightsWorldToShadow[((x_920 + 2i) / 4i)][((x_923 + 2i) % 4i)];
      let x_928 : vec3<f32> = vs_TEXCOORD7;
      let x_931 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_927 * vec4<f32>(x_928.z, x_928.z, x_928.z, x_928.z)) + x_931);
      let x_933 : vec4<f32> = u_xlat11;
      let x_934 : i32 = u_xlati10;
      let x_937 : i32 = u_xlati10;
      let x_941 : vec4<f32> = x_353.x_AdditionalLightsWorldToShadow[((x_934 + 3i) / 4i)][((x_937 + 3i) % 4i)];
      u_xlat10 = (x_933 + x_941);
      let x_943 : vec4<f32> = u_xlat10;
      let x_945 : vec4<f32> = u_xlat10;
      let x_947 : vec3<f32> = (vec3<f32>(x_943.x, x_943.y, x_943.z) / vec3<f32>(x_945.w, x_945.w, x_945.w));
      let x_948 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_947.x, x_947.y, x_947.z, x_948.w);
      let x_951 : vec4<f32> = u_xlat10;
      let x_952 : vec2<f32> = vec2<f32>(x_951.x, x_951.y);
      let x_954 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_952.x, x_952.y, x_954);
      let x_962 : vec3<f32> = txVec1;
      let x_964 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_962.xy, x_962.z);
      u_xlat10.x = x_964;
      let x_966 : i32 = u_xlati42;
      let x_968 : f32 = x_353.x_AdditionalShadowParams[x_966].x;
      u_xlat22 = (1.0f + -(x_968));
      let x_972 : f32 = u_xlat10.x;
      let x_973 : i32 = u_xlati42;
      let x_975 : f32 = x_353.x_AdditionalShadowParams[x_973].x;
      let x_977 : f32 = u_xlat22;
      u_xlat10.x = ((x_972 * x_975) + x_977);
      let x_981 : f32 = u_xlat10.z;
      u_xlatb22.x = (0.0f >= x_981);
      let x_986 : f32 = u_xlat10.z;
      u_xlatb34 = (x_986 >= 1.0f);
      let x_988 : bool = u_xlatb34;
      let x_990 : bool = u_xlatb22.x;
      u_xlatb22.x = (x_988 | x_990);
      let x_994 : bool = u_xlatb22.x;
      if (x_994) {
        x_995 = 1.0f;
      } else {
        let x_1000 : f32 = u_xlat10.x;
        x_995 = x_1000;
      }
      let x_1001 : f32 = x_995;
      u_xlat10.x = x_1001;
    } else {
      u_xlat10.x = 1.0f;
    }
    let x_1006 : f32 = u_xlat10.x;
    u_xlat22 = (-(x_1006) + 1.0f);
    let x_1009 : f32 = u_xlat1;
    let x_1010 : f32 = u_xlat22;
    let x_1013 : f32 = u_xlat10.x;
    u_xlat10.x = ((x_1009 * x_1010) + x_1013);
    let x_1016 : f32 = u_xlat44;
    let x_1018 : f32 = u_xlat10.x;
    u_xlat44 = (x_1016 * x_1018);
    let x_1020 : vec4<f32> = u_xlat2;
    let x_1022 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(vec3<f32>(x_1020.x, x_1020.y, x_1020.z), x_1022);
    let x_1026 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1026, 0.0f, 1.0f);
    let x_1029 : f32 = u_xlat44;
    let x_1031 : f32 = u_xlat10.x;
    u_xlat44 = (x_1029 * x_1031);
    let x_1033 : f32 = u_xlat44;
    let x_1035 : i32 = u_xlati42;
    let x_1037 : vec4<f32> = x_720.x_AdditionalLightsColor[x_1035];
    let x_1039 : vec3<f32> = (vec3<f32>(x_1033, x_1033, x_1033) * vec3<f32>(x_1037.x, x_1037.y, x_1037.z));
    let x_1040 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1039.x, x_1039.y, x_1039.z, x_1040.w);
    let x_1042 : vec3<f32> = u_xlat8;
    let x_1043 : f32 = u_xlat9;
    let x_1046 : vec3<f32> = u_xlat13;
    u_xlat8 = ((x_1042 * vec3<f32>(x_1043, x_1043, x_1043)) + x_1046);
    let x_1048 : vec3<f32> = u_xlat8;
    let x_1049 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(x_1048, x_1049);
    let x_1051 : f32 = u_xlat42;
    u_xlat42 = max(x_1051, 1.17549435e-38f);
    let x_1053 : f32 = u_xlat42;
    u_xlat42 = inverseSqrt(x_1053);
    let x_1055 : f32 = u_xlat42;
    let x_1057 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1055, x_1055, x_1055) * x_1057);
    let x_1059 : vec4<f32> = u_xlat2;
    let x_1061 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(vec3<f32>(x_1059.x, x_1059.y, x_1059.z), x_1061);
    let x_1063 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1063, 0.0f, 1.0f);
    let x_1065 : vec3<f32> = u_xlat21;
    let x_1066 : vec3<f32> = u_xlat8;
    u_xlat8.x = dot(x_1065, x_1066);
    let x_1070 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_1070, 0.0f, 1.0f);
    let x_1073 : f32 = u_xlat42;
    let x_1074 : f32 = u_xlat42;
    u_xlat42 = (x_1073 * x_1074);
    let x_1076 : f32 = u_xlat42;
    let x_1078 : f32 = u_xlat7.x;
    u_xlat42 = ((x_1076 * x_1078) + 1.00001001358032226562f);
    let x_1082 : f32 = u_xlat8.x;
    let x_1084 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1082 * x_1084);
    let x_1087 : f32 = u_xlat42;
    let x_1088 : f32 = u_xlat42;
    u_xlat42 = (x_1087 * x_1088);
    let x_1091 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_1091, 0.10000000149011611938f);
    let x_1094 : f32 = u_xlat42;
    let x_1096 : f32 = u_xlat8.x;
    u_xlat42 = (x_1094 * x_1096);
    let x_1099 : f32 = u_xlat4.x;
    let x_1100 : f32 = u_xlat42;
    u_xlat42 = (x_1099 * x_1100);
    let x_1103 : f32 = u_xlat5.x;
    let x_1104 : f32 = u_xlat42;
    u_xlat42 = (x_1103 / x_1104);
    let x_1106 : vec4<f32> = u_xlat0;
    let x_1108 : f32 = u_xlat42;
    let x_1111 : vec3<f32> = u_xlat16;
    u_xlat8 = ((vec3<f32>(x_1106.x, x_1106.y, x_1106.z) * vec3<f32>(x_1108, x_1108, x_1108)) + x_1111);
    let x_1113 : vec3<f32> = u_xlat8;
    let x_1114 : vec4<f32> = u_xlat10;
    let x_1117 : vec3<f32> = u_xlat17;
    u_xlat17 = ((x_1113 * vec3<f32>(x_1114.x, x_1114.y, x_1114.z)) + x_1117);

    continuing {
      let x_1119 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1119 + bitcast<u32>(1i));
    }
  }
  let x_1121 : vec3<f32> = u_xlat19;
  let x_1122 : vec4<f32> = u_xlat6;
  let x_1125 : vec3<f32> = u_xlat15;
  let x_1126 : vec3<f32> = ((x_1121 * vec3<f32>(x_1122.x, x_1122.y, x_1122.z)) + x_1125);
  let x_1127 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1126.x, x_1126.y, x_1126.z, x_1127.w);
  let x_1129 : vec3<f32> = u_xlat17;
  let x_1130 : vec4<f32> = u_xlat0;
  let x_1132 : vec3<f32> = (x_1129 + vec3<f32>(x_1130.x, x_1130.y, x_1130.z));
  let x_1133 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1132.x, x_1132.y, x_1132.z, x_1133.w);
  let x_1136 : f32 = u_xlat3.x;
  let x_1138 : f32 = u_xlat3.x;
  u_xlat36 = (x_1136 * -(x_1138));
  let x_1141 : f32 = u_xlat36;
  u_xlat36 = exp2(x_1141);
  let x_1143 : vec4<f32> = u_xlat0;
  let x_1146 : vec4<f32> = x_29.unity_FogColor;
  let x_1149 : vec3<f32> = (vec3<f32>(x_1143.x, x_1143.y, x_1143.z) + -(vec3<f32>(x_1146.x, x_1146.y, x_1146.z)));
  let x_1150 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1149.x, x_1149.y, x_1149.z, x_1150.w);
  let x_1154 : f32 = u_xlat36;
  let x_1156 : vec4<f32> = u_xlat0;
  let x_1160 : vec4<f32> = x_29.unity_FogColor;
  let x_1162 : vec3<f32> = ((vec3<f32>(x_1154, x_1154, x_1154) * vec3<f32>(x_1156.x, x_1156.y, x_1156.z)) + vec3<f32>(x_1160.x, x_1160.y, x_1160.z));
  let x_1163 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1162.x, x_1162.y, x_1162.z, x_1163.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD7_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : vec3<f32>, @location(3) vs_TEXCOORD8_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


