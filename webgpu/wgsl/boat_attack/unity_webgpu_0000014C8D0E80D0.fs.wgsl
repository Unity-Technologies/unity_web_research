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

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlatb0 : bool;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MetallicTex : sampler;

var<private> u_xlat13 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_109 : UnityPerDraw;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat38 : f32;

var<private> u_xlat15 : vec3<f32>;

var<private> u_xlat36 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat16 : vec3<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat28 : f32;

@group(1) @binding(3) var<uniform> x_283 : LightShadows;

var<private> u_xlatb28 : bool;

var<private> u_xlatb40 : bool;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat40 : f32;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat41 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat7 : vec2<f32>;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlat37 : f32;

var<private> u_xlatu36 : u32;

var<private> u_xlatu41 : u32;

var<private> u_xlati42 : i32;

var<private> u_xlati41 : i32;

var<private> u_xlat8 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_687 : AdditionalLights;

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

var<private> u_xlatb41 : bool;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_310 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_824 : f32;
  var x_835 : f32;
  var txVec1 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_TerrainHolesTexture, sampler_TerrainHolesTexture, vec2<f32>(x_23.x, x_23.y), x_35);
  u_xlat0.x = x_36.x;
  let x_44 : f32 = u_xlat0.x;
  u_xlatb0 = (x_44 == 0.0f);
  let x_47 : bool = u_xlatb0;
  if (((select(0i, 1i, x_47) * -1i) != 0i)) {
    discard;
  }
  let x_61 : vec4<f32> = vs_TEXCOORD0;
  let x_64 : f32 = x_28.x_GlobalMipBias.x;
  let x_65 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_61.x, x_61.y), x_64);
  u_xlat0 = x_65;
  let x_73 : vec4<f32> = vs_TEXCOORD0;
  let x_76 : f32 = x_28.x_GlobalMipBias.x;
  let x_77 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_73.x, x_73.y), x_76);
  u_xlat1.x = x_77.x;
  let x_82 : vec4<f32> = vs_TEXCOORD3;
  let x_84 : vec4<f32> = vs_TEXCOORD3;
  u_xlat13.x = dot(vec3<f32>(x_82.x, x_82.y, x_82.z), vec3<f32>(x_84.x, x_84.y, x_84.z));
  let x_89 : f32 = u_xlat13.x;
  u_xlat13.x = inverseSqrt(x_89);
  let x_93 : vec3<f32> = u_xlat13;
  let x_95 : vec4<f32> = vs_TEXCOORD3;
  let x_97 : vec3<f32> = (vec3<f32>(x_93.x, x_93.x, x_93.x) * vec3<f32>(x_95.x, x_95.y, x_95.z));
  let x_98 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_97.x, x_97.y, x_97.z, x_98.w);
  u_xlat2.w = 1.0f;
  let x_113 : vec4<f32> = x_109.unity_SHAr;
  let x_114 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_113, x_114);
  let x_119 : vec4<f32> = x_109.unity_SHAg;
  let x_120 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_119, x_120);
  let x_126 : vec4<f32> = x_109.unity_SHAb;
  let x_127 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_126, x_127);
  let x_131 : vec4<f32> = u_xlat2;
  let x_133 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_131.y, x_131.z, x_131.z, x_131.x) * vec4<f32>(x_133.x, x_133.y, x_133.z, x_133.z));
  let x_139 : vec4<f32> = x_109.unity_SHBr;
  let x_140 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_139, x_140);
  let x_145 : vec4<f32> = x_109.unity_SHBg;
  let x_146 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_145, x_146);
  let x_151 : vec4<f32> = x_109.unity_SHBb;
  let x_152 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_151, x_152);
  let x_156 : f32 = u_xlat2.y;
  let x_158 : f32 = u_xlat2.y;
  u_xlat13.x = (x_156 * x_158);
  let x_162 : f32 = u_xlat2.x;
  let x_164 : f32 = u_xlat2.x;
  let x_167 : f32 = u_xlat13.x;
  u_xlat13.x = ((x_162 * x_164) + -(x_167));
  let x_173 : vec4<f32> = x_109.unity_SHC;
  let x_175 : vec3<f32> = u_xlat13;
  let x_178 : vec3<f32> = u_xlat5;
  u_xlat13 = ((vec3<f32>(x_173.x, x_173.y, x_173.z) * vec3<f32>(x_175.x, x_175.x, x_175.x)) + x_178);
  let x_180 : vec3<f32> = u_xlat13;
  let x_181 : vec3<f32> = u_xlat3;
  u_xlat13 = (x_180 + x_181);
  let x_183 : vec3<f32> = u_xlat13;
  u_xlat13 = max(x_183, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_188 : f32 = u_xlat1.x;
  u_xlat38 = ((-(x_188) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_193 : f32 = u_xlat38;
  u_xlat3.x = (-(x_193) + 1.0f);
  let x_198 : vec4<f32> = u_xlat0;
  let x_200 : f32 = u_xlat38;
  u_xlat15 = (vec3<f32>(x_198.x, x_198.y, x_198.z) * vec3<f32>(x_200, x_200, x_200));
  let x_203 : vec4<f32> = u_xlat0;
  let x_207 : vec3<f32> = (vec3<f32>(x_203.x, x_203.y, x_203.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_208 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_207.x, x_207.y, x_207.z, x_208.w);
  let x_210 : vec3<f32> = u_xlat1;
  let x_212 : vec4<f32> = u_xlat0;
  let x_217 : vec3<f32> = ((vec3<f32>(x_210.x, x_210.x, x_210.x) * vec3<f32>(x_212.x, x_212.y, x_212.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_218 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_217.x, x_217.y, x_217.z, x_218.w);
  let x_221 : f32 = u_xlat0.w;
  u_xlat1.x = (-(x_221) + 1.0f);
  let x_226 : f32 = u_xlat1.x;
  let x_228 : f32 = u_xlat1.x;
  u_xlat38 = (x_226 * x_228);
  let x_230 : f32 = u_xlat38;
  u_xlat38 = max(x_230, 0.0078125f);
  let x_233 : f32 = u_xlat38;
  let x_234 : f32 = u_xlat38;
  u_xlat4.x = (x_233 * x_234);
  let x_239 : f32 = u_xlat0.w;
  let x_241 : f32 = u_xlat3.x;
  u_xlat36 = (x_239 + x_241);
  let x_243 : f32 = u_xlat36;
  u_xlat36 = clamp(x_243, 0.0f, 1.0f);
  let x_245 : f32 = u_xlat38;
  u_xlat3.x = ((x_245 * 4.0f) + 2.0f);
  let x_254 : vec4<f32> = vs_TEXCOORD8;
  let x_255 : vec2<f32> = vec2<f32>(x_254.x, x_254.y);
  let x_258 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_255.x, x_255.y, x_258);
  let x_271 : vec3<f32> = txVec0;
  let x_273 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_271.xy, x_271.z);
  u_xlat16.x = x_273;
  let x_286 : f32 = x_283.x_MainLightShadowParams.x;
  u_xlat28 = (-(x_286) + 1.0f);
  let x_290 : f32 = u_xlat16.x;
  let x_292 : f32 = x_283.x_MainLightShadowParams.x;
  let x_294 : f32 = u_xlat28;
  u_xlat16.x = ((x_290 * x_292) + x_294);
  let x_299 : f32 = vs_TEXCOORD8.z;
  u_xlatb28 = (0.0f >= x_299);
  let x_303 : f32 = vs_TEXCOORD8.z;
  u_xlatb40 = (x_303 >= 1.0f);
  let x_305 : bool = u_xlatb40;
  let x_306 : bool = u_xlatb28;
  u_xlatb28 = (x_305 | x_306);
  let x_308 : bool = u_xlatb28;
  if (x_308) {
    x_310 = 1.0f;
  } else {
    let x_315 : f32 = u_xlat16.x;
    x_310 = x_315;
  }
  let x_316 : f32 = x_310;
  u_xlat16.x = x_316;
  let x_320 : vec3<f32> = vs_TEXCOORD7;
  let x_324 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat5 = (x_320 + -(x_324));
  let x_327 : vec3<f32> = u_xlat5;
  let x_328 : vec3<f32> = u_xlat5;
  u_xlat28 = dot(x_327, x_328);
  let x_331 : f32 = u_xlat28;
  let x_333 : f32 = x_283.x_MainLightShadowParams.z;
  let x_336 : f32 = x_283.x_MainLightShadowParams.w;
  u_xlat40 = ((x_331 * x_333) + x_336);
  let x_338 : f32 = u_xlat40;
  u_xlat40 = clamp(x_338, 0.0f, 1.0f);
  let x_341 : f32 = u_xlat16.x;
  u_xlat5.x = (-(x_341) + 1.0f);
  let x_345 : f32 = u_xlat40;
  let x_347 : f32 = u_xlat5.x;
  let x_350 : f32 = u_xlat16.x;
  u_xlat16.x = ((x_345 * x_347) + x_350);
  let x_354 : f32 = vs_TEXCOORD3.w;
  u_xlat5.x = x_354;
  let x_358 : f32 = vs_TEXCOORD4.w;
  u_xlat5.y = x_358;
  let x_362 : f32 = vs_TEXCOORD5.w;
  u_xlat5.z = x_362;
  let x_364 : vec3<f32> = u_xlat5;
  let x_366 : vec4<f32> = u_xlat2;
  u_xlat40 = dot(-(x_364), vec3<f32>(x_366.x, x_366.y, x_366.z));
  let x_369 : f32 = u_xlat40;
  let x_370 : f32 = u_xlat40;
  u_xlat40 = (x_369 + x_370);
  let x_373 : vec4<f32> = u_xlat2;
  let x_375 : f32 = u_xlat40;
  let x_379 : vec3<f32> = u_xlat5;
  let x_381 : vec3<f32> = ((vec3<f32>(x_373.x, x_373.y, x_373.z) * -(vec3<f32>(x_375, x_375, x_375))) + -(x_379));
  let x_382 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_381.x, x_381.y, x_381.z, x_382.w);
  let x_384 : vec4<f32> = u_xlat2;
  let x_386 : vec3<f32> = u_xlat5;
  u_xlat40 = dot(vec3<f32>(x_384.x, x_384.y, x_384.z), x_386);
  let x_388 : f32 = u_xlat40;
  u_xlat40 = clamp(x_388, 0.0f, 1.0f);
  let x_390 : f32 = u_xlat40;
  u_xlat40 = (-(x_390) + 1.0f);
  let x_393 : f32 = u_xlat40;
  let x_394 : f32 = u_xlat40;
  u_xlat40 = (x_393 * x_394);
  let x_396 : f32 = u_xlat40;
  let x_397 : f32 = u_xlat40;
  u_xlat40 = (x_396 * x_397);
  let x_401 : f32 = u_xlat1.x;
  u_xlat41 = ((-(x_401) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_408 : f32 = u_xlat1.x;
  let x_409 : f32 = u_xlat41;
  u_xlat1.x = (x_408 * x_409);
  let x_413 : f32 = u_xlat1.x;
  u_xlat1.x = (x_413 * 6.0f);
  let x_425 : vec4<f32> = u_xlat6;
  let x_428 : f32 = u_xlat1.x;
  let x_429 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_425.x, x_425.y, x_425.z), x_428);
  u_xlat6 = x_429;
  let x_431 : f32 = u_xlat6.w;
  u_xlat1.x = (x_431 + -1.0f);
  let x_436 : f32 = x_109.unity_SpecCube0_HDR.w;
  let x_438 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_436 * x_438) + 1.0f);
  let x_443 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_443, 0.0f);
  let x_447 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_447);
  let x_451 : f32 = u_xlat1.x;
  let x_453 : f32 = x_109.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_451 * x_453);
  let x_457 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_457);
  let x_461 : f32 = u_xlat1.x;
  let x_463 : f32 = x_109.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_461 * x_463);
  let x_466 : vec4<f32> = u_xlat6;
  let x_468 : vec3<f32> = u_xlat1;
  let x_470 : vec3<f32> = (vec3<f32>(x_466.x, x_466.y, x_466.z) * vec3<f32>(x_468.x, x_468.x, x_468.x));
  let x_471 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_470.x, x_470.y, x_470.z, x_471.w);
  let x_475 : f32 = u_xlat38;
  let x_477 : f32 = u_xlat38;
  u_xlat7 = ((vec2<f32>(x_475, x_475) * vec2<f32>(x_477, x_477)) + vec2<f32>(-1.0f, 1.0f));
  let x_483 : f32 = u_xlat7.y;
  u_xlat1.x = (1.0f / x_483);
  let x_487 : vec4<f32> = u_xlat0;
  let x_490 : f32 = u_xlat36;
  u_xlat19 = (-(vec3<f32>(x_487.x, x_487.y, x_487.z)) + vec3<f32>(x_490, x_490, x_490));
  let x_493 : f32 = u_xlat40;
  let x_495 : vec3<f32> = u_xlat19;
  let x_497 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_493, x_493, x_493) * x_495) + vec3<f32>(x_497.x, x_497.y, x_497.z));
  let x_500 : vec3<f32> = u_xlat1;
  let x_502 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_500.x, x_500.x, x_500.x) * x_502);
  let x_504 : vec4<f32> = u_xlat6;
  let x_506 : vec3<f32> = u_xlat19;
  let x_507 : vec3<f32> = (vec3<f32>(x_504.x, x_504.y, x_504.z) * x_506);
  let x_508 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_507.x, x_507.y, x_507.z, x_508.w);
  let x_510 : vec3<f32> = u_xlat13;
  let x_511 : vec3<f32> = u_xlat15;
  let x_513 : vec4<f32> = u_xlat6;
  u_xlat1 = ((x_510 * x_511) + vec3<f32>(x_513.x, x_513.y, x_513.z));
  let x_517 : f32 = u_xlat16.x;
  let x_520 : f32 = x_109.unity_LightData.z;
  u_xlat36 = (x_517 * x_520);
  let x_523 : vec4<f32> = u_xlat2;
  let x_526 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat37 = dot(vec3<f32>(x_523.x, x_523.y, x_523.z), vec3<f32>(x_526.x, x_526.y, x_526.z));
  let x_529 : f32 = u_xlat37;
  u_xlat37 = clamp(x_529, 0.0f, 1.0f);
  let x_531 : f32 = u_xlat36;
  let x_532 : f32 = u_xlat37;
  u_xlat36 = (x_531 * x_532);
  let x_534 : f32 = u_xlat36;
  let x_538 : vec4<f32> = x_28.x_MainLightColor;
  let x_540 : vec3<f32> = (vec3<f32>(x_534, x_534, x_534) * vec3<f32>(x_538.x, x_538.y, x_538.z));
  let x_541 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_540.x, x_540.y, x_540.z, x_541.w);
  let x_543 : vec3<f32> = u_xlat5;
  let x_545 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat19 = (x_543 + vec3<f32>(x_545.x, x_545.y, x_545.z));
  let x_548 : vec3<f32> = u_xlat19;
  let x_549 : vec3<f32> = u_xlat19;
  u_xlat36 = dot(x_548, x_549);
  let x_551 : f32 = u_xlat36;
  u_xlat36 = max(x_551, 1.17549435e-38f);
  let x_554 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_554);
  let x_556 : f32 = u_xlat36;
  let x_558 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_556, x_556, x_556) * x_558);
  let x_560 : vec4<f32> = u_xlat2;
  let x_562 : vec3<f32> = u_xlat19;
  u_xlat36 = dot(vec3<f32>(x_560.x, x_560.y, x_560.z), x_562);
  let x_564 : f32 = u_xlat36;
  u_xlat36 = clamp(x_564, 0.0f, 1.0f);
  let x_567 : vec4<f32> = x_28.x_MainLightPosition;
  let x_569 : vec3<f32> = u_xlat19;
  u_xlat37 = dot(vec3<f32>(x_567.x, x_567.y, x_567.z), x_569);
  let x_571 : f32 = u_xlat37;
  u_xlat37 = clamp(x_571, 0.0f, 1.0f);
  let x_573 : f32 = u_xlat36;
  let x_574 : f32 = u_xlat36;
  u_xlat36 = (x_573 * x_574);
  let x_576 : f32 = u_xlat36;
  let x_578 : f32 = u_xlat7.x;
  u_xlat36 = ((x_576 * x_578) + 1.00001001358032226562f);
  let x_582 : f32 = u_xlat37;
  let x_583 : f32 = u_xlat37;
  u_xlat37 = (x_582 * x_583);
  let x_585 : f32 = u_xlat36;
  let x_586 : f32 = u_xlat36;
  u_xlat36 = (x_585 * x_586);
  let x_588 : f32 = u_xlat37;
  u_xlat37 = max(x_588, 0.10000000149011611938f);
  let x_591 : f32 = u_xlat36;
  let x_592 : f32 = u_xlat37;
  u_xlat36 = (x_591 * x_592);
  let x_595 : f32 = u_xlat3.x;
  let x_596 : f32 = u_xlat36;
  u_xlat36 = (x_595 * x_596);
  let x_599 : f32 = u_xlat4.x;
  let x_600 : f32 = u_xlat36;
  u_xlat36 = (x_599 / x_600);
  let x_602 : vec4<f32> = u_xlat0;
  let x_604 : f32 = u_xlat36;
  let x_607 : vec3<f32> = u_xlat15;
  u_xlat19 = ((vec3<f32>(x_602.x, x_602.y, x_602.z) * vec3<f32>(x_604, x_604, x_604)) + x_607);
  let x_611 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_613 : f32 = x_109.unity_LightData.y;
  u_xlat36 = min(x_611, x_613);
  let x_617 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_617));
  let x_620 : f32 = u_xlat28;
  let x_623 : f32 = x_283.x_AdditionalShadowFadeParams.x;
  let x_626 : f32 = x_283.x_AdditionalShadowFadeParams.y;
  u_xlat37 = ((x_620 * x_623) + x_626);
  let x_628 : f32 = u_xlat37;
  u_xlat37 = clamp(x_628, 0.0f, 1.0f);
  u_xlat16.x = 0.0f;
  u_xlat16.y = 0.0f;
  u_xlat16.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_640 : u32 = u_xlatu_loop_1;
    let x_641 : u32 = u_xlatu36;
    if ((x_640 < x_641)) {
    } else {
      break;
    }
    let x_644 : u32 = u_xlatu_loop_1;
    u_xlatu41 = (x_644 >> 2u);
    let x_648 : u32 = u_xlatu_loop_1;
    u_xlati42 = bitcast<i32>((x_648 & 3u));
    let x_652 : u32 = u_xlatu41;
    let x_655 : vec4<f32> = x_109.unity_LightIndices[bitcast<i32>(x_652)];
    let x_665 : i32 = u_xlati42;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_670 : vec4<u32> = indexable[x_665];
    u_xlat41 = dot(x_655, bitcast<vec4<f32>>(x_670));
    let x_674 : f32 = u_xlat41;
    u_xlati41 = i32(x_674);
    let x_677 : vec3<f32> = vs_TEXCOORD7;
    let x_688 : i32 = u_xlati41;
    let x_690 : vec4<f32> = x_687.x_AdditionalLightsPosition[x_688];
    let x_693 : i32 = u_xlati41;
    let x_695 : vec4<f32> = x_687.x_AdditionalLightsPosition[x_693];
    u_xlat8 = ((-(x_677) * vec3<f32>(x_690.w, x_690.w, x_690.w)) + vec3<f32>(x_695.x, x_695.y, x_695.z));
    let x_699 : vec3<f32> = u_xlat8;
    let x_700 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(x_699, x_700);
    let x_702 : f32 = u_xlat42;
    u_xlat42 = max(x_702, 0.00006103515625f);
    let x_706 : f32 = u_xlat42;
    u_xlat44 = inverseSqrt(x_706);
    let x_709 : f32 = u_xlat44;
    let x_711 : vec3<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_709, x_709, x_709) * x_711);
    let x_714 : f32 = u_xlat42;
    u_xlat45 = (1.0f / x_714);
    let x_716 : f32 = u_xlat42;
    let x_717 : i32 = u_xlati41;
    let x_719 : f32 = x_687.x_AdditionalLightsAttenuation[x_717].x;
    u_xlat42 = (x_716 * x_719);
    let x_721 : f32 = u_xlat42;
    let x_723 : f32 = u_xlat42;
    u_xlat42 = ((-(x_721) * x_723) + 1.0f);
    let x_726 : f32 = u_xlat42;
    u_xlat42 = max(x_726, 0.0f);
    let x_728 : f32 = u_xlat42;
    let x_729 : f32 = u_xlat42;
    u_xlat42 = (x_728 * x_729);
    let x_731 : f32 = u_xlat42;
    let x_732 : f32 = u_xlat45;
    u_xlat42 = (x_731 * x_732);
    let x_734 : i32 = u_xlati41;
    let x_736 : vec4<f32> = x_687.x_AdditionalLightsSpotDir[x_734];
    let x_738 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_736.x, x_736.y, x_736.z), x_738);
    let x_740 : f32 = u_xlat45;
    let x_741 : i32 = u_xlati41;
    let x_743 : f32 = x_687.x_AdditionalLightsAttenuation[x_741].z;
    let x_745 : i32 = u_xlati41;
    let x_747 : f32 = x_687.x_AdditionalLightsAttenuation[x_745].w;
    u_xlat45 = ((x_740 * x_743) + x_747);
    let x_749 : f32 = u_xlat45;
    u_xlat45 = clamp(x_749, 0.0f, 1.0f);
    let x_751 : f32 = u_xlat45;
    let x_752 : f32 = u_xlat45;
    u_xlat45 = (x_751 * x_752);
    let x_754 : f32 = u_xlat42;
    let x_755 : f32 = u_xlat45;
    u_xlat42 = (x_754 * x_755);
    let x_759 : i32 = u_xlati41;
    let x_761 : f32 = x_283.x_AdditionalShadowParams[x_759].w;
    u_xlati45 = i32(x_761);
    let x_766 : i32 = u_xlati45;
    u_xlatb10.x = (x_766 >= 0i);
    let x_770 : bool = u_xlatb10.x;
    if (x_770) {
      let x_774 : i32 = u_xlati41;
      let x_776 : f32 = x_283.x_AdditionalShadowParams[x_774].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_776, x_776, x_776, x_776))));
      let x_783 : bool = u_xlatb10.x;
      if (x_783) {
        let x_786 : vec3<f32> = u_xlat9;
        let x_789 : vec3<f32> = u_xlat9;
        let x_792 : vec4<bool> = (abs(vec4<f32>(x_786.z, x_786.z, x_786.y, x_786.z)) >= abs(vec4<f32>(x_789.x, x_789.y, x_789.x, x_789.x)));
        u_xlatb10 = vec3<bool>(x_792.x, x_792.y, x_792.z);
        let x_795 : bool = u_xlatb10.y;
        let x_797 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_795 & x_797);
        let x_801 : vec3<f32> = u_xlat9;
        let x_804 : vec4<bool> = (-(vec4<f32>(x_801.z, x_801.y, x_801.x, x_801.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_804.x, x_804.y, x_804.z);
        let x_808 : bool = u_xlatb11.x;
        u_xlat22.x = select(4.0f, 5.0f, x_808);
        let x_813 : bool = u_xlatb11.y;
        u_xlat22.z = select(2.0f, 3.0f, x_813);
        let x_819 : bool = u_xlatb11.z;
        u_xlat11 = select(0.0f, 1.0f, x_819);
        let x_823 : bool = u_xlatb10.z;
        if (x_823) {
          let x_828 : f32 = u_xlat22.z;
          x_824 = x_828;
        } else {
          let x_830 : f32 = u_xlat11;
          x_824 = x_830;
        }
        let x_831 : f32 = x_824;
        u_xlat34 = x_831;
        let x_834 : bool = u_xlatb10.x;
        if (x_834) {
          let x_839 : f32 = u_xlat22.x;
          x_835 = x_839;
        } else {
          let x_841 : f32 = u_xlat34;
          x_835 = x_841;
        }
        let x_842 : f32 = x_835;
        u_xlat10.x = x_842;
        let x_844 : i32 = u_xlati41;
        let x_846 : f32 = x_283.x_AdditionalShadowParams[x_844].w;
        u_xlat22.x = trunc(x_846);
        let x_850 : f32 = u_xlat10.x;
        let x_852 : f32 = u_xlat22.x;
        u_xlat10.x = (x_850 + x_852);
        let x_856 : f32 = u_xlat10.x;
        u_xlati45 = i32(x_856);
      }
      let x_858 : i32 = u_xlati45;
      u_xlati45 = (x_858 << bitcast<u32>(2i));
      let x_860 : vec3<f32> = vs_TEXCOORD7;
      let x_863 : i32 = u_xlati45;
      let x_866 : i32 = u_xlati45;
      let x_870 : vec4<f32> = x_283.x_AdditionalLightsWorldToShadow[((x_863 + 1i) / 4i)][((x_866 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_860.y, x_860.y, x_860.y, x_860.y) * x_870);
      let x_872 : i32 = u_xlati45;
      let x_874 : i32 = u_xlati45;
      let x_877 : vec4<f32> = x_283.x_AdditionalLightsWorldToShadow[(x_872 / 4i)][(x_874 % 4i)];
      let x_878 : vec3<f32> = vs_TEXCOORD7;
      let x_881 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_877 * vec4<f32>(x_878.x, x_878.x, x_878.x, x_878.x)) + x_881);
      let x_883 : i32 = u_xlati45;
      let x_886 : i32 = u_xlati45;
      let x_890 : vec4<f32> = x_283.x_AdditionalLightsWorldToShadow[((x_883 + 2i) / 4i)][((x_886 + 2i) % 4i)];
      let x_891 : vec3<f32> = vs_TEXCOORD7;
      let x_894 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_890 * vec4<f32>(x_891.z, x_891.z, x_891.z, x_891.z)) + x_894);
      let x_896 : vec4<f32> = u_xlat10;
      let x_897 : i32 = u_xlati45;
      let x_900 : i32 = u_xlati45;
      let x_904 : vec4<f32> = x_283.x_AdditionalLightsWorldToShadow[((x_897 + 3i) / 4i)][((x_900 + 3i) % 4i)];
      u_xlat10 = (x_896 + x_904);
      let x_906 : vec4<f32> = u_xlat10;
      let x_908 : vec4<f32> = u_xlat10;
      let x_910 : vec3<f32> = (vec3<f32>(x_906.x, x_906.y, x_906.z) / vec3<f32>(x_908.w, x_908.w, x_908.w));
      let x_911 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_910.x, x_910.y, x_910.z, x_911.w);
      let x_914 : vec4<f32> = u_xlat10;
      let x_915 : vec2<f32> = vec2<f32>(x_914.x, x_914.y);
      let x_917 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_915.x, x_915.y, x_917);
      let x_925 : vec3<f32> = txVec1;
      let x_927 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_925.xy, x_925.z);
      u_xlat45 = x_927;
      let x_928 : i32 = u_xlati41;
      let x_930 : f32 = x_283.x_AdditionalShadowParams[x_928].x;
      u_xlat10.x = (1.0f + -(x_930));
      let x_934 : f32 = u_xlat45;
      let x_935 : i32 = u_xlati41;
      let x_937 : f32 = x_283.x_AdditionalShadowParams[x_935].x;
      let x_940 : f32 = u_xlat10.x;
      u_xlat45 = ((x_934 * x_937) + x_940);
      let x_943 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_943);
      let x_948 : f32 = u_xlat10.z;
      u_xlatb22 = (x_948 >= 1.0f);
      let x_950 : bool = u_xlatb22;
      let x_952 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_950 | x_952);
      let x_956 : bool = u_xlatb10.x;
      let x_957 : f32 = u_xlat45;
      u_xlat45 = select(x_957, 1.0f, x_956);
    } else {
      u_xlat45 = 1.0f;
    }
    let x_960 : f32 = u_xlat45;
    u_xlat10.x = (-(x_960) + 1.0f);
    let x_964 : f32 = u_xlat37;
    let x_966 : f32 = u_xlat10.x;
    let x_968 : f32 = u_xlat45;
    u_xlat45 = ((x_964 * x_966) + x_968);
    let x_970 : f32 = u_xlat42;
    let x_971 : f32 = u_xlat45;
    u_xlat42 = (x_970 * x_971);
    let x_973 : vec4<f32> = u_xlat2;
    let x_975 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_973.x, x_973.y, x_973.z), x_975);
    let x_977 : f32 = u_xlat45;
    u_xlat45 = clamp(x_977, 0.0f, 1.0f);
    let x_979 : f32 = u_xlat42;
    let x_980 : f32 = u_xlat45;
    u_xlat42 = (x_979 * x_980);
    let x_982 : f32 = u_xlat42;
    let x_984 : i32 = u_xlati41;
    let x_986 : vec4<f32> = x_687.x_AdditionalLightsColor[x_984];
    let x_988 : vec3<f32> = (vec3<f32>(x_982, x_982, x_982) * vec3<f32>(x_986.x, x_986.y, x_986.z));
    let x_989 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_988.x, x_988.y, x_988.z, x_989.w);
    let x_991 : vec3<f32> = u_xlat8;
    let x_992 : f32 = u_xlat44;
    let x_995 : vec3<f32> = u_xlat5;
    u_xlat8 = ((x_991 * vec3<f32>(x_992, x_992, x_992)) + x_995);
    let x_997 : vec3<f32> = u_xlat8;
    let x_998 : vec3<f32> = u_xlat8;
    u_xlat41 = dot(x_997, x_998);
    let x_1000 : f32 = u_xlat41;
    u_xlat41 = max(x_1000, 1.17549435e-38f);
    let x_1002 : f32 = u_xlat41;
    u_xlat41 = inverseSqrt(x_1002);
    let x_1004 : f32 = u_xlat41;
    let x_1006 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1004, x_1004, x_1004) * x_1006);
    let x_1008 : vec4<f32> = u_xlat2;
    let x_1010 : vec3<f32> = u_xlat8;
    u_xlat41 = dot(vec3<f32>(x_1008.x, x_1008.y, x_1008.z), x_1010);
    let x_1012 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1012, 0.0f, 1.0f);
    let x_1014 : vec3<f32> = u_xlat9;
    let x_1015 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(x_1014, x_1015);
    let x_1017 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1017, 0.0f, 1.0f);
    let x_1019 : f32 = u_xlat41;
    let x_1020 : f32 = u_xlat41;
    u_xlat41 = (x_1019 * x_1020);
    let x_1022 : f32 = u_xlat41;
    let x_1024 : f32 = u_xlat7.x;
    u_xlat41 = ((x_1022 * x_1024) + 1.00001001358032226562f);
    let x_1027 : f32 = u_xlat42;
    let x_1028 : f32 = u_xlat42;
    u_xlat42 = (x_1027 * x_1028);
    let x_1030 : f32 = u_xlat41;
    let x_1031 : f32 = u_xlat41;
    u_xlat41 = (x_1030 * x_1031);
    let x_1033 : f32 = u_xlat42;
    u_xlat42 = max(x_1033, 0.10000000149011611938f);
    let x_1035 : f32 = u_xlat41;
    let x_1036 : f32 = u_xlat42;
    u_xlat41 = (x_1035 * x_1036);
    let x_1039 : f32 = u_xlat3.x;
    let x_1040 : f32 = u_xlat41;
    u_xlat41 = (x_1039 * x_1040);
    let x_1043 : f32 = u_xlat4.x;
    let x_1044 : f32 = u_xlat41;
    u_xlat41 = (x_1043 / x_1044);
    let x_1046 : vec4<f32> = u_xlat0;
    let x_1048 : f32 = u_xlat41;
    let x_1051 : vec3<f32> = u_xlat15;
    u_xlat8 = ((vec3<f32>(x_1046.x, x_1046.y, x_1046.z) * vec3<f32>(x_1048, x_1048, x_1048)) + x_1051);
    let x_1053 : vec3<f32> = u_xlat8;
    let x_1054 : vec4<f32> = u_xlat10;
    let x_1057 : vec3<f32> = u_xlat16;
    u_xlat16 = ((x_1053 * vec3<f32>(x_1054.x, x_1054.y, x_1054.z)) + x_1057);

    continuing {
      let x_1059 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1059 + bitcast<u32>(1i));
    }
  }
  let x_1061 : vec3<f32> = u_xlat19;
  let x_1062 : vec4<f32> = u_xlat6;
  let x_1065 : vec3<f32> = u_xlat1;
  let x_1066 : vec3<f32> = ((x_1061 * vec3<f32>(x_1062.x, x_1062.y, x_1062.z)) + x_1065);
  let x_1067 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1066.x, x_1066.y, x_1066.z, x_1067.w);
  let x_1071 : vec3<f32> = u_xlat16;
  let x_1072 : vec4<f32> = u_xlat0;
  let x_1074 : vec3<f32> = (x_1071 + vec3<f32>(x_1072.x, x_1072.y, x_1072.z));
  let x_1075 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1074.x, x_1074.y, x_1074.z, x_1075.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD3_param : vec4<f32>, @location(5) vs_TEXCOORD8_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(2) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD5_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


