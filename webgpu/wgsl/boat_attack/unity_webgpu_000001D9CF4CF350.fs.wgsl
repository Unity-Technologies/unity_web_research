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
  x_AdditionalLightsWorldToShadow : Arr_3,
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
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_INTERP9 : vec3<f32>;

var<private> u_xlatb12 : vec2<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_48 : UnityPerDraw;

var<private> u_xlat12 : vec3<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(3) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(7) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_128 : PGlobals;

var<private> u_xlat5 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_138 : UnityPerMaterial;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(4) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(8) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat18 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

var<private> vs_INTERP8 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_246 : LightShadows;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu0 : u32;

var<private> u_xlati0 : i32;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat37 : f32;

var<private> u_xlatb37 : bool;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlat14 : f32;

var<private> u_xlat26 : f32;

var<private> u_xlatb14 : bool;

var<private> u_xlat24 : f32;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat39 : f32;

var<private> u_xlat40 : f32;

var<private> u_xlat17 : f32;

var<private> u_xlat29 : f32;

var<private> u_xlat41 : f32;

var<private> u_xlat30 : f32;

var<private> u_xlat19 : vec2<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu17 : u32;

var<private> u_xlati6 : i32;

var<private> u_xlati17 : i32;

@group(1) @binding(1) var<uniform> x_1189 : AdditionalLights;

var<private> u_xlat44 : f32;

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

var<private> u_xlatb17 : bool;

