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

var<private> u_xlat13 : f32;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_150 : UnityPerDraw;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat25 : f32;

var<private> u_xlat37 : f32;

var<private> u_xlat38 : f32;

var<private> u_xlat36 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat39 : f32;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat40 : f32;

@group(1) @binding(3) var<uniform> x_320 : LightShadows;

var<private> u_xlatb40 : bool;

var<private> u_xlatb5 : bool;

var<private> u_xlat17 : f32;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlat41 : f32;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat42 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlatu36 : u32;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlatu40 : u32;

var<private> u_xlati41 : i32;

var<private> u_xlati40 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_706 : AdditionalLights;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat43 : f32;

var<private> u_xlati43 : i32;

var<private> u_xlatb44 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat45 : f32;

var<private> u_xlat44 : f32;

@group(0) @binding(5) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb45 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu39 : u32;

fn main_1() {
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_840 : f32;
  var x_850 : f32;
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
  let x_83 : vec4<f32> = vs_TEXCOORD3;
  let x_85 : vec4<f32> = vs_TEXCOORD3;
  u_xlat13 = dot(vec3<f32>(x_83.x, x_83.y, x_83.z), vec3<f32>(x_85.x, x_85.y, x_85.z));
  let x_88 : f32 = u_xlat13;
  u_xlat13 = inverseSqrt(x_88);
  let x_91 : f32 = u_xlat13;
  let x_93 : vec4<f32> = vs_TEXCOORD3;
  let x_95 : vec3<f32> = (vec3<f32>(x_91, x_91, x_91) * vec3<f32>(x_93.x, x_93.y, x_93.z));
  let x_96 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_95.x, x_95.y, x_95.z, x_96.w);
  let x_103 : f32 = vs_TEXCOORD7.y;
  let x_107 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat13 = (x_103 * x_107);
  let x_110 : f32 = x_29.unity_MatrixV[0i].z;
  let x_112 : f32 = vs_TEXCOORD7.x;
  let x_114 : f32 = u_xlat13;
  u_xlat13 = ((x_110 * x_112) + x_114);
  let x_118 : f32 = x_29.unity_MatrixV[2i].z;
  let x_120 : f32 = vs_TEXCOORD7.z;
  let x_122 : f32 = u_xlat13;
  u_xlat13 = ((x_118 * x_120) + x_122);
  let x_124 : f32 = u_xlat13;
  let x_127 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat13 = (x_124 + x_127);
  let x_129 : f32 = u_xlat13;
  let x_133 : f32 = x_29.x_ProjectionParams.y;
  u_xlat13 = (-(x_129) + -(x_133));
  let x_136 : f32 = u_xlat13;
  u_xlat13 = max(x_136, 0.0f);
  let x_138 : f32 = u_xlat13;
  let x_141 : f32 = x_29.unity_FogParams.x;
  u_xlat13 = (x_138 * x_141);
  u_xlat2.w = 1.0f;
  let x_154 : vec4<f32> = x_150.unity_SHAr;
  let x_155 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_154, x_155);
  let x_160 : vec4<f32> = x_150.unity_SHAg;
  let x_161 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_160, x_161);
  let x_166 : vec4<f32> = x_150.unity_SHAb;
  let x_167 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_166, x_167);
  let x_171 : vec4<f32> = u_xlat2;
  let x_173 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_171.y, x_171.z, x_171.z, x_171.x) * vec4<f32>(x_173.x, x_173.y, x_173.z, x_173.z));
  let x_179 : vec4<f32> = x_150.unity_SHBr;
  let x_180 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_179, x_180);
  let x_185 : vec4<f32> = x_150.unity_SHBg;
  let x_186 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_185, x_186);
  let x_191 : vec4<f32> = x_150.unity_SHBb;
  let x_192 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_191, x_192);
  let x_197 : f32 = u_xlat2.y;
  let x_199 : f32 = u_xlat2.y;
  u_xlat25 = (x_197 * x_199);
  let x_202 : f32 = u_xlat2.x;
  let x_204 : f32 = u_xlat2.x;
  let x_206 : f32 = u_xlat25;
  u_xlat25 = ((x_202 * x_204) + -(x_206));
  let x_211 : vec4<f32> = x_150.unity_SHC;
  let x_213 : f32 = u_xlat25;
  let x_216 : vec3<f32> = u_xlat5;
  let x_217 : vec3<f32> = ((vec3<f32>(x_211.x, x_211.y, x_211.z) * vec3<f32>(x_213, x_213, x_213)) + x_216);
  let x_218 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_217.x, x_217.y, x_217.z, x_218.w);
  let x_220 : vec3<f32> = u_xlat3;
  let x_221 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_220 + vec3<f32>(x_221.x, x_221.y, x_221.z));
  let x_224 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_224, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_228 : f32 = u_xlat1.x;
  u_xlat25 = ((-(x_228) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_234 : f32 = u_xlat25;
  u_xlat37 = (-(x_234) + 1.0f);
  let x_237 : vec4<f32> = u_xlat0;
  let x_239 : f32 = u_xlat25;
  let x_241 : vec3<f32> = (vec3<f32>(x_237.x, x_237.y, x_237.z) * vec3<f32>(x_239, x_239, x_239));
  let x_242 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_241.x, x_241.y, x_241.z, x_242.w);
  let x_244 : vec4<f32> = u_xlat0;
  let x_248 : vec3<f32> = (vec3<f32>(x_244.x, x_244.y, x_244.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_249 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_248.x, x_248.y, x_248.z, x_249.w);
  let x_251 : vec3<f32> = u_xlat1;
  let x_253 : vec4<f32> = u_xlat0;
  let x_258 : vec3<f32> = ((vec3<f32>(x_251.x, x_251.x, x_251.x) * vec3<f32>(x_253.x, x_253.y, x_253.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_259 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_258.x, x_258.y, x_258.z, x_259.w);
  let x_262 : f32 = u_xlat0.w;
  u_xlat1.x = (-(x_262) + 1.0f);
  let x_267 : f32 = u_xlat1.x;
  let x_269 : f32 = u_xlat1.x;
  u_xlat25 = (x_267 * x_269);
  let x_271 : f32 = u_xlat25;
  u_xlat25 = max(x_271, 0.0078125f);
  let x_275 : f32 = u_xlat25;
  let x_276 : f32 = u_xlat25;
  u_xlat38 = (x_275 * x_276);
  let x_280 : f32 = u_xlat0.w;
  let x_281 : f32 = u_xlat37;
  u_xlat36 = (x_280 + x_281);
  let x_283 : f32 = u_xlat36;
  u_xlat36 = clamp(x_283, 0.0f, 1.0f);
  let x_285 : f32 = u_xlat25;
  u_xlat37 = ((x_285 * 4.0f) + 2.0f);
  let x_293 : vec4<f32> = vs_TEXCOORD8;
  let x_294 : vec2<f32> = vec2<f32>(x_293.x, x_293.y);
  let x_296 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_294.x, x_294.y, x_296);
  let x_309 : vec3<f32> = txVec0;
  let x_311 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_309.xy, x_309.z);
  u_xlat39 = x_311;
  let x_322 : f32 = x_320.x_MainLightShadowParams.x;
  u_xlat40 = (-(x_322) + 1.0f);
  let x_325 : f32 = u_xlat39;
  let x_327 : f32 = x_320.x_MainLightShadowParams.x;
  let x_329 : f32 = u_xlat40;
  u_xlat39 = ((x_325 * x_327) + x_329);
  let x_333 : f32 = vs_TEXCOORD8.z;
  u_xlatb40 = (0.0f >= x_333);
  let x_337 : f32 = vs_TEXCOORD8.z;
  u_xlatb5 = (x_337 >= 1.0f);
  let x_339 : bool = u_xlatb40;
  let x_340 : bool = u_xlatb5;
  u_xlatb40 = (x_339 | x_340);
  let x_342 : bool = u_xlatb40;
  let x_343 : f32 = u_xlat39;
  u_xlat39 = select(x_343, 1.0f, x_342);
  let x_345 : vec3<f32> = vs_TEXCOORD7;
  let x_349 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat5 = (x_345 + -(x_349));
  let x_352 : vec3<f32> = u_xlat5;
  let x_353 : vec3<f32> = u_xlat5;
  u_xlat40 = dot(x_352, x_353);
  let x_355 : f32 = u_xlat40;
  let x_357 : f32 = x_320.x_MainLightShadowParams.z;
  let x_360 : f32 = x_320.x_MainLightShadowParams.w;
  u_xlat5.x = ((x_355 * x_357) + x_360);
  let x_364 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_364, 0.0f, 1.0f);
  let x_368 : f32 = u_xlat39;
  u_xlat17 = (-(x_368) + 1.0f);
  let x_372 : f32 = u_xlat5.x;
  let x_373 : f32 = u_xlat17;
  let x_375 : f32 = u_xlat39;
  u_xlat39 = ((x_372 * x_373) + x_375);
  let x_378 : f32 = vs_TEXCOORD3.w;
  u_xlat5.x = x_378;
  let x_382 : f32 = vs_TEXCOORD4.w;
  u_xlat5.y = x_382;
  let x_386 : f32 = vs_TEXCOORD5.w;
  u_xlat5.z = x_386;
  let x_389 : vec3<f32> = u_xlat5;
  let x_391 : vec4<f32> = u_xlat2;
  u_xlat41 = dot(-(x_389), vec3<f32>(x_391.x, x_391.y, x_391.z));
  let x_394 : f32 = u_xlat41;
  let x_395 : f32 = u_xlat41;
  u_xlat41 = (x_394 + x_395);
  let x_398 : vec4<f32> = u_xlat2;
  let x_400 : f32 = u_xlat41;
  let x_404 : vec3<f32> = u_xlat5;
  let x_406 : vec3<f32> = ((vec3<f32>(x_398.x, x_398.y, x_398.z) * -(vec3<f32>(x_400, x_400, x_400))) + -(x_404));
  let x_407 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_406.x, x_406.y, x_406.z, x_407.w);
  let x_409 : vec4<f32> = u_xlat2;
  let x_411 : vec3<f32> = u_xlat5;
  u_xlat41 = dot(vec3<f32>(x_409.x, x_409.y, x_409.z), x_411);
  let x_413 : f32 = u_xlat41;
  u_xlat41 = clamp(x_413, 0.0f, 1.0f);
  let x_415 : f32 = u_xlat41;
  u_xlat41 = (-(x_415) + 1.0f);
  let x_418 : f32 = u_xlat41;
  let x_419 : f32 = u_xlat41;
  u_xlat41 = (x_418 * x_419);
  let x_421 : f32 = u_xlat41;
  let x_422 : f32 = u_xlat41;
  u_xlat41 = (x_421 * x_422);
  let x_426 : f32 = u_xlat1.x;
  u_xlat42 = ((-(x_426) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_433 : f32 = u_xlat1.x;
  let x_434 : f32 = u_xlat42;
  u_xlat1.x = (x_433 * x_434);
  let x_438 : f32 = u_xlat1.x;
  u_xlat1.x = (x_438 * 6.0f);
  let x_450 : vec4<f32> = u_xlat6;
  let x_453 : f32 = u_xlat1.x;
  let x_454 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_450.x, x_450.y, x_450.z), x_453);
  u_xlat6 = x_454;
  let x_456 : f32 = u_xlat6.w;
  u_xlat1.x = (x_456 + -1.0f);
  let x_461 : f32 = x_150.unity_SpecCube0_HDR.w;
  let x_463 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_461 * x_463) + 1.0f);
  let x_468 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_468, 0.0f);
  let x_472 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_472);
  let x_476 : f32 = u_xlat1.x;
  let x_478 : f32 = x_150.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_476 * x_478);
  let x_482 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_482);
  let x_486 : f32 = u_xlat1.x;
  let x_488 : f32 = x_150.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_486 * x_488);
  let x_491 : vec4<f32> = u_xlat6;
  let x_493 : vec3<f32> = u_xlat1;
  let x_495 : vec3<f32> = (vec3<f32>(x_491.x, x_491.y, x_491.z) * vec3<f32>(x_493.x, x_493.x, x_493.x));
  let x_496 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_495.x, x_495.y, x_495.z, x_496.w);
  let x_498 : f32 = u_xlat25;
  let x_500 : f32 = u_xlat25;
  let x_504 : vec2<f32> = ((vec2<f32>(x_498, x_498) * vec2<f32>(x_500, x_500)) + vec2<f32>(-1.0f, 1.0f));
  let x_505 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_504.x, x_505.y, x_504.y);
  let x_508 : f32 = u_xlat1.z;
  u_xlat25 = (1.0f / x_508);
  let x_511 : vec4<f32> = u_xlat0;
  let x_514 : f32 = u_xlat36;
  u_xlat7 = (-(vec3<f32>(x_511.x, x_511.y, x_511.z)) + vec3<f32>(x_514, x_514, x_514));
  let x_517 : f32 = u_xlat41;
  let x_519 : vec3<f32> = u_xlat7;
  let x_521 : vec4<f32> = u_xlat0;
  u_xlat7 = ((vec3<f32>(x_517, x_517, x_517) * x_519) + vec3<f32>(x_521.x, x_521.y, x_521.z));
  let x_524 : f32 = u_xlat25;
  let x_526 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_524, x_524, x_524) * x_526);
  let x_528 : vec4<f32> = u_xlat6;
  let x_530 : vec3<f32> = u_xlat7;
  let x_531 : vec3<f32> = (vec3<f32>(x_528.x, x_528.y, x_528.z) * x_530);
  let x_532 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_531.x, x_531.y, x_531.z, x_532.w);
  let x_534 : vec3<f32> = u_xlat3;
  let x_535 : vec4<f32> = u_xlat4;
  let x_538 : vec4<f32> = u_xlat6;
  u_xlat3 = ((x_534 * vec3<f32>(x_535.x, x_535.y, x_535.z)) + vec3<f32>(x_538.x, x_538.y, x_538.z));
  let x_541 : f32 = u_xlat39;
  let x_543 : f32 = x_150.unity_LightData.z;
  u_xlat36 = (x_541 * x_543);
  let x_545 : vec4<f32> = u_xlat2;
  let x_548 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat25 = dot(vec3<f32>(x_545.x, x_545.y, x_545.z), vec3<f32>(x_548.x, x_548.y, x_548.z));
  let x_551 : f32 = u_xlat25;
  u_xlat25 = clamp(x_551, 0.0f, 1.0f);
  let x_553 : f32 = u_xlat36;
  let x_554 : f32 = u_xlat25;
  u_xlat36 = (x_553 * x_554);
  let x_556 : f32 = u_xlat36;
  let x_559 : vec4<f32> = x_29.x_MainLightColor;
  let x_561 : vec3<f32> = (vec3<f32>(x_556, x_556, x_556) * vec3<f32>(x_559.x, x_559.y, x_559.z));
  let x_562 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_561.x, x_561.y, x_561.z, x_562.w);
  let x_564 : vec3<f32> = u_xlat5;
  let x_566 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat7 = (x_564 + vec3<f32>(x_566.x, x_566.y, x_566.z));
  let x_569 : vec3<f32> = u_xlat7;
  let x_570 : vec3<f32> = u_xlat7;
  u_xlat36 = dot(x_569, x_570);
  let x_572 : f32 = u_xlat36;
  u_xlat36 = max(x_572, 1.17549435e-38f);
  let x_575 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_575);
  let x_577 : f32 = u_xlat36;
  let x_579 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_577, x_577, x_577) * x_579);
  let x_581 : vec4<f32> = u_xlat2;
  let x_583 : vec3<f32> = u_xlat7;
  u_xlat36 = dot(vec3<f32>(x_581.x, x_581.y, x_581.z), x_583);
  let x_585 : f32 = u_xlat36;
  u_xlat36 = clamp(x_585, 0.0f, 1.0f);
  let x_588 : vec4<f32> = x_29.x_MainLightPosition;
  let x_590 : vec3<f32> = u_xlat7;
  u_xlat25 = dot(vec3<f32>(x_588.x, x_588.y, x_588.z), x_590);
  let x_592 : f32 = u_xlat25;
  u_xlat25 = clamp(x_592, 0.0f, 1.0f);
  let x_594 : f32 = u_xlat36;
  let x_595 : f32 = u_xlat36;
  u_xlat36 = (x_594 * x_595);
  let x_597 : f32 = u_xlat36;
  let x_599 : f32 = u_xlat1.x;
  u_xlat36 = ((x_597 * x_599) + 1.00001001358032226562f);
  let x_603 : f32 = u_xlat25;
  let x_604 : f32 = u_xlat25;
  u_xlat25 = (x_603 * x_604);
  let x_606 : f32 = u_xlat36;
  let x_607 : f32 = u_xlat36;
  u_xlat36 = (x_606 * x_607);
  let x_609 : f32 = u_xlat25;
  u_xlat25 = max(x_609, 0.10000000149011611938f);
  let x_612 : f32 = u_xlat36;
  let x_613 : f32 = u_xlat25;
  u_xlat36 = (x_612 * x_613);
  let x_615 : f32 = u_xlat37;
  let x_616 : f32 = u_xlat36;
  u_xlat36 = (x_615 * x_616);
  let x_618 : f32 = u_xlat38;
  let x_619 : f32 = u_xlat36;
  u_xlat36 = (x_618 / x_619);
  let x_621 : vec4<f32> = u_xlat0;
  let x_623 : f32 = u_xlat36;
  let x_626 : vec4<f32> = u_xlat4;
  u_xlat7 = ((vec3<f32>(x_621.x, x_621.y, x_621.z) * vec3<f32>(x_623, x_623, x_623)) + vec3<f32>(x_626.x, x_626.y, x_626.z));
  let x_630 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_632 : f32 = x_150.unity_LightData.y;
  u_xlat36 = min(x_630, x_632);
  let x_636 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_636));
  let x_639 : f32 = u_xlat40;
  let x_642 : f32 = x_320.x_AdditionalShadowFadeParams.x;
  let x_645 : f32 = x_320.x_AdditionalShadowFadeParams.y;
  u_xlat25 = ((x_639 * x_642) + x_645);
  let x_647 : f32 = u_xlat25;
  u_xlat25 = clamp(x_647, 0.0f, 1.0f);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_660 : u32 = u_xlatu_loop_1;
    let x_661 : u32 = u_xlatu36;
    if ((x_660 < x_661)) {
    } else {
      break;
    }
    let x_664 : u32 = u_xlatu_loop_1;
    u_xlatu40 = (x_664 >> 2u);
    let x_668 : u32 = u_xlatu_loop_1;
    u_xlati41 = bitcast<i32>((x_668 & 3u));
    let x_671 : u32 = u_xlatu40;
    let x_674 : vec4<f32> = x_150.unity_LightIndices[bitcast<i32>(x_671)];
    let x_684 : i32 = u_xlati41;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_689 : vec4<u32> = indexable[x_684];
    u_xlat40 = dot(x_674, bitcast<vec4<f32>>(x_689));
    let x_693 : f32 = u_xlat40;
    u_xlati40 = i32(x_693);
    let x_696 : vec3<f32> = vs_TEXCOORD7;
    let x_707 : i32 = u_xlati40;
    let x_709 : vec4<f32> = x_706.x_AdditionalLightsPosition[x_707];
    let x_712 : i32 = u_xlati40;
    let x_714 : vec4<f32> = x_706.x_AdditionalLightsPosition[x_712];
    u_xlat9 = ((-(x_696) * vec3<f32>(x_709.w, x_709.w, x_709.w)) + vec3<f32>(x_714.x, x_714.y, x_714.z));
    let x_717 : vec3<f32> = u_xlat9;
    let x_718 : vec3<f32> = u_xlat9;
    u_xlat41 = dot(x_717, x_718);
    let x_720 : f32 = u_xlat41;
    u_xlat41 = max(x_720, 0.00006103515625f);
    let x_723 : f32 = u_xlat41;
    u_xlat42 = inverseSqrt(x_723);
    let x_726 : f32 = u_xlat42;
    let x_728 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_726, x_726, x_726) * x_728);
    let x_731 : f32 = u_xlat41;
    u_xlat43 = (1.0f / x_731);
    let x_733 : f32 = u_xlat41;
    let x_734 : i32 = u_xlati40;
    let x_736 : f32 = x_706.x_AdditionalLightsAttenuation[x_734].x;
    u_xlat41 = (x_733 * x_736);
    let x_738 : f32 = u_xlat41;
    let x_740 : f32 = u_xlat41;
    u_xlat41 = ((-(x_738) * x_740) + 1.0f);
    let x_743 : f32 = u_xlat41;
    u_xlat41 = max(x_743, 0.0f);
    let x_745 : f32 = u_xlat41;
    let x_746 : f32 = u_xlat41;
    u_xlat41 = (x_745 * x_746);
    let x_748 : f32 = u_xlat41;
    let x_749 : f32 = u_xlat43;
    u_xlat41 = (x_748 * x_749);
    let x_751 : i32 = u_xlati40;
    let x_753 : vec4<f32> = x_706.x_AdditionalLightsSpotDir[x_751];
    let x_755 : vec3<f32> = u_xlat10;
    u_xlat43 = dot(vec3<f32>(x_753.x, x_753.y, x_753.z), x_755);
    let x_757 : f32 = u_xlat43;
    let x_758 : i32 = u_xlati40;
    let x_760 : f32 = x_706.x_AdditionalLightsAttenuation[x_758].z;
    let x_762 : i32 = u_xlati40;
    let x_764 : f32 = x_706.x_AdditionalLightsAttenuation[x_762].w;
    u_xlat43 = ((x_757 * x_760) + x_764);
    let x_766 : f32 = u_xlat43;
    u_xlat43 = clamp(x_766, 0.0f, 1.0f);
    let x_768 : f32 = u_xlat43;
    let x_769 : f32 = u_xlat43;
    u_xlat43 = (x_768 * x_769);
    let x_771 : f32 = u_xlat41;
    let x_772 : f32 = u_xlat43;
    u_xlat41 = (x_771 * x_772);
    let x_776 : i32 = u_xlati40;
    let x_778 : f32 = x_320.x_AdditionalShadowParams[x_776].w;
    u_xlati43 = i32(x_778);
    let x_781 : i32 = u_xlati43;
    u_xlatb44 = (x_781 >= 0i);
    let x_783 : bool = u_xlatb44;
    if (x_783) {
      let x_787 : i32 = u_xlati40;
      let x_789 : f32 = x_320.x_AdditionalShadowParams[x_787].z;
      u_xlatb44 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_789, x_789, x_789, x_789))));
      let x_794 : bool = u_xlatb44;
      if (x_794) {
        let x_799 : vec3<f32> = u_xlat10;
        let x_802 : vec3<f32> = u_xlat10;
        let x_805 : vec4<bool> = (abs(vec4<f32>(x_799.z, x_799.z, x_799.y, x_799.z)) >= abs(vec4<f32>(x_802.x, x_802.y, x_802.x, x_802.x)));
        let x_807 : vec3<bool> = vec3<bool>(x_805.x, x_805.y, x_805.z);
        let x_808 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_807.x, x_807.y, x_807.z, x_808.w);
        let x_811 : bool = u_xlatb11.y;
        let x_813 : bool = u_xlatb11.x;
        u_xlatb44 = (x_811 & x_813);
        let x_815 : vec3<f32> = u_xlat10;
        let x_818 : vec4<bool> = (-(vec4<f32>(x_815.z, x_815.y, x_815.z, x_815.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_819 : vec3<bool> = vec3<bool>(x_818.x, x_818.y, x_818.w);
        let x_820 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_819.x, x_819.y, x_820.z, x_819.z);
        let x_824 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_824);
        let x_829 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_829);
        let x_835 : bool = u_xlatb11.w;
        u_xlat45 = select(0.0f, 1.0f, x_835);
        let x_838 : bool = u_xlatb11.z;
        if (x_838) {
          let x_844 : f32 = u_xlat11.y;
          x_840 = x_844;
        } else {
          let x_846 : f32 = u_xlat45;
          x_840 = x_846;
        }
        let x_847 : f32 = x_840;
        u_xlat45 = x_847;
        let x_849 : bool = u_xlatb44;
        if (x_849) {
          let x_854 : f32 = u_xlat11.x;
          x_850 = x_854;
        } else {
          let x_856 : f32 = u_xlat45;
          x_850 = x_856;
        }
        let x_857 : f32 = x_850;
        u_xlat44 = x_857;
        let x_858 : i32 = u_xlati40;
        let x_860 : f32 = x_320.x_AdditionalShadowParams[x_858].w;
        u_xlat45 = trunc(x_860);
        let x_862 : f32 = u_xlat44;
        let x_863 : f32 = u_xlat45;
        u_xlat44 = (x_862 + x_863);
        let x_865 : f32 = u_xlat44;
        u_xlati43 = i32(x_865);
      }
      let x_867 : i32 = u_xlati43;
      u_xlati43 = (x_867 << bitcast<u32>(2i));
      let x_869 : vec3<f32> = vs_TEXCOORD7;
      let x_872 : i32 = u_xlati43;
      let x_875 : i32 = u_xlati43;
      let x_879 : vec4<f32> = x_320.x_AdditionalLightsWorldToShadow[((x_872 + 1i) / 4i)][((x_875 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_869.y, x_869.y, x_869.y, x_869.y) * x_879);
      let x_881 : i32 = u_xlati43;
      let x_883 : i32 = u_xlati43;
      let x_886 : vec4<f32> = x_320.x_AdditionalLightsWorldToShadow[(x_881 / 4i)][(x_883 % 4i)];
      let x_887 : vec3<f32> = vs_TEXCOORD7;
      let x_890 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_886 * vec4<f32>(x_887.x, x_887.x, x_887.x, x_887.x)) + x_890);
      let x_892 : i32 = u_xlati43;
      let x_895 : i32 = u_xlati43;
      let x_899 : vec4<f32> = x_320.x_AdditionalLightsWorldToShadow[((x_892 + 2i) / 4i)][((x_895 + 2i) % 4i)];
      let x_900 : vec3<f32> = vs_TEXCOORD7;
      let x_903 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_899 * vec4<f32>(x_900.z, x_900.z, x_900.z, x_900.z)) + x_903);
      let x_905 : vec4<f32> = u_xlat11;
      let x_906 : i32 = u_xlati43;
      let x_909 : i32 = u_xlati43;
      let x_913 : vec4<f32> = x_320.x_AdditionalLightsWorldToShadow[((x_906 + 3i) / 4i)][((x_909 + 3i) % 4i)];
      u_xlat11 = (x_905 + x_913);
      let x_915 : vec4<f32> = u_xlat11;
      let x_917 : vec4<f32> = u_xlat11;
      let x_919 : vec3<f32> = (vec3<f32>(x_915.x, x_915.y, x_915.z) / vec3<f32>(x_917.w, x_917.w, x_917.w));
      let x_920 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_919.x, x_919.y, x_919.z, x_920.w);
      let x_923 : vec4<f32> = u_xlat11;
      let x_924 : vec2<f32> = vec2<f32>(x_923.x, x_923.y);
      let x_926 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_924.x, x_924.y, x_926);
      let x_934 : vec3<f32> = txVec1;
      let x_936 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_934.xy, x_934.z);
      u_xlat43 = x_936;
      let x_937 : i32 = u_xlati40;
      let x_939 : f32 = x_320.x_AdditionalShadowParams[x_937].x;
      u_xlat44 = (1.0f + -(x_939));
      let x_942 : f32 = u_xlat43;
      let x_943 : i32 = u_xlati40;
      let x_945 : f32 = x_320.x_AdditionalShadowParams[x_943].x;
      let x_947 : f32 = u_xlat44;
      u_xlat43 = ((x_942 * x_945) + x_947);
      let x_950 : f32 = u_xlat11.z;
      u_xlatb44 = (0.0f >= x_950);
      let x_954 : f32 = u_xlat11.z;
      u_xlatb45 = (x_954 >= 1.0f);
      let x_956 : bool = u_xlatb44;
      let x_957 : bool = u_xlatb45;
      u_xlatb44 = (x_956 | x_957);
      let x_959 : bool = u_xlatb44;
      let x_960 : f32 = u_xlat43;
      u_xlat43 = select(x_960, 1.0f, x_959);
    } else {
      u_xlat43 = 1.0f;
    }
    let x_963 : f32 = u_xlat43;
    u_xlat44 = (-(x_963) + 1.0f);
    let x_966 : f32 = u_xlat25;
    let x_967 : f32 = u_xlat44;
    let x_969 : f32 = u_xlat43;
    u_xlat43 = ((x_966 * x_967) + x_969);
    let x_971 : f32 = u_xlat41;
    let x_972 : f32 = u_xlat43;
    u_xlat41 = (x_971 * x_972);
    let x_974 : vec4<f32> = u_xlat2;
    let x_976 : vec3<f32> = u_xlat10;
    u_xlat43 = dot(vec3<f32>(x_974.x, x_974.y, x_974.z), x_976);
    let x_978 : f32 = u_xlat43;
    u_xlat43 = clamp(x_978, 0.0f, 1.0f);
    let x_980 : f32 = u_xlat41;
    let x_981 : f32 = u_xlat43;
    u_xlat41 = (x_980 * x_981);
    let x_983 : f32 = u_xlat41;
    let x_985 : i32 = u_xlati40;
    let x_987 : vec4<f32> = x_706.x_AdditionalLightsColor[x_985];
    let x_989 : vec3<f32> = (vec3<f32>(x_983, x_983, x_983) * vec3<f32>(x_987.x, x_987.y, x_987.z));
    let x_990 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_989.x, x_989.y, x_989.z, x_990.w);
    let x_992 : vec3<f32> = u_xlat9;
    let x_993 : f32 = u_xlat42;
    let x_996 : vec3<f32> = u_xlat5;
    u_xlat9 = ((x_992 * vec3<f32>(x_993, x_993, x_993)) + x_996);
    let x_998 : vec3<f32> = u_xlat9;
    let x_999 : vec3<f32> = u_xlat9;
    u_xlat40 = dot(x_998, x_999);
    let x_1001 : f32 = u_xlat40;
    u_xlat40 = max(x_1001, 1.17549435e-38f);
    let x_1003 : f32 = u_xlat40;
    u_xlat40 = inverseSqrt(x_1003);
    let x_1005 : f32 = u_xlat40;
    let x_1007 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1005, x_1005, x_1005) * x_1007);
    let x_1009 : vec4<f32> = u_xlat2;
    let x_1011 : vec3<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_1009.x, x_1009.y, x_1009.z), x_1011);
    let x_1013 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1013, 0.0f, 1.0f);
    let x_1015 : vec3<f32> = u_xlat10;
    let x_1016 : vec3<f32> = u_xlat9;
    u_xlat41 = dot(x_1015, x_1016);
    let x_1018 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1018, 0.0f, 1.0f);
    let x_1020 : f32 = u_xlat40;
    let x_1021 : f32 = u_xlat40;
    u_xlat40 = (x_1020 * x_1021);
    let x_1023 : f32 = u_xlat40;
    let x_1025 : f32 = u_xlat1.x;
    u_xlat40 = ((x_1023 * x_1025) + 1.00001001358032226562f);
    let x_1028 : f32 = u_xlat41;
    let x_1029 : f32 = u_xlat41;
    u_xlat41 = (x_1028 * x_1029);
    let x_1031 : f32 = u_xlat40;
    let x_1032 : f32 = u_xlat40;
    u_xlat40 = (x_1031 * x_1032);
    let x_1034 : f32 = u_xlat41;
    u_xlat41 = max(x_1034, 0.10000000149011611938f);
    let x_1036 : f32 = u_xlat40;
    let x_1037 : f32 = u_xlat41;
    u_xlat40 = (x_1036 * x_1037);
    let x_1039 : f32 = u_xlat37;
    let x_1040 : f32 = u_xlat40;
    u_xlat40 = (x_1039 * x_1040);
    let x_1042 : f32 = u_xlat38;
    let x_1043 : f32 = u_xlat40;
    u_xlat40 = (x_1042 / x_1043);
    let x_1045 : vec4<f32> = u_xlat0;
    let x_1047 : f32 = u_xlat40;
    let x_1050 : vec4<f32> = u_xlat4;
    u_xlat9 = ((vec3<f32>(x_1045.x, x_1045.y, x_1045.z) * vec3<f32>(x_1047, x_1047, x_1047)) + vec3<f32>(x_1050.x, x_1050.y, x_1050.z));
    let x_1053 : vec3<f32> = u_xlat9;
    let x_1054 : vec4<f32> = u_xlat11;
    let x_1057 : vec3<f32> = u_xlat8;
    u_xlat8 = ((x_1053 * vec3<f32>(x_1054.x, x_1054.y, x_1054.z)) + x_1057);

    continuing {
      let x_1059 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1059 + bitcast<u32>(1i));
    }
  }
  let x_1061 : vec3<f32> = u_xlat7;
  let x_1062 : vec4<f32> = u_xlat6;
  let x_1065 : vec3<f32> = u_xlat3;
  let x_1066 : vec3<f32> = ((x_1061 * vec3<f32>(x_1062.x, x_1062.y, x_1062.z)) + x_1065);
  let x_1067 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1066.x, x_1066.y, x_1066.z, x_1067.w);
  let x_1069 : vec3<f32> = u_xlat8;
  let x_1070 : vec4<f32> = u_xlat0;
  let x_1072 : vec3<f32> = (x_1069 + vec3<f32>(x_1070.x, x_1070.y, x_1070.z));
  let x_1073 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1072.x, x_1072.y, x_1072.z, x_1073.w);
  let x_1075 : f32 = u_xlat13;
  let x_1076 : f32 = u_xlat13;
  u_xlat36 = (x_1075 * -(x_1076));
  let x_1079 : f32 = u_xlat36;
  u_xlat36 = exp2(x_1079);
  let x_1081 : vec4<f32> = u_xlat0;
  let x_1085 : vec4<f32> = x_29.unity_FogColor;
  let x_1088 : vec3<f32> = (vec3<f32>(x_1081.x, x_1081.y, x_1081.z) + -(vec3<f32>(x_1085.x, x_1085.y, x_1085.z)));
  let x_1089 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1088.x, x_1088.y, x_1088.z, x_1089.w);
  let x_1093 : f32 = u_xlat36;
  let x_1095 : vec4<f32> = u_xlat0;
  let x_1099 : vec4<f32> = x_29.unity_FogColor;
  let x_1101 : vec3<f32> = ((vec3<f32>(x_1093, x_1093, x_1093) * vec3<f32>(x_1095.x, x_1095.y, x_1095.z)) + vec3<f32>(x_1099.x, x_1099.y, x_1099.z));
  let x_1102 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1101.x, x_1101.y, x_1101.z, x_1102.w);
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


