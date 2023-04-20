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

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(10) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_53 : PGlobals;

var<private> u_xlat2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_65 : UnityPerMaterial;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat36 : f32;

var<private> u_xlat15 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

var<private> vs_INTERP8 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_130 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu36 : u32;

var<private> u_xlati36 : i32;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat38 : f32;

var<private> u_xlatb38 : bool;

var<private> u_xlatb1 : bool;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlat25 : f32;

var<private> u_xlat37 : f32;

var<private> u_xlatb25 : bool;

var<private> u_xlatb13 : vec3<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_486 : UnityPerDraw;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat40 : f32;

var<private> u_xlat41 : f32;

var<private> u_xlat18 : vec3<f32>;

var<private> u_xlat30 : f32;

var<private> u_xlat19 : f32;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu6 : u32;

var<private> u_xlati43 : i32;

var<private> u_xlati6 : i32;

@group(1) @binding(1) var<uniform> x_1084 : AdditionalLights;

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

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb22 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu3 : u32;

var<private> u_xlatb6 : bool;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_398 : f32;
  var x_447 : f32;
  var x_595 : f32;
  var x_608 : f32;
  var x_620 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1222 : f32;
  var x_1233 : f32;
  var txVec1 : vec3<f32>;
  var x_1510 : f32;
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
  u_xlat7 = (x_157 + -(vec3<f32>(x_160.x, x_160.y, x_160.z)));
  let x_164 : vec4<f32> = u_xlat4;
  let x_166 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_164.x, x_164.y, x_164.z), vec3<f32>(x_166.x, x_166.y, x_166.z));
  let x_170 : vec4<f32> = u_xlat5;
  let x_172 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_170.x, x_170.y, x_170.z), vec3<f32>(x_172.x, x_172.y, x_172.z));
  let x_176 : vec3<f32> = u_xlat6;
  let x_177 : vec3<f32> = u_xlat6;
  u_xlat4.z = dot(x_176, x_177);
  let x_181 : vec3<f32> = u_xlat7;
  let x_182 : vec3<f32> = u_xlat7;
  u_xlat4.w = dot(x_181, x_182);
  let x_190 : vec4<f32> = u_xlat4;
  let x_193 : vec4<f32> = x_130.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_190 < x_193);
  let x_197 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_197);
  let x_202 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_202);
  let x_206 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_206);
  let x_210 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_210);
  let x_214 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_214);
  let x_219 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_219);
  let x_223 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_223);
  let x_226 : vec4<f32> = u_xlat4;
  let x_228 : vec4<f32> = u_xlat5;
  let x_230 : vec3<f32> = (vec3<f32>(x_226.x, x_226.y, x_226.z) + vec3<f32>(x_228.y, x_228.z, x_228.w));
  let x_231 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_230.x, x_230.y, x_230.z, x_231.w);
  let x_233 : vec4<f32> = u_xlat4;
  let x_236 : vec3<f32> = max(vec3<f32>(x_233.x, x_233.y, x_233.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_237 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_237.x, x_236.x, x_236.y, x_236.z);
  let x_239 : vec4<f32> = u_xlat5;
  u_xlat36 = dot(x_239, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_244 : f32 = u_xlat36;
  u_xlat36 = (-(x_244) + 4.0f);
  let x_249 : f32 = u_xlat36;
  u_xlatu36 = u32(x_249);
  let x_253 : u32 = u_xlatu36;
  u_xlati36 = (bitcast<i32>(x_253) << bitcast<u32>(2i));
  let x_256 : vec3<f32> = vs_INTERP8;
  let x_258 : i32 = u_xlati36;
  let x_261 : i32 = u_xlati36;
  let x_265 : vec4<f32> = x_130.x_MainLightWorldToShadow[((x_258 + 1i) / 4i)][((x_261 + 1i) % 4i)];
  let x_267 : vec3<f32> = (vec3<f32>(x_256.y, x_256.y, x_256.y) * vec3<f32>(x_265.x, x_265.y, x_265.z));
  let x_268 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_267.x, x_267.y, x_267.z, x_268.w);
  let x_270 : i32 = u_xlati36;
  let x_272 : i32 = u_xlati36;
  let x_275 : vec4<f32> = x_130.x_MainLightWorldToShadow[(x_270 / 4i)][(x_272 % 4i)];
  let x_277 : vec3<f32> = vs_INTERP8;
  let x_280 : vec4<f32> = u_xlat4;
  let x_282 : vec3<f32> = ((vec3<f32>(x_275.x, x_275.y, x_275.z) * vec3<f32>(x_277.x, x_277.x, x_277.x)) + vec3<f32>(x_280.x, x_280.y, x_280.z));
  let x_283 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_282.x, x_282.y, x_282.z, x_283.w);
  let x_285 : i32 = u_xlati36;
  let x_288 : i32 = u_xlati36;
  let x_292 : vec4<f32> = x_130.x_MainLightWorldToShadow[((x_285 + 2i) / 4i)][((x_288 + 2i) % 4i)];
  let x_294 : vec3<f32> = vs_INTERP8;
  let x_297 : vec4<f32> = u_xlat4;
  let x_299 : vec3<f32> = ((vec3<f32>(x_292.x, x_292.y, x_292.z) * vec3<f32>(x_294.z, x_294.z, x_294.z)) + vec3<f32>(x_297.x, x_297.y, x_297.z));
  let x_300 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
  let x_302 : vec4<f32> = u_xlat4;
  let x_304 : i32 = u_xlati36;
  let x_307 : i32 = u_xlati36;
  let x_311 : vec4<f32> = x_130.x_MainLightWorldToShadow[((x_304 + 3i) / 4i)][((x_307 + 3i) % 4i)];
  let x_313 : vec3<f32> = (vec3<f32>(x_302.x, x_302.y, x_302.z) + vec3<f32>(x_311.x, x_311.y, x_311.z));
  let x_314 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
  let x_318 : vec4<f32> = u_xlat4;
  let x_319 : vec2<f32> = vec2<f32>(x_318.x, x_318.y);
  let x_321 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_319.x, x_319.y, x_321);
  let x_333 : vec3<f32> = txVec0;
  let x_335 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_333.xy, x_333.z);
  u_xlat36 = x_335;
  let x_339 : f32 = x_130.x_MainLightShadowParams.x;
  u_xlat38 = (-(x_339) + 1.0f);
  let x_342 : f32 = u_xlat36;
  let x_344 : f32 = x_130.x_MainLightShadowParams.x;
  let x_346 : f32 = u_xlat38;
  u_xlat36 = ((x_342 * x_344) + x_346);
  let x_350 : f32 = u_xlat4.z;
  u_xlatb38 = (0.0f >= x_350);
  let x_353 : f32 = u_xlat4.z;
  u_xlatb4.x = (x_353 >= 1.0f);
  let x_356 : bool = u_xlatb38;
  let x_358 : bool = u_xlatb4.x;
  u_xlatb38 = (x_356 | x_358);
  let x_360 : bool = u_xlatb38;
  let x_361 : f32 = u_xlat36;
  u_xlat36 = select(x_361, 1.0f, x_360);
  let x_363 : vec3<f32> = u_xlat0;
  let x_365 : vec4<f32> = x_53.x_MainLightPosition;
  u_xlat0.x = dot(x_363, -(vec3<f32>(x_365.x, x_365.y, x_365.z)));
  let x_371 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_371, 0.0f, 1.0f);
  let x_374 : f32 = u_xlat36;
  let x_377 : vec4<f32> = x_53.x_MainLightColor;
  let x_379 : vec3<f32> = (vec3<f32>(x_374, x_374, x_374) * vec3<f32>(x_377.x, x_377.y, x_377.z));
  let x_380 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_379.x, x_379.y, x_379.z, x_380.w);
  let x_382 : vec3<f32> = u_xlat0;
  let x_384 : vec4<f32> = u_xlat4;
  u_xlat0 = (vec3<f32>(x_382.x, x_382.x, x_382.x) * vec3<f32>(x_384.x, x_384.y, x_384.z));
  let x_387 : vec3<f32> = u_xlat0;
  let x_388 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_387 * vec3<f32>(x_388.x, x_388.y, x_388.z));
  let x_393 : f32 = u_xlat1.w;
  u_xlatb1 = (x_393 >= 0.40000000596046447754f);
  let x_396 : bool = u_xlatb1;
  if (x_396) {
    let x_402 : f32 = u_xlat1.w;
    x_398 = x_402;
  } else {
    x_398 = 0.0f;
  }
  let x_404 : f32 = x_398;
  u_xlat1.x = x_404;
  let x_408 : f32 = u_xlat1.w;
  u_xlat13.x = (x_408 + -0.40000000596046447754f);
  let x_414 : f32 = u_xlat1.w;
  u_xlat25 = dpdxCoarse(x_414);
  let x_418 : f32 = u_xlat1.w;
  u_xlat37 = dpdyCoarse(x_418);
  let x_420 : f32 = u_xlat37;
  let x_422 : f32 = u_xlat25;
  u_xlat25 = (abs(x_420) + abs(x_422));
  let x_425 : f32 = u_xlat25;
  u_xlat25 = max(x_425, 0.00009999999747378752f);
  let x_429 : f32 = u_xlat13.x;
  let x_430 : f32 = u_xlat25;
  u_xlat13.x = (x_429 / x_430);
  let x_434 : f32 = u_xlat13.x;
  u_xlat13.x = (x_434 + 0.5f);
  let x_439 : f32 = u_xlat13.x;
  u_xlat13.x = clamp(x_439, 0.0f, 1.0f);
  let x_444 : f32 = x_53.x_AlphaToMaskAvailable;
  u_xlatb25 = !((x_444 == 0.0f));
  let x_446 : bool = u_xlatb25;
  if (x_446) {
    let x_451 : f32 = u_xlat13.x;
    x_447 = x_451;
  } else {
    let x_454 : f32 = u_xlat1.x;
    x_447 = x_454;
  }
  let x_455 : f32 = x_447;
  u_xlat1.x = x_455;
  let x_458 : f32 = u_xlat1.x;
  u_xlat13.x = (x_458 + -0.00009999999747378752f);
  let x_466 : f32 = u_xlat13.x;
  u_xlatb13.x = (x_466 < 0.0f);
  let x_470 : bool = u_xlatb13.x;
  if (((select(0i, 1i, x_470) * -1i) != 0i)) {
    discard;
  }
  let x_480 : f32 = vs_INTERP4.w;
  u_xlatb13.x = (0.0f < x_480);
  let x_488 : f32 = x_486.unity_WorldTransformParams.w;
  u_xlatb13.z = (x_488 >= 0.0f);
  let x_492 : bool = u_xlatb13.x;
  u_xlat13.x = select(-1.0f, 1.0f, x_492);
  let x_496 : bool = u_xlatb13.z;
  u_xlat13.z = select(-1.0f, 1.0f, x_496);
  let x_500 : f32 = u_xlat13.z;
  let x_502 : f32 = u_xlat13.x;
  u_xlat13.x = (x_500 * x_502);
  let x_505 : vec4<f32> = vs_INTERP4;
  let x_507 : vec3<f32> = vs_INTERP9;
  let x_509 : vec3<f32> = (vec3<f32>(x_505.y, x_505.z, x_505.x) * vec3<f32>(x_507.z, x_507.x, x_507.y));
  let x_510 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_509.x, x_509.y, x_509.z, x_510.w);
  let x_512 : vec3<f32> = vs_INTERP9;
  let x_514 : vec4<f32> = vs_INTERP4;
  let x_517 : vec4<f32> = u_xlat4;
  let x_520 : vec3<f32> = ((vec3<f32>(x_512.y, x_512.z, x_512.x) * vec3<f32>(x_514.z, x_514.x, x_514.y)) + -(vec3<f32>(x_517.x, x_517.y, x_517.z)));
  let x_521 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_520.x, x_520.y, x_520.z, x_521.w);
  let x_523 : vec3<f32> = u_xlat13;
  let x_525 : vec4<f32> = u_xlat4;
  let x_527 : vec3<f32> = (vec3<f32>(x_523.x, x_523.x, x_523.x) * vec3<f32>(x_525.x, x_525.y, x_525.z));
  let x_528 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_527.x, x_527.y, x_527.z, x_528.w);
  let x_530 : vec3<f32> = u_xlat15;
  let x_532 : vec4<f32> = u_xlat4;
  let x_534 : vec3<f32> = (vec3<f32>(x_530.y, x_530.y, x_530.y) * vec3<f32>(x_532.x, x_532.y, x_532.z));
  let x_535 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_534.x, x_534.y, x_534.z, x_535.w);
  let x_537 : vec3<f32> = u_xlat15;
  let x_539 : vec4<f32> = vs_INTERP4;
  let x_542 : vec4<f32> = u_xlat4;
  let x_544 : vec3<f32> = ((vec3<f32>(x_537.x, x_537.x, x_537.x) * vec3<f32>(x_539.x, x_539.y, x_539.z)) + vec3<f32>(x_542.x, x_542.y, x_542.z));
  let x_545 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_544.x, x_544.y, x_544.z, x_545.w);
  let x_547 : vec3<f32> = u_xlat15;
  let x_549 : vec3<f32> = vs_INTERP9;
  let x_551 : vec4<f32> = u_xlat4;
  u_xlat15 = ((vec3<f32>(x_547.z, x_547.z, x_547.z) * x_549) + vec3<f32>(x_551.x, x_551.y, x_551.z));
  let x_554 : vec3<f32> = u_xlat15;
  let x_555 : vec3<f32> = u_xlat15;
  u_xlat13.x = dot(x_554, x_555);
  let x_559 : f32 = u_xlat13.x;
  u_xlat13.x = inverseSqrt(x_559);
  let x_562 : vec3<f32> = u_xlat13;
  let x_564 : vec3<f32> = u_xlat15;
  u_xlat15 = (vec3<f32>(x_562.x, x_562.x, x_562.x) * x_564);
  let x_568 : f32 = x_53.unity_OrthoParams.w;
  u_xlatb13.x = (x_568 == 0.0f);
  let x_571 : vec3<f32> = vs_INTERP8;
  let x_575 : vec3<f32> = x_53.x_WorldSpaceCameraPos;
  let x_576 : vec3<f32> = (-(x_571) + x_575);
  let x_577 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_576.x, x_576.y, x_576.z, x_577.w);
  let x_579 : vec4<f32> = u_xlat4;
  let x_581 : vec4<f32> = u_xlat4;
  u_xlat37 = dot(vec3<f32>(x_579.x, x_579.y, x_579.z), vec3<f32>(x_581.x, x_581.y, x_581.z));
  let x_584 : f32 = u_xlat37;
  u_xlat37 = inverseSqrt(x_584);
  let x_586 : f32 = u_xlat37;
  let x_588 : vec4<f32> = u_xlat4;
  let x_590 : vec3<f32> = (vec3<f32>(x_586, x_586, x_586) * vec3<f32>(x_588.x, x_588.y, x_588.z));
  let x_591 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_590.x, x_590.y, x_590.z, x_591.w);
  let x_594 : bool = u_xlatb13.x;
  if (x_594) {
    let x_599 : f32 = u_xlat4.x;
    x_595 = x_599;
  } else {
    let x_603 : f32 = x_53.unity_MatrixV[0i].z;
    x_595 = x_603;
  }
  let x_604 : f32 = x_595;
  u_xlat5.x = x_604;
  let x_607 : bool = u_xlatb13.x;
  if (x_607) {
    let x_612 : f32 = u_xlat4.y;
    x_608 = x_612;
  } else {
    let x_615 : f32 = x_53.unity_MatrixV[1i].z;
    x_608 = x_615;
  }
  let x_616 : f32 = x_608;
  u_xlat5.y = x_616;
  let x_619 : bool = u_xlatb13.x;
  if (x_619) {
    let x_624 : f32 = u_xlat4.z;
    x_620 = x_624;
  } else {
    let x_627 : f32 = x_53.unity_MatrixV[2i].z;
    x_620 = x_627;
  }
  let x_628 : f32 = x_620;
  u_xlat5.z = x_628;
  let x_637 : vec2<f32> = vs_INTERP0;
  let x_639 : f32 = x_53.x_GlobalMipBias.x;
  let x_640 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_637, x_639);
  u_xlat4 = x_640;
  let x_645 : vec2<f32> = vs_INTERP0;
  let x_647 : f32 = x_53.x_GlobalMipBias.x;
  let x_648 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_645, x_647);
  u_xlat6 = vec3<f32>(x_648.x, x_648.y, x_648.z);
  let x_650 : vec4<f32> = u_xlat4;
  let x_654 : vec3<f32> = (vec3<f32>(x_650.x, x_650.y, x_650.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_655 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_654.x, x_654.y, x_654.z, x_655.w);
  let x_657 : vec3<f32> = u_xlat15;
  let x_658 : vec4<f32> = u_xlat4;
  u_xlat13.x = dot(x_657, vec3<f32>(x_658.x, x_658.y, x_658.z));
  let x_663 : f32 = u_xlat13.x;
  u_xlat13.x = (x_663 + 0.5f);
  let x_666 : vec3<f32> = u_xlat13;
  let x_668 : vec3<f32> = u_xlat6;
  let x_669 : vec3<f32> = (vec3<f32>(x_666.x, x_666.x, x_666.x) * x_668);
  let x_670 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_669.x, x_669.y, x_669.z, x_670.w);
  let x_673 : f32 = u_xlat4.w;
  u_xlat13.x = max(x_673, 0.00009999999747378752f);
  let x_676 : vec4<f32> = u_xlat4;
  let x_678 : vec3<f32> = u_xlat13;
  let x_680 : vec3<f32> = (vec3<f32>(x_676.x, x_676.y, x_676.z) / vec3<f32>(x_678.x, x_678.x, x_678.x));
  let x_681 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_680.x, x_680.y, x_680.z, x_681.w);
  let x_684 : f32 = u_xlat3.x;
  u_xlat3.x = x_684;
  let x_687 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_687, 0.0f, 1.0f);
  let x_691 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_691, 1.0f);
  let x_694 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_694 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_699 : f32 = u_xlat3.x;
  u_xlat13.x = (-(x_699) + 1.0f);
  let x_704 : f32 = u_xlat13.x;
  let x_706 : f32 = u_xlat13.x;
  u_xlat37 = (x_704 * x_706);
  let x_708 : f32 = u_xlat37;
  u_xlat37 = max(x_708, 0.0078125f);
  let x_711 : f32 = u_xlat37;
  let x_712 : f32 = u_xlat37;
  u_xlat38 = (x_711 * x_712);
  let x_715 : f32 = u_xlat3.x;
  u_xlat3.x = (x_715 + 0.04000002145767211914f);
  let x_720 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_720, 1.0f);
  let x_724 : f32 = u_xlat37;
  u_xlat40 = ((x_724 * 4.0f) + 2.0f);
  let x_729 : f32 = vs_INTERP6.w;
  u_xlat41 = min(x_729, 1.0f);
  let x_731 : vec3<f32> = vs_INTERP8;
  let x_733 : vec3<f32> = x_53.x_WorldSpaceCameraPos;
  u_xlat6 = (x_731 + -(x_733));
  let x_736 : vec3<f32> = u_xlat6;
  let x_737 : vec3<f32> = u_xlat6;
  u_xlat6.x = dot(x_736, x_737);
  let x_742 : f32 = u_xlat6.x;
  let x_744 : f32 = x_130.x_MainLightShadowParams.z;
  let x_747 : f32 = x_130.x_MainLightShadowParams.w;
  u_xlat18.x = ((x_742 * x_744) + x_747);
  let x_751 : f32 = u_xlat18.x;
  u_xlat18.x = clamp(x_751, 0.0f, 1.0f);
  let x_755 : f32 = u_xlat36;
  u_xlat30 = (-(x_755) + 1.0f);
  let x_759 : f32 = u_xlat18.x;
  let x_760 : f32 = u_xlat30;
  let x_762 : f32 = u_xlat36;
  u_xlat36 = ((x_759 * x_760) + x_762);
  let x_764 : vec4<f32> = u_xlat5;
  let x_767 : vec3<f32> = u_xlat15;
  u_xlat18.x = dot(-(vec3<f32>(x_764.x, x_764.y, x_764.z)), x_767);
  let x_771 : f32 = u_xlat18.x;
  let x_773 : f32 = u_xlat18.x;
  u_xlat18.x = (x_771 + x_773);
  let x_776 : vec3<f32> = u_xlat15;
  let x_777 : vec3<f32> = u_xlat18;
  let x_781 : vec4<f32> = u_xlat5;
  u_xlat18 = ((x_776 * -(vec3<f32>(x_777.x, x_777.x, x_777.x))) + -(vec3<f32>(x_781.x, x_781.y, x_781.z)));
  let x_785 : vec3<f32> = u_xlat15;
  let x_786 : vec4<f32> = u_xlat5;
  u_xlat7.x = dot(x_785, vec3<f32>(x_786.x, x_786.y, x_786.z));
  let x_791 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_791, 0.0f, 1.0f);
  let x_795 : f32 = u_xlat7.x;
  u_xlat7.x = (-(x_795) + 1.0f);
  let x_800 : f32 = u_xlat7.x;
  let x_802 : f32 = u_xlat7.x;
  u_xlat7.x = (x_800 * x_802);
  let x_806 : f32 = u_xlat7.x;
  let x_808 : f32 = u_xlat7.x;
  u_xlat7.x = (x_806 * x_808);
  let x_813 : f32 = u_xlat13.x;
  u_xlat19 = ((-(x_813) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_820 : f32 = u_xlat13.x;
  let x_821 : f32 = u_xlat19;
  u_xlat13.x = (x_820 * x_821);
  let x_825 : f32 = u_xlat13.x;
  u_xlat13.x = (x_825 * 6.0f);
  let x_838 : vec3<f32> = u_xlat18;
  let x_840 : f32 = u_xlat13.x;
  let x_841 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_838, x_840);
  u_xlat8 = x_841;
  let x_843 : f32 = u_xlat8.w;
  u_xlat13.x = (x_843 + -1.0f);
  let x_847 : f32 = x_486.unity_SpecCube0_HDR.w;
  let x_849 : f32 = u_xlat13.x;
  u_xlat13.x = ((x_847 * x_849) + 1.0f);
  let x_854 : f32 = u_xlat13.x;
  u_xlat13.x = max(x_854, 0.0f);
  let x_858 : f32 = u_xlat13.x;
  u_xlat13.x = log2(x_858);
  let x_862 : f32 = u_xlat13.x;
  let x_864 : f32 = x_486.unity_SpecCube0_HDR.y;
  u_xlat13.x = (x_862 * x_864);
  let x_868 : f32 = u_xlat13.x;
  u_xlat13.x = exp2(x_868);
  let x_872 : f32 = u_xlat13.x;
  let x_874 : f32 = x_486.unity_SpecCube0_HDR.x;
  u_xlat13.x = (x_872 * x_874);
  let x_877 : vec4<f32> = u_xlat8;
  let x_879 : vec3<f32> = u_xlat13;
  u_xlat18 = (vec3<f32>(x_877.x, x_877.y, x_877.z) * vec3<f32>(x_879.x, x_879.x, x_879.x));
  let x_882 : f32 = u_xlat37;
  let x_884 : f32 = u_xlat37;
  let x_888 : vec2<f32> = ((vec2<f32>(x_882, x_882) * vec2<f32>(x_884, x_884)) + vec2<f32>(-1.0f, 1.0f));
  let x_889 : vec3<f32> = u_xlat13;
  u_xlat13 = vec3<f32>(x_888.x, x_889.y, x_888.y);
  let x_892 : f32 = u_xlat13.z;
  u_xlat37 = (1.0f / x_892);
  let x_895 : f32 = u_xlat3.x;
  u_xlat3.x = (x_895 + -0.03999999910593032837f);
  let x_900 : f32 = u_xlat7.x;
  let x_902 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_900 * x_902) + 0.03999999910593032837f);
  let x_907 : f32 = u_xlat37;
  let x_909 : f32 = u_xlat3.x;
  u_xlat37 = (x_907 * x_909);
  let x_911 : f32 = u_xlat37;
  let x_913 : vec3<f32> = u_xlat18;
  u_xlat18 = (vec3<f32>(x_911, x_911, x_911) * x_913);
  let x_915 : vec4<f32> = u_xlat4;
  let x_917 : vec3<f32> = u_xlat2;
  let x_919 : vec3<f32> = u_xlat18;
  let x_920 : vec3<f32> = ((vec3<f32>(x_915.x, x_915.y, x_915.z) * x_917) + x_919);
  let x_921 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_920.x, x_920.y, x_920.z, x_921.w);
  let x_923 : f32 = u_xlat36;
  let x_925 : f32 = x_486.unity_LightData.z;
  u_xlat36 = (x_923 * x_925);
  let x_927 : vec3<f32> = u_xlat15;
  let x_929 : vec4<f32> = x_53.x_MainLightPosition;
  u_xlat37 = dot(x_927, vec3<f32>(x_929.x, x_929.y, x_929.z));
  let x_932 : f32 = u_xlat37;
  u_xlat37 = clamp(x_932, 0.0f, 1.0f);
  let x_934 : f32 = u_xlat36;
  let x_935 : f32 = u_xlat37;
  u_xlat36 = (x_934 * x_935);
  let x_937 : f32 = u_xlat36;
  let x_940 : vec4<f32> = x_53.x_MainLightColor;
  u_xlat18 = (vec3<f32>(x_937, x_937, x_937) * vec3<f32>(x_940.x, x_940.y, x_940.z));
  let x_943 : vec4<f32> = u_xlat5;
  let x_946 : vec4<f32> = x_53.x_MainLightPosition;
  u_xlat7 = (vec3<f32>(x_943.x, x_943.y, x_943.z) + vec3<f32>(x_946.x, x_946.y, x_946.z));
  let x_949 : vec3<f32> = u_xlat7;
  let x_950 : vec3<f32> = u_xlat7;
  u_xlat36 = dot(x_949, x_950);
  let x_952 : f32 = u_xlat36;
  u_xlat36 = max(x_952, 1.17549435e-38f);
  let x_955 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_955);
  let x_957 : f32 = u_xlat36;
  let x_959 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_957, x_957, x_957) * x_959);
  let x_961 : vec3<f32> = u_xlat15;
  let x_962 : vec3<f32> = u_xlat7;
  u_xlat36 = dot(x_961, x_962);
  let x_964 : f32 = u_xlat36;
  u_xlat36 = clamp(x_964, 0.0f, 1.0f);
  let x_967 : vec4<f32> = x_53.x_MainLightPosition;
  let x_969 : vec3<f32> = u_xlat7;
  u_xlat37 = dot(vec3<f32>(x_967.x, x_967.y, x_967.z), x_969);
  let x_971 : f32 = u_xlat37;
  u_xlat37 = clamp(x_971, 0.0f, 1.0f);
  let x_973 : f32 = u_xlat36;
  let x_974 : f32 = u_xlat36;
  u_xlat36 = (x_973 * x_974);
  let x_976 : f32 = u_xlat36;
  let x_978 : f32 = u_xlat13.x;
  u_xlat36 = ((x_976 * x_978) + 1.00001001358032226562f);
  let x_982 : f32 = u_xlat37;
  let x_983 : f32 = u_xlat37;
  u_xlat37 = (x_982 * x_983);
  let x_985 : f32 = u_xlat36;
  let x_986 : f32 = u_xlat36;
  u_xlat36 = (x_985 * x_986);
  let x_988 : f32 = u_xlat37;
  u_xlat37 = max(x_988, 0.10000000149011611938f);
  let x_991 : f32 = u_xlat36;
  let x_992 : f32 = u_xlat37;
  u_xlat36 = (x_991 * x_992);
  let x_994 : f32 = u_xlat40;
  let x_995 : f32 = u_xlat36;
  u_xlat36 = (x_994 * x_995);
  let x_997 : f32 = u_xlat38;
  let x_998 : f32 = u_xlat36;
  u_xlat36 = (x_997 / x_998);
  let x_1000 : f32 = u_xlat36;
  let x_1004 : vec3<f32> = u_xlat2;
  u_xlat7 = ((vec3<f32>(x_1000, x_1000, x_1000) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_1004);
  let x_1006 : vec3<f32> = u_xlat18;
  let x_1007 : vec3<f32> = u_xlat7;
  u_xlat18 = (x_1006 * x_1007);
  let x_1010 : f32 = x_53.x_AdditionalLightsCount.x;
  let x_1012 : f32 = x_486.unity_LightData.y;
  u_xlat36 = min(x_1010, x_1012);
  let x_1014 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_1014));
  let x_1018 : f32 = u_xlat6.x;
  let x_1021 : f32 = x_130.x_AdditionalShadowFadeParams.x;
  let x_1024 : f32 = x_130.x_AdditionalShadowFadeParams.y;
  u_xlat37 = ((x_1018 * x_1021) + x_1024);
  let x_1026 : f32 = u_xlat37;
  u_xlat37 = clamp(x_1026, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1038 : u32 = u_xlatu_loop_1;
    let x_1039 : u32 = u_xlatu36;
    if ((x_1038 < x_1039)) {
    } else {
      break;
    }
    let x_1042 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_1042 >> 2u);
    let x_1045 : u32 = u_xlatu_loop_1;
    u_xlati43 = bitcast<i32>((x_1045 & 3u));
    let x_1048 : u32 = u_xlatu6;
    let x_1051 : vec4<f32> = x_486.unity_LightIndices[bitcast<i32>(x_1048)];
    let x_1061 : i32 = u_xlati43;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1066 : vec4<u32> = indexable[x_1061];
    u_xlat6.x = dot(x_1051, bitcast<vec4<f32>>(x_1066));
    let x_1072 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_1072);
    let x_1074 : vec3<f32> = vs_INTERP8;
    let x_1085 : i32 = u_xlati6;
    let x_1087 : vec4<f32> = x_1084.x_AdditionalLightsPosition[x_1085];
    let x_1090 : i32 = u_xlati6;
    let x_1092 : vec4<f32> = x_1084.x_AdditionalLightsPosition[x_1090];
    let x_1094 : vec3<f32> = ((-(x_1074) * vec3<f32>(x_1087.w, x_1087.w, x_1087.w)) + vec3<f32>(x_1092.x, x_1092.y, x_1092.z));
    let x_1095 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1094.x, x_1094.y, x_1094.z, x_1095.w);
    let x_1098 : vec4<f32> = u_xlat8;
    let x_1100 : vec4<f32> = u_xlat8;
    u_xlat43 = dot(vec3<f32>(x_1098.x, x_1098.y, x_1098.z), vec3<f32>(x_1100.x, x_1100.y, x_1100.z));
    let x_1103 : f32 = u_xlat43;
    u_xlat43 = max(x_1103, 0.00006103515625f);
    let x_1107 : f32 = u_xlat43;
    u_xlat44 = inverseSqrt(x_1107);
    let x_1110 : f32 = u_xlat44;
    let x_1112 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1110, x_1110, x_1110) * vec3<f32>(x_1112.x, x_1112.y, x_1112.z));
    let x_1116 : f32 = u_xlat43;
    u_xlat45 = (1.0f / x_1116);
    let x_1118 : f32 = u_xlat43;
    let x_1119 : i32 = u_xlati6;
    let x_1121 : f32 = x_1084.x_AdditionalLightsAttenuation[x_1119].x;
    u_xlat43 = (x_1118 * x_1121);
    let x_1123 : f32 = u_xlat43;
    let x_1125 : f32 = u_xlat43;
    u_xlat43 = ((-(x_1123) * x_1125) + 1.0f);
    let x_1128 : f32 = u_xlat43;
    u_xlat43 = max(x_1128, 0.0f);
    let x_1130 : f32 = u_xlat43;
    let x_1131 : f32 = u_xlat43;
    u_xlat43 = (x_1130 * x_1131);
    let x_1133 : f32 = u_xlat43;
    let x_1134 : f32 = u_xlat45;
    u_xlat43 = (x_1133 * x_1134);
    let x_1136 : i32 = u_xlati6;
    let x_1138 : vec4<f32> = x_1084.x_AdditionalLightsSpotDir[x_1136];
    let x_1140 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_1138.x, x_1138.y, x_1138.z), x_1140);
    let x_1142 : f32 = u_xlat45;
    let x_1143 : i32 = u_xlati6;
    let x_1145 : f32 = x_1084.x_AdditionalLightsAttenuation[x_1143].z;
    let x_1147 : i32 = u_xlati6;
    let x_1149 : f32 = x_1084.x_AdditionalLightsAttenuation[x_1147].w;
    u_xlat45 = ((x_1142 * x_1145) + x_1149);
    let x_1151 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1151, 0.0f, 1.0f);
    let x_1153 : f32 = u_xlat45;
    let x_1154 : f32 = u_xlat45;
    u_xlat45 = (x_1153 * x_1154);
    let x_1156 : f32 = u_xlat43;
    let x_1157 : f32 = u_xlat45;
    u_xlat43 = (x_1156 * x_1157);
    let x_1161 : i32 = u_xlati6;
    let x_1163 : f32 = x_130.x_AdditionalShadowParams[x_1161].w;
    u_xlati45 = i32(x_1163);
    let x_1166 : i32 = u_xlati45;
    u_xlatb10.x = (x_1166 >= 0i);
    let x_1170 : bool = u_xlatb10.x;
    if (x_1170) {
      let x_1174 : i32 = u_xlati6;
      let x_1176 : f32 = x_130.x_AdditionalShadowParams[x_1174].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1176, x_1176, x_1176, x_1176))));
      let x_1182 : bool = u_xlatb10.x;
      if (x_1182) {
        let x_1185 : vec3<f32> = u_xlat9;
        let x_1188 : vec3<f32> = u_xlat9;
        let x_1191 : vec4<bool> = (abs(vec4<f32>(x_1185.z, x_1185.z, x_1185.y, x_1185.z)) >= abs(vec4<f32>(x_1188.x, x_1188.y, x_1188.x, x_1188.x)));
        u_xlatb10 = vec3<bool>(x_1191.x, x_1191.y, x_1191.z);
        let x_1194 : bool = u_xlatb10.y;
        let x_1196 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_1194 & x_1196);
        let x_1200 : vec3<f32> = u_xlat9;
        let x_1203 : vec4<bool> = (-(vec4<f32>(x_1200.z, x_1200.y, x_1200.x, x_1200.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_1203.x, x_1203.y, x_1203.z);
        let x_1207 : bool = u_xlatb11.x;
        u_xlat22.x = select(4.0f, 5.0f, x_1207);
        let x_1212 : bool = u_xlatb11.y;
        u_xlat22.z = select(2.0f, 3.0f, x_1212);
        let x_1217 : bool = u_xlatb11.z;
        u_xlat11 = select(0.0f, 1.0f, x_1217);
        let x_1221 : bool = u_xlatb10.z;
        if (x_1221) {
          let x_1226 : f32 = u_xlat22.z;
          x_1222 = x_1226;
        } else {
          let x_1228 : f32 = u_xlat11;
          x_1222 = x_1228;
        }
        let x_1229 : f32 = x_1222;
        u_xlat34 = x_1229;
        let x_1232 : bool = u_xlatb10.x;
        if (x_1232) {
          let x_1237 : f32 = u_xlat22.x;
          x_1233 = x_1237;
        } else {
          let x_1239 : f32 = u_xlat34;
          x_1233 = x_1239;
        }
        let x_1240 : f32 = x_1233;
        u_xlat10.x = x_1240;
        let x_1242 : i32 = u_xlati6;
        let x_1244 : f32 = x_130.x_AdditionalShadowParams[x_1242].w;
        u_xlat22.x = trunc(x_1244);
        let x_1248 : f32 = u_xlat10.x;
        let x_1250 : f32 = u_xlat22.x;
        u_xlat10.x = (x_1248 + x_1250);
        let x_1254 : f32 = u_xlat10.x;
        u_xlati45 = i32(x_1254);
      }
      let x_1256 : i32 = u_xlati45;
      u_xlati45 = (x_1256 << bitcast<u32>(2i));
      let x_1258 : vec3<f32> = vs_INTERP8;
      let x_1261 : i32 = u_xlati45;
      let x_1264 : i32 = u_xlati45;
      let x_1268 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[((x_1261 + 1i) / 4i)][((x_1264 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1258.y, x_1258.y, x_1258.y, x_1258.y) * x_1268);
      let x_1270 : i32 = u_xlati45;
      let x_1272 : i32 = u_xlati45;
      let x_1275 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[(x_1270 / 4i)][(x_1272 % 4i)];
      let x_1276 : vec3<f32> = vs_INTERP8;
      let x_1279 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1275 * vec4<f32>(x_1276.x, x_1276.x, x_1276.x, x_1276.x)) + x_1279);
      let x_1281 : i32 = u_xlati45;
      let x_1284 : i32 = u_xlati45;
      let x_1288 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[((x_1281 + 2i) / 4i)][((x_1284 + 2i) % 4i)];
      let x_1289 : vec3<f32> = vs_INTERP8;
      let x_1292 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1288 * vec4<f32>(x_1289.z, x_1289.z, x_1289.z, x_1289.z)) + x_1292);
      let x_1294 : vec4<f32> = u_xlat10;
      let x_1295 : i32 = u_xlati45;
      let x_1298 : i32 = u_xlati45;
      let x_1302 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[((x_1295 + 3i) / 4i)][((x_1298 + 3i) % 4i)];
      u_xlat10 = (x_1294 + x_1302);
      let x_1304 : vec4<f32> = u_xlat10;
      let x_1306 : vec4<f32> = u_xlat10;
      let x_1308 : vec3<f32> = (vec3<f32>(x_1304.x, x_1304.y, x_1304.z) / vec3<f32>(x_1306.w, x_1306.w, x_1306.w));
      let x_1309 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1308.x, x_1308.y, x_1308.z, x_1309.w);
      let x_1312 : vec4<f32> = u_xlat10;
      let x_1313 : vec2<f32> = vec2<f32>(x_1312.x, x_1312.y);
      let x_1315 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1313.x, x_1313.y, x_1315);
      let x_1323 : vec3<f32> = txVec1;
      let x_1325 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1323.xy, x_1323.z);
      u_xlat45 = x_1325;
      let x_1326 : i32 = u_xlati6;
      let x_1328 : f32 = x_130.x_AdditionalShadowParams[x_1326].x;
      u_xlat10.x = (1.0f + -(x_1328));
      let x_1332 : f32 = u_xlat45;
      let x_1333 : i32 = u_xlati6;
      let x_1335 : f32 = x_130.x_AdditionalShadowParams[x_1333].x;
      let x_1338 : f32 = u_xlat10.x;
      u_xlat45 = ((x_1332 * x_1335) + x_1338);
      let x_1341 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_1341);
      let x_1346 : f32 = u_xlat10.z;
      u_xlatb22 = (x_1346 >= 1.0f);
      let x_1348 : bool = u_xlatb22;
      let x_1350 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_1348 | x_1350);
      let x_1354 : bool = u_xlatb10.x;
      let x_1355 : f32 = u_xlat45;
      u_xlat45 = select(x_1355, 1.0f, x_1354);
    } else {
      u_xlat45 = 1.0f;
    }
    let x_1358 : f32 = u_xlat45;
    u_xlat10.x = (-(x_1358) + 1.0f);
    let x_1362 : f32 = u_xlat37;
    let x_1364 : f32 = u_xlat10.x;
    let x_1366 : f32 = u_xlat45;
    u_xlat45 = ((x_1362 * x_1364) + x_1366);
    let x_1368 : f32 = u_xlat43;
    let x_1369 : f32 = u_xlat45;
    u_xlat43 = (x_1368 * x_1369);
    let x_1371 : vec3<f32> = u_xlat15;
    let x_1372 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_1371, x_1372);
    let x_1374 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1374, 0.0f, 1.0f);
    let x_1376 : f32 = u_xlat43;
    let x_1377 : f32 = u_xlat45;
    u_xlat43 = (x_1376 * x_1377);
    let x_1379 : f32 = u_xlat43;
    let x_1381 : i32 = u_xlati6;
    let x_1383 : vec4<f32> = x_1084.x_AdditionalLightsColor[x_1381];
    let x_1385 : vec3<f32> = (vec3<f32>(x_1379, x_1379, x_1379) * vec3<f32>(x_1383.x, x_1383.y, x_1383.z));
    let x_1386 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1385.x, x_1385.y, x_1385.z, x_1386.w);
    let x_1388 : vec4<f32> = u_xlat8;
    let x_1390 : f32 = u_xlat44;
    let x_1393 : vec4<f32> = u_xlat5;
    let x_1395 : vec3<f32> = ((vec3<f32>(x_1388.x, x_1388.y, x_1388.z) * vec3<f32>(x_1390, x_1390, x_1390)) + vec3<f32>(x_1393.x, x_1393.y, x_1393.z));
    let x_1396 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1395.x, x_1395.y, x_1395.z, x_1396.w);
    let x_1398 : vec4<f32> = u_xlat8;
    let x_1400 : vec4<f32> = u_xlat8;
    u_xlat6.x = dot(vec3<f32>(x_1398.x, x_1398.y, x_1398.z), vec3<f32>(x_1400.x, x_1400.y, x_1400.z));
    let x_1405 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_1405, 1.17549435e-38f);
    let x_1409 : f32 = u_xlat6.x;
    u_xlat6.x = inverseSqrt(x_1409);
    let x_1412 : vec3<f32> = u_xlat6;
    let x_1414 : vec4<f32> = u_xlat8;
    let x_1416 : vec3<f32> = (vec3<f32>(x_1412.x, x_1412.x, x_1412.x) * vec3<f32>(x_1414.x, x_1414.y, x_1414.z));
    let x_1417 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1416.x, x_1416.y, x_1416.z, x_1417.w);
    let x_1419 : vec3<f32> = u_xlat15;
    let x_1420 : vec4<f32> = u_xlat8;
    u_xlat6.x = dot(x_1419, vec3<f32>(x_1420.x, x_1420.y, x_1420.z));
    let x_1425 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_1425, 0.0f, 1.0f);
    let x_1428 : vec3<f32> = u_xlat9;
    let x_1429 : vec4<f32> = u_xlat8;
    u_xlat43 = dot(x_1428, vec3<f32>(x_1429.x, x_1429.y, x_1429.z));
    let x_1432 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1432, 0.0f, 1.0f);
    let x_1435 : f32 = u_xlat6.x;
    let x_1437 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1435 * x_1437);
    let x_1441 : f32 = u_xlat6.x;
    let x_1443 : f32 = u_xlat13.x;
    u_xlat6.x = ((x_1441 * x_1443) + 1.00001001358032226562f);
    let x_1447 : f32 = u_xlat43;
    let x_1448 : f32 = u_xlat43;
    u_xlat43 = (x_1447 * x_1448);
    let x_1451 : f32 = u_xlat6.x;
    let x_1453 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1451 * x_1453);
    let x_1456 : f32 = u_xlat43;
    u_xlat43 = max(x_1456, 0.10000000149011611938f);
    let x_1459 : f32 = u_xlat6.x;
    let x_1460 : f32 = u_xlat43;
    u_xlat6.x = (x_1459 * x_1460);
    let x_1463 : f32 = u_xlat40;
    let x_1465 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1463 * x_1465);
    let x_1468 : f32 = u_xlat38;
    let x_1470 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1468 / x_1470);
    let x_1473 : vec3<f32> = u_xlat6;
    let x_1476 : vec3<f32> = u_xlat2;
    let x_1477 : vec3<f32> = ((vec3<f32>(x_1473.x, x_1473.x, x_1473.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_1476);
    let x_1478 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1477.x, x_1477.y, x_1477.z, x_1478.w);
    let x_1480 : vec4<f32> = u_xlat8;
    let x_1482 : vec4<f32> = u_xlat10;
    let x_1485 : vec3<f32> = u_xlat7;
    u_xlat7 = ((vec3<f32>(x_1480.x, x_1480.y, x_1480.z) * vec3<f32>(x_1482.x, x_1482.y, x_1482.z)) + x_1485);

    continuing {
      let x_1487 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1487 + bitcast<u32>(1i));
    }
  }
  let x_1489 : vec4<f32> = u_xlat4;
  let x_1491 : f32 = u_xlat41;
  let x_1494 : vec3<f32> = u_xlat18;
  u_xlat2 = ((vec3<f32>(x_1489.x, x_1489.y, x_1489.z) * vec3<f32>(x_1491, x_1491, x_1491)) + x_1494);
  let x_1496 : vec3<f32> = u_xlat7;
  let x_1497 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1496 + x_1497);
  let x_1501 : vec4<f32> = vs_INTERP6;
  let x_1503 : vec3<f32> = u_xlat0;
  let x_1505 : vec3<f32> = u_xlat2;
  let x_1506 : vec3<f32> = ((vec3<f32>(x_1501.w, x_1501.w, x_1501.w) * x_1503) + x_1505);
  let x_1507 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1506.x, x_1506.y, x_1506.z, x_1507.w);
  let x_1509 : bool = u_xlatb25;
  if (x_1509) {
    let x_1514 : f32 = u_xlat1.x;
    x_1510 = x_1514;
  } else {
    x_1510 = 1.0f;
  }
  let x_1516 : f32 = x_1510;
  SV_Target0.w = x_1516;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(5) vs_INTERP9_param : vec3<f32>, @location(2) vs_INTERP5_param : vec4<f32>, @location(3) vs_INTERP6_param : vec4<f32>, @location(4) vs_INTERP8_param : vec3<f32>, @location(1) vs_INTERP4_param : vec4<f32>, @location(0) vs_INTERP0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP9 = vs_INTERP9_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP6 = vs_INTERP6_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP0 = vs_INTERP0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


