diagnostic(off, derivative_uniformity);

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

alias Arr_1 = array<mat4x4<f32>, 5u>;

alias Arr_2 = array<vec4<f32>, 32u>;

alias Arr_3 = array<mat4x4<f32>, 32u>;

alias Arr_4 = array<vec4<f32>, 32u>;

alias Arr_5 = array<mat4x4<f32>, 32u>;

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
  x_AdditionalLightsWorldToShadow : Arr_5,
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
  x_AdditionalLightsWorldToLights : Arr_5,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_4,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
}

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

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
  x_AdditionalLightsLayerMasks : Arr_8,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_INTERP9 : vec3<f32>;

var<private> u_xlatb14 : vec2<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_48 : UnityPerDraw;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_128 : PGlobals;

var<private> u_xlat5 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_138 : UnityPerMaterial;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat20 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

var<private> vs_INTERP8 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_246 : LightShadows;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu0 : u32;

var<private> u_xlati0 : i32;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat43 : f32;

var<private> u_xlatb43 : bool;

var<private> u_xlat15 : vec3<f32>;

var<private> u_xlat16 : f32;

var<private> u_xlat30 : vec2<f32>;

var<private> u_xlatb16 : bool;

var<private> u_xlat28 : f32;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

var<private> u_xlat46 : f32;

var<private> u_xlat47 : f32;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat48 : f32;

var<private> u_xlatb34 : vec2<bool>;

@group(1) @binding(4) var<uniform> x_895 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatb20 : vec2<bool>;

var<private> u_xlatu48 : u32;

var<private> u_xlati49 : i32;

var<private> u_xlati48 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_1378 : AdditionalLights;

var<private> u_xlat49 : f32;

var<private> u_xlat50 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat51 : f32;

var<private> u_xlati51 : i32;

var<private> u_xlatb52 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat53 : f32;

var<private> u_xlat25 : vec3<f32>;

var<private> u_xlat52 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlati52 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlati25 : i32;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlatb25 : vec3<bool>;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_LinearClamp : sampler;

var<private> u_xlat42 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu46 : u32;

