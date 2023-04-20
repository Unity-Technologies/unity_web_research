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

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat1 : f32;

@group(0) @binding(4) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MetallicTex : sampler;

var<private> u_xlat13 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat38 : f32;

var<private> u_xlat15 : vec3<f32>;

var<private> u_xlat4 : f32;

var<private> u_xlat36 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat16 : vec3<f32>;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat28 : f32;

@group(1) @binding(3) var<uniform> x_222 : LightShadows;

var<private> u_xlatb28 : bool;

var<private> u_xlatb40 : bool;

var<private> u_xlat5 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat40 : f32;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat41 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_371 : UnityPerDraw;

var<private> u_xlat7 : vec2<f32>;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlatu36 : u32;

var<private> u_xlatu41 : u32;

var<private> u_xlati42 : i32;

var<private> u_xlati41 : i32;

var<private> u_xlat8 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_612 : AdditionalLights;

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

@group(0) @binding(6) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb22 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu38 : u32;

var<private> u_xlatb41 : bool;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_251 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_749 : f32;
  var x_760 : f32;
  var txVec1 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y), x_35);
  u_xlat0 = x_36;
  let x_44 : vec4<f32> = vs_TEXCOORD0;
  let x_47 : f32 = x_28.x_GlobalMipBias.x;
  let x_48 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_44.x, x_44.y), x_47);
  u_xlat1 = x_48.x;
  let x_53 : vec4<f32> = vs_TEXCOORD3;
  let x_55 : vec4<f32> = vs_TEXCOORD3;
  u_xlat13.x = dot(vec3<f32>(x_53.x, x_53.y, x_53.z), vec3<f32>(x_55.x, x_55.y, x_55.z));
  let x_60 : f32 = u_xlat13.x;
  u_xlat13.x = inverseSqrt(x_60);
  let x_63 : vec3<f32> = u_xlat13;
  let x_65 : vec4<f32> = vs_TEXCOORD3;
  u_xlat13 = (vec3<f32>(x_63.x, x_63.x, x_63.x) * vec3<f32>(x_65.x, x_65.y, x_65.z));
  let x_74 : vec4<f32> = vs_TEXCOORD0;
  let x_77 : f32 = x_28.x_GlobalMipBias.x;
  let x_78 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_74.z, x_74.w), x_77);
  u_xlat2 = x_78;
  let x_84 : vec4<f32> = vs_TEXCOORD0;
  let x_87 : f32 = x_28.x_GlobalMipBias.x;
  let x_88 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_84.z, x_84.w), x_87);
  u_xlat3 = vec3<f32>(x_88.x, x_88.y, x_88.z);
  let x_90 : vec4<f32> = u_xlat2;
  let x_94 : vec3<f32> = (vec3<f32>(x_90.x, x_90.y, x_90.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_95 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_94.x, x_94.y, x_94.z, x_95.w);
  let x_97 : vec3<f32> = u_xlat13;
  let x_98 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(x_97, vec3<f32>(x_98.x, x_98.y, x_98.z));
  let x_103 : f32 = u_xlat2.x;
  u_xlat2.x = (x_103 + 0.5f);
  let x_107 : vec4<f32> = u_xlat2;
  let x_109 : vec3<f32> = u_xlat3;
  let x_110 : vec3<f32> = (vec3<f32>(x_107.x, x_107.x, x_107.x) * x_109);
  let x_111 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_110.x, x_110.y, x_110.z, x_111.w);
  let x_116 : f32 = u_xlat2.w;
  u_xlat38 = max(x_116, 0.00009999999747378752f);
  let x_119 : vec4<f32> = u_xlat2;
  let x_121 : f32 = u_xlat38;
  let x_123 : vec3<f32> = (vec3<f32>(x_119.x, x_119.y, x_119.z) / vec3<f32>(x_121, x_121, x_121));
  let x_124 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_123.x, x_123.y, x_123.z, x_124.w);
  let x_126 : f32 = u_xlat1;
  u_xlat38 = ((-(x_126) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_131 : f32 = u_xlat38;
  u_xlat3.x = (-(x_131) + 1.0f);
  let x_137 : vec4<f32> = u_xlat0;
  let x_139 : f32 = u_xlat38;
  u_xlat15 = (vec3<f32>(x_137.x, x_137.y, x_137.z) * vec3<f32>(x_139, x_139, x_139));
  let x_142 : vec4<f32> = u_xlat0;
  let x_146 : vec3<f32> = (vec3<f32>(x_142.x, x_142.y, x_142.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_147 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_146.x, x_146.y, x_146.z, x_147.w);
  let x_149 : f32 = u_xlat1;
  let x_151 : vec4<f32> = u_xlat0;
  let x_156 : vec3<f32> = ((vec3<f32>(x_149, x_149, x_149) * vec3<f32>(x_151.x, x_151.y, x_151.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_157 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_156.x, x_156.y, x_156.z, x_157.w);
  let x_160 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_160) + 1.0f);
  let x_163 : f32 = u_xlat1;
  let x_164 : f32 = u_xlat1;
  u_xlat38 = (x_163 * x_164);
  let x_166 : f32 = u_xlat38;
  u_xlat38 = max(x_166, 0.0078125f);
  let x_170 : f32 = u_xlat38;
  let x_171 : f32 = u_xlat38;
  u_xlat4 = (x_170 * x_171);
  let x_175 : f32 = u_xlat0.w;
  let x_177 : f32 = u_xlat3.x;
  u_xlat36 = (x_175 + x_177);
  let x_179 : f32 = u_xlat36;
  u_xlat36 = clamp(x_179, 0.0f, 1.0f);
  let x_182 : f32 = u_xlat38;
  u_xlat3.x = ((x_182 * 4.0f) + 2.0f);
  let x_191 : vec4<f32> = vs_TEXCOORD8;
  let x_192 : vec2<f32> = vec2<f32>(x_191.x, x_191.y);
  let x_196 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_192.x, x_192.y, x_196);
  let x_209 : vec3<f32> = txVec0;
  let x_211 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_209.xy, x_209.z);
  u_xlat16.x = x_211;
  let x_225 : f32 = x_222.x_MainLightShadowParams.x;
  u_xlat28 = (-(x_225) + 1.0f);
  let x_229 : f32 = u_xlat16.x;
  let x_231 : f32 = x_222.x_MainLightShadowParams.x;
  let x_233 : f32 = u_xlat28;
  u_xlat16.x = ((x_229 * x_231) + x_233);
  let x_240 : f32 = vs_TEXCOORD8.z;
  u_xlatb28 = (0.0f >= x_240);
  let x_244 : f32 = vs_TEXCOORD8.z;
  u_xlatb40 = (x_244 >= 1.0f);
  let x_246 : bool = u_xlatb40;
  let x_247 : bool = u_xlatb28;
  u_xlatb28 = (x_246 | x_247);
  let x_249 : bool = u_xlatb28;
  if (x_249) {
    x_251 = 1.0f;
  } else {
    let x_256 : f32 = u_xlat16.x;
    x_251 = x_256;
  }
  let x_257 : f32 = x_251;
  u_xlat16.x = x_257;
  let x_262 : vec3<f32> = vs_TEXCOORD7;
  let x_266 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat5 = (x_262 + -(x_266));
  let x_269 : vec3<f32> = u_xlat5;
  let x_270 : vec3<f32> = u_xlat5;
  u_xlat28 = dot(x_269, x_270);
  let x_273 : f32 = u_xlat28;
  let x_275 : f32 = x_222.x_MainLightShadowParams.z;
  let x_278 : f32 = x_222.x_MainLightShadowParams.w;
  u_xlat40 = ((x_273 * x_275) + x_278);
  let x_280 : f32 = u_xlat40;
  u_xlat40 = clamp(x_280, 0.0f, 1.0f);
  let x_283 : f32 = u_xlat16.x;
  u_xlat5.x = (-(x_283) + 1.0f);
  let x_287 : f32 = u_xlat40;
  let x_289 : f32 = u_xlat5.x;
  let x_292 : f32 = u_xlat16.x;
  u_xlat16.x = ((x_287 * x_289) + x_292);
  let x_296 : f32 = vs_TEXCOORD3.w;
  u_xlat5.x = x_296;
  let x_300 : f32 = vs_TEXCOORD4.w;
  u_xlat5.y = x_300;
  let x_305 : f32 = vs_TEXCOORD5.w;
  u_xlat5.z = x_305;
  let x_307 : vec3<f32> = u_xlat5;
  let x_309 : vec3<f32> = u_xlat13;
  u_xlat40 = dot(-(x_307), x_309);
  let x_311 : f32 = u_xlat40;
  let x_312 : f32 = u_xlat40;
  u_xlat40 = (x_311 + x_312);
  let x_315 : vec3<f32> = u_xlat13;
  let x_316 : f32 = u_xlat40;
  let x_320 : vec3<f32> = u_xlat5;
  let x_322 : vec3<f32> = ((x_315 * -(vec3<f32>(x_316, x_316, x_316))) + -(x_320));
  let x_323 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_325 : vec3<f32> = u_xlat13;
  let x_326 : vec3<f32> = u_xlat5;
  u_xlat40 = dot(x_325, x_326);
  let x_328 : f32 = u_xlat40;
  u_xlat40 = clamp(x_328, 0.0f, 1.0f);
  let x_330 : f32 = u_xlat40;
  u_xlat40 = (-(x_330) + 1.0f);
  let x_333 : f32 = u_xlat40;
  let x_334 : f32 = u_xlat40;
  u_xlat40 = (x_333 * x_334);
  let x_336 : f32 = u_xlat40;
  let x_337 : f32 = u_xlat40;
  u_xlat40 = (x_336 * x_337);
  let x_340 : f32 = u_xlat1;
  u_xlat41 = ((-(x_340) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_346 : f32 = u_xlat1;
  let x_347 : f32 = u_xlat41;
  u_xlat1 = (x_346 * x_347);
  let x_349 : f32 = u_xlat1;
  u_xlat1 = (x_349 * 6.0f);
  let x_360 : vec4<f32> = u_xlat6;
  let x_362 : f32 = u_xlat1;
  let x_363 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_360.x, x_360.y, x_360.z), x_362);
  u_xlat6 = x_363;
  let x_365 : f32 = u_xlat6.w;
  u_xlat1 = (x_365 + -1.0f);
  let x_373 : f32 = x_371.unity_SpecCube0_HDR.w;
  let x_374 : f32 = u_xlat1;
  u_xlat1 = ((x_373 * x_374) + 1.0f);
  let x_377 : f32 = u_xlat1;
  u_xlat1 = max(x_377, 0.0f);
  let x_379 : f32 = u_xlat1;
  u_xlat1 = log2(x_379);
  let x_381 : f32 = u_xlat1;
  let x_383 : f32 = x_371.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_381 * x_383);
  let x_385 : f32 = u_xlat1;
  u_xlat1 = exp2(x_385);
  let x_387 : f32 = u_xlat1;
  let x_389 : f32 = x_371.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_387 * x_389);
  let x_391 : vec4<f32> = u_xlat6;
  let x_393 : f32 = u_xlat1;
  let x_395 : vec3<f32> = (vec3<f32>(x_391.x, x_391.y, x_391.z) * vec3<f32>(x_393, x_393, x_393));
  let x_396 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_395.x, x_395.y, x_395.z, x_396.w);
  let x_400 : f32 = u_xlat38;
  let x_402 : f32 = u_xlat38;
  u_xlat7 = ((vec2<f32>(x_400, x_400) * vec2<f32>(x_402, x_402)) + vec2<f32>(-1.0f, 1.0f));
  let x_408 : f32 = u_xlat7.y;
  u_xlat1 = (1.0f / x_408);
  let x_411 : vec4<f32> = u_xlat0;
  let x_414 : f32 = u_xlat36;
  u_xlat19 = (-(vec3<f32>(x_411.x, x_411.y, x_411.z)) + vec3<f32>(x_414, x_414, x_414));
  let x_417 : f32 = u_xlat40;
  let x_419 : vec3<f32> = u_xlat19;
  let x_421 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_417, x_417, x_417) * x_419) + vec3<f32>(x_421.x, x_421.y, x_421.z));
  let x_424 : f32 = u_xlat1;
  let x_426 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_424, x_424, x_424) * x_426);
  let x_428 : vec4<f32> = u_xlat6;
  let x_430 : vec3<f32> = u_xlat19;
  let x_431 : vec3<f32> = (vec3<f32>(x_428.x, x_428.y, x_428.z) * x_430);
  let x_432 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_431.x, x_431.y, x_431.z, x_432.w);
  let x_434 : vec4<f32> = u_xlat2;
  let x_436 : vec3<f32> = u_xlat15;
  let x_438 : vec4<f32> = u_xlat6;
  let x_440 : vec3<f32> = ((vec3<f32>(x_434.x, x_434.y, x_434.z) * x_436) + vec3<f32>(x_438.x, x_438.y, x_438.z));
  let x_441 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_440.x, x_440.y, x_440.z, x_441.w);
  let x_444 : f32 = u_xlat16.x;
  let x_447 : f32 = x_371.unity_LightData.z;
  u_xlat36 = (x_444 * x_447);
  let x_449 : vec3<f32> = u_xlat13;
  let x_453 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat1 = dot(x_449, vec3<f32>(x_453.x, x_453.y, x_453.z));
  let x_456 : f32 = u_xlat1;
  u_xlat1 = clamp(x_456, 0.0f, 1.0f);
  let x_458 : f32 = u_xlat36;
  let x_459 : f32 = u_xlat1;
  u_xlat36 = (x_458 * x_459);
  let x_461 : f32 = u_xlat36;
  let x_465 : vec4<f32> = x_28.x_MainLightColor;
  let x_467 : vec3<f32> = (vec3<f32>(x_461, x_461, x_461) * vec3<f32>(x_465.x, x_465.y, x_465.z));
  let x_468 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_467.x, x_467.y, x_467.z, x_468.w);
  let x_470 : vec3<f32> = u_xlat5;
  let x_472 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat19 = (x_470 + vec3<f32>(x_472.x, x_472.y, x_472.z));
  let x_475 : vec3<f32> = u_xlat19;
  let x_476 : vec3<f32> = u_xlat19;
  u_xlat36 = dot(x_475, x_476);
  let x_478 : f32 = u_xlat36;
  u_xlat36 = max(x_478, 1.17549435e-38f);
  let x_481 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_481);
  let x_483 : f32 = u_xlat36;
  let x_485 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_483, x_483, x_483) * x_485);
  let x_487 : vec3<f32> = u_xlat13;
  let x_488 : vec3<f32> = u_xlat19;
  u_xlat36 = dot(x_487, x_488);
  let x_490 : f32 = u_xlat36;
  u_xlat36 = clamp(x_490, 0.0f, 1.0f);
  let x_493 : vec4<f32> = x_28.x_MainLightPosition;
  let x_495 : vec3<f32> = u_xlat19;
  u_xlat1 = dot(vec3<f32>(x_493.x, x_493.y, x_493.z), x_495);
  let x_497 : f32 = u_xlat1;
  u_xlat1 = clamp(x_497, 0.0f, 1.0f);
  let x_499 : f32 = u_xlat36;
  let x_500 : f32 = u_xlat36;
  u_xlat36 = (x_499 * x_500);
  let x_502 : f32 = u_xlat36;
  let x_504 : f32 = u_xlat7.x;
  u_xlat36 = ((x_502 * x_504) + 1.00001001358032226562f);
  let x_508 : f32 = u_xlat1;
  let x_509 : f32 = u_xlat1;
  u_xlat1 = (x_508 * x_509);
  let x_511 : f32 = u_xlat36;
  let x_512 : f32 = u_xlat36;
  u_xlat36 = (x_511 * x_512);
  let x_514 : f32 = u_xlat1;
  u_xlat1 = max(x_514, 0.10000000149011611938f);
  let x_517 : f32 = u_xlat36;
  let x_518 : f32 = u_xlat1;
  u_xlat36 = (x_517 * x_518);
  let x_521 : f32 = u_xlat3.x;
  let x_522 : f32 = u_xlat36;
  u_xlat36 = (x_521 * x_522);
  let x_524 : f32 = u_xlat4;
  let x_525 : f32 = u_xlat36;
  u_xlat36 = (x_524 / x_525);
  let x_527 : vec4<f32> = u_xlat0;
  let x_529 : f32 = u_xlat36;
  let x_532 : vec3<f32> = u_xlat15;
  u_xlat19 = ((vec3<f32>(x_527.x, x_527.y, x_527.z) * vec3<f32>(x_529, x_529, x_529)) + x_532);
  let x_536 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_538 : f32 = x_371.unity_LightData.y;
  u_xlat36 = min(x_536, x_538);
  let x_542 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_542));
  let x_545 : f32 = u_xlat28;
  let x_548 : f32 = x_222.x_AdditionalShadowFadeParams.x;
  let x_551 : f32 = x_222.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_545 * x_548) + x_551);
  let x_553 : f32 = u_xlat1;
  u_xlat1 = clamp(x_553, 0.0f, 1.0f);
  u_xlat16.x = 0.0f;
  u_xlat16.y = 0.0f;
  u_xlat16.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_565 : u32 = u_xlatu_loop_1;
    let x_566 : u32 = u_xlatu36;
    if ((x_565 < x_566)) {
    } else {
      break;
    }
    let x_569 : u32 = u_xlatu_loop_1;
    u_xlatu41 = (x_569 >> 2u);
    let x_573 : u32 = u_xlatu_loop_1;
    u_xlati42 = bitcast<i32>((x_573 & 3u));
    let x_577 : u32 = u_xlatu41;
    let x_580 : vec4<f32> = x_371.unity_LightIndices[bitcast<i32>(x_577)];
    let x_590 : i32 = u_xlati42;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_595 : vec4<u32> = indexable[x_590];
    u_xlat41 = dot(x_580, bitcast<vec4<f32>>(x_595));
    let x_599 : f32 = u_xlat41;
    u_xlati41 = i32(x_599);
    let x_602 : vec3<f32> = vs_TEXCOORD7;
    let x_613 : i32 = u_xlati41;
    let x_615 : vec4<f32> = x_612.x_AdditionalLightsPosition[x_613];
    let x_618 : i32 = u_xlati41;
    let x_620 : vec4<f32> = x_612.x_AdditionalLightsPosition[x_618];
    u_xlat8 = ((-(x_602) * vec3<f32>(x_615.w, x_615.w, x_615.w)) + vec3<f32>(x_620.x, x_620.y, x_620.z));
    let x_624 : vec3<f32> = u_xlat8;
    let x_625 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(x_624, x_625);
    let x_627 : f32 = u_xlat42;
    u_xlat42 = max(x_627, 0.00006103515625f);
    let x_631 : f32 = u_xlat42;
    u_xlat44 = inverseSqrt(x_631);
    let x_634 : f32 = u_xlat44;
    let x_636 : vec3<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_634, x_634, x_634) * x_636);
    let x_639 : f32 = u_xlat42;
    u_xlat45 = (1.0f / x_639);
    let x_641 : f32 = u_xlat42;
    let x_642 : i32 = u_xlati41;
    let x_644 : f32 = x_612.x_AdditionalLightsAttenuation[x_642].x;
    u_xlat42 = (x_641 * x_644);
    let x_646 : f32 = u_xlat42;
    let x_648 : f32 = u_xlat42;
    u_xlat42 = ((-(x_646) * x_648) + 1.0f);
    let x_651 : f32 = u_xlat42;
    u_xlat42 = max(x_651, 0.0f);
    let x_653 : f32 = u_xlat42;
    let x_654 : f32 = u_xlat42;
    u_xlat42 = (x_653 * x_654);
    let x_656 : f32 = u_xlat42;
    let x_657 : f32 = u_xlat45;
    u_xlat42 = (x_656 * x_657);
    let x_659 : i32 = u_xlati41;
    let x_661 : vec4<f32> = x_612.x_AdditionalLightsSpotDir[x_659];
    let x_663 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_661.x, x_661.y, x_661.z), x_663);
    let x_665 : f32 = u_xlat45;
    let x_666 : i32 = u_xlati41;
    let x_668 : f32 = x_612.x_AdditionalLightsAttenuation[x_666].z;
    let x_670 : i32 = u_xlati41;
    let x_672 : f32 = x_612.x_AdditionalLightsAttenuation[x_670].w;
    u_xlat45 = ((x_665 * x_668) + x_672);
    let x_674 : f32 = u_xlat45;
    u_xlat45 = clamp(x_674, 0.0f, 1.0f);
    let x_676 : f32 = u_xlat45;
    let x_677 : f32 = u_xlat45;
    u_xlat45 = (x_676 * x_677);
    let x_679 : f32 = u_xlat42;
    let x_680 : f32 = u_xlat45;
    u_xlat42 = (x_679 * x_680);
    let x_684 : i32 = u_xlati41;
    let x_686 : f32 = x_222.x_AdditionalShadowParams[x_684].w;
    u_xlati45 = i32(x_686);
    let x_691 : i32 = u_xlati45;
    u_xlatb10.x = (x_691 >= 0i);
    let x_695 : bool = u_xlatb10.x;
    if (x_695) {
      let x_699 : i32 = u_xlati41;
      let x_701 : f32 = x_222.x_AdditionalShadowParams[x_699].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_701, x_701, x_701, x_701))));
      let x_708 : bool = u_xlatb10.x;
      if (x_708) {
        let x_711 : vec3<f32> = u_xlat9;
        let x_714 : vec3<f32> = u_xlat9;
        let x_717 : vec4<bool> = (abs(vec4<f32>(x_711.z, x_711.z, x_711.y, x_711.z)) >= abs(vec4<f32>(x_714.x, x_714.y, x_714.x, x_714.x)));
        u_xlatb10 = vec3<bool>(x_717.x, x_717.y, x_717.z);
        let x_720 : bool = u_xlatb10.y;
        let x_722 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_720 & x_722);
        let x_726 : vec3<f32> = u_xlat9;
        let x_729 : vec4<bool> = (-(vec4<f32>(x_726.z, x_726.y, x_726.x, x_726.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_729.x, x_729.y, x_729.z);
        let x_733 : bool = u_xlatb11.x;
        u_xlat22.x = select(4.0f, 5.0f, x_733);
        let x_738 : bool = u_xlatb11.y;
        u_xlat22.z = select(2.0f, 3.0f, x_738);
        let x_744 : bool = u_xlatb11.z;
        u_xlat11 = select(0.0f, 1.0f, x_744);
        let x_748 : bool = u_xlatb10.z;
        if (x_748) {
          let x_753 : f32 = u_xlat22.z;
          x_749 = x_753;
        } else {
          let x_755 : f32 = u_xlat11;
          x_749 = x_755;
        }
        let x_756 : f32 = x_749;
        u_xlat34 = x_756;
        let x_759 : bool = u_xlatb10.x;
        if (x_759) {
          let x_764 : f32 = u_xlat22.x;
          x_760 = x_764;
        } else {
          let x_766 : f32 = u_xlat34;
          x_760 = x_766;
        }
        let x_767 : f32 = x_760;
        u_xlat10.x = x_767;
        let x_769 : i32 = u_xlati41;
        let x_771 : f32 = x_222.x_AdditionalShadowParams[x_769].w;
        u_xlat22.x = trunc(x_771);
        let x_775 : f32 = u_xlat10.x;
        let x_777 : f32 = u_xlat22.x;
        u_xlat10.x = (x_775 + x_777);
        let x_781 : f32 = u_xlat10.x;
        u_xlati45 = i32(x_781);
      }
      let x_783 : i32 = u_xlati45;
      u_xlati45 = (x_783 << bitcast<u32>(2i));
      let x_785 : vec3<f32> = vs_TEXCOORD7;
      let x_788 : i32 = u_xlati45;
      let x_791 : i32 = u_xlati45;
      let x_795 : vec4<f32> = x_222.x_AdditionalLightsWorldToShadow[((x_788 + 1i) / 4i)][((x_791 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_785.y, x_785.y, x_785.y, x_785.y) * x_795);
      let x_797 : i32 = u_xlati45;
      let x_799 : i32 = u_xlati45;
      let x_802 : vec4<f32> = x_222.x_AdditionalLightsWorldToShadow[(x_797 / 4i)][(x_799 % 4i)];
      let x_803 : vec3<f32> = vs_TEXCOORD7;
      let x_806 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_802 * vec4<f32>(x_803.x, x_803.x, x_803.x, x_803.x)) + x_806);
      let x_808 : i32 = u_xlati45;
      let x_811 : i32 = u_xlati45;
      let x_815 : vec4<f32> = x_222.x_AdditionalLightsWorldToShadow[((x_808 + 2i) / 4i)][((x_811 + 2i) % 4i)];
      let x_816 : vec3<f32> = vs_TEXCOORD7;
      let x_819 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_815 * vec4<f32>(x_816.z, x_816.z, x_816.z, x_816.z)) + x_819);
      let x_821 : vec4<f32> = u_xlat10;
      let x_822 : i32 = u_xlati45;
      let x_825 : i32 = u_xlati45;
      let x_829 : vec4<f32> = x_222.x_AdditionalLightsWorldToShadow[((x_822 + 3i) / 4i)][((x_825 + 3i) % 4i)];
      u_xlat10 = (x_821 + x_829);
      let x_831 : vec4<f32> = u_xlat10;
      let x_833 : vec4<f32> = u_xlat10;
      let x_835 : vec3<f32> = (vec3<f32>(x_831.x, x_831.y, x_831.z) / vec3<f32>(x_833.w, x_833.w, x_833.w));
      let x_836 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_835.x, x_835.y, x_835.z, x_836.w);
      let x_839 : vec4<f32> = u_xlat10;
      let x_840 : vec2<f32> = vec2<f32>(x_839.x, x_839.y);
      let x_842 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_840.x, x_840.y, x_842);
      let x_850 : vec3<f32> = txVec1;
      let x_852 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_850.xy, x_850.z);
      u_xlat45 = x_852;
      let x_853 : i32 = u_xlati41;
      let x_855 : f32 = x_222.x_AdditionalShadowParams[x_853].x;
      u_xlat10.x = (1.0f + -(x_855));
      let x_859 : f32 = u_xlat45;
      let x_860 : i32 = u_xlati41;
      let x_862 : f32 = x_222.x_AdditionalShadowParams[x_860].x;
      let x_865 : f32 = u_xlat10.x;
      u_xlat45 = ((x_859 * x_862) + x_865);
      let x_868 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_868);
      let x_873 : f32 = u_xlat10.z;
      u_xlatb22 = (x_873 >= 1.0f);
      let x_875 : bool = u_xlatb22;
      let x_877 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_875 | x_877);
      let x_881 : bool = u_xlatb10.x;
      let x_882 : f32 = u_xlat45;
      u_xlat45 = select(x_882, 1.0f, x_881);
    } else {
      u_xlat45 = 1.0f;
    }
    let x_885 : f32 = u_xlat45;
    u_xlat10.x = (-(x_885) + 1.0f);
    let x_889 : f32 = u_xlat1;
    let x_891 : f32 = u_xlat10.x;
    let x_893 : f32 = u_xlat45;
    u_xlat45 = ((x_889 * x_891) + x_893);
    let x_895 : f32 = u_xlat42;
    let x_896 : f32 = u_xlat45;
    u_xlat42 = (x_895 * x_896);
    let x_898 : vec3<f32> = u_xlat13;
    let x_899 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_898, x_899);
    let x_901 : f32 = u_xlat45;
    u_xlat45 = clamp(x_901, 0.0f, 1.0f);
    let x_903 : f32 = u_xlat42;
    let x_904 : f32 = u_xlat45;
    u_xlat42 = (x_903 * x_904);
    let x_906 : f32 = u_xlat42;
    let x_908 : i32 = u_xlati41;
    let x_910 : vec4<f32> = x_612.x_AdditionalLightsColor[x_908];
    let x_912 : vec3<f32> = (vec3<f32>(x_906, x_906, x_906) * vec3<f32>(x_910.x, x_910.y, x_910.z));
    let x_913 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_912.x, x_912.y, x_912.z, x_913.w);
    let x_915 : vec3<f32> = u_xlat8;
    let x_916 : f32 = u_xlat44;
    let x_919 : vec3<f32> = u_xlat5;
    u_xlat8 = ((x_915 * vec3<f32>(x_916, x_916, x_916)) + x_919);
    let x_921 : vec3<f32> = u_xlat8;
    let x_922 : vec3<f32> = u_xlat8;
    u_xlat41 = dot(x_921, x_922);
    let x_924 : f32 = u_xlat41;
    u_xlat41 = max(x_924, 1.17549435e-38f);
    let x_926 : f32 = u_xlat41;
    u_xlat41 = inverseSqrt(x_926);
    let x_928 : f32 = u_xlat41;
    let x_930 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_928, x_928, x_928) * x_930);
    let x_932 : vec3<f32> = u_xlat13;
    let x_933 : vec3<f32> = u_xlat8;
    u_xlat41 = dot(x_932, x_933);
    let x_935 : f32 = u_xlat41;
    u_xlat41 = clamp(x_935, 0.0f, 1.0f);
    let x_937 : vec3<f32> = u_xlat9;
    let x_938 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(x_937, x_938);
    let x_940 : f32 = u_xlat42;
    u_xlat42 = clamp(x_940, 0.0f, 1.0f);
    let x_942 : f32 = u_xlat41;
    let x_943 : f32 = u_xlat41;
    u_xlat41 = (x_942 * x_943);
    let x_945 : f32 = u_xlat41;
    let x_947 : f32 = u_xlat7.x;
    u_xlat41 = ((x_945 * x_947) + 1.00001001358032226562f);
    let x_950 : f32 = u_xlat42;
    let x_951 : f32 = u_xlat42;
    u_xlat42 = (x_950 * x_951);
    let x_953 : f32 = u_xlat41;
    let x_954 : f32 = u_xlat41;
    u_xlat41 = (x_953 * x_954);
    let x_956 : f32 = u_xlat42;
    u_xlat42 = max(x_956, 0.10000000149011611938f);
    let x_958 : f32 = u_xlat41;
    let x_959 : f32 = u_xlat42;
    u_xlat41 = (x_958 * x_959);
    let x_962 : f32 = u_xlat3.x;
    let x_963 : f32 = u_xlat41;
    u_xlat41 = (x_962 * x_963);
    let x_965 : f32 = u_xlat4;
    let x_966 : f32 = u_xlat41;
    u_xlat41 = (x_965 / x_966);
    let x_968 : vec4<f32> = u_xlat0;
    let x_970 : f32 = u_xlat41;
    let x_973 : vec3<f32> = u_xlat15;
    u_xlat8 = ((vec3<f32>(x_968.x, x_968.y, x_968.z) * vec3<f32>(x_970, x_970, x_970)) + x_973);
    let x_975 : vec3<f32> = u_xlat8;
    let x_976 : vec4<f32> = u_xlat10;
    let x_979 : vec3<f32> = u_xlat16;
    u_xlat16 = ((x_975 * vec3<f32>(x_976.x, x_976.y, x_976.z)) + x_979);

    continuing {
      let x_981 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_981 + bitcast<u32>(1i));
    }
  }
  let x_983 : vec3<f32> = u_xlat19;
  let x_984 : vec4<f32> = u_xlat6;
  let x_987 : vec4<f32> = u_xlat2;
  let x_989 : vec3<f32> = ((x_983 * vec3<f32>(x_984.x, x_984.y, x_984.z)) + vec3<f32>(x_987.x, x_987.y, x_987.z));
  let x_990 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_989.x, x_989.y, x_989.z, x_990.w);
  let x_994 : vec3<f32> = u_xlat16;
  let x_995 : vec4<f32> = u_xlat0;
  let x_997 : vec3<f32> = (x_994 + vec3<f32>(x_995.x, x_995.y, x_995.z));
  let x_998 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_997.x, x_997.y, x_997.z, x_998.w);
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