var<private> u_xlatu40 : u32;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_485 : f32;
  var x_524 : f32;
  var x_571 : f32;
  var x_657 : f32;
  var x_670 : f32;
  var x_682 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1346 : f32;
  var x_1357 : f32;
  var txVec1 : vec3<f32>;
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
  u_xlatb12.x = (0.0f < x_39);
  let x_53 : f32 = x_48.unity_WorldTransformParams.w;
  u_xlatb12.y = (x_53 >= 0.0f);
  let x_59 : bool = u_xlatb12.x;
  u_xlat12.x = select(-1.0f, 1.0f, x_59);
  let x_64 : bool = u_xlatb12.y;
  u_xlat12.y = select(-1.0f, 1.0f, x_64);
  let x_68 : f32 = u_xlat12.y;
  let x_70 : f32 = u_xlat12.x;
  u_xlat12.x = (x_68 * x_70);
  let x_74 : vec4<f32> = vs_INTERP4;
  let x_76 : vec3<f32> = vs_INTERP9;
  u_xlat1 = (vec3<f32>(x_74.y, x_74.z, x_74.x) * vec3<f32>(x_76.z, x_76.x, x_76.y));
  let x_79 : vec3<f32> = vs_INTERP9;
  let x_81 : vec4<f32> = vs_INTERP4;
  let x_84 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_79.y, x_79.z, x_79.x) * vec3<f32>(x_81.z, x_81.x, x_81.y)) + -(x_84));
  let x_87 : vec3<f32> = u_xlat12;
  let x_89 : vec3<f32> = u_xlat1;
  u_xlat12 = (vec3<f32>(x_87.x, x_87.x, x_87.x) * x_89);
  let x_91 : vec3<f32> = u_xlat0;
  let x_93 : vec3<f32> = vs_INTERP9;
  u_xlat1 = (vec3<f32>(x_91.x, x_91.x, x_91.x) * x_93);
  let x_97 : vec3<f32> = u_xlat0;
  let x_99 : vec4<f32> = vs_INTERP4;
  let x_101 : vec3<f32> = (vec3<f32>(x_97.x, x_97.x, x_97.x) * vec3<f32>(x_99.x, x_99.y, x_99.z));
  let x_102 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_101.x, x_101.y, x_101.z, x_102.w);
  let x_105 : vec3<f32> = u_xlat12;
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
  u_xlat18 = (vec3<f32>(x_174.x, x_174.x, x_174.x) * vec3<f32>(x_176.x, x_176.y, x_176.z));
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
  let x_198 : vec3<f32> = u_xlat18;
  let x_200 : vec3<f32> = (vec3<f32>(x_196.x, x_196.y, x_196.z) * vec3<f32>(x_198.y, x_198.y, x_198.y));
  let x_201 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_200.x, x_200.y, x_200.z, x_201.w);
  let x_203 : vec3<f32> = u_xlat18;
  let x_205 : vec4<f32> = u_xlat2;
  let x_208 : vec4<f32> = u_xlat3;
  let x_210 : vec3<f32> = ((vec3<f32>(x_203.x, x_203.x, x_203.x) * vec3<f32>(x_205.x, x_205.y, x_205.z)) + vec3<f32>(x_208.x, x_208.y, x_208.z));
  let x_211 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_210.x, x_210.y, x_210.z, x_211.w);
  let x_213 : vec3<f32> = u_xlat18;
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
  u_xlat37 = (-(x_460) + 1.0f);
  let x_464 : f32 = u_xlat0.x;
  let x_466 : f32 = x_246.x_MainLightShadowParams.x;
  let x_468 : f32 = u_xlat37;
  u_xlat0.x = ((x_464 * x_466) + x_468);
  let x_473 : f32 = u_xlat2.z;
  u_xlatb37 = (0.0f >= x_473);
  let x_476 : f32 = u_xlat2.z;
  u_xlatb2.x = (x_476 >= 1.0f);
  let x_479 : bool = u_xlatb37;
  let x_481 : bool = u_xlatb2.x;
  u_xlatb37 = (x_479 | x_481);
  let x_483 : bool = u_xlatb37;
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
  u_xlat13 = (vec3<f32>(x_505.x, x_505.x, x_505.x) * vec3<f32>(x_508.x, x_508.y, x_508.z));
  let x_511 : vec3<f32> = u_xlat13;
  let x_512 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_511 * vec3<f32>(x_512.x, x_512.x, x_512.x));
  let x_515 : vec3<f32> = u_xlat1;
  let x_516 : vec4<f32> = u_xlat4;
  u_xlat1 = (x_515 * vec3<f32>(x_516.x, x_516.y, x_516.z));
  let x_520 : f32 = u_xlat4.w;
  u_xlatb37 = (x_520 >= 0.40000000596046447754f);
  let x_523 : bool = u_xlatb37;
  if (x_523) {
    let x_528 : f32 = u_xlat4.w;
    x_524 = x_528;
  } else {
    x_524 = 0.0f;
  }
  let x_530 : f32 = x_524;
  u_xlat37 = x_530;
  let x_532 : f32 = u_xlat4.w;
  u_xlat2.x = (x_532 + -0.40000000596046447754f);
  let x_538 : f32 = u_xlat4.w;
  u_xlat14 = dpdxCoarse(x_538);
  let x_542 : f32 = u_xlat4.w;
  u_xlat26 = dpdyCoarse(x_542);
  let x_544 : f32 = u_xlat26;
  let x_546 : f32 = u_xlat14;
  u_xlat14 = (abs(x_544) + abs(x_546));
  let x_549 : f32 = u_xlat14;
  u_xlat14 = max(x_549, 0.00009999999747378752f);
  let x_553 : f32 = u_xlat2.x;
  let x_554 : f32 = u_xlat14;
  u_xlat2.x = (x_553 / x_554);
  let x_558 : f32 = u_xlat2.x;
  u_xlat2.x = (x_558 + 0.5f);
  let x_563 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_563, 0.0f, 1.0f);
  let x_568 : f32 = x_128.x_AlphaToMaskAvailable;
  u_xlatb14 = !((x_568 == 0.0f));
  let x_570 : bool = u_xlatb14;
  if (x_570) {
    let x_575 : f32 = u_xlat2.x;
    x_571 = x_575;
  } else {
    let x_577 : f32 = u_xlat37;
    x_571 = x_577;
  }
  let x_578 : f32 = x_571;
  u_xlat37 = x_578;
  let x_579 : f32 = u_xlat37;
  u_xlat2.x = (x_579 + -0.00009999999747378752f);
  let x_584 : f32 = u_xlat2.x;
  u_xlatb2.x = (x_584 < 0.0f);
  let x_588 : bool = u_xlatb2.x;
  if (((select(0i, 1i, x_588) * -1i) != 0i)) {
    discard;
  }
  let x_596 : vec3<f32> = u_xlat12;
  let x_597 : vec3<f32> = u_xlat18;
  u_xlat12 = (x_596 * vec3<f32>(x_597.y, x_597.y, x_597.y));
  let x_600 : vec3<f32> = u_xlat18;
  let x_602 : vec4<f32> = vs_INTERP4;
  let x_605 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_600.x, x_600.x, x_600.x) * vec3<f32>(x_602.x, x_602.y, x_602.z)) + x_605);
  let x_607 : vec3<f32> = u_xlat18;
  let x_609 : vec3<f32> = vs_INTERP9;
  let x_611 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_607.z, x_607.z, x_607.z) * x_609) + x_611);
  let x_613 : vec3<f32> = u_xlat12;
  let x_614 : vec3<f32> = u_xlat12;
  u_xlat2.x = dot(x_613, x_614);
  let x_618 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_618);
  let x_621 : vec3<f32> = u_xlat12;
  let x_622 : vec4<f32> = u_xlat2;
  let x_624 : vec3<f32> = (x_621 * vec3<f32>(x_622.x, x_622.x, x_622.x));
  let x_625 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_624.x, x_624.y, x_624.z, x_625.w);
  let x_629 : f32 = x_128.unity_OrthoParams.w;
  u_xlatb12.x = (x_629 == 0.0f);
  let x_632 : vec3<f32> = vs_INTERP8;
  let x_636 : vec3<f32> = x_128.x_WorldSpaceCameraPos;
  let x_637 : vec3<f32> = (-(x_632) + x_636);
  let x_638 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_637.x, x_638.y, x_637.y, x_637.z);
  let x_641 : vec4<f32> = u_xlat2;
  let x_643 : vec4<f32> = u_xlat2;
  u_xlat24 = dot(vec3<f32>(x_641.x, x_641.z, x_641.w), vec3<f32>(x_643.x, x_643.z, x_643.w));
  let x_646 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_646);
  let x_648 : f32 = u_xlat24;
  let x_650 : vec4<f32> = u_xlat2;
  let x_652 : vec3<f32> = (vec3<f32>(x_648, x_648, x_648) * vec3<f32>(x_650.x, x_650.z, x_650.w));
  let x_653 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_652.x, x_653.y, x_652.y, x_652.z);
  let x_656 : bool = u_xlatb12.x;
  if (x_656) {
    let x_661 : f32 = u_xlat2.x;
    x_657 = x_661;
  } else {
    let x_665 : f32 = x_128.unity_MatrixV[0i].z;
    x_657 = x_665;
  }
  let x_666 : f32 = x_657;
  u_xlat4.x = x_666;
  let x_669 : bool = u_xlatb12.x;
  if (x_669) {
    let x_674 : f32 = u_xlat2.z;
    x_670 = x_674;
  } else {
    let x_677 : f32 = x_128.unity_MatrixV[1i].z;
    x_670 = x_677;
  }
  let x_678 : f32 = x_670;
  u_xlat4.y = x_678;
  let x_681 : bool = u_xlatb12.x;
  if (x_681) {
    let x_686 : f32 = u_xlat2.w;
    x_682 = x_686;
  } else {
    let x_689 : f32 = x_128.unity_MatrixV[2i].z;
    x_682 = x_689;
  }
  let x_690 : f32 = x_682;
  u_xlat4.z = x_690;
  u_xlat3.w = 1.0f;
  let x_695 : vec4<f32> = x_48.unity_SHAr;
  let x_696 : vec4<f32> = u_xlat3;
  u_xlat7.x = dot(x_695, x_696);
  let x_701 : vec4<f32> = x_48.unity_SHAg;
  let x_702 : vec4<f32> = u_xlat3;
  u_xlat7.y = dot(x_701, x_702);
  let x_707 : vec4<f32> = x_48.unity_SHAb;
  let x_708 : vec4<f32> = u_xlat3;
  u_xlat7.z = dot(x_707, x_708);
  let x_711 : vec4<f32> = u_xlat3;
  let x_713 : vec4<f32> = u_xlat3;
  u_xlat8 = (vec4<f32>(x_711.y, x_711.z, x_711.z, x_711.x) * vec4<f32>(x_713.x, x_713.y, x_713.z, x_713.z));
  let x_719 : vec4<f32> = x_48.unity_SHBr;
  let x_720 : vec4<f32> = u_xlat8;
  u_xlat9.x = dot(x_719, x_720);
  let x_725 : vec4<f32> = x_48.unity_SHBg;
  let x_726 : vec4<f32> = u_xlat8;
  u_xlat9.y = dot(x_725, x_726);
  let x_731 : vec4<f32> = x_48.unity_SHBb;
  let x_732 : vec4<f32> = u_xlat8;
  u_xlat9.z = dot(x_731, x_732);
  let x_736 : f32 = u_xlat3.y;
  let x_738 : f32 = u_xlat3.y;
  u_xlat12.x = (x_736 * x_738);
  let x_742 : f32 = u_xlat3.x;
  let x_744 : f32 = u_xlat3.x;
  let x_747 : f32 = u_xlat12.x;
  u_xlat12.x = ((x_742 * x_744) + -(x_747));
  let x_753 : vec4<f32> = x_48.unity_SHC;
  let x_755 : vec3<f32> = u_xlat12;
  let x_758 : vec3<f32> = u_xlat9;
  u_xlat12 = ((vec3<f32>(x_753.x, x_753.y, x_753.z) * vec3<f32>(x_755.x, x_755.x, x_755.x)) + x_758);
  let x_760 : vec3<f32> = u_xlat12;
  let x_761 : vec4<f32> = u_xlat7;
  u_xlat12 = (x_760 + vec3<f32>(x_761.x, x_761.y, x_761.z));
  let x_764 : vec3<f32> = u_xlat12;
  u_xlat12 = max(x_764, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_767 : f32 = u_xlat6.x;
  u_xlat6.x = x_767;
  let x_770 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_770, 0.0f, 1.0f);
  let x_773 : f32 = u_xlat37;
  u_xlat37 = min(x_773, 1.0f);
  let x_775 : vec3<f32> = u_xlat5;
  let x_778 : vec3<f32> = (x_775 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_779 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_778.x, x_779.y, x_778.y, x_778.z);
  let x_783 : f32 = u_xlat6.x;
  u_xlat39 = (-(x_783) + 1.0f);
  let x_787 : f32 = u_xlat39;
  let x_788 : f32 = u_xlat39;
  u_xlat40 = (x_787 * x_788);
  let x_790 : f32 = u_xlat40;
  u_xlat40 = max(x_790, 0.0078125f);
  let x_793 : f32 = u_xlat40;
  let x_794 : f32 = u_xlat40;
  u_xlat5.x = (x_793 * x_794);
  let x_799 : f32 = u_xlat6.x;
  u_xlat17 = (x_799 + 0.04000002145767211914f);
  let x_802 : f32 = u_xlat17;
  u_xlat17 = min(x_802, 1.0f);
  let x_805 : f32 = u_xlat40;
  u_xlat29 = ((x_805 * 4.0f) + 2.0f);
  let x_810 : f32 = vs_INTERP6.w;
  u_xlat41 = min(x_810, 1.0f);
  let x_812 : vec3<f32> = vs_INTERP8;
  let x_814 : vec3<f32> = x_128.x_WorldSpaceCameraPos;
  let x_816 : vec3<f32> = (x_812 + -(x_814));
  let x_817 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_816.x, x_816.y, x_816.z, x_817.w);
  let x_819 : vec4<f32> = u_xlat6;
  let x_821 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_819.x, x_819.y, x_819.z), vec3<f32>(x_821.x, x_821.y, x_821.z));
  let x_826 : f32 = u_xlat6.x;
  let x_828 : f32 = x_246.x_MainLightShadowParams.z;
  let x_831 : f32 = x_246.x_MainLightShadowParams.w;
  u_xlat18.x = ((x_826 * x_828) + x_831);
  let x_835 : f32 = u_xlat18.x;
  u_xlat18.x = clamp(x_835, 0.0f, 1.0f);
  let x_840 : f32 = u_xlat0.x;
  u_xlat30 = (-(x_840) + 1.0f);
  let x_844 : f32 = u_xlat18.x;
  let x_845 : f32 = u_xlat30;
  let x_848 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_844 * x_845) + x_848);
  let x_851 : vec4<f32> = u_xlat4;
  let x_854 : vec4<f32> = u_xlat3;
  u_xlat18.x = dot(-(vec3<f32>(x_851.x, x_851.y, x_851.z)), vec3<f32>(x_854.x, x_854.y, x_854.z));
  let x_859 : f32 = u_xlat18.x;
  let x_861 : f32 = u_xlat18.x;
  u_xlat18.x = (x_859 + x_861);
  let x_864 : vec4<f32> = u_xlat3;
  let x_866 : vec3<f32> = u_xlat18;
  let x_870 : vec4<f32> = u_xlat4;
  u_xlat18 = ((vec3<f32>(x_864.x, x_864.y, x_864.z) * -(vec3<f32>(x_866.x, x_866.x, x_866.x))) + -(vec3<f32>(x_870.x, x_870.y, x_870.z)));
  let x_874 : vec4<f32> = u_xlat3;
  let x_876 : vec4<f32> = u_xlat4;
  u_xlat7.x = dot(vec3<f32>(x_874.x, x_874.y, x_874.z), vec3<f32>(x_876.x, x_876.y, x_876.z));
  let x_881 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_881, 0.0f, 1.0f);
  let x_885 : f32 = u_xlat7.x;
  u_xlat7.x = (-(x_885) + 1.0f);
  let x_890 : f32 = u_xlat7.x;
  let x_892 : f32 = u_xlat7.x;
  u_xlat7.x = (x_890 * x_892);
  let x_896 : f32 = u_xlat7.x;
  let x_898 : f32 = u_xlat7.x;
  u_xlat7.x = (x_896 * x_898);
  let x_903 : f32 = u_xlat39;
  u_xlat19.x = ((-(x_903) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_910 : f32 = u_xlat39;
  let x_912 : f32 = u_xlat19.x;
  u_xlat39 = (x_910 * x_912);
  let x_914 : f32 = u_xlat39;
  u_xlat39 = (x_914 * 6.0f);
  let x_925 : vec3<f32> = u_xlat18;
  let x_926 : f32 = u_xlat39;
  let x_927 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_925, x_926);
  u_xlat8 = x_927;
  let x_929 : f32 = u_xlat8.w;
  u_xlat39 = (x_929 + -1.0f);
  let x_932 : f32 = x_48.unity_SpecCube0_HDR.w;
  let x_933 : f32 = u_xlat39;
  u_xlat39 = ((x_932 * x_933) + 1.0f);
  let x_936 : f32 = u_xlat39;
  u_xlat39 = max(x_936, 0.0f);
  let x_938 : f32 = u_xlat39;
  u_xlat39 = log2(x_938);
  let x_940 : f32 = u_xlat39;
  let x_942 : f32 = x_48.unity_SpecCube0_HDR.y;
  u_xlat39 = (x_940 * x_942);
  let x_944 : f32 = u_xlat39;
  u_xlat39 = exp2(x_944);
  let x_946 : f32 = u_xlat39;
  let x_948 : f32 = x_48.unity_SpecCube0_HDR.x;
  u_xlat39 = (x_946 * x_948);
  let x_950 : vec4<f32> = u_xlat8;
  let x_952 : f32 = u_xlat39;
  u_xlat18 = (vec3<f32>(x_950.x, x_950.y, x_950.z) * vec3<f32>(x_952, x_952, x_952));
  let x_955 : f32 = u_xlat40;
  let x_957 : f32 = u_xlat40;
  u_xlat19 = ((vec2<f32>(x_955, x_955) * vec2<f32>(x_957, x_957)) + vec2<f32>(-1.0f, 1.0f));
  let x_963 : f32 = u_xlat19.y;
  u_xlat39 = (1.0f / x_963);
  let x_965 : f32 = u_xlat17;
  u_xlat40 = (x_965 + -0.03999999910593032837f);
  let x_969 : f32 = u_xlat7.x;
  let x_970 : f32 = u_xlat40;
  u_xlat40 = ((x_969 * x_970) + 0.03999999910593032837f);
  let x_974 : f32 = u_xlat39;
  let x_975 : f32 = u_xlat40;
  u_xlat39 = (x_974 * x_975);
  let x_977 : f32 = u_xlat39;
  let x_979 : vec3<f32> = u_xlat18;
  u_xlat18 = (vec3<f32>(x_977, x_977, x_977) * x_979);
  let x_981 : vec3<f32> = u_xlat12;
  let x_982 : vec4<f32> = u_xlat2;
  let x_985 : vec3<f32> = u_xlat18;
  u_xlat12 = ((x_981 * vec3<f32>(x_982.x, x_982.z, x_982.w)) + x_985);
  let x_988 : f32 = u_xlat0.x;
  let x_990 : f32 = x_48.unity_LightData.z;
  u_xlat0.x = (x_988 * x_990);
  let x_993 : vec4<f32> = u_xlat3;
  let x_996 : vec4<f32> = x_128.x_MainLightPosition;
  u_xlat39 = dot(vec3<f32>(x_993.x, x_993.y, x_993.z), vec3<f32>(x_996.x, x_996.y, x_996.z));
  let x_999 : f32 = u_xlat39;
  u_xlat39 = clamp(x_999, 0.0f, 1.0f);
  let x_1002 : f32 = u_xlat0.x;
  let x_1003 : f32 = u_xlat39;
  u_xlat0.x = (x_1002 * x_1003);
  let x_1006 : vec3<f32> = u_xlat0;
  let x_1009 : vec4<f32> = x_128.x_MainLightColor;
  u_xlat18 = (vec3<f32>(x_1006.x, x_1006.x, x_1006.x) * vec3<f32>(x_1009.x, x_1009.y, x_1009.z));
  let x_1012 : vec4<f32> = u_xlat4;
  let x_1015 : vec4<f32> = x_128.x_MainLightPosition;
  let x_1017 : vec3<f32> = (vec3<f32>(x_1012.x, x_1012.y, x_1012.z) + vec3<f32>(x_1015.x, x_1015.y, x_1015.z));
  let x_1018 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1017.x, x_1018.y, x_1017.y, x_1017.z);
  let x_1020 : vec4<f32> = u_xlat7;
  let x_1022 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_1020.x, x_1020.z, x_1020.w), vec3<f32>(x_1022.x, x_1022.z, x_1022.w));
  let x_1027 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1027, 1.17549435e-38f);
  let x_1031 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1031);
  let x_1034 : vec3<f32> = u_xlat0;
  let x_1036 : vec4<f32> = u_xlat7;
  let x_1038 : vec3<f32> = (vec3<f32>(x_1034.x, x_1034.x, x_1034.x) * vec3<f32>(x_1036.x, x_1036.z, x_1036.w));
  let x_1039 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1038.x, x_1039.y, x_1038.y, x_1038.z);
  let x_1041 : vec4<f32> = u_xlat3;
  let x_1043 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_1041.x, x_1041.y, x_1041.z), vec3<f32>(x_1043.x, x_1043.z, x_1043.w));
  let x_1048 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1048, 0.0f, 1.0f);
  let x_1052 : vec4<f32> = x_128.x_MainLightPosition;
  let x_1054 : vec4<f32> = u_xlat7;
  u_xlat39 = dot(vec3<f32>(x_1052.x, x_1052.y, x_1052.z), vec3<f32>(x_1054.x, x_1054.z, x_1054.w));
  let x_1057 : f32 = u_xlat39;
  u_xlat39 = clamp(x_1057, 0.0f, 1.0f);
  let x_1060 : f32 = u_xlat0.x;
  let x_1062 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1060 * x_1062);
  let x_1066 : f32 = u_xlat0.x;
  let x_1068 : f32 = u_xlat19.x;
  u_xlat0.x = ((x_1066 * x_1068) + 1.00001001358032226562f);
  let x_1073 : f32 = u_xlat39;
  let x_1074 : f32 = u_xlat39;
  u_xlat39 = (x_1073 * x_1074);
  let x_1077 : f32 = u_xlat0.x;
  let x_1079 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1077 * x_1079);
  let x_1082 : f32 = u_xlat39;
  u_xlat39 = max(x_1082, 0.10000000149011611938f);
  let x_1086 : f32 = u_xlat0.x;
  let x_1087 : f32 = u_xlat39;
  u_xlat0.x = (x_1086 * x_1087);
  let x_1090 : f32 = u_xlat29;
  let x_1092 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1090 * x_1092);
  let x_1096 : f32 = u_xlat5.x;
  let x_1098 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1096 / x_1098);
  let x_1101 : vec3<f32> = u_xlat0;
  let x_1105 : vec4<f32> = u_xlat2;
  let x_1107 : vec3<f32> = ((vec3<f32>(x_1101.x, x_1101.x, x_1101.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + vec3<f32>(x_1105.x, x_1105.z, x_1105.w));
  let x_1108 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1107.x, x_1108.y, x_1107.y, x_1107.z);
  let x_1110 : vec3<f32> = u_xlat18;
  let x_1111 : vec4<f32> = u_xlat7;
  u_xlat18 = (x_1110 * vec3<f32>(x_1111.x, x_1111.z, x_1111.w));
  let x_1115 : f32 = x_128.x_AdditionalLightsCount.x;
  let x_1117 : f32 = x_48.unity_LightData.y;
  u_xlat0.x = min(x_1115, x_1117);
  let x_1121 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1121));
  let x_1125 : f32 = u_xlat6.x;
  let x_1128 : f32 = x_246.x_AdditionalShadowFadeParams.x;
  let x_1131 : f32 = x_246.x_AdditionalShadowFadeParams.y;
  u_xlat39 = ((x_1125 * x_1128) + x_1131);
  let x_1133 : f32 = u_xlat39;
  u_xlat39 = clamp(x_1133, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlat7.w = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1145 : u32 = u_xlatu_loop_1;
    let x_1146 : u32 = u_xlatu0;
    if ((x_1145 < x_1146)) {
    } else {
      break;
    }
    let x_1149 : u32 = u_xlatu_loop_1;
    u_xlatu17 = (x_1149 >> 2u);
    let x_1152 : u32 = u_xlatu_loop_1;
    u_xlati6 = bitcast<i32>((x_1152 & 3u));
    let x_1155 : u32 = u_xlatu17;
    let x_1158 : vec4<f32> = x_48.unity_LightIndices[bitcast<i32>(x_1155)];
    let x_1168 : i32 = u_xlati6;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1173 : vec4<u32> = indexable[x_1168];
    u_xlat17 = dot(x_1158, bitcast<vec4<f32>>(x_1173));
    let x_1177 : f32 = u_xlat17;
    u_xlati17 = i32(x_1177);
    let x_1179 : vec3<f32> = vs_INTERP8;
    let x_1190 : i32 = u_xlati17;
    let x_1192 : vec4<f32> = x_1189.x_AdditionalLightsPosition[x_1190];
    let x_1195 : i32 = u_xlati17;
    let x_1197 : vec4<f32> = x_1189.x_AdditionalLightsPosition[x_1195];
    let x_1199 : vec3<f32> = ((-(x_1179) * vec3<f32>(x_1192.w, x_1192.w, x_1192.w)) + vec3<f32>(x_1197.x, x_1197.y, x_1197.z));
    let x_1200 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1199.x, x_1199.y, x_1199.z, x_1200.w);
    let x_1202 : vec4<f32> = u_xlat8;
    let x_1204 : vec4<f32> = u_xlat8;
    u_xlat6.x = dot(vec3<f32>(x_1202.x, x_1202.y, x_1202.z), vec3<f32>(x_1204.x, x_1204.y, x_1204.z));
    let x_1209 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_1209, 0.00006103515625f);
    let x_1215 : f32 = u_xlat6.x;
    u_xlat44 = inverseSqrt(x_1215);
    let x_1217 : f32 = u_xlat44;
    let x_1219 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1217, x_1217, x_1217) * vec3<f32>(x_1219.x, x_1219.y, x_1219.z));
    let x_1224 : f32 = u_xlat6.x;
    u_xlat45 = (1.0f / x_1224);
    let x_1227 : f32 = u_xlat6.x;
    let x_1228 : i32 = u_xlati17;
    let x_1230 : f32 = x_1189.x_AdditionalLightsAttenuation[x_1228].x;
    u_xlat6.x = (x_1227 * x_1230);
    let x_1234 : f32 = u_xlat6.x;
    let x_1237 : f32 = u_xlat6.x;
    u_xlat6.x = ((-(x_1234) * x_1237) + 1.0f);
    let x_1242 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_1242, 0.0f);
    let x_1246 : f32 = u_xlat6.x;
    let x_1248 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1246 * x_1248);
    let x_1252 : f32 = u_xlat6.x;
    let x_1253 : f32 = u_xlat45;
    u_xlat6.x = (x_1252 * x_1253);
    let x_1256 : i32 = u_xlati17;
    let x_1258 : vec4<f32> = x_1189.x_AdditionalLightsSpotDir[x_1256];
    let x_1260 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_1258.x, x_1258.y, x_1258.z), x_1260);
    let x_1262 : f32 = u_xlat45;
    let x_1263 : i32 = u_xlati17;
    let x_1265 : f32 = x_1189.x_AdditionalLightsAttenuation[x_1263].z;
    let x_1267 : i32 = u_xlati17;
    let x_1269 : f32 = x_1189.x_AdditionalLightsAttenuation[x_1267].w;
    u_xlat45 = ((x_1262 * x_1265) + x_1269);
    let x_1271 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1271, 0.0f, 1.0f);
    let x_1273 : f32 = u_xlat45;
    let x_1274 : f32 = u_xlat45;
    u_xlat45 = (x_1273 * x_1274);
    let x_1277 : f32 = u_xlat6.x;
    let x_1278 : f32 = u_xlat45;
    u_xlat6.x = (x_1277 * x_1278);
    let x_1283 : i32 = u_xlati17;
    let x_1285 : f32 = x_246.x_AdditionalShadowParams[x_1283].w;
    u_xlati45 = i32(x_1285);
    let x_1290 : i32 = u_xlati45;
    u_xlatb10.x = (x_1290 >= 0i);
    let x_1294 : bool = u_xlatb10.x;
    if (x_1294) {
      let x_1298 : i32 = u_xlati17;
      let x_1300 : f32 = x_246.x_AdditionalShadowParams[x_1298].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1300, x_1300, x_1300, x_1300))));
      let x_1306 : bool = u_xlatb10.x;
      if (x_1306) {
        let x_1309 : vec3<f32> = u_xlat9;
        let x_1312 : vec3<f32> = u_xlat9;
        let x_1315 : vec4<bool> = (abs(vec4<f32>(x_1309.z, x_1309.z, x_1309.y, x_1309.z)) >= abs(vec4<f32>(x_1312.x, x_1312.y, x_1312.x, x_1312.x)));
        u_xlatb10 = vec3<bool>(x_1315.x, x_1315.y, x_1315.z);
        let x_1318 : bool = u_xlatb10.y;
        let x_1320 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_1318 & x_1320);
        let x_1324 : vec3<f32> = u_xlat9;
        let x_1327 : vec4<bool> = (-(vec4<f32>(x_1324.z, x_1324.y, x_1324.x, x_1324.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_1327.x, x_1327.y, x_1327.z);
        let x_1331 : bool = u_xlatb11.x;
        u_xlat22.x = select(4.0f, 5.0f, x_1331);
        let x_1336 : bool = u_xlatb11.y;
        u_xlat22.z = select(2.0f, 3.0f, x_1336);
        let x_1341 : bool = u_xlatb11.z;
        u_xlat11 = select(0.0f, 1.0f, x_1341);
        let x_1345 : bool = u_xlatb10.z;
        if (x_1345) {
          let x_1350 : f32 = u_xlat22.z;
          x_1346 = x_1350;
        } else {
          let x_1352 : f32 = u_xlat11;
          x_1346 = x_1352;
        }
        let x_1353 : f32 = x_1346;
        u_xlat34 = x_1353;
        let x_1356 : bool = u_xlatb10.x;
        if (x_1356) {
          let x_1361 : f32 = u_xlat22.x;
          x_1357 = x_1361;
        } else {
          let x_1363 : f32 = u_xlat34;
          x_1357 = x_1363;
        }
        let x_1364 : f32 = x_1357;
        u_xlat10.x = x_1364;
        let x_1366 : i32 = u_xlati17;
        let x_1368 : f32 = x_246.x_AdditionalShadowParams[x_1366].w;
        u_xlat22.x = trunc(x_1368);
        let x_1372 : f32 = u_xlat10.x;
        let x_1374 : f32 = u_xlat22.x;
        u_xlat10.x = (x_1372 + x_1374);
        let x_1378 : f32 = u_xlat10.x;
        u_xlati45 = i32(x_1378);
      }
      let x_1380 : i32 = u_xlati45;
      u_xlati45 = (x_1380 << bitcast<u32>(2i));
      let x_1382 : vec3<f32> = vs_INTERP8;
      let x_1385 : i32 = u_xlati45;
      let x_1388 : i32 = u_xlati45;
      let x_1392 : vec4<f32> = x_246.x_AdditionalLightsWorldToShadow[((x_1385 + 1i) / 4i)][((x_1388 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1382.y, x_1382.y, x_1382.y, x_1382.y) * x_1392);
      let x_1394 : i32 = u_xlati45;
      let x_1396 : i32 = u_xlati45;
      let x_1399 : vec4<f32> = x_246.x_AdditionalLightsWorldToShadow[(x_1394 / 4i)][(x_1396 % 4i)];
      let x_1400 : vec3<f32> = vs_INTERP8;
      let x_1403 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1399 * vec4<f32>(x_1400.x, x_1400.x, x_1400.x, x_1400.x)) + x_1403);
      let x_1405 : i32 = u_xlati45;
      let x_1408 : i32 = u_xlati45;
      let x_1412 : vec4<f32> = x_246.x_AdditionalLightsWorldToShadow[((x_1405 + 2i) / 4i)][((x_1408 + 2i) % 4i)];
      let x_1413 : vec3<f32> = vs_INTERP8;
      let x_1416 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1412 * vec4<f32>(x_1413.z, x_1413.z, x_1413.z, x_1413.z)) + x_1416);
      let x_1418 : vec4<f32> = u_xlat10;
      let x_1419 : i32 = u_xlati45;
      let x_1422 : i32 = u_xlati45;
      let x_1426 : vec4<f32> = x_246.x_AdditionalLightsWorldToShadow[((x_1419 + 3i) / 4i)][((x_1422 + 3i) % 4i)];
      u_xlat10 = (x_1418 + x_1426);
      let x_1428 : vec4<f32> = u_xlat10;
      let x_1430 : vec4<f32> = u_xlat10;
      let x_1432 : vec3<f32> = (vec3<f32>(x_1428.x, x_1428.y, x_1428.z) / vec3<f32>(x_1430.w, x_1430.w, x_1430.w));
      let x_1433 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1432.x, x_1432.y, x_1432.z, x_1433.w);
      let x_1436 : vec4<f32> = u_xlat10;
      let x_1437 : vec2<f32> = vec2<f32>(x_1436.x, x_1436.y);
      let x_1439 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1437.x, x_1437.y, x_1439);
      let x_1447 : vec3<f32> = txVec1;
      let x_1449 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1447.xy, x_1447.z);
      u_xlat45 = x_1449;
      let x_1450 : i32 = u_xlati17;
      let x_1452 : f32 = x_246.x_AdditionalShadowParams[x_1450].x;
      u_xlat10.x = (1.0f + -(x_1452));
      let x_1456 : f32 = u_xlat45;
      let x_1457 : i32 = u_xlati17;
      let x_1459 : f32 = x_246.x_AdditionalShadowParams[x_1457].x;
      let x_1462 : f32 = u_xlat10.x;
      u_xlat45 = ((x_1456 * x_1459) + x_1462);
      let x_1465 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_1465);
      let x_1470 : f32 = u_xlat10.z;
      u_xlatb22 = (x_1470 >= 1.0f);
      let x_1472 : bool = u_xlatb22;
      let x_1474 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_1472 | x_1474);
      let x_1478 : bool = u_xlatb10.x;
      let x_1479 : f32 = u_xlat45;
      u_xlat45 = select(x_1479, 1.0f, x_1478);
    } else {
      u_xlat45 = 1.0f;
    }
    let x_1482 : f32 = u_xlat45;
    u_xlat10.x = (-(x_1482) + 1.0f);
    let x_1486 : f32 = u_xlat39;
    let x_1488 : f32 = u_xlat10.x;
    let x_1490 : f32 = u_xlat45;
    u_xlat45 = ((x_1486 * x_1488) + x_1490);
    let x_1493 : f32 = u_xlat6.x;
    let x_1494 : f32 = u_xlat45;
    u_xlat6.x = (x_1493 * x_1494);
    let x_1497 : vec4<f32> = u_xlat3;
    let x_1499 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_1497.x, x_1497.y, x_1497.z), x_1499);
    let x_1501 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1501, 0.0f, 1.0f);
    let x_1504 : f32 = u_xlat6.x;
    let x_1505 : f32 = u_xlat45;
    u_xlat6.x = (x_1504 * x_1505);
    let x_1508 : vec4<f32> = u_xlat6;
    let x_1510 : i32 = u_xlati17;
    let x_1512 : vec4<f32> = x_1189.x_AdditionalLightsColor[x_1510];
    let x_1514 : vec3<f32> = (vec3<f32>(x_1508.x, x_1508.x, x_1508.x) * vec3<f32>(x_1512.x, x_1512.y, x_1512.z));
    let x_1515 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1514.x, x_1514.y, x_1514.z, x_1515.w);
    let x_1517 : vec4<f32> = u_xlat8;
    let x_1519 : f32 = u_xlat44;
    let x_1522 : vec4<f32> = u_xlat4;
    let x_1524 : vec3<f32> = ((vec3<f32>(x_1517.x, x_1517.y, x_1517.z) * vec3<f32>(x_1519, x_1519, x_1519)) + vec3<f32>(x_1522.x, x_1522.y, x_1522.z));
    let x_1525 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1524.x, x_1524.y, x_1524.z, x_1525.w);
    let x_1527 : vec4<f32> = u_xlat8;
    let x_1529 : vec4<f32> = u_xlat8;
    u_xlat17 = dot(vec3<f32>(x_1527.x, x_1527.y, x_1527.z), vec3<f32>(x_1529.x, x_1529.y, x_1529.z));
    let x_1532 : f32 = u_xlat17;
    u_xlat17 = max(x_1532, 1.17549435e-38f);
    let x_1534 : f32 = u_xlat17;
    u_xlat17 = inverseSqrt(x_1534);
    let x_1536 : f32 = u_xlat17;
    let x_1538 : vec4<f32> = u_xlat8;
    let x_1540 : vec3<f32> = (vec3<f32>(x_1536, x_1536, x_1536) * vec3<f32>(x_1538.x, x_1538.y, x_1538.z));
    let x_1541 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1540.x, x_1540.y, x_1540.z, x_1541.w);
    let x_1543 : vec4<f32> = u_xlat3;
    let x_1545 : vec4<f32> = u_xlat8;
    u_xlat17 = dot(vec3<f32>(x_1543.x, x_1543.y, x_1543.z), vec3<f32>(x_1545.x, x_1545.y, x_1545.z));
    let x_1548 : f32 = u_xlat17;
    u_xlat17 = clamp(x_1548, 0.0f, 1.0f);
    let x_1550 : vec3<f32> = u_xlat9;
    let x_1551 : vec4<f32> = u_xlat8;
    u_xlat6.x = dot(x_1550, vec3<f32>(x_1551.x, x_1551.y, x_1551.z));
    let x_1556 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_1556, 0.0f, 1.0f);
    let x_1559 : f32 = u_xlat17;
    let x_1560 : f32 = u_xlat17;
    u_xlat17 = (x_1559 * x_1560);
    let x_1562 : f32 = u_xlat17;
    let x_1564 : f32 = u_xlat19.x;
    u_xlat17 = ((x_1562 * x_1564) + 1.00001001358032226562f);
    let x_1568 : f32 = u_xlat6.x;
    let x_1570 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1568 * x_1570);
    let x_1573 : f32 = u_xlat17;
    let x_1574 : f32 = u_xlat17;
    u_xlat17 = (x_1573 * x_1574);
    let x_1577 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_1577, 0.10000000149011611938f);
    let x_1580 : f32 = u_xlat17;
    let x_1582 : f32 = u_xlat6.x;
    u_xlat17 = (x_1580 * x_1582);
    let x_1584 : f32 = u_xlat29;
    let x_1585 : f32 = u_xlat17;
    u_xlat17 = (x_1584 * x_1585);
    let x_1588 : f32 = u_xlat5.x;
    let x_1589 : f32 = u_xlat17;
    u_xlat17 = (x_1588 / x_1589);
    let x_1591 : f32 = u_xlat17;
    let x_1594 : vec4<f32> = u_xlat2;
    let x_1596 : vec3<f32> = ((vec3<f32>(x_1591, x_1591, x_1591) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + vec3<f32>(x_1594.x, x_1594.z, x_1594.w));
    let x_1597 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1596.x, x_1596.y, x_1596.z, x_1597.w);
    let x_1599 : vec4<f32> = u_xlat8;
    let x_1601 : vec4<f32> = u_xlat10;
    let x_1604 : vec4<f32> = u_xlat7;
    let x_1606 : vec3<f32> = ((vec3<f32>(x_1599.x, x_1599.y, x_1599.z) * vec3<f32>(x_1601.x, x_1601.y, x_1601.z)) + vec3<f32>(x_1604.x, x_1604.z, x_1604.w));
    let x_1607 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1606.x, x_1607.y, x_1606.y, x_1606.z);

    continuing {
      let x_1609 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1609 + bitcast<u32>(1i));
    }
  }
  let x_1611 : vec3<f32> = u_xlat12;
  let x_1612 : f32 = u_xlat41;
  let x_1615 : vec3<f32> = u_xlat18;
  u_xlat0 = ((x_1611 * vec3<f32>(x_1612, x_1612, x_1612)) + x_1615);
  let x_1617 : vec4<f32> = u_xlat7;
  let x_1619 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1617.x, x_1617.z, x_1617.w) + x_1619);
  let x_1623 : vec4<f32> = vs_INTERP6;
  let x_1625 : vec3<f32> = u_xlat1;
  let x_1627 : vec3<f32> = u_xlat0;
  let x_1628 : vec3<f32> = ((vec3<f32>(x_1623.w, x_1623.w, x_1623.w) * x_1625) + x_1627);
  let x_1629 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1628.x, x_1628.y, x_1628.z, x_1629.w);
  let x_1631 : bool = u_xlatb14;
  let x_1632 : f32 = u_xlat37;
  SV_Target0.w = select(1.0f, x_1632, x_1631);
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


