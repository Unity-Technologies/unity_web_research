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

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_53 : PGlobals;

var<private> u_xlat2 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_65 : UnityPerMaterial;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_D9BFD5F1 : sampler;

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

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

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

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat46 : f32;

var<private> u_xlat47 : f32;

var<private> u_xlat20 : vec3<f32>;

var<private> u_xlat34 : f32;

var<private> u_xlatb20 : vec2<bool>;

@group(1) @binding(4) var<uniform> x_792 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat49 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu6 : u32;

var<private> u_xlati35 : i32;

var<private> u_xlati6 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_1254 : AdditionalLights;

var<private> u_xlat35 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat50 : f32;

var<private> u_xlati50 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat52 : f32;

var<private> u_xlat51 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb52 : bool;

var<private> u_xlati51 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlat25 : vec3<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlatu45 : u32;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_402 : f32;
  var x_451 : f32;
  var x_594 : f32;
  var x_607 : f32;
  var x_619 : f32;
  var x_875 : f32;
  var x_886 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1384 : f32;
  var x_1394 : f32;
  var txVec1 : vec3<f32>;
  var x_1824 : f32;
  var x_1837 : f32;
  var x_1895 : f32;
  var x_1906 : vec3<f32>;
  var x_2066 : f32;
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
  let x_569 : vec3<f32> = (vec3<f32>(x_566.x, x_566.x, x_566.x) * x_568);
  let x_570 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_569.x, x_569.y, x_569.z, x_570.w);
  let x_574 : f32 = x_53.unity_OrthoParams.w;
  u_xlatb15.x = (x_574 == 0.0f);
  let x_577 : vec3<f32> = vs_INTERP8;
  let x_581 : vec3<f32> = x_53.x_WorldSpaceCameraPos;
  u_xlat17 = (-(x_577) + x_581);
  let x_583 : vec3<f32> = u_xlat17;
  let x_584 : vec3<f32> = u_xlat17;
  u_xlat43 = dot(x_583, x_584);
  let x_586 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_586);
  let x_588 : f32 = u_xlat43;
  let x_590 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_588, x_588, x_588) * x_590);
  let x_593 : bool = u_xlatb15.x;
  if (x_593) {
    let x_598 : f32 = u_xlat17.x;
    x_594 = x_598;
  } else {
    let x_602 : f32 = x_53.unity_MatrixV[0i].z;
    x_594 = x_602;
  }
  let x_603 : f32 = x_594;
  u_xlat5.x = x_603;
  let x_606 : bool = u_xlatb15.x;
  if (x_606) {
    let x_611 : f32 = u_xlat17.y;
    x_607 = x_611;
  } else {
    let x_614 : f32 = x_53.unity_MatrixV[1i].z;
    x_607 = x_614;
  }
  let x_615 : f32 = x_607;
  u_xlat5.y = x_615;
  let x_618 : bool = u_xlatb15.x;
  if (x_618) {
    let x_623 : f32 = u_xlat17.z;
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
  u_xlat15.x = (x_673 * x_675);
  let x_679 : f32 = u_xlat4.x;
  let x_681 : f32 = u_xlat4.x;
  let x_684 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_679 * x_681) + -(x_684));
  let x_690 : vec4<f32> = x_490.unity_SHC;
  let x_692 : vec3<f32> = u_xlat15;
  let x_695 : vec4<f32> = u_xlat8;
  u_xlat17 = ((vec3<f32>(x_690.x, x_690.y, x_690.z) * vec3<f32>(x_692.x, x_692.x, x_692.x)) + vec3<f32>(x_695.x, x_695.y, x_695.z));
  let x_698 : vec3<f32> = u_xlat17;
  let x_699 : vec3<f32> = u_xlat6;
  u_xlat17 = (x_698 + x_699);
  let x_701 : vec3<f32> = u_xlat17;
  u_xlat17 = max(x_701, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_704 : f32 = u_xlat3.x;
  u_xlat3.x = x_704;
  let x_707 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_707, 0.0f, 1.0f);
  let x_711 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_711, 1.0f);
  let x_714 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_714 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_719 : f32 = u_xlat3.x;
  u_xlat15.x = (-(x_719) + 1.0f);
  let x_724 : f32 = u_xlat15.x;
  let x_726 : f32 = u_xlat15.x;
  u_xlat43 = (x_724 * x_726);
  let x_728 : f32 = u_xlat43;
  u_xlat43 = max(x_728, 0.0078125f);
  let x_731 : f32 = u_xlat43;
  let x_732 : f32 = u_xlat43;
  u_xlat44 = (x_731 * x_732);
  let x_735 : f32 = u_xlat3.x;
  u_xlat3.x = (x_735 + 0.04000002145767211914f);
  let x_740 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_740, 1.0f);
  let x_744 : f32 = u_xlat43;
  u_xlat46 = ((x_744 * 4.0f) + 2.0f);
  let x_749 : f32 = vs_INTERP6.w;
  u_xlat47 = min(x_749, 1.0f);
  let x_751 : vec3<f32> = vs_INTERP8;
  let x_753 : vec3<f32> = x_53.x_WorldSpaceCameraPos;
  u_xlat6 = (x_751 + -(x_753));
  let x_756 : vec3<f32> = u_xlat6;
  let x_757 : vec3<f32> = u_xlat6;
  u_xlat6.x = dot(x_756, x_757);
  let x_762 : f32 = u_xlat6.x;
  let x_764 : f32 = x_130.x_MainLightShadowParams.z;
  let x_767 : f32 = x_130.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_762 * x_764) + x_767);
  let x_771 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_771, 0.0f, 1.0f);
  let x_775 : f32 = u_xlat42;
  u_xlat34 = (-(x_775) + 1.0f);
  let x_779 : f32 = u_xlat20.x;
  let x_780 : f32 = u_xlat34;
  let x_782 : f32 = u_xlat42;
  u_xlat42 = ((x_779 * x_780) + x_782);
  let x_794 : f32 = x_792.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_794 == -1.0f));
  let x_798 : bool = u_xlatb20.x;
  if (x_798) {
    let x_801 : vec3<f32> = vs_INTERP8;
    let x_804 : vec4<f32> = x_792.x_MainLightWorldToLight[1i];
    let x_806 : vec2<f32> = (vec2<f32>(x_801.y, x_801.y) * vec2<f32>(x_804.x, x_804.y));
    let x_807 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_806.x, x_806.y, x_807.z);
    let x_810 : vec4<f32> = x_792.x_MainLightWorldToLight[0i];
    let x_812 : vec3<f32> = vs_INTERP8;
    let x_815 : vec3<f32> = u_xlat20;
    let x_817 : vec2<f32> = ((vec2<f32>(x_810.x, x_810.y) * vec2<f32>(x_812.x, x_812.x)) + vec2<f32>(x_815.x, x_815.y));
    let x_818 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_817.x, x_817.y, x_818.z);
    let x_821 : vec4<f32> = x_792.x_MainLightWorldToLight[2i];
    let x_823 : vec3<f32> = vs_INTERP8;
    let x_826 : vec3<f32> = u_xlat20;
    let x_828 : vec2<f32> = ((vec2<f32>(x_821.x, x_821.y) * vec2<f32>(x_823.z, x_823.z)) + vec2<f32>(x_826.x, x_826.y));
    let x_829 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_828.x, x_828.y, x_829.z);
    let x_831 : vec3<f32> = u_xlat20;
    let x_834 : vec4<f32> = x_792.x_MainLightWorldToLight[3i];
    let x_836 : vec2<f32> = (vec2<f32>(x_831.x, x_831.y) + vec2<f32>(x_834.x, x_834.y));
    let x_837 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_836.x, x_836.y, x_837.z);
    let x_839 : vec3<f32> = u_xlat20;
    let x_843 : vec2<f32> = ((vec2<f32>(x_839.x, x_839.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_844 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_843.x, x_843.y, x_844.z);
    let x_851 : vec3<f32> = u_xlat20;
    let x_854 : f32 = x_53.x_GlobalMipBias.x;
    let x_855 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_851.x, x_851.y), x_854);
    u_xlat7 = x_855;
    let x_857 : f32 = x_792.x_MainLightCookieTextureFormat;
    let x_859 : f32 = x_792.x_MainLightCookieTextureFormat;
    let x_861 : f32 = x_792.x_MainLightCookieTextureFormat;
    let x_863 : f32 = x_792.x_MainLightCookieTextureFormat;
    let x_864 : vec4<f32> = vec4<f32>(x_857, x_859, x_861, x_863);
    let x_871 : vec4<bool> = (vec4<f32>(x_864.x, x_864.y, x_864.z, x_864.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_871.x, x_871.y);
    let x_874 : bool = u_xlatb20.y;
    if (x_874) {
      let x_879 : f32 = u_xlat7.w;
      x_875 = x_879;
    } else {
      let x_882 : f32 = u_xlat7.x;
      x_875 = x_882;
    }
    let x_883 : f32 = x_875;
    u_xlat34 = x_883;
    let x_885 : bool = u_xlatb20.x;
    if (x_885) {
      let x_889 : vec4<f32> = u_xlat7;
      x_886 = vec3<f32>(x_889.x, x_889.y, x_889.z);
    } else {
      let x_892 : f32 = u_xlat34;
      x_886 = vec3<f32>(x_892, x_892, x_892);
    }
    let x_894 : vec3<f32> = x_886;
    u_xlat20 = x_894;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_899 : vec3<f32> = u_xlat20;
  let x_901 : vec4<f32> = x_53.x_MainLightColor;
  u_xlat20 = (x_899 * vec3<f32>(x_901.x, x_901.y, x_901.z));
  let x_904 : vec4<f32> = u_xlat5;
  let x_907 : vec4<f32> = u_xlat4;
  u_xlat7.x = dot(-(vec3<f32>(x_904.x, x_904.y, x_904.z)), vec3<f32>(x_907.x, x_907.y, x_907.z));
  let x_912 : f32 = u_xlat7.x;
  let x_914 : f32 = u_xlat7.x;
  u_xlat7.x = (x_912 + x_914);
  let x_917 : vec4<f32> = u_xlat4;
  let x_919 : vec4<f32> = u_xlat7;
  let x_923 : vec4<f32> = u_xlat5;
  let x_926 : vec3<f32> = ((vec3<f32>(x_917.x, x_917.y, x_917.z) * -(vec3<f32>(x_919.x, x_919.x, x_919.x))) + -(vec3<f32>(x_923.x, x_923.y, x_923.z)));
  let x_927 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_926.x, x_926.y, x_926.z, x_927.w);
  let x_930 : vec4<f32> = u_xlat4;
  let x_932 : vec4<f32> = u_xlat5;
  u_xlat49 = dot(vec3<f32>(x_930.x, x_930.y, x_930.z), vec3<f32>(x_932.x, x_932.y, x_932.z));
  let x_935 : f32 = u_xlat49;
  u_xlat49 = clamp(x_935, 0.0f, 1.0f);
  let x_937 : f32 = u_xlat49;
  u_xlat49 = (-(x_937) + 1.0f);
  let x_940 : f32 = u_xlat49;
  let x_941 : f32 = u_xlat49;
  u_xlat49 = (x_940 * x_941);
  let x_943 : f32 = u_xlat49;
  let x_944 : f32 = u_xlat49;
  u_xlat49 = (x_943 * x_944);
  let x_947 : f32 = u_xlat15.x;
  u_xlat8.x = ((-(x_947) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_955 : f32 = u_xlat15.x;
  let x_957 : f32 = u_xlat8.x;
  u_xlat15.x = (x_955 * x_957);
  let x_961 : f32 = u_xlat15.x;
  u_xlat15.x = (x_961 * 6.0f);
  let x_973 : vec4<f32> = u_xlat7;
  let x_976 : f32 = u_xlat15.x;
  let x_977 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_973.x, x_973.y, x_973.z), x_976);
  u_xlat8 = x_977;
  let x_979 : f32 = u_xlat8.w;
  u_xlat15.x = (x_979 + -1.0f);
  let x_983 : f32 = x_490.unity_SpecCube0_HDR.w;
  let x_985 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_983 * x_985) + 1.0f);
  let x_990 : f32 = u_xlat15.x;
  u_xlat15.x = max(x_990, 0.0f);
  let x_994 : f32 = u_xlat15.x;
  u_xlat15.x = log2(x_994);
  let x_998 : f32 = u_xlat15.x;
  let x_1000 : f32 = x_490.unity_SpecCube0_HDR.y;
  u_xlat15.x = (x_998 * x_1000);
  let x_1004 : f32 = u_xlat15.x;
  u_xlat15.x = exp2(x_1004);
  let x_1008 : f32 = u_xlat15.x;
  let x_1010 : f32 = x_490.unity_SpecCube0_HDR.x;
  u_xlat15.x = (x_1008 * x_1010);
  let x_1013 : vec4<f32> = u_xlat8;
  let x_1015 : vec3<f32> = u_xlat15;
  let x_1017 : vec3<f32> = (vec3<f32>(x_1013.x, x_1013.y, x_1013.z) * vec3<f32>(x_1015.x, x_1015.x, x_1015.x));
  let x_1018 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1017.x, x_1017.y, x_1017.z, x_1018.w);
  let x_1020 : f32 = u_xlat43;
  let x_1022 : f32 = u_xlat43;
  let x_1026 : vec2<f32> = ((vec2<f32>(x_1020, x_1020) * vec2<f32>(x_1022, x_1022)) + vec2<f32>(-1.0f, 1.0f));
  let x_1027 : vec3<f32> = u_xlat15;
  u_xlat15 = vec3<f32>(x_1026.x, x_1027.y, x_1026.y);
  let x_1030 : f32 = u_xlat15.z;
  u_xlat43 = (1.0f / x_1030);
  let x_1033 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1033 + -0.03999999910593032837f);
  let x_1037 : f32 = u_xlat49;
  let x_1039 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1037 * x_1039) + 0.03999999910593032837f);
  let x_1044 : f32 = u_xlat43;
  let x_1046 : f32 = u_xlat3.x;
  u_xlat43 = (x_1044 * x_1046);
  let x_1048 : f32 = u_xlat43;
  let x_1050 : vec4<f32> = u_xlat7;
  let x_1052 : vec3<f32> = (vec3<f32>(x_1048, x_1048, x_1048) * vec3<f32>(x_1050.x, x_1050.y, x_1050.z));
  let x_1053 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1052.x, x_1052.y, x_1052.z, x_1053.w);
  let x_1055 : vec3<f32> = u_xlat17;
  let x_1056 : vec3<f32> = u_xlat2;
  let x_1058 : vec4<f32> = u_xlat7;
  let x_1060 : vec3<f32> = ((x_1055 * x_1056) + vec3<f32>(x_1058.x, x_1058.y, x_1058.z));
  let x_1061 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1060.x, x_1060.y, x_1060.z, x_1061.w);
  let x_1063 : f32 = u_xlat42;
  let x_1065 : f32 = x_490.unity_LightData.z;
  u_xlat42 = (x_1063 * x_1065);
  let x_1067 : vec4<f32> = u_xlat4;
  let x_1070 : vec4<f32> = x_53.x_MainLightPosition;
  u_xlat43 = dot(vec3<f32>(x_1067.x, x_1067.y, x_1067.z), vec3<f32>(x_1070.x, x_1070.y, x_1070.z));
  let x_1073 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1073, 0.0f, 1.0f);
  let x_1075 : f32 = u_xlat42;
  let x_1076 : f32 = u_xlat43;
  u_xlat42 = (x_1075 * x_1076);
  let x_1078 : f32 = u_xlat42;
  let x_1080 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1078, x_1078, x_1078) * x_1080);
  let x_1082 : vec4<f32> = u_xlat5;
  let x_1085 : vec4<f32> = x_53.x_MainLightPosition;
  let x_1087 : vec3<f32> = (vec3<f32>(x_1082.x, x_1082.y, x_1082.z) + vec3<f32>(x_1085.x, x_1085.y, x_1085.z));
  let x_1088 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1087.x, x_1087.y, x_1087.z, x_1088.w);
  let x_1090 : vec4<f32> = u_xlat7;
  let x_1092 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_1090.x, x_1090.y, x_1090.z), vec3<f32>(x_1092.x, x_1092.y, x_1092.z));
  let x_1095 : f32 = u_xlat42;
  u_xlat42 = max(x_1095, 1.17549435e-38f);
  let x_1098 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_1098);
  let x_1100 : f32 = u_xlat42;
  let x_1102 : vec4<f32> = u_xlat7;
  let x_1104 : vec3<f32> = (vec3<f32>(x_1100, x_1100, x_1100) * vec3<f32>(x_1102.x, x_1102.y, x_1102.z));
  let x_1105 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1104.x, x_1104.y, x_1104.z, x_1105.w);
  let x_1107 : vec4<f32> = u_xlat4;
  let x_1109 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_1107.x, x_1107.y, x_1107.z), vec3<f32>(x_1109.x, x_1109.y, x_1109.z));
  let x_1112 : f32 = u_xlat42;
  u_xlat42 = clamp(x_1112, 0.0f, 1.0f);
  let x_1115 : vec4<f32> = x_53.x_MainLightPosition;
  let x_1117 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec3<f32>(x_1115.x, x_1115.y, x_1115.z), vec3<f32>(x_1117.x, x_1117.y, x_1117.z));
  let x_1120 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1120, 0.0f, 1.0f);
  let x_1122 : f32 = u_xlat42;
  let x_1123 : f32 = u_xlat42;
  u_xlat42 = (x_1122 * x_1123);
  let x_1125 : f32 = u_xlat42;
  let x_1127 : f32 = u_xlat15.x;
  u_xlat42 = ((x_1125 * x_1127) + 1.00001001358032226562f);
  let x_1131 : f32 = u_xlat43;
  let x_1132 : f32 = u_xlat43;
  u_xlat43 = (x_1131 * x_1132);
  let x_1134 : f32 = u_xlat42;
  let x_1135 : f32 = u_xlat42;
  u_xlat42 = (x_1134 * x_1135);
  let x_1137 : f32 = u_xlat43;
  u_xlat43 = max(x_1137, 0.10000000149011611938f);
  let x_1140 : f32 = u_xlat42;
  let x_1141 : f32 = u_xlat43;
  u_xlat42 = (x_1140 * x_1141);
  let x_1143 : f32 = u_xlat46;
  let x_1144 : f32 = u_xlat42;
  u_xlat42 = (x_1143 * x_1144);
  let x_1146 : f32 = u_xlat44;
  let x_1147 : f32 = u_xlat42;
  u_xlat42 = (x_1146 / x_1147);
  let x_1149 : f32 = u_xlat42;
  let x_1153 : vec3<f32> = u_xlat2;
  let x_1154 : vec3<f32> = ((vec3<f32>(x_1149, x_1149, x_1149) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_1153);
  let x_1155 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1154.x, x_1154.y, x_1154.z, x_1155.w);
  let x_1157 : vec3<f32> = u_xlat20;
  let x_1158 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_1157 * vec3<f32>(x_1158.x, x_1158.y, x_1158.z));
  let x_1162 : f32 = x_53.x_AdditionalLightsCount.x;
  let x_1164 : f32 = x_490.unity_LightData.y;
  u_xlat42 = min(x_1162, x_1164);
  let x_1166 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_1166));
  let x_1170 : f32 = u_xlat6.x;
  let x_1173 : f32 = x_130.x_AdditionalShadowFadeParams.x;
  let x_1176 : f32 = x_130.x_AdditionalShadowFadeParams.y;
  u_xlat43 = ((x_1170 * x_1173) + x_1176);
  let x_1178 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1178, 0.0f, 1.0f);
  let x_1182 : f32 = x_792.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1184 : f32 = x_792.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1186 : f32 = x_792.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1188 : f32 = x_792.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1189 : vec4<f32> = vec4<f32>(x_1182, x_1184, x_1186, x_1188);
  let x_1195 : vec4<bool> = (vec4<f32>(x_1189.x, x_1189.y, x_1189.z, x_1189.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1195.x, x_1195.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1207 : u32 = u_xlatu_loop_1;
    let x_1208 : u32 = u_xlatu42;
    if ((x_1207 < x_1208)) {
    } else {
      break;
    }
    let x_1211 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_1211 >> 2u);
    let x_1214 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_1214 & 3u));
    let x_1217 : u32 = u_xlatu6;
    let x_1220 : vec4<f32> = x_490.unity_LightIndices[bitcast<i32>(x_1217)];
    let x_1230 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1235 : vec4<u32> = indexable[x_1230];
    u_xlat6.x = dot(x_1220, bitcast<vec4<f32>>(x_1235));
    let x_1241 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_1241);
    let x_1244 : vec3<f32> = vs_INTERP8;
    let x_1255 : i32 = u_xlati6;
    let x_1257 : vec4<f32> = x_1254.x_AdditionalLightsPosition[x_1255];
    let x_1260 : i32 = u_xlati6;
    let x_1262 : vec4<f32> = x_1254.x_AdditionalLightsPosition[x_1260];
    u_xlat9 = ((-(x_1244) * vec3<f32>(x_1257.w, x_1257.w, x_1257.w)) + vec3<f32>(x_1262.x, x_1262.y, x_1262.z));
    let x_1266 : vec3<f32> = u_xlat9;
    let x_1267 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1266, x_1267);
    let x_1269 : f32 = u_xlat35;
    u_xlat35 = max(x_1269, 0.00006103515625f);
    let x_1272 : f32 = u_xlat35;
    u_xlat49 = inverseSqrt(x_1272);
    let x_1275 : f32 = u_xlat49;
    let x_1277 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1275, x_1275, x_1275) * x_1277);
    let x_1280 : f32 = u_xlat35;
    u_xlat50 = (1.0f / x_1280);
    let x_1282 : f32 = u_xlat35;
    let x_1283 : i32 = u_xlati6;
    let x_1285 : f32 = x_1254.x_AdditionalLightsAttenuation[x_1283].x;
    u_xlat35 = (x_1282 * x_1285);
    let x_1287 : f32 = u_xlat35;
    let x_1289 : f32 = u_xlat35;
    u_xlat35 = ((-(x_1287) * x_1289) + 1.0f);
    let x_1292 : f32 = u_xlat35;
    u_xlat35 = max(x_1292, 0.0f);
    let x_1294 : f32 = u_xlat35;
    let x_1295 : f32 = u_xlat35;
    u_xlat35 = (x_1294 * x_1295);
    let x_1297 : f32 = u_xlat35;
    let x_1298 : f32 = u_xlat50;
    u_xlat35 = (x_1297 * x_1298);
    let x_1300 : i32 = u_xlati6;
    let x_1302 : vec4<f32> = x_1254.x_AdditionalLightsSpotDir[x_1300];
    let x_1304 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1302.x, x_1302.y, x_1302.z), x_1304);
    let x_1306 : f32 = u_xlat50;
    let x_1307 : i32 = u_xlati6;
    let x_1309 : f32 = x_1254.x_AdditionalLightsAttenuation[x_1307].z;
    let x_1311 : i32 = u_xlati6;
    let x_1313 : f32 = x_1254.x_AdditionalLightsAttenuation[x_1311].w;
    u_xlat50 = ((x_1306 * x_1309) + x_1313);
    let x_1315 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1315, 0.0f, 1.0f);
    let x_1317 : f32 = u_xlat50;
    let x_1318 : f32 = u_xlat50;
    u_xlat50 = (x_1317 * x_1318);
    let x_1320 : f32 = u_xlat35;
    let x_1321 : f32 = u_xlat50;
    u_xlat35 = (x_1320 * x_1321);
    let x_1325 : i32 = u_xlati6;
    let x_1327 : f32 = x_130.x_AdditionalShadowParams[x_1325].w;
    u_xlati50 = i32(x_1327);
    let x_1330 : i32 = u_xlati50;
    u_xlatb51 = (x_1330 >= 0i);
    let x_1332 : bool = u_xlatb51;
    if (x_1332) {
      let x_1336 : i32 = u_xlati6;
      let x_1338 : f32 = x_130.x_AdditionalShadowParams[x_1336].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1338, x_1338, x_1338, x_1338))));
      let x_1342 : bool = u_xlatb51;
      if (x_1342) {
        let x_1346 : vec3<f32> = u_xlat10;
        let x_1349 : vec3<f32> = u_xlat10;
        let x_1352 : vec4<bool> = (abs(vec4<f32>(x_1346.z, x_1346.z, x_1346.y, x_1346.z)) >= abs(vec4<f32>(x_1349.x, x_1349.y, x_1349.x, x_1349.x)));
        let x_1353 : vec3<bool> = vec3<bool>(x_1352.x, x_1352.y, x_1352.z);
        let x_1354 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1353.x, x_1353.y, x_1353.z, x_1354.w);
        let x_1357 : bool = u_xlatb11.y;
        let x_1359 : bool = u_xlatb11.x;
        u_xlatb51 = (x_1357 & x_1359);
        let x_1361 : vec3<f32> = u_xlat10;
        let x_1364 : vec4<bool> = (-(vec4<f32>(x_1361.z, x_1361.y, x_1361.z, x_1361.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1365 : vec3<bool> = vec3<bool>(x_1364.x, x_1364.y, x_1364.w);
        let x_1366 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1365.x, x_1365.y, x_1366.z, x_1365.z);
        let x_1370 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1370);
        let x_1375 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1375);
        let x_1380 : bool = u_xlatb11.w;
        u_xlat52 = select(0.0f, 1.0f, x_1380);
        let x_1383 : bool = u_xlatb11.z;
        if (x_1383) {
          let x_1388 : f32 = u_xlat11.y;
          x_1384 = x_1388;
        } else {
          let x_1390 : f32 = u_xlat52;
          x_1384 = x_1390;
        }
        let x_1391 : f32 = x_1384;
        u_xlat52 = x_1391;
        let x_1393 : bool = u_xlatb51;
        if (x_1393) {
          let x_1398 : f32 = u_xlat11.x;
          x_1394 = x_1398;
        } else {
          let x_1400 : f32 = u_xlat52;
          x_1394 = x_1400;
        }
        let x_1401 : f32 = x_1394;
        u_xlat51 = x_1401;
        let x_1402 : i32 = u_xlati6;
        let x_1404 : f32 = x_130.x_AdditionalShadowParams[x_1402].w;
        u_xlat52 = trunc(x_1404);
        let x_1406 : f32 = u_xlat51;
        let x_1407 : f32 = u_xlat52;
        u_xlat51 = (x_1406 + x_1407);
        let x_1409 : f32 = u_xlat51;
        u_xlati50 = i32(x_1409);
      }
      let x_1411 : i32 = u_xlati50;
      u_xlati50 = (x_1411 << bitcast<u32>(2i));
      let x_1413 : vec3<f32> = vs_INTERP8;
      let x_1416 : i32 = u_xlati50;
      let x_1419 : i32 = u_xlati50;
      let x_1423 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[((x_1416 + 1i) / 4i)][((x_1419 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1413.y, x_1413.y, x_1413.y, x_1413.y) * x_1423);
      let x_1425 : i32 = u_xlati50;
      let x_1427 : i32 = u_xlati50;
      let x_1430 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[(x_1425 / 4i)][(x_1427 % 4i)];
      let x_1431 : vec3<f32> = vs_INTERP8;
      let x_1434 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1430 * vec4<f32>(x_1431.x, x_1431.x, x_1431.x, x_1431.x)) + x_1434);
      let x_1436 : i32 = u_xlati50;
      let x_1439 : i32 = u_xlati50;
      let x_1443 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[((x_1436 + 2i) / 4i)][((x_1439 + 2i) % 4i)];
      let x_1444 : vec3<f32> = vs_INTERP8;
      let x_1447 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1443 * vec4<f32>(x_1444.z, x_1444.z, x_1444.z, x_1444.z)) + x_1447);
      let x_1449 : vec4<f32> = u_xlat11;
      let x_1450 : i32 = u_xlati50;
      let x_1453 : i32 = u_xlati50;
      let x_1457 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[((x_1450 + 3i) / 4i)][((x_1453 + 3i) % 4i)];
      u_xlat11 = (x_1449 + x_1457);
      let x_1459 : vec4<f32> = u_xlat11;
      let x_1461 : vec4<f32> = u_xlat11;
      let x_1463 : vec3<f32> = (vec3<f32>(x_1459.x, x_1459.y, x_1459.z) / vec3<f32>(x_1461.w, x_1461.w, x_1461.w));
      let x_1464 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1463.x, x_1463.y, x_1463.z, x_1464.w);
      let x_1467 : vec4<f32> = u_xlat11;
      let x_1468 : vec2<f32> = vec2<f32>(x_1467.x, x_1467.y);
      let x_1470 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1468.x, x_1468.y, x_1470);
      let x_1478 : vec3<f32> = txVec1;
      let x_1480 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1478.xy, x_1478.z);
      u_xlat50 = x_1480;
      let x_1481 : i32 = u_xlati6;
      let x_1483 : f32 = x_130.x_AdditionalShadowParams[x_1481].x;
      u_xlat51 = (1.0f + -(x_1483));
      let x_1486 : f32 = u_xlat50;
      let x_1487 : i32 = u_xlati6;
      let x_1489 : f32 = x_130.x_AdditionalShadowParams[x_1487].x;
      let x_1491 : f32 = u_xlat51;
      u_xlat50 = ((x_1486 * x_1489) + x_1491);
      let x_1494 : f32 = u_xlat11.z;
      u_xlatb51 = (0.0f >= x_1494);
      let x_1498 : f32 = u_xlat11.z;
      u_xlatb52 = (x_1498 >= 1.0f);
      let x_1500 : bool = u_xlatb51;
      let x_1501 : bool = u_xlatb52;
      u_xlatb51 = (x_1500 | x_1501);
      let x_1503 : bool = u_xlatb51;
      let x_1504 : f32 = u_xlat50;
      u_xlat50 = select(x_1504, 1.0f, x_1503);
    } else {
      u_xlat50 = 1.0f;
    }
    let x_1507 : f32 = u_xlat50;
    u_xlat51 = (-(x_1507) + 1.0f);
    let x_1510 : f32 = u_xlat43;
    let x_1511 : f32 = u_xlat51;
    let x_1513 : f32 = u_xlat50;
    u_xlat50 = ((x_1510 * x_1511) + x_1513);
    let x_1516 : i32 = u_xlati6;
    u_xlati51 = (1i << bitcast<u32>((x_1516 & 31i)));
    let x_1520 : i32 = u_xlati51;
    let x_1523 : f32 = x_792.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_1520) & bitcast<u32>(x_1523)));
    let x_1527 : i32 = u_xlati51;
    if ((x_1527 != 0i)) {
      let x_1531 : i32 = u_xlati6;
      let x_1533 : f32 = x_792.x_AdditionalLightsLightTypes[x_1531].el;
      u_xlati51 = i32(x_1533);
      let x_1536 : i32 = u_xlati51;
      u_xlati52 = select(1i, 0i, (x_1536 != 0i));
      let x_1540 : i32 = u_xlati6;
      u_xlati11 = (x_1540 << bitcast<u32>(2i));
      let x_1542 : i32 = u_xlati52;
      if ((x_1542 != 0i)) {
        let x_1547 : vec3<f32> = vs_INTERP8;
        let x_1549 : i32 = u_xlati11;
        let x_1552 : i32 = u_xlati11;
        let x_1556 : vec4<f32> = x_792.x_AdditionalLightsWorldToLights[((x_1549 + 1i) / 4i)][((x_1552 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1547.y, x_1547.y, x_1547.y) * vec3<f32>(x_1556.x, x_1556.y, x_1556.w));
        let x_1559 : i32 = u_xlati11;
        let x_1561 : i32 = u_xlati11;
        let x_1564 : vec4<f32> = x_792.x_AdditionalLightsWorldToLights[(x_1559 / 4i)][(x_1561 % 4i)];
        let x_1566 : vec3<f32> = vs_INTERP8;
        let x_1569 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1564.x, x_1564.y, x_1564.w) * vec3<f32>(x_1566.x, x_1566.x, x_1566.x)) + x_1569);
        let x_1571 : i32 = u_xlati11;
        let x_1574 : i32 = u_xlati11;
        let x_1578 : vec4<f32> = x_792.x_AdditionalLightsWorldToLights[((x_1571 + 2i) / 4i)][((x_1574 + 2i) % 4i)];
        let x_1580 : vec3<f32> = vs_INTERP8;
        let x_1583 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1578.x, x_1578.y, x_1578.w) * vec3<f32>(x_1580.z, x_1580.z, x_1580.z)) + x_1583);
        let x_1585 : vec3<f32> = u_xlat25;
        let x_1586 : i32 = u_xlati11;
        let x_1589 : i32 = u_xlati11;
        let x_1593 : vec4<f32> = x_792.x_AdditionalLightsWorldToLights[((x_1586 + 3i) / 4i)][((x_1589 + 3i) % 4i)];
        u_xlat25 = (x_1585 + vec3<f32>(x_1593.x, x_1593.y, x_1593.w));
        let x_1596 : vec3<f32> = u_xlat25;
        let x_1598 : vec3<f32> = u_xlat25;
        let x_1600 : vec2<f32> = (vec2<f32>(x_1596.x, x_1596.y) / vec2<f32>(x_1598.z, x_1598.z));
        let x_1601 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1600.x, x_1600.y, x_1601.z);
        let x_1603 : vec3<f32> = u_xlat25;
        let x_1606 : vec2<f32> = ((vec2<f32>(x_1603.x, x_1603.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1607 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1606.x, x_1606.y, x_1607.z);
        let x_1609 : vec3<f32> = u_xlat25;
        let x_1613 : vec2<f32> = clamp(vec2<f32>(x_1609.x, x_1609.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1614 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1613.x, x_1613.y, x_1614.z);
        let x_1616 : i32 = u_xlati6;
        let x_1618 : vec4<f32> = x_792.x_AdditionalLightsCookieAtlasUVRects[x_1616];
        let x_1620 : vec3<f32> = u_xlat25;
        let x_1623 : i32 = u_xlati6;
        let x_1625 : vec4<f32> = x_792.x_AdditionalLightsCookieAtlasUVRects[x_1623];
        let x_1627 : vec2<f32> = ((vec2<f32>(x_1618.x, x_1618.y) * vec2<f32>(x_1620.x, x_1620.y)) + vec2<f32>(x_1625.z, x_1625.w));
        let x_1628 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1627.x, x_1627.y, x_1628.z);
      } else {
        let x_1631 : i32 = u_xlati51;
        u_xlatb51 = (x_1631 == 1i);
        let x_1633 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_1633);
        let x_1635 : i32 = u_xlati51;
        if ((x_1635 != 0i)) {
          let x_1640 : vec3<f32> = vs_INTERP8;
          let x_1642 : i32 = u_xlati11;
          let x_1645 : i32 = u_xlati11;
          let x_1649 : vec4<f32> = x_792.x_AdditionalLightsWorldToLights[((x_1642 + 1i) / 4i)][((x_1645 + 1i) % 4i)];
          let x_1651 : vec2<f32> = (vec2<f32>(x_1640.y, x_1640.y) * vec2<f32>(x_1649.x, x_1649.y));
          let x_1652 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1651.x, x_1651.y, x_1652.z, x_1652.w);
          let x_1654 : i32 = u_xlati11;
          let x_1656 : i32 = u_xlati11;
          let x_1659 : vec4<f32> = x_792.x_AdditionalLightsWorldToLights[(x_1654 / 4i)][(x_1656 % 4i)];
          let x_1661 : vec3<f32> = vs_INTERP8;
          let x_1664 : vec4<f32> = u_xlat12;
          let x_1666 : vec2<f32> = ((vec2<f32>(x_1659.x, x_1659.y) * vec2<f32>(x_1661.x, x_1661.x)) + vec2<f32>(x_1664.x, x_1664.y));
          let x_1667 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1666.x, x_1666.y, x_1667.z, x_1667.w);
          let x_1669 : i32 = u_xlati11;
          let x_1672 : i32 = u_xlati11;
          let x_1676 : vec4<f32> = x_792.x_AdditionalLightsWorldToLights[((x_1669 + 2i) / 4i)][((x_1672 + 2i) % 4i)];
          let x_1678 : vec3<f32> = vs_INTERP8;
          let x_1681 : vec4<f32> = u_xlat12;
          let x_1683 : vec2<f32> = ((vec2<f32>(x_1676.x, x_1676.y) * vec2<f32>(x_1678.z, x_1678.z)) + vec2<f32>(x_1681.x, x_1681.y));
          let x_1684 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1683.x, x_1683.y, x_1684.z, x_1684.w);
          let x_1686 : vec4<f32> = u_xlat12;
          let x_1688 : i32 = u_xlati11;
          let x_1691 : i32 = u_xlati11;
          let x_1695 : vec4<f32> = x_792.x_AdditionalLightsWorldToLights[((x_1688 + 3i) / 4i)][((x_1691 + 3i) % 4i)];
          let x_1697 : vec2<f32> = (vec2<f32>(x_1686.x, x_1686.y) + vec2<f32>(x_1695.x, x_1695.y));
          let x_1698 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1697.x, x_1697.y, x_1698.z, x_1698.w);
          let x_1700 : vec4<f32> = u_xlat12;
          let x_1703 : vec2<f32> = ((vec2<f32>(x_1700.x, x_1700.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1704 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1703.x, x_1703.y, x_1704.z, x_1704.w);
          let x_1706 : vec4<f32> = u_xlat12;
          let x_1708 : vec2<f32> = fract(vec2<f32>(x_1706.x, x_1706.y));
          let x_1709 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1708.x, x_1708.y, x_1709.z, x_1709.w);
          let x_1711 : i32 = u_xlati6;
          let x_1713 : vec4<f32> = x_792.x_AdditionalLightsCookieAtlasUVRects[x_1711];
          let x_1715 : vec4<f32> = u_xlat12;
          let x_1718 : i32 = u_xlati6;
          let x_1720 : vec4<f32> = x_792.x_AdditionalLightsCookieAtlasUVRects[x_1718];
          let x_1722 : vec2<f32> = ((vec2<f32>(x_1713.x, x_1713.y) * vec2<f32>(x_1715.x, x_1715.y)) + vec2<f32>(x_1720.z, x_1720.w));
          let x_1723 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1722.x, x_1722.y, x_1723.z);
        } else {
          let x_1726 : vec3<f32> = vs_INTERP8;
          let x_1728 : i32 = u_xlati11;
          let x_1731 : i32 = u_xlati11;
          let x_1735 : vec4<f32> = x_792.x_AdditionalLightsWorldToLights[((x_1728 + 1i) / 4i)][((x_1731 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1726.y, x_1726.y, x_1726.y, x_1726.y) * x_1735);
          let x_1737 : i32 = u_xlati11;
          let x_1739 : i32 = u_xlati11;
          let x_1742 : vec4<f32> = x_792.x_AdditionalLightsWorldToLights[(x_1737 / 4i)][(x_1739 % 4i)];
          let x_1743 : vec3<f32> = vs_INTERP8;
          let x_1746 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1742 * vec4<f32>(x_1743.x, x_1743.x, x_1743.x, x_1743.x)) + x_1746);
          let x_1748 : i32 = u_xlati11;
          let x_1751 : i32 = u_xlati11;
          let x_1755 : vec4<f32> = x_792.x_AdditionalLightsWorldToLights[((x_1748 + 2i) / 4i)][((x_1751 + 2i) % 4i)];
          let x_1756 : vec3<f32> = vs_INTERP8;
          let x_1759 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1755 * vec4<f32>(x_1756.z, x_1756.z, x_1756.z, x_1756.z)) + x_1759);
          let x_1761 : vec4<f32> = u_xlat12;
          let x_1762 : i32 = u_xlati11;
          let x_1765 : i32 = u_xlati11;
          let x_1769 : vec4<f32> = x_792.x_AdditionalLightsWorldToLights[((x_1762 + 3i) / 4i)][((x_1765 + 3i) % 4i)];
          u_xlat12 = (x_1761 + x_1769);
          let x_1771 : vec4<f32> = u_xlat12;
          let x_1773 : vec4<f32> = u_xlat12;
          let x_1775 : vec3<f32> = (vec3<f32>(x_1771.x, x_1771.y, x_1771.z) / vec3<f32>(x_1773.w, x_1773.w, x_1773.w));
          let x_1776 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1775.x, x_1775.y, x_1775.z, x_1776.w);
          let x_1778 : vec4<f32> = u_xlat12;
          let x_1780 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(vec3<f32>(x_1778.x, x_1778.y, x_1778.z), vec3<f32>(x_1780.x, x_1780.y, x_1780.z));
          let x_1783 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_1783);
          let x_1785 : f32 = u_xlat51;
          let x_1787 : vec4<f32> = u_xlat12;
          let x_1789 : vec3<f32> = (vec3<f32>(x_1785, x_1785, x_1785) * vec3<f32>(x_1787.x, x_1787.y, x_1787.z));
          let x_1790 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1789.x, x_1789.y, x_1789.z, x_1790.w);
          let x_1792 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(abs(vec3<f32>(x_1792.x, x_1792.y, x_1792.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1797 : f32 = u_xlat51;
          u_xlat51 = max(x_1797, 0.00000099999999747524f);
          let x_1800 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_1800);
          let x_1803 : f32 = u_xlat51;
          let x_1805 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1803, x_1803, x_1803) * vec3<f32>(x_1805.z, x_1805.x, x_1805.y));
          let x_1809 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1809);
          let x_1813 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1813, 0.0f, 1.0f);
          let x_1816 : vec3<f32> = u_xlat13;
          let x_1818 : vec4<bool> = (vec4<f32>(x_1816.y, x_1816.y, x_1816.y, x_1816.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1819 : vec2<bool> = vec2<bool>(x_1818.x, x_1818.w);
          let x_1820 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_1819.x, x_1820.y, x_1820.z, x_1819.y);
          let x_1823 : bool = u_xlatb11.x;
          if (x_1823) {
            let x_1828 : f32 = u_xlat13.x;
            x_1824 = x_1828;
          } else {
            let x_1831 : f32 = u_xlat13.x;
            x_1824 = -(x_1831);
          }
          let x_1833 : f32 = x_1824;
          u_xlat11.x = x_1833;
          let x_1836 : bool = u_xlatb11.w;
          if (x_1836) {
            let x_1841 : f32 = u_xlat13.x;
            x_1837 = x_1841;
          } else {
            let x_1844 : f32 = u_xlat13.x;
            x_1837 = -(x_1844);
          }
          let x_1846 : f32 = x_1837;
          u_xlat11.w = x_1846;
          let x_1848 : vec4<f32> = u_xlat12;
          let x_1850 : f32 = u_xlat51;
          let x_1853 : vec4<f32> = u_xlat11;
          let x_1855 : vec2<f32> = ((vec2<f32>(x_1848.x, x_1848.y) * vec2<f32>(x_1850, x_1850)) + vec2<f32>(x_1853.x, x_1853.w));
          let x_1856 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1855.x, x_1856.y, x_1856.z, x_1855.y);
          let x_1858 : vec4<f32> = u_xlat11;
          let x_1861 : vec2<f32> = ((vec2<f32>(x_1858.x, x_1858.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1862 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1861.x, x_1862.y, x_1862.z, x_1861.y);
          let x_1864 : vec4<f32> = u_xlat11;
          let x_1868 : vec2<f32> = clamp(vec2<f32>(x_1864.x, x_1864.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1869 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1868.x, x_1869.y, x_1869.z, x_1868.y);
          let x_1871 : i32 = u_xlati6;
          let x_1873 : vec4<f32> = x_792.x_AdditionalLightsCookieAtlasUVRects[x_1871];
          let x_1875 : vec4<f32> = u_xlat11;
          let x_1878 : i32 = u_xlati6;
          let x_1880 : vec4<f32> = x_792.x_AdditionalLightsCookieAtlasUVRects[x_1878];
          let x_1882 : vec2<f32> = ((vec2<f32>(x_1873.x, x_1873.y) * vec2<f32>(x_1875.x, x_1875.w)) + vec2<f32>(x_1880.z, x_1880.w));
          let x_1883 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1882.x, x_1882.y, x_1883.z);
        }
      }
      let x_1890 : vec3<f32> = u_xlat25;
      let x_1892 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1890.x, x_1890.y), 0.0f);
      u_xlat11 = x_1892;
      let x_1894 : bool = u_xlatb7.y;
      if (x_1894) {
        let x_1899 : f32 = u_xlat11.w;
        x_1895 = x_1899;
      } else {
        let x_1902 : f32 = u_xlat11.x;
        x_1895 = x_1902;
      }
      let x_1903 : f32 = x_1895;
      u_xlat51 = x_1903;
      let x_1905 : bool = u_xlatb7.x;
      if (x_1905) {
        let x_1909 : vec4<f32> = u_xlat11;
        x_1906 = vec3<f32>(x_1909.x, x_1909.y, x_1909.z);
      } else {
        let x_1912 : f32 = u_xlat51;
        x_1906 = vec3<f32>(x_1912, x_1912, x_1912);
      }
      let x_1914 : vec3<f32> = x_1906;
      let x_1915 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1914.x, x_1914.y, x_1914.z, x_1915.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1921 : vec4<f32> = u_xlat11;
    let x_1923 : i32 = u_xlati6;
    let x_1925 : vec4<f32> = x_1254.x_AdditionalLightsColor[x_1923];
    let x_1927 : vec3<f32> = (vec3<f32>(x_1921.x, x_1921.y, x_1921.z) * vec3<f32>(x_1925.x, x_1925.y, x_1925.z));
    let x_1928 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1927.x, x_1927.y, x_1927.z, x_1928.w);
    let x_1930 : f32 = u_xlat35;
    let x_1931 : f32 = u_xlat50;
    u_xlat6.x = (x_1930 * x_1931);
    let x_1934 : vec4<f32> = u_xlat4;
    let x_1936 : vec3<f32> = u_xlat10;
    u_xlat35 = dot(vec3<f32>(x_1934.x, x_1934.y, x_1934.z), x_1936);
    let x_1938 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1938, 0.0f, 1.0f);
    let x_1941 : f32 = u_xlat6.x;
    let x_1942 : f32 = u_xlat35;
    u_xlat6.x = (x_1941 * x_1942);
    let x_1945 : vec3<f32> = u_xlat6;
    let x_1947 : vec4<f32> = u_xlat11;
    let x_1949 : vec3<f32> = (vec3<f32>(x_1945.x, x_1945.x, x_1945.x) * vec3<f32>(x_1947.x, x_1947.y, x_1947.z));
    let x_1950 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1949.x, x_1949.y, x_1949.z, x_1950.w);
    let x_1952 : vec3<f32> = u_xlat9;
    let x_1953 : f32 = u_xlat49;
    let x_1956 : vec4<f32> = u_xlat5;
    u_xlat9 = ((x_1952 * vec3<f32>(x_1953, x_1953, x_1953)) + vec3<f32>(x_1956.x, x_1956.y, x_1956.z));
    let x_1959 : vec3<f32> = u_xlat9;
    let x_1960 : vec3<f32> = u_xlat9;
    u_xlat6.x = dot(x_1959, x_1960);
    let x_1964 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_1964, 1.17549435e-38f);
    let x_1968 : f32 = u_xlat6.x;
    u_xlat6.x = inverseSqrt(x_1968);
    let x_1971 : vec3<f32> = u_xlat6;
    let x_1973 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1971.x, x_1971.x, x_1971.x) * x_1973);
    let x_1975 : vec4<f32> = u_xlat4;
    let x_1977 : vec3<f32> = u_xlat9;
    u_xlat6.x = dot(vec3<f32>(x_1975.x, x_1975.y, x_1975.z), x_1977);
    let x_1981 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_1981, 0.0f, 1.0f);
    let x_1984 : vec3<f32> = u_xlat10;
    let x_1985 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1984, x_1985);
    let x_1987 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1987, 0.0f, 1.0f);
    let x_1990 : f32 = u_xlat6.x;
    let x_1992 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1990 * x_1992);
    let x_1996 : f32 = u_xlat6.x;
    let x_1998 : f32 = u_xlat15.x;
    u_xlat6.x = ((x_1996 * x_1998) + 1.00001001358032226562f);
    let x_2002 : f32 = u_xlat35;
    let x_2003 : f32 = u_xlat35;
    u_xlat35 = (x_2002 * x_2003);
    let x_2006 : f32 = u_xlat6.x;
    let x_2008 : f32 = u_xlat6.x;
    u_xlat6.x = (x_2006 * x_2008);
    let x_2011 : f32 = u_xlat35;
    u_xlat35 = max(x_2011, 0.10000000149011611938f);
    let x_2014 : f32 = u_xlat6.x;
    let x_2015 : f32 = u_xlat35;
    u_xlat6.x = (x_2014 * x_2015);
    let x_2018 : f32 = u_xlat46;
    let x_2020 : f32 = u_xlat6.x;
    u_xlat6.x = (x_2018 * x_2020);
    let x_2023 : f32 = u_xlat44;
    let x_2025 : f32 = u_xlat6.x;
    u_xlat6.x = (x_2023 / x_2025);
    let x_2028 : vec3<f32> = u_xlat6;
    let x_2031 : vec3<f32> = u_xlat2;
    u_xlat9 = ((vec3<f32>(x_2028.x, x_2028.x, x_2028.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_2031);
    let x_2033 : vec3<f32> = u_xlat9;
    let x_2034 : vec4<f32> = u_xlat11;
    let x_2037 : vec4<f32> = u_xlat8;
    let x_2039 : vec3<f32> = ((x_2033 * vec3<f32>(x_2034.x, x_2034.y, x_2034.z)) + vec3<f32>(x_2037.x, x_2037.y, x_2037.z));
    let x_2040 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2039.x, x_2039.y, x_2039.z, x_2040.w);

    continuing {
      let x_2042 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2042 + bitcast<u32>(1i));
    }
  }
  let x_2044 : vec4<f32> = u_xlat3;
  let x_2046 : f32 = u_xlat47;
  let x_2049 : vec3<f32> = u_xlat20;
  u_xlat2 = ((vec3<f32>(x_2044.x, x_2044.y, x_2044.z) * vec3<f32>(x_2046, x_2046, x_2046)) + x_2049);
  let x_2051 : vec4<f32> = u_xlat8;
  let x_2053 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_2051.x, x_2051.y, x_2051.z) + x_2053);
  let x_2057 : vec4<f32> = vs_INTERP6;
  let x_2059 : vec3<f32> = u_xlat0;
  let x_2061 : vec3<f32> = u_xlat2;
  let x_2062 : vec3<f32> = ((vec3<f32>(x_2057.w, x_2057.w, x_2057.w) * x_2059) + x_2061);
  let x_2063 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2062.x, x_2062.y, x_2062.z, x_2063.w);
  let x_2065 : bool = u_xlatb29;
  if (x_2065) {
    let x_2070 : f32 = u_xlat1.x;
    x_2066 = x_2070;
  } else {
    x_2066 = 1.0f;
  }
  let x_2072 : f32 = x_2066;
  SV_Target0.w = x_2072;
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


