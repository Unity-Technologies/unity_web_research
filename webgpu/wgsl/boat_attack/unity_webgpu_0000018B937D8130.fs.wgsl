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

alias Arr_4 = array<mat4x4<f32>, 32u>;

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
  x_AdditionalLightsWorldToShadow : Arr_4,
}

alias Arr_5 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_5,
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

alias Arr_6 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_7 = array<strided_arr, 32u>;

alias Arr_8 = array<strided_arr, 32u>;

struct LightCookies {
  /* @offset(0) */
  x_MainLightWorldToLight : mat4x4<f32>,
  /* @offset(64) */
  x_AdditionalLightsCookieEnableBits : f32,
  /* @offset(68) */
  x_MainLightCookieTextureFormat : f32,
  /* @offset(72) */
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
  /* @offset(80) */
  x_AdditionalLightsWorldToLights : Arr_4,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_3,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
}

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

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
  x_AdditionalLightsLayerMasks : Arr_8,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_INTERP9 : vec3<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(7) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(14) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_53 : PGlobals;

var<private> u_xlat2 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_65 : UnityPerMaterial;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(8) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat42 : f32;

var<private> u_xlat17 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

var<private> vs_INTERP8 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_130 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu42 : u32;

var<private> u_xlati42 : i32;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat44 : f32;

var<private> u_xlatb44 : bool;

var<private> u_xlatb1 : bool;

var<private> u_xlat15 : vec3<f32>;

var<private> u_xlat29 : f32;

var<private> u_xlat43 : f32;

var<private> u_xlatb29 : bool;

var<private> u_xlatb15 : vec3<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_490 : UnityPerDraw;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat46 : f32;

var<private> u_xlat47 : f32;

var<private> u_xlat20 : vec3<f32>;

var<private> u_xlat34 : f32;

var<private> u_xlatb20 : vec2<bool>;

@group(1) @binding(4) var<uniform> x_776 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat49 : f32;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu6 : u32;

var<private> u_xlati35 : i32;

var<private> u_xlati6 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_1235 : AdditionalLights;

var<private> u_xlat35 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat50 : f32;

var<private> u_xlati50 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat52 : f32;

var<private> u_xlat51 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb52 : bool;

var<private> u_xlati51 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlat25 : vec3<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu3 : u32;

