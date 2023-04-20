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
  unity_OrthoParams : vec4<f32>,
  /* @offset(96) */
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

@group(0) @binding(3) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb0 : bool;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MetallicTex : sampler;

var<private> u_xlatb13 : bool;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat25 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat4 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_175 : UnityPerDraw;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat38 : f32;

var<private> u_xlat39 : f32;

var<private> u_xlat40 : f32;

var<private> u_xlat36 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat17 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_345 : LightShadows;

var<private> u_xlatb17 : bool;

var<private> u_xlatb29 : bool;

var<private> u_xlat29 : f32;

var<private> u_xlat41 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat7 : vec2<f32>;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlat37 : f32;

var<private> u_xlatu36 : u32;

var<private> u_xlatu17 : u32;

var<private> u_xlati42 : i32;

var<private> u_xlati17 : i32;

var<private> u_xlat8 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_743 : AdditionalLights;

var<private> u_xlat42 : f32;

var<private> u_xlat44 : f32;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat45 : f32;

var<private> u_xlati45 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlat11 : f32;

var<private> u_xlat34 : f32;

var<private> u_xlat10 : vec4<f32>;

@group(0) @binding(5) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb22 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu38 : u32;

fn main_1() {
  var x_117 : f32;
  var x_130 : f32;
  var x_142 : f32;
  var txVec0 : vec3<f32>;
  var x_373 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_880 : f32;
  var x_891 : f32;
  var txVec1 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(x_TerrainHolesTexture, sampler_TerrainHolesTexture, vec2<f32>(x_23.x, x_23.y), x_36);
  u_xlat0.x = x_37.x;
  let x_45 : f32 = u_xlat0.x;
  u_xlatb0 = (x_45 == 0.0f);
  let x_48 : bool = u_xlatb0;
  if (((select(0i, 1i, x_48) * -1i) != 0i)) {
    discard;
  }
  let x_62 : vec4<f32> = vs_TEXCOORD0;
  let x_65 : f32 = x_29.x_GlobalMipBias.x;
  let x_66 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_62.x, x_62.y), x_65);
  u_xlat0 = x_66;
  let x_74 : vec4<f32> = vs_TEXCOORD0;
  let x_77 : f32 = x_29.x_GlobalMipBias.x;
  let x_78 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_74.x, x_74.y), x_77);
  u_xlat1.x = x_78.x;
  let x_85 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb13 = (x_85 == 0.0f);
  let x_90 : vec3<f32> = vs_TEXCOORD7;
  let x_95 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_96 : vec3<f32> = (-(x_90) + x_95);
  let x_97 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_96.x, x_96.y, x_96.z, x_97.w);
  let x_100 : vec4<f32> = u_xlat2;
  let x_102 : vec4<f32> = u_xlat2;
  u_xlat25 = dot(vec3<f32>(x_100.x, x_100.y, x_100.z), vec3<f32>(x_102.x, x_102.y, x_102.z));
  let x_105 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_105);
  let x_107 : f32 = u_xlat25;
  let x_109 : vec4<f32> = u_xlat2;
  let x_111 : vec3<f32> = (vec3<f32>(x_107, x_107, x_107) * vec3<f32>(x_109.x, x_109.y, x_109.z));
  let x_112 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_111.x, x_111.y, x_111.z, x_112.w);
  let x_115 : bool = u_xlatb13;
  if (x_115) {
    let x_121 : f32 = u_xlat2.x;
    x_117 = x_121;
  } else {
    let x_126 : f32 = x_29.unity_MatrixV[0i].z;
    x_117 = x_126;
  }
  let x_127 : f32 = x_117;
  u_xlat3.x = x_127;
  let x_129 : bool = u_xlatb13;
  if (x_129) {
    let x_135 : f32 = u_xlat2.y;
    x_130 = x_135;
  } else {
    let x_138 : f32 = x_29.unity_MatrixV[1i].z;
    x_130 = x_138;
  }
  let x_139 : f32 = x_130;
  u_xlat3.y = x_139;
  let x_141 : bool = u_xlatb13;
  if (x_141) {
    let x_146 : f32 = u_xlat2.z;
    x_142 = x_146;
  } else {
    let x_150 : f32 = x_29.unity_MatrixV[2i].z;
    x_142 = x_150;
  }
  let x_151 : f32 = x_142;
  u_xlat3.z = x_151;
  let x_155 : vec3<f32> = vs_TEXCOORD3;
  let x_156 : vec3<f32> = vs_TEXCOORD3;
  u_xlat13.x = dot(x_155, x_156);
  let x_160 : f32 = u_xlat13.x;
  u_xlat13.x = inverseSqrt(x_160);
  let x_163 : vec3<f32> = u_xlat13;
  let x_165 : vec3<f32> = vs_TEXCOORD3;
  let x_166 : vec3<f32> = (vec3<f32>(x_163.x, x_163.x, x_163.x) * x_165);
  let x_167 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_166.x, x_166.y, x_166.z, x_167.w);
  u_xlat2.w = 1.0f;
  let x_179 : vec4<f32> = x_175.unity_SHAr;
  let x_180 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_179, x_180);
  let x_185 : vec4<f32> = x_175.unity_SHAg;
  let x_186 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_185, x_186);
  let x_191 : vec4<f32> = x_175.unity_SHAb;
  let x_192 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_191, x_192);
  let x_196 : vec4<f32> = u_xlat2;
  let x_198 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_196.y, x_196.z, x_196.z, x_196.x) * vec4<f32>(x_198.x, x_198.y, x_198.z, x_198.z));
  let x_204 : vec4<f32> = x_175.unity_SHBr;
  let x_205 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_204, x_205);
  let x_210 : vec4<f32> = x_175.unity_SHBg;
  let x_211 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_210, x_211);
  let x_216 : vec4<f32> = x_175.unity_SHBb;
  let x_217 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_216, x_217);
  let x_221 : f32 = u_xlat2.y;
  let x_223 : f32 = u_xlat2.y;
  u_xlat13.x = (x_221 * x_223);
  let x_227 : f32 = u_xlat2.x;
  let x_229 : f32 = u_xlat2.x;
  let x_232 : f32 = u_xlat13.x;
  u_xlat13.x = ((x_227 * x_229) + -(x_232));
  let x_238 : vec4<f32> = x_175.unity_SHC;
  let x_240 : vec3<f32> = u_xlat13;
  let x_243 : vec4<f32> = u_xlat6;
  u_xlat13 = ((vec3<f32>(x_238.x, x_238.y, x_238.z) * vec3<f32>(x_240.x, x_240.x, x_240.x)) + vec3<f32>(x_243.x, x_243.y, x_243.z));
  let x_246 : vec3<f32> = u_xlat13;
  let x_247 : vec3<f32> = u_xlat4;
  u_xlat13 = (x_246 + x_247);
  let x_249 : vec3<f32> = u_xlat13;
  u_xlat13 = max(x_249, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_254 : f32 = u_xlat1.x;
  u_xlat38 = ((-(x_254) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_260 : f32 = u_xlat38;
  u_xlat39 = (-(x_260) + 1.0f);
  let x_263 : vec4<f32> = u_xlat0;
  let x_265 : f32 = u_xlat38;
  u_xlat4 = (vec3<f32>(x_263.x, x_263.y, x_263.z) * vec3<f32>(x_265, x_265, x_265));
  let x_268 : vec4<f32> = u_xlat0;
  let x_272 : vec3<f32> = (vec3<f32>(x_268.x, x_268.y, x_268.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_273 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_272.x, x_272.y, x_272.z, x_273.w);
  let x_275 : vec3<f32> = u_xlat1;
  let x_277 : vec4<f32> = u_xlat0;
  let x_282 : vec3<f32> = ((vec3<f32>(x_275.x, x_275.x, x_275.x) * vec3<f32>(x_277.x, x_277.y, x_277.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_283 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_282.x, x_282.y, x_282.z, x_283.w);
  let x_286 : f32 = u_xlat0.w;
  u_xlat1.x = (-(x_286) + 1.0f);
  let x_291 : f32 = u_xlat1.x;
  let x_293 : f32 = u_xlat1.x;
  u_xlat38 = (x_291 * x_293);
  let x_295 : f32 = u_xlat38;
  u_xlat38 = max(x_295, 0.0078125f);
  let x_299 : f32 = u_xlat38;
  let x_300 : f32 = u_xlat38;
  u_xlat40 = (x_299 * x_300);
  let x_304 : f32 = u_xlat0.w;
  let x_305 : f32 = u_xlat39;
  u_xlat36 = (x_304 + x_305);
  let x_307 : f32 = u_xlat36;
  u_xlat36 = clamp(x_307, 0.0f, 1.0f);
  let x_309 : f32 = u_xlat38;
  u_xlat39 = ((x_309 * 4.0f) + 2.0f);
  let x_317 : vec4<f32> = vs_TEXCOORD8;
  let x_318 : vec2<f32> = vec2<f32>(x_317.x, x_317.y);
  let x_321 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_318.x, x_318.y, x_321);
  let x_333 : vec3<f32> = txVec0;
  let x_335 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_333.xy, x_333.z);
  u_xlat5.x = x_335;
  let x_348 : f32 = x_345.x_MainLightShadowParams.x;
  u_xlat17.x = (-(x_348) + 1.0f);
  let x_353 : f32 = u_xlat5.x;
  let x_355 : f32 = x_345.x_MainLightShadowParams.x;
  let x_358 : f32 = u_xlat17.x;
  u_xlat5.x = ((x_353 * x_355) + x_358);
  let x_363 : f32 = vs_TEXCOORD8.z;
  u_xlatb17 = (0.0f >= x_363);
  let x_367 : f32 = vs_TEXCOORD8.z;
  u_xlatb29 = (x_367 >= 1.0f);
  let x_369 : bool = u_xlatb29;
  let x_370 : bool = u_xlatb17;
  u_xlatb17 = (x_369 | x_370);
  let x_372 : bool = u_xlatb17;
  if (x_372) {
    x_373 = 1.0f;
  } else {
    let x_378 : f32 = u_xlat5.x;
    x_373 = x_378;
  }
  let x_379 : f32 = x_373;
  u_xlat5.x = x_379;
  let x_381 : vec3<f32> = vs_TEXCOORD7;
  let x_383 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat17 = (x_381 + -(x_383));
  let x_386 : vec3<f32> = u_xlat17;
  let x_387 : vec3<f32> = u_xlat17;
  u_xlat17.x = dot(x_386, x_387);
  let x_392 : f32 = u_xlat17.x;
  let x_394 : f32 = x_345.x_MainLightShadowParams.z;
  let x_397 : f32 = x_345.x_MainLightShadowParams.w;
  u_xlat29 = ((x_392 * x_394) + x_397);
  let x_399 : f32 = u_xlat29;
  u_xlat29 = clamp(x_399, 0.0f, 1.0f);
  let x_403 : f32 = u_xlat5.x;
  u_xlat41 = (-(x_403) + 1.0f);
  let x_406 : f32 = u_xlat29;
  let x_407 : f32 = u_xlat41;
  let x_410 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_406 * x_407) + x_410);
  let x_413 : vec3<f32> = u_xlat3;
  let x_415 : vec4<f32> = u_xlat2;
  u_xlat29 = dot(-(x_413), vec3<f32>(x_415.x, x_415.y, x_415.z));
  let x_418 : f32 = u_xlat29;
  let x_419 : f32 = u_xlat29;
  u_xlat29 = (x_418 + x_419);
  let x_421 : vec4<f32> = u_xlat2;
  let x_423 : f32 = u_xlat29;
  let x_427 : vec3<f32> = u_xlat3;
  let x_429 : vec3<f32> = ((vec3<f32>(x_421.x, x_421.y, x_421.z) * -(vec3<f32>(x_423, x_423, x_423))) + -(x_427));
  let x_430 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_429.x, x_429.y, x_429.z, x_430.w);
  let x_432 : vec4<f32> = u_xlat2;
  let x_434 : vec3<f32> = u_xlat3;
  u_xlat29 = dot(vec3<f32>(x_432.x, x_432.y, x_432.z), x_434);
  let x_436 : f32 = u_xlat29;
  u_xlat29 = clamp(x_436, 0.0f, 1.0f);
  let x_438 : f32 = u_xlat29;
  u_xlat29 = (-(x_438) + 1.0f);
  let x_441 : f32 = u_xlat29;
  let x_442 : f32 = u_xlat29;
  u_xlat29 = (x_441 * x_442);
  let x_444 : f32 = u_xlat29;
  let x_445 : f32 = u_xlat29;
  u_xlat29 = (x_444 * x_445);
  let x_448 : f32 = u_xlat1.x;
  u_xlat41 = ((-(x_448) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_455 : f32 = u_xlat1.x;
  let x_456 : f32 = u_xlat41;
  u_xlat1.x = (x_455 * x_456);
  let x_460 : f32 = u_xlat1.x;
  u_xlat1.x = (x_460 * 6.0f);
  let x_472 : vec4<f32> = u_xlat6;
  let x_475 : f32 = u_xlat1.x;
  let x_476 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_472.x, x_472.y, x_472.z), x_475);
  u_xlat6 = x_476;
  let x_478 : f32 = u_xlat6.w;
  u_xlat1.x = (x_478 + -1.0f);
  let x_483 : f32 = x_175.unity_SpecCube0_HDR.w;
  let x_485 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_483 * x_485) + 1.0f);
  let x_490 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_490, 0.0f);
  let x_494 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_494);
  let x_498 : f32 = u_xlat1.x;
  let x_500 : f32 = x_175.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_498 * x_500);
  let x_504 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_504);
  let x_508 : f32 = u_xlat1.x;
  let x_510 : f32 = x_175.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_508 * x_510);
  let x_513 : vec4<f32> = u_xlat6;
  let x_515 : vec3<f32> = u_xlat1;
  let x_517 : vec3<f32> = (vec3<f32>(x_513.x, x_513.y, x_513.z) * vec3<f32>(x_515.x, x_515.x, x_515.x));
  let x_518 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_517.x, x_517.y, x_517.z, x_518.w);
  let x_522 : f32 = u_xlat38;
  let x_524 : f32 = u_xlat38;
  u_xlat7 = ((vec2<f32>(x_522, x_522) * vec2<f32>(x_524, x_524)) + vec2<f32>(-1.0f, 1.0f));
  let x_530 : f32 = u_xlat7.y;
  u_xlat1.x = (1.0f / x_530);
  let x_534 : vec4<f32> = u_xlat0;
  let x_537 : f32 = u_xlat36;
  u_xlat19 = (-(vec3<f32>(x_534.x, x_534.y, x_534.z)) + vec3<f32>(x_537, x_537, x_537));
  let x_540 : f32 = u_xlat29;
  let x_542 : vec3<f32> = u_xlat19;
  let x_544 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_540, x_540, x_540) * x_542) + vec3<f32>(x_544.x, x_544.y, x_544.z));
  let x_547 : vec3<f32> = u_xlat1;
  let x_549 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_547.x, x_547.x, x_547.x) * x_549);
  let x_551 : vec4<f32> = u_xlat6;
  let x_553 : vec3<f32> = u_xlat19;
  let x_554 : vec3<f32> = (vec3<f32>(x_551.x, x_551.y, x_551.z) * x_553);
  let x_555 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_554.x, x_554.y, x_554.z, x_555.w);
  let x_557 : vec3<f32> = u_xlat13;
  let x_558 : vec3<f32> = u_xlat4;
  let x_560 : vec4<f32> = u_xlat6;
  u_xlat1 = ((x_557 * x_558) + vec3<f32>(x_560.x, x_560.y, x_560.z));
  let x_564 : f32 = u_xlat5.x;
  let x_566 : f32 = x_175.unity_LightData.z;
  u_xlat36 = (x_564 * x_566);
  let x_569 : vec4<f32> = u_xlat2;
  let x_572 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat37 = dot(vec3<f32>(x_569.x, x_569.y, x_569.z), vec3<f32>(x_572.x, x_572.y, x_572.z));
  let x_575 : f32 = u_xlat37;
  u_xlat37 = clamp(x_575, 0.0f, 1.0f);
  let x_577 : f32 = u_xlat36;
  let x_578 : f32 = u_xlat37;
  u_xlat36 = (x_577 * x_578);
  let x_580 : f32 = u_xlat36;
  let x_583 : vec4<f32> = x_29.x_MainLightColor;
  let x_585 : vec3<f32> = (vec3<f32>(x_580, x_580, x_580) * vec3<f32>(x_583.x, x_583.y, x_583.z));
  let x_586 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_585.x, x_586.y, x_585.y, x_585.z);
  let x_588 : vec3<f32> = u_xlat3;
  let x_590 : vec4<f32> = x_29.x_MainLightPosition;
  let x_592 : vec3<f32> = (x_588 + vec3<f32>(x_590.x, x_590.y, x_590.z));
  let x_593 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_592.x, x_592.y, x_592.z, x_593.w);
  let x_595 : vec4<f32> = u_xlat6;
  let x_597 : vec4<f32> = u_xlat6;
  u_xlat36 = dot(vec3<f32>(x_595.x, x_595.y, x_595.z), vec3<f32>(x_597.x, x_597.y, x_597.z));
  let x_600 : f32 = u_xlat36;
  u_xlat36 = max(x_600, 1.17549435e-38f);
  let x_603 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_603);
  let x_605 : f32 = u_xlat36;
  let x_607 : vec4<f32> = u_xlat6;
  let x_609 : vec3<f32> = (vec3<f32>(x_605, x_605, x_605) * vec3<f32>(x_607.x, x_607.y, x_607.z));
  let x_610 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_609.x, x_609.y, x_609.z, x_610.w);
  let x_612 : vec4<f32> = u_xlat2;
  let x_614 : vec4<f32> = u_xlat6;
  u_xlat36 = dot(vec3<f32>(x_612.x, x_612.y, x_612.z), vec3<f32>(x_614.x, x_614.y, x_614.z));
  let x_617 : f32 = u_xlat36;
  u_xlat36 = clamp(x_617, 0.0f, 1.0f);
  let x_620 : vec4<f32> = x_29.x_MainLightPosition;
  let x_622 : vec4<f32> = u_xlat6;
  u_xlat37 = dot(vec3<f32>(x_620.x, x_620.y, x_620.z), vec3<f32>(x_622.x, x_622.y, x_622.z));
  let x_625 : f32 = u_xlat37;
  u_xlat37 = clamp(x_625, 0.0f, 1.0f);
  let x_627 : f32 = u_xlat36;
  let x_628 : f32 = u_xlat36;
  u_xlat36 = (x_627 * x_628);
  let x_630 : f32 = u_xlat36;
  let x_632 : f32 = u_xlat7.x;
  u_xlat36 = ((x_630 * x_632) + 1.00001001358032226562f);
  let x_636 : f32 = u_xlat37;
  let x_637 : f32 = u_xlat37;
  u_xlat37 = (x_636 * x_637);
  let x_639 : f32 = u_xlat36;
  let x_640 : f32 = u_xlat36;
  u_xlat36 = (x_639 * x_640);
  let x_642 : f32 = u_xlat37;
  u_xlat37 = max(x_642, 0.10000000149011611938f);
  let x_645 : f32 = u_xlat36;
  let x_646 : f32 = u_xlat37;
  u_xlat36 = (x_645 * x_646);
  let x_648 : f32 = u_xlat39;
  let x_649 : f32 = u_xlat36;
  u_xlat36 = (x_648 * x_649);
  let x_651 : f32 = u_xlat40;
  let x_652 : f32 = u_xlat36;
  u_xlat36 = (x_651 / x_652);
  let x_654 : vec4<f32> = u_xlat0;
  let x_656 : f32 = u_xlat36;
  let x_659 : vec3<f32> = u_xlat4;
  let x_660 : vec3<f32> = ((vec3<f32>(x_654.x, x_654.y, x_654.z) * vec3<f32>(x_656, x_656, x_656)) + x_659);
  let x_661 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_660.x, x_660.y, x_660.z, x_661.w);
  let x_665 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_667 : f32 = x_175.unity_LightData.y;
  u_xlat36 = min(x_665, x_667);
  let x_671 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_671));
  let x_675 : f32 = u_xlat17.x;
  let x_678 : f32 = x_345.x_AdditionalShadowFadeParams.x;
  let x_681 : f32 = x_345.x_AdditionalShadowFadeParams.y;
  u_xlat37 = ((x_675 * x_678) + x_681);
  let x_683 : f32 = u_xlat37;
  u_xlat37 = clamp(x_683, 0.0f, 1.0f);
  u_xlat19.x = 0.0f;
  u_xlat19.y = 0.0f;
  u_xlat19.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_695 : u32 = u_xlatu_loop_1;
    let x_696 : u32 = u_xlatu36;
    if ((x_695 < x_696)) {
    } else {
      break;
    }
    let x_699 : u32 = u_xlatu_loop_1;
    u_xlatu17 = (x_699 >> 2u);
    let x_703 : u32 = u_xlatu_loop_1;
    u_xlati42 = bitcast<i32>((x_703 & 3u));
    let x_706 : u32 = u_xlatu17;
    let x_709 : vec4<f32> = x_175.unity_LightIndices[bitcast<i32>(x_706)];
    let x_719 : i32 = u_xlati42;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_724 : vec4<u32> = indexable[x_719];
    u_xlat17.x = dot(x_709, bitcast<vec4<f32>>(x_724));
    let x_730 : f32 = u_xlat17.x;
    u_xlati17 = i32(x_730);
    let x_733 : vec3<f32> = vs_TEXCOORD7;
    let x_744 : i32 = u_xlati17;
    let x_746 : vec4<f32> = x_743.x_AdditionalLightsPosition[x_744];
    let x_749 : i32 = u_xlati17;
    let x_751 : vec4<f32> = x_743.x_AdditionalLightsPosition[x_749];
    u_xlat8 = ((-(x_733) * vec3<f32>(x_746.w, x_746.w, x_746.w)) + vec3<f32>(x_751.x, x_751.y, x_751.z));
    let x_755 : vec3<f32> = u_xlat8;
    let x_756 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(x_755, x_756);
    let x_758 : f32 = u_xlat42;
    u_xlat42 = max(x_758, 0.00006103515625f);
    let x_762 : f32 = u_xlat42;
    u_xlat44 = inverseSqrt(x_762);
    let x_765 : f32 = u_xlat44;
    let x_767 : vec3<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_765, x_765, x_765) * x_767);
    let x_770 : f32 = u_xlat42;
    u_xlat45 = (1.0f / x_770);
    let x_772 : f32 = u_xlat42;
    let x_773 : i32 = u_xlati17;
    let x_775 : f32 = x_743.x_AdditionalLightsAttenuation[x_773].x;
    u_xlat42 = (x_772 * x_775);
    let x_777 : f32 = u_xlat42;
    let x_779 : f32 = u_xlat42;
    u_xlat42 = ((-(x_777) * x_779) + 1.0f);
    let x_782 : f32 = u_xlat42;
    u_xlat42 = max(x_782, 0.0f);
    let x_784 : f32 = u_xlat42;
    let x_785 : f32 = u_xlat42;
    u_xlat42 = (x_784 * x_785);
    let x_787 : f32 = u_xlat42;
    let x_788 : f32 = u_xlat45;
    u_xlat42 = (x_787 * x_788);
    let x_790 : i32 = u_xlati17;
    let x_792 : vec4<f32> = x_743.x_AdditionalLightsSpotDir[x_790];
    let x_794 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_792.x, x_792.y, x_792.z), x_794);
    let x_796 : f32 = u_xlat45;
    let x_797 : i32 = u_xlati17;
    let x_799 : f32 = x_743.x_AdditionalLightsAttenuation[x_797].z;
    let x_801 : i32 = u_xlati17;
    let x_803 : f32 = x_743.x_AdditionalLightsAttenuation[x_801].w;
    u_xlat45 = ((x_796 * x_799) + x_803);
    let x_805 : f32 = u_xlat45;
    u_xlat45 = clamp(x_805, 0.0f, 1.0f);
    let x_807 : f32 = u_xlat45;
    let x_808 : f32 = u_xlat45;
    u_xlat45 = (x_807 * x_808);
    let x_810 : f32 = u_xlat42;
    let x_811 : f32 = u_xlat45;
    u_xlat42 = (x_810 * x_811);
    let x_815 : i32 = u_xlati17;
    let x_817 : f32 = x_345.x_AdditionalShadowParams[x_815].w;
    u_xlati45 = i32(x_817);
    let x_822 : i32 = u_xlati45;
    u_xlatb10.x = (x_822 >= 0i);
    let x_826 : bool = u_xlatb10.x;
    if (x_826) {
      let x_830 : i32 = u_xlati17;
      let x_832 : f32 = x_345.x_AdditionalShadowParams[x_830].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_832, x_832, x_832, x_832))));
      let x_839 : bool = u_xlatb10.x;
      if (x_839) {
        let x_842 : vec3<f32> = u_xlat9;
        let x_845 : vec3<f32> = u_xlat9;
        let x_848 : vec4<bool> = (abs(vec4<f32>(x_842.z, x_842.z, x_842.y, x_842.z)) >= abs(vec4<f32>(x_845.x, x_845.y, x_845.x, x_845.x)));
        u_xlatb10 = vec3<bool>(x_848.x, x_848.y, x_848.z);
        let x_851 : bool = u_xlatb10.y;
        let x_853 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_851 & x_853);
        let x_857 : vec3<f32> = u_xlat9;
        let x_860 : vec4<bool> = (-(vec4<f32>(x_857.z, x_857.y, x_857.x, x_857.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_860.x, x_860.y, x_860.z);
        let x_864 : bool = u_xlatb11.x;
        u_xlat22.x = select(4.0f, 5.0f, x_864);
        let x_869 : bool = u_xlatb11.y;
        u_xlat22.z = select(2.0f, 3.0f, x_869);
        let x_875 : bool = u_xlatb11.z;
        u_xlat11 = select(0.0f, 1.0f, x_875);
        let x_879 : bool = u_xlatb10.z;
        if (x_879) {
          let x_884 : f32 = u_xlat22.z;
          x_880 = x_884;
        } else {
          let x_886 : f32 = u_xlat11;
          x_880 = x_886;
        }
        let x_887 : f32 = x_880;
        u_xlat34 = x_887;
        let x_890 : bool = u_xlatb10.x;
        if (x_890) {
          let x_895 : f32 = u_xlat22.x;
          x_891 = x_895;
        } else {
          let x_897 : f32 = u_xlat34;
          x_891 = x_897;
        }
        let x_898 : f32 = x_891;
        u_xlat10.x = x_898;
        let x_900 : i32 = u_xlati17;
        let x_902 : f32 = x_345.x_AdditionalShadowParams[x_900].w;
        u_xlat22.x = trunc(x_902);
        let x_906 : f32 = u_xlat10.x;
        let x_908 : f32 = u_xlat22.x;
        u_xlat10.x = (x_906 + x_908);
        let x_912 : f32 = u_xlat10.x;
        u_xlati45 = i32(x_912);
      }
      let x_914 : i32 = u_xlati45;
      u_xlati45 = (x_914 << bitcast<u32>(2i));
      let x_916 : vec3<f32> = vs_TEXCOORD7;
      let x_919 : i32 = u_xlati45;
      let x_922 : i32 = u_xlati45;
      let x_926 : vec4<f32> = x_345.x_AdditionalLightsWorldToShadow[((x_919 + 1i) / 4i)][((x_922 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_916.y, x_916.y, x_916.y, x_916.y) * x_926);
      let x_928 : i32 = u_xlati45;
      let x_930 : i32 = u_xlati45;
      let x_933 : vec4<f32> = x_345.x_AdditionalLightsWorldToShadow[(x_928 / 4i)][(x_930 % 4i)];
      let x_934 : vec3<f32> = vs_TEXCOORD7;
      let x_937 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_933 * vec4<f32>(x_934.x, x_934.x, x_934.x, x_934.x)) + x_937);
      let x_939 : i32 = u_xlati45;
      let x_942 : i32 = u_xlati45;
      let x_946 : vec4<f32> = x_345.x_AdditionalLightsWorldToShadow[((x_939 + 2i) / 4i)][((x_942 + 2i) % 4i)];
      let x_947 : vec3<f32> = vs_TEXCOORD7;
      let x_950 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_946 * vec4<f32>(x_947.z, x_947.z, x_947.z, x_947.z)) + x_950);
      let x_952 : vec4<f32> = u_xlat10;
      let x_953 : i32 = u_xlati45;
      let x_956 : i32 = u_xlati45;
      let x_960 : vec4<f32> = x_345.x_AdditionalLightsWorldToShadow[((x_953 + 3i) / 4i)][((x_956 + 3i) % 4i)];
      u_xlat10 = (x_952 + x_960);
      let x_962 : vec4<f32> = u_xlat10;
      let x_964 : vec4<f32> = u_xlat10;
      let x_966 : vec3<f32> = (vec3<f32>(x_962.x, x_962.y, x_962.z) / vec3<f32>(x_964.w, x_964.w, x_964.w));
      let x_967 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_966.x, x_966.y, x_966.z, x_967.w);
      let x_970 : vec4<f32> = u_xlat10;
      let x_971 : vec2<f32> = vec2<f32>(x_970.x, x_970.y);
      let x_973 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_971.x, x_971.y, x_973);
      let x_981 : vec3<f32> = txVec1;
      let x_983 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_981.xy, x_981.z);
      u_xlat45 = x_983;
      let x_984 : i32 = u_xlati17;
      let x_986 : f32 = x_345.x_AdditionalShadowParams[x_984].x;
      u_xlat10.x = (1.0f + -(x_986));
      let x_990 : f32 = u_xlat45;
      let x_991 : i32 = u_xlati17;
      let x_993 : f32 = x_345.x_AdditionalShadowParams[x_991].x;
      let x_996 : f32 = u_xlat10.x;
      u_xlat45 = ((x_990 * x_993) + x_996);
      let x_999 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_999);
      let x_1004 : f32 = u_xlat10.z;
      u_xlatb22 = (x_1004 >= 1.0f);
      let x_1006 : bool = u_xlatb22;
      let x_1008 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_1006 | x_1008);
      let x_1012 : bool = u_xlatb10.x;
      let x_1013 : f32 = u_xlat45;
      u_xlat45 = select(x_1013, 1.0f, x_1012);
    } else {
      u_xlat45 = 1.0f;
    }
    let x_1016 : f32 = u_xlat45;
    u_xlat10.x = (-(x_1016) + 1.0f);
    let x_1020 : f32 = u_xlat37;
    let x_1022 : f32 = u_xlat10.x;
    let x_1024 : f32 = u_xlat45;
    u_xlat45 = ((x_1020 * x_1022) + x_1024);
    let x_1026 : f32 = u_xlat42;
    let x_1027 : f32 = u_xlat45;
    u_xlat42 = (x_1026 * x_1027);
    let x_1029 : vec4<f32> = u_xlat2;
    let x_1031 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_1029.x, x_1029.y, x_1029.z), x_1031);
    let x_1033 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1033, 0.0f, 1.0f);
    let x_1035 : f32 = u_xlat42;
    let x_1036 : f32 = u_xlat45;
    u_xlat42 = (x_1035 * x_1036);
    let x_1038 : f32 = u_xlat42;
    let x_1040 : i32 = u_xlati17;
    let x_1042 : vec4<f32> = x_743.x_AdditionalLightsColor[x_1040];
    let x_1044 : vec3<f32> = (vec3<f32>(x_1038, x_1038, x_1038) * vec3<f32>(x_1042.x, x_1042.y, x_1042.z));
    let x_1045 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1044.x, x_1044.y, x_1044.z, x_1045.w);
    let x_1047 : vec3<f32> = u_xlat8;
    let x_1048 : f32 = u_xlat44;
    let x_1051 : vec3<f32> = u_xlat3;
    u_xlat8 = ((x_1047 * vec3<f32>(x_1048, x_1048, x_1048)) + x_1051);
    let x_1053 : vec3<f32> = u_xlat8;
    let x_1054 : vec3<f32> = u_xlat8;
    u_xlat17.x = dot(x_1053, x_1054);
    let x_1058 : f32 = u_xlat17.x;
    u_xlat17.x = max(x_1058, 1.17549435e-38f);
    let x_1062 : f32 = u_xlat17.x;
    u_xlat17.x = inverseSqrt(x_1062);
    let x_1065 : vec3<f32> = u_xlat17;
    let x_1067 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1065.x, x_1065.x, x_1065.x) * x_1067);
    let x_1069 : vec4<f32> = u_xlat2;
    let x_1071 : vec3<f32> = u_xlat8;
    u_xlat17.x = dot(vec3<f32>(x_1069.x, x_1069.y, x_1069.z), x_1071);
    let x_1075 : f32 = u_xlat17.x;
    u_xlat17.x = clamp(x_1075, 0.0f, 1.0f);
    let x_1078 : vec3<f32> = u_xlat9;
    let x_1079 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(x_1078, x_1079);
    let x_1081 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1081, 0.0f, 1.0f);
    let x_1084 : f32 = u_xlat17.x;
    let x_1086 : f32 = u_xlat17.x;
    u_xlat17.x = (x_1084 * x_1086);
    let x_1090 : f32 = u_xlat17.x;
    let x_1092 : f32 = u_xlat7.x;
    u_xlat17.x = ((x_1090 * x_1092) + 1.00001001358032226562f);
    let x_1096 : f32 = u_xlat42;
    let x_1097 : f32 = u_xlat42;
    u_xlat42 = (x_1096 * x_1097);
    let x_1100 : f32 = u_xlat17.x;
    let x_1102 : f32 = u_xlat17.x;
    u_xlat17.x = (x_1100 * x_1102);
    let x_1105 : f32 = u_xlat42;
    u_xlat42 = max(x_1105, 0.10000000149011611938f);
    let x_1108 : f32 = u_xlat17.x;
    let x_1109 : f32 = u_xlat42;
    u_xlat17.x = (x_1108 * x_1109);
    let x_1112 : f32 = u_xlat39;
    let x_1114 : f32 = u_xlat17.x;
    u_xlat17.x = (x_1112 * x_1114);
    let x_1117 : f32 = u_xlat40;
    let x_1119 : f32 = u_xlat17.x;
    u_xlat17.x = (x_1117 / x_1119);
    let x_1122 : vec4<f32> = u_xlat0;
    let x_1124 : vec3<f32> = u_xlat17;
    let x_1127 : vec3<f32> = u_xlat4;
    u_xlat8 = ((vec3<f32>(x_1122.x, x_1122.y, x_1122.z) * vec3<f32>(x_1124.x, x_1124.x, x_1124.x)) + x_1127);
    let x_1129 : vec3<f32> = u_xlat8;
    let x_1130 : vec4<f32> = u_xlat10;
    let x_1133 : vec3<f32> = u_xlat19;
    u_xlat19 = ((x_1129 * vec3<f32>(x_1130.x, x_1130.y, x_1130.z)) + x_1133);

    continuing {
      let x_1135 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1135 + bitcast<u32>(1i));
    }
  }
  let x_1137 : vec4<f32> = u_xlat6;
  let x_1139 : vec4<f32> = u_xlat5;
  let x_1142 : vec3<f32> = u_xlat1;
  let x_1143 : vec3<f32> = ((vec3<f32>(x_1137.x, x_1137.y, x_1137.z) * vec3<f32>(x_1139.x, x_1139.z, x_1139.w)) + x_1142);
  let x_1144 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1143.x, x_1143.y, x_1143.z, x_1144.w);
  let x_1148 : vec3<f32> = u_xlat19;
  let x_1149 : vec4<f32> = u_xlat0;
  let x_1151 : vec3<f32> = (x_1148 + vec3<f32>(x_1149.x, x_1149.y, x_1149.z));
  let x_1152 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1151.x, x_1151.y, x_1151.z, x_1152.w);
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