var<private> u_xlatb48 : bool;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_485 : f32;
  var x_524 : f32;
  var x_574 : f32;
  var x_670 : vec3<f32>;
  var x_963 : f32;
  var x_974 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1511 : f32;
  var x_1522 : f32;
  var txVec1 : vec3<f32>;
  var x_1968 : f32;
  var x_1981 : f32;
  var x_2039 : f32;
  var x_2050 : vec3<f32>;
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
  let x_39 : f32 = vs_INTERP4.w;
  u_xlatb14.x = (0.0f < x_39);
  let x_53 : f32 = x_48.unity_WorldTransformParams.w;
  u_xlatb14.y = (x_53 >= 0.0f);
  let x_59 : bool = u_xlatb14.x;
  u_xlat14.x = select(-1.0f, 1.0f, x_59);
  let x_64 : bool = u_xlatb14.y;
  u_xlat14.y = select(-1.0f, 1.0f, x_64);
  let x_68 : f32 = u_xlat14.y;
  let x_70 : f32 = u_xlat14.x;
  u_xlat14.x = (x_68 * x_70);
  let x_74 : vec4<f32> = vs_INTERP4;
  let x_76 : vec3<f32> = vs_INTERP9;
  u_xlat1 = (vec3<f32>(x_74.y, x_74.z, x_74.x) * vec3<f32>(x_76.z, x_76.x, x_76.y));
  let x_79 : vec3<f32> = vs_INTERP9;
  let x_81 : vec4<f32> = vs_INTERP4;
  let x_84 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_79.y, x_79.z, x_79.x) * vec3<f32>(x_81.z, x_81.x, x_81.y)) + -(x_84));
  let x_87 : vec3<f32> = u_xlat14;
  let x_89 : vec3<f32> = u_xlat1;
  u_xlat14 = (vec3<f32>(x_87.x, x_87.x, x_87.x) * x_89);
  let x_91 : vec3<f32> = u_xlat0;
  let x_93 : vec3<f32> = vs_INTERP9;
  u_xlat1 = (vec3<f32>(x_91.x, x_91.x, x_91.x) * x_93);
  let x_97 : vec3<f32> = u_xlat0;
  let x_99 : vec4<f32> = vs_INTERP4;
  let x_101 : vec3<f32> = (vec3<f32>(x_97.x, x_97.x, x_97.x) * vec3<f32>(x_99.x, x_99.y, x_99.z));
  let x_102 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_101.x, x_101.y, x_101.z, x_102.w);
  let x_105 : vec3<f32> = u_xlat14;
  let x_106 : vec3<f32> = u_xlat0;
  let x_108 : vec3<f32> = (x_105 * vec3<f32>(x_106.x, x_106.x, x_106.x));
  let x_109 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_108.x, x_108.y, x_108.z, x_109.w);
  let x_124 : vec4<f32> = vs_INTERP5;
  let x_131 : f32 = x_128.x_GlobalMipBias.x;
  let x_132 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_124.x, x_124.y), x_131);
  u_xlat4 = x_132;
  let x_134 : vec4<f32> = u_xlat4;
  let x_142 : vec4<f32> = x_138.Color_C30C7CA3;
  u_xlat5 = (vec3<f32>(x_134.x, x_134.y, x_134.z) * vec3<f32>(x_142.x, x_142.y, x_142.z));
  let x_151 : vec4<f32> = vs_INTERP5;
  let x_154 : f32 = x_128.x_GlobalMipBias.x;
  let x_155 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_151.x, x_151.y), x_154);
  u_xlat6 = vec4<f32>(x_155.w, x_155.x, x_155.y, x_155.z);
  let x_158 : vec4<f32> = u_xlat6;
  u_xlat7 = ((vec4<f32>(x_158.y, x_158.z, x_158.w, x_158.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_165 : vec4<f32> = u_xlat7;
  let x_166 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_165, x_166);
  let x_170 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_170);
  let x_174 : vec3<f32> = u_xlat0;
  let x_176 : vec4<f32> = u_xlat7;
  u_xlat20 = (vec3<f32>(x_174.x, x_174.x, x_174.x) * vec3<f32>(x_176.x, x_176.y, x_176.z));
  let x_181 : f32 = vs_INTERP6.y;
  u_xlat0.x = (x_181 * 200.0f);
  let x_186 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_186, 1.0f);
  let x_189 : vec3<f32> = u_xlat0;
  let x_191 : vec4<f32> = u_xlat4;
  let x_193 : vec3<f32> = (vec3<f32>(x_189.x, x_189.x, x_189.x) * vec3<f32>(x_191.x, x_191.y, x_191.z));
  let x_194 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
  let x_196 : vec4<f32> = u_xlat3;
  let x_198 : vec3<f32> = u_xlat20;
  let x_200 : vec3<f32> = (vec3<f32>(x_196.x, x_196.y, x_196.z) * vec3<f32>(x_198.y, x_198.y, x_198.y));
  let x_201 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_200.x, x_200.y, x_200.z, x_201.w);
  let x_203 : vec3<f32> = u_xlat20;
  let x_205 : vec4<f32> = u_xlat2;
  let x_208 : vec4<f32> = u_xlat3;
  let x_210 : vec3<f32> = ((vec3<f32>(x_203.x, x_203.x, x_203.x) * vec3<f32>(x_205.x, x_205.y, x_205.z)) + vec3<f32>(x_208.x, x_208.y, x_208.z));
  let x_211 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_210.x, x_210.y, x_210.z, x_211.w);
  let x_213 : vec3<f32> = u_xlat20;
  let x_215 : vec3<f32> = u_xlat1;
  let x_217 : vec4<f32> = u_xlat2;
  u_xlat1 = ((vec3<f32>(x_213.z, x_213.z, x_213.z) * x_215) + vec3<f32>(x_217.x, x_217.y, x_217.z));
  let x_220 : vec3<f32> = u_xlat1;
  let x_221 : vec3<f32> = u_xlat1;
  u_xlat0.x = dot(x_220, x_221);
  let x_225 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_225, 1.17549435e-38f);
  let x_230 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_230);
  let x_233 : vec3<f32> = u_xlat0;
  let x_235 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_233.x, x_233.x, x_233.x) * x_235);
  let x_238 : vec3<f32> = vs_INTERP8;
  let x_248 : vec4<f32> = x_246.x_CascadeShadowSplitSpheres0;
  let x_251 : vec3<f32> = (x_238 + -(vec3<f32>(x_248.x, x_248.y, x_248.z)));
  let x_252 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
  let x_254 : vec3<f32> = vs_INTERP8;
  let x_257 : vec4<f32> = x_246.x_CascadeShadowSplitSpheres1;
  let x_260 : vec3<f32> = (x_254 + -(vec3<f32>(x_257.x, x_257.y, x_257.z)));
  let x_261 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
  let x_263 : vec3<f32> = vs_INTERP8;
  let x_265 : vec4<f32> = x_246.x_CascadeShadowSplitSpheres2;
  let x_268 : vec3<f32> = (x_263 + -(vec3<f32>(x_265.x, x_265.y, x_265.z)));
  let x_269 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
  let x_272 : vec3<f32> = vs_INTERP8;
  let x_275 : vec4<f32> = x_246.x_CascadeShadowSplitSpheres3;
  let x_278 : vec3<f32> = (x_272 + -(vec3<f32>(x_275.x, x_275.y, x_275.z)));
  let x_279 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_278.x, x_278.y, x_278.z, x_279.w);
  let x_281 : vec4<f32> = u_xlat2;
  let x_283 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_281.x, x_281.y, x_281.z), vec3<f32>(x_283.x, x_283.y, x_283.z));
  let x_287 : vec4<f32> = u_xlat3;
  let x_289 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_287.x, x_287.y, x_287.z), vec3<f32>(x_289.x, x_289.y, x_289.z));
  let x_293 : vec4<f32> = u_xlat7;
  let x_295 : vec4<f32> = u_xlat7;
  u_xlat2.z = dot(vec3<f32>(x_293.x, x_293.y, x_293.z), vec3<f32>(x_295.x, x_295.y, x_295.z));
  let x_299 : vec4<f32> = u_xlat8;
  let x_301 : vec4<f32> = u_xlat8;
  u_xlat2.w = dot(vec3<f32>(x_299.x, x_299.y, x_299.z), vec3<f32>(x_301.x, x_301.y, x_301.z));
  let x_308 : vec4<f32> = u_xlat2;
  let x_311 : vec4<f32> = x_246.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_308 < x_311);
  let x_314 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_314);
  let x_318 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_318);
  let x_322 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_322);
  let x_326 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_326);
  let x_330 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_330);
  let x_335 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_335);
  let x_339 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_339);
  let x_342 : vec4<f32> = u_xlat2;
  let x_344 : vec4<f32> = u_xlat3;
  let x_346 : vec3<f32> = (vec3<f32>(x_342.x, x_342.y, x_342.z) + vec3<f32>(x_344.y, x_344.z, x_344.w));
  let x_347 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_346.x, x_346.y, x_346.z, x_347.w);
  let x_349 : vec4<f32> = u_xlat2;
  let x_352 : vec3<f32> = max(vec3<f32>(x_349.x, x_349.y, x_349.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_353 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_353.x, x_352.x, x_352.y, x_352.z);
  let x_355 : vec4<f32> = u_xlat3;
  u_xlat0.x = dot(x_355, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_362 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_362) + 4.0f);
  let x_369 : f32 = u_xlat0.x;
  u_xlatu0 = u32(x_369);
  let x_373 : u32 = u_xlatu0;
  u_xlati0 = (bitcast<i32>(x_373) << bitcast<u32>(2i));
  let x_376 : vec3<f32> = vs_INTERP8;
  let x_378 : i32 = u_xlati0;
  let x_381 : i32 = u_xlati0;
  let x_385 : vec4<f32> = x_246.x_MainLightWorldToShadow[((x_378 + 1i) / 4i)][((x_381 + 1i) % 4i)];
  let x_387 : vec3<f32> = (vec3<f32>(x_376.y, x_376.y, x_376.y) * vec3<f32>(x_385.x, x_385.y, x_385.z));
  let x_388 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
  let x_390 : i32 = u_xlati0;
  let x_392 : i32 = u_xlati0;
  let x_395 : vec4<f32> = x_246.x_MainLightWorldToShadow[(x_390 / 4i)][(x_392 % 4i)];
  let x_397 : vec3<f32> = vs_INTERP8;
  let x_400 : vec4<f32> = u_xlat2;
  let x_402 : vec3<f32> = ((vec3<f32>(x_395.x, x_395.y, x_395.z) * vec3<f32>(x_397.x, x_397.x, x_397.x)) + vec3<f32>(x_400.x, x_400.y, x_400.z));
  let x_403 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_402.x, x_402.y, x_402.z, x_403.w);
  let x_405 : i32 = u_xlati0;
  let x_408 : i32 = u_xlati0;
  let x_412 : vec4<f32> = x_246.x_MainLightWorldToShadow[((x_405 + 2i) / 4i)][((x_408 + 2i) % 4i)];
  let x_414 : vec3<f32> = vs_INTERP8;
  let x_417 : vec4<f32> = u_xlat2;
  let x_419 : vec3<f32> = ((vec3<f32>(x_412.x, x_412.y, x_412.z) * vec3<f32>(x_414.z, x_414.z, x_414.z)) + vec3<f32>(x_417.x, x_417.y, x_417.z));
  let x_420 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_419.x, x_419.y, x_419.z, x_420.w);
  let x_422 : vec4<f32> = u_xlat2;
  let x_424 : i32 = u_xlati0;
  let x_427 : i32 = u_xlati0;
  let x_431 : vec4<f32> = x_246.x_MainLightWorldToShadow[((x_424 + 3i) / 4i)][((x_427 + 3i) % 4i)];
  let x_433 : vec3<f32> = (vec3<f32>(x_422.x, x_422.y, x_422.z) + vec3<f32>(x_431.x, x_431.y, x_431.z));
  let x_434 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_433.x, x_433.y, x_433.z, x_434.w);
  let x_438 : vec4<f32> = u_xlat2;
  let x_439 : vec2<f32> = vec2<f32>(x_438.x, x_438.y);
  let x_441 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_439.x, x_439.y, x_441);
  let x_453 : vec3<f32> = txVec0;
  let x_455 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_453.xy, x_453.z);
  u_xlat0.x = x_455;
  let x_460 : f32 = x_246.x_MainLightShadowParams.x;
  u_xlat43 = (-(x_460) + 1.0f);
  let x_464 : f32 = u_xlat0.x;
  let x_466 : f32 = x_246.x_MainLightShadowParams.x;
  let x_468 : f32 = u_xlat43;
  u_xlat0.x = ((x_464 * x_466) + x_468);
  let x_473 : f32 = u_xlat2.z;
  u_xlatb43 = (0.0f >= x_473);
  let x_476 : f32 = u_xlat2.z;
  u_xlatb2.x = (x_476 >= 1.0f);
  let x_479 : bool = u_xlatb43;
  let x_481 : bool = u_xlatb2.x;
  u_xlatb43 = (x_479 | x_481);
  let x_483 : bool = u_xlatb43;
  if (x_483) {
    x_485 = 1.0f;
  } else {
    let x_490 : f32 = u_xlat0.x;
    x_485 = x_490;
  }
  let x_491 : f32 = x_485;
  u_xlat0.x = x_491;
  let x_493 : vec3<f32> = u_xlat1;
  let x_495 : vec4<f32> = x_128.x_MainLightPosition;
  u_xlat1.x = dot(x_493, -(vec3<f32>(x_495.x, x_495.y, x_495.z)));
  let x_501 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_501, 0.0f, 1.0f);
  let x_505 : vec3<f32> = u_xlat0;
  let x_508 : vec4<f32> = x_128.x_MainLightColor;
  u_xlat15 = (vec3<f32>(x_505.x, x_505.x, x_505.x) * vec3<f32>(x_508.x, x_508.y, x_508.z));
  let x_511 : vec3<f32> = u_xlat15;
  let x_512 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_511 * vec3<f32>(x_512.x, x_512.x, x_512.x));
  let x_515 : vec3<f32> = u_xlat1;
  let x_516 : vec4<f32> = u_xlat4;
  u_xlat1 = (x_515 * vec3<f32>(x_516.x, x_516.y, x_516.z));
  let x_520 : f32 = u_xlat4.w;
  u_xlatb43 = (x_520 >= 0.40000000596046447754f);
  let x_523 : bool = u_xlatb43;
  if (x_523) {
    let x_528 : f32 = u_xlat4.w;
    x_524 = x_528;
  } else {
    x_524 = 0.0f;
  }
  let x_530 : f32 = x_524;
  u_xlat43 = x_530;
  let x_532 : f32 = u_xlat4.w;
  u_xlat2.x = (x_532 + -0.40000000596046447754f);
  let x_538 : f32 = u_xlat4.w;
  u_xlat16 = dpdxCoarse(x_538);
  let x_543 : f32 = u_xlat4.w;
  u_xlat30.x = dpdyCoarse(x_543);
  let x_547 : f32 = u_xlat30.x;
  let x_549 : f32 = u_xlat16;
  u_xlat16 = (abs(x_547) + abs(x_549));
  let x_552 : f32 = u_xlat16;
  u_xlat16 = max(x_552, 0.00009999999747378752f);
  let x_556 : f32 = u_xlat2.x;
  let x_557 : f32 = u_xlat16;
  u_xlat2.x = (x_556 / x_557);
  let x_561 : f32 = u_xlat2.x;
  u_xlat2.x = (x_561 + 0.5f);
  let x_566 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_566, 0.0f, 1.0f);
  let x_571 : f32 = x_128.x_AlphaToMaskAvailable;
  u_xlatb16 = !((x_571 == 0.0f));
  let x_573 : bool = u_xlatb16;
  if (x_573) {
    let x_578 : f32 = u_xlat2.x;
    x_574 = x_578;
  } else {
    let x_580 : f32 = u_xlat43;
    x_574 = x_580;
  }
  let x_581 : f32 = x_574;
  u_xlat43 = x_581;
  let x_582 : f32 = u_xlat43;
  u_xlat2.x = (x_582 + -0.00009999999747378752f);
  let x_587 : f32 = u_xlat2.x;
  u_xlatb2.x = (x_587 < 0.0f);
  let x_591 : bool = u_xlatb2.x;
  if (((select(0i, 1i, x_591) * -1i) != 0i)) {
    discard;
  }
  let x_599 : vec3<f32> = u_xlat14;
  let x_600 : vec3<f32> = u_xlat20;
  u_xlat14 = (x_599 * vec3<f32>(x_600.y, x_600.y, x_600.y));
  let x_603 : vec3<f32> = u_xlat20;
  let x_605 : vec4<f32> = vs_INTERP4;
  let x_608 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_603.x, x_603.x, x_603.x) * vec3<f32>(x_605.x, x_605.y, x_605.z)) + x_608);
  let x_610 : vec3<f32> = u_xlat20;
  let x_612 : vec3<f32> = vs_INTERP9;
  let x_614 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_610.z, x_610.z, x_610.z) * x_612) + x_614);
  let x_616 : vec3<f32> = u_xlat14;
  let x_617 : vec3<f32> = u_xlat14;
  u_xlat2.x = dot(x_616, x_617);
  let x_621 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_621);
  let x_624 : vec3<f32> = u_xlat14;
  let x_625 : vec4<f32> = u_xlat2;
  let x_627 : vec3<f32> = (x_624 * vec3<f32>(x_625.x, x_625.x, x_625.x));
  let x_628 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_627.x, x_627.y, x_627.z, x_628.w);
  let x_632 : f32 = x_128.unity_OrthoParams.w;
  u_xlatb14.x = (x_632 == 0.0f);
  let x_635 : vec3<f32> = vs_INTERP8;
  let x_639 : vec3<f32> = x_128.x_WorldSpaceCameraPos;
  let x_640 : vec3<f32> = (-(x_635) + x_639);
  let x_641 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_640.x, x_641.y, x_640.y, x_640.z);
  let x_644 : vec4<f32> = u_xlat2;
  let x_646 : vec4<f32> = u_xlat2;
  u_xlat28 = dot(vec3<f32>(x_644.x, x_644.z, x_644.w), vec3<f32>(x_646.x, x_646.z, x_646.w));
  let x_649 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_649);
  let x_651 : f32 = u_xlat28;
  let x_653 : vec4<f32> = u_xlat2;
  let x_655 : vec3<f32> = (vec3<f32>(x_651, x_651, x_651) * vec3<f32>(x_653.x, x_653.z, x_653.w));
  let x_656 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_655.x, x_656.y, x_655.y, x_655.z);
  let x_660 : f32 = x_128.unity_MatrixV[0i].z;
  u_xlat4.x = x_660;
  let x_663 : f32 = x_128.unity_MatrixV[1i].z;
  u_xlat4.y = x_663;
  let x_666 : f32 = x_128.unity_MatrixV[2i].z;
  u_xlat4.z = x_666;
  let x_669 : bool = u_xlatb14.x;
  if (x_669) {
    let x_673 : vec4<f32> = u_xlat2;
    x_670 = vec3<f32>(x_673.x, x_673.z, x_673.w);
  } else {
    let x_676 : vec4<f32> = u_xlat4;
    x_670 = vec3<f32>(x_676.x, x_676.y, x_676.z);
  }
  let x_678 : vec3<f32> = x_670;
  u_xlat14 = x_678;
  let x_680 : f32 = vs_INTERP8.y;
  let x_682 : f32 = x_128.unity_MatrixV[1i].z;
  u_xlat2.x = (x_680 * x_682);
  let x_686 : f32 = x_128.unity_MatrixV[0i].z;
  let x_688 : f32 = vs_INTERP8.x;
  let x_691 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_686 * x_688) + x_691);
  let x_695 : f32 = x_128.unity_MatrixV[2i].z;
  let x_697 : f32 = vs_INTERP8.z;
  let x_700 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_695 * x_697) + x_700);
  let x_704 : f32 = u_xlat2.x;
  let x_706 : f32 = x_128.unity_MatrixV[3i].z;
  u_xlat2.x = (x_704 + x_706);
  let x_710 : f32 = u_xlat2.x;
  let x_714 : f32 = x_128.x_ProjectionParams.y;
  u_xlat2.x = (-(x_710) + -(x_714));
  let x_719 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_719, 0.0f);
  let x_723 : f32 = u_xlat2.x;
  let x_725 : f32 = x_128.unity_FogParams.x;
  u_xlat2.x = (x_723 * x_725);
  u_xlat3.w = 1.0f;
  let x_731 : vec4<f32> = x_48.unity_SHAr;
  let x_732 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_731, x_732);
  let x_737 : vec4<f32> = x_48.unity_SHAg;
  let x_738 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_737, x_738);
  let x_743 : vec4<f32> = x_48.unity_SHAb;
  let x_744 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_743, x_744);
  let x_747 : vec4<f32> = u_xlat3;
  let x_749 : vec4<f32> = u_xlat3;
  u_xlat7 = (vec4<f32>(x_747.y, x_747.z, x_747.z, x_747.x) * vec4<f32>(x_749.x, x_749.y, x_749.z, x_749.z));
  let x_754 : vec4<f32> = x_48.unity_SHBr;
  let x_755 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_754, x_755);
  let x_760 : vec4<f32> = x_48.unity_SHBg;
  let x_761 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_760, x_761);
  let x_766 : vec4<f32> = x_48.unity_SHBb;
  let x_767 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_766, x_767);
  let x_771 : f32 = u_xlat3.y;
  let x_773 : f32 = u_xlat3.y;
  u_xlat30.x = (x_771 * x_773);
  let x_777 : f32 = u_xlat3.x;
  let x_779 : f32 = u_xlat3.x;
  let x_782 : f32 = u_xlat30.x;
  u_xlat30.x = ((x_777 * x_779) + -(x_782));
  let x_788 : vec4<f32> = x_48.unity_SHC;
  let x_790 : vec2<f32> = u_xlat30;
  let x_793 : vec4<f32> = u_xlat8;
  u_xlat20 = ((vec3<f32>(x_788.x, x_788.y, x_788.z) * vec3<f32>(x_790.x, x_790.x, x_790.x)) + vec3<f32>(x_793.x, x_793.y, x_793.z));
  let x_796 : vec4<f32> = u_xlat4;
  let x_798 : vec3<f32> = u_xlat20;
  let x_799 : vec3<f32> = (vec3<f32>(x_796.x, x_796.y, x_796.z) + x_798);
  let x_800 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_799.x, x_799.y, x_799.z, x_800.w);
  let x_802 : vec4<f32> = u_xlat4;
  let x_804 : vec3<f32> = max(vec3<f32>(x_802.x, x_802.y, x_802.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_805 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_804.x, x_804.y, x_804.z, x_805.w);
  let x_808 : f32 = u_xlat6.x;
  u_xlat6.x = x_808;
  let x_811 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_811, 0.0f, 1.0f);
  let x_814 : f32 = u_xlat43;
  u_xlat43 = min(x_814, 1.0f);
  let x_816 : vec3<f32> = u_xlat5;
  u_xlat5 = (x_816 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_821 : f32 = u_xlat6.x;
  u_xlat30.x = (-(x_821) + 1.0f);
  let x_827 : f32 = u_xlat30.x;
  let x_829 : f32 = u_xlat30.x;
  u_xlat44 = (x_827 * x_829);
  let x_831 : f32 = u_xlat44;
  u_xlat44 = max(x_831, 0.0078125f);
  let x_835 : f32 = u_xlat44;
  let x_836 : f32 = u_xlat44;
  u_xlat45 = (x_835 * x_836);
  let x_840 : f32 = u_xlat6.x;
  u_xlat46 = (x_840 + 0.04000002145767211914f);
  let x_843 : f32 = u_xlat46;
  u_xlat46 = min(x_843, 1.0f);
  let x_846 : f32 = u_xlat44;
  u_xlat47 = ((x_846 * 4.0f) + 2.0f);
  let x_850 : f32 = vs_INTERP6.w;
  u_xlat6.x = min(x_850, 1.0f);
  let x_853 : vec3<f32> = vs_INTERP8;
  let x_855 : vec3<f32> = x_128.x_WorldSpaceCameraPos;
  u_xlat20 = (x_853 + -(x_855));
  let x_858 : vec3<f32> = u_xlat20;
  let x_859 : vec3<f32> = u_xlat20;
  u_xlat20.x = dot(x_858, x_859);
  let x_864 : f32 = u_xlat20.x;
  let x_866 : f32 = x_246.x_MainLightShadowParams.z;
  let x_869 : f32 = x_246.x_MainLightShadowParams.w;
  u_xlat34.x = ((x_864 * x_866) + x_869);
  let x_873 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_873, 0.0f, 1.0f);
  let x_878 : f32 = u_xlat0.x;
  u_xlat48 = (-(x_878) + 1.0f);
  let x_882 : f32 = u_xlat34.x;
  let x_883 : f32 = u_xlat48;
  let x_886 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_882 * x_883) + x_886);
  let x_897 : f32 = x_895.x_MainLightCookieTextureFormat;
  u_xlatb34.x = !((x_897 == -1.0f));
  let x_901 : bool = u_xlatb34.x;
  if (x_901) {
    let x_904 : vec3<f32> = vs_INTERP8;
    let x_907 : vec4<f32> = x_895.x_MainLightWorldToLight[1i];
    u_xlat34 = (vec2<f32>(x_904.y, x_904.y) * vec2<f32>(x_907.x, x_907.y));
    let x_911 : vec4<f32> = x_895.x_MainLightWorldToLight[0i];
    let x_913 : vec3<f32> = vs_INTERP8;
    let x_916 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_911.x, x_911.y) * vec2<f32>(x_913.x, x_913.x)) + x_916);
    let x_919 : vec4<f32> = x_895.x_MainLightWorldToLight[2i];
    let x_921 : vec3<f32> = vs_INTERP8;
    let x_924 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_919.x, x_919.y) * vec2<f32>(x_921.z, x_921.z)) + x_924);
    let x_926 : vec2<f32> = u_xlat34;
    let x_928 : vec4<f32> = x_895.x_MainLightWorldToLight[3i];
    u_xlat34 = (x_926 + vec2<f32>(x_928.x, x_928.y));
    let x_931 : vec2<f32> = u_xlat34;
    u_xlat34 = ((x_931 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_940 : vec2<f32> = u_xlat34;
    let x_942 : f32 = x_128.x_GlobalMipBias.x;
    let x_943 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_940, x_942);
    u_xlat7 = x_943;
    let x_945 : f32 = x_895.x_MainLightCookieTextureFormat;
    let x_947 : f32 = x_895.x_MainLightCookieTextureFormat;
    let x_949 : f32 = x_895.x_MainLightCookieTextureFormat;
    let x_951 : f32 = x_895.x_MainLightCookieTextureFormat;
    let x_952 : vec4<f32> = vec4<f32>(x_945, x_947, x_949, x_951);
    let x_959 : vec4<bool> = (vec4<f32>(x_952.x, x_952.y, x_952.z, x_952.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb34 = vec2<bool>(x_959.x, x_959.y);
    let x_962 : bool = u_xlatb34.y;
    if (x_962) {
      let x_967 : f32 = u_xlat7.w;
      x_963 = x_967;
    } else {
      let x_970 : f32 = u_xlat7.x;
      x_963 = x_970;
    }
    let x_971 : f32 = x_963;
    u_xlat48 = x_971;
    let x_973 : bool = u_xlatb34.x;
    if (x_973) {
      let x_977 : vec4<f32> = u_xlat7;
      x_974 = vec3<f32>(x_977.x, x_977.y, x_977.z);
    } else {
      let x_980 : f32 = u_xlat48;
      x_974 = vec3<f32>(x_980, x_980, x_980);
    }
    let x_982 : vec3<f32> = x_974;
    let x_983 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_982.x, x_982.y, x_982.z, x_983.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_989 : vec4<f32> = u_xlat7;
  let x_992 : vec4<f32> = x_128.x_MainLightColor;
  let x_994 : vec3<f32> = (vec3<f32>(x_989.x, x_989.y, x_989.z) * vec3<f32>(x_992.x, x_992.y, x_992.z));
  let x_995 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_994.x, x_994.y, x_994.z, x_995.w);
  let x_997 : vec3<f32> = u_xlat14;
  let x_999 : vec4<f32> = u_xlat3;
  u_xlat34.x = dot(-(x_997), vec3<f32>(x_999.x, x_999.y, x_999.z));
  let x_1004 : f32 = u_xlat34.x;
  let x_1006 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1004 + x_1006);
  let x_1009 : vec4<f32> = u_xlat3;
  let x_1011 : vec2<f32> = u_xlat34;
  let x_1015 : vec3<f32> = u_xlat14;
  let x_1017 : vec3<f32> = ((vec3<f32>(x_1009.x, x_1009.y, x_1009.z) * -(vec3<f32>(x_1011.x, x_1011.x, x_1011.x))) + -(x_1015));
  let x_1018 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1017.x, x_1017.y, x_1017.z, x_1018.w);
  let x_1020 : vec4<f32> = u_xlat3;
  let x_1022 : vec3<f32> = u_xlat14;
  u_xlat34.x = dot(vec3<f32>(x_1020.x, x_1020.y, x_1020.z), x_1022);
  let x_1026 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_1026, 0.0f, 1.0f);
  let x_1030 : f32 = u_xlat34.x;
  u_xlat34.x = (-(x_1030) + 1.0f);
  let x_1035 : f32 = u_xlat34.x;
  let x_1037 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1035 * x_1037);
  let x_1041 : f32 = u_xlat34.x;
  let x_1043 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1041 * x_1043);
  let x_1047 : f32 = u_xlat30.x;
  u_xlat48 = ((-(x_1047) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1054 : f32 = u_xlat30.x;
  let x_1055 : f32 = u_xlat48;
  u_xlat30.x = (x_1054 * x_1055);
  let x_1059 : f32 = u_xlat30.x;
  u_xlat30.x = (x_1059 * 6.0f);
  let x_1071 : vec4<f32> = u_xlat8;
  let x_1074 : f32 = u_xlat30.x;
  let x_1075 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1071.x, x_1071.y, x_1071.z), x_1074);
  u_xlat8 = x_1075;
  let x_1077 : f32 = u_xlat8.w;
  u_xlat30.x = (x_1077 + -1.0f);
  let x_1081 : f32 = x_48.unity_SpecCube0_HDR.w;
  let x_1083 : f32 = u_xlat30.x;
  u_xlat30.x = ((x_1081 * x_1083) + 1.0f);
  let x_1088 : f32 = u_xlat30.x;
  u_xlat30.x = max(x_1088, 0.0f);
  let x_1092 : f32 = u_xlat30.x;
  u_xlat30.x = log2(x_1092);
  let x_1096 : f32 = u_xlat30.x;
  let x_1098 : f32 = x_48.unity_SpecCube0_HDR.y;
  u_xlat30.x = (x_1096 * x_1098);
  let x_1102 : f32 = u_xlat30.x;
  u_xlat30.x = exp2(x_1102);
  let x_1106 : f32 = u_xlat30.x;
  let x_1108 : f32 = x_48.unity_SpecCube0_HDR.x;
  u_xlat30.x = (x_1106 * x_1108);
  let x_1111 : vec4<f32> = u_xlat8;
  let x_1113 : vec2<f32> = u_xlat30;
  let x_1115 : vec3<f32> = (vec3<f32>(x_1111.x, x_1111.y, x_1111.z) * vec3<f32>(x_1113.x, x_1113.x, x_1113.x));
  let x_1116 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1115.x, x_1115.y, x_1115.z, x_1116.w);
  let x_1118 : f32 = u_xlat44;
  let x_1120 : f32 = u_xlat44;
  u_xlat30 = ((vec2<f32>(x_1118, x_1118) * vec2<f32>(x_1120, x_1120)) + vec2<f32>(-1.0f, 1.0f));
  let x_1126 : f32 = u_xlat30.y;
  u_xlat44 = (1.0f / x_1126);
  let x_1128 : f32 = u_xlat46;
  u_xlat46 = (x_1128 + -0.03999999910593032837f);
  let x_1132 : f32 = u_xlat34.x;
  let x_1133 : f32 = u_xlat46;
  u_xlat46 = ((x_1132 * x_1133) + 0.03999999910593032837f);
  let x_1137 : f32 = u_xlat44;
  let x_1138 : f32 = u_xlat46;
  u_xlat44 = (x_1137 * x_1138);
  let x_1140 : f32 = u_xlat44;
  let x_1142 : vec4<f32> = u_xlat8;
  let x_1144 : vec3<f32> = (vec3<f32>(x_1140, x_1140, x_1140) * vec3<f32>(x_1142.x, x_1142.y, x_1142.z));
  let x_1145 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1144.x, x_1144.y, x_1144.z, x_1145.w);
  let x_1147 : vec4<f32> = u_xlat4;
  let x_1149 : vec3<f32> = u_xlat5;
  let x_1151 : vec4<f32> = u_xlat8;
  let x_1153 : vec3<f32> = ((vec3<f32>(x_1147.x, x_1147.y, x_1147.z) * x_1149) + vec3<f32>(x_1151.x, x_1151.y, x_1151.z));
  let x_1154 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1153.x, x_1153.y, x_1153.z, x_1154.w);
  let x_1157 : f32 = u_xlat0.x;
  let x_1159 : f32 = x_48.unity_LightData.z;
  u_xlat0.x = (x_1157 * x_1159);
  let x_1162 : vec4<f32> = u_xlat3;
  let x_1165 : vec4<f32> = x_128.x_MainLightPosition;
  u_xlat44 = dot(vec3<f32>(x_1162.x, x_1162.y, x_1162.z), vec3<f32>(x_1165.x, x_1165.y, x_1165.z));
  let x_1168 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1168, 0.0f, 1.0f);
  let x_1171 : f32 = u_xlat0.x;
  let x_1172 : f32 = u_xlat44;
  u_xlat0.x = (x_1171 * x_1172);
  let x_1175 : vec3<f32> = u_xlat0;
  let x_1177 : vec4<f32> = u_xlat7;
  let x_1179 : vec3<f32> = (vec3<f32>(x_1175.x, x_1175.x, x_1175.x) * vec3<f32>(x_1177.x, x_1177.y, x_1177.z));
  let x_1180 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1179.x, x_1179.y, x_1179.z, x_1180.w);
  let x_1182 : vec3<f32> = u_xlat14;
  let x_1184 : vec4<f32> = x_128.x_MainLightPosition;
  let x_1186 : vec3<f32> = (x_1182 + vec3<f32>(x_1184.x, x_1184.y, x_1184.z));
  let x_1187 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1186.x, x_1186.y, x_1186.z, x_1187.w);
  let x_1189 : vec4<f32> = u_xlat8;
  let x_1191 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_1189.x, x_1189.y, x_1189.z), vec3<f32>(x_1191.x, x_1191.y, x_1191.z));
  let x_1196 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1196, 1.17549435e-38f);
  let x_1200 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1200);
  let x_1203 : vec3<f32> = u_xlat0;
  let x_1205 : vec4<f32> = u_xlat8;
  let x_1207 : vec3<f32> = (vec3<f32>(x_1203.x, x_1203.x, x_1203.x) * vec3<f32>(x_1205.x, x_1205.y, x_1205.z));
  let x_1208 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1207.x, x_1207.y, x_1207.z, x_1208.w);
  let x_1210 : vec4<f32> = u_xlat3;
  let x_1212 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_1210.x, x_1210.y, x_1210.z), vec3<f32>(x_1212.x, x_1212.y, x_1212.z));
  let x_1217 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1217, 0.0f, 1.0f);
  let x_1221 : vec4<f32> = x_128.x_MainLightPosition;
  let x_1223 : vec4<f32> = u_xlat8;
  u_xlat44 = dot(vec3<f32>(x_1221.x, x_1221.y, x_1221.z), vec3<f32>(x_1223.x, x_1223.y, x_1223.z));
  let x_1226 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1226, 0.0f, 1.0f);
  let x_1229 : f32 = u_xlat0.x;
  let x_1231 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1229 * x_1231);
  let x_1235 : f32 = u_xlat0.x;
  let x_1237 : f32 = u_xlat30.x;
  u_xlat0.x = ((x_1235 * x_1237) + 1.00001001358032226562f);
  let x_1242 : f32 = u_xlat44;
  let x_1243 : f32 = u_xlat44;
  u_xlat44 = (x_1242 * x_1243);
  let x_1246 : f32 = u_xlat0.x;
  let x_1248 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1246 * x_1248);
  let x_1251 : f32 = u_xlat44;
  u_xlat44 = max(x_1251, 0.10000000149011611938f);
  let x_1255 : f32 = u_xlat0.x;
  let x_1256 : f32 = u_xlat44;
  u_xlat0.x = (x_1255 * x_1256);
  let x_1259 : f32 = u_xlat47;
  let x_1261 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1259 * x_1261);
  let x_1264 : f32 = u_xlat45;
  let x_1266 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1264 / x_1266);
  let x_1269 : vec3<f32> = u_xlat0;
  let x_1273 : vec3<f32> = u_xlat5;
  let x_1274 : vec3<f32> = ((vec3<f32>(x_1269.x, x_1269.x, x_1269.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_1273);
  let x_1275 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1274.x, x_1274.y, x_1274.z, x_1275.w);
  let x_1277 : vec4<f32> = u_xlat7;
  let x_1279 : vec4<f32> = u_xlat8;
  let x_1281 : vec3<f32> = (vec3<f32>(x_1277.x, x_1277.y, x_1277.z) * vec3<f32>(x_1279.x, x_1279.y, x_1279.z));
  let x_1282 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1281.x, x_1281.y, x_1281.z, x_1282.w);
  let x_1285 : f32 = x_128.x_AdditionalLightsCount.x;
  let x_1287 : f32 = x_48.unity_LightData.y;
  u_xlat0.x = min(x_1285, x_1287);
  let x_1291 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1291));
  let x_1295 : f32 = u_xlat20.x;
  let x_1298 : f32 = x_246.x_AdditionalShadowFadeParams.x;
  let x_1301 : f32 = x_246.x_AdditionalShadowFadeParams.y;
  u_xlat44 = ((x_1295 * x_1298) + x_1301);
  let x_1303 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1303, 0.0f, 1.0f);
  let x_1307 : f32 = x_895.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1309 : f32 = x_895.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1311 : f32 = x_895.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1313 : f32 = x_895.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1314 : vec4<f32> = vec4<f32>(x_1307, x_1309, x_1311, x_1313);
  let x_1321 : vec4<bool> = (vec4<f32>(x_1314.x, x_1314.y, x_1314.z, x_1314.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb20 = vec2<bool>(x_1321.x, x_1321.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1333 : u32 = u_xlatu_loop_1;
    let x_1334 : u32 = u_xlatu0;
    if ((x_1333 < x_1334)) {
    } else {
      break;
    }
    let x_1337 : u32 = u_xlatu_loop_1;
    u_xlatu48 = (x_1337 >> 2u);
    let x_1340 : u32 = u_xlatu_loop_1;
    u_xlati49 = bitcast<i32>((x_1340 & 3u));
    let x_1343 : u32 = u_xlatu48;
    let x_1346 : vec4<f32> = x_48.unity_LightIndices[bitcast<i32>(x_1343)];
    let x_1356 : i32 = u_xlati49;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1361 : vec4<u32> = indexable[x_1356];
    u_xlat48 = dot(x_1346, bitcast<vec4<f32>>(x_1361));
    let x_1365 : f32 = u_xlat48;
    u_xlati48 = i32(x_1365);
    let x_1368 : vec3<f32> = vs_INTERP8;
    let x_1379 : i32 = u_xlati48;
    let x_1381 : vec4<f32> = x_1378.x_AdditionalLightsPosition[x_1379];
    let x_1384 : i32 = u_xlati48;
    let x_1386 : vec4<f32> = x_1378.x_AdditionalLightsPosition[x_1384];
    u_xlat9 = ((-(x_1368) * vec3<f32>(x_1381.w, x_1381.w, x_1381.w)) + vec3<f32>(x_1386.x, x_1386.y, x_1386.z));
    let x_1390 : vec3<f32> = u_xlat9;
    let x_1391 : vec3<f32> = u_xlat9;
    u_xlat49 = dot(x_1390, x_1391);
    let x_1393 : f32 = u_xlat49;
    u_xlat49 = max(x_1393, 0.00006103515625f);
    let x_1397 : f32 = u_xlat49;
    u_xlat50 = inverseSqrt(x_1397);
    let x_1400 : f32 = u_xlat50;
    let x_1402 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1400, x_1400, x_1400) * x_1402);
    let x_1405 : f32 = u_xlat49;
    u_xlat51 = (1.0f / x_1405);
    let x_1407 : f32 = u_xlat49;
    let x_1408 : i32 = u_xlati48;
    let x_1410 : f32 = x_1378.x_AdditionalLightsAttenuation[x_1408].x;
    u_xlat49 = (x_1407 * x_1410);
    let x_1412 : f32 = u_xlat49;
    let x_1414 : f32 = u_xlat49;
    u_xlat49 = ((-(x_1412) * x_1414) + 1.0f);
    let x_1417 : f32 = u_xlat49;
    u_xlat49 = max(x_1417, 0.0f);
    let x_1419 : f32 = u_xlat49;
    let x_1420 : f32 = u_xlat49;
    u_xlat49 = (x_1419 * x_1420);
    let x_1422 : f32 = u_xlat49;
    let x_1423 : f32 = u_xlat51;
    u_xlat49 = (x_1422 * x_1423);
    let x_1425 : i32 = u_xlati48;
    let x_1427 : vec4<f32> = x_1378.x_AdditionalLightsSpotDir[x_1425];
    let x_1429 : vec3<f32> = u_xlat10;
    u_xlat51 = dot(vec3<f32>(x_1427.x, x_1427.y, x_1427.z), x_1429);
    let x_1431 : f32 = u_xlat51;
    let x_1432 : i32 = u_xlati48;
    let x_1434 : f32 = x_1378.x_AdditionalLightsAttenuation[x_1432].z;
    let x_1436 : i32 = u_xlati48;
    let x_1438 : f32 = x_1378.x_AdditionalLightsAttenuation[x_1436].w;
    u_xlat51 = ((x_1431 * x_1434) + x_1438);
    let x_1440 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1440, 0.0f, 1.0f);
    let x_1442 : f32 = u_xlat51;
    let x_1443 : f32 = u_xlat51;
    u_xlat51 = (x_1442 * x_1443);
    let x_1445 : f32 = u_xlat49;
    let x_1446 : f32 = u_xlat51;
    u_xlat49 = (x_1445 * x_1446);
    let x_1450 : i32 = u_xlati48;
    let x_1452 : f32 = x_246.x_AdditionalShadowParams[x_1450].w;
    u_xlati51 = i32(x_1452);
    let x_1455 : i32 = u_xlati51;
    u_xlatb52 = (x_1455 >= 0i);
    let x_1457 : bool = u_xlatb52;
    if (x_1457) {
      let x_1461 : i32 = u_xlati48;
      let x_1463 : f32 = x_246.x_AdditionalShadowParams[x_1461].z;
      u_xlatb52 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1463, x_1463, x_1463, x_1463))));
      let x_1467 : bool = u_xlatb52;
      if (x_1467) {
        let x_1471 : vec3<f32> = u_xlat10;
        let x_1474 : vec3<f32> = u_xlat10;
        let x_1477 : vec4<bool> = (abs(vec4<f32>(x_1471.z, x_1471.z, x_1471.y, x_1471.z)) >= abs(vec4<f32>(x_1474.x, x_1474.y, x_1474.x, x_1474.x)));
        let x_1479 : vec3<bool> = vec3<bool>(x_1477.x, x_1477.y, x_1477.z);
        let x_1480 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1479.x, x_1479.y, x_1479.z, x_1480.w);
        let x_1483 : bool = u_xlatb11.y;
        let x_1485 : bool = u_xlatb11.x;
        u_xlatb52 = (x_1483 & x_1485);
        let x_1487 : vec3<f32> = u_xlat10;
        let x_1490 : vec4<bool> = (-(vec4<f32>(x_1487.z, x_1487.y, x_1487.z, x_1487.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1491 : vec3<bool> = vec3<bool>(x_1490.x, x_1490.y, x_1490.w);
        let x_1492 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1491.x, x_1491.y, x_1492.z, x_1491.z);
        let x_1496 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1496);
        let x_1501 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1501);
        let x_1506 : bool = u_xlatb11.w;
        u_xlat53 = select(0.0f, 1.0f, x_1506);
        let x_1510 : bool = u_xlatb11.z;
        if (x_1510) {
          let x_1515 : f32 = u_xlat11.y;
          x_1511 = x_1515;
        } else {
          let x_1517 : f32 = u_xlat53;
          x_1511 = x_1517;
        }
        let x_1518 : f32 = x_1511;
        u_xlat25.x = x_1518;
        let x_1521 : bool = u_xlatb52;
        if (x_1521) {
          let x_1526 : f32 = u_xlat11.x;
          x_1522 = x_1526;
        } else {
          let x_1529 : f32 = u_xlat25.x;
          x_1522 = x_1529;
        }
        let x_1530 : f32 = x_1522;
        u_xlat52 = x_1530;
        let x_1531 : i32 = u_xlati48;
        let x_1533 : f32 = x_246.x_AdditionalShadowParams[x_1531].w;
        u_xlat11.x = trunc(x_1533);
        let x_1536 : f32 = u_xlat52;
        let x_1538 : f32 = u_xlat11.x;
        u_xlat52 = (x_1536 + x_1538);
        let x_1540 : f32 = u_xlat52;
        u_xlati51 = i32(x_1540);
      }
      let x_1542 : i32 = u_xlati51;
      u_xlati51 = (x_1542 << bitcast<u32>(2i));
      let x_1544 : vec3<f32> = vs_INTERP8;
      let x_1547 : i32 = u_xlati51;
      let x_1550 : i32 = u_xlati51;
      let x_1554 : vec4<f32> = x_246.x_AdditionalLightsWorldToShadow[((x_1547 + 1i) / 4i)][((x_1550 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1544.y, x_1544.y, x_1544.y, x_1544.y) * x_1554);
      let x_1556 : i32 = u_xlati51;
      let x_1558 : i32 = u_xlati51;
      let x_1561 : vec4<f32> = x_246.x_AdditionalLightsWorldToShadow[(x_1556 / 4i)][(x_1558 % 4i)];
      let x_1562 : vec3<f32> = vs_INTERP8;
      let x_1565 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1561 * vec4<f32>(x_1562.x, x_1562.x, x_1562.x, x_1562.x)) + x_1565);
      let x_1567 : i32 = u_xlati51;
      let x_1570 : i32 = u_xlati51;
      let x_1574 : vec4<f32> = x_246.x_AdditionalLightsWorldToShadow[((x_1567 + 2i) / 4i)][((x_1570 + 2i) % 4i)];
      let x_1575 : vec3<f32> = vs_INTERP8;
      let x_1578 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1574 * vec4<f32>(x_1575.z, x_1575.z, x_1575.z, x_1575.z)) + x_1578);
      let x_1580 : vec4<f32> = u_xlat11;
      let x_1581 : i32 = u_xlati51;
      let x_1584 : i32 = u_xlati51;
      let x_1588 : vec4<f32> = x_246.x_AdditionalLightsWorldToShadow[((x_1581 + 3i) / 4i)][((x_1584 + 3i) % 4i)];
      u_xlat11 = (x_1580 + x_1588);
      let x_1590 : vec4<f32> = u_xlat11;
      let x_1592 : vec4<f32> = u_xlat11;
      let x_1594 : vec3<f32> = (vec3<f32>(x_1590.x, x_1590.y, x_1590.z) / vec3<f32>(x_1592.w, x_1592.w, x_1592.w));
      let x_1595 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1594.x, x_1594.y, x_1594.z, x_1595.w);
      let x_1598 : vec4<f32> = u_xlat11;
      let x_1599 : vec2<f32> = vec2<f32>(x_1598.x, x_1598.y);
      let x_1601 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1599.x, x_1599.y, x_1601);
      let x_1609 : vec3<f32> = txVec1;
      let x_1611 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1609.xy, x_1609.z);
      u_xlat51 = x_1611;
      let x_1612 : i32 = u_xlati48;
      let x_1614 : f32 = x_246.x_AdditionalShadowParams[x_1612].x;
      u_xlat52 = (1.0f + -(x_1614));
      let x_1617 : f32 = u_xlat51;
      let x_1618 : i32 = u_xlati48;
      let x_1620 : f32 = x_246.x_AdditionalShadowParams[x_1618].x;
      let x_1622 : f32 = u_xlat52;
      u_xlat51 = ((x_1617 * x_1620) + x_1622);
      let x_1625 : f32 = u_xlat11.z;
      u_xlatb52 = (0.0f >= x_1625);
      let x_1628 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_1628 >= 1.0f);
      let x_1631 : bool = u_xlatb52;
      let x_1633 : bool = u_xlatb11.x;
      u_xlatb52 = (x_1631 | x_1633);
      let x_1635 : bool = u_xlatb52;
      let x_1636 : f32 = u_xlat51;
      u_xlat51 = select(x_1636, 1.0f, x_1635);
    } else {
      u_xlat51 = 1.0f;
    }
    let x_1639 : f32 = u_xlat51;
    u_xlat52 = (-(x_1639) + 1.0f);
    let x_1642 : f32 = u_xlat44;
    let x_1643 : f32 = u_xlat52;
    let x_1645 : f32 = u_xlat51;
    u_xlat51 = ((x_1642 * x_1643) + x_1645);
    let x_1648 : i32 = u_xlati48;
    u_xlati52 = (1i << bitcast<u32>((x_1648 & 31i)));
    let x_1652 : i32 = u_xlati52;
    let x_1655 : f32 = x_895.x_AdditionalLightsCookieEnableBits;
    u_xlati52 = bitcast<i32>((bitcast<u32>(x_1652) & bitcast<u32>(x_1655)));
    let x_1659 : i32 = u_xlati52;
    if ((x_1659 != 0i)) {
      let x_1663 : i32 = u_xlati48;
      let x_1665 : f32 = x_895.x_AdditionalLightsLightTypes[x_1663].el;
      u_xlati52 = i32(x_1665);
      let x_1668 : i32 = u_xlati52;
      u_xlati11 = select(1i, 0i, (x_1668 != 0i));
      let x_1672 : i32 = u_xlati48;
      u_xlati25 = (x_1672 << bitcast<u32>(2i));
      let x_1674 : i32 = u_xlati11;
      if ((x_1674 != 0i)) {
        let x_1678 : vec3<f32> = vs_INTERP8;
        let x_1680 : i32 = u_xlati25;
        let x_1683 : i32 = u_xlati25;
        let x_1687 : vec4<f32> = x_895.x_AdditionalLightsWorldToLights[((x_1680 + 1i) / 4i)][((x_1683 + 1i) % 4i)];
        let x_1689 : vec3<f32> = (vec3<f32>(x_1678.y, x_1678.y, x_1678.y) * vec3<f32>(x_1687.x, x_1687.y, x_1687.w));
        let x_1690 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1689.x, x_1690.y, x_1689.y, x_1689.z);
        let x_1692 : i32 = u_xlati25;
        let x_1694 : i32 = u_xlati25;
        let x_1697 : vec4<f32> = x_895.x_AdditionalLightsWorldToLights[(x_1692 / 4i)][(x_1694 % 4i)];
        let x_1699 : vec3<f32> = vs_INTERP8;
        let x_1702 : vec4<f32> = u_xlat11;
        let x_1704 : vec3<f32> = ((vec3<f32>(x_1697.x, x_1697.y, x_1697.w) * vec3<f32>(x_1699.x, x_1699.x, x_1699.x)) + vec3<f32>(x_1702.x, x_1702.z, x_1702.w));
        let x_1705 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1704.x, x_1705.y, x_1704.y, x_1704.z);
        let x_1707 : i32 = u_xlati25;
        let x_1710 : i32 = u_xlati25;
        let x_1714 : vec4<f32> = x_895.x_AdditionalLightsWorldToLights[((x_1707 + 2i) / 4i)][((x_1710 + 2i) % 4i)];
        let x_1716 : vec3<f32> = vs_INTERP8;
        let x_1719 : vec4<f32> = u_xlat11;
        let x_1721 : vec3<f32> = ((vec3<f32>(x_1714.x, x_1714.y, x_1714.w) * vec3<f32>(x_1716.z, x_1716.z, x_1716.z)) + vec3<f32>(x_1719.x, x_1719.z, x_1719.w));
        let x_1722 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1721.x, x_1722.y, x_1721.y, x_1721.z);
        let x_1724 : vec4<f32> = u_xlat11;
        let x_1726 : i32 = u_xlati25;
        let x_1729 : i32 = u_xlati25;
        let x_1733 : vec4<f32> = x_895.x_AdditionalLightsWorldToLights[((x_1726 + 3i) / 4i)][((x_1729 + 3i) % 4i)];
        let x_1735 : vec3<f32> = (vec3<f32>(x_1724.x, x_1724.z, x_1724.w) + vec3<f32>(x_1733.x, x_1733.y, x_1733.w));
        let x_1736 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1735.x, x_1736.y, x_1735.y, x_1735.z);
        let x_1738 : vec4<f32> = u_xlat11;
        let x_1740 : vec4<f32> = u_xlat11;
        let x_1742 : vec2<f32> = (vec2<f32>(x_1738.x, x_1738.z) / vec2<f32>(x_1740.w, x_1740.w));
        let x_1743 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1742.x, x_1743.y, x_1742.y, x_1743.w);
        let x_1745 : vec4<f32> = u_xlat11;
        let x_1748 : vec2<f32> = ((vec2<f32>(x_1745.x, x_1745.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1749 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1748.x, x_1749.y, x_1748.y, x_1749.w);
        let x_1751 : vec4<f32> = u_xlat11;
        let x_1755 : vec2<f32> = clamp(vec2<f32>(x_1751.x, x_1751.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1756 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1755.x, x_1756.y, x_1755.y, x_1756.w);
        let x_1758 : i32 = u_xlati48;
        let x_1760 : vec4<f32> = x_895.x_AdditionalLightsCookieAtlasUVRects[x_1758];
        let x_1762 : vec4<f32> = u_xlat11;
        let x_1765 : i32 = u_xlati48;
        let x_1767 : vec4<f32> = x_895.x_AdditionalLightsCookieAtlasUVRects[x_1765];
        let x_1769 : vec2<f32> = ((vec2<f32>(x_1760.x, x_1760.y) * vec2<f32>(x_1762.x, x_1762.z)) + vec2<f32>(x_1767.z, x_1767.w));
        let x_1770 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1769.x, x_1770.y, x_1769.y, x_1770.w);
      } else {
        let x_1773 : i32 = u_xlati52;
        u_xlatb52 = (x_1773 == 1i);
        let x_1775 : bool = u_xlatb52;
        u_xlati52 = select(0i, 1i, x_1775);
        let x_1777 : i32 = u_xlati52;
        if ((x_1777 != 0i)) {
          let x_1782 : vec3<f32> = vs_INTERP8;
          let x_1784 : i32 = u_xlati25;
          let x_1787 : i32 = u_xlati25;
          let x_1791 : vec4<f32> = x_895.x_AdditionalLightsWorldToLights[((x_1784 + 1i) / 4i)][((x_1787 + 1i) % 4i)];
          let x_1793 : vec2<f32> = (vec2<f32>(x_1782.y, x_1782.y) * vec2<f32>(x_1791.x, x_1791.y));
          let x_1794 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1793.x, x_1793.y, x_1794.z, x_1794.w);
          let x_1796 : i32 = u_xlati25;
          let x_1798 : i32 = u_xlati25;
          let x_1801 : vec4<f32> = x_895.x_AdditionalLightsWorldToLights[(x_1796 / 4i)][(x_1798 % 4i)];
          let x_1803 : vec3<f32> = vs_INTERP8;
          let x_1806 : vec4<f32> = u_xlat12;
          let x_1808 : vec2<f32> = ((vec2<f32>(x_1801.x, x_1801.y) * vec2<f32>(x_1803.x, x_1803.x)) + vec2<f32>(x_1806.x, x_1806.y));
          let x_1809 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1808.x, x_1808.y, x_1809.z, x_1809.w);
          let x_1811 : i32 = u_xlati25;
          let x_1814 : i32 = u_xlati25;
          let x_1818 : vec4<f32> = x_895.x_AdditionalLightsWorldToLights[((x_1811 + 2i) / 4i)][((x_1814 + 2i) % 4i)];
          let x_1820 : vec3<f32> = vs_INTERP8;
          let x_1823 : vec4<f32> = u_xlat12;
          let x_1825 : vec2<f32> = ((vec2<f32>(x_1818.x, x_1818.y) * vec2<f32>(x_1820.z, x_1820.z)) + vec2<f32>(x_1823.x, x_1823.y));
          let x_1826 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1825.x, x_1825.y, x_1826.z, x_1826.w);
          let x_1828 : vec4<f32> = u_xlat12;
          let x_1830 : i32 = u_xlati25;
          let x_1833 : i32 = u_xlati25;
          let x_1837 : vec4<f32> = x_895.x_AdditionalLightsWorldToLights[((x_1830 + 3i) / 4i)][((x_1833 + 3i) % 4i)];
          let x_1839 : vec2<f32> = (vec2<f32>(x_1828.x, x_1828.y) + vec2<f32>(x_1837.x, x_1837.y));
          let x_1840 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1839.x, x_1839.y, x_1840.z, x_1840.w);
          let x_1842 : vec4<f32> = u_xlat12;
          let x_1845 : vec2<f32> = ((vec2<f32>(x_1842.x, x_1842.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1846 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1845.x, x_1845.y, x_1846.z, x_1846.w);
          let x_1848 : vec4<f32> = u_xlat12;
          let x_1850 : vec2<f32> = fract(vec2<f32>(x_1848.x, x_1848.y));
          let x_1851 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1850.x, x_1850.y, x_1851.z, x_1851.w);
          let x_1853 : i32 = u_xlati48;
          let x_1855 : vec4<f32> = x_895.x_AdditionalLightsCookieAtlasUVRects[x_1853];
          let x_1857 : vec4<f32> = u_xlat12;
          let x_1860 : i32 = u_xlati48;
          let x_1862 : vec4<f32> = x_895.x_AdditionalLightsCookieAtlasUVRects[x_1860];
          let x_1864 : vec2<f32> = ((vec2<f32>(x_1855.x, x_1855.y) * vec2<f32>(x_1857.x, x_1857.y)) + vec2<f32>(x_1862.z, x_1862.w));
          let x_1865 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1864.x, x_1865.y, x_1864.y, x_1865.w);
        } else {
          let x_1868 : vec3<f32> = vs_INTERP8;
          let x_1870 : i32 = u_xlati25;
          let x_1873 : i32 = u_xlati25;
          let x_1877 : vec4<f32> = x_895.x_AdditionalLightsWorldToLights[((x_1870 + 1i) / 4i)][((x_1873 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1868.y, x_1868.y, x_1868.y, x_1868.y) * x_1877);
          let x_1879 : i32 = u_xlati25;
          let x_1881 : i32 = u_xlati25;
          let x_1884 : vec4<f32> = x_895.x_AdditionalLightsWorldToLights[(x_1879 / 4i)][(x_1881 % 4i)];
          let x_1885 : vec3<f32> = vs_INTERP8;
          let x_1888 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1884 * vec4<f32>(x_1885.x, x_1885.x, x_1885.x, x_1885.x)) + x_1888);
          let x_1890 : i32 = u_xlati25;
          let x_1893 : i32 = u_xlati25;
          let x_1897 : vec4<f32> = x_895.x_AdditionalLightsWorldToLights[((x_1890 + 2i) / 4i)][((x_1893 + 2i) % 4i)];
          let x_1898 : vec3<f32> = vs_INTERP8;
          let x_1901 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1897 * vec4<f32>(x_1898.z, x_1898.z, x_1898.z, x_1898.z)) + x_1901);
          let x_1903 : vec4<f32> = u_xlat12;
          let x_1904 : i32 = u_xlati25;
          let x_1907 : i32 = u_xlati25;
          let x_1911 : vec4<f32> = x_895.x_AdditionalLightsWorldToLights[((x_1904 + 3i) / 4i)][((x_1907 + 3i) % 4i)];
          u_xlat12 = (x_1903 + x_1911);
          let x_1913 : vec4<f32> = u_xlat12;
          let x_1915 : vec4<f32> = u_xlat12;
          let x_1917 : vec3<f32> = (vec3<f32>(x_1913.x, x_1913.y, x_1913.z) / vec3<f32>(x_1915.w, x_1915.w, x_1915.w));
          let x_1918 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1917.x, x_1917.y, x_1917.z, x_1918.w);
          let x_1920 : vec4<f32> = u_xlat12;
          let x_1922 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(vec3<f32>(x_1920.x, x_1920.y, x_1920.z), vec3<f32>(x_1922.x, x_1922.y, x_1922.z));
          let x_1925 : f32 = u_xlat52;
          u_xlat52 = inverseSqrt(x_1925);
          let x_1927 : f32 = u_xlat52;
          let x_1929 : vec4<f32> = u_xlat12;
          let x_1931 : vec3<f32> = (vec3<f32>(x_1927, x_1927, x_1927) * vec3<f32>(x_1929.x, x_1929.y, x_1929.z));
          let x_1932 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1931.x, x_1931.y, x_1931.z, x_1932.w);
          let x_1934 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(abs(vec3<f32>(x_1934.x, x_1934.y, x_1934.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1939 : f32 = u_xlat52;
          u_xlat52 = max(x_1939, 0.00000099999999747524f);
          let x_1942 : f32 = u_xlat52;
          u_xlat52 = (1.0f / x_1942);
          let x_1945 : f32 = u_xlat52;
          let x_1947 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1945, x_1945, x_1945) * vec3<f32>(x_1947.z, x_1947.x, x_1947.y));
          let x_1951 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1951);
          let x_1955 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1955, 0.0f, 1.0f);
          let x_1960 : vec3<f32> = u_xlat13;
          let x_1962 : vec4<bool> = (vec4<f32>(x_1960.y, x_1960.y, x_1960.z, x_1960.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1963 : vec2<bool> = vec2<bool>(x_1962.x, x_1962.z);
          let x_1964 : vec3<bool> = u_xlatb25;
          u_xlatb25 = vec3<bool>(x_1963.x, x_1964.y, x_1963.y);
          let x_1967 : bool = u_xlatb25.x;
          if (x_1967) {
            let x_1972 : f32 = u_xlat13.x;
            x_1968 = x_1972;
          } else {
            let x_1975 : f32 = u_xlat13.x;
            x_1968 = -(x_1975);
          }
          let x_1977 : f32 = x_1968;
          u_xlat25.x = x_1977;
          let x_1980 : bool = u_xlatb25.z;
          if (x_1980) {
            let x_1985 : f32 = u_xlat13.x;
            x_1981 = x_1985;
          } else {
            let x_1988 : f32 = u_xlat13.x;
            x_1981 = -(x_1988);
          }
          let x_1990 : f32 = x_1981;
          u_xlat25.z = x_1990;
          let x_1992 : vec4<f32> = u_xlat12;
          let x_1994 : f32 = u_xlat52;
          let x_1997 : vec3<f32> = u_xlat25;
          let x_1999 : vec2<f32> = ((vec2<f32>(x_1992.x, x_1992.y) * vec2<f32>(x_1994, x_1994)) + vec2<f32>(x_1997.x, x_1997.z));
          let x_2000 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1999.x, x_2000.y, x_1999.y);
          let x_2002 : vec3<f32> = u_xlat25;
          let x_2005 : vec2<f32> = ((vec2<f32>(x_2002.x, x_2002.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2006 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2005.x, x_2006.y, x_2005.y);
          let x_2008 : vec3<f32> = u_xlat25;
          let x_2012 : vec2<f32> = clamp(vec2<f32>(x_2008.x, x_2008.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2013 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2012.x, x_2013.y, x_2012.y);
          let x_2015 : i32 = u_xlati48;
          let x_2017 : vec4<f32> = x_895.x_AdditionalLightsCookieAtlasUVRects[x_2015];
          let x_2019 : vec3<f32> = u_xlat25;
          let x_2022 : i32 = u_xlati48;
          let x_2024 : vec4<f32> = x_895.x_AdditionalLightsCookieAtlasUVRects[x_2022];
          let x_2026 : vec2<f32> = ((vec2<f32>(x_2017.x, x_2017.y) * vec2<f32>(x_2019.x, x_2019.z)) + vec2<f32>(x_2024.z, x_2024.w));
          let x_2027 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2026.x, x_2027.y, x_2026.y, x_2027.w);
        }
      }
      let x_2034 : vec4<f32> = u_xlat11;
      let x_2036 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_2034.x, x_2034.z), 0.0f);
      u_xlat11 = x_2036;
      let x_2038 : bool = u_xlatb20.y;
      if (x_2038) {
        let x_2043 : f32 = u_xlat11.w;
        x_2039 = x_2043;
      } else {
        let x_2046 : f32 = u_xlat11.x;
        x_2039 = x_2046;
      }
      let x_2047 : f32 = x_2039;
      u_xlat52 = x_2047;
      let x_2049 : bool = u_xlatb20.x;
      if (x_2049) {
        let x_2053 : vec4<f32> = u_xlat11;
        x_2050 = vec3<f32>(x_2053.x, x_2053.y, x_2053.z);
      } else {
        let x_2056 : f32 = u_xlat52;
        x_2050 = vec3<f32>(x_2056, x_2056, x_2056);
      }
      let x_2058 : vec3<f32> = x_2050;
      let x_2059 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2058.x, x_2058.y, x_2058.z, x_2059.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2065 : vec4<f32> = u_xlat11;
    let x_2067 : i32 = u_xlati48;
    let x_2069 : vec4<f32> = x_1378.x_AdditionalLightsColor[x_2067];
    let x_2071 : vec3<f32> = (vec3<f32>(x_2065.x, x_2065.y, x_2065.z) * vec3<f32>(x_2069.x, x_2069.y, x_2069.z));
    let x_2072 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2071.x, x_2071.y, x_2071.z, x_2072.w);
    let x_2074 : f32 = u_xlat49;
    let x_2075 : f32 = u_xlat51;
    u_xlat48 = (x_2074 * x_2075);
    let x_2077 : vec4<f32> = u_xlat3;
    let x_2079 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_2077.x, x_2077.y, x_2077.z), x_2079);
    let x_2081 : f32 = u_xlat49;
    u_xlat49 = clamp(x_2081, 0.0f, 1.0f);
    let x_2083 : f32 = u_xlat48;
    let x_2084 : f32 = u_xlat49;
    u_xlat48 = (x_2083 * x_2084);
    let x_2086 : f32 = u_xlat48;
    let x_2088 : vec4<f32> = u_xlat11;
    let x_2090 : vec3<f32> = (vec3<f32>(x_2086, x_2086, x_2086) * vec3<f32>(x_2088.x, x_2088.y, x_2088.z));
    let x_2091 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2090.x, x_2090.y, x_2090.z, x_2091.w);
    let x_2093 : vec3<f32> = u_xlat9;
    let x_2094 : f32 = u_xlat50;
    let x_2097 : vec3<f32> = u_xlat14;
    u_xlat9 = ((x_2093 * vec3<f32>(x_2094, x_2094, x_2094)) + x_2097);
    let x_2099 : vec3<f32> = u_xlat9;
    let x_2100 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_2099, x_2100);
    let x_2102 : f32 = u_xlat48;
    u_xlat48 = max(x_2102, 1.17549435e-38f);
    let x_2104 : f32 = u_xlat48;
    u_xlat48 = inverseSqrt(x_2104);
    let x_2106 : f32 = u_xlat48;
    let x_2108 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_2106, x_2106, x_2106) * x_2108);
    let x_2110 : vec4<f32> = u_xlat3;
    let x_2112 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_2110.x, x_2110.y, x_2110.z), x_2112);
    let x_2114 : f32 = u_xlat48;
    u_xlat48 = clamp(x_2114, 0.0f, 1.0f);
    let x_2116 : vec3<f32> = u_xlat10;
    let x_2117 : vec3<f32> = u_xlat9;
    u_xlat49 = dot(x_2116, x_2117);
    let x_2119 : f32 = u_xlat49;
    u_xlat49 = clamp(x_2119, 0.0f, 1.0f);
    let x_2121 : f32 = u_xlat48;
    let x_2122 : f32 = u_xlat48;
    u_xlat48 = (x_2121 * x_2122);
    let x_2124 : f32 = u_xlat48;
    let x_2126 : f32 = u_xlat30.x;
    u_xlat48 = ((x_2124 * x_2126) + 1.00001001358032226562f);
    let x_2129 : f32 = u_xlat49;
    let x_2130 : f32 = u_xlat49;
    u_xlat49 = (x_2129 * x_2130);
    let x_2132 : f32 = u_xlat48;
    let x_2133 : f32 = u_xlat48;
    u_xlat48 = (x_2132 * x_2133);
    let x_2135 : f32 = u_xlat49;
    u_xlat49 = max(x_2135, 0.10000000149011611938f);
    let x_2137 : f32 = u_xlat48;
    let x_2138 : f32 = u_xlat49;
    u_xlat48 = (x_2137 * x_2138);
    let x_2140 : f32 = u_xlat47;
    let x_2141 : f32 = u_xlat48;
    u_xlat48 = (x_2140 * x_2141);
    let x_2143 : f32 = u_xlat45;
    let x_2144 : f32 = u_xlat48;
    u_xlat48 = (x_2143 / x_2144);
    let x_2146 : f32 = u_xlat48;
    let x_2149 : vec3<f32> = u_xlat5;
    u_xlat9 = ((vec3<f32>(x_2146, x_2146, x_2146) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_2149);
    let x_2151 : vec3<f32> = u_xlat9;
    let x_2152 : vec4<f32> = u_xlat11;
    let x_2155 : vec4<f32> = u_xlat8;
    let x_2157 : vec3<f32> = ((x_2151 * vec3<f32>(x_2152.x, x_2152.y, x_2152.z)) + vec3<f32>(x_2155.x, x_2155.y, x_2155.z));
    let x_2158 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2157.x, x_2157.y, x_2157.z, x_2158.w);

    continuing {
      let x_2160 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2160 + bitcast<u32>(1i));
    }
  }
  let x_2162 : vec4<f32> = u_xlat4;
  let x_2164 : vec4<f32> = u_xlat6;
  let x_2167 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_2162.x, x_2162.y, x_2162.z) * vec3<f32>(x_2164.x, x_2164.x, x_2164.x)) + vec3<f32>(x_2167.x, x_2167.y, x_2167.z));
  let x_2170 : vec4<f32> = u_xlat8;
  let x_2172 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2170.x, x_2170.y, x_2170.z) + x_2172);
  let x_2174 : vec4<f32> = vs_INTERP6;
  let x_2176 : vec3<f32> = u_xlat1;
  let x_2178 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_2174.w, x_2174.w, x_2174.w) * x_2176) + x_2178);
  let x_2182 : f32 = u_xlat2.x;
  let x_2184 : f32 = u_xlat2.x;
  u_xlat42 = (x_2182 * -(x_2184));
  let x_2187 : f32 = u_xlat42;
  u_xlat42 = exp2(x_2187);
  let x_2189 : vec3<f32> = u_xlat0;
  let x_2192 : vec4<f32> = x_128.unity_FogColor;
  u_xlat0 = (x_2189 + -(vec3<f32>(x_2192.x, x_2192.y, x_2192.z)));
  let x_2198 : f32 = u_xlat42;
  let x_2200 : vec3<f32> = u_xlat0;
  let x_2203 : vec4<f32> = x_128.unity_FogColor;
  let x_2205 : vec3<f32> = ((vec3<f32>(x_2198, x_2198, x_2198) * x_2200) + vec3<f32>(x_2203.x, x_2203.y, x_2203.z));
  let x_2206 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2205.x, x_2205.y, x_2205.z, x_2206.w);
  let x_2208 : bool = u_xlatb16;
  let x_2209 : f32 = u_xlat43;
  SV_Target0.w = select(1.0f, x_2209, x_2208);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_INTERP9_param : vec3<f32>, @location(0) vs_INTERP4_param : vec4<f32>, @location(1) vs_INTERP5_param : vec4<f32>, @location(2) vs_INTERP6_param : vec4<f32>, @location(3) vs_INTERP8_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP9 = vs_INTERP9_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP6 = vs_INTERP6_param;
  vs_INTERP8 = vs_INTERP8_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


