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
  unity_OrthoParams : vec4<f32>,
  /* @offset(96) */
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  /* @offset(0) */
  Texture2D_B222E8F_TexelSize : vec4<f32>,
  /* @offset(16) */
  Color_C30C7CA3 : vec4<f32>,
  /* @offset(32) */
  Texture2D_D9BFD5F1_TexelSize : vec4<f32>,
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

var<private> u_xlat0 : vec3<f32>;

var<private> vs_INTERP9 : vec3<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(3) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(7) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_53 : PGlobals;

var<private> u_xlat2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_65 : UnityPerMaterial;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(4) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(8) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat36 : f32;

var<private> u_xlat15 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

var<private> vs_INTERP8 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_130 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu36 : u32;

var<private> u_xlati36 : i32;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat38 : f32;

var<private> u_xlatb38 : bool;

var<private> u_xlatb1 : bool;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlat25 : f32;

var<private> u_xlat37 : f32;

var<private> u_xlatb25 : bool;

var<private> u_xlatb13 : vec3<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_490 : UnityPerDraw;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat40 : f32;

var<private> u_xlat41 : f32;

var<private> u_xlat18 : vec3<f32>;

var<private> u_xlat30 : f32;

var<private> u_xlat19 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu6 : u32;

var<private> u_xlati43 : i32;

var<private> u_xlati6 : i32;

@group(1) @binding(1) var<uniform> x_1119 : AdditionalLights;

