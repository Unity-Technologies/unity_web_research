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

var<private> u_xlat7 : vec4<f32>;

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

@group(1) @binding(2) var<uniform> x_490 : UnityPerDraw;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat40 : f32;

var<private> u_xlat41 : f32;

var<private> u_xlat18 : vec3<f32>;

var<private> u_xlat30 : f32;

var<private> u_xlat42 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat20 : vec3<f32>;

var<private> u_xlatu3 : u32;

var<private> u_xlati43 : i32;

var<private> u_xlati3 : i32;

@group(1) @binding(1) var<uniform> x_1088 : AdditionalLights;

var<private> u_xlat43 : f32;

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

var<private> u_xlatb3 : bool;

var<private> u_xlatu38 : u32;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_402 : f32;
  var x_451 : f32;
  var x_609 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1231 : f32;
  var x_1242 : f32;
  var txVec1 : vec3<f32>;
  var x_1359 : f32;
  var x_1538 : f32;
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
  u_xlat15 = (vec3<f32>(x_566.x, x_566.x, x_566.x) * x_568);
  let x_572 : f32 = x_53.unity_OrthoParams.w;
  u_xlatb13.x = (x_572 == 0.0f);
  let x_575 : vec3<f32> = vs_INTERP8;
  let x_579 : vec3<f32> = x_53.x_WorldSpaceCameraPos;
  let x_580 : vec3<f32> = (-(x_575) + x_579);
  let x_581 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
  let x_583 : vec4<f32> = u_xlat4;
  let x_585 : vec4<f32> = u_xlat4;
  u_xlat37 = dot(vec3<f32>(x_583.x, x_583.y, x_583.z), vec3<f32>(x_585.x, x_585.y, x_585.z));
  let x_588 : f32 = u_xlat37;
  u_xlat37 = inverseSqrt(x_588);
  let x_590 : f32 = u_xlat37;
  let x_592 : vec4<f32> = u_xlat4;
  let x_594 : vec3<f32> = (vec3<f32>(x_590, x_590, x_590) * vec3<f32>(x_592.x, x_592.y, x_592.z));
  let x_595 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_594.x, x_594.y, x_594.z, x_595.w);
  let x_599 : f32 = x_53.unity_MatrixV[0i].z;
  u_xlat5.x = x_599;
  let x_602 : f32 = x_53.unity_MatrixV[1i].z;
  u_xlat5.y = x_602;
  let x_605 : f32 = x_53.unity_MatrixV[2i].z;
  u_xlat5.z = x_605;
  let x_608 : bool = u_xlatb13.x;
  if (x_608) {
    let x_612 : vec4<f32> = u_xlat4;
    x_609 = vec3<f32>(x_612.x, x_612.y, x_612.z);
  } else {
    let x_615 : vec4<f32> = u_xlat5;
    x_609 = vec3<f32>(x_615.x, x_615.y, x_615.z);
  }
  let x_617 : vec3<f32> = x_609;
  let x_618 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
  let x_621 : f32 = vs_INTERP8.y;
  let x_623 : f32 = x_53.unity_MatrixV[1i].z;
  u_xlat13.x = (x_621 * x_623);
  let x_627 : f32 = x_53.unity_MatrixV[0i].z;
  let x_629 : f32 = vs_INTERP8.x;
  let x_632 : f32 = u_xlat13.x;
  u_xlat13.x = ((x_627 * x_629) + x_632);
  let x_636 : f32 = x_53.unity_MatrixV[2i].z;
  let x_638 : f32 = vs_INTERP8.z;
  let x_641 : f32 = u_xlat13.x;
  u_xlat13.x = ((x_636 * x_638) + x_641);
  let x_645 : f32 = u_xlat13.x;
  let x_647 : f32 = x_53.unity_MatrixV[3i].z;
  u_xlat13.x = (x_645 + x_647);
  let x_651 : f32 = u_xlat13.x;
  let x_655 : f32 = x_53.x_ProjectionParams.y;
  u_xlat13.x = (-(x_651) + -(x_655));
  let x_660 : f32 = u_xlat13.x;
  u_xlat13.x = max(x_660, 0.0f);
  let x_664 : f32 = u_xlat13.x;
  let x_666 : f32 = x_53.unity_FogParams.x;
  u_xlat13.x = (x_664 * x_666);
  let x_676 : vec2<f32> = vs_INTERP0;
  let x_678 : f32 = x_53.x_GlobalMipBias.x;
  let x_679 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_676, x_678);
  u_xlat5 = x_679;
  let x_684 : vec2<f32> = vs_INTERP0;
  let x_686 : f32 = x_53.x_GlobalMipBias.x;
  let x_687 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_684, x_686);
  u_xlat6 = vec3<f32>(x_687.x, x_687.y, x_687.z);
  let x_689 : vec4<f32> = u_xlat5;
  let x_693 : vec3<f32> = (vec3<f32>(x_689.x, x_689.y, x_689.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_694 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_693.x, x_693.y, x_693.z, x_694.w);
  let x_696 : vec3<f32> = u_xlat15;
  let x_697 : vec4<f32> = u_xlat5;
  u_xlat37 = dot(x_696, vec3<f32>(x_697.x, x_697.y, x_697.z));
  let x_700 : f32 = u_xlat37;
  u_xlat37 = (x_700 + 0.5f);
  let x_702 : f32 = u_xlat37;
  let x_704 : vec3<f32> = u_xlat6;
  let x_705 : vec3<f32> = (vec3<f32>(x_702, x_702, x_702) * x_704);
  let x_706 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_705.x, x_705.y, x_705.z, x_706.w);
  let x_709 : f32 = u_xlat5.w;
  u_xlat37 = max(x_709, 0.00009999999747378752f);
  let x_711 : vec4<f32> = u_xlat5;
  let x_713 : f32 = u_xlat37;
  let x_715 : vec3<f32> = (vec3<f32>(x_711.x, x_711.y, x_711.z) / vec3<f32>(x_713, x_713, x_713));
  let x_716 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_715.x, x_715.y, x_715.z, x_716.w);
  let x_719 : f32 = u_xlat3.x;
  u_xlat3.x = x_719;
  let x_722 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_722, 0.0f, 1.0f);
  let x_726 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_726, 1.0f);
  let x_729 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_729 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_734 : f32 = u_xlat3.x;
  u_xlat37 = (-(x_734) + 1.0f);
  let x_737 : f32 = u_xlat37;
  let x_738 : f32 = u_xlat37;
  u_xlat38 = (x_737 * x_738);
  let x_740 : f32 = u_xlat38;
  u_xlat38 = max(x_740, 0.0078125f);
  let x_744 : f32 = u_xlat38;
  let x_745 : f32 = u_xlat38;
  u_xlat40 = (x_744 * x_745);
  let x_748 : f32 = u_xlat3.x;
  u_xlat3.x = (x_748 + 0.04000002145767211914f);
  let x_753 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_753, 1.0f);
  let x_757 : f32 = u_xlat38;
  u_xlat41 = ((x_757 * 4.0f) + 2.0f);
  let x_761 : f32 = vs_INTERP6.w;
  u_xlat6.x = min(x_761, 1.0f);
  let x_765 : vec3<f32> = vs_INTERP8;
  let x_767 : vec3<f32> = x_53.x_WorldSpaceCameraPos;
  u_xlat18 = (x_765 + -(x_767));
  let x_770 : vec3<f32> = u_xlat18;
  let x_771 : vec3<f32> = u_xlat18;
  u_xlat18.x = dot(x_770, x_771);
  let x_776 : f32 = u_xlat18.x;
  let x_778 : f32 = x_130.x_MainLightShadowParams.z;
  let x_781 : f32 = x_130.x_MainLightShadowParams.w;
  u_xlat30 = ((x_776 * x_778) + x_781);
  let x_783 : f32 = u_xlat30;
  u_xlat30 = clamp(x_783, 0.0f, 1.0f);
  let x_786 : f32 = u_xlat36;
  u_xlat42 = (-(x_786) + 1.0f);
  let x_789 : f32 = u_xlat30;
  let x_790 : f32 = u_xlat42;
  let x_792 : f32 = u_xlat36;
  u_xlat36 = ((x_789 * x_790) + x_792);
  let x_794 : vec4<f32> = u_xlat4;
  let x_797 : vec3<f32> = u_xlat15;
  u_xlat30 = dot(-(vec3<f32>(x_794.x, x_794.y, x_794.z)), x_797);
  let x_799 : f32 = u_xlat30;
  let x_800 : f32 = u_xlat30;
  u_xlat30 = (x_799 + x_800);
  let x_802 : vec3<f32> = u_xlat15;
  let x_803 : f32 = u_xlat30;
  let x_807 : vec4<f32> = u_xlat4;
  let x_810 : vec3<f32> = ((x_802 * -(vec3<f32>(x_803, x_803, x_803))) + -(vec3<f32>(x_807.x, x_807.y, x_807.z)));
  let x_811 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_810.x, x_810.y, x_810.z, x_811.w);
  let x_813 : vec3<f32> = u_xlat15;
  let x_814 : vec4<f32> = u_xlat4;
  u_xlat30 = dot(x_813, vec3<f32>(x_814.x, x_814.y, x_814.z));
  let x_817 : f32 = u_xlat30;
  u_xlat30 = clamp(x_817, 0.0f, 1.0f);
  let x_819 : f32 = u_xlat30;
  u_xlat30 = (-(x_819) + 1.0f);
  let x_822 : f32 = u_xlat30;
  let x_823 : f32 = u_xlat30;
  u_xlat30 = (x_822 * x_823);
  let x_825 : f32 = u_xlat30;
  let x_826 : f32 = u_xlat30;
  u_xlat30 = (x_825 * x_826);
  let x_828 : f32 = u_xlat37;
  u_xlat42 = ((-(x_828) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_834 : f32 = u_xlat37;
  let x_835 : f32 = u_xlat42;
  u_xlat37 = (x_834 * x_835);
  let x_837 : f32 = u_xlat37;
  u_xlat37 = (x_837 * 6.0f);
  let x_848 : vec4<f32> = u_xlat7;
  let x_850 : f32 = u_xlat37;
  let x_851 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_848.x, x_848.y, x_848.z), x_850);
  u_xlat7 = x_851;
  let x_853 : f32 = u_xlat7.w;
  u_xlat37 = (x_853 + -1.0f);
  let x_856 : f32 = x_490.unity_SpecCube0_HDR.w;
  let x_857 : f32 = u_xlat37;
  u_xlat37 = ((x_856 * x_857) + 1.0f);
  let x_860 : f32 = u_xlat37;
  u_xlat37 = max(x_860, 0.0f);
  let x_862 : f32 = u_xlat37;
  u_xlat37 = log2(x_862);
  let x_864 : f32 = u_xlat37;
  let x_866 : f32 = x_490.unity_SpecCube0_HDR.y;
  u_xlat37 = (x_864 * x_866);
  let x_868 : f32 = u_xlat37;
  u_xlat37 = exp2(x_868);
  let x_870 : f32 = u_xlat37;
  let x_872 : f32 = x_490.unity_SpecCube0_HDR.x;
  u_xlat37 = (x_870 * x_872);
  let x_874 : vec4<f32> = u_xlat7;
  let x_876 : f32 = u_xlat37;
  let x_878 : vec3<f32> = (vec3<f32>(x_874.x, x_874.y, x_874.z) * vec3<f32>(x_876, x_876, x_876));
  let x_879 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_878.x, x_878.y, x_878.z, x_879.w);
  let x_883 : f32 = u_xlat38;
  let x_885 : f32 = u_xlat38;
  u_xlat8 = ((vec2<f32>(x_883, x_883) * vec2<f32>(x_885, x_885)) + vec2<f32>(-1.0f, 1.0f));
  let x_891 : f32 = u_xlat8.y;
  u_xlat37 = (1.0f / x_891);
  let x_894 : f32 = u_xlat3.x;
  u_xlat38 = (x_894 + -0.03999999910593032837f);
  let x_897 : f32 = u_xlat30;
  let x_898 : f32 = u_xlat38;
  u_xlat38 = ((x_897 * x_898) + 0.03999999910593032837f);
  let x_902 : f32 = u_xlat37;
  let x_903 : f32 = u_xlat38;
  u_xlat37 = (x_902 * x_903);
  let x_905 : f32 = u_xlat37;
  let x_907 : vec4<f32> = u_xlat7;
  let x_909 : vec3<f32> = (vec3<f32>(x_905, x_905, x_905) * vec3<f32>(x_907.x, x_907.y, x_907.z));
  let x_910 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_909.x, x_909.y, x_909.z, x_910.w);
  let x_912 : vec4<f32> = u_xlat5;
  let x_914 : vec3<f32> = u_xlat2;
  let x_916 : vec4<f32> = u_xlat7;
  let x_918 : vec3<f32> = ((vec3<f32>(x_912.x, x_912.y, x_912.z) * x_914) + vec3<f32>(x_916.x, x_916.y, x_916.z));
  let x_919 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_918.x, x_918.y, x_918.z, x_919.w);
  let x_921 : f32 = u_xlat36;
  let x_923 : f32 = x_490.unity_LightData.z;
  u_xlat36 = (x_921 * x_923);
  let x_925 : vec3<f32> = u_xlat15;
  let x_927 : vec4<f32> = x_53.x_MainLightPosition;
  u_xlat37 = dot(x_925, vec3<f32>(x_927.x, x_927.y, x_927.z));
  let x_930 : f32 = u_xlat37;
  u_xlat37 = clamp(x_930, 0.0f, 1.0f);
  let x_932 : f32 = u_xlat36;
  let x_933 : f32 = u_xlat37;
  u_xlat36 = (x_932 * x_933);
  let x_935 : f32 = u_xlat36;
  let x_938 : vec4<f32> = x_53.x_MainLightColor;
  let x_940 : vec3<f32> = (vec3<f32>(x_935, x_935, x_935) * vec3<f32>(x_938.x, x_938.y, x_938.z));
  let x_941 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_940.x, x_940.y, x_940.z, x_941.w);
  let x_944 : vec4<f32> = u_xlat4;
  let x_947 : vec4<f32> = x_53.x_MainLightPosition;
  u_xlat20 = (vec3<f32>(x_944.x, x_944.y, x_944.z) + vec3<f32>(x_947.x, x_947.y, x_947.z));
  let x_950 : vec3<f32> = u_xlat20;
  let x_951 : vec3<f32> = u_xlat20;
  u_xlat36 = dot(x_950, x_951);
  let x_953 : f32 = u_xlat36;
  u_xlat36 = max(x_953, 1.17549435e-38f);
  let x_956 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_956);
  let x_958 : f32 = u_xlat36;
  let x_960 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_958, x_958, x_958) * x_960);
  let x_962 : vec3<f32> = u_xlat15;
  let x_963 : vec3<f32> = u_xlat20;
  u_xlat36 = dot(x_962, x_963);
  let x_965 : f32 = u_xlat36;
  u_xlat36 = clamp(x_965, 0.0f, 1.0f);
  let x_968 : vec4<f32> = x_53.x_MainLightPosition;
  let x_970 : vec3<f32> = u_xlat20;
  u_xlat37 = dot(vec3<f32>(x_968.x, x_968.y, x_968.z), x_970);
  let x_972 : f32 = u_xlat37;
  u_xlat37 = clamp(x_972, 0.0f, 1.0f);
  let x_974 : f32 = u_xlat36;
  let x_975 : f32 = u_xlat36;
  u_xlat36 = (x_974 * x_975);
  let x_977 : f32 = u_xlat36;
  let x_979 : f32 = u_xlat8.x;
  u_xlat36 = ((x_977 * x_979) + 1.00001001358032226562f);
  let x_983 : f32 = u_xlat37;
  let x_984 : f32 = u_xlat37;
  u_xlat37 = (x_983 * x_984);
  let x_986 : f32 = u_xlat36;
  let x_987 : f32 = u_xlat36;
  u_xlat36 = (x_986 * x_987);
  let x_989 : f32 = u_xlat37;
  u_xlat37 = max(x_989, 0.10000000149011611938f);
  let x_992 : f32 = u_xlat36;
  let x_993 : f32 = u_xlat37;
  u_xlat36 = (x_992 * x_993);
  let x_995 : f32 = u_xlat41;
  let x_996 : f32 = u_xlat36;
  u_xlat36 = (x_995 * x_996);
  let x_998 : f32 = u_xlat40;
  let x_999 : f32 = u_xlat36;
  u_xlat36 = (x_998 / x_999);
  let x_1001 : f32 = u_xlat36;
  let x_1005 : vec3<f32> = u_xlat2;
  u_xlat20 = ((vec3<f32>(x_1001, x_1001, x_1001) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_1005);
  let x_1007 : vec4<f32> = u_xlat7;
  let x_1009 : vec3<f32> = u_xlat20;
  let x_1010 : vec3<f32> = (vec3<f32>(x_1007.x, x_1007.y, x_1007.z) * x_1009);
  let x_1011 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1010.x, x_1010.y, x_1010.z, x_1011.w);
  let x_1014 : f32 = x_53.x_AdditionalLightsCount.x;
  let x_1016 : f32 = x_490.unity_LightData.y;
  u_xlat36 = min(x_1014, x_1016);
  let x_1018 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_1018));
  let x_1022 : f32 = u_xlat18.x;
  let x_1025 : f32 = x_130.x_AdditionalShadowFadeParams.x;
  let x_1028 : f32 = x_130.x_AdditionalShadowFadeParams.y;
  u_xlat37 = ((x_1022 * x_1025) + x_1028);
  let x_1030 : f32 = u_xlat37;
  u_xlat37 = clamp(x_1030, 0.0f, 1.0f);
  u_xlat18.x = 0.0f;
  u_xlat18.y = 0.0f;
  u_xlat18.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1042 : u32 = u_xlatu_loop_1;
    let x_1043 : u32 = u_xlatu36;
    if ((x_1042 < x_1043)) {
    } else {
      break;
    }
    let x_1046 : u32 = u_xlatu_loop_1;
    u_xlatu3 = (x_1046 >> 2u);
    let x_1049 : u32 = u_xlatu_loop_1;
    u_xlati43 = bitcast<i32>((x_1049 & 3u));
    let x_1052 : u32 = u_xlatu3;
    let x_1055 : vec4<f32> = x_490.unity_LightIndices[bitcast<i32>(x_1052)];
    let x_1065 : i32 = u_xlati43;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1070 : vec4<u32> = indexable[x_1065];
    u_xlat3.x = dot(x_1055, bitcast<vec4<f32>>(x_1070));
    let x_1076 : f32 = u_xlat3.x;
    u_xlati3 = i32(x_1076);
    let x_1078 : vec3<f32> = vs_INTERP8;
    let x_1089 : i32 = u_xlati3;
    let x_1091 : vec4<f32> = x_1088.x_AdditionalLightsPosition[x_1089];
    let x_1094 : i32 = u_xlati3;
    let x_1096 : vec4<f32> = x_1088.x_AdditionalLightsPosition[x_1094];
    u_xlat20 = ((-(x_1078) * vec3<f32>(x_1091.w, x_1091.w, x_1091.w)) + vec3<f32>(x_1096.x, x_1096.y, x_1096.z));
    let x_1100 : vec3<f32> = u_xlat20;
    let x_1101 : vec3<f32> = u_xlat20;
    u_xlat43 = dot(x_1100, x_1101);
    let x_1103 : f32 = u_xlat43;
    u_xlat43 = max(x_1103, 0.00006103515625f);
    let x_1107 : f32 = u_xlat43;
    u_xlat9 = inverseSqrt(x_1107);
    let x_1110 : vec3<f32> = u_xlat20;
    let x_1111 : f32 = u_xlat9;
    u_xlat21 = (x_1110 * vec3<f32>(x_1111, x_1111, x_1111));
    let x_1115 : f32 = u_xlat43;
    u_xlat10.x = (1.0f / x_1115);
    let x_1118 : f32 = u_xlat43;
    let x_1119 : i32 = u_xlati3;
    let x_1121 : f32 = x_1088.x_AdditionalLightsAttenuation[x_1119].x;
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
    let x_1135 : f32 = u_xlat10.x;
    u_xlat43 = (x_1133 * x_1135);
    let x_1137 : i32 = u_xlati3;
    let x_1139 : vec4<f32> = x_1088.x_AdditionalLightsSpotDir[x_1137];
    let x_1141 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(vec3<f32>(x_1139.x, x_1139.y, x_1139.z), x_1141);
    let x_1145 : f32 = u_xlat10.x;
    let x_1146 : i32 = u_xlati3;
    let x_1148 : f32 = x_1088.x_AdditionalLightsAttenuation[x_1146].z;
    let x_1150 : i32 = u_xlati3;
    let x_1152 : f32 = x_1088.x_AdditionalLightsAttenuation[x_1150].w;
    u_xlat10.x = ((x_1145 * x_1148) + x_1152);
    let x_1156 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1156, 0.0f, 1.0f);
    let x_1160 : f32 = u_xlat10.x;
    let x_1162 : f32 = u_xlat10.x;
    u_xlat10.x = (x_1160 * x_1162);
    let x_1165 : f32 = u_xlat43;
    let x_1167 : f32 = u_xlat10.x;
    u_xlat43 = (x_1165 * x_1167);
    let x_1171 : i32 = u_xlati3;
    let x_1173 : f32 = x_130.x_AdditionalShadowParams[x_1171].w;
    u_xlati10 = i32(x_1173);
    let x_1176 : i32 = u_xlati10;
    u_xlatb22.x = (x_1176 >= 0i);
    let x_1180 : bool = u_xlatb22.x;
    if (x_1180) {
      let x_1184 : i32 = u_xlati3;
      let x_1186 : f32 = x_130.x_AdditionalShadowParams[x_1184].z;
      u_xlatb22.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1186, x_1186, x_1186, x_1186))));
      let x_1192 : bool = u_xlatb22.x;
      if (x_1192) {
        let x_1195 : vec3<f32> = u_xlat21;
        let x_1198 : vec3<f32> = u_xlat21;
        let x_1201 : vec4<bool> = (abs(vec4<f32>(x_1195.z, x_1195.z, x_1195.y, x_1195.y)) >= abs(vec4<f32>(x_1198.x, x_1198.y, x_1198.x, x_1198.x)));
        u_xlatb22 = vec3<bool>(x_1201.x, x_1201.y, x_1201.z);
        let x_1204 : bool = u_xlatb22.y;
        let x_1206 : bool = u_xlatb22.x;
        u_xlatb22.x = (x_1204 & x_1206);
        let x_1210 : vec3<f32> = u_xlat21;
        let x_1213 : vec4<bool> = (-(vec4<f32>(x_1210.z, x_1210.y, x_1210.x, x_1210.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_1213.x, x_1213.y, x_1213.z);
        let x_1217 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1217);
        let x_1222 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1222);
        let x_1227 : bool = u_xlatb11.z;
        u_xlat34 = select(0.0f, 1.0f, x_1227);
        let x_1230 : bool = u_xlatb22.z;
        if (x_1230) {
          let x_1235 : f32 = u_xlat11.y;
          x_1231 = x_1235;
        } else {
          let x_1237 : f32 = u_xlat34;
          x_1231 = x_1237;
        }
        let x_1238 : f32 = x_1231;
        u_xlat34 = x_1238;
        let x_1241 : bool = u_xlatb22.x;
        if (x_1241) {
          let x_1246 : f32 = u_xlat11.x;
          x_1242 = x_1246;
        } else {
          let x_1248 : f32 = u_xlat34;
          x_1242 = x_1248;
        }
        let x_1249 : f32 = x_1242;
        u_xlat22 = x_1249;
        let x_1250 : i32 = u_xlati3;
        let x_1252 : f32 = x_130.x_AdditionalShadowParams[x_1250].w;
        u_xlat34 = trunc(x_1252);
        let x_1254 : f32 = u_xlat22;
        let x_1255 : f32 = u_xlat34;
        u_xlat22 = (x_1254 + x_1255);
        let x_1257 : f32 = u_xlat22;
        u_xlati10 = i32(x_1257);
      }
      let x_1259 : i32 = u_xlati10;
      u_xlati10 = (x_1259 << bitcast<u32>(2i));
      let x_1261 : vec3<f32> = vs_INTERP8;
      let x_1264 : i32 = u_xlati10;
      let x_1267 : i32 = u_xlati10;
      let x_1271 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[((x_1264 + 1i) / 4i)][((x_1267 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1261.y, x_1261.y, x_1261.y, x_1261.y) * x_1271);
      let x_1273 : i32 = u_xlati10;
      let x_1275 : i32 = u_xlati10;
      let x_1278 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[(x_1273 / 4i)][(x_1275 % 4i)];
      let x_1279 : vec3<f32> = vs_INTERP8;
      let x_1282 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1278 * vec4<f32>(x_1279.x, x_1279.x, x_1279.x, x_1279.x)) + x_1282);
      let x_1284 : i32 = u_xlati10;
      let x_1287 : i32 = u_xlati10;
      let x_1291 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[((x_1284 + 2i) / 4i)][((x_1287 + 2i) % 4i)];
      let x_1292 : vec3<f32> = vs_INTERP8;
      let x_1295 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1291 * vec4<f32>(x_1292.z, x_1292.z, x_1292.z, x_1292.z)) + x_1295);
      let x_1297 : vec4<f32> = u_xlat11;
      let x_1298 : i32 = u_xlati10;
      let x_1301 : i32 = u_xlati10;
      let x_1305 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[((x_1298 + 3i) / 4i)][((x_1301 + 3i) % 4i)];
      u_xlat10 = (x_1297 + x_1305);
      let x_1307 : vec4<f32> = u_xlat10;
      let x_1309 : vec4<f32> = u_xlat10;
      let x_1311 : vec3<f32> = (vec3<f32>(x_1307.x, x_1307.y, x_1307.z) / vec3<f32>(x_1309.w, x_1309.w, x_1309.w));
      let x_1312 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1311.x, x_1311.y, x_1311.z, x_1312.w);
      let x_1315 : vec4<f32> = u_xlat10;
      let x_1316 : vec2<f32> = vec2<f32>(x_1315.x, x_1315.y);
      let x_1318 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1316.x, x_1316.y, x_1318);
      let x_1326 : vec3<f32> = txVec1;
      let x_1328 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1326.xy, x_1326.z);
      u_xlat10.x = x_1328;
      let x_1330 : i32 = u_xlati3;
      let x_1332 : f32 = x_130.x_AdditionalShadowParams[x_1330].x;
      u_xlat22 = (1.0f + -(x_1332));
      let x_1336 : f32 = u_xlat10.x;
      let x_1337 : i32 = u_xlati3;
      let x_1339 : f32 = x_130.x_AdditionalShadowParams[x_1337].x;
      let x_1341 : f32 = u_xlat22;
      u_xlat10.x = ((x_1336 * x_1339) + x_1341);
      let x_1345 : f32 = u_xlat10.z;
      u_xlatb22.x = (0.0f >= x_1345);
      let x_1350 : f32 = u_xlat10.z;
      u_xlatb34 = (x_1350 >= 1.0f);
      let x_1352 : bool = u_xlatb34;
      let x_1354 : bool = u_xlatb22.x;
      u_xlatb22.x = (x_1352 | x_1354);
      let x_1358 : bool = u_xlatb22.x;
      if (x_1358) {
        x_1359 = 1.0f;
      } else {
        let x_1364 : f32 = u_xlat10.x;
        x_1359 = x_1364;
      }
      let x_1365 : f32 = x_1359;
      u_xlat10.x = x_1365;
    } else {
      u_xlat10.x = 1.0f;
    }
    let x_1370 : f32 = u_xlat10.x;
    u_xlat22 = (-(x_1370) + 1.0f);
    let x_1373 : f32 = u_xlat37;
    let x_1374 : f32 = u_xlat22;
    let x_1377 : f32 = u_xlat10.x;
    u_xlat10.x = ((x_1373 * x_1374) + x_1377);
    let x_1380 : f32 = u_xlat43;
    let x_1382 : f32 = u_xlat10.x;
    u_xlat43 = (x_1380 * x_1382);
    let x_1384 : vec3<f32> = u_xlat15;
    let x_1385 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(x_1384, x_1385);
    let x_1389 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1389, 0.0f, 1.0f);
    let x_1392 : f32 = u_xlat43;
    let x_1394 : f32 = u_xlat10.x;
    u_xlat43 = (x_1392 * x_1394);
    let x_1396 : f32 = u_xlat43;
    let x_1398 : i32 = u_xlati3;
    let x_1400 : vec4<f32> = x_1088.x_AdditionalLightsColor[x_1398];
    let x_1402 : vec3<f32> = (vec3<f32>(x_1396, x_1396, x_1396) * vec3<f32>(x_1400.x, x_1400.y, x_1400.z));
    let x_1403 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1402.x, x_1402.y, x_1402.z, x_1403.w);
    let x_1405 : vec3<f32> = u_xlat20;
    let x_1406 : f32 = u_xlat9;
    let x_1409 : vec4<f32> = u_xlat4;
    u_xlat20 = ((x_1405 * vec3<f32>(x_1406, x_1406, x_1406)) + vec3<f32>(x_1409.x, x_1409.y, x_1409.z));
    let x_1412 : vec3<f32> = u_xlat20;
    let x_1413 : vec3<f32> = u_xlat20;
    u_xlat3.x = dot(x_1412, x_1413);
    let x_1417 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_1417, 1.17549435e-38f);
    let x_1421 : f32 = u_xlat3.x;
    u_xlat3.x = inverseSqrt(x_1421);
    let x_1424 : vec4<f32> = u_xlat3;
    let x_1426 : vec3<f32> = u_xlat20;
    u_xlat20 = (vec3<f32>(x_1424.x, x_1424.x, x_1424.x) * x_1426);
    let x_1428 : vec3<f32> = u_xlat15;
    let x_1429 : vec3<f32> = u_xlat20;
    u_xlat3.x = dot(x_1428, x_1429);
    let x_1433 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_1433, 0.0f, 1.0f);
    let x_1436 : vec3<f32> = u_xlat21;
    let x_1437 : vec3<f32> = u_xlat20;
    u_xlat43 = dot(x_1436, x_1437);
    let x_1439 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1439, 0.0f, 1.0f);
    let x_1442 : f32 = u_xlat3.x;
    let x_1444 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1442 * x_1444);
    let x_1448 : f32 = u_xlat3.x;
    let x_1450 : f32 = u_xlat8.x;
    u_xlat3.x = ((x_1448 * x_1450) + 1.00001001358032226562f);
    let x_1454 : f32 = u_xlat43;
    let x_1455 : f32 = u_xlat43;
    u_xlat43 = (x_1454 * x_1455);
    let x_1458 : f32 = u_xlat3.x;
    let x_1460 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1458 * x_1460);
    let x_1463 : f32 = u_xlat43;
    u_xlat43 = max(x_1463, 0.10000000149011611938f);
    let x_1466 : f32 = u_xlat3.x;
    let x_1467 : f32 = u_xlat43;
    u_xlat3.x = (x_1466 * x_1467);
    let x_1470 : f32 = u_xlat41;
    let x_1472 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1470 * x_1472);
    let x_1475 : f32 = u_xlat40;
    let x_1477 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1475 / x_1477);
    let x_1480 : vec4<f32> = u_xlat3;
    let x_1483 : vec3<f32> = u_xlat2;
    u_xlat20 = ((vec3<f32>(x_1480.x, x_1480.x, x_1480.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_1483);
    let x_1485 : vec3<f32> = u_xlat20;
    let x_1486 : vec4<f32> = u_xlat10;
    let x_1489 : vec3<f32> = u_xlat18;
    u_xlat18 = ((x_1485 * vec3<f32>(x_1486.x, x_1486.y, x_1486.z)) + x_1489);

    continuing {
      let x_1491 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1491 + bitcast<u32>(1i));
    }
  }
  let x_1493 : vec4<f32> = u_xlat5;
  let x_1495 : vec3<f32> = u_xlat6;
  let x_1498 : vec4<f32> = u_xlat7;
  u_xlat2 = ((vec3<f32>(x_1493.x, x_1493.y, x_1493.z) * vec3<f32>(x_1495.x, x_1495.x, x_1495.x)) + vec3<f32>(x_1498.x, x_1498.y, x_1498.z));
  let x_1501 : vec3<f32> = u_xlat18;
  let x_1502 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1501 + x_1502);
  let x_1504 : vec4<f32> = vs_INTERP6;
  let x_1506 : vec3<f32> = u_xlat0;
  let x_1508 : vec3<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_1504.w, x_1504.w, x_1504.w) * x_1506) + x_1508);
  let x_1511 : f32 = u_xlat13.x;
  let x_1513 : f32 = u_xlat13.x;
  u_xlat36 = (x_1511 * -(x_1513));
  let x_1516 : f32 = u_xlat36;
  u_xlat36 = exp2(x_1516);
  let x_1518 : vec3<f32> = u_xlat0;
  let x_1521 : vec4<f32> = x_53.unity_FogColor;
  u_xlat0 = (x_1518 + -(vec3<f32>(x_1521.x, x_1521.y, x_1521.z)));
  let x_1527 : f32 = u_xlat36;
  let x_1529 : vec3<f32> = u_xlat0;
  let x_1532 : vec4<f32> = x_53.unity_FogColor;
  let x_1534 : vec3<f32> = ((vec3<f32>(x_1527, x_1527, x_1527) * x_1529) + vec3<f32>(x_1532.x, x_1532.y, x_1532.z));
  let x_1535 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1534.x, x_1534.y, x_1534.z, x_1535.w);
  let x_1537 : bool = u_xlatb25;
  if (x_1537) {
    let x_1542 : f32 = u_xlat1.x;
    x_1538 = x_1542;
  } else {
    x_1538 = 1.0f;
  }
  let x_1544 : f32 = x_1538;
  SV_Target0.w = x_1544;
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


