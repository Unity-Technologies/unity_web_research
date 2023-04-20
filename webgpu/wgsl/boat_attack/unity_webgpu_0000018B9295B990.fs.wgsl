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

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat48 : f32;

var<private> u_xlatb34 : vec2<bool>;

@group(1) @binding(4) var<uniform> x_807 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat9 : vec2<f32>;

var<private> u_xlatb20 : vec2<bool>;

var<private> u_xlatu3 : u32;

var<private> u_xlati48 : i32;

var<private> u_xlati3 : i32;

var<private> u_xlat23 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_1248 : AdditionalLights;

var<private> u_xlat49 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat50 : f32;

var<private> u_xlati50 : i32;

var<private> u_xlatb52 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat53 : f32;

var<private> u_xlat25 : vec3<f32>;

var<private> u_xlat52 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlati52 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlati25 : i32;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlatb25 : vec3<bool>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb3 : bool;

var<private> u_xlatu44 : u32;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_402 : f32;
  var x_451 : f32;
  var x_609 : vec3<f32>;
  var x_875 : f32;
  var x_886 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1379 : f32;
  var x_1390 : f32;
  var txVec1 : vec3<f32>;
  var x_1835 : f32;
  var x_1848 : f32;
  var x_1906 : f32;
  var x_1917 : vec3<f32>;
  var x_2099 : f32;
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
  let x_599 : f32 = x_53.unity_MatrixV[0i].z;
  u_xlat5.x = x_599;
  let x_602 : f32 = x_53.unity_MatrixV[1i].z;
  u_xlat5.y = x_602;
  let x_605 : f32 = x_53.unity_MatrixV[2i].z;
  u_xlat5.z = x_605;
  let x_608 : bool = u_xlatb15.x;
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
  u_xlat15.x = (x_621 * x_623);
  let x_627 : f32 = x_53.unity_MatrixV[0i].z;
  let x_629 : f32 = vs_INTERP8.x;
  let x_632 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_627 * x_629) + x_632);
  let x_636 : f32 = x_53.unity_MatrixV[2i].z;
  let x_638 : f32 = vs_INTERP8.z;
  let x_641 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_636 * x_638) + x_641);
  let x_645 : f32 = u_xlat15.x;
  let x_647 : f32 = x_53.unity_MatrixV[3i].z;
  u_xlat15.x = (x_645 + x_647);
  let x_651 : f32 = u_xlat15.x;
  let x_655 : f32 = x_53.x_ProjectionParams.y;
  u_xlat15.x = (-(x_651) + -(x_655));
  let x_660 : f32 = u_xlat15.x;
  u_xlat15.x = max(x_660, 0.0f);
  let x_664 : f32 = u_xlat15.x;
  let x_666 : f32 = x_53.unity_FogParams.x;
  u_xlat15.x = (x_664 * x_666);
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
  let x_696 : vec3<f32> = u_xlat17;
  let x_697 : vec4<f32> = u_xlat5;
  u_xlat43 = dot(x_696, vec3<f32>(x_697.x, x_697.y, x_697.z));
  let x_700 : f32 = u_xlat43;
  u_xlat43 = (x_700 + 0.5f);
  let x_702 : f32 = u_xlat43;
  let x_704 : vec3<f32> = u_xlat6;
  let x_705 : vec3<f32> = (vec3<f32>(x_702, x_702, x_702) * x_704);
  let x_706 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_705.x, x_705.y, x_705.z, x_706.w);
  let x_709 : f32 = u_xlat5.w;
  u_xlat43 = max(x_709, 0.00009999999747378752f);
  let x_711 : vec4<f32> = u_xlat5;
  let x_713 : f32 = u_xlat43;
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
  u_xlat43 = (-(x_734) + 1.0f);
  let x_737 : f32 = u_xlat43;
  let x_738 : f32 = u_xlat43;
  u_xlat44 = (x_737 * x_738);
  let x_740 : f32 = u_xlat44;
  u_xlat44 = max(x_740, 0.0078125f);
  let x_744 : f32 = u_xlat44;
  let x_745 : f32 = u_xlat44;
  u_xlat46 = (x_744 * x_745);
  let x_748 : f32 = u_xlat3.x;
  u_xlat3.x = (x_748 + 0.04000002145767211914f);
  let x_753 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_753, 1.0f);
  let x_757 : f32 = u_xlat44;
  u_xlat47 = ((x_757 * 4.0f) + 2.0f);
  let x_761 : f32 = vs_INTERP6.w;
  u_xlat6.x = min(x_761, 1.0f);
  let x_765 : vec3<f32> = vs_INTERP8;
  let x_767 : vec3<f32> = x_53.x_WorldSpaceCameraPos;
  u_xlat20 = (x_765 + -(x_767));
  let x_770 : vec3<f32> = u_xlat20;
  let x_771 : vec3<f32> = u_xlat20;
  u_xlat20.x = dot(x_770, x_771);
  let x_777 : f32 = u_xlat20.x;
  let x_779 : f32 = x_130.x_MainLightShadowParams.z;
  let x_782 : f32 = x_130.x_MainLightShadowParams.w;
  u_xlat34.x = ((x_777 * x_779) + x_782);
  let x_786 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_786, 0.0f, 1.0f);
  let x_790 : f32 = u_xlat42;
  u_xlat48 = (-(x_790) + 1.0f);
  let x_794 : f32 = u_xlat34.x;
  let x_795 : f32 = u_xlat48;
  let x_797 : f32 = u_xlat42;
  u_xlat42 = ((x_794 * x_795) + x_797);
  let x_809 : f32 = x_807.x_MainLightCookieTextureFormat;
  u_xlatb34.x = !((x_809 == -1.0f));
  let x_813 : bool = u_xlatb34.x;
  if (x_813) {
    let x_816 : vec3<f32> = vs_INTERP8;
    let x_819 : vec4<f32> = x_807.x_MainLightWorldToLight[1i];
    u_xlat34 = (vec2<f32>(x_816.y, x_816.y) * vec2<f32>(x_819.x, x_819.y));
    let x_823 : vec4<f32> = x_807.x_MainLightWorldToLight[0i];
    let x_825 : vec3<f32> = vs_INTERP8;
    let x_828 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_823.x, x_823.y) * vec2<f32>(x_825.x, x_825.x)) + x_828);
    let x_831 : vec4<f32> = x_807.x_MainLightWorldToLight[2i];
    let x_833 : vec3<f32> = vs_INTERP8;
    let x_836 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_831.x, x_831.y) * vec2<f32>(x_833.z, x_833.z)) + x_836);
    let x_838 : vec2<f32> = u_xlat34;
    let x_840 : vec4<f32> = x_807.x_MainLightWorldToLight[3i];
    u_xlat34 = (x_838 + vec2<f32>(x_840.x, x_840.y));
    let x_843 : vec2<f32> = u_xlat34;
    u_xlat34 = ((x_843 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_852 : vec2<f32> = u_xlat34;
    let x_854 : f32 = x_53.x_GlobalMipBias.x;
    let x_855 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_852, x_854);
    u_xlat7 = x_855;
    let x_857 : f32 = x_807.x_MainLightCookieTextureFormat;
    let x_859 : f32 = x_807.x_MainLightCookieTextureFormat;
    let x_861 : f32 = x_807.x_MainLightCookieTextureFormat;
    let x_863 : f32 = x_807.x_MainLightCookieTextureFormat;
    let x_864 : vec4<f32> = vec4<f32>(x_857, x_859, x_861, x_863);
    let x_871 : vec4<bool> = (vec4<f32>(x_864.x, x_864.y, x_864.z, x_864.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb34 = vec2<bool>(x_871.x, x_871.y);
    let x_874 : bool = u_xlatb34.y;
    if (x_874) {
      let x_879 : f32 = u_xlat7.w;
      x_875 = x_879;
    } else {
      let x_882 : f32 = u_xlat7.x;
      x_875 = x_882;
    }
    let x_883 : f32 = x_875;
    u_xlat48 = x_883;
    let x_885 : bool = u_xlatb34.x;
    if (x_885) {
      let x_889 : vec4<f32> = u_xlat7;
      x_886 = vec3<f32>(x_889.x, x_889.y, x_889.z);
    } else {
      let x_892 : f32 = u_xlat48;
      x_886 = vec3<f32>(x_892, x_892, x_892);
    }
    let x_894 : vec3<f32> = x_886;
    let x_895 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_894.x, x_894.y, x_894.z, x_895.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_901 : vec4<f32> = u_xlat7;
  let x_904 : vec4<f32> = x_53.x_MainLightColor;
  let x_906 : vec3<f32> = (vec3<f32>(x_901.x, x_901.y, x_901.z) * vec3<f32>(x_904.x, x_904.y, x_904.z));
  let x_907 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_906.x, x_906.y, x_906.z, x_907.w);
  let x_909 : vec4<f32> = u_xlat4;
  let x_912 : vec3<f32> = u_xlat17;
  u_xlat34.x = dot(-(vec3<f32>(x_909.x, x_909.y, x_909.z)), x_912);
  let x_916 : f32 = u_xlat34.x;
  let x_918 : f32 = u_xlat34.x;
  u_xlat34.x = (x_916 + x_918);
  let x_922 : vec3<f32> = u_xlat17;
  let x_923 : vec2<f32> = u_xlat34;
  let x_927 : vec4<f32> = u_xlat4;
  let x_930 : vec3<f32> = ((x_922 * -(vec3<f32>(x_923.x, x_923.x, x_923.x))) + -(vec3<f32>(x_927.x, x_927.y, x_927.z)));
  let x_931 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_930.x, x_930.y, x_930.z, x_931.w);
  let x_933 : vec3<f32> = u_xlat17;
  let x_934 : vec4<f32> = u_xlat4;
  u_xlat34.x = dot(x_933, vec3<f32>(x_934.x, x_934.y, x_934.z));
  let x_939 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_939, 0.0f, 1.0f);
  let x_943 : f32 = u_xlat34.x;
  u_xlat34.x = (-(x_943) + 1.0f);
  let x_948 : f32 = u_xlat34.x;
  let x_950 : f32 = u_xlat34.x;
  u_xlat34.x = (x_948 * x_950);
  let x_954 : f32 = u_xlat34.x;
  let x_956 : f32 = u_xlat34.x;
  u_xlat34.x = (x_954 * x_956);
  let x_959 : f32 = u_xlat43;
  u_xlat48 = ((-(x_959) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_965 : f32 = u_xlat43;
  let x_966 : f32 = u_xlat48;
  u_xlat43 = (x_965 * x_966);
  let x_968 : f32 = u_xlat43;
  u_xlat43 = (x_968 * 6.0f);
  let x_979 : vec4<f32> = u_xlat8;
  let x_981 : f32 = u_xlat43;
  let x_982 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_979.x, x_979.y, x_979.z), x_981);
  u_xlat8 = x_982;
  let x_984 : f32 = u_xlat8.w;
  u_xlat43 = (x_984 + -1.0f);
  let x_987 : f32 = x_490.unity_SpecCube0_HDR.w;
  let x_988 : f32 = u_xlat43;
  u_xlat43 = ((x_987 * x_988) + 1.0f);
  let x_991 : f32 = u_xlat43;
  u_xlat43 = max(x_991, 0.0f);
  let x_993 : f32 = u_xlat43;
  u_xlat43 = log2(x_993);
  let x_995 : f32 = u_xlat43;
  let x_997 : f32 = x_490.unity_SpecCube0_HDR.y;
  u_xlat43 = (x_995 * x_997);
  let x_999 : f32 = u_xlat43;
  u_xlat43 = exp2(x_999);
  let x_1001 : f32 = u_xlat43;
  let x_1003 : f32 = x_490.unity_SpecCube0_HDR.x;
  u_xlat43 = (x_1001 * x_1003);
  let x_1005 : vec4<f32> = u_xlat8;
  let x_1007 : f32 = u_xlat43;
  let x_1009 : vec3<f32> = (vec3<f32>(x_1005.x, x_1005.y, x_1005.z) * vec3<f32>(x_1007, x_1007, x_1007));
  let x_1010 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1009.x, x_1009.y, x_1009.z, x_1010.w);
  let x_1013 : f32 = u_xlat44;
  let x_1015 : f32 = u_xlat44;
  u_xlat9 = ((vec2<f32>(x_1013, x_1013) * vec2<f32>(x_1015, x_1015)) + vec2<f32>(-1.0f, 1.0f));
  let x_1021 : f32 = u_xlat9.y;
  u_xlat43 = (1.0f / x_1021);
  let x_1024 : f32 = u_xlat3.x;
  u_xlat44 = (x_1024 + -0.03999999910593032837f);
  let x_1028 : f32 = u_xlat34.x;
  let x_1029 : f32 = u_xlat44;
  u_xlat44 = ((x_1028 * x_1029) + 0.03999999910593032837f);
  let x_1033 : f32 = u_xlat43;
  let x_1034 : f32 = u_xlat44;
  u_xlat43 = (x_1033 * x_1034);
  let x_1036 : f32 = u_xlat43;
  let x_1038 : vec4<f32> = u_xlat8;
  let x_1040 : vec3<f32> = (vec3<f32>(x_1036, x_1036, x_1036) * vec3<f32>(x_1038.x, x_1038.y, x_1038.z));
  let x_1041 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1040.x, x_1040.y, x_1040.z, x_1041.w);
  let x_1043 : vec4<f32> = u_xlat5;
  let x_1045 : vec3<f32> = u_xlat2;
  let x_1047 : vec4<f32> = u_xlat8;
  let x_1049 : vec3<f32> = ((vec3<f32>(x_1043.x, x_1043.y, x_1043.z) * x_1045) + vec3<f32>(x_1047.x, x_1047.y, x_1047.z));
  let x_1050 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1049.x, x_1049.y, x_1049.z, x_1050.w);
  let x_1052 : f32 = u_xlat42;
  let x_1054 : f32 = x_490.unity_LightData.z;
  u_xlat42 = (x_1052 * x_1054);
  let x_1056 : vec3<f32> = u_xlat17;
  let x_1058 : vec4<f32> = x_53.x_MainLightPosition;
  u_xlat43 = dot(x_1056, vec3<f32>(x_1058.x, x_1058.y, x_1058.z));
  let x_1061 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1061, 0.0f, 1.0f);
  let x_1063 : f32 = u_xlat42;
  let x_1064 : f32 = u_xlat43;
  u_xlat42 = (x_1063 * x_1064);
  let x_1066 : f32 = u_xlat42;
  let x_1068 : vec4<f32> = u_xlat7;
  let x_1070 : vec3<f32> = (vec3<f32>(x_1066, x_1066, x_1066) * vec3<f32>(x_1068.x, x_1068.y, x_1068.z));
  let x_1071 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1070.x, x_1070.y, x_1070.z, x_1071.w);
  let x_1073 : vec4<f32> = u_xlat4;
  let x_1076 : vec4<f32> = x_53.x_MainLightPosition;
  let x_1078 : vec3<f32> = (vec3<f32>(x_1073.x, x_1073.y, x_1073.z) + vec3<f32>(x_1076.x, x_1076.y, x_1076.z));
  let x_1079 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1078.x, x_1078.y, x_1078.z, x_1079.w);
  let x_1081 : vec4<f32> = u_xlat8;
  let x_1083 : vec4<f32> = u_xlat8;
  u_xlat42 = dot(vec3<f32>(x_1081.x, x_1081.y, x_1081.z), vec3<f32>(x_1083.x, x_1083.y, x_1083.z));
  let x_1086 : f32 = u_xlat42;
  u_xlat42 = max(x_1086, 1.17549435e-38f);
  let x_1089 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_1089);
  let x_1091 : f32 = u_xlat42;
  let x_1093 : vec4<f32> = u_xlat8;
  let x_1095 : vec3<f32> = (vec3<f32>(x_1091, x_1091, x_1091) * vec3<f32>(x_1093.x, x_1093.y, x_1093.z));
  let x_1096 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1095.x, x_1095.y, x_1095.z, x_1096.w);
  let x_1098 : vec3<f32> = u_xlat17;
  let x_1099 : vec4<f32> = u_xlat8;
  u_xlat42 = dot(x_1098, vec3<f32>(x_1099.x, x_1099.y, x_1099.z));
  let x_1102 : f32 = u_xlat42;
  u_xlat42 = clamp(x_1102, 0.0f, 1.0f);
  let x_1105 : vec4<f32> = x_53.x_MainLightPosition;
  let x_1107 : vec4<f32> = u_xlat8;
  u_xlat43 = dot(vec3<f32>(x_1105.x, x_1105.y, x_1105.z), vec3<f32>(x_1107.x, x_1107.y, x_1107.z));
  let x_1110 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1110, 0.0f, 1.0f);
  let x_1112 : f32 = u_xlat42;
  let x_1113 : f32 = u_xlat42;
  u_xlat42 = (x_1112 * x_1113);
  let x_1115 : f32 = u_xlat42;
  let x_1117 : f32 = u_xlat9.x;
  u_xlat42 = ((x_1115 * x_1117) + 1.00001001358032226562f);
  let x_1121 : f32 = u_xlat43;
  let x_1122 : f32 = u_xlat43;
  u_xlat43 = (x_1121 * x_1122);
  let x_1124 : f32 = u_xlat42;
  let x_1125 : f32 = u_xlat42;
  u_xlat42 = (x_1124 * x_1125);
  let x_1127 : f32 = u_xlat43;
  u_xlat43 = max(x_1127, 0.10000000149011611938f);
  let x_1130 : f32 = u_xlat42;
  let x_1131 : f32 = u_xlat43;
  u_xlat42 = (x_1130 * x_1131);
  let x_1133 : f32 = u_xlat47;
  let x_1134 : f32 = u_xlat42;
  u_xlat42 = (x_1133 * x_1134);
  let x_1136 : f32 = u_xlat46;
  let x_1137 : f32 = u_xlat42;
  u_xlat42 = (x_1136 / x_1137);
  let x_1139 : f32 = u_xlat42;
  let x_1143 : vec3<f32> = u_xlat2;
  let x_1144 : vec3<f32> = ((vec3<f32>(x_1139, x_1139, x_1139) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_1143);
  let x_1145 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1144.x, x_1144.y, x_1144.z, x_1145.w);
  let x_1147 : vec4<f32> = u_xlat7;
  let x_1149 : vec4<f32> = u_xlat8;
  let x_1151 : vec3<f32> = (vec3<f32>(x_1147.x, x_1147.y, x_1147.z) * vec3<f32>(x_1149.x, x_1149.y, x_1149.z));
  let x_1152 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1151.x, x_1151.y, x_1151.z, x_1152.w);
  let x_1155 : f32 = x_53.x_AdditionalLightsCount.x;
  let x_1157 : f32 = x_490.unity_LightData.y;
  u_xlat42 = min(x_1155, x_1157);
  let x_1159 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_1159));
  let x_1163 : f32 = u_xlat20.x;
  let x_1166 : f32 = x_130.x_AdditionalShadowFadeParams.x;
  let x_1169 : f32 = x_130.x_AdditionalShadowFadeParams.y;
  u_xlat43 = ((x_1163 * x_1166) + x_1169);
  let x_1171 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1171, 0.0f, 1.0f);
  let x_1175 : f32 = x_807.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1177 : f32 = x_807.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1179 : f32 = x_807.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1181 : f32 = x_807.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1182 : vec4<f32> = vec4<f32>(x_1175, x_1177, x_1179, x_1181);
  let x_1189 : vec4<bool> = (vec4<f32>(x_1182.x, x_1182.y, x_1182.z, x_1182.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb20 = vec2<bool>(x_1189.x, x_1189.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1201 : u32 = u_xlatu_loop_1;
    let x_1202 : u32 = u_xlatu42;
    if ((x_1201 < x_1202)) {
    } else {
      break;
    }
    let x_1205 : u32 = u_xlatu_loop_1;
    u_xlatu3 = (x_1205 >> 2u);
    let x_1208 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1208 & 3u));
    let x_1211 : u32 = u_xlatu3;
    let x_1214 : vec4<f32> = x_490.unity_LightIndices[bitcast<i32>(x_1211)];
    let x_1224 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1229 : vec4<u32> = indexable[x_1224];
    u_xlat3.x = dot(x_1214, bitcast<vec4<f32>>(x_1229));
    let x_1235 : f32 = u_xlat3.x;
    u_xlati3 = i32(x_1235);
    let x_1238 : vec3<f32> = vs_INTERP8;
    let x_1249 : i32 = u_xlati3;
    let x_1251 : vec4<f32> = x_1248.x_AdditionalLightsPosition[x_1249];
    let x_1254 : i32 = u_xlati3;
    let x_1256 : vec4<f32> = x_1248.x_AdditionalLightsPosition[x_1254];
    u_xlat23 = ((-(x_1238) * vec3<f32>(x_1251.w, x_1251.w, x_1251.w)) + vec3<f32>(x_1256.x, x_1256.y, x_1256.z));
    let x_1259 : vec3<f32> = u_xlat23;
    let x_1260 : vec3<f32> = u_xlat23;
    u_xlat48 = dot(x_1259, x_1260);
    let x_1262 : f32 = u_xlat48;
    u_xlat48 = max(x_1262, 0.00006103515625f);
    let x_1266 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_1266);
    let x_1269 : f32 = u_xlat49;
    let x_1271 : vec3<f32> = u_xlat23;
    u_xlat10 = (vec3<f32>(x_1269, x_1269, x_1269) * x_1271);
    let x_1274 : f32 = u_xlat48;
    u_xlat50 = (1.0f / x_1274);
    let x_1276 : f32 = u_xlat48;
    let x_1277 : i32 = u_xlati3;
    let x_1279 : f32 = x_1248.x_AdditionalLightsAttenuation[x_1277].x;
    u_xlat48 = (x_1276 * x_1279);
    let x_1281 : f32 = u_xlat48;
    let x_1283 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1281) * x_1283) + 1.0f);
    let x_1286 : f32 = u_xlat48;
    u_xlat48 = max(x_1286, 0.0f);
    let x_1288 : f32 = u_xlat48;
    let x_1289 : f32 = u_xlat48;
    u_xlat48 = (x_1288 * x_1289);
    let x_1291 : f32 = u_xlat48;
    let x_1292 : f32 = u_xlat50;
    u_xlat48 = (x_1291 * x_1292);
    let x_1294 : i32 = u_xlati3;
    let x_1296 : vec4<f32> = x_1248.x_AdditionalLightsSpotDir[x_1294];
    let x_1298 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1296.x, x_1296.y, x_1296.z), x_1298);
    let x_1300 : f32 = u_xlat50;
    let x_1301 : i32 = u_xlati3;
    let x_1303 : f32 = x_1248.x_AdditionalLightsAttenuation[x_1301].z;
    let x_1305 : i32 = u_xlati3;
    let x_1307 : f32 = x_1248.x_AdditionalLightsAttenuation[x_1305].w;
    u_xlat50 = ((x_1300 * x_1303) + x_1307);
    let x_1309 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1309, 0.0f, 1.0f);
    let x_1311 : f32 = u_xlat50;
    let x_1312 : f32 = u_xlat50;
    u_xlat50 = (x_1311 * x_1312);
    let x_1314 : f32 = u_xlat48;
    let x_1315 : f32 = u_xlat50;
    u_xlat48 = (x_1314 * x_1315);
    let x_1319 : i32 = u_xlati3;
    let x_1321 : f32 = x_130.x_AdditionalShadowParams[x_1319].w;
    u_xlati50 = i32(x_1321);
    let x_1324 : i32 = u_xlati50;
    u_xlatb52 = (x_1324 >= 0i);
    let x_1326 : bool = u_xlatb52;
    if (x_1326) {
      let x_1330 : i32 = u_xlati3;
      let x_1332 : f32 = x_130.x_AdditionalShadowParams[x_1330].z;
      u_xlatb52 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1332, x_1332, x_1332, x_1332))));
      let x_1336 : bool = u_xlatb52;
      if (x_1336) {
        let x_1340 : vec3<f32> = u_xlat10;
        let x_1343 : vec3<f32> = u_xlat10;
        let x_1346 : vec4<bool> = (abs(vec4<f32>(x_1340.z, x_1340.z, x_1340.y, x_1340.z)) >= abs(vec4<f32>(x_1343.x, x_1343.y, x_1343.x, x_1343.x)));
        let x_1347 : vec3<bool> = vec3<bool>(x_1346.x, x_1346.y, x_1346.z);
        let x_1348 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1347.x, x_1347.y, x_1347.z, x_1348.w);
        let x_1351 : bool = u_xlatb11.y;
        let x_1353 : bool = u_xlatb11.x;
        u_xlatb52 = (x_1351 & x_1353);
        let x_1355 : vec3<f32> = u_xlat10;
        let x_1358 : vec4<bool> = (-(vec4<f32>(x_1355.z, x_1355.y, x_1355.z, x_1355.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1359 : vec3<bool> = vec3<bool>(x_1358.x, x_1358.y, x_1358.w);
        let x_1360 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1359.x, x_1359.y, x_1360.z, x_1359.z);
        let x_1364 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1364);
        let x_1369 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1369);
        let x_1374 : bool = u_xlatb11.w;
        u_xlat53 = select(0.0f, 1.0f, x_1374);
        let x_1378 : bool = u_xlatb11.z;
        if (x_1378) {
          let x_1383 : f32 = u_xlat11.y;
          x_1379 = x_1383;
        } else {
          let x_1385 : f32 = u_xlat53;
          x_1379 = x_1385;
        }
        let x_1386 : f32 = x_1379;
        u_xlat25.x = x_1386;
        let x_1389 : bool = u_xlatb52;
        if (x_1389) {
          let x_1394 : f32 = u_xlat11.x;
          x_1390 = x_1394;
        } else {
          let x_1397 : f32 = u_xlat25.x;
          x_1390 = x_1397;
        }
        let x_1398 : f32 = x_1390;
        u_xlat52 = x_1398;
        let x_1399 : i32 = u_xlati3;
        let x_1401 : f32 = x_130.x_AdditionalShadowParams[x_1399].w;
        u_xlat11.x = trunc(x_1401);
        let x_1404 : f32 = u_xlat52;
        let x_1406 : f32 = u_xlat11.x;
        u_xlat52 = (x_1404 + x_1406);
        let x_1408 : f32 = u_xlat52;
        u_xlati50 = i32(x_1408);
      }
      let x_1410 : i32 = u_xlati50;
      u_xlati50 = (x_1410 << bitcast<u32>(2i));
      let x_1412 : vec3<f32> = vs_INTERP8;
      let x_1415 : i32 = u_xlati50;
      let x_1418 : i32 = u_xlati50;
      let x_1422 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[((x_1415 + 1i) / 4i)][((x_1418 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1412.y, x_1412.y, x_1412.y, x_1412.y) * x_1422);
      let x_1424 : i32 = u_xlati50;
      let x_1426 : i32 = u_xlati50;
      let x_1429 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[(x_1424 / 4i)][(x_1426 % 4i)];
      let x_1430 : vec3<f32> = vs_INTERP8;
      let x_1433 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1429 * vec4<f32>(x_1430.x, x_1430.x, x_1430.x, x_1430.x)) + x_1433);
      let x_1435 : i32 = u_xlati50;
      let x_1438 : i32 = u_xlati50;
      let x_1442 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[((x_1435 + 2i) / 4i)][((x_1438 + 2i) % 4i)];
      let x_1443 : vec3<f32> = vs_INTERP8;
      let x_1446 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1442 * vec4<f32>(x_1443.z, x_1443.z, x_1443.z, x_1443.z)) + x_1446);
      let x_1448 : vec4<f32> = u_xlat11;
      let x_1449 : i32 = u_xlati50;
      let x_1452 : i32 = u_xlati50;
      let x_1456 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[((x_1449 + 3i) / 4i)][((x_1452 + 3i) % 4i)];
      u_xlat11 = (x_1448 + x_1456);
      let x_1458 : vec4<f32> = u_xlat11;
      let x_1460 : vec4<f32> = u_xlat11;
      let x_1462 : vec3<f32> = (vec3<f32>(x_1458.x, x_1458.y, x_1458.z) / vec3<f32>(x_1460.w, x_1460.w, x_1460.w));
      let x_1463 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1462.x, x_1462.y, x_1462.z, x_1463.w);
      let x_1466 : vec4<f32> = u_xlat11;
      let x_1467 : vec2<f32> = vec2<f32>(x_1466.x, x_1466.y);
      let x_1469 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1467.x, x_1467.y, x_1469);
      let x_1477 : vec3<f32> = txVec1;
      let x_1479 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1477.xy, x_1477.z);
      u_xlat50 = x_1479;
      let x_1480 : i32 = u_xlati3;
      let x_1482 : f32 = x_130.x_AdditionalShadowParams[x_1480].x;
      u_xlat52 = (1.0f + -(x_1482));
      let x_1485 : f32 = u_xlat50;
      let x_1486 : i32 = u_xlati3;
      let x_1488 : f32 = x_130.x_AdditionalShadowParams[x_1486].x;
      let x_1490 : f32 = u_xlat52;
      u_xlat50 = ((x_1485 * x_1488) + x_1490);
      let x_1493 : f32 = u_xlat11.z;
      u_xlatb52 = (0.0f >= x_1493);
      let x_1496 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_1496 >= 1.0f);
      let x_1499 : bool = u_xlatb52;
      let x_1501 : bool = u_xlatb11.x;
      u_xlatb52 = (x_1499 | x_1501);
      let x_1503 : bool = u_xlatb52;
      let x_1504 : f32 = u_xlat50;
      u_xlat50 = select(x_1504, 1.0f, x_1503);
    } else {
      u_xlat50 = 1.0f;
    }
    let x_1507 : f32 = u_xlat50;
    u_xlat52 = (-(x_1507) + 1.0f);
    let x_1510 : f32 = u_xlat43;
    let x_1511 : f32 = u_xlat52;
    let x_1513 : f32 = u_xlat50;
    u_xlat50 = ((x_1510 * x_1511) + x_1513);
    let x_1516 : i32 = u_xlati3;
    u_xlati52 = (1i << bitcast<u32>((x_1516 & 31i)));
    let x_1520 : i32 = u_xlati52;
    let x_1523 : f32 = x_807.x_AdditionalLightsCookieEnableBits;
    u_xlati52 = bitcast<i32>((bitcast<u32>(x_1520) & bitcast<u32>(x_1523)));
    let x_1527 : i32 = u_xlati52;
    if ((x_1527 != 0i)) {
      let x_1531 : i32 = u_xlati3;
      let x_1533 : f32 = x_807.x_AdditionalLightsLightTypes[x_1531].el;
      u_xlati52 = i32(x_1533);
      let x_1536 : i32 = u_xlati52;
      u_xlati11 = select(1i, 0i, (x_1536 != 0i));
      let x_1540 : i32 = u_xlati3;
      u_xlati25 = (x_1540 << bitcast<u32>(2i));
      let x_1542 : i32 = u_xlati11;
      if ((x_1542 != 0i)) {
        let x_1546 : vec3<f32> = vs_INTERP8;
        let x_1548 : i32 = u_xlati25;
        let x_1551 : i32 = u_xlati25;
        let x_1555 : vec4<f32> = x_807.x_AdditionalLightsWorldToLights[((x_1548 + 1i) / 4i)][((x_1551 + 1i) % 4i)];
        let x_1557 : vec3<f32> = (vec3<f32>(x_1546.y, x_1546.y, x_1546.y) * vec3<f32>(x_1555.x, x_1555.y, x_1555.w));
        let x_1558 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1557.x, x_1558.y, x_1557.y, x_1557.z);
        let x_1560 : i32 = u_xlati25;
        let x_1562 : i32 = u_xlati25;
        let x_1565 : vec4<f32> = x_807.x_AdditionalLightsWorldToLights[(x_1560 / 4i)][(x_1562 % 4i)];
        let x_1567 : vec3<f32> = vs_INTERP8;
        let x_1570 : vec4<f32> = u_xlat11;
        let x_1572 : vec3<f32> = ((vec3<f32>(x_1565.x, x_1565.y, x_1565.w) * vec3<f32>(x_1567.x, x_1567.x, x_1567.x)) + vec3<f32>(x_1570.x, x_1570.z, x_1570.w));
        let x_1573 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1572.x, x_1573.y, x_1572.y, x_1572.z);
        let x_1575 : i32 = u_xlati25;
        let x_1578 : i32 = u_xlati25;
        let x_1582 : vec4<f32> = x_807.x_AdditionalLightsWorldToLights[((x_1575 + 2i) / 4i)][((x_1578 + 2i) % 4i)];
        let x_1584 : vec3<f32> = vs_INTERP8;
        let x_1587 : vec4<f32> = u_xlat11;
        let x_1589 : vec3<f32> = ((vec3<f32>(x_1582.x, x_1582.y, x_1582.w) * vec3<f32>(x_1584.z, x_1584.z, x_1584.z)) + vec3<f32>(x_1587.x, x_1587.z, x_1587.w));
        let x_1590 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1589.x, x_1590.y, x_1589.y, x_1589.z);
        let x_1592 : vec4<f32> = u_xlat11;
        let x_1594 : i32 = u_xlati25;
        let x_1597 : i32 = u_xlati25;
        let x_1601 : vec4<f32> = x_807.x_AdditionalLightsWorldToLights[((x_1594 + 3i) / 4i)][((x_1597 + 3i) % 4i)];
        let x_1603 : vec3<f32> = (vec3<f32>(x_1592.x, x_1592.z, x_1592.w) + vec3<f32>(x_1601.x, x_1601.y, x_1601.w));
        let x_1604 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1603.x, x_1604.y, x_1603.y, x_1603.z);
        let x_1606 : vec4<f32> = u_xlat11;
        let x_1608 : vec4<f32> = u_xlat11;
        let x_1610 : vec2<f32> = (vec2<f32>(x_1606.x, x_1606.z) / vec2<f32>(x_1608.w, x_1608.w));
        let x_1611 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1610.x, x_1611.y, x_1610.y, x_1611.w);
        let x_1613 : vec4<f32> = u_xlat11;
        let x_1616 : vec2<f32> = ((vec2<f32>(x_1613.x, x_1613.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1617 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1616.x, x_1617.y, x_1616.y, x_1617.w);
        let x_1619 : vec4<f32> = u_xlat11;
        let x_1623 : vec2<f32> = clamp(vec2<f32>(x_1619.x, x_1619.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1624 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1623.x, x_1624.y, x_1623.y, x_1624.w);
        let x_1626 : i32 = u_xlati3;
        let x_1628 : vec4<f32> = x_807.x_AdditionalLightsCookieAtlasUVRects[x_1626];
        let x_1630 : vec4<f32> = u_xlat11;
        let x_1633 : i32 = u_xlati3;
        let x_1635 : vec4<f32> = x_807.x_AdditionalLightsCookieAtlasUVRects[x_1633];
        let x_1637 : vec2<f32> = ((vec2<f32>(x_1628.x, x_1628.y) * vec2<f32>(x_1630.x, x_1630.z)) + vec2<f32>(x_1635.z, x_1635.w));
        let x_1638 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1637.x, x_1638.y, x_1637.y, x_1638.w);
      } else {
        let x_1641 : i32 = u_xlati52;
        u_xlatb52 = (x_1641 == 1i);
        let x_1643 : bool = u_xlatb52;
        u_xlati52 = select(0i, 1i, x_1643);
        let x_1645 : i32 = u_xlati52;
        if ((x_1645 != 0i)) {
          let x_1650 : vec3<f32> = vs_INTERP8;
          let x_1652 : i32 = u_xlati25;
          let x_1655 : i32 = u_xlati25;
          let x_1659 : vec4<f32> = x_807.x_AdditionalLightsWorldToLights[((x_1652 + 1i) / 4i)][((x_1655 + 1i) % 4i)];
          let x_1661 : vec2<f32> = (vec2<f32>(x_1650.y, x_1650.y) * vec2<f32>(x_1659.x, x_1659.y));
          let x_1662 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1661.x, x_1661.y, x_1662.z, x_1662.w);
          let x_1664 : i32 = u_xlati25;
          let x_1666 : i32 = u_xlati25;
          let x_1669 : vec4<f32> = x_807.x_AdditionalLightsWorldToLights[(x_1664 / 4i)][(x_1666 % 4i)];
          let x_1671 : vec3<f32> = vs_INTERP8;
          let x_1674 : vec4<f32> = u_xlat12;
          let x_1676 : vec2<f32> = ((vec2<f32>(x_1669.x, x_1669.y) * vec2<f32>(x_1671.x, x_1671.x)) + vec2<f32>(x_1674.x, x_1674.y));
          let x_1677 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1676.x, x_1676.y, x_1677.z, x_1677.w);
          let x_1679 : i32 = u_xlati25;
          let x_1682 : i32 = u_xlati25;
          let x_1686 : vec4<f32> = x_807.x_AdditionalLightsWorldToLights[((x_1679 + 2i) / 4i)][((x_1682 + 2i) % 4i)];
          let x_1688 : vec3<f32> = vs_INTERP8;
          let x_1691 : vec4<f32> = u_xlat12;
          let x_1693 : vec2<f32> = ((vec2<f32>(x_1686.x, x_1686.y) * vec2<f32>(x_1688.z, x_1688.z)) + vec2<f32>(x_1691.x, x_1691.y));
          let x_1694 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1693.x, x_1693.y, x_1694.z, x_1694.w);
          let x_1696 : vec4<f32> = u_xlat12;
          let x_1698 : i32 = u_xlati25;
          let x_1701 : i32 = u_xlati25;
          let x_1705 : vec4<f32> = x_807.x_AdditionalLightsWorldToLights[((x_1698 + 3i) / 4i)][((x_1701 + 3i) % 4i)];
          let x_1707 : vec2<f32> = (vec2<f32>(x_1696.x, x_1696.y) + vec2<f32>(x_1705.x, x_1705.y));
          let x_1708 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1707.x, x_1707.y, x_1708.z, x_1708.w);
          let x_1710 : vec4<f32> = u_xlat12;
          let x_1713 : vec2<f32> = ((vec2<f32>(x_1710.x, x_1710.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1714 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1713.x, x_1713.y, x_1714.z, x_1714.w);
          let x_1716 : vec4<f32> = u_xlat12;
          let x_1718 : vec2<f32> = fract(vec2<f32>(x_1716.x, x_1716.y));
          let x_1719 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1718.x, x_1718.y, x_1719.z, x_1719.w);
          let x_1721 : i32 = u_xlati3;
          let x_1723 : vec4<f32> = x_807.x_AdditionalLightsCookieAtlasUVRects[x_1721];
          let x_1725 : vec4<f32> = u_xlat12;
          let x_1728 : i32 = u_xlati3;
          let x_1730 : vec4<f32> = x_807.x_AdditionalLightsCookieAtlasUVRects[x_1728];
          let x_1732 : vec2<f32> = ((vec2<f32>(x_1723.x, x_1723.y) * vec2<f32>(x_1725.x, x_1725.y)) + vec2<f32>(x_1730.z, x_1730.w));
          let x_1733 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1732.x, x_1733.y, x_1732.y, x_1733.w);
        } else {
          let x_1736 : vec3<f32> = vs_INTERP8;
          let x_1738 : i32 = u_xlati25;
          let x_1741 : i32 = u_xlati25;
          let x_1745 : vec4<f32> = x_807.x_AdditionalLightsWorldToLights[((x_1738 + 1i) / 4i)][((x_1741 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1736.y, x_1736.y, x_1736.y, x_1736.y) * x_1745);
          let x_1747 : i32 = u_xlati25;
          let x_1749 : i32 = u_xlati25;
          let x_1752 : vec4<f32> = x_807.x_AdditionalLightsWorldToLights[(x_1747 / 4i)][(x_1749 % 4i)];
          let x_1753 : vec3<f32> = vs_INTERP8;
          let x_1756 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1752 * vec4<f32>(x_1753.x, x_1753.x, x_1753.x, x_1753.x)) + x_1756);
          let x_1758 : i32 = u_xlati25;
          let x_1761 : i32 = u_xlati25;
          let x_1765 : vec4<f32> = x_807.x_AdditionalLightsWorldToLights[((x_1758 + 2i) / 4i)][((x_1761 + 2i) % 4i)];
          let x_1766 : vec3<f32> = vs_INTERP8;
          let x_1769 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1765 * vec4<f32>(x_1766.z, x_1766.z, x_1766.z, x_1766.z)) + x_1769);
          let x_1771 : vec4<f32> = u_xlat12;
          let x_1772 : i32 = u_xlati25;
          let x_1775 : i32 = u_xlati25;
          let x_1779 : vec4<f32> = x_807.x_AdditionalLightsWorldToLights[((x_1772 + 3i) / 4i)][((x_1775 + 3i) % 4i)];
          u_xlat12 = (x_1771 + x_1779);
          let x_1781 : vec4<f32> = u_xlat12;
          let x_1783 : vec4<f32> = u_xlat12;
          let x_1785 : vec3<f32> = (vec3<f32>(x_1781.x, x_1781.y, x_1781.z) / vec3<f32>(x_1783.w, x_1783.w, x_1783.w));
          let x_1786 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1785.x, x_1785.y, x_1785.z, x_1786.w);
          let x_1788 : vec4<f32> = u_xlat12;
          let x_1790 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(vec3<f32>(x_1788.x, x_1788.y, x_1788.z), vec3<f32>(x_1790.x, x_1790.y, x_1790.z));
          let x_1793 : f32 = u_xlat52;
          u_xlat52 = inverseSqrt(x_1793);
          let x_1795 : f32 = u_xlat52;
          let x_1797 : vec4<f32> = u_xlat12;
          let x_1799 : vec3<f32> = (vec3<f32>(x_1795, x_1795, x_1795) * vec3<f32>(x_1797.x, x_1797.y, x_1797.z));
          let x_1800 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1799.x, x_1799.y, x_1799.z, x_1800.w);
          let x_1802 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(abs(vec3<f32>(x_1802.x, x_1802.y, x_1802.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1807 : f32 = u_xlat52;
          u_xlat52 = max(x_1807, 0.00000099999999747524f);
          let x_1810 : f32 = u_xlat52;
          u_xlat52 = (1.0f / x_1810);
          let x_1813 : f32 = u_xlat52;
          let x_1815 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1813, x_1813, x_1813) * vec3<f32>(x_1815.z, x_1815.x, x_1815.y));
          let x_1819 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1819);
          let x_1823 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1823, 0.0f, 1.0f);
          let x_1827 : vec3<f32> = u_xlat13;
          let x_1829 : vec4<bool> = (vec4<f32>(x_1827.y, x_1827.y, x_1827.z, x_1827.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1830 : vec2<bool> = vec2<bool>(x_1829.x, x_1829.z);
          let x_1831 : vec3<bool> = u_xlatb25;
          u_xlatb25 = vec3<bool>(x_1830.x, x_1831.y, x_1830.y);
          let x_1834 : bool = u_xlatb25.x;
          if (x_1834) {
            let x_1839 : f32 = u_xlat13.x;
            x_1835 = x_1839;
          } else {
            let x_1842 : f32 = u_xlat13.x;
            x_1835 = -(x_1842);
          }
          let x_1844 : f32 = x_1835;
          u_xlat25.x = x_1844;
          let x_1847 : bool = u_xlatb25.z;
          if (x_1847) {
            let x_1852 : f32 = u_xlat13.x;
            x_1848 = x_1852;
          } else {
            let x_1855 : f32 = u_xlat13.x;
            x_1848 = -(x_1855);
          }
          let x_1857 : f32 = x_1848;
          u_xlat25.z = x_1857;
          let x_1859 : vec4<f32> = u_xlat12;
          let x_1861 : f32 = u_xlat52;
          let x_1864 : vec3<f32> = u_xlat25;
          let x_1866 : vec2<f32> = ((vec2<f32>(x_1859.x, x_1859.y) * vec2<f32>(x_1861, x_1861)) + vec2<f32>(x_1864.x, x_1864.z));
          let x_1867 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1866.x, x_1867.y, x_1866.y);
          let x_1869 : vec3<f32> = u_xlat25;
          let x_1872 : vec2<f32> = ((vec2<f32>(x_1869.x, x_1869.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1873 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1872.x, x_1873.y, x_1872.y);
          let x_1875 : vec3<f32> = u_xlat25;
          let x_1879 : vec2<f32> = clamp(vec2<f32>(x_1875.x, x_1875.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1880 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1879.x, x_1880.y, x_1879.y);
          let x_1882 : i32 = u_xlati3;
          let x_1884 : vec4<f32> = x_807.x_AdditionalLightsCookieAtlasUVRects[x_1882];
          let x_1886 : vec3<f32> = u_xlat25;
          let x_1889 : i32 = u_xlati3;
          let x_1891 : vec4<f32> = x_807.x_AdditionalLightsCookieAtlasUVRects[x_1889];
          let x_1893 : vec2<f32> = ((vec2<f32>(x_1884.x, x_1884.y) * vec2<f32>(x_1886.x, x_1886.z)) + vec2<f32>(x_1891.z, x_1891.w));
          let x_1894 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1893.x, x_1894.y, x_1893.y, x_1894.w);
        }
      }
      let x_1901 : vec4<f32> = u_xlat11;
      let x_1903 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1901.x, x_1901.z), 0.0f);
      u_xlat11 = x_1903;
      let x_1905 : bool = u_xlatb20.y;
      if (x_1905) {
        let x_1910 : f32 = u_xlat11.w;
        x_1906 = x_1910;
      } else {
        let x_1913 : f32 = u_xlat11.x;
        x_1906 = x_1913;
      }
      let x_1914 : f32 = x_1906;
      u_xlat52 = x_1914;
      let x_1916 : bool = u_xlatb20.x;
      if (x_1916) {
        let x_1920 : vec4<f32> = u_xlat11;
        x_1917 = vec3<f32>(x_1920.x, x_1920.y, x_1920.z);
      } else {
        let x_1923 : f32 = u_xlat52;
        x_1917 = vec3<f32>(x_1923, x_1923, x_1923);
      }
      let x_1925 : vec3<f32> = x_1917;
      let x_1926 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1925.x, x_1925.y, x_1925.z, x_1926.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1932 : vec4<f32> = u_xlat11;
    let x_1934 : i32 = u_xlati3;
    let x_1936 : vec4<f32> = x_1248.x_AdditionalLightsColor[x_1934];
    let x_1938 : vec3<f32> = (vec3<f32>(x_1932.x, x_1932.y, x_1932.z) * vec3<f32>(x_1936.x, x_1936.y, x_1936.z));
    let x_1939 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1938.x, x_1938.y, x_1938.z, x_1939.w);
    let x_1941 : f32 = u_xlat48;
    let x_1942 : f32 = u_xlat50;
    u_xlat3.x = (x_1941 * x_1942);
    let x_1945 : vec3<f32> = u_xlat17;
    let x_1946 : vec3<f32> = u_xlat10;
    u_xlat48 = dot(x_1945, x_1946);
    let x_1948 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1948, 0.0f, 1.0f);
    let x_1951 : f32 = u_xlat3.x;
    let x_1952 : f32 = u_xlat48;
    u_xlat3.x = (x_1951 * x_1952);
    let x_1955 : vec4<f32> = u_xlat3;
    let x_1957 : vec4<f32> = u_xlat11;
    let x_1959 : vec3<f32> = (vec3<f32>(x_1955.x, x_1955.x, x_1955.x) * vec3<f32>(x_1957.x, x_1957.y, x_1957.z));
    let x_1960 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1959.x, x_1959.y, x_1959.z, x_1960.w);
    let x_1962 : vec3<f32> = u_xlat23;
    let x_1963 : f32 = u_xlat49;
    let x_1966 : vec4<f32> = u_xlat4;
    u_xlat23 = ((x_1962 * vec3<f32>(x_1963, x_1963, x_1963)) + vec3<f32>(x_1966.x, x_1966.y, x_1966.z));
    let x_1969 : vec3<f32> = u_xlat23;
    let x_1970 : vec3<f32> = u_xlat23;
    u_xlat3.x = dot(x_1969, x_1970);
    let x_1974 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_1974, 1.17549435e-38f);
    let x_1978 : f32 = u_xlat3.x;
    u_xlat3.x = inverseSqrt(x_1978);
    let x_1981 : vec4<f32> = u_xlat3;
    let x_1983 : vec3<f32> = u_xlat23;
    u_xlat23 = (vec3<f32>(x_1981.x, x_1981.x, x_1981.x) * x_1983);
    let x_1985 : vec3<f32> = u_xlat17;
    let x_1986 : vec3<f32> = u_xlat23;
    u_xlat3.x = dot(x_1985, x_1986);
    let x_1990 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_1990, 0.0f, 1.0f);
    let x_1993 : vec3<f32> = u_xlat10;
    let x_1994 : vec3<f32> = u_xlat23;
    u_xlat48 = dot(x_1993, x_1994);
    let x_1996 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1996, 0.0f, 1.0f);
    let x_1999 : f32 = u_xlat3.x;
    let x_2001 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1999 * x_2001);
    let x_2005 : f32 = u_xlat3.x;
    let x_2007 : f32 = u_xlat9.x;
    u_xlat3.x = ((x_2005 * x_2007) + 1.00001001358032226562f);
    let x_2011 : f32 = u_xlat48;
    let x_2012 : f32 = u_xlat48;
    u_xlat48 = (x_2011 * x_2012);
    let x_2015 : f32 = u_xlat3.x;
    let x_2017 : f32 = u_xlat3.x;
    u_xlat3.x = (x_2015 * x_2017);
    let x_2020 : f32 = u_xlat48;
    u_xlat48 = max(x_2020, 0.10000000149011611938f);
    let x_2023 : f32 = u_xlat3.x;
    let x_2024 : f32 = u_xlat48;
    u_xlat3.x = (x_2023 * x_2024);
    let x_2027 : f32 = u_xlat47;
    let x_2029 : f32 = u_xlat3.x;
    u_xlat3.x = (x_2027 * x_2029);
    let x_2032 : f32 = u_xlat46;
    let x_2034 : f32 = u_xlat3.x;
    u_xlat3.x = (x_2032 / x_2034);
    let x_2037 : vec4<f32> = u_xlat3;
    let x_2040 : vec3<f32> = u_xlat2;
    u_xlat23 = ((vec3<f32>(x_2037.x, x_2037.x, x_2037.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_2040);
    let x_2042 : vec3<f32> = u_xlat23;
    let x_2043 : vec4<f32> = u_xlat11;
    let x_2046 : vec4<f32> = u_xlat8;
    let x_2048 : vec3<f32> = ((x_2042 * vec3<f32>(x_2043.x, x_2043.y, x_2043.z)) + vec3<f32>(x_2046.x, x_2046.y, x_2046.z));
    let x_2049 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2048.x, x_2048.y, x_2048.z, x_2049.w);

    continuing {
      let x_2051 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2051 + bitcast<u32>(1i));
    }
  }
  let x_2053 : vec4<f32> = u_xlat5;
  let x_2055 : vec3<f32> = u_xlat6;
  let x_2058 : vec4<f32> = u_xlat7;
  u_xlat2 = ((vec3<f32>(x_2053.x, x_2053.y, x_2053.z) * vec3<f32>(x_2055.x, x_2055.x, x_2055.x)) + vec3<f32>(x_2058.x, x_2058.y, x_2058.z));
  let x_2061 : vec4<f32> = u_xlat8;
  let x_2063 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_2061.x, x_2061.y, x_2061.z) + x_2063);
  let x_2065 : vec4<f32> = vs_INTERP6;
  let x_2067 : vec3<f32> = u_xlat0;
  let x_2069 : vec3<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_2065.w, x_2065.w, x_2065.w) * x_2067) + x_2069);
  let x_2072 : f32 = u_xlat15.x;
  let x_2074 : f32 = u_xlat15.x;
  u_xlat42 = (x_2072 * -(x_2074));
  let x_2077 : f32 = u_xlat42;
  u_xlat42 = exp2(x_2077);
  let x_2079 : vec3<f32> = u_xlat0;
  let x_2082 : vec4<f32> = x_53.unity_FogColor;
  u_xlat0 = (x_2079 + -(vec3<f32>(x_2082.x, x_2082.y, x_2082.z)));
  let x_2088 : f32 = u_xlat42;
  let x_2090 : vec3<f32> = u_xlat0;
  let x_2093 : vec4<f32> = x_53.unity_FogColor;
  let x_2095 : vec3<f32> = ((vec3<f32>(x_2088, x_2088, x_2088) * x_2090) + vec3<f32>(x_2093.x, x_2093.y, x_2093.z));
  let x_2096 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2095.x, x_2095.y, x_2095.z, x_2096.w);
  let x_2098 : bool = u_xlatb29;
  if (x_2098) {
    let x_2103 : f32 = u_xlat1.x;
    x_2099 = x_2103;
  } else {
    x_2099 = 1.0f;
  }
  let x_2105 : f32 = x_2099;
  SV_Target0.w = x_2105;
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