var<private> u_xlat43 : f32;

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

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb22 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlatu39 : u32;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_402 : f32;
  var x_451 : f32;
  var x_594 : f32;
  var x_607 : f32;
  var x_619 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1257 : f32;
  var x_1268 : f32;
  var txVec1 : vec3<f32>;
  var x_1551 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_INTERP9;
  let x_13 : vec3<f32> = vs_INTERP9;
  u_xlat0.x = dot(x_12, x_13);
  let x_20 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_20);
  let x_25 : f32 = u_xlat0.x;
  u_xlat0.x = (1.0f / x_25);
  let x_28 : vec3<f32> = u_xlat0;
  let x_30 : vec3<f32> = vs_INTERP9;
  u_xlat0 = (vec3<f32>(x_28.x, x_28.x, x_28.x) * x_30);
  let x_48 : vec4<f32> = vs_INTERP5;
  let x_58 : f32 = x_53.x_GlobalMipBias.x;
  let x_59 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_48.x, x_48.y), x_58);
  u_xlat1 = x_59;
  let x_61 : vec4<f32> = u_xlat1;
  let x_69 : vec4<f32> = x_65.Color_C30C7CA3;
  u_xlat2 = (vec3<f32>(x_61.x, x_61.y, x_61.z) * vec3<f32>(x_69.x, x_69.y, x_69.z));
  let x_78 : vec4<f32> = vs_INTERP5;
  let x_81 : f32 = x_53.x_GlobalMipBias.x;
  let x_82 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_78.x, x_78.y), x_81);
  u_xlat3 = vec4<f32>(x_82.w, x_82.x, x_82.y, x_82.z);
  let x_85 : vec4<f32> = u_xlat3;
  u_xlat4 = ((vec4<f32>(x_85.y, x_85.z, x_85.w, x_85.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_94 : vec4<f32> = u_xlat4;
  let x_95 : vec4<f32> = u_xlat4;
  u_xlat36 = dot(x_94, x_95);
  let x_97 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_97);
  let x_100 : f32 = u_xlat36;
  let x_102 : vec4<f32> = u_xlat4;
  u_xlat15 = (vec3<f32>(x_100, x_100, x_100) * vec3<f32>(x_102.x, x_102.y, x_102.z));
  let x_109 : f32 = vs_INTERP6.y;
  u_xlat36 = (x_109 * 200.0f);
  let x_112 : f32 = u_xlat36;
  u_xlat36 = min(x_112, 1.0f);
  let x_114 : f32 = u_xlat36;
  let x_116 : vec4<f32> = u_xlat1;
  let x_118 : vec3<f32> = (vec3<f32>(x_114, x_114, x_114) * vec3<f32>(x_116.x, x_116.y, x_116.z));
  let x_119 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_118.x, x_118.y, x_118.z, x_119.w);
  let x_122 : vec3<f32> = vs_INTERP8;
  let x_132 : vec4<f32> = x_130.x_CascadeShadowSplitSpheres0;
  let x_135 : vec3<f32> = (x_122 + -(vec3<f32>(x_132.x, x_132.y, x_132.z)));
  let x_136 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_135.x, x_135.y, x_135.z, x_136.w);
  let x_139 : vec3<f32> = vs_INTERP8;
  let x_142 : vec4<f32> = x_130.x_CascadeShadowSplitSpheres1;
  let x_145 : vec3<f32> = (x_139 + -(vec3<f32>(x_142.x, x_142.y, x_142.z)));
  let x_146 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_145.x, x_145.y, x_145.z, x_146.w);
  let x_149 : vec3<f32> = vs_INTERP8;
  let x_152 : vec4<f32> = x_130.x_CascadeShadowSplitSpheres2;
  u_xlat6 = (x_149 + -(vec3<f32>(x_152.x, x_152.y, x_152.z)));
  let x_157 : vec3<f32> = vs_INTERP8;
  let x_160 : vec4<f32> = x_130.x_CascadeShadowSplitSpheres3;
  let x_163 : vec3<f32> = (x_157 + -(vec3<f32>(x_160.x, x_160.y, x_160.z)));
  let x_164 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_163.x, x_163.y, x_163.z, x_164.w);
  let x_166 : vec4<f32> = u_xlat4;
  let x_168 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_166.x, x_166.y, x_166.z), vec3<f32>(x_168.x, x_168.y, x_168.z));
  let x_172 : vec4<f32> = u_xlat5;
  let x_174 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_172.x, x_172.y, x_172.z), vec3<f32>(x_174.x, x_174.y, x_174.z));
  let x_178 : vec3<f32> = u_xlat6;
  let x_179 : vec3<f32> = u_xlat6;
  u_xlat4.z = dot(x_178, x_179);
  let x_183 : vec4<f32> = u_xlat7;
  let x_185 : vec4<f32> = u_xlat7;
  u_xlat4.w = dot(vec3<f32>(x_183.x, x_183.y, x_183.z), vec3<f32>(x_185.x, x_185.y, x_185.z));
  let x_194 : vec4<f32> = u_xlat4;
  let x_197 : vec4<f32> = x_130.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_194 < x_197);
  let x_201 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_201);
  let x_206 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_206);
  let x_210 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_210);
  let x_214 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_214);
  let x_218 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_218);
  let x_223 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_223);
  let x_227 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_227);
  let x_230 : vec4<f32> = u_xlat4;
  let x_232 : vec4<f32> = u_xlat5;
  let x_234 : vec3<f32> = (vec3<f32>(x_230.x, x_230.y, x_230.z) + vec3<f32>(x_232.y, x_232.z, x_232.w));
  let x_235 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_234.x, x_234.y, x_234.z, x_235.w);
  let x_237 : vec4<f32> = u_xlat4;
  let x_240 : vec3<f32> = max(vec3<f32>(x_237.x, x_237.y, x_237.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_241 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_241.x, x_240.x, x_240.y, x_240.z);
  let x_243 : vec4<f32> = u_xlat5;
  u_xlat36 = dot(x_243, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_248 : f32 = u_xlat36;
  u_xlat36 = (-(x_248) + 4.0f);
  let x_253 : f32 = u_xlat36;
  u_xlatu36 = u32(x_253);
  let x_257 : u32 = u_xlatu36;
  u_xlati36 = (bitcast<i32>(x_257) << bitcast<u32>(2i));
  let x_260 : vec3<f32> = vs_INTERP8;
  let x_262 : i32 = u_xlati36;
  let x_265 : i32 = u_xlati36;
  let x_269 : vec4<f32> = x_130.x_MainLightWorldToShadow[((x_262 + 1i) / 4i)][((x_265 + 1i) % 4i)];
  let x_271 : vec3<f32> = (vec3<f32>(x_260.y, x_260.y, x_260.y) * vec3<f32>(x_269.x, x_269.y, x_269.z));
  let x_272 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_271.x, x_271.y, x_271.z, x_272.w);
  let x_274 : i32 = u_xlati36;
  let x_276 : i32 = u_xlati36;
  let x_279 : vec4<f32> = x_130.x_MainLightWorldToShadow[(x_274 / 4i)][(x_276 % 4i)];
  let x_281 : vec3<f32> = vs_INTERP8;
  let x_284 : vec4<f32> = u_xlat4;
  let x_286 : vec3<f32> = ((vec3<f32>(x_279.x, x_279.y, x_279.z) * vec3<f32>(x_281.x, x_281.x, x_281.x)) + vec3<f32>(x_284.x, x_284.y, x_284.z));
  let x_287 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_286.x, x_286.y, x_286.z, x_287.w);
  let x_289 : i32 = u_xlati36;
  let x_292 : i32 = u_xlati36;
  let x_296 : vec4<f32> = x_130.x_MainLightWorldToShadow[((x_289 + 2i) / 4i)][((x_292 + 2i) % 4i)];
  let x_298 : vec3<f32> = vs_INTERP8;
  let x_301 : vec4<f32> = u_xlat4;
  let x_303 : vec3<f32> = ((vec3<f32>(x_296.x, x_296.y, x_296.z) * vec3<f32>(x_298.z, x_298.z, x_298.z)) + vec3<f32>(x_301.x, x_301.y, x_301.z));
  let x_304 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
  let x_306 : vec4<f32> = u_xlat4;
  let x_308 : i32 = u_xlati36;
  let x_311 : i32 = u_xlati36;
  let x_315 : vec4<f32> = x_130.x_MainLightWorldToShadow[((x_308 + 3i) / 4i)][((x_311 + 3i) % 4i)];
  let x_317 : vec3<f32> = (vec3<f32>(x_306.x, x_306.y, x_306.z) + vec3<f32>(x_315.x, x_315.y, x_315.z));
  let x_318 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_317.x, x_317.y, x_317.z, x_318.w);
  let x_322 : vec4<f32> = u_xlat4;
  let x_323 : vec2<f32> = vec2<f32>(x_322.x, x_322.y);
  let x_325 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_323.x, x_323.y, x_325);
  let x_337 : vec3<f32> = txVec0;
  let x_339 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_337.xy, x_337.z);
  u_xlat36 = x_339;
  let x_343 : f32 = x_130.x_MainLightShadowParams.x;
  u_xlat38 = (-(x_343) + 1.0f);
  let x_346 : f32 = u_xlat36;
  let x_348 : f32 = x_130.x_MainLightShadowParams.x;
  let x_350 : f32 = u_xlat38;
  u_xlat36 = ((x_346 * x_348) + x_350);
  let x_354 : f32 = u_xlat4.z;
  u_xlatb38 = (0.0f >= x_354);
  let x_357 : f32 = u_xlat4.z;
  u_xlatb4.x = (x_357 >= 1.0f);
  let x_360 : bool = u_xlatb38;
  let x_362 : bool = u_xlatb4.x;
  u_xlatb38 = (x_360 | x_362);
  let x_364 : bool = u_xlatb38;
  let x_365 : f32 = u_xlat36;
  u_xlat36 = select(x_365, 1.0f, x_364);
  let x_367 : vec3<f32> = u_xlat0;
  let x_369 : vec4<f32> = x_53.x_MainLightPosition;
  u_xlat0.x = dot(x_367, -(vec3<f32>(x_369.x, x_369.y, x_369.z)));
  let x_375 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_375, 0.0f, 1.0f);
  let x_378 : f32 = u_xlat36;
  let x_381 : vec4<f32> = x_53.x_MainLightColor;
  let x_383 : vec3<f32> = (vec3<f32>(x_378, x_378, x_378) * vec3<f32>(x_381.x, x_381.y, x_381.z));
  let x_384 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
  let x_386 : vec3<f32> = u_xlat0;
  let x_388 : vec4<f32> = u_xlat4;
  u_xlat0 = (vec3<f32>(x_386.x, x_386.x, x_386.x) * vec3<f32>(x_388.x, x_388.y, x_388.z));
  let x_391 : vec3<f32> = u_xlat0;
  let x_392 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_391 * vec3<f32>(x_392.x, x_392.y, x_392.z));
  let x_397 : f32 = u_xlat1.w;
  u_xlatb1 = (x_397 >= 0.40000000596046447754f);
  let x_400 : bool = u_xlatb1;
  if (x_400) {
    let x_406 : f32 = u_xlat1.w;
    x_402 = x_406;
  } else {
    x_402 = 0.0f;
  }
  let x_408 : f32 = x_402;
  u_xlat1.x = x_408;
  let x_412 : f32 = u_xlat1.w;
  u_xlat13.x = (x_412 + -0.40000000596046447754f);
  let x_418 : f32 = u_xlat1.w;
  u_xlat25 = dpdxCoarse(x_418);
  let x_422 : f32 = u_xlat1.w;
  u_xlat37 = dpdyCoarse(x_422);
  let x_424 : f32 = u_xlat37;
  let x_426 : f32 = u_xlat25;
  u_xlat25 = (abs(x_424) + abs(x_426));
  let x_429 : f32 = u_xlat25;
  u_xlat25 = max(x_429, 0.00009999999747378752f);
  let x_433 : f32 = u_xlat13.x;
  let x_434 : f32 = u_xlat25;
  u_xlat13.x = (x_433 / x_434);
  let x_438 : f32 = u_xlat13.x;
  u_xlat13.x = (x_438 + 0.5f);
  let x_443 : f32 = u_xlat13.x;
  u_xlat13.x = clamp(x_443, 0.0f, 1.0f);
  let x_448 : f32 = x_53.x_AlphaToMaskAvailable;
  u_xlatb25 = !((x_448 == 0.0f));
  let x_450 : bool = u_xlatb25;
  if (x_450) {
    let x_455 : f32 = u_xlat13.x;
    x_451 = x_455;
  } else {
    let x_458 : f32 = u_xlat1.x;
    x_451 = x_458;
  }
  let x_459 : f32 = x_451;
  u_xlat1.x = x_459;
  let x_462 : f32 = u_xlat1.x;
  u_xlat13.x = (x_462 + -0.00009999999747378752f);
  let x_470 : f32 = u_xlat13.x;
  u_xlatb13.x = (x_470 < 0.0f);
  let x_474 : bool = u_xlatb13.x;
  if (((select(0i, 1i, x_474) * -1i) != 0i)) {
    discard;
  }
  let x_484 : f32 = vs_INTERP4.w;
  u_xlatb13.x = (0.0f < x_484);
  let x_492 : f32 = x_490.unity_WorldTransformParams.w;
  u_xlatb13.z = (x_492 >= 0.0f);
  let x_496 : bool = u_xlatb13.x;
  u_xlat13.x = select(-1.0f, 1.0f, x_496);
  let x_500 : bool = u_xlatb13.z;
  u_xlat13.z = select(-1.0f, 1.0f, x_500);
  let x_504 : f32 = u_xlat13.z;
  let x_506 : f32 = u_xlat13.x;
  u_xlat13.x = (x_504 * x_506);
  let x_509 : vec4<f32> = vs_INTERP4;
  let x_511 : vec3<f32> = vs_INTERP9;
  let x_513 : vec3<f32> = (vec3<f32>(x_509.y, x_509.z, x_509.x) * vec3<f32>(x_511.z, x_511.x, x_511.y));
  let x_514 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_513.x, x_513.y, x_513.z, x_514.w);
  let x_516 : vec3<f32> = vs_INTERP9;
  let x_518 : vec4<f32> = vs_INTERP4;
  let x_521 : vec4<f32> = u_xlat4;
  let x_524 : vec3<f32> = ((vec3<f32>(x_516.y, x_516.z, x_516.x) * vec3<f32>(x_518.z, x_518.x, x_518.y)) + -(vec3<f32>(x_521.x, x_521.y, x_521.z)));
  let x_525 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_524.x, x_524.y, x_524.z, x_525.w);
  let x_527 : vec3<f32> = u_xlat13;
  let x_529 : vec4<f32> = u_xlat4;
  let x_531 : vec3<f32> = (vec3<f32>(x_527.x, x_527.x, x_527.x) * vec3<f32>(x_529.x, x_529.y, x_529.z));
  let x_532 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_531.x, x_531.y, x_531.z, x_532.w);
  let x_534 : vec3<f32> = u_xlat15;
  let x_536 : vec4<f32> = u_xlat4;
  let x_538 : vec3<f32> = (vec3<f32>(x_534.y, x_534.y, x_534.y) * vec3<f32>(x_536.x, x_536.y, x_536.z));
  let x_539 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_538.x, x_538.y, x_538.z, x_539.w);
  let x_541 : vec3<f32> = u_xlat15;
  let x_543 : vec4<f32> = vs_INTERP4;
  let x_546 : vec4<f32> = u_xlat4;
  let x_548 : vec3<f32> = ((vec3<f32>(x_541.x, x_541.x, x_541.x) * vec3<f32>(x_543.x, x_543.y, x_543.z)) + vec3<f32>(x_546.x, x_546.y, x_546.z));
  let x_549 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
  let x_551 : vec3<f32> = u_xlat15;
  let x_553 : vec3<f32> = vs_INTERP9;
  let x_555 : vec4<f32> = u_xlat4;
  u_xlat15 = ((vec3<f32>(x_551.z, x_551.z, x_551.z) * x_553) + vec3<f32>(x_555.x, x_555.y, x_555.z));
  let x_558 : vec3<f32> = u_xlat15;
  let x_559 : vec3<f32> = u_xlat15;
  u_xlat13.x = dot(x_558, x_559);
  let x_563 : f32 = u_xlat13.x;
  u_xlat13.x = inverseSqrt(x_563);
  let x_566 : vec3<f32> = u_xlat13;
  let x_568 : vec3<f32> = u_xlat15;
  let x_569 : vec3<f32> = (vec3<f32>(x_566.x, x_566.x, x_566.x) * x_568);
  let x_570 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_569.x, x_569.y, x_569.z, x_570.w);
  let x_574 : f32 = x_53.unity_OrthoParams.w;
  u_xlatb13.x = (x_574 == 0.0f);
  let x_577 : vec3<f32> = vs_INTERP8;
  let x_581 : vec3<f32> = x_53.x_WorldSpaceCameraPos;
  u_xlat15 = (-(x_577) + x_581);
  let x_583 : vec3<f32> = u_xlat15;
  let x_584 : vec3<f32> = u_xlat15;
  u_xlat37 = dot(x_583, x_584);
  let x_586 : f32 = u_xlat37;
  u_xlat37 = inverseSqrt(x_586);
  let x_588 : f32 = u_xlat37;
  let x_590 : vec3<f32> = u_xlat15;
  u_xlat15 = (vec3<f32>(x_588, x_588, x_588) * x_590);
  let x_593 : bool = u_xlatb13.x;
  if (x_593) {
    let x_598 : f32 = u_xlat15.x;
    x_594 = x_598;
  } else {
    let x_602 : f32 = x_53.unity_MatrixV[0i].z;
    x_594 = x_602;
  }
  let x_603 : f32 = x_594;
  u_xlat5.x = x_603;
  let x_606 : bool = u_xlatb13.x;
  if (x_606) {
    let x_611 : f32 = u_xlat15.y;
    x_607 = x_611;
  } else {
    let x_614 : f32 = x_53.unity_MatrixV[1i].z;
    x_607 = x_614;
  }
  let x_615 : f32 = x_607;
  u_xlat5.y = x_615;
  let x_618 : bool = u_xlatb13.x;
  if (x_618) {
    let x_623 : f32 = u_xlat15.z;
    x_619 = x_623;
  } else {
    let x_626 : f32 = x_53.unity_MatrixV[2i].z;
    x_619 = x_626;
  }
  let x_627 : f32 = x_619;
  u_xlat5.z = x_627;
  u_xlat4.w = 1.0f;
  let x_632 : vec4<f32> = x_490.unity_SHAr;
  let x_633 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_632, x_633);
  let x_638 : vec4<f32> = x_490.unity_SHAg;
  let x_639 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_638, x_639);
  let x_644 : vec4<f32> = x_490.unity_SHAb;
  let x_645 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_644, x_645);
  let x_648 : vec4<f32> = u_xlat4;
  let x_650 : vec4<f32> = u_xlat4;
  u_xlat7 = (vec4<f32>(x_648.y, x_648.z, x_648.z, x_648.x) * vec4<f32>(x_650.x, x_650.y, x_650.z, x_650.z));
  let x_656 : vec4<f32> = x_490.unity_SHBr;
  let x_657 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_656, x_657);
  let x_662 : vec4<f32> = x_490.unity_SHBg;
  let x_663 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_662, x_663);
  let x_668 : vec4<f32> = x_490.unity_SHBb;
  let x_669 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_668, x_669);
  let x_673 : f32 = u_xlat4.y;
  let x_675 : f32 = u_xlat4.y;
  u_xlat13.x = (x_673 * x_675);
  let x_679 : f32 = u_xlat4.x;
  let x_681 : f32 = u_xlat4.x;
  let x_684 : f32 = u_xlat13.x;
  u_xlat13.x = ((x_679 * x_681) + -(x_684));
  let x_690 : vec4<f32> = x_490.unity_SHC;
  let x_692 : vec3<f32> = u_xlat13;
  let x_695 : vec4<f32> = u_xlat8;
  u_xlat15 = ((vec3<f32>(x_690.x, x_690.y, x_690.z) * vec3<f32>(x_692.x, x_692.x, x_692.x)) + vec3<f32>(x_695.x, x_695.y, x_695.z));
  let x_698 : vec3<f32> = u_xlat15;
  let x_699 : vec3<f32> = u_xlat6;
  u_xlat15 = (x_698 + x_699);
  let x_701 : vec3<f32> = u_xlat15;
  u_xlat15 = max(x_701, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_704 : f32 = u_xlat3.x;
  u_xlat3.x = x_704;
  let x_707 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_707, 0.0f, 1.0f);
  let x_711 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_711, 1.0f);
  let x_714 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_714 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_719 : f32 = u_xlat3.x;
  u_xlat13.x = (-(x_719) + 1.0f);
  let x_724 : f32 = u_xlat13.x;
  let x_726 : f32 = u_xlat13.x;
  u_xlat37 = (x_724 * x_726);
  let x_728 : f32 = u_xlat37;
  u_xlat37 = max(x_728, 0.0078125f);
  let x_731 : f32 = u_xlat37;
  let x_732 : f32 = u_xlat37;
  u_xlat38 = (x_731 * x_732);
  let x_735 : f32 = u_xlat3.x;
  u_xlat3.x = (x_735 + 0.04000002145767211914f);
  let x_740 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_740, 1.0f);
  let x_744 : f32 = u_xlat37;
  u_xlat40 = ((x_744 * 4.0f) + 2.0f);
  let x_749 : f32 = vs_INTERP6.w;
  u_xlat41 = min(x_749, 1.0f);
  let x_751 : vec3<f32> = vs_INTERP8;
  let x_753 : vec3<f32> = x_53.x_WorldSpaceCameraPos;
  u_xlat6 = (x_751 + -(x_753));
  let x_756 : vec3<f32> = u_xlat6;
  let x_757 : vec3<f32> = u_xlat6;
  u_xlat6.x = dot(x_756, x_757);
  let x_762 : f32 = u_xlat6.x;
  let x_764 : f32 = x_130.x_MainLightShadowParams.z;
  let x_767 : f32 = x_130.x_MainLightShadowParams.w;
  u_xlat18.x = ((x_762 * x_764) + x_767);
  let x_771 : f32 = u_xlat18.x;
  u_xlat18.x = clamp(x_771, 0.0f, 1.0f);
  let x_775 : f32 = u_xlat36;
  u_xlat30 = (-(x_775) + 1.0f);
  let x_779 : f32 = u_xlat18.x;
  let x_780 : f32 = u_xlat30;
  let x_782 : f32 = u_xlat36;
  u_xlat36 = ((x_779 * x_780) + x_782);
  let x_784 : vec4<f32> = u_xlat5;
  let x_787 : vec4<f32> = u_xlat4;
  u_xlat18.x = dot(-(vec3<f32>(x_784.x, x_784.y, x_784.z)), vec3<f32>(x_787.x, x_787.y, x_787.z));
  let x_792 : f32 = u_xlat18.x;
  let x_794 : f32 = u_xlat18.x;
  u_xlat18.x = (x_792 + x_794);
  let x_797 : vec4<f32> = u_xlat4;
  let x_799 : vec3<f32> = u_xlat18;
  let x_803 : vec4<f32> = u_xlat5;
  u_xlat18 = ((vec3<f32>(x_797.x, x_797.y, x_797.z) * -(vec3<f32>(x_799.x, x_799.x, x_799.x))) + -(vec3<f32>(x_803.x, x_803.y, x_803.z)));
  let x_807 : vec4<f32> = u_xlat4;
  let x_809 : vec4<f32> = u_xlat5;
  u_xlat7.x = dot(vec3<f32>(x_807.x, x_807.y, x_807.z), vec3<f32>(x_809.x, x_809.y, x_809.z));
  let x_814 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_814, 0.0f, 1.0f);
  let x_818 : f32 = u_xlat7.x;
  u_xlat7.x = (-(x_818) + 1.0f);
  let x_823 : f32 = u_xlat7.x;
  let x_825 : f32 = u_xlat7.x;
  u_xlat7.x = (x_823 * x_825);
  let x_829 : f32 = u_xlat7.x;
  let x_831 : f32 = u_xlat7.x;
  u_xlat7.x = (x_829 * x_831);
  let x_836 : f32 = u_xlat13.x;
  u_xlat19 = ((-(x_836) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_843 : f32 = u_xlat13.x;
  let x_844 : f32 = u_xlat19;
  u_xlat13.x = (x_843 * x_844);
  let x_848 : f32 = u_xlat13.x;
  u_xlat13.x = (x_848 * 6.0f);
  let x_860 : vec3<f32> = u_xlat18;
  let x_862 : f32 = u_xlat13.x;
  let x_863 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_860, x_862);
  u_xlat8 = x_863;
  let x_865 : f32 = u_xlat8.w;
  u_xlat13.x = (x_865 + -1.0f);
  let x_869 : f32 = x_490.unity_SpecCube0_HDR.w;
  let x_871 : f32 = u_xlat13.x;
  u_xlat13.x = ((x_869 * x_871) + 1.0f);
  let x_876 : f32 = u_xlat13.x;
  u_xlat13.x = max(x_876, 0.0f);
  let x_880 : f32 = u_xlat13.x;
  u_xlat13.x = log2(x_880);
  let x_884 : f32 = u_xlat13.x;
  let x_886 : f32 = x_490.unity_SpecCube0_HDR.y;
  u_xlat13.x = (x_884 * x_886);
  let x_890 : f32 = u_xlat13.x;
  u_xlat13.x = exp2(x_890);
  let x_894 : f32 = u_xlat13.x;
  let x_896 : f32 = x_490.unity_SpecCube0_HDR.x;
  u_xlat13.x = (x_894 * x_896);
  let x_899 : vec4<f32> = u_xlat8;
  let x_901 : vec3<f32> = u_xlat13;
  u_xlat18 = (vec3<f32>(x_899.x, x_899.y, x_899.z) * vec3<f32>(x_901.x, x_901.x, x_901.x));
  let x_904 : f32 = u_xlat37;
  let x_906 : f32 = u_xlat37;
  let x_910 : vec2<f32> = ((vec2<f32>(x_904, x_904) * vec2<f32>(x_906, x_906)) + vec2<f32>(-1.0f, 1.0f));
  let x_911 : vec3<f32> = u_xlat13;
  u_xlat13 = vec3<f32>(x_910.x, x_911.y, x_910.y);
  let x_914 : f32 = u_xlat13.z;
  u_xlat37 = (1.0f / x_914);
  let x_917 : f32 = u_xlat3.x;
  u_xlat3.x = (x_917 + -0.03999999910593032837f);
  let x_922 : f32 = u_xlat7.x;
  let x_924 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_922 * x_924) + 0.03999999910593032837f);
  let x_929 : f32 = u_xlat37;
  let x_931 : f32 = u_xlat3.x;
  u_xlat37 = (x_929 * x_931);
  let x_933 : f32 = u_xlat37;
  let x_935 : vec3<f32> = u_xlat18;
  u_xlat18 = (vec3<f32>(x_933, x_933, x_933) * x_935);
  let x_937 : vec3<f32> = u_xlat15;
  let x_938 : vec3<f32> = u_xlat2;
  let x_940 : vec3<f32> = u_xlat18;
  let x_941 : vec3<f32> = ((x_937 * x_938) + x_940);
  let x_942 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_941.x, x_941.y, x_941.z, x_942.w);
  let x_944 : f32 = u_xlat36;
  let x_946 : f32 = x_490.unity_LightData.z;
  u_xlat36 = (x_944 * x_946);
  let x_948 : vec4<f32> = u_xlat4;
  let x_951 : vec4<f32> = x_53.x_MainLightPosition;
  u_xlat37 = dot(vec3<f32>(x_948.x, x_948.y, x_948.z), vec3<f32>(x_951.x, x_951.y, x_951.z));
  let x_954 : f32 = u_xlat37;
  u_xlat37 = clamp(x_954, 0.0f, 1.0f);
  let x_956 : f32 = u_xlat36;
  let x_957 : f32 = u_xlat37;
  u_xlat36 = (x_956 * x_957);
  let x_959 : f32 = u_xlat36;
  let x_962 : vec4<f32> = x_53.x_MainLightColor;
  u_xlat18 = (vec3<f32>(x_959, x_959, x_959) * vec3<f32>(x_962.x, x_962.y, x_962.z));
  let x_965 : vec4<f32> = u_xlat5;
  let x_968 : vec4<f32> = x_53.x_MainLightPosition;
  let x_970 : vec3<f32> = (vec3<f32>(x_965.x, x_965.y, x_965.z) + vec3<f32>(x_968.x, x_968.y, x_968.z));
  let x_971 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_970.x, x_970.y, x_970.z, x_971.w);
  let x_973 : vec4<f32> = u_xlat7;
  let x_975 : vec4<f32> = u_xlat7;
  u_xlat36 = dot(vec3<f32>(x_973.x, x_973.y, x_973.z), vec3<f32>(x_975.x, x_975.y, x_975.z));
  let x_978 : f32 = u_xlat36;
  u_xlat36 = max(x_978, 1.17549435e-38f);
  let x_981 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_981);
  let x_983 : f32 = u_xlat36;
  let x_985 : vec4<f32> = u_xlat7;
  let x_987 : vec3<f32> = (vec3<f32>(x_983, x_983, x_983) * vec3<f32>(x_985.x, x_985.y, x_985.z));
  let x_988 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_987.x, x_987.y, x_987.z, x_988.w);
  let x_990 : vec4<f32> = u_xlat4;
  let x_992 : vec4<f32> = u_xlat7;
  u_xlat36 = dot(vec3<f32>(x_990.x, x_990.y, x_990.z), vec3<f32>(x_992.x, x_992.y, x_992.z));
  let x_995 : f32 = u_xlat36;
  u_xlat36 = clamp(x_995, 0.0f, 1.0f);
  let x_998 : vec4<f32> = x_53.x_MainLightPosition;
  let x_1000 : vec4<f32> = u_xlat7;
  u_xlat37 = dot(vec3<f32>(x_998.x, x_998.y, x_998.z), vec3<f32>(x_1000.x, x_1000.y, x_1000.z));
  let x_1003 : f32 = u_xlat37;
  u_xlat37 = clamp(x_1003, 0.0f, 1.0f);
  let x_1005 : f32 = u_xlat36;
  let x_1006 : f32 = u_xlat36;
  u_xlat36 = (x_1005 * x_1006);
  let x_1008 : f32 = u_xlat36;
  let x_1010 : f32 = u_xlat13.x;
  u_xlat36 = ((x_1008 * x_1010) + 1.00001001358032226562f);
  let x_1014 : f32 = u_xlat37;
  let x_1015 : f32 = u_xlat37;
  u_xlat37 = (x_1014 * x_1015);
  let x_1017 : f32 = u_xlat36;
  let x_1018 : f32 = u_xlat36;
  u_xlat36 = (x_1017 * x_1018);
  let x_1020 : f32 = u_xlat37;
  u_xlat37 = max(x_1020, 0.10000000149011611938f);
  let x_1023 : f32 = u_xlat36;
  let x_1024 : f32 = u_xlat37;
  u_xlat36 = (x_1023 * x_1024);
  let x_1026 : f32 = u_xlat40;
  let x_1027 : f32 = u_xlat36;
  u_xlat36 = (x_1026 * x_1027);
  let x_1029 : f32 = u_xlat38;
  let x_1030 : f32 = u_xlat36;
  u_xlat36 = (x_1029 / x_1030);
  let x_1032 : f32 = u_xlat36;
  let x_1036 : vec3<f32> = u_xlat2;
  let x_1037 : vec3<f32> = ((vec3<f32>(x_1032, x_1032, x_1032) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_1036);
  let x_1038 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1037.x, x_1037.y, x_1037.z, x_1038.w);
  let x_1040 : vec3<f32> = u_xlat18;
  let x_1041 : vec4<f32> = u_xlat7;
  u_xlat18 = (x_1040 * vec3<f32>(x_1041.x, x_1041.y, x_1041.z));
  let x_1045 : f32 = x_53.x_AdditionalLightsCount.x;
  let x_1047 : f32 = x_490.unity_LightData.y;
  u_xlat36 = min(x_1045, x_1047);
  let x_1049 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_1049));
  let x_1053 : f32 = u_xlat6.x;
  let x_1056 : f32 = x_130.x_AdditionalShadowFadeParams.x;
  let x_1059 : f32 = x_130.x_AdditionalShadowFadeParams.y;
  u_xlat37 = ((x_1053 * x_1056) + x_1059);
  let x_1061 : f32 = u_xlat37;
  u_xlat37 = clamp(x_1061, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1073 : u32 = u_xlatu_loop_1;
    let x_1074 : u32 = u_xlatu36;
    if ((x_1073 < x_1074)) {
    } else {
      break;
    }
    let x_1077 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_1077 >> 2u);
    let x_1080 : u32 = u_xlatu_loop_1;
    u_xlati43 = bitcast<i32>((x_1080 & 3u));
    let x_1083 : u32 = u_xlatu6;
    let x_1086 : vec4<f32> = x_490.unity_LightIndices[bitcast<i32>(x_1083)];
    let x_1096 : i32 = u_xlati43;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1101 : vec4<u32> = indexable[x_1096];
    u_xlat6.x = dot(x_1086, bitcast<vec4<f32>>(x_1101));
    let x_1107 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_1107);
    let x_1109 : vec3<f32> = vs_INTERP8;
    let x_1120 : i32 = u_xlati6;
    let x_1122 : vec4<f32> = x_1119.x_AdditionalLightsPosition[x_1120];
    let x_1125 : i32 = u_xlati6;
    let x_1127 : vec4<f32> = x_1119.x_AdditionalLightsPosition[x_1125];
    let x_1129 : vec3<f32> = ((-(x_1109) * vec3<f32>(x_1122.w, x_1122.w, x_1122.w)) + vec3<f32>(x_1127.x, x_1127.y, x_1127.z));
    let x_1130 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1129.x, x_1129.y, x_1129.z, x_1130.w);
    let x_1133 : vec4<f32> = u_xlat8;
    let x_1135 : vec4<f32> = u_xlat8;
    u_xlat43 = dot(vec3<f32>(x_1133.x, x_1133.y, x_1133.z), vec3<f32>(x_1135.x, x_1135.y, x_1135.z));
    let x_1138 : f32 = u_xlat43;
    u_xlat43 = max(x_1138, 0.00006103515625f);
    let x_1142 : f32 = u_xlat43;
    u_xlat44 = inverseSqrt(x_1142);
    let x_1145 : f32 = u_xlat44;
    let x_1147 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1145, x_1145, x_1145) * vec3<f32>(x_1147.x, x_1147.y, x_1147.z));
    let x_1151 : f32 = u_xlat43;
    u_xlat45 = (1.0f / x_1151);
    let x_1153 : f32 = u_xlat43;
    let x_1154 : i32 = u_xlati6;
    let x_1156 : f32 = x_1119.x_AdditionalLightsAttenuation[x_1154].x;
    u_xlat43 = (x_1153 * x_1156);
    let x_1158 : f32 = u_xlat43;
    let x_1160 : f32 = u_xlat43;
    u_xlat43 = ((-(x_1158) * x_1160) + 1.0f);
    let x_1163 : f32 = u_xlat43;
    u_xlat43 = max(x_1163, 0.0f);
    let x_1165 : f32 = u_xlat43;
    let x_1166 : f32 = u_xlat43;
    u_xlat43 = (x_1165 * x_1166);
    let x_1168 : f32 = u_xlat43;
    let x_1169 : f32 = u_xlat45;
    u_xlat43 = (x_1168 * x_1169);
    let x_1171 : i32 = u_xlati6;
    let x_1173 : vec4<f32> = x_1119.x_AdditionalLightsSpotDir[x_1171];
    let x_1175 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_1173.x, x_1173.y, x_1173.z), x_1175);
    let x_1177 : f32 = u_xlat45;
    let x_1178 : i32 = u_xlati6;
    let x_1180 : f32 = x_1119.x_AdditionalLightsAttenuation[x_1178].z;
    let x_1182 : i32 = u_xlati6;
    let x_1184 : f32 = x_1119.x_AdditionalLightsAttenuation[x_1182].w;
    u_xlat45 = ((x_1177 * x_1180) + x_1184);
    let x_1186 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1186, 0.0f, 1.0f);
    let x_1188 : f32 = u_xlat45;
    let x_1189 : f32 = u_xlat45;
    u_xlat45 = (x_1188 * x_1189);
    let x_1191 : f32 = u_xlat43;
    let x_1192 : f32 = u_xlat45;
    u_xlat43 = (x_1191 * x_1192);
    let x_1196 : i32 = u_xlati6;
    let x_1198 : f32 = x_130.x_AdditionalShadowParams[x_1196].w;
    u_xlati45 = i32(x_1198);
    let x_1201 : i32 = u_xlati45;
    u_xlatb10.x = (x_1201 >= 0i);
    let x_1205 : bool = u_xlatb10.x;
    if (x_1205) {
      let x_1209 : i32 = u_xlati6;
      let x_1211 : f32 = x_130.x_AdditionalShadowParams[x_1209].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1211, x_1211, x_1211, x_1211))));
      let x_1217 : bool = u_xlatb10.x;
      if (x_1217) {
        let x_1220 : vec3<f32> = u_xlat9;
        let x_1223 : vec3<f32> = u_xlat9;
        let x_1226 : vec4<bool> = (abs(vec4<f32>(x_1220.z, x_1220.z, x_1220.y, x_1220.z)) >= abs(vec4<f32>(x_1223.x, x_1223.y, x_1223.x, x_1223.x)));
        u_xlatb10 = vec3<bool>(x_1226.x, x_1226.y, x_1226.z);
        let x_1229 : bool = u_xlatb10.y;
        let x_1231 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_1229 & x_1231);
        let x_1235 : vec3<f32> = u_xlat9;
        let x_1238 : vec4<bool> = (-(vec4<f32>(x_1235.z, x_1235.y, x_1235.x, x_1235.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_1238.x, x_1238.y, x_1238.z);
        let x_1242 : bool = u_xlatb11.x;
        u_xlat22.x = select(4.0f, 5.0f, x_1242);
        let x_1247 : bool = u_xlatb11.y;
        u_xlat22.z = select(2.0f, 3.0f, x_1247);
        let x_1252 : bool = u_xlatb11.z;
        u_xlat11 = select(0.0f, 1.0f, x_1252);
        let x_1256 : bool = u_xlatb10.z;
        if (x_1256) {
          let x_1261 : f32 = u_xlat22.z;
          x_1257 = x_1261;
        } else {
          let x_1263 : f32 = u_xlat11;
          x_1257 = x_1263;
        }
        let x_1264 : f32 = x_1257;
        u_xlat34 = x_1264;
        let x_1267 : bool = u_xlatb10.x;
        if (x_1267) {
          let x_1272 : f32 = u_xlat22.x;
          x_1268 = x_1272;
        } else {
          let x_1274 : f32 = u_xlat34;
          x_1268 = x_1274;
        }
        let x_1275 : f32 = x_1268;
        u_xlat10.x = x_1275;
        let x_1277 : i32 = u_xlati6;
        let x_1279 : f32 = x_130.x_AdditionalShadowParams[x_1277].w;
        u_xlat22.x = trunc(x_1279);
        let x_1283 : f32 = u_xlat10.x;
        let x_1285 : f32 = u_xlat22.x;
        u_xlat10.x = (x_1283 + x_1285);
        let x_1289 : f32 = u_xlat10.x;
        u_xlati45 = i32(x_1289);
      }
      let x_1291 : i32 = u_xlati45;
      u_xlati45 = (x_1291 << bitcast<u32>(2i));
      let x_1293 : vec3<f32> = vs_INTERP8;
      let x_1296 : i32 = u_xlati45;
      let x_1299 : i32 = u_xlati45;
      let x_1303 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[((x_1296 + 1i) / 4i)][((x_1299 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1293.y, x_1293.y, x_1293.y, x_1293.y) * x_1303);
      let x_1305 : i32 = u_xlati45;
      let x_1307 : i32 = u_xlati45;
      let x_1310 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[(x_1305 / 4i)][(x_1307 % 4i)];
      let x_1311 : vec3<f32> = vs_INTERP8;
      let x_1314 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1310 * vec4<f32>(x_1311.x, x_1311.x, x_1311.x, x_1311.x)) + x_1314);
      let x_1316 : i32 = u_xlati45;
      let x_1319 : i32 = u_xlati45;
      let x_1323 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[((x_1316 + 2i) / 4i)][((x_1319 + 2i) % 4i)];
      let x_1324 : vec3<f32> = vs_INTERP8;
      let x_1327 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1323 * vec4<f32>(x_1324.z, x_1324.z, x_1324.z, x_1324.z)) + x_1327);
      let x_1329 : vec4<f32> = u_xlat10;
      let x_1330 : i32 = u_xlati45;
      let x_1333 : i32 = u_xlati45;
      let x_1337 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[((x_1330 + 3i) / 4i)][((x_1333 + 3i) % 4i)];
      u_xlat10 = (x_1329 + x_1337);
      let x_1339 : vec4<f32> = u_xlat10;
      let x_1341 : vec4<f32> = u_xlat10;
      let x_1343 : vec3<f32> = (vec3<f32>(x_1339.x, x_1339.y, x_1339.z) / vec3<f32>(x_1341.w, x_1341.w, x_1341.w));
      let x_1344 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1343.x, x_1343.y, x_1343.z, x_1344.w);
      let x_1347 : vec4<f32> = u_xlat10;
      let x_1348 : vec2<f32> = vec2<f32>(x_1347.x, x_1347.y);
      let x_1350 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1348.x, x_1348.y, x_1350);
      let x_1358 : vec3<f32> = txVec1;
      let x_1360 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1358.xy, x_1358.z);
      u_xlat45 = x_1360;
      let x_1361 : i32 = u_xlati6;
      let x_1363 : f32 = x_130.x_AdditionalShadowParams[x_1361].x;
      u_xlat10.x = (1.0f + -(x_1363));
      let x_1367 : f32 = u_xlat45;
      let x_1368 : i32 = u_xlati6;
      let x_1370 : f32 = x_130.x_AdditionalShadowParams[x_1368].x;
      let x_1373 : f32 = u_xlat10.x;
      u_xlat45 = ((x_1367 * x_1370) + x_1373);
      let x_1376 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_1376);
      let x_1381 : f32 = u_xlat10.z;
      u_xlatb22 = (x_1381 >= 1.0f);
      let x_1383 : bool = u_xlatb22;
      let x_1385 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_1383 | x_1385);
      let x_1389 : bool = u_xlatb10.x;
      let x_1390 : f32 = u_xlat45;
      u_xlat45 = select(x_1390, 1.0f, x_1389);
    } else {
      u_xlat45 = 1.0f;
    }
    let x_1393 : f32 = u_xlat45;
    u_xlat10.x = (-(x_1393) + 1.0f);
    let x_1397 : f32 = u_xlat37;
    let x_1399 : f32 = u_xlat10.x;
    let x_1401 : f32 = u_xlat45;
    u_xlat45 = ((x_1397 * x_1399) + x_1401);
    let x_1403 : f32 = u_xlat43;
    let x_1404 : f32 = u_xlat45;
    u_xlat43 = (x_1403 * x_1404);
    let x_1406 : vec4<f32> = u_xlat4;
    let x_1408 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_1406.x, x_1406.y, x_1406.z), x_1408);
    let x_1410 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1410, 0.0f, 1.0f);
    let x_1412 : f32 = u_xlat43;
    let x_1413 : f32 = u_xlat45;
    u_xlat43 = (x_1412 * x_1413);
    let x_1415 : f32 = u_xlat43;
    let x_1417 : i32 = u_xlati6;
    let x_1419 : vec4<f32> = x_1119.x_AdditionalLightsColor[x_1417];
    let x_1421 : vec3<f32> = (vec3<f32>(x_1415, x_1415, x_1415) * vec3<f32>(x_1419.x, x_1419.y, x_1419.z));
    let x_1422 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1421.x, x_1421.y, x_1421.z, x_1422.w);
    let x_1424 : vec4<f32> = u_xlat8;
    let x_1426 : f32 = u_xlat44;
    let x_1429 : vec4<f32> = u_xlat5;
    let x_1431 : vec3<f32> = ((vec3<f32>(x_1424.x, x_1424.y, x_1424.z) * vec3<f32>(x_1426, x_1426, x_1426)) + vec3<f32>(x_1429.x, x_1429.y, x_1429.z));
    let x_1432 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1431.x, x_1431.y, x_1431.z, x_1432.w);
    let x_1434 : vec4<f32> = u_xlat8;
    let x_1436 : vec4<f32> = u_xlat8;
    u_xlat6.x = dot(vec3<f32>(x_1434.x, x_1434.y, x_1434.z), vec3<f32>(x_1436.x, x_1436.y, x_1436.z));
    let x_1441 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_1441, 1.17549435e-38f);
    let x_1445 : f32 = u_xlat6.x;
    u_xlat6.x = inverseSqrt(x_1445);
    let x_1448 : vec3<f32> = u_xlat6;
    let x_1450 : vec4<f32> = u_xlat8;
    let x_1452 : vec3<f32> = (vec3<f32>(x_1448.x, x_1448.x, x_1448.x) * vec3<f32>(x_1450.x, x_1450.y, x_1450.z));
    let x_1453 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1452.x, x_1452.y, x_1452.z, x_1453.w);
    let x_1455 : vec4<f32> = u_xlat4;
    let x_1457 : vec4<f32> = u_xlat8;
    u_xlat6.x = dot(vec3<f32>(x_1455.x, x_1455.y, x_1455.z), vec3<f32>(x_1457.x, x_1457.y, x_1457.z));
    let x_1462 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_1462, 0.0f, 1.0f);
    let x_1465 : vec3<f32> = u_xlat9;
    let x_1466 : vec4<f32> = u_xlat8;
    u_xlat43 = dot(x_1465, vec3<f32>(x_1466.x, x_1466.y, x_1466.z));
    let x_1469 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1469, 0.0f, 1.0f);
    let x_1472 : f32 = u_xlat6.x;
    let x_1474 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1472 * x_1474);
    let x_1478 : f32 = u_xlat6.x;
    let x_1480 : f32 = u_xlat13.x;
    u_xlat6.x = ((x_1478 * x_1480) + 1.00001001358032226562f);
    let x_1484 : f32 = u_xlat43;
    let x_1485 : f32 = u_xlat43;
    u_xlat43 = (x_1484 * x_1485);
    let x_1488 : f32 = u_xlat6.x;
    let x_1490 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1488 * x_1490);
    let x_1493 : f32 = u_xlat43;
    u_xlat43 = max(x_1493, 0.10000000149011611938f);
    let x_1496 : f32 = u_xlat6.x;
    let x_1497 : f32 = u_xlat43;
    u_xlat6.x = (x_1496 * x_1497);
    let x_1500 : f32 = u_xlat40;
    let x_1502 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1500 * x_1502);
    let x_1505 : f32 = u_xlat38;
    let x_1507 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1505 / x_1507);
    let x_1510 : vec3<f32> = u_xlat6;
    let x_1513 : vec3<f32> = u_xlat2;
    let x_1514 : vec3<f32> = ((vec3<f32>(x_1510.x, x_1510.x, x_1510.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_1513);
    let x_1515 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1514.x, x_1514.y, x_1514.z, x_1515.w);
    let x_1517 : vec4<f32> = u_xlat8;
    let x_1519 : vec4<f32> = u_xlat10;
    let x_1522 : vec4<f32> = u_xlat7;
    let x_1524 : vec3<f32> = ((vec3<f32>(x_1517.x, x_1517.y, x_1517.z) * vec3<f32>(x_1519.x, x_1519.y, x_1519.z)) + vec3<f32>(x_1522.x, x_1522.y, x_1522.z));
    let x_1525 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1524.x, x_1524.y, x_1524.z, x_1525.w);

    continuing {
      let x_1527 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1527 + bitcast<u32>(1i));
    }
  }
  let x_1529 : vec4<f32> = u_xlat3;
  let x_1531 : f32 = u_xlat41;
  let x_1534 : vec3<f32> = u_xlat18;
  u_xlat2 = ((vec3<f32>(x_1529.x, x_1529.y, x_1529.z) * vec3<f32>(x_1531, x_1531, x_1531)) + x_1534);
  let x_1536 : vec4<f32> = u_xlat7;
  let x_1538 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_1536.x, x_1536.y, x_1536.z) + x_1538);
  let x_1542 : vec4<f32> = vs_INTERP6;
  let x_1544 : vec3<f32> = u_xlat0;
  let x_1546 : vec3<f32> = u_xlat2;
  let x_1547 : vec3<f32> = ((vec3<f32>(x_1542.w, x_1542.w, x_1542.w) * x_1544) + x_1546);
  let x_1548 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1547.x, x_1547.y, x_1547.z, x_1548.w);
  let x_1550 : bool = u_xlatb25;
  if (x_1550) {
    let x_1555 : f32 = u_xlat1.x;
    x_1551 = x_1555;
  } else {
    x_1551 = 1.0f;
  }
  let x_1557 : f32 = x_1551;
  SV_Target0.w = x_1557;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_INTERP9_param : vec3<f32>, @location(1) vs_INTERP5_param : vec4<f32>, @location(2) vs_INTERP6_param : vec4<f32>, @location(3) vs_INTERP8_param : vec3<f32>, @location(0) vs_INTERP4_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP9 = vs_INTERP9_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP6 = vs_INTERP6_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP4 = vs_INTERP4_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


