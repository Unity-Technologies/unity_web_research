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

var<private> u_xlat17 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat46 : f32;

var<private> u_xlat19 : f32;

var<private> u_xlat33 : f32;

var<private> u_xlat47 : f32;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat48 : f32;

var<private> u_xlatb34 : vec2<bool>;

@group(1) @binding(4) var<uniform> x_867 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat9 : vec2<f32>;

var<private> u_xlatb5 : vec3<bool>;

var<private> u_xlatu8 : u32;

var<private> u_xlati22 : i32;

var<private> u_xlati8 : i32;

var<private> u_xlat22 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_1340 : AdditionalLights;

var<private> u_xlat23 : f32;

var<private> u_xlat37 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat51 : f32;

var<private> u_xlati51 : i32;

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

var<private> u_xlat50 : f32;

var<private> u_xlat42 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb8 : bool;

var<private> u_xlatu49 : u32;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_485 : f32;
  var x_524 : f32;
  var x_571 : f32;
  var x_664 : vec3<f32>;
  var x_935 : f32;
  var x_946 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1472 : f32;
  var x_1483 : f32;
  var txVec1 : vec3<f32>;
  var x_1928 : f32;
  var x_1941 : f32;
  var x_1999 : f32;
  var x_2010 : vec3<f32>;
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
  let x_654 : f32 = x_128.unity_MatrixV[0i].z;
  u_xlat4.x = x_654;
  let x_657 : f32 = x_128.unity_MatrixV[1i].z;
  u_xlat4.y = x_657;
  let x_660 : f32 = x_128.unity_MatrixV[2i].z;
  u_xlat4.z = x_660;
  let x_663 : bool = u_xlatb2.x;
  if (x_663) {
    let x_667 : vec4<f32> = u_xlat3;
    x_664 = vec3<f32>(x_667.x, x_667.y, x_667.z);
  } else {
    let x_670 : vec4<f32> = u_xlat4;
    x_664 = vec3<f32>(x_670.x, x_670.y, x_670.z);
  }
  let x_672 : vec3<f32> = x_664;
  let x_673 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_672.x, x_673.y, x_672.y, x_672.z);
  let x_676 : f32 = vs_INTERP8.y;
  let x_678 : f32 = x_128.unity_MatrixV[1i].z;
  u_xlat3.x = (x_676 * x_678);
  let x_682 : f32 = x_128.unity_MatrixV[0i].z;
  let x_684 : f32 = vs_INTERP8.x;
  let x_687 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_682 * x_684) + x_687);
  let x_691 : f32 = x_128.unity_MatrixV[2i].z;
  let x_693 : f32 = vs_INTERP8.z;
  let x_696 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_691 * x_693) + x_696);
  let x_700 : f32 = u_xlat3.x;
  let x_702 : f32 = x_128.unity_MatrixV[3i].z;
  u_xlat3.x = (x_700 + x_702);
  let x_706 : f32 = u_xlat3.x;
  let x_710 : f32 = x_128.x_ProjectionParams.y;
  u_xlat3.x = (-(x_706) + -(x_710));
  let x_715 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_715, 0.0f);
  let x_719 : f32 = u_xlat3.x;
  let x_721 : f32 = x_128.unity_FogParams.x;
  u_xlat3.x = (x_719 * x_721);
  let x_731 : vec2<f32> = vs_INTERP0;
  let x_733 : f32 = x_128.x_GlobalMipBias.x;
  let x_734 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_731, x_733);
  u_xlat4 = x_734;
  let x_740 : vec2<f32> = vs_INTERP0;
  let x_742 : f32 = x_128.x_GlobalMipBias.x;
  let x_743 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_740, x_742);
  u_xlat17 = vec3<f32>(x_743.x, x_743.y, x_743.z);
  let x_745 : vec4<f32> = u_xlat4;
  let x_749 : vec3<f32> = (vec3<f32>(x_745.x, x_745.y, x_745.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_750 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_749.x, x_749.y, x_749.z, x_750.w);
  let x_752 : vec3<f32> = u_xlat14;
  let x_753 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(x_752, vec3<f32>(x_753.x, x_753.y, x_753.z));
  let x_758 : f32 = u_xlat4.x;
  u_xlat4.x = (x_758 + 0.5f);
  let x_761 : vec3<f32> = u_xlat17;
  let x_762 : vec4<f32> = u_xlat4;
  u_xlat17 = (x_761 * vec3<f32>(x_762.x, x_762.x, x_762.x));
  let x_766 : f32 = u_xlat4.w;
  u_xlat4.x = max(x_766, 0.00009999999747378752f);
  let x_769 : vec3<f32> = u_xlat17;
  let x_770 : vec4<f32> = u_xlat4;
  u_xlat17 = (x_769 / vec3<f32>(x_770.x, x_770.x, x_770.x));
  let x_774 : f32 = u_xlat6.x;
  u_xlat6.x = x_774;
  let x_777 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_777, 0.0f, 1.0f);
  let x_780 : f32 = u_xlat43;
  u_xlat43 = min(x_780, 1.0f);
  let x_782 : vec3<f32> = u_xlat5;
  let x_785 : vec3<f32> = (x_782 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_786 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_785.x, x_785.y, x_785.z, x_786.w);
  let x_790 : f32 = u_xlat6.x;
  u_xlat46 = (-(x_790) + 1.0f);
  let x_793 : f32 = u_xlat46;
  let x_794 : f32 = u_xlat46;
  u_xlat5.x = (x_793 * x_794);
  let x_798 : f32 = u_xlat5.x;
  u_xlat5.x = max(x_798, 0.0078125f);
  let x_804 : f32 = u_xlat5.x;
  let x_806 : f32 = u_xlat5.x;
  u_xlat19 = (x_804 * x_806);
  let x_810 : f32 = u_xlat6.x;
  u_xlat33 = (x_810 + 0.04000002145767211914f);
  let x_813 : f32 = u_xlat33;
  u_xlat33 = min(x_813, 1.0f);
  let x_817 : f32 = u_xlat5.x;
  u_xlat47 = ((x_817 * 4.0f) + 2.0f);
  let x_821 : f32 = vs_INTERP6.w;
  u_xlat6.x = min(x_821, 1.0f);
  let x_824 : vec3<f32> = vs_INTERP8;
  let x_826 : vec3<f32> = x_128.x_WorldSpaceCameraPos;
  u_xlat20 = (x_824 + -(x_826));
  let x_829 : vec3<f32> = u_xlat20;
  let x_830 : vec3<f32> = u_xlat20;
  u_xlat20.x = dot(x_829, x_830);
  let x_836 : f32 = u_xlat20.x;
  let x_838 : f32 = x_246.x_MainLightShadowParams.z;
  let x_841 : f32 = x_246.x_MainLightShadowParams.w;
  u_xlat34.x = ((x_836 * x_838) + x_841);
  let x_845 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_845, 0.0f, 1.0f);
  let x_850 : f32 = u_xlat0.x;
  u_xlat48 = (-(x_850) + 1.0f);
  let x_854 : f32 = u_xlat34.x;
  let x_855 : f32 = u_xlat48;
  let x_858 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_854 * x_855) + x_858);
  let x_869 : f32 = x_867.x_MainLightCookieTextureFormat;
  u_xlatb34.x = !((x_869 == -1.0f));
  let x_873 : bool = u_xlatb34.x;
  if (x_873) {
    let x_876 : vec3<f32> = vs_INTERP8;
    let x_879 : vec4<f32> = x_867.x_MainLightWorldToLight[1i];
    u_xlat34 = (vec2<f32>(x_876.y, x_876.y) * vec2<f32>(x_879.x, x_879.y));
    let x_883 : vec4<f32> = x_867.x_MainLightWorldToLight[0i];
    let x_885 : vec3<f32> = vs_INTERP8;
    let x_888 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_883.x, x_883.y) * vec2<f32>(x_885.x, x_885.x)) + x_888);
    let x_891 : vec4<f32> = x_867.x_MainLightWorldToLight[2i];
    let x_893 : vec3<f32> = vs_INTERP8;
    let x_896 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_891.x, x_891.y) * vec2<f32>(x_893.z, x_893.z)) + x_896);
    let x_898 : vec2<f32> = u_xlat34;
    let x_900 : vec4<f32> = x_867.x_MainLightWorldToLight[3i];
    u_xlat34 = (x_898 + vec2<f32>(x_900.x, x_900.y));
    let x_903 : vec2<f32> = u_xlat34;
    u_xlat34 = ((x_903 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_912 : vec2<f32> = u_xlat34;
    let x_914 : f32 = x_128.x_GlobalMipBias.x;
    let x_915 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_912, x_914);
    u_xlat7 = x_915;
    let x_917 : f32 = x_867.x_MainLightCookieTextureFormat;
    let x_919 : f32 = x_867.x_MainLightCookieTextureFormat;
    let x_921 : f32 = x_867.x_MainLightCookieTextureFormat;
    let x_923 : f32 = x_867.x_MainLightCookieTextureFormat;
    let x_924 : vec4<f32> = vec4<f32>(x_917, x_919, x_921, x_923);
    let x_931 : vec4<bool> = (vec4<f32>(x_924.x, x_924.y, x_924.z, x_924.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb34 = vec2<bool>(x_931.x, x_931.y);
    let x_934 : bool = u_xlatb34.y;
    if (x_934) {
      let x_939 : f32 = u_xlat7.w;
      x_935 = x_939;
    } else {
      let x_942 : f32 = u_xlat7.x;
      x_935 = x_942;
    }
    let x_943 : f32 = x_935;
    u_xlat48 = x_943;
    let x_945 : bool = u_xlatb34.x;
    if (x_945) {
      let x_949 : vec4<f32> = u_xlat7;
      x_946 = vec3<f32>(x_949.x, x_949.y, x_949.z);
    } else {
      let x_952 : f32 = u_xlat48;
      x_946 = vec3<f32>(x_952, x_952, x_952);
    }
    let x_954 : vec3<f32> = x_946;
    let x_955 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_954.x, x_954.y, x_954.z, x_955.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_961 : vec4<f32> = u_xlat7;
  let x_964 : vec4<f32> = x_128.x_MainLightColor;
  let x_966 : vec3<f32> = (vec3<f32>(x_961.x, x_961.y, x_961.z) * vec3<f32>(x_964.x, x_964.y, x_964.z));
  let x_967 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_966.x, x_966.y, x_966.z, x_967.w);
  let x_969 : vec4<f32> = u_xlat2;
  let x_972 : vec3<f32> = u_xlat14;
  u_xlat34.x = dot(-(vec3<f32>(x_969.x, x_969.z, x_969.w)), x_972);
  let x_976 : f32 = u_xlat34.x;
  let x_978 : f32 = u_xlat34.x;
  u_xlat34.x = (x_976 + x_978);
  let x_981 : vec3<f32> = u_xlat14;
  let x_982 : vec2<f32> = u_xlat34;
  let x_986 : vec4<f32> = u_xlat2;
  let x_989 : vec3<f32> = ((x_981 * -(vec3<f32>(x_982.x, x_982.x, x_982.x))) + -(vec3<f32>(x_986.x, x_986.z, x_986.w)));
  let x_990 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_989.x, x_989.y, x_989.z, x_990.w);
  let x_992 : vec3<f32> = u_xlat14;
  let x_993 : vec4<f32> = u_xlat2;
  u_xlat34.x = dot(x_992, vec3<f32>(x_993.x, x_993.z, x_993.w));
  let x_998 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_998, 0.0f, 1.0f);
  let x_1002 : f32 = u_xlat34.x;
  u_xlat34.x = (-(x_1002) + 1.0f);
  let x_1007 : f32 = u_xlat34.x;
  let x_1009 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1007 * x_1009);
  let x_1013 : f32 = u_xlat34.x;
  let x_1015 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1013 * x_1015);
  let x_1018 : f32 = u_xlat46;
  u_xlat48 = ((-(x_1018) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1024 : f32 = u_xlat46;
  let x_1025 : f32 = u_xlat48;
  u_xlat46 = (x_1024 * x_1025);
  let x_1027 : f32 = u_xlat46;
  u_xlat46 = (x_1027 * 6.0f);
  let x_1038 : vec4<f32> = u_xlat8;
  let x_1040 : f32 = u_xlat46;
  let x_1041 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1038.x, x_1038.y, x_1038.z), x_1040);
  u_xlat8 = x_1041;
  let x_1043 : f32 = u_xlat8.w;
  u_xlat46 = (x_1043 + -1.0f);
  let x_1046 : f32 = x_48.unity_SpecCube0_HDR.w;
  let x_1047 : f32 = u_xlat46;
  u_xlat46 = ((x_1046 * x_1047) + 1.0f);
  let x_1050 : f32 = u_xlat46;
  u_xlat46 = max(x_1050, 0.0f);
  let x_1052 : f32 = u_xlat46;
  u_xlat46 = log2(x_1052);
  let x_1054 : f32 = u_xlat46;
  let x_1056 : f32 = x_48.unity_SpecCube0_HDR.y;
  u_xlat46 = (x_1054 * x_1056);
  let x_1058 : f32 = u_xlat46;
  u_xlat46 = exp2(x_1058);
  let x_1060 : f32 = u_xlat46;
  let x_1062 : f32 = x_48.unity_SpecCube0_HDR.x;
  u_xlat46 = (x_1060 * x_1062);
  let x_1064 : vec4<f32> = u_xlat8;
  let x_1066 : f32 = u_xlat46;
  let x_1068 : vec3<f32> = (vec3<f32>(x_1064.x, x_1064.y, x_1064.z) * vec3<f32>(x_1066, x_1066, x_1066));
  let x_1069 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1068.x, x_1068.y, x_1068.z, x_1069.w);
  let x_1072 : vec3<f32> = u_xlat5;
  let x_1074 : vec3<f32> = u_xlat5;
  u_xlat9 = ((vec2<f32>(x_1072.x, x_1072.x) * vec2<f32>(x_1074.x, x_1074.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1080 : f32 = u_xlat9.y;
  u_xlat46 = (1.0f / x_1080);
  let x_1082 : f32 = u_xlat33;
  u_xlat5.x = (x_1082 + -0.03999999910593032837f);
  let x_1087 : f32 = u_xlat34.x;
  let x_1089 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1087 * x_1089) + 0.03999999910593032837f);
  let x_1094 : f32 = u_xlat46;
  let x_1096 : f32 = u_xlat5.x;
  u_xlat46 = (x_1094 * x_1096);
  let x_1098 : f32 = u_xlat46;
  let x_1100 : vec4<f32> = u_xlat8;
  let x_1102 : vec3<f32> = (vec3<f32>(x_1098, x_1098, x_1098) * vec3<f32>(x_1100.x, x_1100.y, x_1100.z));
  let x_1103 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1102.x, x_1102.y, x_1102.z, x_1103.w);
  let x_1105 : vec3<f32> = u_xlat17;
  let x_1106 : vec4<f32> = u_xlat4;
  let x_1109 : vec4<f32> = u_xlat8;
  u_xlat17 = ((x_1105 * vec3<f32>(x_1106.x, x_1106.y, x_1106.z)) + vec3<f32>(x_1109.x, x_1109.y, x_1109.z));
  let x_1113 : f32 = u_xlat0.x;
  let x_1115 : f32 = x_48.unity_LightData.z;
  u_xlat0.x = (x_1113 * x_1115);
  let x_1118 : vec3<f32> = u_xlat14;
  let x_1120 : vec4<f32> = x_128.x_MainLightPosition;
  u_xlat46 = dot(x_1118, vec3<f32>(x_1120.x, x_1120.y, x_1120.z));
  let x_1123 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1123, 0.0f, 1.0f);
  let x_1126 : f32 = u_xlat0.x;
  let x_1127 : f32 = u_xlat46;
  u_xlat0.x = (x_1126 * x_1127);
  let x_1130 : vec3<f32> = u_xlat0;
  let x_1132 : vec4<f32> = u_xlat7;
  let x_1134 : vec3<f32> = (vec3<f32>(x_1130.x, x_1130.x, x_1130.x) * vec3<f32>(x_1132.x, x_1132.y, x_1132.z));
  let x_1135 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1134.x, x_1134.y, x_1134.z, x_1135.w);
  let x_1137 : vec4<f32> = u_xlat2;
  let x_1140 : vec4<f32> = x_128.x_MainLightPosition;
  let x_1142 : vec3<f32> = (vec3<f32>(x_1137.x, x_1137.z, x_1137.w) + vec3<f32>(x_1140.x, x_1140.y, x_1140.z));
  let x_1143 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1142.x, x_1142.y, x_1142.z, x_1143.w);
  let x_1145 : vec4<f32> = u_xlat8;
  let x_1147 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_1145.x, x_1145.y, x_1145.z), vec3<f32>(x_1147.x, x_1147.y, x_1147.z));
  let x_1152 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1152, 1.17549435e-38f);
  let x_1156 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1156);
  let x_1159 : vec3<f32> = u_xlat0;
  let x_1161 : vec4<f32> = u_xlat8;
  let x_1163 : vec3<f32> = (vec3<f32>(x_1159.x, x_1159.x, x_1159.x) * vec3<f32>(x_1161.x, x_1161.y, x_1161.z));
  let x_1164 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1163.x, x_1163.y, x_1163.z, x_1164.w);
  let x_1166 : vec3<f32> = u_xlat14;
  let x_1167 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_1166, vec3<f32>(x_1167.x, x_1167.y, x_1167.z));
  let x_1172 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1172, 0.0f, 1.0f);
  let x_1176 : vec4<f32> = x_128.x_MainLightPosition;
  let x_1178 : vec4<f32> = u_xlat8;
  u_xlat46 = dot(vec3<f32>(x_1176.x, x_1176.y, x_1176.z), vec3<f32>(x_1178.x, x_1178.y, x_1178.z));
  let x_1181 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1181, 0.0f, 1.0f);
  let x_1184 : f32 = u_xlat0.x;
  let x_1186 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1184 * x_1186);
  let x_1190 : f32 = u_xlat0.x;
  let x_1192 : f32 = u_xlat9.x;
  u_xlat0.x = ((x_1190 * x_1192) + 1.00001001358032226562f);
  let x_1197 : f32 = u_xlat46;
  let x_1198 : f32 = u_xlat46;
  u_xlat46 = (x_1197 * x_1198);
  let x_1201 : f32 = u_xlat0.x;
  let x_1203 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1201 * x_1203);
  let x_1206 : f32 = u_xlat46;
  u_xlat46 = max(x_1206, 0.10000000149011611938f);
  let x_1210 : f32 = u_xlat0.x;
  let x_1211 : f32 = u_xlat46;
  u_xlat0.x = (x_1210 * x_1211);
  let x_1214 : f32 = u_xlat47;
  let x_1216 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1214 * x_1216);
  let x_1219 : f32 = u_xlat19;
  let x_1221 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1219 / x_1221);
  let x_1224 : vec3<f32> = u_xlat0;
  let x_1228 : vec4<f32> = u_xlat4;
  let x_1230 : vec3<f32> = ((vec3<f32>(x_1224.x, x_1224.x, x_1224.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + vec3<f32>(x_1228.x, x_1228.y, x_1228.z));
  let x_1231 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1230.x, x_1230.y, x_1230.z, x_1231.w);
  let x_1233 : vec4<f32> = u_xlat7;
  let x_1235 : vec4<f32> = u_xlat8;
  let x_1237 : vec3<f32> = (vec3<f32>(x_1233.x, x_1233.y, x_1233.z) * vec3<f32>(x_1235.x, x_1235.y, x_1235.z));
  let x_1238 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1237.x, x_1237.y, x_1237.z, x_1238.w);
  let x_1241 : f32 = x_128.x_AdditionalLightsCount.x;
  let x_1243 : f32 = x_48.unity_LightData.y;
  u_xlat0.x = min(x_1241, x_1243);
  let x_1247 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1247));
  let x_1251 : f32 = u_xlat20.x;
  let x_1254 : f32 = x_246.x_AdditionalShadowFadeParams.x;
  let x_1257 : f32 = x_246.x_AdditionalShadowFadeParams.y;
  u_xlat46 = ((x_1251 * x_1254) + x_1257);
  let x_1259 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1259, 0.0f, 1.0f);
  let x_1265 : f32 = x_867.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1267 : f32 = x_867.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1269 : f32 = x_867.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1271 : f32 = x_867.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1272 : vec4<f32> = vec4<f32>(x_1265, x_1267, x_1269, x_1271);
  let x_1279 : vec4<bool> = (vec4<f32>(x_1272.x, x_1272.y, x_1272.z, x_1272.w) == vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f));
  let x_1280 : vec2<bool> = vec2<bool>(x_1279.x, x_1279.z);
  let x_1281 : vec3<bool> = u_xlatb5;
  u_xlatb5 = vec3<bool>(x_1280.x, x_1281.y, x_1280.y);
  u_xlat20.x = 0.0f;
  u_xlat20.y = 0.0f;
  u_xlat20.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1293 : u32 = u_xlatu_loop_1;
    let x_1294 : u32 = u_xlatu0;
    if ((x_1293 < x_1294)) {
    } else {
      break;
    }
    let x_1297 : u32 = u_xlatu_loop_1;
    u_xlatu8 = (x_1297 >> 2u);
    let x_1300 : u32 = u_xlatu_loop_1;
    u_xlati22 = bitcast<i32>((x_1300 & 3u));
    let x_1303 : u32 = u_xlatu8;
    let x_1306 : vec4<f32> = x_48.unity_LightIndices[bitcast<i32>(x_1303)];
    let x_1316 : i32 = u_xlati22;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1321 : vec4<u32> = indexable[x_1316];
    u_xlat8.x = dot(x_1306, bitcast<vec4<f32>>(x_1321));
    let x_1327 : f32 = u_xlat8.x;
    u_xlati8 = i32(x_1327);
    let x_1330 : vec3<f32> = vs_INTERP8;
    let x_1341 : i32 = u_xlati8;
    let x_1343 : vec4<f32> = x_1340.x_AdditionalLightsPosition[x_1341];
    let x_1346 : i32 = u_xlati8;
    let x_1348 : vec4<f32> = x_1340.x_AdditionalLightsPosition[x_1346];
    u_xlat22 = ((-(x_1330) * vec3<f32>(x_1343.w, x_1343.w, x_1343.w)) + vec3<f32>(x_1348.x, x_1348.y, x_1348.z));
    let x_1352 : vec3<f32> = u_xlat22;
    let x_1353 : vec3<f32> = u_xlat22;
    u_xlat23 = dot(x_1352, x_1353);
    let x_1355 : f32 = u_xlat23;
    u_xlat23 = max(x_1355, 0.00006103515625f);
    let x_1359 : f32 = u_xlat23;
    u_xlat37 = inverseSqrt(x_1359);
    let x_1362 : vec3<f32> = u_xlat22;
    let x_1363 : f32 = u_xlat37;
    u_xlat10 = (x_1362 * vec3<f32>(x_1363, x_1363, x_1363));
    let x_1367 : f32 = u_xlat23;
    u_xlat51 = (1.0f / x_1367);
    let x_1369 : f32 = u_xlat23;
    let x_1370 : i32 = u_xlati8;
    let x_1372 : f32 = x_1340.x_AdditionalLightsAttenuation[x_1370].x;
    u_xlat23 = (x_1369 * x_1372);
    let x_1374 : f32 = u_xlat23;
    let x_1376 : f32 = u_xlat23;
    u_xlat23 = ((-(x_1374) * x_1376) + 1.0f);
    let x_1379 : f32 = u_xlat23;
    u_xlat23 = max(x_1379, 0.0f);
    let x_1381 : f32 = u_xlat23;
    let x_1382 : f32 = u_xlat23;
    u_xlat23 = (x_1381 * x_1382);
    let x_1384 : f32 = u_xlat23;
    let x_1385 : f32 = u_xlat51;
    u_xlat23 = (x_1384 * x_1385);
    let x_1387 : i32 = u_xlati8;
    let x_1389 : vec4<f32> = x_1340.x_AdditionalLightsSpotDir[x_1387];
    let x_1391 : vec3<f32> = u_xlat10;
    u_xlat51 = dot(vec3<f32>(x_1389.x, x_1389.y, x_1389.z), x_1391);
    let x_1393 : f32 = u_xlat51;
    let x_1394 : i32 = u_xlati8;
    let x_1396 : f32 = x_1340.x_AdditionalLightsAttenuation[x_1394].z;
    let x_1398 : i32 = u_xlati8;
    let x_1400 : f32 = x_1340.x_AdditionalLightsAttenuation[x_1398].w;
    u_xlat51 = ((x_1393 * x_1396) + x_1400);
    let x_1402 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1402, 0.0f, 1.0f);
    let x_1404 : f32 = u_xlat51;
    let x_1405 : f32 = u_xlat51;
    u_xlat51 = (x_1404 * x_1405);
    let x_1407 : f32 = u_xlat51;
    let x_1408 : f32 = u_xlat23;
    u_xlat23 = (x_1407 * x_1408);
    let x_1412 : i32 = u_xlati8;
    let x_1414 : f32 = x_246.x_AdditionalShadowParams[x_1412].w;
    u_xlati51 = i32(x_1414);
    let x_1417 : i32 = u_xlati51;
    u_xlatb52 = (x_1417 >= 0i);
    let x_1419 : bool = u_xlatb52;
    if (x_1419) {
      let x_1423 : i32 = u_xlati8;
      let x_1425 : f32 = x_246.x_AdditionalShadowParams[x_1423].z;
      u_xlatb52 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1425, x_1425, x_1425, x_1425))));
      let x_1429 : bool = u_xlatb52;
      if (x_1429) {
        let x_1433 : vec3<f32> = u_xlat10;
        let x_1436 : vec3<f32> = u_xlat10;
        let x_1439 : vec4<bool> = (abs(vec4<f32>(x_1433.z, x_1433.z, x_1433.y, x_1433.z)) >= abs(vec4<f32>(x_1436.x, x_1436.y, x_1436.x, x_1436.x)));
        let x_1440 : vec3<bool> = vec3<bool>(x_1439.x, x_1439.y, x_1439.z);
        let x_1441 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1440.x, x_1440.y, x_1440.z, x_1441.w);
        let x_1444 : bool = u_xlatb11.y;
        let x_1446 : bool = u_xlatb11.x;
        u_xlatb52 = (x_1444 & x_1446);
        let x_1448 : vec3<f32> = u_xlat10;
        let x_1451 : vec4<bool> = (-(vec4<f32>(x_1448.z, x_1448.y, x_1448.z, x_1448.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1452 : vec3<bool> = vec3<bool>(x_1451.x, x_1451.y, x_1451.w);
        let x_1453 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1452.x, x_1452.y, x_1453.z, x_1452.z);
        let x_1457 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1457);
        let x_1462 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1462);
        let x_1467 : bool = u_xlatb11.w;
        u_xlat53 = select(0.0f, 1.0f, x_1467);
        let x_1471 : bool = u_xlatb11.z;
        if (x_1471) {
          let x_1476 : f32 = u_xlat11.y;
          x_1472 = x_1476;
        } else {
          let x_1478 : f32 = u_xlat53;
          x_1472 = x_1478;
        }
        let x_1479 : f32 = x_1472;
        u_xlat25.x = x_1479;
        let x_1482 : bool = u_xlatb52;
        if (x_1482) {
          let x_1487 : f32 = u_xlat11.x;
          x_1483 = x_1487;
        } else {
          let x_1490 : f32 = u_xlat25.x;
          x_1483 = x_1490;
        }
        let x_1491 : f32 = x_1483;
        u_xlat52 = x_1491;
        let x_1492 : i32 = u_xlati8;
        let x_1494 : f32 = x_246.x_AdditionalShadowParams[x_1492].w;
        u_xlat11.x = trunc(x_1494);
        let x_1497 : f32 = u_xlat52;
        let x_1499 : f32 = u_xlat11.x;
        u_xlat52 = (x_1497 + x_1499);
        let x_1501 : f32 = u_xlat52;
        u_xlati51 = i32(x_1501);
      }
      let x_1503 : i32 = u_xlati51;
      u_xlati51 = (x_1503 << bitcast<u32>(2i));
      let x_1505 : vec3<f32> = vs_INTERP8;
      let x_1508 : i32 = u_xlati51;
      let x_1511 : i32 = u_xlati51;
      let x_1515 : vec4<f32> = x_246.x_AdditionalLightsWorldToShadow[((x_1508 + 1i) / 4i)][((x_1511 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1505.y, x_1505.y, x_1505.y, x_1505.y) * x_1515);
      let x_1517 : i32 = u_xlati51;
      let x_1519 : i32 = u_xlati51;
      let x_1522 : vec4<f32> = x_246.x_AdditionalLightsWorldToShadow[(x_1517 / 4i)][(x_1519 % 4i)];
      let x_1523 : vec3<f32> = vs_INTERP8;
      let x_1526 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1522 * vec4<f32>(x_1523.x, x_1523.x, x_1523.x, x_1523.x)) + x_1526);
      let x_1528 : i32 = u_xlati51;
      let x_1531 : i32 = u_xlati51;
      let x_1535 : vec4<f32> = x_246.x_AdditionalLightsWorldToShadow[((x_1528 + 2i) / 4i)][((x_1531 + 2i) % 4i)];
      let x_1536 : vec3<f32> = vs_INTERP8;
      let x_1539 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1535 * vec4<f32>(x_1536.z, x_1536.z, x_1536.z, x_1536.z)) + x_1539);
      let x_1541 : vec4<f32> = u_xlat11;
      let x_1542 : i32 = u_xlati51;
      let x_1545 : i32 = u_xlati51;
      let x_1549 : vec4<f32> = x_246.x_AdditionalLightsWorldToShadow[((x_1542 + 3i) / 4i)][((x_1545 + 3i) % 4i)];
      u_xlat11 = (x_1541 + x_1549);
      let x_1551 : vec4<f32> = u_xlat11;
      let x_1553 : vec4<f32> = u_xlat11;
      let x_1555 : vec3<f32> = (vec3<f32>(x_1551.x, x_1551.y, x_1551.z) / vec3<f32>(x_1553.w, x_1553.w, x_1553.w));
      let x_1556 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1555.x, x_1555.y, x_1555.z, x_1556.w);
      let x_1559 : vec4<f32> = u_xlat11;
      let x_1560 : vec2<f32> = vec2<f32>(x_1559.x, x_1559.y);
      let x_1562 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1560.x, x_1560.y, x_1562);
      let x_1570 : vec3<f32> = txVec1;
      let x_1572 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1570.xy, x_1570.z);
      u_xlat51 = x_1572;
      let x_1573 : i32 = u_xlati8;
      let x_1575 : f32 = x_246.x_AdditionalShadowParams[x_1573].x;
      u_xlat52 = (1.0f + -(x_1575));
      let x_1578 : f32 = u_xlat51;
      let x_1579 : i32 = u_xlati8;
      let x_1581 : f32 = x_246.x_AdditionalShadowParams[x_1579].x;
      let x_1583 : f32 = u_xlat52;
      u_xlat51 = ((x_1578 * x_1581) + x_1583);
      let x_1586 : f32 = u_xlat11.z;
      u_xlatb52 = (0.0f >= x_1586);
      let x_1589 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_1589 >= 1.0f);
      let x_1592 : bool = u_xlatb52;
      let x_1594 : bool = u_xlatb11.x;
      u_xlatb52 = (x_1592 | x_1594);
      let x_1596 : bool = u_xlatb52;
      let x_1597 : f32 = u_xlat51;
      u_xlat51 = select(x_1597, 1.0f, x_1596);
    } else {
      u_xlat51 = 1.0f;
    }
    let x_1600 : f32 = u_xlat51;
    u_xlat52 = (-(x_1600) + 1.0f);
    let x_1603 : f32 = u_xlat46;
    let x_1604 : f32 = u_xlat52;
    let x_1606 : f32 = u_xlat51;
    u_xlat51 = ((x_1603 * x_1604) + x_1606);
    let x_1609 : i32 = u_xlati8;
    u_xlati52 = (1i << bitcast<u32>((x_1609 & 31i)));
    let x_1613 : i32 = u_xlati52;
    let x_1616 : f32 = x_867.x_AdditionalLightsCookieEnableBits;
    u_xlati52 = bitcast<i32>((bitcast<u32>(x_1613) & bitcast<u32>(x_1616)));
    let x_1620 : i32 = u_xlati52;
    if ((x_1620 != 0i)) {
      let x_1624 : i32 = u_xlati8;
      let x_1626 : f32 = x_867.x_AdditionalLightsLightTypes[x_1624].el;
      u_xlati52 = i32(x_1626);
      let x_1629 : i32 = u_xlati52;
      u_xlati11 = select(1i, 0i, (x_1629 != 0i));
      let x_1633 : i32 = u_xlati8;
      u_xlati25 = (x_1633 << bitcast<u32>(2i));
      let x_1635 : i32 = u_xlati11;
      if ((x_1635 != 0i)) {
        let x_1639 : vec3<f32> = vs_INTERP8;
        let x_1641 : i32 = u_xlati25;
        let x_1644 : i32 = u_xlati25;
        let x_1648 : vec4<f32> = x_867.x_AdditionalLightsWorldToLights[((x_1641 + 1i) / 4i)][((x_1644 + 1i) % 4i)];
        let x_1650 : vec3<f32> = (vec3<f32>(x_1639.y, x_1639.y, x_1639.y) * vec3<f32>(x_1648.x, x_1648.y, x_1648.w));
        let x_1651 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1650.x, x_1651.y, x_1650.y, x_1650.z);
        let x_1653 : i32 = u_xlati25;
        let x_1655 : i32 = u_xlati25;
        let x_1658 : vec4<f32> = x_867.x_AdditionalLightsWorldToLights[(x_1653 / 4i)][(x_1655 % 4i)];
        let x_1660 : vec3<f32> = vs_INTERP8;
        let x_1663 : vec4<f32> = u_xlat11;
        let x_1665 : vec3<f32> = ((vec3<f32>(x_1658.x, x_1658.y, x_1658.w) * vec3<f32>(x_1660.x, x_1660.x, x_1660.x)) + vec3<f32>(x_1663.x, x_1663.z, x_1663.w));
        let x_1666 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1665.x, x_1666.y, x_1665.y, x_1665.z);
        let x_1668 : i32 = u_xlati25;
        let x_1671 : i32 = u_xlati25;
        let x_1675 : vec4<f32> = x_867.x_AdditionalLightsWorldToLights[((x_1668 + 2i) / 4i)][((x_1671 + 2i) % 4i)];
        let x_1677 : vec3<f32> = vs_INTERP8;
        let x_1680 : vec4<f32> = u_xlat11;
        let x_1682 : vec3<f32> = ((vec3<f32>(x_1675.x, x_1675.y, x_1675.w) * vec3<f32>(x_1677.z, x_1677.z, x_1677.z)) + vec3<f32>(x_1680.x, x_1680.z, x_1680.w));
        let x_1683 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1682.x, x_1683.y, x_1682.y, x_1682.z);
        let x_1685 : vec4<f32> = u_xlat11;
        let x_1687 : i32 = u_xlati25;
        let x_1690 : i32 = u_xlati25;
        let x_1694 : vec4<f32> = x_867.x_AdditionalLightsWorldToLights[((x_1687 + 3i) / 4i)][((x_1690 + 3i) % 4i)];
        let x_1696 : vec3<f32> = (vec3<f32>(x_1685.x, x_1685.z, x_1685.w) + vec3<f32>(x_1694.x, x_1694.y, x_1694.w));
        let x_1697 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1696.x, x_1697.y, x_1696.y, x_1696.z);
        let x_1699 : vec4<f32> = u_xlat11;
        let x_1701 : vec4<f32> = u_xlat11;
        let x_1703 : vec2<f32> = (vec2<f32>(x_1699.x, x_1699.z) / vec2<f32>(x_1701.w, x_1701.w));
        let x_1704 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1703.x, x_1704.y, x_1703.y, x_1704.w);
        let x_1706 : vec4<f32> = u_xlat11;
        let x_1709 : vec2<f32> = ((vec2<f32>(x_1706.x, x_1706.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1710 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1709.x, x_1710.y, x_1709.y, x_1710.w);
        let x_1712 : vec4<f32> = u_xlat11;
        let x_1716 : vec2<f32> = clamp(vec2<f32>(x_1712.x, x_1712.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1717 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1716.x, x_1717.y, x_1716.y, x_1717.w);
        let x_1719 : i32 = u_xlati8;
        let x_1721 : vec4<f32> = x_867.x_AdditionalLightsCookieAtlasUVRects[x_1719];
        let x_1723 : vec4<f32> = u_xlat11;
        let x_1726 : i32 = u_xlati8;
        let x_1728 : vec4<f32> = x_867.x_AdditionalLightsCookieAtlasUVRects[x_1726];
        let x_1730 : vec2<f32> = ((vec2<f32>(x_1721.x, x_1721.y) * vec2<f32>(x_1723.x, x_1723.z)) + vec2<f32>(x_1728.z, x_1728.w));
        let x_1731 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1730.x, x_1731.y, x_1730.y, x_1731.w);
      } else {
        let x_1734 : i32 = u_xlati52;
        u_xlatb52 = (x_1734 == 1i);
        let x_1736 : bool = u_xlatb52;
        u_xlati52 = select(0i, 1i, x_1736);
        let x_1738 : i32 = u_xlati52;
        if ((x_1738 != 0i)) {
          let x_1743 : vec3<f32> = vs_INTERP8;
          let x_1745 : i32 = u_xlati25;
          let x_1748 : i32 = u_xlati25;
          let x_1752 : vec4<f32> = x_867.x_AdditionalLightsWorldToLights[((x_1745 + 1i) / 4i)][((x_1748 + 1i) % 4i)];
          let x_1754 : vec2<f32> = (vec2<f32>(x_1743.y, x_1743.y) * vec2<f32>(x_1752.x, x_1752.y));
          let x_1755 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1754.x, x_1754.y, x_1755.z, x_1755.w);
          let x_1757 : i32 = u_xlati25;
          let x_1759 : i32 = u_xlati25;
          let x_1762 : vec4<f32> = x_867.x_AdditionalLightsWorldToLights[(x_1757 / 4i)][(x_1759 % 4i)];
          let x_1764 : vec3<f32> = vs_INTERP8;
          let x_1767 : vec4<f32> = u_xlat12;
          let x_1769 : vec2<f32> = ((vec2<f32>(x_1762.x, x_1762.y) * vec2<f32>(x_1764.x, x_1764.x)) + vec2<f32>(x_1767.x, x_1767.y));
          let x_1770 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1769.x, x_1769.y, x_1770.z, x_1770.w);
          let x_1772 : i32 = u_xlati25;
          let x_1775 : i32 = u_xlati25;
          let x_1779 : vec4<f32> = x_867.x_AdditionalLightsWorldToLights[((x_1772 + 2i) / 4i)][((x_1775 + 2i) % 4i)];
          let x_1781 : vec3<f32> = vs_INTERP8;
          let x_1784 : vec4<f32> = u_xlat12;
          let x_1786 : vec2<f32> = ((vec2<f32>(x_1779.x, x_1779.y) * vec2<f32>(x_1781.z, x_1781.z)) + vec2<f32>(x_1784.x, x_1784.y));
          let x_1787 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1786.x, x_1786.y, x_1787.z, x_1787.w);
          let x_1789 : vec4<f32> = u_xlat12;
          let x_1791 : i32 = u_xlati25;
          let x_1794 : i32 = u_xlati25;
          let x_1798 : vec4<f32> = x_867.x_AdditionalLightsWorldToLights[((x_1791 + 3i) / 4i)][((x_1794 + 3i) % 4i)];
          let x_1800 : vec2<f32> = (vec2<f32>(x_1789.x, x_1789.y) + vec2<f32>(x_1798.x, x_1798.y));
          let x_1801 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1800.x, x_1800.y, x_1801.z, x_1801.w);
          let x_1803 : vec4<f32> = u_xlat12;
          let x_1806 : vec2<f32> = ((vec2<f32>(x_1803.x, x_1803.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1807 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1806.x, x_1806.y, x_1807.z, x_1807.w);
          let x_1809 : vec4<f32> = u_xlat12;
          let x_1811 : vec2<f32> = fract(vec2<f32>(x_1809.x, x_1809.y));
          let x_1812 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1811.x, x_1811.y, x_1812.z, x_1812.w);
          let x_1814 : i32 = u_xlati8;
          let x_1816 : vec4<f32> = x_867.x_AdditionalLightsCookieAtlasUVRects[x_1814];
          let x_1818 : vec4<f32> = u_xlat12;
          let x_1821 : i32 = u_xlati8;
          let x_1823 : vec4<f32> = x_867.x_AdditionalLightsCookieAtlasUVRects[x_1821];
          let x_1825 : vec2<f32> = ((vec2<f32>(x_1816.x, x_1816.y) * vec2<f32>(x_1818.x, x_1818.y)) + vec2<f32>(x_1823.z, x_1823.w));
          let x_1826 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1825.x, x_1826.y, x_1825.y, x_1826.w);
        } else {
          let x_1829 : vec3<f32> = vs_INTERP8;
          let x_1831 : i32 = u_xlati25;
          let x_1834 : i32 = u_xlati25;
          let x_1838 : vec4<f32> = x_867.x_AdditionalLightsWorldToLights[((x_1831 + 1i) / 4i)][((x_1834 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1829.y, x_1829.y, x_1829.y, x_1829.y) * x_1838);
          let x_1840 : i32 = u_xlati25;
          let x_1842 : i32 = u_xlati25;
          let x_1845 : vec4<f32> = x_867.x_AdditionalLightsWorldToLights[(x_1840 / 4i)][(x_1842 % 4i)];
          let x_1846 : vec3<f32> = vs_INTERP8;
          let x_1849 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1845 * vec4<f32>(x_1846.x, x_1846.x, x_1846.x, x_1846.x)) + x_1849);
          let x_1851 : i32 = u_xlati25;
          let x_1854 : i32 = u_xlati25;
          let x_1858 : vec4<f32> = x_867.x_AdditionalLightsWorldToLights[((x_1851 + 2i) / 4i)][((x_1854 + 2i) % 4i)];
          let x_1859 : vec3<f32> = vs_INTERP8;
          let x_1862 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1858 * vec4<f32>(x_1859.z, x_1859.z, x_1859.z, x_1859.z)) + x_1862);
          let x_1864 : vec4<f32> = u_xlat12;
          let x_1865 : i32 = u_xlati25;
          let x_1868 : i32 = u_xlati25;
          let x_1872 : vec4<f32> = x_867.x_AdditionalLightsWorldToLights[((x_1865 + 3i) / 4i)][((x_1868 + 3i) % 4i)];
          u_xlat12 = (x_1864 + x_1872);
          let x_1874 : vec4<f32> = u_xlat12;
          let x_1876 : vec4<f32> = u_xlat12;
          let x_1878 : vec3<f32> = (vec3<f32>(x_1874.x, x_1874.y, x_1874.z) / vec3<f32>(x_1876.w, x_1876.w, x_1876.w));
          let x_1879 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1878.x, x_1878.y, x_1878.z, x_1879.w);
          let x_1881 : vec4<f32> = u_xlat12;
          let x_1883 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(vec3<f32>(x_1881.x, x_1881.y, x_1881.z), vec3<f32>(x_1883.x, x_1883.y, x_1883.z));
          let x_1886 : f32 = u_xlat52;
          u_xlat52 = inverseSqrt(x_1886);
          let x_1888 : f32 = u_xlat52;
          let x_1890 : vec4<f32> = u_xlat12;
          let x_1892 : vec3<f32> = (vec3<f32>(x_1888, x_1888, x_1888) * vec3<f32>(x_1890.x, x_1890.y, x_1890.z));
          let x_1893 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1892.x, x_1892.y, x_1892.z, x_1893.w);
          let x_1895 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(abs(vec3<f32>(x_1895.x, x_1895.y, x_1895.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1900 : f32 = u_xlat52;
          u_xlat52 = max(x_1900, 0.00000099999999747524f);
          let x_1903 : f32 = u_xlat52;
          u_xlat52 = (1.0f / x_1903);
          let x_1906 : f32 = u_xlat52;
          let x_1908 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1906, x_1906, x_1906) * vec3<f32>(x_1908.z, x_1908.x, x_1908.y));
          let x_1912 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1912);
          let x_1916 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1916, 0.0f, 1.0f);
          let x_1920 : vec3<f32> = u_xlat13;
          let x_1922 : vec4<bool> = (vec4<f32>(x_1920.y, x_1920.y, x_1920.z, x_1920.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1923 : vec2<bool> = vec2<bool>(x_1922.x, x_1922.z);
          let x_1924 : vec3<bool> = u_xlatb25;
          u_xlatb25 = vec3<bool>(x_1923.x, x_1924.y, x_1923.y);
          let x_1927 : bool = u_xlatb25.x;
          if (x_1927) {
            let x_1932 : f32 = u_xlat13.x;
            x_1928 = x_1932;
          } else {
            let x_1935 : f32 = u_xlat13.x;
            x_1928 = -(x_1935);
          }
          let x_1937 : f32 = x_1928;
          u_xlat25.x = x_1937;
          let x_1940 : bool = u_xlatb25.z;
          if (x_1940) {
            let x_1945 : f32 = u_xlat13.x;
            x_1941 = x_1945;
          } else {
            let x_1948 : f32 = u_xlat13.x;
            x_1941 = -(x_1948);
          }
          let x_1950 : f32 = x_1941;
          u_xlat25.z = x_1950;
          let x_1952 : vec4<f32> = u_xlat12;
          let x_1954 : f32 = u_xlat52;
          let x_1957 : vec3<f32> = u_xlat25;
          let x_1959 : vec2<f32> = ((vec2<f32>(x_1952.x, x_1952.y) * vec2<f32>(x_1954, x_1954)) + vec2<f32>(x_1957.x, x_1957.z));
          let x_1960 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1959.x, x_1960.y, x_1959.y);
          let x_1962 : vec3<f32> = u_xlat25;
          let x_1965 : vec2<f32> = ((vec2<f32>(x_1962.x, x_1962.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1966 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1965.x, x_1966.y, x_1965.y);
          let x_1968 : vec3<f32> = u_xlat25;
          let x_1972 : vec2<f32> = clamp(vec2<f32>(x_1968.x, x_1968.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1973 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1972.x, x_1973.y, x_1972.y);
          let x_1975 : i32 = u_xlati8;
          let x_1977 : vec4<f32> = x_867.x_AdditionalLightsCookieAtlasUVRects[x_1975];
          let x_1979 : vec3<f32> = u_xlat25;
          let x_1982 : i32 = u_xlati8;
          let x_1984 : vec4<f32> = x_867.x_AdditionalLightsCookieAtlasUVRects[x_1982];
          let x_1986 : vec2<f32> = ((vec2<f32>(x_1977.x, x_1977.y) * vec2<f32>(x_1979.x, x_1979.z)) + vec2<f32>(x_1984.z, x_1984.w));
          let x_1987 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1986.x, x_1987.y, x_1986.y, x_1987.w);
        }
      }
      let x_1994 : vec4<f32> = u_xlat11;
      let x_1996 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1994.x, x_1994.z), 0.0f);
      u_xlat11 = x_1996;
      let x_1998 : bool = u_xlatb5.z;
      if (x_1998) {
        let x_2003 : f32 = u_xlat11.w;
        x_1999 = x_2003;
      } else {
        let x_2006 : f32 = u_xlat11.x;
        x_1999 = x_2006;
      }
      let x_2007 : f32 = x_1999;
      u_xlat52 = x_2007;
      let x_2009 : bool = u_xlatb5.x;
      if (x_2009) {
        let x_2013 : vec4<f32> = u_xlat11;
        x_2010 = vec3<f32>(x_2013.x, x_2013.y, x_2013.z);
      } else {
        let x_2016 : f32 = u_xlat52;
        x_2010 = vec3<f32>(x_2016, x_2016, x_2016);
      }
      let x_2018 : vec3<f32> = x_2010;
      let x_2019 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2018.x, x_2018.y, x_2018.z, x_2019.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2025 : vec4<f32> = u_xlat11;
    let x_2027 : i32 = u_xlati8;
    let x_2029 : vec4<f32> = x_1340.x_AdditionalLightsColor[x_2027];
    let x_2031 : vec3<f32> = (vec3<f32>(x_2025.x, x_2025.y, x_2025.z) * vec3<f32>(x_2029.x, x_2029.y, x_2029.z));
    let x_2032 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2031.x, x_2031.y, x_2031.z, x_2032.w);
    let x_2034 : f32 = u_xlat51;
    let x_2035 : f32 = u_xlat23;
    u_xlat8.x = (x_2034 * x_2035);
    let x_2038 : vec3<f32> = u_xlat14;
    let x_2039 : vec3<f32> = u_xlat10;
    u_xlat23 = dot(x_2038, x_2039);
    let x_2041 : f32 = u_xlat23;
    u_xlat23 = clamp(x_2041, 0.0f, 1.0f);
    let x_2044 : f32 = u_xlat8.x;
    let x_2045 : f32 = u_xlat23;
    u_xlat8.x = (x_2044 * x_2045);
    let x_2048 : vec4<f32> = u_xlat8;
    let x_2050 : vec4<f32> = u_xlat11;
    let x_2052 : vec3<f32> = (vec3<f32>(x_2048.x, x_2048.x, x_2048.x) * vec3<f32>(x_2050.x, x_2050.y, x_2050.z));
    let x_2053 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2052.x, x_2052.y, x_2052.z, x_2053.w);
    let x_2055 : vec3<f32> = u_xlat22;
    let x_2056 : f32 = u_xlat37;
    let x_2059 : vec4<f32> = u_xlat2;
    let x_2061 : vec3<f32> = ((x_2055 * vec3<f32>(x_2056, x_2056, x_2056)) + vec3<f32>(x_2059.x, x_2059.z, x_2059.w));
    let x_2062 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2061.x, x_2061.y, x_2061.z, x_2062.w);
    let x_2065 : vec4<f32> = u_xlat8;
    let x_2067 : vec4<f32> = u_xlat8;
    u_xlat50 = dot(vec3<f32>(x_2065.x, x_2065.y, x_2065.z), vec3<f32>(x_2067.x, x_2067.y, x_2067.z));
    let x_2070 : f32 = u_xlat50;
    u_xlat50 = max(x_2070, 1.17549435e-38f);
    let x_2072 : f32 = u_xlat50;
    u_xlat50 = inverseSqrt(x_2072);
    let x_2074 : f32 = u_xlat50;
    let x_2076 : vec4<f32> = u_xlat8;
    let x_2078 : vec3<f32> = (vec3<f32>(x_2074, x_2074, x_2074) * vec3<f32>(x_2076.x, x_2076.y, x_2076.z));
    let x_2079 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2078.x, x_2078.y, x_2078.z, x_2079.w);
    let x_2081 : vec3<f32> = u_xlat14;
    let x_2082 : vec4<f32> = u_xlat8;
    u_xlat8.w = dot(x_2081, vec3<f32>(x_2082.x, x_2082.y, x_2082.z));
    let x_2087 : f32 = u_xlat8.w;
    u_xlat8.w = clamp(x_2087, 0.0f, 1.0f);
    let x_2090 : vec3<f32> = u_xlat10;
    let x_2091 : vec4<f32> = u_xlat8;
    u_xlat8.x = dot(x_2090, vec3<f32>(x_2091.x, x_2091.y, x_2091.z));
    let x_2096 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_2096, 0.0f, 1.0f);
    let x_2099 : vec4<f32> = u_xlat8;
    let x_2101 : vec4<f32> = u_xlat8;
    let x_2103 : vec2<f32> = (vec2<f32>(x_2099.x, x_2099.w) * vec2<f32>(x_2101.x, x_2101.w));
    let x_2104 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2103.x, x_2103.y, x_2104.z, x_2104.w);
    let x_2107 : f32 = u_xlat8.y;
    let x_2109 : f32 = u_xlat9.x;
    u_xlat22.x = ((x_2107 * x_2109) + 1.00001001358032226562f);
    let x_2114 : f32 = u_xlat22.x;
    let x_2116 : f32 = u_xlat22.x;
    u_xlat22.x = (x_2114 * x_2116);
    let x_2120 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_2120, 0.10000000149011611938f);
    let x_2124 : f32 = u_xlat8.x;
    let x_2126 : f32 = u_xlat22.x;
    u_xlat8.x = (x_2124 * x_2126);
    let x_2129 : f32 = u_xlat47;
    let x_2131 : f32 = u_xlat8.x;
    u_xlat8.x = (x_2129 * x_2131);
    let x_2134 : f32 = u_xlat19;
    let x_2136 : f32 = u_xlat8.x;
    u_xlat8.x = (x_2134 / x_2136);
    let x_2139 : vec4<f32> = u_xlat8;
    let x_2142 : vec4<f32> = u_xlat4;
    let x_2144 : vec3<f32> = ((vec3<f32>(x_2139.x, x_2139.x, x_2139.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + vec3<f32>(x_2142.x, x_2142.y, x_2142.z));
    let x_2145 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2144.x, x_2144.y, x_2144.z, x_2145.w);
    let x_2147 : vec4<f32> = u_xlat8;
    let x_2149 : vec4<f32> = u_xlat11;
    let x_2152 : vec3<f32> = u_xlat20;
    u_xlat20 = ((vec3<f32>(x_2147.x, x_2147.y, x_2147.z) * vec3<f32>(x_2149.x, x_2149.y, x_2149.z)) + x_2152);

    continuing {
      let x_2154 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2154 + bitcast<u32>(1i));
    }
  }
  let x_2156 : vec3<f32> = u_xlat17;
  let x_2157 : vec4<f32> = u_xlat6;
  let x_2160 : vec4<f32> = u_xlat7;
  u_xlat0 = ((x_2156 * vec3<f32>(x_2157.x, x_2157.x, x_2157.x)) + vec3<f32>(x_2160.x, x_2160.y, x_2160.z));
  let x_2163 : vec3<f32> = u_xlat20;
  let x_2164 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_2163 + x_2164);
  let x_2166 : vec4<f32> = vs_INTERP6;
  let x_2168 : vec3<f32> = u_xlat1;
  let x_2170 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_2166.w, x_2166.w, x_2166.w) * x_2168) + x_2170);
  let x_2174 : f32 = u_xlat3.x;
  let x_2176 : f32 = u_xlat3.x;
  u_xlat42 = (x_2174 * -(x_2176));
  let x_2179 : f32 = u_xlat42;
  u_xlat42 = exp2(x_2179);
  let x_2181 : vec3<f32> = u_xlat0;
  let x_2184 : vec4<f32> = x_128.unity_FogColor;
  u_xlat0 = (x_2181 + -(vec3<f32>(x_2184.x, x_2184.y, x_2184.z)));
  let x_2190 : f32 = u_xlat42;
  let x_2192 : vec3<f32> = u_xlat0;
  let x_2195 : vec4<f32> = x_128.unity_FogColor;
  let x_2197 : vec3<f32> = ((vec3<f32>(x_2190, x_2190, x_2190) * x_2192) + vec3<f32>(x_2195.x, x_2195.y, x_2195.z));
  let x_2198 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2197.x, x_2197.y, x_2197.z, x_2198.w);
  let x_2200 : bool = u_xlatb16;
  let x_2201 : f32 = u_xlat43;
  SV_Target0.w = select(1.0f, x_2201, x_2200);
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