var<private> u_xlatb6 : bool;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_402 : f32;
  var x_451 : f32;
  var x_599 : f32;
  var x_612 : f32;
  var x_624 : f32;
  var x_859 : f32;
  var x_870 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1365 : f32;
  var x_1375 : f32;
  var txVec1 : vec3<f32>;
  var x_1805 : f32;
  var x_1818 : f32;
  var x_1876 : f32;
  var x_1887 : vec3<f32>;
  var x_2045 : f32;
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
  u_xlat42 = dot(x_94, x_95);
  let x_97 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_97);
  let x_100 : f32 = u_xlat42;
  let x_102 : vec4<f32> = u_xlat4;
  u_xlat17 = (vec3<f32>(x_100, x_100, x_100) * vec3<f32>(x_102.x, x_102.y, x_102.z));
  let x_109 : f32 = vs_INTERP6.y;
  u_xlat42 = (x_109 * 200.0f);
  let x_112 : f32 = u_xlat42;
  u_xlat42 = min(x_112, 1.0f);
  let x_114 : f32 = u_xlat42;
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
  u_xlat42 = dot(x_243, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_248 : f32 = u_xlat42;
  u_xlat42 = (-(x_248) + 4.0f);
  let x_253 : f32 = u_xlat42;
  u_xlatu42 = u32(x_253);
  let x_257 : u32 = u_xlatu42;
  u_xlati42 = (bitcast<i32>(x_257) << bitcast<u32>(2i));
  let x_260 : vec3<f32> = vs_INTERP8;
  let x_262 : i32 = u_xlati42;
  let x_265 : i32 = u_xlati42;
  let x_269 : vec4<f32> = x_130.x_MainLightWorldToShadow[((x_262 + 1i) / 4i)][((x_265 + 1i) % 4i)];
  let x_271 : vec3<f32> = (vec3<f32>(x_260.y, x_260.y, x_260.y) * vec3<f32>(x_269.x, x_269.y, x_269.z));
  let x_272 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_271.x, x_271.y, x_271.z, x_272.w);
  let x_274 : i32 = u_xlati42;
  let x_276 : i32 = u_xlati42;
  let x_279 : vec4<f32> = x_130.x_MainLightWorldToShadow[(x_274 / 4i)][(x_276 % 4i)];
  let x_281 : vec3<f32> = vs_INTERP8;
  let x_284 : vec4<f32> = u_xlat4;
  let x_286 : vec3<f32> = ((vec3<f32>(x_279.x, x_279.y, x_279.z) * vec3<f32>(x_281.x, x_281.x, x_281.x)) + vec3<f32>(x_284.x, x_284.y, x_284.z));
  let x_287 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_286.x, x_286.y, x_286.z, x_287.w);
  let x_289 : i32 = u_xlati42;
  let x_292 : i32 = u_xlati42;
  let x_296 : vec4<f32> = x_130.x_MainLightWorldToShadow[((x_289 + 2i) / 4i)][((x_292 + 2i) % 4i)];
  let x_298 : vec3<f32> = vs_INTERP8;
  let x_301 : vec4<f32> = u_xlat4;
  let x_303 : vec3<f32> = ((vec3<f32>(x_296.x, x_296.y, x_296.z) * vec3<f32>(x_298.z, x_298.z, x_298.z)) + vec3<f32>(x_301.x, x_301.y, x_301.z));
  let x_304 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
  let x_306 : vec4<f32> = u_xlat4;
  let x_308 : i32 = u_xlati42;
  let x_311 : i32 = u_xlati42;
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
  u_xlat42 = x_339;
  let x_343 : f32 = x_130.x_MainLightShadowParams.x;
  u_xlat44 = (-(x_343) + 1.0f);
  let x_346 : f32 = u_xlat42;
  let x_348 : f32 = x_130.x_MainLightShadowParams.x;
  let x_350 : f32 = u_xlat44;
  u_xlat42 = ((x_346 * x_348) + x_350);
  let x_354 : f32 = u_xlat4.z;
  u_xlatb44 = (0.0f >= x_354);
  let x_357 : f32 = u_xlat4.z;
  u_xlatb4.x = (x_357 >= 1.0f);
  let x_360 : bool = u_xlatb44;
  let x_362 : bool = u_xlatb4.x;
  u_xlatb44 = (x_360 | x_362);
  let x_364 : bool = u_xlatb44;
  let x_365 : f32 = u_xlat42;
  u_xlat42 = select(x_365, 1.0f, x_364);
  let x_367 : vec3<f32> = u_xlat0;
  let x_369 : vec4<f32> = x_53.x_MainLightPosition;
  u_xlat0.x = dot(x_367, -(vec3<f32>(x_369.x, x_369.y, x_369.z)));
  let x_375 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_375, 0.0f, 1.0f);
  let x_378 : f32 = u_xlat42;
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
  u_xlat15.x = (x_412 + -0.40000000596046447754f);
  let x_418 : f32 = u_xlat1.w;
  u_xlat29 = dpdxCoarse(x_418);
  let x_422 : f32 = u_xlat1.w;
  u_xlat43 = dpdyCoarse(x_422);
  let x_424 : f32 = u_xlat43;
  let x_426 : f32 = u_xlat29;
  u_xlat29 = (abs(x_424) + abs(x_426));
  let x_429 : f32 = u_xlat29;
  u_xlat29 = max(x_429, 0.00009999999747378752f);
  let x_433 : f32 = u_xlat15.x;
  let x_434 : f32 = u_xlat29;
  u_xlat15.x = (x_433 / x_434);
  let x_438 : f32 = u_xlat15.x;
  u_xlat15.x = (x_438 + 0.5f);
  let x_443 : f32 = u_xlat15.x;
  u_xlat15.x = clamp(x_443, 0.0f, 1.0f);
  let x_448 : f32 = x_53.x_AlphaToMaskAvailable;
  u_xlatb29 = !((x_448 == 0.0f));
  let x_450 : bool = u_xlatb29;
  if (x_450) {
    let x_455 : f32 = u_xlat15.x;
    x_451 = x_455;
  } else {
    let x_458 : f32 = u_xlat1.x;
    x_451 = x_458;
  }
  let x_459 : f32 = x_451;
  u_xlat1.x = x_459;
  let x_462 : f32 = u_xlat1.x;
  u_xlat15.x = (x_462 + -0.00009999999747378752f);
  let x_470 : f32 = u_xlat15.x;
  u_xlatb15.x = (x_470 < 0.0f);
  let x_474 : bool = u_xlatb15.x;
  if (((select(0i, 1i, x_474) * -1i) != 0i)) {
    discard;
  }
  let x_484 : f32 = vs_INTERP4.w;
  u_xlatb15.x = (0.0f < x_484);
  let x_492 : f32 = x_490.unity_WorldTransformParams.w;
  u_xlatb15.z = (x_492 >= 0.0f);
  let x_496 : bool = u_xlatb15.x;
  u_xlat15.x = select(-1.0f, 1.0f, x_496);
  let x_500 : bool = u_xlatb15.z;
  u_xlat15.z = select(-1.0f, 1.0f, x_500);
  let x_504 : f32 = u_xlat15.z;
  let x_506 : f32 = u_xlat15.x;
  u_xlat15.x = (x_504 * x_506);
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
  let x_527 : vec3<f32> = u_xlat15;
  let x_529 : vec4<f32> = u_xlat4;
  let x_531 : vec3<f32> = (vec3<f32>(x_527.x, x_527.x, x_527.x) * vec3<f32>(x_529.x, x_529.y, x_529.z));
  let x_532 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_531.x, x_531.y, x_531.z, x_532.w);
  let x_534 : vec3<f32> = u_xlat17;
  let x_536 : vec4<f32> = u_xlat4;
  let x_538 : vec3<f32> = (vec3<f32>(x_534.y, x_534.y, x_534.y) * vec3<f32>(x_536.x, x_536.y, x_536.z));
  let x_539 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_538.x, x_538.y, x_538.z, x_539.w);
  let x_541 : vec3<f32> = u_xlat17;
  let x_543 : vec4<f32> = vs_INTERP4;
  let x_546 : vec4<f32> = u_xlat4;
  let x_548 : vec3<f32> = ((vec3<f32>(x_541.x, x_541.x, x_541.x) * vec3<f32>(x_543.x, x_543.y, x_543.z)) + vec3<f32>(x_546.x, x_546.y, x_546.z));
  let x_549 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
  let x_551 : vec3<f32> = u_xlat17;
  let x_553 : vec3<f32> = vs_INTERP9;
  let x_555 : vec4<f32> = u_xlat4;
  u_xlat17 = ((vec3<f32>(x_551.z, x_551.z, x_551.z) * x_553) + vec3<f32>(x_555.x, x_555.y, x_555.z));
  let x_558 : vec3<f32> = u_xlat17;
  let x_559 : vec3<f32> = u_xlat17;
  u_xlat15.x = dot(x_558, x_559);
  let x_563 : f32 = u_xlat15.x;
  u_xlat15.x = inverseSqrt(x_563);
  let x_566 : vec3<f32> = u_xlat15;
  let x_568 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_566.x, x_566.x, x_566.x) * x_568);
  let x_572 : f32 = x_53.unity_OrthoParams.w;
  u_xlatb15.x = (x_572 == 0.0f);
  let x_575 : vec3<f32> = vs_INTERP8;
  let x_579 : vec3<f32> = x_53.x_WorldSpaceCameraPos;
  let x_580 : vec3<f32> = (-(x_575) + x_579);
  let x_581 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
  let x_583 : vec4<f32> = u_xlat4;
  let x_585 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(vec3<f32>(x_583.x, x_583.y, x_583.z), vec3<f32>(x_585.x, x_585.y, x_585.z));
  let x_588 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_588);
  let x_590 : f32 = u_xlat43;
  let x_592 : vec4<f32> = u_xlat4;
  let x_594 : vec3<f32> = (vec3<f32>(x_590, x_590, x_590) * vec3<f32>(x_592.x, x_592.y, x_592.z));
  let x_595 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_594.x, x_594.y, x_594.z, x_595.w);
  let x_598 : bool = u_xlatb15.x;
  if (x_598) {
    let x_603 : f32 = u_xlat4.x;
    x_599 = x_603;
  } else {
    let x_607 : f32 = x_53.unity_MatrixV[0i].z;
    x_599 = x_607;
  }
  let x_608 : f32 = x_599;
  u_xlat5.x = x_608;
  let x_611 : bool = u_xlatb15.x;
  if (x_611) {
    let x_616 : f32 = u_xlat4.y;
    x_612 = x_616;
  } else {
    let x_619 : f32 = x_53.unity_MatrixV[1i].z;
    x_612 = x_619;
  }
  let x_620 : f32 = x_612;
  u_xlat5.y = x_620;
  let x_623 : bool = u_xlatb15.x;
  if (x_623) {
    let x_628 : f32 = u_xlat4.z;
    x_624 = x_628;
  } else {
    let x_631 : f32 = x_53.unity_MatrixV[2i].z;
    x_624 = x_631;
  }
  let x_632 : f32 = x_624;
  u_xlat5.z = x_632;
  let x_641 : vec2<f32> = vs_INTERP0;
  let x_643 : f32 = x_53.x_GlobalMipBias.x;
  let x_644 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_641, x_643);
  u_xlat4 = x_644;
  let x_649 : vec2<f32> = vs_INTERP0;
  let x_651 : f32 = x_53.x_GlobalMipBias.x;
  let x_652 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_649, x_651);
  u_xlat6 = vec3<f32>(x_652.x, x_652.y, x_652.z);
  let x_654 : vec4<f32> = u_xlat4;
  let x_658 : vec3<f32> = (vec3<f32>(x_654.x, x_654.y, x_654.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_659 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_658.x, x_658.y, x_658.z, x_659.w);
  let x_661 : vec3<f32> = u_xlat17;
  let x_662 : vec4<f32> = u_xlat4;
  u_xlat15.x = dot(x_661, vec3<f32>(x_662.x, x_662.y, x_662.z));
  let x_667 : f32 = u_xlat15.x;
  u_xlat15.x = (x_667 + 0.5f);
  let x_670 : vec3<f32> = u_xlat15;
  let x_672 : vec3<f32> = u_xlat6;
  let x_673 : vec3<f32> = (vec3<f32>(x_670.x, x_670.x, x_670.x) * x_672);
  let x_674 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_673.x, x_673.y, x_673.z, x_674.w);
  let x_677 : f32 = u_xlat4.w;
  u_xlat15.x = max(x_677, 0.00009999999747378752f);
  let x_680 : vec4<f32> = u_xlat4;
  let x_682 : vec3<f32> = u_xlat15;
  let x_684 : vec3<f32> = (vec3<f32>(x_680.x, x_680.y, x_680.z) / vec3<f32>(x_682.x, x_682.x, x_682.x));
  let x_685 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_684.x, x_684.y, x_684.z, x_685.w);
  let x_688 : f32 = u_xlat3.x;
  u_xlat3.x = x_688;
  let x_691 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_691, 0.0f, 1.0f);
  let x_695 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_695, 1.0f);
  let x_698 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_698 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_703 : f32 = u_xlat3.x;
  u_xlat15.x = (-(x_703) + 1.0f);
  let x_708 : f32 = u_xlat15.x;
  let x_710 : f32 = u_xlat15.x;
  u_xlat43 = (x_708 * x_710);
  let x_712 : f32 = u_xlat43;
  u_xlat43 = max(x_712, 0.0078125f);
  let x_715 : f32 = u_xlat43;
  let x_716 : f32 = u_xlat43;
  u_xlat44 = (x_715 * x_716);
  let x_719 : f32 = u_xlat3.x;
  u_xlat3.x = (x_719 + 0.04000002145767211914f);
  let x_724 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_724, 1.0f);
  let x_728 : f32 = u_xlat43;
  u_xlat46 = ((x_728 * 4.0f) + 2.0f);
  let x_733 : f32 = vs_INTERP6.w;
  u_xlat47 = min(x_733, 1.0f);
  let x_735 : vec3<f32> = vs_INTERP8;
  let x_737 : vec3<f32> = x_53.x_WorldSpaceCameraPos;
  u_xlat6 = (x_735 + -(x_737));
  let x_740 : vec3<f32> = u_xlat6;
  let x_741 : vec3<f32> = u_xlat6;
  u_xlat6.x = dot(x_740, x_741);
  let x_746 : f32 = u_xlat6.x;
  let x_748 : f32 = x_130.x_MainLightShadowParams.z;
  let x_751 : f32 = x_130.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_746 * x_748) + x_751);
  let x_755 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_755, 0.0f, 1.0f);
  let x_759 : f32 = u_xlat42;
  u_xlat34 = (-(x_759) + 1.0f);
  let x_763 : f32 = u_xlat20.x;
  let x_764 : f32 = u_xlat34;
  let x_766 : f32 = u_xlat42;
  u_xlat42 = ((x_763 * x_764) + x_766);
  let x_778 : f32 = x_776.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_778 == -1.0f));
  let x_782 : bool = u_xlatb20.x;
  if (x_782) {
    let x_785 : vec3<f32> = vs_INTERP8;
    let x_788 : vec4<f32> = x_776.x_MainLightWorldToLight[1i];
    let x_790 : vec2<f32> = (vec2<f32>(x_785.y, x_785.y) * vec2<f32>(x_788.x, x_788.y));
    let x_791 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_790.x, x_790.y, x_791.z);
    let x_794 : vec4<f32> = x_776.x_MainLightWorldToLight[0i];
    let x_796 : vec3<f32> = vs_INTERP8;
    let x_799 : vec3<f32> = u_xlat20;
    let x_801 : vec2<f32> = ((vec2<f32>(x_794.x, x_794.y) * vec2<f32>(x_796.x, x_796.x)) + vec2<f32>(x_799.x, x_799.y));
    let x_802 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_801.x, x_801.y, x_802.z);
    let x_805 : vec4<f32> = x_776.x_MainLightWorldToLight[2i];
    let x_807 : vec3<f32> = vs_INTERP8;
    let x_810 : vec3<f32> = u_xlat20;
    let x_812 : vec2<f32> = ((vec2<f32>(x_805.x, x_805.y) * vec2<f32>(x_807.z, x_807.z)) + vec2<f32>(x_810.x, x_810.y));
    let x_813 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_812.x, x_812.y, x_813.z);
    let x_815 : vec3<f32> = u_xlat20;
    let x_818 : vec4<f32> = x_776.x_MainLightWorldToLight[3i];
    let x_820 : vec2<f32> = (vec2<f32>(x_815.x, x_815.y) + vec2<f32>(x_818.x, x_818.y));
    let x_821 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_820.x, x_820.y, x_821.z);
    let x_823 : vec3<f32> = u_xlat20;
    let x_827 : vec2<f32> = ((vec2<f32>(x_823.x, x_823.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_828 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_827.x, x_827.y, x_828.z);
    let x_835 : vec3<f32> = u_xlat20;
    let x_838 : f32 = x_53.x_GlobalMipBias.x;
    let x_839 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_835.x, x_835.y), x_838);
    u_xlat7 = x_839;
    let x_841 : f32 = x_776.x_MainLightCookieTextureFormat;
    let x_843 : f32 = x_776.x_MainLightCookieTextureFormat;
    let x_845 : f32 = x_776.x_MainLightCookieTextureFormat;
    let x_847 : f32 = x_776.x_MainLightCookieTextureFormat;
    let x_848 : vec4<f32> = vec4<f32>(x_841, x_843, x_845, x_847);
    let x_855 : vec4<bool> = (vec4<f32>(x_848.x, x_848.y, x_848.z, x_848.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_855.x, x_855.y);
    let x_858 : bool = u_xlatb20.y;
    if (x_858) {
      let x_863 : f32 = u_xlat7.w;
      x_859 = x_863;
    } else {
      let x_866 : f32 = u_xlat7.x;
      x_859 = x_866;
    }
    let x_867 : f32 = x_859;
    u_xlat34 = x_867;
    let x_869 : bool = u_xlatb20.x;
    if (x_869) {
      let x_873 : vec4<f32> = u_xlat7;
      x_870 = vec3<f32>(x_873.x, x_873.y, x_873.z);
    } else {
      let x_876 : f32 = u_xlat34;
      x_870 = vec3<f32>(x_876, x_876, x_876);
    }
    let x_878 : vec3<f32> = x_870;
    u_xlat20 = x_878;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_883 : vec3<f32> = u_xlat20;
  let x_885 : vec4<f32> = x_53.x_MainLightColor;
  u_xlat20 = (x_883 * vec3<f32>(x_885.x, x_885.y, x_885.z));
  let x_888 : vec4<f32> = u_xlat5;
  let x_891 : vec3<f32> = u_xlat17;
  u_xlat7.x = dot(-(vec3<f32>(x_888.x, x_888.y, x_888.z)), x_891);
  let x_895 : f32 = u_xlat7.x;
  let x_897 : f32 = u_xlat7.x;
  u_xlat7.x = (x_895 + x_897);
  let x_900 : vec3<f32> = u_xlat17;
  let x_901 : vec4<f32> = u_xlat7;
  let x_905 : vec4<f32> = u_xlat5;
  let x_908 : vec3<f32> = ((x_900 * -(vec3<f32>(x_901.x, x_901.x, x_901.x))) + -(vec3<f32>(x_905.x, x_905.y, x_905.z)));
  let x_909 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_908.x, x_908.y, x_908.z, x_909.w);
  let x_912 : vec3<f32> = u_xlat17;
  let x_913 : vec4<f32> = u_xlat5;
  u_xlat49 = dot(x_912, vec3<f32>(x_913.x, x_913.y, x_913.z));
  let x_916 : f32 = u_xlat49;
  u_xlat49 = clamp(x_916, 0.0f, 1.0f);
  let x_918 : f32 = u_xlat49;
  u_xlat49 = (-(x_918) + 1.0f);
  let x_921 : f32 = u_xlat49;
  let x_922 : f32 = u_xlat49;
  u_xlat49 = (x_921 * x_922);
  let x_924 : f32 = u_xlat49;
  let x_925 : f32 = u_xlat49;
  u_xlat49 = (x_924 * x_925);
  let x_929 : f32 = u_xlat15.x;
  u_xlat8.x = ((-(x_929) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_937 : f32 = u_xlat15.x;
  let x_939 : f32 = u_xlat8.x;
  u_xlat15.x = (x_937 * x_939);
  let x_943 : f32 = u_xlat15.x;
  u_xlat15.x = (x_943 * 6.0f);
  let x_955 : vec4<f32> = u_xlat7;
  let x_958 : f32 = u_xlat15.x;
  let x_959 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_955.x, x_955.y, x_955.z), x_958);
  u_xlat8 = x_959;
  let x_961 : f32 = u_xlat8.w;
  u_xlat15.x = (x_961 + -1.0f);
  let x_965 : f32 = x_490.unity_SpecCube0_HDR.w;
  let x_967 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_965 * x_967) + 1.0f);
  let x_972 : f32 = u_xlat15.x;
  u_xlat15.x = max(x_972, 0.0f);
  let x_976 : f32 = u_xlat15.x;
  u_xlat15.x = log2(x_976);
  let x_980 : f32 = u_xlat15.x;
  let x_982 : f32 = x_490.unity_SpecCube0_HDR.y;
  u_xlat15.x = (x_980 * x_982);
  let x_986 : f32 = u_xlat15.x;
  u_xlat15.x = exp2(x_986);
  let x_990 : f32 = u_xlat15.x;
  let x_992 : f32 = x_490.unity_SpecCube0_HDR.x;
  u_xlat15.x = (x_990 * x_992);
  let x_995 : vec4<f32> = u_xlat8;
  let x_997 : vec3<f32> = u_xlat15;
  let x_999 : vec3<f32> = (vec3<f32>(x_995.x, x_995.y, x_995.z) * vec3<f32>(x_997.x, x_997.x, x_997.x));
  let x_1000 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_999.x, x_999.y, x_999.z, x_1000.w);
  let x_1002 : f32 = u_xlat43;
  let x_1004 : f32 = u_xlat43;
  let x_1008 : vec2<f32> = ((vec2<f32>(x_1002, x_1002) * vec2<f32>(x_1004, x_1004)) + vec2<f32>(-1.0f, 1.0f));
  let x_1009 : vec3<f32> = u_xlat15;
  u_xlat15 = vec3<f32>(x_1008.x, x_1009.y, x_1008.y);
  let x_1012 : f32 = u_xlat15.z;
  u_xlat43 = (1.0f / x_1012);
  let x_1015 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1015 + -0.03999999910593032837f);
  let x_1019 : f32 = u_xlat49;
  let x_1021 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1019 * x_1021) + 0.03999999910593032837f);
  let x_1026 : f32 = u_xlat43;
  let x_1028 : f32 = u_xlat3.x;
  u_xlat43 = (x_1026 * x_1028);
  let x_1030 : f32 = u_xlat43;
  let x_1032 : vec4<f32> = u_xlat7;
  let x_1034 : vec3<f32> = (vec3<f32>(x_1030, x_1030, x_1030) * vec3<f32>(x_1032.x, x_1032.y, x_1032.z));
  let x_1035 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1034.x, x_1034.y, x_1034.z, x_1035.w);
  let x_1037 : vec4<f32> = u_xlat4;
  let x_1039 : vec3<f32> = u_xlat2;
  let x_1041 : vec4<f32> = u_xlat7;
  let x_1043 : vec3<f32> = ((vec3<f32>(x_1037.x, x_1037.y, x_1037.z) * x_1039) + vec3<f32>(x_1041.x, x_1041.y, x_1041.z));
  let x_1044 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1043.x, x_1043.y, x_1043.z, x_1044.w);
  let x_1046 : f32 = u_xlat42;
  let x_1048 : f32 = x_490.unity_LightData.z;
  u_xlat42 = (x_1046 * x_1048);
  let x_1050 : vec3<f32> = u_xlat17;
  let x_1052 : vec4<f32> = x_53.x_MainLightPosition;
  u_xlat43 = dot(x_1050, vec3<f32>(x_1052.x, x_1052.y, x_1052.z));
  let x_1055 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1055, 0.0f, 1.0f);
  let x_1057 : f32 = u_xlat42;
  let x_1058 : f32 = u_xlat43;
  u_xlat42 = (x_1057 * x_1058);
  let x_1060 : f32 = u_xlat42;
  let x_1062 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1060, x_1060, x_1060) * x_1062);
  let x_1064 : vec4<f32> = u_xlat5;
  let x_1067 : vec4<f32> = x_53.x_MainLightPosition;
  let x_1069 : vec3<f32> = (vec3<f32>(x_1064.x, x_1064.y, x_1064.z) + vec3<f32>(x_1067.x, x_1067.y, x_1067.z));
  let x_1070 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1069.x, x_1069.y, x_1069.z, x_1070.w);
  let x_1072 : vec4<f32> = u_xlat7;
  let x_1074 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_1072.x, x_1072.y, x_1072.z), vec3<f32>(x_1074.x, x_1074.y, x_1074.z));
  let x_1077 : f32 = u_xlat42;
  u_xlat42 = max(x_1077, 1.17549435e-38f);
  let x_1080 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_1080);
  let x_1082 : f32 = u_xlat42;
  let x_1084 : vec4<f32> = u_xlat7;
  let x_1086 : vec3<f32> = (vec3<f32>(x_1082, x_1082, x_1082) * vec3<f32>(x_1084.x, x_1084.y, x_1084.z));
  let x_1087 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1086.x, x_1086.y, x_1086.z, x_1087.w);
  let x_1089 : vec3<f32> = u_xlat17;
  let x_1090 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(x_1089, vec3<f32>(x_1090.x, x_1090.y, x_1090.z));
  let x_1093 : f32 = u_xlat42;
  u_xlat42 = clamp(x_1093, 0.0f, 1.0f);
  let x_1096 : vec4<f32> = x_53.x_MainLightPosition;
  let x_1098 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec3<f32>(x_1096.x, x_1096.y, x_1096.z), vec3<f32>(x_1098.x, x_1098.y, x_1098.z));
  let x_1101 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1101, 0.0f, 1.0f);
  let x_1103 : f32 = u_xlat42;
  let x_1104 : f32 = u_xlat42;
  u_xlat42 = (x_1103 * x_1104);
  let x_1106 : f32 = u_xlat42;
  let x_1108 : f32 = u_xlat15.x;
  u_xlat42 = ((x_1106 * x_1108) + 1.00001001358032226562f);
  let x_1112 : f32 = u_xlat43;
  let x_1113 : f32 = u_xlat43;
  u_xlat43 = (x_1112 * x_1113);
  let x_1115 : f32 = u_xlat42;
  let x_1116 : f32 = u_xlat42;
  u_xlat42 = (x_1115 * x_1116);
  let x_1118 : f32 = u_xlat43;
  u_xlat43 = max(x_1118, 0.10000000149011611938f);
  let x_1121 : f32 = u_xlat42;
  let x_1122 : f32 = u_xlat43;
  u_xlat42 = (x_1121 * x_1122);
  let x_1124 : f32 = u_xlat46;
  let x_1125 : f32 = u_xlat42;
  u_xlat42 = (x_1124 * x_1125);
  let x_1127 : f32 = u_xlat44;
  let x_1128 : f32 = u_xlat42;
  u_xlat42 = (x_1127 / x_1128);
  let x_1130 : f32 = u_xlat42;
  let x_1134 : vec3<f32> = u_xlat2;
  let x_1135 : vec3<f32> = ((vec3<f32>(x_1130, x_1130, x_1130) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_1134);
  let x_1136 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1135.x, x_1135.y, x_1135.z, x_1136.w);
  let x_1138 : vec3<f32> = u_xlat20;
  let x_1139 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_1138 * vec3<f32>(x_1139.x, x_1139.y, x_1139.z));
  let x_1143 : f32 = x_53.x_AdditionalLightsCount.x;
  let x_1145 : f32 = x_490.unity_LightData.y;
  u_xlat42 = min(x_1143, x_1145);
  let x_1147 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_1147));
  let x_1151 : f32 = u_xlat6.x;
  let x_1154 : f32 = x_130.x_AdditionalShadowFadeParams.x;
  let x_1157 : f32 = x_130.x_AdditionalShadowFadeParams.y;
  u_xlat43 = ((x_1151 * x_1154) + x_1157);
  let x_1159 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1159, 0.0f, 1.0f);
  let x_1163 : f32 = x_776.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1165 : f32 = x_776.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1167 : f32 = x_776.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1169 : f32 = x_776.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1170 : vec4<f32> = vec4<f32>(x_1163, x_1165, x_1167, x_1169);
  let x_1176 : vec4<bool> = (vec4<f32>(x_1170.x, x_1170.y, x_1170.z, x_1170.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1176.x, x_1176.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1188 : u32 = u_xlatu_loop_1;
    let x_1189 : u32 = u_xlatu42;
    if ((x_1188 < x_1189)) {
    } else {
      break;
    }
    let x_1192 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_1192 >> 2u);
    let x_1195 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_1195 & 3u));
    let x_1198 : u32 = u_xlatu6;
    let x_1201 : vec4<f32> = x_490.unity_LightIndices[bitcast<i32>(x_1198)];
    let x_1211 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1216 : vec4<u32> = indexable[x_1211];
    u_xlat6.x = dot(x_1201, bitcast<vec4<f32>>(x_1216));
    let x_1222 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_1222);
    let x_1225 : vec3<f32> = vs_INTERP8;
    let x_1236 : i32 = u_xlati6;
    let x_1238 : vec4<f32> = x_1235.x_AdditionalLightsPosition[x_1236];
    let x_1241 : i32 = u_xlati6;
    let x_1243 : vec4<f32> = x_1235.x_AdditionalLightsPosition[x_1241];
    u_xlat9 = ((-(x_1225) * vec3<f32>(x_1238.w, x_1238.w, x_1238.w)) + vec3<f32>(x_1243.x, x_1243.y, x_1243.z));
    let x_1247 : vec3<f32> = u_xlat9;
    let x_1248 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1247, x_1248);
    let x_1250 : f32 = u_xlat35;
    u_xlat35 = max(x_1250, 0.00006103515625f);
    let x_1253 : f32 = u_xlat35;
    u_xlat49 = inverseSqrt(x_1253);
    let x_1256 : f32 = u_xlat49;
    let x_1258 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1256, x_1256, x_1256) * x_1258);
    let x_1261 : f32 = u_xlat35;
    u_xlat50 = (1.0f / x_1261);
    let x_1263 : f32 = u_xlat35;
    let x_1264 : i32 = u_xlati6;
    let x_1266 : f32 = x_1235.x_AdditionalLightsAttenuation[x_1264].x;
    u_xlat35 = (x_1263 * x_1266);
    let x_1268 : f32 = u_xlat35;
    let x_1270 : f32 = u_xlat35;
    u_xlat35 = ((-(x_1268) * x_1270) + 1.0f);
    let x_1273 : f32 = u_xlat35;
    u_xlat35 = max(x_1273, 0.0f);
    let x_1275 : f32 = u_xlat35;
    let x_1276 : f32 = u_xlat35;
    u_xlat35 = (x_1275 * x_1276);
    let x_1278 : f32 = u_xlat35;
    let x_1279 : f32 = u_xlat50;
    u_xlat35 = (x_1278 * x_1279);
    let x_1281 : i32 = u_xlati6;
    let x_1283 : vec4<f32> = x_1235.x_AdditionalLightsSpotDir[x_1281];
    let x_1285 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1283.x, x_1283.y, x_1283.z), x_1285);
    let x_1287 : f32 = u_xlat50;
    let x_1288 : i32 = u_xlati6;
    let x_1290 : f32 = x_1235.x_AdditionalLightsAttenuation[x_1288].z;
    let x_1292 : i32 = u_xlati6;
    let x_1294 : f32 = x_1235.x_AdditionalLightsAttenuation[x_1292].w;
    u_xlat50 = ((x_1287 * x_1290) + x_1294);
    let x_1296 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1296, 0.0f, 1.0f);
    let x_1298 : f32 = u_xlat50;
    let x_1299 : f32 = u_xlat50;
    u_xlat50 = (x_1298 * x_1299);
    let x_1301 : f32 = u_xlat35;
    let x_1302 : f32 = u_xlat50;
    u_xlat35 = (x_1301 * x_1302);
    let x_1306 : i32 = u_xlati6;
    let x_1308 : f32 = x_130.x_AdditionalShadowParams[x_1306].w;
    u_xlati50 = i32(x_1308);
    let x_1311 : i32 = u_xlati50;
    u_xlatb51 = (x_1311 >= 0i);
    let x_1313 : bool = u_xlatb51;
    if (x_1313) {
      let x_1317 : i32 = u_xlati6;
      let x_1319 : f32 = x_130.x_AdditionalShadowParams[x_1317].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1319, x_1319, x_1319, x_1319))));
      let x_1323 : bool = u_xlatb51;
      if (x_1323) {
        let x_1327 : vec3<f32> = u_xlat10;
        let x_1330 : vec3<f32> = u_xlat10;
        let x_1333 : vec4<bool> = (abs(vec4<f32>(x_1327.z, x_1327.z, x_1327.y, x_1327.z)) >= abs(vec4<f32>(x_1330.x, x_1330.y, x_1330.x, x_1330.x)));
        let x_1334 : vec3<bool> = vec3<bool>(x_1333.x, x_1333.y, x_1333.z);
        let x_1335 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1334.x, x_1334.y, x_1334.z, x_1335.w);
        let x_1338 : bool = u_xlatb11.y;
        let x_1340 : bool = u_xlatb11.x;
        u_xlatb51 = (x_1338 & x_1340);
        let x_1342 : vec3<f32> = u_xlat10;
        let x_1345 : vec4<bool> = (-(vec4<f32>(x_1342.z, x_1342.y, x_1342.z, x_1342.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1346 : vec3<bool> = vec3<bool>(x_1345.x, x_1345.y, x_1345.w);
        let x_1347 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1346.x, x_1346.y, x_1347.z, x_1346.z);
        let x_1351 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1351);
        let x_1356 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1356);
        let x_1361 : bool = u_xlatb11.w;
        u_xlat52 = select(0.0f, 1.0f, x_1361);
        let x_1364 : bool = u_xlatb11.z;
        if (x_1364) {
          let x_1369 : f32 = u_xlat11.y;
          x_1365 = x_1369;
        } else {
          let x_1371 : f32 = u_xlat52;
          x_1365 = x_1371;
        }
        let x_1372 : f32 = x_1365;
        u_xlat52 = x_1372;
        let x_1374 : bool = u_xlatb51;
        if (x_1374) {
          let x_1379 : f32 = u_xlat11.x;
          x_1375 = x_1379;
        } else {
          let x_1381 : f32 = u_xlat52;
          x_1375 = x_1381;
        }
        let x_1382 : f32 = x_1375;
        u_xlat51 = x_1382;
        let x_1383 : i32 = u_xlati6;
        let x_1385 : f32 = x_130.x_AdditionalShadowParams[x_1383].w;
        u_xlat52 = trunc(x_1385);
        let x_1387 : f32 = u_xlat51;
        let x_1388 : f32 = u_xlat52;
        u_xlat51 = (x_1387 + x_1388);
        let x_1390 : f32 = u_xlat51;
        u_xlati50 = i32(x_1390);
      }
      let x_1392 : i32 = u_xlati50;
      u_xlati50 = (x_1392 << bitcast<u32>(2i));
      let x_1394 : vec3<f32> = vs_INTERP8;
      let x_1397 : i32 = u_xlati50;
      let x_1400 : i32 = u_xlati50;
      let x_1404 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[((x_1397 + 1i) / 4i)][((x_1400 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1394.y, x_1394.y, x_1394.y, x_1394.y) * x_1404);
      let x_1406 : i32 = u_xlati50;
      let x_1408 : i32 = u_xlati50;
      let x_1411 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[(x_1406 / 4i)][(x_1408 % 4i)];
      let x_1412 : vec3<f32> = vs_INTERP8;
      let x_1415 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1411 * vec4<f32>(x_1412.x, x_1412.x, x_1412.x, x_1412.x)) + x_1415);
      let x_1417 : i32 = u_xlati50;
      let x_1420 : i32 = u_xlati50;
      let x_1424 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[((x_1417 + 2i) / 4i)][((x_1420 + 2i) % 4i)];
      let x_1425 : vec3<f32> = vs_INTERP8;
      let x_1428 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1424 * vec4<f32>(x_1425.z, x_1425.z, x_1425.z, x_1425.z)) + x_1428);
      let x_1430 : vec4<f32> = u_xlat11;
      let x_1431 : i32 = u_xlati50;
      let x_1434 : i32 = u_xlati50;
      let x_1438 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[((x_1431 + 3i) / 4i)][((x_1434 + 3i) % 4i)];
      u_xlat11 = (x_1430 + x_1438);
      let x_1440 : vec4<f32> = u_xlat11;
      let x_1442 : vec4<f32> = u_xlat11;
      let x_1444 : vec3<f32> = (vec3<f32>(x_1440.x, x_1440.y, x_1440.z) / vec3<f32>(x_1442.w, x_1442.w, x_1442.w));
      let x_1445 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1444.x, x_1444.y, x_1444.z, x_1445.w);
      let x_1448 : vec4<f32> = u_xlat11;
      let x_1449 : vec2<f32> = vec2<f32>(x_1448.x, x_1448.y);
      let x_1451 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1449.x, x_1449.y, x_1451);
      let x_1459 : vec3<f32> = txVec1;
      let x_1461 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1459.xy, x_1459.z);
      u_xlat50 = x_1461;
      let x_1462 : i32 = u_xlati6;
      let x_1464 : f32 = x_130.x_AdditionalShadowParams[x_1462].x;
      u_xlat51 = (1.0f + -(x_1464));
      let x_1467 : f32 = u_xlat50;
      let x_1468 : i32 = u_xlati6;
      let x_1470 : f32 = x_130.x_AdditionalShadowParams[x_1468].x;
      let x_1472 : f32 = u_xlat51;
      u_xlat50 = ((x_1467 * x_1470) + x_1472);
      let x_1475 : f32 = u_xlat11.z;
      u_xlatb51 = (0.0f >= x_1475);
      let x_1479 : f32 = u_xlat11.z;
      u_xlatb52 = (x_1479 >= 1.0f);
      let x_1481 : bool = u_xlatb51;
      let x_1482 : bool = u_xlatb52;
      u_xlatb51 = (x_1481 | x_1482);
      let x_1484 : bool = u_xlatb51;
      let x_1485 : f32 = u_xlat50;
      u_xlat50 = select(x_1485, 1.0f, x_1484);
    } else {
      u_xlat50 = 1.0f;
    }
    let x_1488 : f32 = u_xlat50;
    u_xlat51 = (-(x_1488) + 1.0f);
    let x_1491 : f32 = u_xlat43;
    let x_1492 : f32 = u_xlat51;
    let x_1494 : f32 = u_xlat50;
    u_xlat50 = ((x_1491 * x_1492) + x_1494);
    let x_1497 : i32 = u_xlati6;
    u_xlati51 = (1i << bitcast<u32>((x_1497 & 31i)));
    let x_1501 : i32 = u_xlati51;
    let x_1504 : f32 = x_776.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_1501) & bitcast<u32>(x_1504)));
    let x_1508 : i32 = u_xlati51;
    if ((x_1508 != 0i)) {
      let x_1512 : i32 = u_xlati6;
      let x_1514 : f32 = x_776.x_AdditionalLightsLightTypes[x_1512].el;
      u_xlati51 = i32(x_1514);
      let x_1517 : i32 = u_xlati51;
      u_xlati52 = select(1i, 0i, (x_1517 != 0i));
      let x_1521 : i32 = u_xlati6;
      u_xlati11 = (x_1521 << bitcast<u32>(2i));
      let x_1523 : i32 = u_xlati52;
      if ((x_1523 != 0i)) {
        let x_1528 : vec3<f32> = vs_INTERP8;
        let x_1530 : i32 = u_xlati11;
        let x_1533 : i32 = u_xlati11;
        let x_1537 : vec4<f32> = x_776.x_AdditionalLightsWorldToLights[((x_1530 + 1i) / 4i)][((x_1533 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1528.y, x_1528.y, x_1528.y) * vec3<f32>(x_1537.x, x_1537.y, x_1537.w));
        let x_1540 : i32 = u_xlati11;
        let x_1542 : i32 = u_xlati11;
        let x_1545 : vec4<f32> = x_776.x_AdditionalLightsWorldToLights[(x_1540 / 4i)][(x_1542 % 4i)];
        let x_1547 : vec3<f32> = vs_INTERP8;
        let x_1550 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1545.x, x_1545.y, x_1545.w) * vec3<f32>(x_1547.x, x_1547.x, x_1547.x)) + x_1550);
        let x_1552 : i32 = u_xlati11;
        let x_1555 : i32 = u_xlati11;
        let x_1559 : vec4<f32> = x_776.x_AdditionalLightsWorldToLights[((x_1552 + 2i) / 4i)][((x_1555 + 2i) % 4i)];
        let x_1561 : vec3<f32> = vs_INTERP8;
        let x_1564 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1559.x, x_1559.y, x_1559.w) * vec3<f32>(x_1561.z, x_1561.z, x_1561.z)) + x_1564);
        let x_1566 : vec3<f32> = u_xlat25;
        let x_1567 : i32 = u_xlati11;
        let x_1570 : i32 = u_xlati11;
        let x_1574 : vec4<f32> = x_776.x_AdditionalLightsWorldToLights[((x_1567 + 3i) / 4i)][((x_1570 + 3i) % 4i)];
        u_xlat25 = (x_1566 + vec3<f32>(x_1574.x, x_1574.y, x_1574.w));
        let x_1577 : vec3<f32> = u_xlat25;
        let x_1579 : vec3<f32> = u_xlat25;
        let x_1581 : vec2<f32> = (vec2<f32>(x_1577.x, x_1577.y) / vec2<f32>(x_1579.z, x_1579.z));
        let x_1582 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1581.x, x_1581.y, x_1582.z);
        let x_1584 : vec3<f32> = u_xlat25;
        let x_1587 : vec2<f32> = ((vec2<f32>(x_1584.x, x_1584.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1588 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1587.x, x_1587.y, x_1588.z);
        let x_1590 : vec3<f32> = u_xlat25;
        let x_1594 : vec2<f32> = clamp(vec2<f32>(x_1590.x, x_1590.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1595 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1594.x, x_1594.y, x_1595.z);
        let x_1597 : i32 = u_xlati6;
        let x_1599 : vec4<f32> = x_776.x_AdditionalLightsCookieAtlasUVRects[x_1597];
        let x_1601 : vec3<f32> = u_xlat25;
        let x_1604 : i32 = u_xlati6;
        let x_1606 : vec4<f32> = x_776.x_AdditionalLightsCookieAtlasUVRects[x_1604];
        let x_1608 : vec2<f32> = ((vec2<f32>(x_1599.x, x_1599.y) * vec2<f32>(x_1601.x, x_1601.y)) + vec2<f32>(x_1606.z, x_1606.w));
        let x_1609 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1608.x, x_1608.y, x_1609.z);
      } else {
        let x_1612 : i32 = u_xlati51;
        u_xlatb51 = (x_1612 == 1i);
        let x_1614 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_1614);
        let x_1616 : i32 = u_xlati51;
        if ((x_1616 != 0i)) {
          let x_1621 : vec3<f32> = vs_INTERP8;
          let x_1623 : i32 = u_xlati11;
          let x_1626 : i32 = u_xlati11;
          let x_1630 : vec4<f32> = x_776.x_AdditionalLightsWorldToLights[((x_1623 + 1i) / 4i)][((x_1626 + 1i) % 4i)];
          let x_1632 : vec2<f32> = (vec2<f32>(x_1621.y, x_1621.y) * vec2<f32>(x_1630.x, x_1630.y));
          let x_1633 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1632.x, x_1632.y, x_1633.z, x_1633.w);
          let x_1635 : i32 = u_xlati11;
          let x_1637 : i32 = u_xlati11;
          let x_1640 : vec4<f32> = x_776.x_AdditionalLightsWorldToLights[(x_1635 / 4i)][(x_1637 % 4i)];
          let x_1642 : vec3<f32> = vs_INTERP8;
          let x_1645 : vec4<f32> = u_xlat12;
          let x_1647 : vec2<f32> = ((vec2<f32>(x_1640.x, x_1640.y) * vec2<f32>(x_1642.x, x_1642.x)) + vec2<f32>(x_1645.x, x_1645.y));
          let x_1648 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1647.x, x_1647.y, x_1648.z, x_1648.w);
          let x_1650 : i32 = u_xlati11;
          let x_1653 : i32 = u_xlati11;
          let x_1657 : vec4<f32> = x_776.x_AdditionalLightsWorldToLights[((x_1650 + 2i) / 4i)][((x_1653 + 2i) % 4i)];
          let x_1659 : vec3<f32> = vs_INTERP8;
          let x_1662 : vec4<f32> = u_xlat12;
          let x_1664 : vec2<f32> = ((vec2<f32>(x_1657.x, x_1657.y) * vec2<f32>(x_1659.z, x_1659.z)) + vec2<f32>(x_1662.x, x_1662.y));
          let x_1665 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1664.x, x_1664.y, x_1665.z, x_1665.w);
          let x_1667 : vec4<f32> = u_xlat12;
          let x_1669 : i32 = u_xlati11;
          let x_1672 : i32 = u_xlati11;
          let x_1676 : vec4<f32> = x_776.x_AdditionalLightsWorldToLights[((x_1669 + 3i) / 4i)][((x_1672 + 3i) % 4i)];
          let x_1678 : vec2<f32> = (vec2<f32>(x_1667.x, x_1667.y) + vec2<f32>(x_1676.x, x_1676.y));
          let x_1679 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1678.x, x_1678.y, x_1679.z, x_1679.w);
          let x_1681 : vec4<f32> = u_xlat12;
          let x_1684 : vec2<f32> = ((vec2<f32>(x_1681.x, x_1681.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1685 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1684.x, x_1684.y, x_1685.z, x_1685.w);
          let x_1687 : vec4<f32> = u_xlat12;
          let x_1689 : vec2<f32> = fract(vec2<f32>(x_1687.x, x_1687.y));
          let x_1690 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1689.x, x_1689.y, x_1690.z, x_1690.w);
          let x_1692 : i32 = u_xlati6;
          let x_1694 : vec4<f32> = x_776.x_AdditionalLightsCookieAtlasUVRects[x_1692];
          let x_1696 : vec4<f32> = u_xlat12;
          let x_1699 : i32 = u_xlati6;
          let x_1701 : vec4<f32> = x_776.x_AdditionalLightsCookieAtlasUVRects[x_1699];
          let x_1703 : vec2<f32> = ((vec2<f32>(x_1694.x, x_1694.y) * vec2<f32>(x_1696.x, x_1696.y)) + vec2<f32>(x_1701.z, x_1701.w));
          let x_1704 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1703.x, x_1703.y, x_1704.z);
        } else {
          let x_1707 : vec3<f32> = vs_INTERP8;
          let x_1709 : i32 = u_xlati11;
          let x_1712 : i32 = u_xlati11;
          let x_1716 : vec4<f32> = x_776.x_AdditionalLightsWorldToLights[((x_1709 + 1i) / 4i)][((x_1712 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1707.y, x_1707.y, x_1707.y, x_1707.y) * x_1716);
          let x_1718 : i32 = u_xlati11;
          let x_1720 : i32 = u_xlati11;
          let x_1723 : vec4<f32> = x_776.x_AdditionalLightsWorldToLights[(x_1718 / 4i)][(x_1720 % 4i)];
          let x_1724 : vec3<f32> = vs_INTERP8;
          let x_1727 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1723 * vec4<f32>(x_1724.x, x_1724.x, x_1724.x, x_1724.x)) + x_1727);
          let x_1729 : i32 = u_xlati11;
          let x_1732 : i32 = u_xlati11;
          let x_1736 : vec4<f32> = x_776.x_AdditionalLightsWorldToLights[((x_1729 + 2i) / 4i)][((x_1732 + 2i) % 4i)];
          let x_1737 : vec3<f32> = vs_INTERP8;
          let x_1740 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1736 * vec4<f32>(x_1737.z, x_1737.z, x_1737.z, x_1737.z)) + x_1740);
          let x_1742 : vec4<f32> = u_xlat12;
          let x_1743 : i32 = u_xlati11;
          let x_1746 : i32 = u_xlati11;
          let x_1750 : vec4<f32> = x_776.x_AdditionalLightsWorldToLights[((x_1743 + 3i) / 4i)][((x_1746 + 3i) % 4i)];
          u_xlat12 = (x_1742 + x_1750);
          let x_1752 : vec4<f32> = u_xlat12;
          let x_1754 : vec4<f32> = u_xlat12;
          let x_1756 : vec3<f32> = (vec3<f32>(x_1752.x, x_1752.y, x_1752.z) / vec3<f32>(x_1754.w, x_1754.w, x_1754.w));
          let x_1757 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1756.x, x_1756.y, x_1756.z, x_1757.w);
          let x_1759 : vec4<f32> = u_xlat12;
          let x_1761 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(vec3<f32>(x_1759.x, x_1759.y, x_1759.z), vec3<f32>(x_1761.x, x_1761.y, x_1761.z));
          let x_1764 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_1764);
          let x_1766 : f32 = u_xlat51;
          let x_1768 : vec4<f32> = u_xlat12;
          let x_1770 : vec3<f32> = (vec3<f32>(x_1766, x_1766, x_1766) * vec3<f32>(x_1768.x, x_1768.y, x_1768.z));
          let x_1771 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1770.x, x_1770.y, x_1770.z, x_1771.w);
          let x_1773 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(abs(vec3<f32>(x_1773.x, x_1773.y, x_1773.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1778 : f32 = u_xlat51;
          u_xlat51 = max(x_1778, 0.00000099999999747524f);
          let x_1781 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_1781);
          let x_1784 : f32 = u_xlat51;
          let x_1786 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1784, x_1784, x_1784) * vec3<f32>(x_1786.z, x_1786.x, x_1786.y));
          let x_1790 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1790);
          let x_1794 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1794, 0.0f, 1.0f);
          let x_1797 : vec3<f32> = u_xlat13;
          let x_1799 : vec4<bool> = (vec4<f32>(x_1797.y, x_1797.y, x_1797.y, x_1797.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1800 : vec2<bool> = vec2<bool>(x_1799.x, x_1799.w);
          let x_1801 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_1800.x, x_1801.y, x_1801.z, x_1800.y);
          let x_1804 : bool = u_xlatb11.x;
          if (x_1804) {
            let x_1809 : f32 = u_xlat13.x;
            x_1805 = x_1809;
          } else {
            let x_1812 : f32 = u_xlat13.x;
            x_1805 = -(x_1812);
          }
          let x_1814 : f32 = x_1805;
          u_xlat11.x = x_1814;
          let x_1817 : bool = u_xlatb11.w;
          if (x_1817) {
            let x_1822 : f32 = u_xlat13.x;
            x_1818 = x_1822;
          } else {
            let x_1825 : f32 = u_xlat13.x;
            x_1818 = -(x_1825);
          }
          let x_1827 : f32 = x_1818;
          u_xlat11.w = x_1827;
          let x_1829 : vec4<f32> = u_xlat12;
          let x_1831 : f32 = u_xlat51;
          let x_1834 : vec4<f32> = u_xlat11;
          let x_1836 : vec2<f32> = ((vec2<f32>(x_1829.x, x_1829.y) * vec2<f32>(x_1831, x_1831)) + vec2<f32>(x_1834.x, x_1834.w));
          let x_1837 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1836.x, x_1837.y, x_1837.z, x_1836.y);
          let x_1839 : vec4<f32> = u_xlat11;
          let x_1842 : vec2<f32> = ((vec2<f32>(x_1839.x, x_1839.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1843 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1842.x, x_1843.y, x_1843.z, x_1842.y);
          let x_1845 : vec4<f32> = u_xlat11;
          let x_1849 : vec2<f32> = clamp(vec2<f32>(x_1845.x, x_1845.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1850 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1849.x, x_1850.y, x_1850.z, x_1849.y);
          let x_1852 : i32 = u_xlati6;
          let x_1854 : vec4<f32> = x_776.x_AdditionalLightsCookieAtlasUVRects[x_1852];
          let x_1856 : vec4<f32> = u_xlat11;
          let x_1859 : i32 = u_xlati6;
          let x_1861 : vec4<f32> = x_776.x_AdditionalLightsCookieAtlasUVRects[x_1859];
          let x_1863 : vec2<f32> = ((vec2<f32>(x_1854.x, x_1854.y) * vec2<f32>(x_1856.x, x_1856.w)) + vec2<f32>(x_1861.z, x_1861.w));
          let x_1864 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1863.x, x_1863.y, x_1864.z);
        }
      }
      let x_1871 : vec3<f32> = u_xlat25;
      let x_1873 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1871.x, x_1871.y), 0.0f);
      u_xlat11 = x_1873;
      let x_1875 : bool = u_xlatb7.y;
      if (x_1875) {
        let x_1880 : f32 = u_xlat11.w;
        x_1876 = x_1880;
      } else {
        let x_1883 : f32 = u_xlat11.x;
        x_1876 = x_1883;
      }
      let x_1884 : f32 = x_1876;
      u_xlat51 = x_1884;
      let x_1886 : bool = u_xlatb7.x;
      if (x_1886) {
        let x_1890 : vec4<f32> = u_xlat11;
        x_1887 = vec3<f32>(x_1890.x, x_1890.y, x_1890.z);
      } else {
        let x_1893 : f32 = u_xlat51;
        x_1887 = vec3<f32>(x_1893, x_1893, x_1893);
      }
      let x_1895 : vec3<f32> = x_1887;
      let x_1896 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1895.x, x_1895.y, x_1895.z, x_1896.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1902 : vec4<f32> = u_xlat11;
    let x_1904 : i32 = u_xlati6;
    let x_1906 : vec4<f32> = x_1235.x_AdditionalLightsColor[x_1904];
    let x_1908 : vec3<f32> = (vec3<f32>(x_1902.x, x_1902.y, x_1902.z) * vec3<f32>(x_1906.x, x_1906.y, x_1906.z));
    let x_1909 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1908.x, x_1908.y, x_1908.z, x_1909.w);
    let x_1911 : f32 = u_xlat35;
    let x_1912 : f32 = u_xlat50;
    u_xlat6.x = (x_1911 * x_1912);
    let x_1915 : vec3<f32> = u_xlat17;
    let x_1916 : vec3<f32> = u_xlat10;
    u_xlat35 = dot(x_1915, x_1916);
    let x_1918 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1918, 0.0f, 1.0f);
    let x_1921 : f32 = u_xlat6.x;
    let x_1922 : f32 = u_xlat35;
    u_xlat6.x = (x_1921 * x_1922);
    let x_1925 : vec3<f32> = u_xlat6;
    let x_1927 : vec4<f32> = u_xlat11;
    let x_1929 : vec3<f32> = (vec3<f32>(x_1925.x, x_1925.x, x_1925.x) * vec3<f32>(x_1927.x, x_1927.y, x_1927.z));
    let x_1930 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1929.x, x_1929.y, x_1929.z, x_1930.w);
    let x_1932 : vec3<f32> = u_xlat9;
    let x_1933 : f32 = u_xlat49;
    let x_1936 : vec4<f32> = u_xlat5;
    u_xlat9 = ((x_1932 * vec3<f32>(x_1933, x_1933, x_1933)) + vec3<f32>(x_1936.x, x_1936.y, x_1936.z));
    let x_1939 : vec3<f32> = u_xlat9;
    let x_1940 : vec3<f32> = u_xlat9;
    u_xlat6.x = dot(x_1939, x_1940);
    let x_1944 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_1944, 1.17549435e-38f);
    let x_1948 : f32 = u_xlat6.x;
    u_xlat6.x = inverseSqrt(x_1948);
    let x_1951 : vec3<f32> = u_xlat6;
    let x_1953 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1951.x, x_1951.x, x_1951.x) * x_1953);
    let x_1955 : vec3<f32> = u_xlat17;
    let x_1956 : vec3<f32> = u_xlat9;
    u_xlat6.x = dot(x_1955, x_1956);
    let x_1960 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_1960, 0.0f, 1.0f);
    let x_1963 : vec3<f32> = u_xlat10;
    let x_1964 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1963, x_1964);
    let x_1966 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1966, 0.0f, 1.0f);
    let x_1969 : f32 = u_xlat6.x;
    let x_1971 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1969 * x_1971);
    let x_1975 : f32 = u_xlat6.x;
    let x_1977 : f32 = u_xlat15.x;
    u_xlat6.x = ((x_1975 * x_1977) + 1.00001001358032226562f);
    let x_1981 : f32 = u_xlat35;
    let x_1982 : f32 = u_xlat35;
    u_xlat35 = (x_1981 * x_1982);
    let x_1985 : f32 = u_xlat6.x;
    let x_1987 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1985 * x_1987);
    let x_1990 : f32 = u_xlat35;
    u_xlat35 = max(x_1990, 0.10000000149011611938f);
    let x_1993 : f32 = u_xlat6.x;
    let x_1994 : f32 = u_xlat35;
    u_xlat6.x = (x_1993 * x_1994);
    let x_1997 : f32 = u_xlat46;
    let x_1999 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1997 * x_1999);
    let x_2002 : f32 = u_xlat44;
    let x_2004 : f32 = u_xlat6.x;
    u_xlat6.x = (x_2002 / x_2004);
    let x_2007 : vec3<f32> = u_xlat6;
    let x_2010 : vec3<f32> = u_xlat2;
    u_xlat9 = ((vec3<f32>(x_2007.x, x_2007.x, x_2007.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_2010);
    let x_2012 : vec3<f32> = u_xlat9;
    let x_2013 : vec4<f32> = u_xlat11;
    let x_2016 : vec4<f32> = u_xlat8;
    let x_2018 : vec3<f32> = ((x_2012 * vec3<f32>(x_2013.x, x_2013.y, x_2013.z)) + vec3<f32>(x_2016.x, x_2016.y, x_2016.z));
    let x_2019 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2018.x, x_2018.y, x_2018.z, x_2019.w);

    continuing {
      let x_2021 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2021 + bitcast<u32>(1i));
    }
  }
  let x_2023 : vec4<f32> = u_xlat4;
  let x_2025 : f32 = u_xlat47;
  let x_2028 : vec3<f32> = u_xlat20;
  u_xlat2 = ((vec3<f32>(x_2023.x, x_2023.y, x_2023.z) * vec3<f32>(x_2025, x_2025, x_2025)) + x_2028);
  let x_2030 : vec4<f32> = u_xlat8;
  let x_2032 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_2030.x, x_2030.y, x_2030.z) + x_2032);
  let x_2036 : vec4<f32> = vs_INTERP6;
  let x_2038 : vec3<f32> = u_xlat0;
  let x_2040 : vec3<f32> = u_xlat2;
  let x_2041 : vec3<f32> = ((vec3<f32>(x_2036.w, x_2036.w, x_2036.w) * x_2038) + x_2040);
  let x_2042 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2041.x, x_2041.y, x_2041.z, x_2042.w);
  let x_2044 : bool = u_xlatb29;
  if (x_2044) {
    let x_2049 : f32 = u_xlat1.x;
    x_2045 = x_2049;
  } else {
    x_2045 = 1.0f;
  }
  let x_2051 : f32 = x_2045;
  SV_Target0.w = x_2051;
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


