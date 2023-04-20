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

@group(0) @binding(7) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(14) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_128 : PGlobals;

var<private> u_xlat5 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_138 : UnityPerMaterial;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(8) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat20 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

var<private> vs_INTERP8 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_246 : LightShadows;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu0 : u32;

var<private> u_xlati0 : i32;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat43 : f32;

var<private> u_xlatb43 : bool;

var<private> u_xlat15 : vec3<f32>;

var<private> u_xlat16 : f32;

var<private> u_xlat30 : f32;

var<private> u_xlatb16 : bool;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat45 : f32;

var<private> u_xlat46 : f32;

var<private> u_xlat19 : f32;

var<private> u_xlat33 : f32;

var<private> u_xlat47 : f32;

var<private> u_xlat34 : f32;

var<private> u_xlatb20 : vec2<bool>;

@group(1) @binding(4) var<uniform> x_836 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat49 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlatu19 : u32;

var<private> u_xlati6 : i32;

var<private> u_xlati19 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_1299 : AdditionalLights;

var<private> u_xlat35 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlati49 : i32;

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

var<private> u_xlatb19 : bool;

var<private> u_xlatu46 : u32;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_485 : f32;
  var x_524 : f32;
  var x_571 : f32;
  var x_654 : f32;
  var x_667 : f32;
  var x_679 : f32;
  var x_919 : f32;
  var x_930 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1448 : f32;
  var x_1458 : f32;
  var txVec1 : vec3<f32>;
  var x_1888 : f32;
  var x_1901 : f32;
  var x_1959 : f32;
  var x_1970 : vec3<f32>;
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
  let x_542 : f32 = u_xlat4.w;
  u_xlat30 = dpdyCoarse(x_542);
  let x_544 : f32 = u_xlat30;
  let x_546 : f32 = u_xlat16;
  u_xlat16 = (abs(x_544) + abs(x_546));
  let x_549 : f32 = u_xlat16;
  u_xlat16 = max(x_549, 0.00009999999747378752f);
  let x_553 : f32 = u_xlat2.x;
  let x_554 : f32 = u_xlat16;
  u_xlat2.x = (x_553 / x_554);
  let x_558 : f32 = u_xlat2.x;
  u_xlat2.x = (x_558 + 0.5f);
  let x_563 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_563, 0.0f, 1.0f);
  let x_568 : f32 = x_128.x_AlphaToMaskAvailable;
  u_xlatb16 = !((x_568 == 0.0f));
  let x_570 : bool = u_xlatb16;
  if (x_570) {
    let x_575 : f32 = u_xlat2.x;
    x_571 = x_575;
  } else {
    let x_577 : f32 = u_xlat43;
    x_571 = x_577;
  }
  let x_578 : f32 = x_571;
  u_xlat43 = x_578;
  let x_579 : f32 = u_xlat43;
  u_xlat2.x = (x_579 + -0.00009999999747378752f);
  let x_584 : f32 = u_xlat2.x;
  u_xlatb2.x = (x_584 < 0.0f);
  let x_588 : bool = u_xlatb2.x;
  if (((select(0i, 1i, x_588) * -1i) != 0i)) {
    discard;
  }
  let x_596 : vec3<f32> = u_xlat14;
  let x_597 : vec3<f32> = u_xlat20;
  u_xlat14 = (x_596 * vec3<f32>(x_597.y, x_597.y, x_597.y));
  let x_600 : vec3<f32> = u_xlat20;
  let x_602 : vec4<f32> = vs_INTERP4;
  let x_605 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_600.x, x_600.x, x_600.x) * vec3<f32>(x_602.x, x_602.y, x_602.z)) + x_605);
  let x_607 : vec3<f32> = u_xlat20;
  let x_609 : vec3<f32> = vs_INTERP9;
  let x_611 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_607.z, x_607.z, x_607.z) * x_609) + x_611);
  let x_613 : vec3<f32> = u_xlat14;
  let x_614 : vec3<f32> = u_xlat14;
  u_xlat2.x = dot(x_613, x_614);
  let x_618 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_618);
  let x_621 : vec3<f32> = u_xlat14;
  let x_622 : vec4<f32> = u_xlat2;
  u_xlat14 = (x_621 * vec3<f32>(x_622.x, x_622.x, x_622.x));
  let x_627 : f32 = x_128.unity_OrthoParams.w;
  u_xlatb2.x = (x_627 == 0.0f);
  let x_630 : vec3<f32> = vs_INTERP8;
  let x_634 : vec3<f32> = x_128.x_WorldSpaceCameraPos;
  let x_635 : vec3<f32> = (-(x_630) + x_634);
  let x_636 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_635.x, x_635.y, x_635.z, x_636.w);
  let x_638 : vec4<f32> = u_xlat3;
  let x_640 : vec4<f32> = u_xlat3;
  u_xlat30 = dot(vec3<f32>(x_638.x, x_638.y, x_638.z), vec3<f32>(x_640.x, x_640.y, x_640.z));
  let x_643 : f32 = u_xlat30;
  u_xlat30 = inverseSqrt(x_643);
  let x_645 : f32 = u_xlat30;
  let x_647 : vec4<f32> = u_xlat3;
  let x_649 : vec3<f32> = (vec3<f32>(x_645, x_645, x_645) * vec3<f32>(x_647.x, x_647.y, x_647.z));
  let x_650 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_649.x, x_649.y, x_649.z, x_650.w);
  let x_653 : bool = u_xlatb2.x;
  if (x_653) {
    let x_658 : f32 = u_xlat3.x;
    x_654 = x_658;
  } else {
    let x_662 : f32 = x_128.unity_MatrixV[0i].z;
    x_654 = x_662;
  }
  let x_663 : f32 = x_654;
  u_xlat4.x = x_663;
  let x_666 : bool = u_xlatb2.x;
  if (x_666) {
    let x_671 : f32 = u_xlat3.y;
    x_667 = x_671;
  } else {
    let x_674 : f32 = x_128.unity_MatrixV[1i].z;
    x_667 = x_674;
  }
  let x_675 : f32 = x_667;
  u_xlat4.y = x_675;
  let x_678 : bool = u_xlatb2.x;
  if (x_678) {
    let x_683 : f32 = u_xlat3.z;
    x_679 = x_683;
  } else {
    let x_686 : f32 = x_128.unity_MatrixV[2i].z;
    x_679 = x_686;
  }
  let x_687 : f32 = x_679;
  u_xlat4.z = x_687;
  let x_696 : vec2<f32> = vs_INTERP0;
  let x_698 : f32 = x_128.x_GlobalMipBias.x;
  let x_699 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_696, x_698);
  u_xlat3 = x_699;
  let x_704 : vec2<f32> = vs_INTERP0;
  let x_706 : f32 = x_128.x_GlobalMipBias.x;
  let x_707 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_704, x_706);
  let x_708 : vec3<f32> = vec3<f32>(x_707.x, x_707.y, x_707.z);
  let x_709 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_708.x, x_709.y, x_708.y, x_708.z);
  let x_711 : vec4<f32> = u_xlat3;
  let x_715 : vec3<f32> = (vec3<f32>(x_711.x, x_711.y, x_711.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_716 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_715.x, x_715.y, x_715.z, x_716.w);
  let x_718 : vec3<f32> = u_xlat14;
  let x_719 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(x_718, vec3<f32>(x_719.x, x_719.y, x_719.z));
  let x_724 : f32 = u_xlat3.x;
  u_xlat3.x = (x_724 + 0.5f);
  let x_727 : vec4<f32> = u_xlat2;
  let x_729 : vec4<f32> = u_xlat3;
  let x_731 : vec3<f32> = (vec3<f32>(x_727.x, x_727.z, x_727.w) * vec3<f32>(x_729.x, x_729.x, x_729.x));
  let x_732 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_731.x, x_732.y, x_731.y, x_731.z);
  let x_735 : f32 = u_xlat3.w;
  u_xlat3.x = max(x_735, 0.00009999999747378752f);
  let x_738 : vec4<f32> = u_xlat2;
  let x_740 : vec4<f32> = u_xlat3;
  let x_742 : vec3<f32> = (vec3<f32>(x_738.x, x_738.z, x_738.w) / vec3<f32>(x_740.x, x_740.x, x_740.x));
  let x_743 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_742.x, x_743.y, x_742.y, x_742.z);
  let x_746 : f32 = u_xlat6.x;
  u_xlat6.x = x_746;
  let x_749 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_749, 0.0f, 1.0f);
  let x_752 : f32 = u_xlat43;
  u_xlat43 = min(x_752, 1.0f);
  let x_754 : vec3<f32> = u_xlat5;
  let x_757 : vec3<f32> = (x_754 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_758 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_757.x, x_757.y, x_757.z, x_758.w);
  let x_762 : f32 = u_xlat6.x;
  u_xlat45 = (-(x_762) + 1.0f);
  let x_766 : f32 = u_xlat45;
  let x_767 : f32 = u_xlat45;
  u_xlat46 = (x_766 * x_767);
  let x_769 : f32 = u_xlat46;
  u_xlat46 = max(x_769, 0.0078125f);
  let x_772 : f32 = u_xlat46;
  let x_773 : f32 = u_xlat46;
  u_xlat5.x = (x_772 * x_773);
  let x_778 : f32 = u_xlat6.x;
  u_xlat19 = (x_778 + 0.04000002145767211914f);
  let x_781 : f32 = u_xlat19;
  u_xlat19 = min(x_781, 1.0f);
  let x_784 : f32 = u_xlat46;
  u_xlat33 = ((x_784 * 4.0f) + 2.0f);
  let x_789 : f32 = vs_INTERP6.w;
  u_xlat47 = min(x_789, 1.0f);
  let x_791 : vec3<f32> = vs_INTERP8;
  let x_793 : vec3<f32> = x_128.x_WorldSpaceCameraPos;
  let x_795 : vec3<f32> = (x_791 + -(x_793));
  let x_796 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_795.x, x_795.y, x_795.z, x_796.w);
  let x_798 : vec4<f32> = u_xlat6;
  let x_800 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_798.x, x_798.y, x_798.z), vec3<f32>(x_800.x, x_800.y, x_800.z));
  let x_805 : f32 = u_xlat6.x;
  let x_807 : f32 = x_246.x_MainLightShadowParams.z;
  let x_810 : f32 = x_246.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_805 * x_807) + x_810);
  let x_814 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_814, 0.0f, 1.0f);
  let x_819 : f32 = u_xlat0.x;
  u_xlat34 = (-(x_819) + 1.0f);
  let x_823 : f32 = u_xlat20.x;
  let x_824 : f32 = u_xlat34;
  let x_827 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_823 * x_824) + x_827);
  let x_838 : f32 = x_836.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_838 == -1.0f));
  let x_842 : bool = u_xlatb20.x;
  if (x_842) {
    let x_845 : vec3<f32> = vs_INTERP8;
    let x_848 : vec4<f32> = x_836.x_MainLightWorldToLight[1i];
    let x_850 : vec2<f32> = (vec2<f32>(x_845.y, x_845.y) * vec2<f32>(x_848.x, x_848.y));
    let x_851 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_850.x, x_850.y, x_851.z);
    let x_854 : vec4<f32> = x_836.x_MainLightWorldToLight[0i];
    let x_856 : vec3<f32> = vs_INTERP8;
    let x_859 : vec3<f32> = u_xlat20;
    let x_861 : vec2<f32> = ((vec2<f32>(x_854.x, x_854.y) * vec2<f32>(x_856.x, x_856.x)) + vec2<f32>(x_859.x, x_859.y));
    let x_862 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_861.x, x_861.y, x_862.z);
    let x_865 : vec4<f32> = x_836.x_MainLightWorldToLight[2i];
    let x_867 : vec3<f32> = vs_INTERP8;
    let x_870 : vec3<f32> = u_xlat20;
    let x_872 : vec2<f32> = ((vec2<f32>(x_865.x, x_865.y) * vec2<f32>(x_867.z, x_867.z)) + vec2<f32>(x_870.x, x_870.y));
    let x_873 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_872.x, x_872.y, x_873.z);
    let x_875 : vec3<f32> = u_xlat20;
    let x_878 : vec4<f32> = x_836.x_MainLightWorldToLight[3i];
    let x_880 : vec2<f32> = (vec2<f32>(x_875.x, x_875.y) + vec2<f32>(x_878.x, x_878.y));
    let x_881 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_880.x, x_880.y, x_881.z);
    let x_883 : vec3<f32> = u_xlat20;
    let x_887 : vec2<f32> = ((vec2<f32>(x_883.x, x_883.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_888 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_887.x, x_887.y, x_888.z);
    let x_895 : vec3<f32> = u_xlat20;
    let x_898 : f32 = x_128.x_GlobalMipBias.x;
    let x_899 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_895.x, x_895.y), x_898);
    u_xlat7 = x_899;
    let x_901 : f32 = x_836.x_MainLightCookieTextureFormat;
    let x_903 : f32 = x_836.x_MainLightCookieTextureFormat;
    let x_905 : f32 = x_836.x_MainLightCookieTextureFormat;
    let x_907 : f32 = x_836.x_MainLightCookieTextureFormat;
    let x_908 : vec4<f32> = vec4<f32>(x_901, x_903, x_905, x_907);
    let x_915 : vec4<bool> = (vec4<f32>(x_908.x, x_908.y, x_908.z, x_908.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_915.x, x_915.y);
    let x_918 : bool = u_xlatb20.y;
    if (x_918) {
      let x_923 : f32 = u_xlat7.w;
      x_919 = x_923;
    } else {
      let x_926 : f32 = u_xlat7.x;
      x_919 = x_926;
    }
    let x_927 : f32 = x_919;
    u_xlat34 = x_927;
    let x_929 : bool = u_xlatb20.x;
    if (x_929) {
      let x_933 : vec4<f32> = u_xlat7;
      x_930 = vec3<f32>(x_933.x, x_933.y, x_933.z);
    } else {
      let x_936 : f32 = u_xlat34;
      x_930 = vec3<f32>(x_936, x_936, x_936);
    }
    let x_938 : vec3<f32> = x_930;
    u_xlat20 = x_938;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_943 : vec3<f32> = u_xlat20;
  let x_945 : vec4<f32> = x_128.x_MainLightColor;
  u_xlat20 = (x_943 * vec3<f32>(x_945.x, x_945.y, x_945.z));
  let x_948 : vec4<f32> = u_xlat4;
  let x_951 : vec3<f32> = u_xlat14;
  u_xlat7.x = dot(-(vec3<f32>(x_948.x, x_948.y, x_948.z)), x_951);
  let x_955 : f32 = u_xlat7.x;
  let x_957 : f32 = u_xlat7.x;
  u_xlat7.x = (x_955 + x_957);
  let x_960 : vec3<f32> = u_xlat14;
  let x_961 : vec4<f32> = u_xlat7;
  let x_965 : vec4<f32> = u_xlat4;
  let x_968 : vec3<f32> = ((x_960 * -(vec3<f32>(x_961.x, x_961.x, x_961.x))) + -(vec3<f32>(x_965.x, x_965.y, x_965.z)));
  let x_969 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_968.x, x_968.y, x_968.z, x_969.w);
  let x_972 : vec3<f32> = u_xlat14;
  let x_973 : vec4<f32> = u_xlat4;
  u_xlat49 = dot(x_972, vec3<f32>(x_973.x, x_973.y, x_973.z));
  let x_976 : f32 = u_xlat49;
  u_xlat49 = clamp(x_976, 0.0f, 1.0f);
  let x_978 : f32 = u_xlat49;
  u_xlat49 = (-(x_978) + 1.0f);
  let x_981 : f32 = u_xlat49;
  let x_982 : f32 = u_xlat49;
  u_xlat49 = (x_981 * x_982);
  let x_984 : f32 = u_xlat49;
  let x_985 : f32 = u_xlat49;
  u_xlat49 = (x_984 * x_985);
  let x_987 : f32 = u_xlat45;
  u_xlat8.x = ((-(x_987) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_994 : f32 = u_xlat45;
  let x_996 : f32 = u_xlat8.x;
  u_xlat45 = (x_994 * x_996);
  let x_998 : f32 = u_xlat45;
  u_xlat45 = (x_998 * 6.0f);
  let x_1009 : vec4<f32> = u_xlat7;
  let x_1011 : f32 = u_xlat45;
  let x_1012 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1009.x, x_1009.y, x_1009.z), x_1011);
  u_xlat8 = x_1012;
  let x_1014 : f32 = u_xlat8.w;
  u_xlat45 = (x_1014 + -1.0f);
  let x_1017 : f32 = x_48.unity_SpecCube0_HDR.w;
  let x_1018 : f32 = u_xlat45;
  u_xlat45 = ((x_1017 * x_1018) + 1.0f);
  let x_1021 : f32 = u_xlat45;
  u_xlat45 = max(x_1021, 0.0f);
  let x_1023 : f32 = u_xlat45;
  u_xlat45 = log2(x_1023);
  let x_1025 : f32 = u_xlat45;
  let x_1027 : f32 = x_48.unity_SpecCube0_HDR.y;
  u_xlat45 = (x_1025 * x_1027);
  let x_1029 : f32 = u_xlat45;
  u_xlat45 = exp2(x_1029);
  let x_1031 : f32 = u_xlat45;
  let x_1033 : f32 = x_48.unity_SpecCube0_HDR.x;
  u_xlat45 = (x_1031 * x_1033);
  let x_1035 : vec4<f32> = u_xlat8;
  let x_1037 : f32 = u_xlat45;
  let x_1039 : vec3<f32> = (vec3<f32>(x_1035.x, x_1035.y, x_1035.z) * vec3<f32>(x_1037, x_1037, x_1037));
  let x_1040 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1039.x, x_1039.y, x_1039.z, x_1040.w);
  let x_1042 : f32 = u_xlat46;
  let x_1044 : f32 = u_xlat46;
  let x_1048 : vec2<f32> = ((vec2<f32>(x_1042, x_1042) * vec2<f32>(x_1044, x_1044)) + vec2<f32>(-1.0f, 1.0f));
  let x_1049 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1048.x, x_1048.y, x_1049.z, x_1049.w);
  let x_1052 : f32 = u_xlat8.y;
  u_xlat45 = (1.0f / x_1052);
  let x_1054 : f32 = u_xlat19;
  u_xlat46 = (x_1054 + -0.03999999910593032837f);
  let x_1057 : f32 = u_xlat49;
  let x_1058 : f32 = u_xlat46;
  u_xlat46 = ((x_1057 * x_1058) + 0.03999999910593032837f);
  let x_1062 : f32 = u_xlat45;
  let x_1063 : f32 = u_xlat46;
  u_xlat45 = (x_1062 * x_1063);
  let x_1065 : f32 = u_xlat45;
  let x_1067 : vec4<f32> = u_xlat7;
  let x_1069 : vec3<f32> = (vec3<f32>(x_1065, x_1065, x_1065) * vec3<f32>(x_1067.x, x_1067.y, x_1067.z));
  let x_1070 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1069.x, x_1069.y, x_1069.z, x_1070.w);
  let x_1072 : vec4<f32> = u_xlat2;
  let x_1074 : vec4<f32> = u_xlat3;
  let x_1077 : vec4<f32> = u_xlat7;
  let x_1079 : vec3<f32> = ((vec3<f32>(x_1072.x, x_1072.z, x_1072.w) * vec3<f32>(x_1074.x, x_1074.y, x_1074.z)) + vec3<f32>(x_1077.x, x_1077.y, x_1077.z));
  let x_1080 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1079.x, x_1080.y, x_1079.y, x_1079.z);
  let x_1083 : f32 = u_xlat0.x;
  let x_1085 : f32 = x_48.unity_LightData.z;
  u_xlat0.x = (x_1083 * x_1085);
  let x_1088 : vec3<f32> = u_xlat14;
  let x_1090 : vec4<f32> = x_128.x_MainLightPosition;
  u_xlat45 = dot(x_1088, vec3<f32>(x_1090.x, x_1090.y, x_1090.z));
  let x_1093 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1093, 0.0f, 1.0f);
  let x_1096 : f32 = u_xlat0.x;
  let x_1097 : f32 = u_xlat45;
  u_xlat0.x = (x_1096 * x_1097);
  let x_1100 : vec3<f32> = u_xlat0;
  let x_1102 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1100.x, x_1100.x, x_1100.x) * x_1102);
  let x_1104 : vec4<f32> = u_xlat4;
  let x_1107 : vec4<f32> = x_128.x_MainLightPosition;
  let x_1109 : vec3<f32> = (vec3<f32>(x_1104.x, x_1104.y, x_1104.z) + vec3<f32>(x_1107.x, x_1107.y, x_1107.z));
  let x_1110 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1109.x, x_1109.y, x_1109.z, x_1110.w);
  let x_1112 : vec4<f32> = u_xlat7;
  let x_1114 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_1112.x, x_1112.y, x_1112.z), vec3<f32>(x_1114.x, x_1114.y, x_1114.z));
  let x_1119 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1119, 1.17549435e-38f);
  let x_1123 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1123);
  let x_1126 : vec3<f32> = u_xlat0;
  let x_1128 : vec4<f32> = u_xlat7;
  let x_1130 : vec3<f32> = (vec3<f32>(x_1126.x, x_1126.x, x_1126.x) * vec3<f32>(x_1128.x, x_1128.y, x_1128.z));
  let x_1131 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1130.x, x_1130.y, x_1130.z, x_1131.w);
  let x_1133 : vec3<f32> = u_xlat14;
  let x_1134 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_1133, vec3<f32>(x_1134.x, x_1134.y, x_1134.z));
  let x_1139 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1139, 0.0f, 1.0f);
  let x_1143 : vec4<f32> = x_128.x_MainLightPosition;
  let x_1145 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_1143.x, x_1143.y, x_1143.z), vec3<f32>(x_1145.x, x_1145.y, x_1145.z));
  let x_1148 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1148, 0.0f, 1.0f);
  let x_1151 : f32 = u_xlat0.x;
  let x_1153 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1151 * x_1153);
  let x_1157 : f32 = u_xlat0.x;
  let x_1159 : f32 = u_xlat8.x;
  u_xlat0.x = ((x_1157 * x_1159) + 1.00001001358032226562f);
  let x_1164 : f32 = u_xlat45;
  let x_1165 : f32 = u_xlat45;
  u_xlat45 = (x_1164 * x_1165);
  let x_1168 : f32 = u_xlat0.x;
  let x_1170 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1168 * x_1170);
  let x_1173 : f32 = u_xlat45;
  u_xlat45 = max(x_1173, 0.10000000149011611938f);
  let x_1177 : f32 = u_xlat0.x;
  let x_1178 : f32 = u_xlat45;
  u_xlat0.x = (x_1177 * x_1178);
  let x_1181 : f32 = u_xlat33;
  let x_1183 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1181 * x_1183);
  let x_1187 : f32 = u_xlat5.x;
  let x_1189 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1187 / x_1189);
  let x_1192 : vec3<f32> = u_xlat0;
  let x_1196 : vec4<f32> = u_xlat3;
  let x_1198 : vec3<f32> = ((vec3<f32>(x_1192.x, x_1192.x, x_1192.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + vec3<f32>(x_1196.x, x_1196.y, x_1196.z));
  let x_1199 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1198.x, x_1198.y, x_1198.z, x_1199.w);
  let x_1201 : vec3<f32> = u_xlat20;
  let x_1202 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_1201 * vec3<f32>(x_1202.x, x_1202.y, x_1202.z));
  let x_1206 : f32 = x_128.x_AdditionalLightsCount.x;
  let x_1208 : f32 = x_48.unity_LightData.y;
  u_xlat0.x = min(x_1206, x_1208);
  let x_1212 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1212));
  let x_1216 : f32 = u_xlat6.x;
  let x_1219 : f32 = x_246.x_AdditionalShadowFadeParams.x;
  let x_1222 : f32 = x_246.x_AdditionalShadowFadeParams.y;
  u_xlat45 = ((x_1216 * x_1219) + x_1222);
  let x_1224 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1224, 0.0f, 1.0f);
  let x_1228 : f32 = x_836.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1230 : f32 = x_836.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1232 : f32 = x_836.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1234 : f32 = x_836.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1235 : vec4<f32> = vec4<f32>(x_1228, x_1230, x_1232, x_1234);
  let x_1241 : vec4<bool> = (vec4<f32>(x_1235.x, x_1235.y, x_1235.z, x_1235.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1241.x, x_1241.y);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1254 : u32 = u_xlatu_loop_1;
    let x_1255 : u32 = u_xlatu0;
    if ((x_1254 < x_1255)) {
    } else {
      break;
    }
    let x_1258 : u32 = u_xlatu_loop_1;
    u_xlatu19 = (x_1258 >> 2u);
    let x_1261 : u32 = u_xlatu_loop_1;
    u_xlati6 = bitcast<i32>((x_1261 & 3u));
    let x_1264 : u32 = u_xlatu19;
    let x_1267 : vec4<f32> = x_48.unity_LightIndices[bitcast<i32>(x_1264)];
    let x_1277 : i32 = u_xlati6;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1282 : vec4<u32> = indexable[x_1277];
    u_xlat19 = dot(x_1267, bitcast<vec4<f32>>(x_1282));
    let x_1286 : f32 = u_xlat19;
    u_xlati19 = i32(x_1286);
    let x_1289 : vec3<f32> = vs_INTERP8;
    let x_1300 : i32 = u_xlati19;
    let x_1302 : vec4<f32> = x_1299.x_AdditionalLightsPosition[x_1300];
    let x_1305 : i32 = u_xlati19;
    let x_1307 : vec4<f32> = x_1299.x_AdditionalLightsPosition[x_1305];
    u_xlat9 = ((-(x_1289) * vec3<f32>(x_1302.w, x_1302.w, x_1302.w)) + vec3<f32>(x_1307.x, x_1307.y, x_1307.z));
    let x_1310 : vec3<f32> = u_xlat9;
    let x_1311 : vec3<f32> = u_xlat9;
    u_xlat6.x = dot(x_1310, x_1311);
    let x_1315 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_1315, 0.00006103515625f);
    let x_1321 : f32 = u_xlat6.x;
    u_xlat35 = inverseSqrt(x_1321);
    let x_1324 : f32 = u_xlat35;
    let x_1326 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1324, x_1324, x_1324) * x_1326);
    let x_1329 : f32 = u_xlat6.x;
    u_xlat49 = (1.0f / x_1329);
    let x_1332 : f32 = u_xlat6.x;
    let x_1333 : i32 = u_xlati19;
    let x_1335 : f32 = x_1299.x_AdditionalLightsAttenuation[x_1333].x;
    u_xlat6.x = (x_1332 * x_1335);
    let x_1339 : f32 = u_xlat6.x;
    let x_1342 : f32 = u_xlat6.x;
    u_xlat6.x = ((-(x_1339) * x_1342) + 1.0f);
    let x_1347 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_1347, 0.0f);
    let x_1351 : f32 = u_xlat6.x;
    let x_1353 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1351 * x_1353);
    let x_1357 : f32 = u_xlat6.x;
    let x_1358 : f32 = u_xlat49;
    u_xlat6.x = (x_1357 * x_1358);
    let x_1361 : i32 = u_xlati19;
    let x_1363 : vec4<f32> = x_1299.x_AdditionalLightsSpotDir[x_1361];
    let x_1365 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1363.x, x_1363.y, x_1363.z), x_1365);
    let x_1367 : f32 = u_xlat49;
    let x_1368 : i32 = u_xlati19;
    let x_1370 : f32 = x_1299.x_AdditionalLightsAttenuation[x_1368].z;
    let x_1372 : i32 = u_xlati19;
    let x_1374 : f32 = x_1299.x_AdditionalLightsAttenuation[x_1372].w;
    u_xlat49 = ((x_1367 * x_1370) + x_1374);
    let x_1376 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1376, 0.0f, 1.0f);
    let x_1378 : f32 = u_xlat49;
    let x_1379 : f32 = u_xlat49;
    u_xlat49 = (x_1378 * x_1379);
    let x_1382 : f32 = u_xlat6.x;
    let x_1383 : f32 = u_xlat49;
    u_xlat6.x = (x_1382 * x_1383);
    let x_1388 : i32 = u_xlati19;
    let x_1390 : f32 = x_246.x_AdditionalShadowParams[x_1388].w;
    u_xlati49 = i32(x_1390);
    let x_1393 : i32 = u_xlati49;
    u_xlatb51 = (x_1393 >= 0i);
    let x_1395 : bool = u_xlatb51;
    if (x_1395) {
      let x_1399 : i32 = u_xlati19;
      let x_1401 : f32 = x_246.x_AdditionalShadowParams[x_1399].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1401, x_1401, x_1401, x_1401))));
      let x_1405 : bool = u_xlatb51;
      if (x_1405) {
        let x_1409 : vec3<f32> = u_xlat10;
        let x_1412 : vec3<f32> = u_xlat10;
        let x_1415 : vec4<bool> = (abs(vec4<f32>(x_1409.z, x_1409.z, x_1409.y, x_1409.z)) >= abs(vec4<f32>(x_1412.x, x_1412.y, x_1412.x, x_1412.x)));
        let x_1417 : vec3<bool> = vec3<bool>(x_1415.x, x_1415.y, x_1415.z);
        let x_1418 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1417.x, x_1417.y, x_1417.z, x_1418.w);
        let x_1421 : bool = u_xlatb11.y;
        let x_1423 : bool = u_xlatb11.x;
        u_xlatb51 = (x_1421 & x_1423);
        let x_1425 : vec3<f32> = u_xlat10;
        let x_1428 : vec4<bool> = (-(vec4<f32>(x_1425.z, x_1425.y, x_1425.z, x_1425.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1429 : vec3<bool> = vec3<bool>(x_1428.x, x_1428.y, x_1428.w);
        let x_1430 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1429.x, x_1429.y, x_1430.z, x_1429.z);
        let x_1434 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1434);
        let x_1439 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1439);
        let x_1444 : bool = u_xlatb11.w;
        u_xlat52 = select(0.0f, 1.0f, x_1444);
        let x_1447 : bool = u_xlatb11.z;
        if (x_1447) {
          let x_1452 : f32 = u_xlat11.y;
          x_1448 = x_1452;
        } else {
          let x_1454 : f32 = u_xlat52;
          x_1448 = x_1454;
        }
        let x_1455 : f32 = x_1448;
        u_xlat52 = x_1455;
        let x_1457 : bool = u_xlatb51;
        if (x_1457) {
          let x_1462 : f32 = u_xlat11.x;
          x_1458 = x_1462;
        } else {
          let x_1464 : f32 = u_xlat52;
          x_1458 = x_1464;
        }
        let x_1465 : f32 = x_1458;
        u_xlat51 = x_1465;
        let x_1466 : i32 = u_xlati19;
        let x_1468 : f32 = x_246.x_AdditionalShadowParams[x_1466].w;
        u_xlat52 = trunc(x_1468);
        let x_1470 : f32 = u_xlat51;
        let x_1471 : f32 = u_xlat52;
        u_xlat51 = (x_1470 + x_1471);
        let x_1473 : f32 = u_xlat51;
        u_xlati49 = i32(x_1473);
      }
      let x_1475 : i32 = u_xlati49;
      u_xlati49 = (x_1475 << bitcast<u32>(2i));
      let x_1477 : vec3<f32> = vs_INTERP8;
      let x_1480 : i32 = u_xlati49;
      let x_1483 : i32 = u_xlati49;
      let x_1487 : vec4<f32> = x_246.x_AdditionalLightsWorldToShadow[((x_1480 + 1i) / 4i)][((x_1483 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1477.y, x_1477.y, x_1477.y, x_1477.y) * x_1487);
      let x_1489 : i32 = u_xlati49;
      let x_1491 : i32 = u_xlati49;
      let x_1494 : vec4<f32> = x_246.x_AdditionalLightsWorldToShadow[(x_1489 / 4i)][(x_1491 % 4i)];
      let x_1495 : vec3<f32> = vs_INTERP8;
      let x_1498 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1494 * vec4<f32>(x_1495.x, x_1495.x, x_1495.x, x_1495.x)) + x_1498);
      let x_1500 : i32 = u_xlati49;
      let x_1503 : i32 = u_xlati49;
      let x_1507 : vec4<f32> = x_246.x_AdditionalLightsWorldToShadow[((x_1500 + 2i) / 4i)][((x_1503 + 2i) % 4i)];
      let x_1508 : vec3<f32> = vs_INTERP8;
      let x_1511 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1507 * vec4<f32>(x_1508.z, x_1508.z, x_1508.z, x_1508.z)) + x_1511);
      let x_1513 : vec4<f32> = u_xlat11;
      let x_1514 : i32 = u_xlati49;
      let x_1517 : i32 = u_xlati49;
      let x_1521 : vec4<f32> = x_246.x_AdditionalLightsWorldToShadow[((x_1514 + 3i) / 4i)][((x_1517 + 3i) % 4i)];
      u_xlat11 = (x_1513 + x_1521);
      let x_1523 : vec4<f32> = u_xlat11;
      let x_1525 : vec4<f32> = u_xlat11;
      let x_1527 : vec3<f32> = (vec3<f32>(x_1523.x, x_1523.y, x_1523.z) / vec3<f32>(x_1525.w, x_1525.w, x_1525.w));
      let x_1528 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1527.x, x_1527.y, x_1527.z, x_1528.w);
      let x_1531 : vec4<f32> = u_xlat11;
      let x_1532 : vec2<f32> = vec2<f32>(x_1531.x, x_1531.y);
      let x_1534 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1532.x, x_1532.y, x_1534);
      let x_1542 : vec3<f32> = txVec1;
      let x_1544 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1542.xy, x_1542.z);
      u_xlat49 = x_1544;
      let x_1545 : i32 = u_xlati19;
      let x_1547 : f32 = x_246.x_AdditionalShadowParams[x_1545].x;
      u_xlat51 = (1.0f + -(x_1547));
      let x_1550 : f32 = u_xlat49;
      let x_1551 : i32 = u_xlati19;
      let x_1553 : f32 = x_246.x_AdditionalShadowParams[x_1551].x;
      let x_1555 : f32 = u_xlat51;
      u_xlat49 = ((x_1550 * x_1553) + x_1555);
      let x_1558 : f32 = u_xlat11.z;
      u_xlatb51 = (0.0f >= x_1558);
      let x_1562 : f32 = u_xlat11.z;
      u_xlatb52 = (x_1562 >= 1.0f);
      let x_1564 : bool = u_xlatb51;
      let x_1565 : bool = u_xlatb52;
      u_xlatb51 = (x_1564 | x_1565);
      let x_1567 : bool = u_xlatb51;
      let x_1568 : f32 = u_xlat49;
      u_xlat49 = select(x_1568, 1.0f, x_1567);
    } else {
      u_xlat49 = 1.0f;
    }
    let x_1571 : f32 = u_xlat49;
    u_xlat51 = (-(x_1571) + 1.0f);
    let x_1574 : f32 = u_xlat45;
    let x_1575 : f32 = u_xlat51;
    let x_1577 : f32 = u_xlat49;
    u_xlat49 = ((x_1574 * x_1575) + x_1577);
    let x_1580 : i32 = u_xlati19;
    u_xlati51 = (1i << bitcast<u32>((x_1580 & 31i)));
    let x_1584 : i32 = u_xlati51;
    let x_1587 : f32 = x_836.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_1584) & bitcast<u32>(x_1587)));
    let x_1591 : i32 = u_xlati51;
    if ((x_1591 != 0i)) {
      let x_1595 : i32 = u_xlati19;
      let x_1597 : f32 = x_836.x_AdditionalLightsLightTypes[x_1595].el;
      u_xlati51 = i32(x_1597);
      let x_1600 : i32 = u_xlati51;
      u_xlati52 = select(1i, 0i, (x_1600 != 0i));
      let x_1604 : i32 = u_xlati19;
      u_xlati11 = (x_1604 << bitcast<u32>(2i));
      let x_1606 : i32 = u_xlati52;
      if ((x_1606 != 0i)) {
        let x_1611 : vec3<f32> = vs_INTERP8;
        let x_1613 : i32 = u_xlati11;
        let x_1616 : i32 = u_xlati11;
        let x_1620 : vec4<f32> = x_836.x_AdditionalLightsWorldToLights[((x_1613 + 1i) / 4i)][((x_1616 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1611.y, x_1611.y, x_1611.y) * vec3<f32>(x_1620.x, x_1620.y, x_1620.w));
        let x_1623 : i32 = u_xlati11;
        let x_1625 : i32 = u_xlati11;
        let x_1628 : vec4<f32> = x_836.x_AdditionalLightsWorldToLights[(x_1623 / 4i)][(x_1625 % 4i)];
        let x_1630 : vec3<f32> = vs_INTERP8;
        let x_1633 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1628.x, x_1628.y, x_1628.w) * vec3<f32>(x_1630.x, x_1630.x, x_1630.x)) + x_1633);
        let x_1635 : i32 = u_xlati11;
        let x_1638 : i32 = u_xlati11;
        let x_1642 : vec4<f32> = x_836.x_AdditionalLightsWorldToLights[((x_1635 + 2i) / 4i)][((x_1638 + 2i) % 4i)];
        let x_1644 : vec3<f32> = vs_INTERP8;
        let x_1647 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1642.x, x_1642.y, x_1642.w) * vec3<f32>(x_1644.z, x_1644.z, x_1644.z)) + x_1647);
        let x_1649 : vec3<f32> = u_xlat25;
        let x_1650 : i32 = u_xlati11;
        let x_1653 : i32 = u_xlati11;
        let x_1657 : vec4<f32> = x_836.x_AdditionalLightsWorldToLights[((x_1650 + 3i) / 4i)][((x_1653 + 3i) % 4i)];
        u_xlat25 = (x_1649 + vec3<f32>(x_1657.x, x_1657.y, x_1657.w));
        let x_1660 : vec3<f32> = u_xlat25;
        let x_1662 : vec3<f32> = u_xlat25;
        let x_1664 : vec2<f32> = (vec2<f32>(x_1660.x, x_1660.y) / vec2<f32>(x_1662.z, x_1662.z));
        let x_1665 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1664.x, x_1664.y, x_1665.z);
        let x_1667 : vec3<f32> = u_xlat25;
        let x_1670 : vec2<f32> = ((vec2<f32>(x_1667.x, x_1667.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1671 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1670.x, x_1670.y, x_1671.z);
        let x_1673 : vec3<f32> = u_xlat25;
        let x_1677 : vec2<f32> = clamp(vec2<f32>(x_1673.x, x_1673.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1678 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1677.x, x_1677.y, x_1678.z);
        let x_1680 : i32 = u_xlati19;
        let x_1682 : vec4<f32> = x_836.x_AdditionalLightsCookieAtlasUVRects[x_1680];
        let x_1684 : vec3<f32> = u_xlat25;
        let x_1687 : i32 = u_xlati19;
        let x_1689 : vec4<f32> = x_836.x_AdditionalLightsCookieAtlasUVRects[x_1687];
        let x_1691 : vec2<f32> = ((vec2<f32>(x_1682.x, x_1682.y) * vec2<f32>(x_1684.x, x_1684.y)) + vec2<f32>(x_1689.z, x_1689.w));
        let x_1692 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1691.x, x_1691.y, x_1692.z);
      } else {
        let x_1695 : i32 = u_xlati51;
        u_xlatb51 = (x_1695 == 1i);
        let x_1697 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_1697);
        let x_1699 : i32 = u_xlati51;
        if ((x_1699 != 0i)) {
          let x_1704 : vec3<f32> = vs_INTERP8;
          let x_1706 : i32 = u_xlati11;
          let x_1709 : i32 = u_xlati11;
          let x_1713 : vec4<f32> = x_836.x_AdditionalLightsWorldToLights[((x_1706 + 1i) / 4i)][((x_1709 + 1i) % 4i)];
          let x_1715 : vec2<f32> = (vec2<f32>(x_1704.y, x_1704.y) * vec2<f32>(x_1713.x, x_1713.y));
          let x_1716 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1715.x, x_1715.y, x_1716.z, x_1716.w);
          let x_1718 : i32 = u_xlati11;
          let x_1720 : i32 = u_xlati11;
          let x_1723 : vec4<f32> = x_836.x_AdditionalLightsWorldToLights[(x_1718 / 4i)][(x_1720 % 4i)];
          let x_1725 : vec3<f32> = vs_INTERP8;
          let x_1728 : vec4<f32> = u_xlat12;
          let x_1730 : vec2<f32> = ((vec2<f32>(x_1723.x, x_1723.y) * vec2<f32>(x_1725.x, x_1725.x)) + vec2<f32>(x_1728.x, x_1728.y));
          let x_1731 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1730.x, x_1730.y, x_1731.z, x_1731.w);
          let x_1733 : i32 = u_xlati11;
          let x_1736 : i32 = u_xlati11;
          let x_1740 : vec4<f32> = x_836.x_AdditionalLightsWorldToLights[((x_1733 + 2i) / 4i)][((x_1736 + 2i) % 4i)];
          let x_1742 : vec3<f32> = vs_INTERP8;
          let x_1745 : vec4<f32> = u_xlat12;
          let x_1747 : vec2<f32> = ((vec2<f32>(x_1740.x, x_1740.y) * vec2<f32>(x_1742.z, x_1742.z)) + vec2<f32>(x_1745.x, x_1745.y));
          let x_1748 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1747.x, x_1747.y, x_1748.z, x_1748.w);
          let x_1750 : vec4<f32> = u_xlat12;
          let x_1752 : i32 = u_xlati11;
          let x_1755 : i32 = u_xlati11;
          let x_1759 : vec4<f32> = x_836.x_AdditionalLightsWorldToLights[((x_1752 + 3i) / 4i)][((x_1755 + 3i) % 4i)];
          let x_1761 : vec2<f32> = (vec2<f32>(x_1750.x, x_1750.y) + vec2<f32>(x_1759.x, x_1759.y));
          let x_1762 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1761.x, x_1761.y, x_1762.z, x_1762.w);
          let x_1764 : vec4<f32> = u_xlat12;
          let x_1767 : vec2<f32> = ((vec2<f32>(x_1764.x, x_1764.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1768 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1767.x, x_1767.y, x_1768.z, x_1768.w);
          let x_1770 : vec4<f32> = u_xlat12;
          let x_1772 : vec2<f32> = fract(vec2<f32>(x_1770.x, x_1770.y));
          let x_1773 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1772.x, x_1772.y, x_1773.z, x_1773.w);
          let x_1775 : i32 = u_xlati19;
          let x_1777 : vec4<f32> = x_836.x_AdditionalLightsCookieAtlasUVRects[x_1775];
          let x_1779 : vec4<f32> = u_xlat12;
          let x_1782 : i32 = u_xlati19;
          let x_1784 : vec4<f32> = x_836.x_AdditionalLightsCookieAtlasUVRects[x_1782];
          let x_1786 : vec2<f32> = ((vec2<f32>(x_1777.x, x_1777.y) * vec2<f32>(x_1779.x, x_1779.y)) + vec2<f32>(x_1784.z, x_1784.w));
          let x_1787 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1786.x, x_1786.y, x_1787.z);
        } else {
          let x_1790 : vec3<f32> = vs_INTERP8;
          let x_1792 : i32 = u_xlati11;
          let x_1795 : i32 = u_xlati11;
          let x_1799 : vec4<f32> = x_836.x_AdditionalLightsWorldToLights[((x_1792 + 1i) / 4i)][((x_1795 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1790.y, x_1790.y, x_1790.y, x_1790.y) * x_1799);
          let x_1801 : i32 = u_xlati11;
          let x_1803 : i32 = u_xlati11;
          let x_1806 : vec4<f32> = x_836.x_AdditionalLightsWorldToLights[(x_1801 / 4i)][(x_1803 % 4i)];
          let x_1807 : vec3<f32> = vs_INTERP8;
          let x_1810 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1806 * vec4<f32>(x_1807.x, x_1807.x, x_1807.x, x_1807.x)) + x_1810);
          let x_1812 : i32 = u_xlati11;
          let x_1815 : i32 = u_xlati11;
          let x_1819 : vec4<f32> = x_836.x_AdditionalLightsWorldToLights[((x_1812 + 2i) / 4i)][((x_1815 + 2i) % 4i)];
          let x_1820 : vec3<f32> = vs_INTERP8;
          let x_1823 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1819 * vec4<f32>(x_1820.z, x_1820.z, x_1820.z, x_1820.z)) + x_1823);
          let x_1825 : vec4<f32> = u_xlat12;
          let x_1826 : i32 = u_xlati11;
          let x_1829 : i32 = u_xlati11;
          let x_1833 : vec4<f32> = x_836.x_AdditionalLightsWorldToLights[((x_1826 + 3i) / 4i)][((x_1829 + 3i) % 4i)];
          u_xlat12 = (x_1825 + x_1833);
          let x_1835 : vec4<f32> = u_xlat12;
          let x_1837 : vec4<f32> = u_xlat12;
          let x_1839 : vec3<f32> = (vec3<f32>(x_1835.x, x_1835.y, x_1835.z) / vec3<f32>(x_1837.w, x_1837.w, x_1837.w));
          let x_1840 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1839.x, x_1839.y, x_1839.z, x_1840.w);
          let x_1842 : vec4<f32> = u_xlat12;
          let x_1844 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(vec3<f32>(x_1842.x, x_1842.y, x_1842.z), vec3<f32>(x_1844.x, x_1844.y, x_1844.z));
          let x_1847 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_1847);
          let x_1849 : f32 = u_xlat51;
          let x_1851 : vec4<f32> = u_xlat12;
          let x_1853 : vec3<f32> = (vec3<f32>(x_1849, x_1849, x_1849) * vec3<f32>(x_1851.x, x_1851.y, x_1851.z));
          let x_1854 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1853.x, x_1853.y, x_1853.z, x_1854.w);
          let x_1856 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(abs(vec3<f32>(x_1856.x, x_1856.y, x_1856.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1861 : f32 = u_xlat51;
          u_xlat51 = max(x_1861, 0.00000099999999747524f);
          let x_1864 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_1864);
          let x_1867 : f32 = u_xlat51;
          let x_1869 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1867, x_1867, x_1867) * vec3<f32>(x_1869.z, x_1869.x, x_1869.y));
          let x_1873 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1873);
          let x_1877 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1877, 0.0f, 1.0f);
          let x_1880 : vec3<f32> = u_xlat13;
          let x_1882 : vec4<bool> = (vec4<f32>(x_1880.y, x_1880.y, x_1880.y, x_1880.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1883 : vec2<bool> = vec2<bool>(x_1882.x, x_1882.w);
          let x_1884 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_1883.x, x_1884.y, x_1884.z, x_1883.y);
          let x_1887 : bool = u_xlatb11.x;
          if (x_1887) {
            let x_1892 : f32 = u_xlat13.x;
            x_1888 = x_1892;
          } else {
            let x_1895 : f32 = u_xlat13.x;
            x_1888 = -(x_1895);
          }
          let x_1897 : f32 = x_1888;
          u_xlat11.x = x_1897;
          let x_1900 : bool = u_xlatb11.w;
          if (x_1900) {
            let x_1905 : f32 = u_xlat13.x;
            x_1901 = x_1905;
          } else {
            let x_1908 : f32 = u_xlat13.x;
            x_1901 = -(x_1908);
          }
          let x_1910 : f32 = x_1901;
          u_xlat11.w = x_1910;
          let x_1912 : vec4<f32> = u_xlat12;
          let x_1914 : f32 = u_xlat51;
          let x_1917 : vec4<f32> = u_xlat11;
          let x_1919 : vec2<f32> = ((vec2<f32>(x_1912.x, x_1912.y) * vec2<f32>(x_1914, x_1914)) + vec2<f32>(x_1917.x, x_1917.w));
          let x_1920 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1919.x, x_1920.y, x_1920.z, x_1919.y);
          let x_1922 : vec4<f32> = u_xlat11;
          let x_1925 : vec2<f32> = ((vec2<f32>(x_1922.x, x_1922.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1926 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1925.x, x_1926.y, x_1926.z, x_1925.y);
          let x_1928 : vec4<f32> = u_xlat11;
          let x_1932 : vec2<f32> = clamp(vec2<f32>(x_1928.x, x_1928.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1933 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1932.x, x_1933.y, x_1933.z, x_1932.y);
          let x_1935 : i32 = u_xlati19;
          let x_1937 : vec4<f32> = x_836.x_AdditionalLightsCookieAtlasUVRects[x_1935];
          let x_1939 : vec4<f32> = u_xlat11;
          let x_1942 : i32 = u_xlati19;
          let x_1944 : vec4<f32> = x_836.x_AdditionalLightsCookieAtlasUVRects[x_1942];
          let x_1946 : vec2<f32> = ((vec2<f32>(x_1937.x, x_1937.y) * vec2<f32>(x_1939.x, x_1939.w)) + vec2<f32>(x_1944.z, x_1944.w));
          let x_1947 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1946.x, x_1946.y, x_1947.z);
        }
      }
      let x_1954 : vec3<f32> = u_xlat25;
      let x_1956 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1954.x, x_1954.y), 0.0f);
      u_xlat11 = x_1956;
      let x_1958 : bool = u_xlatb7.y;
      if (x_1958) {
        let x_1963 : f32 = u_xlat11.w;
        x_1959 = x_1963;
      } else {
        let x_1966 : f32 = u_xlat11.x;
        x_1959 = x_1966;
      }
      let x_1967 : f32 = x_1959;
      u_xlat51 = x_1967;
      let x_1969 : bool = u_xlatb7.x;
      if (x_1969) {
        let x_1973 : vec4<f32> = u_xlat11;
        x_1970 = vec3<f32>(x_1973.x, x_1973.y, x_1973.z);
      } else {
        let x_1976 : f32 = u_xlat51;
        x_1970 = vec3<f32>(x_1976, x_1976, x_1976);
      }
      let x_1978 : vec3<f32> = x_1970;
      let x_1979 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1978.x, x_1978.y, x_1978.z, x_1979.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1985 : vec4<f32> = u_xlat11;
    let x_1987 : i32 = u_xlati19;
    let x_1989 : vec4<f32> = x_1299.x_AdditionalLightsColor[x_1987];
    let x_1991 : vec3<f32> = (vec3<f32>(x_1985.x, x_1985.y, x_1985.z) * vec3<f32>(x_1989.x, x_1989.y, x_1989.z));
    let x_1992 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1991.x, x_1991.y, x_1991.z, x_1992.w);
    let x_1995 : f32 = u_xlat6.x;
    let x_1996 : f32 = u_xlat49;
    u_xlat19 = (x_1995 * x_1996);
    let x_1998 : vec3<f32> = u_xlat14;
    let x_1999 : vec3<f32> = u_xlat10;
    u_xlat6.x = dot(x_1998, x_1999);
    let x_2003 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_2003, 0.0f, 1.0f);
    let x_2006 : f32 = u_xlat19;
    let x_2008 : f32 = u_xlat6.x;
    u_xlat19 = (x_2006 * x_2008);
    let x_2010 : f32 = u_xlat19;
    let x_2012 : vec4<f32> = u_xlat11;
    let x_2014 : vec3<f32> = (vec3<f32>(x_2010, x_2010, x_2010) * vec3<f32>(x_2012.x, x_2012.y, x_2012.z));
    let x_2015 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2014.x, x_2014.y, x_2014.z, x_2015.w);
    let x_2017 : vec3<f32> = u_xlat9;
    let x_2018 : f32 = u_xlat35;
    let x_2021 : vec4<f32> = u_xlat4;
    u_xlat9 = ((x_2017 * vec3<f32>(x_2018, x_2018, x_2018)) + vec3<f32>(x_2021.x, x_2021.y, x_2021.z));
    let x_2024 : vec3<f32> = u_xlat9;
    let x_2025 : vec3<f32> = u_xlat9;
    u_xlat19 = dot(x_2024, x_2025);
    let x_2027 : f32 = u_xlat19;
    u_xlat19 = max(x_2027, 1.17549435e-38f);
    let x_2029 : f32 = u_xlat19;
    u_xlat19 = inverseSqrt(x_2029);
    let x_2031 : f32 = u_xlat19;
    let x_2033 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_2031, x_2031, x_2031) * x_2033);
    let x_2035 : vec3<f32> = u_xlat14;
    let x_2036 : vec3<f32> = u_xlat9;
    u_xlat19 = dot(x_2035, x_2036);
    let x_2038 : f32 = u_xlat19;
    u_xlat19 = clamp(x_2038, 0.0f, 1.0f);
    let x_2040 : vec3<f32> = u_xlat10;
    let x_2041 : vec3<f32> = u_xlat9;
    u_xlat6.x = dot(x_2040, x_2041);
    let x_2045 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_2045, 0.0f, 1.0f);
    let x_2048 : f32 = u_xlat19;
    let x_2049 : f32 = u_xlat19;
    u_xlat19 = (x_2048 * x_2049);
    let x_2051 : f32 = u_xlat19;
    let x_2053 : f32 = u_xlat8.x;
    u_xlat19 = ((x_2051 * x_2053) + 1.00001001358032226562f);
    let x_2057 : f32 = u_xlat6.x;
    let x_2059 : f32 = u_xlat6.x;
    u_xlat6.x = (x_2057 * x_2059);
    let x_2062 : f32 = u_xlat19;
    let x_2063 : f32 = u_xlat19;
    u_xlat19 = (x_2062 * x_2063);
    let x_2066 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_2066, 0.10000000149011611938f);
    let x_2069 : f32 = u_xlat19;
    let x_2071 : f32 = u_xlat6.x;
    u_xlat19 = (x_2069 * x_2071);
    let x_2073 : f32 = u_xlat33;
    let x_2074 : f32 = u_xlat19;
    u_xlat19 = (x_2073 * x_2074);
    let x_2077 : f32 = u_xlat5.x;
    let x_2078 : f32 = u_xlat19;
    u_xlat19 = (x_2077 / x_2078);
    let x_2080 : f32 = u_xlat19;
    let x_2083 : vec4<f32> = u_xlat3;
    u_xlat9 = ((vec3<f32>(x_2080, x_2080, x_2080) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + vec3<f32>(x_2083.x, x_2083.y, x_2083.z));
    let x_2086 : vec3<f32> = u_xlat9;
    let x_2087 : vec4<f32> = u_xlat11;
    let x_2090 : vec3<f32> = u_xlat22;
    u_xlat22 = ((x_2086 * vec3<f32>(x_2087.x, x_2087.y, x_2087.z)) + x_2090);

    continuing {
      let x_2092 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2092 + bitcast<u32>(1i));
    }
  }
  let x_2094 : vec4<f32> = u_xlat2;
  let x_2096 : f32 = u_xlat47;
  let x_2099 : vec3<f32> = u_xlat20;
  u_xlat0 = ((vec3<f32>(x_2094.x, x_2094.z, x_2094.w) * vec3<f32>(x_2096, x_2096, x_2096)) + x_2099);
  let x_2101 : vec3<f32> = u_xlat22;
  let x_2102 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_2101 + x_2102);
  let x_2106 : vec4<f32> = vs_INTERP6;
  let x_2108 : vec3<f32> = u_xlat1;
  let x_2110 : vec3<f32> = u_xlat0;
  let x_2111 : vec3<f32> = ((vec3<f32>(x_2106.w, x_2106.w, x_2106.w) * x_2108) + x_2110);
  let x_2112 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2111.x, x_2111.y, x_2111.z, x_2112.w);
  let x_2114 : bool = u_xlatb16;
  let x_2115 : f32 = u_xlat43;
  SV_Target0.w = select(1.0f, x_2115, x_2114);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(5) vs_INTERP9_param : vec3<f32>, @location(1) vs_INTERP4_param : vec4<f32>, @location(2) vs_INTERP5_param : vec4<f32>, @location(3) vs_INTERP6_param : vec4<f32>, @location(4) vs_INTERP8_param : vec3<f32>, @location(0) vs_INTERP0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP9 = vs_INTERP9_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP6 = vs_INTERP6_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP0 = vs_INTERP0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


