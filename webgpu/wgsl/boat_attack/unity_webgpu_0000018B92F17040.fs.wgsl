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

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(10) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_128 : PGlobals;

var<private> u_xlat5 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_138 : UnityPerMaterial;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat18 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

var<private> vs_INTERP8 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_246 : LightShadows;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu0 : u32;

var<private> u_xlati0 : i32;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat37 : f32;

var<private> u_xlatb37 : bool;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlat14 : f32;

var<private> u_xlat26 : f32;

var<private> u_xlatb14 : bool;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

var<private> u_xlat15 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat40 : f32;

var<private> u_xlat17 : f32;

var<private> u_xlat29 : f32;

var<private> u_xlat41 : f32;

var<private> u_xlat30 : f32;

var<private> u_xlat42 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat20 : vec3<f32>;

var<private> u_xlatu29 : u32;

var<private> u_xlati43 : i32;

var<private> u_xlati29 : i32;

@group(1) @binding(1) var<uniform> x_1173 : AdditionalLights;

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

var<private> u_xlat36 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu5 : u32;

var<private> u_xlatb29 : bool;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_481 : f32;
  var x_520 : f32;
  var x_567 : f32;
  var x_660 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1318 : f32;
  var x_1329 : f32;
  var txVec1 : vec3<f32>;
  var x_1446 : f32;
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
  u_xlat8 = (x_272 + -(vec3<f32>(x_275.x, x_275.y, x_275.z)));
  let x_279 : vec4<f32> = u_xlat2;
  let x_281 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_279.x, x_279.y, x_279.z), vec3<f32>(x_281.x, x_281.y, x_281.z));
  let x_285 : vec4<f32> = u_xlat3;
  let x_287 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_285.x, x_285.y, x_285.z), vec3<f32>(x_287.x, x_287.y, x_287.z));
  let x_291 : vec4<f32> = u_xlat7;
  let x_293 : vec4<f32> = u_xlat7;
  u_xlat2.z = dot(vec3<f32>(x_291.x, x_291.y, x_291.z), vec3<f32>(x_293.x, x_293.y, x_293.z));
  let x_297 : vec3<f32> = u_xlat8;
  let x_298 : vec3<f32> = u_xlat8;
  u_xlat2.w = dot(x_297, x_298);
  let x_304 : vec4<f32> = u_xlat2;
  let x_307 : vec4<f32> = x_246.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_304 < x_307);
  let x_310 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_310);
  let x_314 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_314);
  let x_318 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_318);
  let x_322 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_322);
  let x_326 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_326);
  let x_331 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_331);
  let x_335 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_335);
  let x_338 : vec4<f32> = u_xlat2;
  let x_340 : vec4<f32> = u_xlat3;
  let x_342 : vec3<f32> = (vec3<f32>(x_338.x, x_338.y, x_338.z) + vec3<f32>(x_340.y, x_340.z, x_340.w));
  let x_343 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_342.x, x_342.y, x_342.z, x_343.w);
  let x_345 : vec4<f32> = u_xlat2;
  let x_348 : vec3<f32> = max(vec3<f32>(x_345.x, x_345.y, x_345.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_349 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_349.x, x_348.x, x_348.y, x_348.z);
  let x_351 : vec4<f32> = u_xlat3;
  u_xlat0.x = dot(x_351, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_358 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_358) + 4.0f);
  let x_365 : f32 = u_xlat0.x;
  u_xlatu0 = u32(x_365);
  let x_369 : u32 = u_xlatu0;
  u_xlati0 = (bitcast<i32>(x_369) << bitcast<u32>(2i));
  let x_372 : vec3<f32> = vs_INTERP8;
  let x_374 : i32 = u_xlati0;
  let x_377 : i32 = u_xlati0;
  let x_381 : vec4<f32> = x_246.x_MainLightWorldToShadow[((x_374 + 1i) / 4i)][((x_377 + 1i) % 4i)];
  let x_383 : vec3<f32> = (vec3<f32>(x_372.y, x_372.y, x_372.y) * vec3<f32>(x_381.x, x_381.y, x_381.z));
  let x_384 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
  let x_386 : i32 = u_xlati0;
  let x_388 : i32 = u_xlati0;
  let x_391 : vec4<f32> = x_246.x_MainLightWorldToShadow[(x_386 / 4i)][(x_388 % 4i)];
  let x_393 : vec3<f32> = vs_INTERP8;
  let x_396 : vec4<f32> = u_xlat2;
  let x_398 : vec3<f32> = ((vec3<f32>(x_391.x, x_391.y, x_391.z) * vec3<f32>(x_393.x, x_393.x, x_393.x)) + vec3<f32>(x_396.x, x_396.y, x_396.z));
  let x_399 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_398.x, x_398.y, x_398.z, x_399.w);
  let x_401 : i32 = u_xlati0;
  let x_404 : i32 = u_xlati0;
  let x_408 : vec4<f32> = x_246.x_MainLightWorldToShadow[((x_401 + 2i) / 4i)][((x_404 + 2i) % 4i)];
  let x_410 : vec3<f32> = vs_INTERP8;
  let x_413 : vec4<f32> = u_xlat2;
  let x_415 : vec3<f32> = ((vec3<f32>(x_408.x, x_408.y, x_408.z) * vec3<f32>(x_410.z, x_410.z, x_410.z)) + vec3<f32>(x_413.x, x_413.y, x_413.z));
  let x_416 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_415.x, x_415.y, x_415.z, x_416.w);
  let x_418 : vec4<f32> = u_xlat2;
  let x_420 : i32 = u_xlati0;
  let x_423 : i32 = u_xlati0;
  let x_427 : vec4<f32> = x_246.x_MainLightWorldToShadow[((x_420 + 3i) / 4i)][((x_423 + 3i) % 4i)];
  let x_429 : vec3<f32> = (vec3<f32>(x_418.x, x_418.y, x_418.z) + vec3<f32>(x_427.x, x_427.y, x_427.z));
  let x_430 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_429.x, x_429.y, x_429.z, x_430.w);
  let x_434 : vec4<f32> = u_xlat2;
  let x_435 : vec2<f32> = vec2<f32>(x_434.x, x_434.y);
  let x_437 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_435.x, x_435.y, x_437);
  let x_449 : vec3<f32> = txVec0;
  let x_451 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_449.xy, x_449.z);
  u_xlat0.x = x_451;
  let x_456 : f32 = x_246.x_MainLightShadowParams.x;
  u_xlat37 = (-(x_456) + 1.0f);
  let x_460 : f32 = u_xlat0.x;
  let x_462 : f32 = x_246.x_MainLightShadowParams.x;
  let x_464 : f32 = u_xlat37;
  u_xlat0.x = ((x_460 * x_462) + x_464);
  let x_469 : f32 = u_xlat2.z;
  u_xlatb37 = (0.0f >= x_469);
  let x_472 : f32 = u_xlat2.z;
  u_xlatb2.x = (x_472 >= 1.0f);
  let x_475 : bool = u_xlatb37;
  let x_477 : bool = u_xlatb2.x;
  u_xlatb37 = (x_475 | x_477);
  let x_479 : bool = u_xlatb37;
  if (x_479) {
    x_481 = 1.0f;
  } else {
    let x_486 : f32 = u_xlat0.x;
    x_481 = x_486;
  }
  let x_487 : f32 = x_481;
  u_xlat0.x = x_487;
  let x_489 : vec3<f32> = u_xlat1;
  let x_491 : vec4<f32> = x_128.x_MainLightPosition;
  u_xlat1.x = dot(x_489, -(vec3<f32>(x_491.x, x_491.y, x_491.z)));
  let x_497 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_497, 0.0f, 1.0f);
  let x_501 : vec3<f32> = u_xlat0;
  let x_504 : vec4<f32> = x_128.x_MainLightColor;
  u_xlat13 = (vec3<f32>(x_501.x, x_501.x, x_501.x) * vec3<f32>(x_504.x, x_504.y, x_504.z));
  let x_507 : vec3<f32> = u_xlat13;
  let x_508 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_507 * vec3<f32>(x_508.x, x_508.x, x_508.x));
  let x_511 : vec3<f32> = u_xlat1;
  let x_512 : vec4<f32> = u_xlat4;
  u_xlat1 = (x_511 * vec3<f32>(x_512.x, x_512.y, x_512.z));
  let x_516 : f32 = u_xlat4.w;
  u_xlatb37 = (x_516 >= 0.40000000596046447754f);
  let x_519 : bool = u_xlatb37;
  if (x_519) {
    let x_524 : f32 = u_xlat4.w;
    x_520 = x_524;
  } else {
    x_520 = 0.0f;
  }
  let x_526 : f32 = x_520;
  u_xlat37 = x_526;
  let x_528 : f32 = u_xlat4.w;
  u_xlat2.x = (x_528 + -0.40000000596046447754f);
  let x_534 : f32 = u_xlat4.w;
  u_xlat14 = dpdxCoarse(x_534);
  let x_538 : f32 = u_xlat4.w;
  u_xlat26 = dpdyCoarse(x_538);
  let x_540 : f32 = u_xlat26;
  let x_542 : f32 = u_xlat14;
  u_xlat14 = (abs(x_540) + abs(x_542));
  let x_545 : f32 = u_xlat14;
  u_xlat14 = max(x_545, 0.00009999999747378752f);
  let x_549 : f32 = u_xlat2.x;
  let x_550 : f32 = u_xlat14;
  u_xlat2.x = (x_549 / x_550);
  let x_554 : f32 = u_xlat2.x;
  u_xlat2.x = (x_554 + 0.5f);
  let x_559 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_559, 0.0f, 1.0f);
  let x_564 : f32 = x_128.x_AlphaToMaskAvailable;
  u_xlatb14 = !((x_564 == 0.0f));
  let x_566 : bool = u_xlatb14;
  if (x_566) {
    let x_571 : f32 = u_xlat2.x;
    x_567 = x_571;
  } else {
    let x_573 : f32 = u_xlat37;
    x_567 = x_573;
  }
  let x_574 : f32 = x_567;
  u_xlat37 = x_574;
  let x_575 : f32 = u_xlat37;
  u_xlat2.x = (x_575 + -0.00009999999747378752f);
  let x_580 : f32 = u_xlat2.x;
  u_xlatb2.x = (x_580 < 0.0f);
  let x_584 : bool = u_xlatb2.x;
  if (((select(0i, 1i, x_584) * -1i) != 0i)) {
    discard;
  }
  let x_592 : vec3<f32> = u_xlat12;
  let x_593 : vec3<f32> = u_xlat18;
  u_xlat12 = (x_592 * vec3<f32>(x_593.y, x_593.y, x_593.y));
  let x_596 : vec3<f32> = u_xlat18;
  let x_598 : vec4<f32> = vs_INTERP4;
  let x_601 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_596.x, x_596.x, x_596.x) * vec3<f32>(x_598.x, x_598.y, x_598.z)) + x_601);
  let x_603 : vec3<f32> = u_xlat18;
  let x_605 : vec3<f32> = vs_INTERP9;
  let x_607 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_603.z, x_603.z, x_603.z) * x_605) + x_607);
  let x_609 : vec3<f32> = u_xlat12;
  let x_610 : vec3<f32> = u_xlat12;
  u_xlat2.x = dot(x_609, x_610);
  let x_614 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_614);
  let x_617 : vec3<f32> = u_xlat12;
  let x_618 : vec4<f32> = u_xlat2;
  u_xlat12 = (x_617 * vec3<f32>(x_618.x, x_618.x, x_618.x));
  let x_623 : f32 = x_128.unity_OrthoParams.w;
  u_xlatb2.x = (x_623 == 0.0f);
  let x_626 : vec3<f32> = vs_INTERP8;
  let x_630 : vec3<f32> = x_128.x_WorldSpaceCameraPos;
  let x_631 : vec3<f32> = (-(x_626) + x_630);
  let x_632 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_631.x, x_631.y, x_631.z, x_632.w);
  let x_634 : vec4<f32> = u_xlat3;
  let x_636 : vec4<f32> = u_xlat3;
  u_xlat26 = dot(vec3<f32>(x_634.x, x_634.y, x_634.z), vec3<f32>(x_636.x, x_636.y, x_636.z));
  let x_639 : f32 = u_xlat26;
  u_xlat26 = inverseSqrt(x_639);
  let x_641 : f32 = u_xlat26;
  let x_643 : vec4<f32> = u_xlat3;
  let x_645 : vec3<f32> = (vec3<f32>(x_641, x_641, x_641) * vec3<f32>(x_643.x, x_643.y, x_643.z));
  let x_646 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_645.x, x_645.y, x_645.z, x_646.w);
  let x_650 : f32 = x_128.unity_MatrixV[0i].z;
  u_xlat4.x = x_650;
  let x_653 : f32 = x_128.unity_MatrixV[1i].z;
  u_xlat4.y = x_653;
  let x_656 : f32 = x_128.unity_MatrixV[2i].z;
  u_xlat4.z = x_656;
  let x_659 : bool = u_xlatb2.x;
  if (x_659) {
    let x_663 : vec4<f32> = u_xlat3;
    x_660 = vec3<f32>(x_663.x, x_663.y, x_663.z);
  } else {
    let x_666 : vec4<f32> = u_xlat4;
    x_660 = vec3<f32>(x_666.x, x_666.y, x_666.z);
  }
  let x_668 : vec3<f32> = x_660;
  let x_669 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_668.x, x_669.y, x_668.y, x_668.z);
  let x_672 : f32 = vs_INTERP8.y;
  let x_674 : f32 = x_128.unity_MatrixV[1i].z;
  u_xlat3.x = (x_672 * x_674);
  let x_678 : f32 = x_128.unity_MatrixV[0i].z;
  let x_680 : f32 = vs_INTERP8.x;
  let x_683 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_678 * x_680) + x_683);
  let x_687 : f32 = x_128.unity_MatrixV[2i].z;
  let x_689 : f32 = vs_INTERP8.z;
  let x_692 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_687 * x_689) + x_692);
  let x_696 : f32 = u_xlat3.x;
  let x_698 : f32 = x_128.unity_MatrixV[3i].z;
  u_xlat3.x = (x_696 + x_698);
  let x_702 : f32 = u_xlat3.x;
  let x_706 : f32 = x_128.x_ProjectionParams.y;
  u_xlat3.x = (-(x_702) + -(x_706));
  let x_711 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_711, 0.0f);
  let x_715 : f32 = u_xlat3.x;
  let x_717 : f32 = x_128.unity_FogParams.x;
  u_xlat3.x = (x_715 * x_717);
  let x_727 : vec2<f32> = vs_INTERP0;
  let x_729 : f32 = x_128.x_GlobalMipBias.x;
  let x_730 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_727, x_729);
  u_xlat4 = x_730;
  let x_736 : vec2<f32> = vs_INTERP0;
  let x_738 : f32 = x_128.x_GlobalMipBias.x;
  let x_739 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_736, x_738);
  u_xlat15 = vec3<f32>(x_739.x, x_739.y, x_739.z);
  let x_741 : vec4<f32> = u_xlat4;
  let x_745 : vec3<f32> = (vec3<f32>(x_741.x, x_741.y, x_741.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_746 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_745.x, x_745.y, x_745.z, x_746.w);
  let x_748 : vec3<f32> = u_xlat12;
  let x_749 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(x_748, vec3<f32>(x_749.x, x_749.y, x_749.z));
  let x_754 : f32 = u_xlat4.x;
  u_xlat4.x = (x_754 + 0.5f);
  let x_757 : vec3<f32> = u_xlat15;
  let x_758 : vec4<f32> = u_xlat4;
  u_xlat15 = (x_757 * vec3<f32>(x_758.x, x_758.x, x_758.x));
  let x_762 : f32 = u_xlat4.w;
  u_xlat4.x = max(x_762, 0.00009999999747378752f);
  let x_765 : vec3<f32> = u_xlat15;
  let x_766 : vec4<f32> = u_xlat4;
  u_xlat15 = (x_765 / vec3<f32>(x_766.x, x_766.x, x_766.x));
  let x_770 : f32 = u_xlat6.x;
  u_xlat6.x = x_770;
  let x_773 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_773, 0.0f, 1.0f);
  let x_776 : f32 = u_xlat37;
  u_xlat37 = min(x_776, 1.0f);
  let x_778 : vec3<f32> = u_xlat5;
  let x_781 : vec3<f32> = (x_778 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_782 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_781.x, x_781.y, x_781.z, x_782.w);
  let x_786 : f32 = u_xlat6.x;
  u_xlat40 = (-(x_786) + 1.0f);
  let x_789 : f32 = u_xlat40;
  let x_790 : f32 = u_xlat40;
  u_xlat5.x = (x_789 * x_790);
  let x_794 : f32 = u_xlat5.x;
  u_xlat5.x = max(x_794, 0.0078125f);
  let x_800 : f32 = u_xlat5.x;
  let x_802 : f32 = u_xlat5.x;
  u_xlat17 = (x_800 * x_802);
  let x_806 : f32 = u_xlat6.x;
  u_xlat29 = (x_806 + 0.04000002145767211914f);
  let x_809 : f32 = u_xlat29;
  u_xlat29 = min(x_809, 1.0f);
  let x_813 : f32 = u_xlat5.x;
  u_xlat41 = ((x_813 * 4.0f) + 2.0f);
  let x_817 : f32 = vs_INTERP6.w;
  u_xlat6.x = min(x_817, 1.0f);
  let x_820 : vec3<f32> = vs_INTERP8;
  let x_822 : vec3<f32> = x_128.x_WorldSpaceCameraPos;
  u_xlat18 = (x_820 + -(x_822));
  let x_825 : vec3<f32> = u_xlat18;
  let x_826 : vec3<f32> = u_xlat18;
  u_xlat18.x = dot(x_825, x_826);
  let x_831 : f32 = u_xlat18.x;
  let x_833 : f32 = x_246.x_MainLightShadowParams.z;
  let x_836 : f32 = x_246.x_MainLightShadowParams.w;
  u_xlat30 = ((x_831 * x_833) + x_836);
  let x_838 : f32 = u_xlat30;
  u_xlat30 = clamp(x_838, 0.0f, 1.0f);
  let x_842 : f32 = u_xlat0.x;
  u_xlat42 = (-(x_842) + 1.0f);
  let x_845 : f32 = u_xlat30;
  let x_846 : f32 = u_xlat42;
  let x_849 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_845 * x_846) + x_849);
  let x_852 : vec4<f32> = u_xlat2;
  let x_855 : vec3<f32> = u_xlat12;
  u_xlat30 = dot(-(vec3<f32>(x_852.x, x_852.z, x_852.w)), x_855);
  let x_857 : f32 = u_xlat30;
  let x_858 : f32 = u_xlat30;
  u_xlat30 = (x_857 + x_858);
  let x_860 : vec3<f32> = u_xlat12;
  let x_861 : f32 = u_xlat30;
  let x_865 : vec4<f32> = u_xlat2;
  let x_868 : vec3<f32> = ((x_860 * -(vec3<f32>(x_861, x_861, x_861))) + -(vec3<f32>(x_865.x, x_865.z, x_865.w)));
  let x_869 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_868.x, x_868.y, x_868.z, x_869.w);
  let x_871 : vec3<f32> = u_xlat12;
  let x_872 : vec4<f32> = u_xlat2;
  u_xlat30 = dot(x_871, vec3<f32>(x_872.x, x_872.z, x_872.w));
  let x_875 : f32 = u_xlat30;
  u_xlat30 = clamp(x_875, 0.0f, 1.0f);
  let x_877 : f32 = u_xlat30;
  u_xlat30 = (-(x_877) + 1.0f);
  let x_880 : f32 = u_xlat30;
  let x_881 : f32 = u_xlat30;
  u_xlat30 = (x_880 * x_881);
  let x_883 : f32 = u_xlat30;
  let x_884 : f32 = u_xlat30;
  u_xlat30 = (x_883 * x_884);
  let x_886 : f32 = u_xlat40;
  u_xlat42 = ((-(x_886) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_892 : f32 = u_xlat40;
  let x_893 : f32 = u_xlat42;
  u_xlat40 = (x_892 * x_893);
  let x_895 : f32 = u_xlat40;
  u_xlat40 = (x_895 * 6.0f);
  let x_906 : vec4<f32> = u_xlat7;
  let x_908 : f32 = u_xlat40;
  let x_909 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_906.x, x_906.y, x_906.z), x_908);
  u_xlat7 = x_909;
  let x_911 : f32 = u_xlat7.w;
  u_xlat40 = (x_911 + -1.0f);
  let x_914 : f32 = x_48.unity_SpecCube0_HDR.w;
  let x_915 : f32 = u_xlat40;
  u_xlat40 = ((x_914 * x_915) + 1.0f);
  let x_918 : f32 = u_xlat40;
  u_xlat40 = max(x_918, 0.0f);
  let x_920 : f32 = u_xlat40;
  u_xlat40 = log2(x_920);
  let x_922 : f32 = u_xlat40;
  let x_924 : f32 = x_48.unity_SpecCube0_HDR.y;
  u_xlat40 = (x_922 * x_924);
  let x_926 : f32 = u_xlat40;
  u_xlat40 = exp2(x_926);
  let x_928 : f32 = u_xlat40;
  let x_930 : f32 = x_48.unity_SpecCube0_HDR.x;
  u_xlat40 = (x_928 * x_930);
  let x_932 : vec4<f32> = u_xlat7;
  let x_934 : f32 = u_xlat40;
  let x_936 : vec3<f32> = (vec3<f32>(x_932.x, x_932.y, x_932.z) * vec3<f32>(x_934, x_934, x_934));
  let x_937 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_936.x, x_936.y, x_936.z, x_937.w);
  let x_939 : vec3<f32> = u_xlat5;
  let x_941 : vec3<f32> = u_xlat5;
  let x_945 : vec2<f32> = ((vec2<f32>(x_939.x, x_939.x) * vec2<f32>(x_941.x, x_941.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_946 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_945.x, x_945.y, x_946.z);
  let x_949 : f32 = u_xlat8.y;
  u_xlat40 = (1.0f / x_949);
  let x_951 : f32 = u_xlat29;
  u_xlat5.x = (x_951 + -0.03999999910593032837f);
  let x_955 : f32 = u_xlat30;
  let x_957 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_955 * x_957) + 0.03999999910593032837f);
  let x_962 : f32 = u_xlat40;
  let x_964 : f32 = u_xlat5.x;
  u_xlat40 = (x_962 * x_964);
  let x_966 : f32 = u_xlat40;
  let x_968 : vec4<f32> = u_xlat7;
  let x_970 : vec3<f32> = (vec3<f32>(x_966, x_966, x_966) * vec3<f32>(x_968.x, x_968.y, x_968.z));
  let x_971 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_970.x, x_970.y, x_970.z, x_971.w);
  let x_973 : vec3<f32> = u_xlat15;
  let x_974 : vec4<f32> = u_xlat4;
  let x_977 : vec4<f32> = u_xlat7;
  u_xlat15 = ((x_973 * vec3<f32>(x_974.x, x_974.y, x_974.z)) + vec3<f32>(x_977.x, x_977.y, x_977.z));
  let x_981 : f32 = u_xlat0.x;
  let x_983 : f32 = x_48.unity_LightData.z;
  u_xlat0.x = (x_981 * x_983);
  let x_986 : vec3<f32> = u_xlat12;
  let x_988 : vec4<f32> = x_128.x_MainLightPosition;
  u_xlat40 = dot(x_986, vec3<f32>(x_988.x, x_988.y, x_988.z));
  let x_991 : f32 = u_xlat40;
  u_xlat40 = clamp(x_991, 0.0f, 1.0f);
  let x_994 : f32 = u_xlat0.x;
  let x_995 : f32 = u_xlat40;
  u_xlat0.x = (x_994 * x_995);
  let x_998 : vec3<f32> = u_xlat0;
  let x_1001 : vec4<f32> = x_128.x_MainLightColor;
  let x_1003 : vec3<f32> = (vec3<f32>(x_998.x, x_998.x, x_998.x) * vec3<f32>(x_1001.x, x_1001.y, x_1001.z));
  let x_1004 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1003.x, x_1003.y, x_1003.z, x_1004.w);
  let x_1007 : vec4<f32> = u_xlat2;
  let x_1010 : vec4<f32> = x_128.x_MainLightPosition;
  u_xlat20 = (vec3<f32>(x_1007.x, x_1007.z, x_1007.w) + vec3<f32>(x_1010.x, x_1010.y, x_1010.z));
  let x_1013 : vec3<f32> = u_xlat20;
  let x_1014 : vec3<f32> = u_xlat20;
  u_xlat0.x = dot(x_1013, x_1014);
  let x_1018 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1018, 1.17549435e-38f);
  let x_1022 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1022);
  let x_1025 : vec3<f32> = u_xlat0;
  let x_1027 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1025.x, x_1025.x, x_1025.x) * x_1027);
  let x_1029 : vec3<f32> = u_xlat12;
  let x_1030 : vec3<f32> = u_xlat20;
  u_xlat0.x = dot(x_1029, x_1030);
  let x_1034 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1034, 0.0f, 1.0f);
  let x_1038 : vec4<f32> = x_128.x_MainLightPosition;
  let x_1040 : vec3<f32> = u_xlat20;
  u_xlat40 = dot(vec3<f32>(x_1038.x, x_1038.y, x_1038.z), x_1040);
  let x_1042 : f32 = u_xlat40;
  u_xlat40 = clamp(x_1042, 0.0f, 1.0f);
  let x_1045 : f32 = u_xlat0.x;
  let x_1047 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1045 * x_1047);
  let x_1051 : f32 = u_xlat0.x;
  let x_1053 : f32 = u_xlat8.x;
  u_xlat0.x = ((x_1051 * x_1053) + 1.00001001358032226562f);
  let x_1058 : f32 = u_xlat40;
  let x_1059 : f32 = u_xlat40;
  u_xlat40 = (x_1058 * x_1059);
  let x_1062 : f32 = u_xlat0.x;
  let x_1064 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1062 * x_1064);
  let x_1067 : f32 = u_xlat40;
  u_xlat40 = max(x_1067, 0.10000000149011611938f);
  let x_1071 : f32 = u_xlat0.x;
  let x_1072 : f32 = u_xlat40;
  u_xlat0.x = (x_1071 * x_1072);
  let x_1075 : f32 = u_xlat41;
  let x_1077 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1075 * x_1077);
  let x_1080 : f32 = u_xlat17;
  let x_1082 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1080 / x_1082);
  let x_1085 : vec3<f32> = u_xlat0;
  let x_1089 : vec4<f32> = u_xlat4;
  u_xlat20 = ((vec3<f32>(x_1085.x, x_1085.x, x_1085.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + vec3<f32>(x_1089.x, x_1089.y, x_1089.z));
  let x_1092 : vec4<f32> = u_xlat7;
  let x_1094 : vec3<f32> = u_xlat20;
  let x_1095 : vec3<f32> = (vec3<f32>(x_1092.x, x_1092.y, x_1092.z) * x_1094);
  let x_1096 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1095.x, x_1095.y, x_1095.z, x_1096.w);
  let x_1099 : f32 = x_128.x_AdditionalLightsCount.x;
  let x_1101 : f32 = x_48.unity_LightData.y;
  u_xlat0.x = min(x_1099, x_1101);
  let x_1105 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1105));
  let x_1109 : f32 = u_xlat18.x;
  let x_1112 : f32 = x_246.x_AdditionalShadowFadeParams.x;
  let x_1115 : f32 = x_246.x_AdditionalShadowFadeParams.y;
  u_xlat40 = ((x_1109 * x_1112) + x_1115);
  let x_1117 : f32 = u_xlat40;
  u_xlat40 = clamp(x_1117, 0.0f, 1.0f);
  u_xlat18.x = 0.0f;
  u_xlat18.y = 0.0f;
  u_xlat18.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1129 : u32 = u_xlatu_loop_1;
    let x_1130 : u32 = u_xlatu0;
    if ((x_1129 < x_1130)) {
    } else {
      break;
    }
    let x_1133 : u32 = u_xlatu_loop_1;
    u_xlatu29 = (x_1133 >> 2u);
    let x_1136 : u32 = u_xlatu_loop_1;
    u_xlati43 = bitcast<i32>((x_1136 & 3u));
    let x_1139 : u32 = u_xlatu29;
    let x_1142 : vec4<f32> = x_48.unity_LightIndices[bitcast<i32>(x_1139)];
    let x_1152 : i32 = u_xlati43;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1157 : vec4<u32> = indexable[x_1152];
    u_xlat29 = dot(x_1142, bitcast<vec4<f32>>(x_1157));
    let x_1161 : f32 = u_xlat29;
    u_xlati29 = i32(x_1161);
    let x_1163 : vec3<f32> = vs_INTERP8;
    let x_1174 : i32 = u_xlati29;
    let x_1176 : vec4<f32> = x_1173.x_AdditionalLightsPosition[x_1174];
    let x_1179 : i32 = u_xlati29;
    let x_1181 : vec4<f32> = x_1173.x_AdditionalLightsPosition[x_1179];
    u_xlat20 = ((-(x_1163) * vec3<f32>(x_1176.w, x_1176.w, x_1176.w)) + vec3<f32>(x_1181.x, x_1181.y, x_1181.z));
    let x_1185 : vec3<f32> = u_xlat20;
    let x_1186 : vec3<f32> = u_xlat20;
    u_xlat43 = dot(x_1185, x_1186);
    let x_1188 : f32 = u_xlat43;
    u_xlat43 = max(x_1188, 0.00006103515625f);
    let x_1192 : f32 = u_xlat43;
    u_xlat9 = inverseSqrt(x_1192);
    let x_1195 : vec3<f32> = u_xlat20;
    let x_1196 : f32 = u_xlat9;
    u_xlat21 = (x_1195 * vec3<f32>(x_1196, x_1196, x_1196));
    let x_1200 : f32 = u_xlat43;
    u_xlat10.x = (1.0f / x_1200);
    let x_1203 : f32 = u_xlat43;
    let x_1204 : i32 = u_xlati29;
    let x_1206 : f32 = x_1173.x_AdditionalLightsAttenuation[x_1204].x;
    u_xlat43 = (x_1203 * x_1206);
    let x_1208 : f32 = u_xlat43;
    let x_1210 : f32 = u_xlat43;
    u_xlat43 = ((-(x_1208) * x_1210) + 1.0f);
    let x_1213 : f32 = u_xlat43;
    u_xlat43 = max(x_1213, 0.0f);
    let x_1215 : f32 = u_xlat43;
    let x_1216 : f32 = u_xlat43;
    u_xlat43 = (x_1215 * x_1216);
    let x_1218 : f32 = u_xlat43;
    let x_1220 : f32 = u_xlat10.x;
    u_xlat43 = (x_1218 * x_1220);
    let x_1222 : i32 = u_xlati29;
    let x_1224 : vec4<f32> = x_1173.x_AdditionalLightsSpotDir[x_1222];
    let x_1226 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(vec3<f32>(x_1224.x, x_1224.y, x_1224.z), x_1226);
    let x_1230 : f32 = u_xlat10.x;
    let x_1231 : i32 = u_xlati29;
    let x_1233 : f32 = x_1173.x_AdditionalLightsAttenuation[x_1231].z;
    let x_1235 : i32 = u_xlati29;
    let x_1237 : f32 = x_1173.x_AdditionalLightsAttenuation[x_1235].w;
    u_xlat10.x = ((x_1230 * x_1233) + x_1237);
    let x_1241 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1241, 0.0f, 1.0f);
    let x_1245 : f32 = u_xlat10.x;
    let x_1247 : f32 = u_xlat10.x;
    u_xlat10.x = (x_1245 * x_1247);
    let x_1250 : f32 = u_xlat43;
    let x_1252 : f32 = u_xlat10.x;
    u_xlat43 = (x_1250 * x_1252);
    let x_1256 : i32 = u_xlati29;
    let x_1258 : f32 = x_246.x_AdditionalShadowParams[x_1256].w;
    u_xlati10 = i32(x_1258);
    let x_1263 : i32 = u_xlati10;
    u_xlatb22.x = (x_1263 >= 0i);
    let x_1267 : bool = u_xlatb22.x;
    if (x_1267) {
      let x_1271 : i32 = u_xlati29;
      let x_1273 : f32 = x_246.x_AdditionalShadowParams[x_1271].z;
      u_xlatb22.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1273, x_1273, x_1273, x_1273))));
      let x_1279 : bool = u_xlatb22.x;
      if (x_1279) {
        let x_1282 : vec3<f32> = u_xlat21;
        let x_1285 : vec3<f32> = u_xlat21;
        let x_1288 : vec4<bool> = (abs(vec4<f32>(x_1282.z, x_1282.z, x_1282.y, x_1282.y)) >= abs(vec4<f32>(x_1285.x, x_1285.y, x_1285.x, x_1285.x)));
        u_xlatb22 = vec3<bool>(x_1288.x, x_1288.y, x_1288.z);
        let x_1291 : bool = u_xlatb22.y;
        let x_1293 : bool = u_xlatb22.x;
        u_xlatb22.x = (x_1291 & x_1293);
        let x_1297 : vec3<f32> = u_xlat21;
        let x_1300 : vec4<bool> = (-(vec4<f32>(x_1297.z, x_1297.y, x_1297.x, x_1297.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_1300.x, x_1300.y, x_1300.z);
        let x_1304 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1304);
        let x_1309 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1309);
        let x_1314 : bool = u_xlatb11.z;
        u_xlat34 = select(0.0f, 1.0f, x_1314);
        let x_1317 : bool = u_xlatb22.z;
        if (x_1317) {
          let x_1322 : f32 = u_xlat11.y;
          x_1318 = x_1322;
        } else {
          let x_1324 : f32 = u_xlat34;
          x_1318 = x_1324;
        }
        let x_1325 : f32 = x_1318;
        u_xlat34 = x_1325;
        let x_1328 : bool = u_xlatb22.x;
        if (x_1328) {
          let x_1333 : f32 = u_xlat11.x;
          x_1329 = x_1333;
        } else {
          let x_1335 : f32 = u_xlat34;
          x_1329 = x_1335;
        }
        let x_1336 : f32 = x_1329;
        u_xlat22 = x_1336;
        let x_1337 : i32 = u_xlati29;
        let x_1339 : f32 = x_246.x_AdditionalShadowParams[x_1337].w;
        u_xlat34 = trunc(x_1339);
        let x_1341 : f32 = u_xlat22;
        let x_1342 : f32 = u_xlat34;
        u_xlat22 = (x_1341 + x_1342);
        let x_1344 : f32 = u_xlat22;
        u_xlati10 = i32(x_1344);
      }
      let x_1346 : i32 = u_xlati10;
      u_xlati10 = (x_1346 << bitcast<u32>(2i));
      let x_1348 : vec3<f32> = vs_INTERP8;
      let x_1351 : i32 = u_xlati10;
      let x_1354 : i32 = u_xlati10;
      let x_1358 : vec4<f32> = x_246.x_AdditionalLightsWorldToShadow[((x_1351 + 1i) / 4i)][((x_1354 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1348.y, x_1348.y, x_1348.y, x_1348.y) * x_1358);
      let x_1360 : i32 = u_xlati10;
      let x_1362 : i32 = u_xlati10;
      let x_1365 : vec4<f32> = x_246.x_AdditionalLightsWorldToShadow[(x_1360 / 4i)][(x_1362 % 4i)];
      let x_1366 : vec3<f32> = vs_INTERP8;
      let x_1369 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1365 * vec4<f32>(x_1366.x, x_1366.x, x_1366.x, x_1366.x)) + x_1369);
      let x_1371 : i32 = u_xlati10;
      let x_1374 : i32 = u_xlati10;
      let x_1378 : vec4<f32> = x_246.x_AdditionalLightsWorldToShadow[((x_1371 + 2i) / 4i)][((x_1374 + 2i) % 4i)];
      let x_1379 : vec3<f32> = vs_INTERP8;
      let x_1382 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1378 * vec4<f32>(x_1379.z, x_1379.z, x_1379.z, x_1379.z)) + x_1382);
      let x_1384 : vec4<f32> = u_xlat11;
      let x_1385 : i32 = u_xlati10;
      let x_1388 : i32 = u_xlati10;
      let x_1392 : vec4<f32> = x_246.x_AdditionalLightsWorldToShadow[((x_1385 + 3i) / 4i)][((x_1388 + 3i) % 4i)];
      u_xlat10 = (x_1384 + x_1392);
      let x_1394 : vec4<f32> = u_xlat10;
      let x_1396 : vec4<f32> = u_xlat10;
      let x_1398 : vec3<f32> = (vec3<f32>(x_1394.x, x_1394.y, x_1394.z) / vec3<f32>(x_1396.w, x_1396.w, x_1396.w));
      let x_1399 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1398.x, x_1398.y, x_1398.z, x_1399.w);
      let x_1402 : vec4<f32> = u_xlat10;
      let x_1403 : vec2<f32> = vec2<f32>(x_1402.x, x_1402.y);
      let x_1405 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1403.x, x_1403.y, x_1405);
      let x_1413 : vec3<f32> = txVec1;
      let x_1415 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1413.xy, x_1413.z);
      u_xlat10.x = x_1415;
      let x_1417 : i32 = u_xlati29;
      let x_1419 : f32 = x_246.x_AdditionalShadowParams[x_1417].x;
      u_xlat22 = (1.0f + -(x_1419));
      let x_1423 : f32 = u_xlat10.x;
      let x_1424 : i32 = u_xlati29;
      let x_1426 : f32 = x_246.x_AdditionalShadowParams[x_1424].x;
      let x_1428 : f32 = u_xlat22;
      u_xlat10.x = ((x_1423 * x_1426) + x_1428);
      let x_1432 : f32 = u_xlat10.z;
      u_xlatb22.x = (0.0f >= x_1432);
      let x_1437 : f32 = u_xlat10.z;
      u_xlatb34 = (x_1437 >= 1.0f);
      let x_1439 : bool = u_xlatb34;
      let x_1441 : bool = u_xlatb22.x;
      u_xlatb22.x = (x_1439 | x_1441);
      let x_1445 : bool = u_xlatb22.x;
      if (x_1445) {
        x_1446 = 1.0f;
      } else {
        let x_1451 : f32 = u_xlat10.x;
        x_1446 = x_1451;
      }
      let x_1452 : f32 = x_1446;
      u_xlat10.x = x_1452;
    } else {
      u_xlat10.x = 1.0f;
    }
    let x_1457 : f32 = u_xlat10.x;
    u_xlat22 = (-(x_1457) + 1.0f);
    let x_1460 : f32 = u_xlat40;
    let x_1461 : f32 = u_xlat22;
    let x_1464 : f32 = u_xlat10.x;
    u_xlat10.x = ((x_1460 * x_1461) + x_1464);
    let x_1467 : f32 = u_xlat43;
    let x_1469 : f32 = u_xlat10.x;
    u_xlat43 = (x_1467 * x_1469);
    let x_1471 : vec3<f32> = u_xlat12;
    let x_1472 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(x_1471, x_1472);
    let x_1476 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1476, 0.0f, 1.0f);
    let x_1479 : f32 = u_xlat43;
    let x_1481 : f32 = u_xlat10.x;
    u_xlat43 = (x_1479 * x_1481);
    let x_1483 : f32 = u_xlat43;
    let x_1485 : i32 = u_xlati29;
    let x_1487 : vec4<f32> = x_1173.x_AdditionalLightsColor[x_1485];
    let x_1489 : vec3<f32> = (vec3<f32>(x_1483, x_1483, x_1483) * vec3<f32>(x_1487.x, x_1487.y, x_1487.z));
    let x_1490 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1489.x, x_1489.y, x_1489.z, x_1490.w);
    let x_1492 : vec3<f32> = u_xlat20;
    let x_1493 : f32 = u_xlat9;
    let x_1496 : vec4<f32> = u_xlat2;
    u_xlat20 = ((x_1492 * vec3<f32>(x_1493, x_1493, x_1493)) + vec3<f32>(x_1496.x, x_1496.z, x_1496.w));
    let x_1499 : vec3<f32> = u_xlat20;
    let x_1500 : vec3<f32> = u_xlat20;
    u_xlat29 = dot(x_1499, x_1500);
    let x_1502 : f32 = u_xlat29;
    u_xlat29 = max(x_1502, 1.17549435e-38f);
    let x_1504 : f32 = u_xlat29;
    u_xlat29 = inverseSqrt(x_1504);
    let x_1506 : f32 = u_xlat29;
    let x_1508 : vec3<f32> = u_xlat20;
    u_xlat20 = (vec3<f32>(x_1506, x_1506, x_1506) * x_1508);
    let x_1510 : vec3<f32> = u_xlat12;
    let x_1511 : vec3<f32> = u_xlat20;
    u_xlat29 = dot(x_1510, x_1511);
    let x_1513 : f32 = u_xlat29;
    u_xlat29 = clamp(x_1513, 0.0f, 1.0f);
    let x_1515 : vec3<f32> = u_xlat21;
    let x_1516 : vec3<f32> = u_xlat20;
    u_xlat43 = dot(x_1515, x_1516);
    let x_1518 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1518, 0.0f, 1.0f);
    let x_1520 : f32 = u_xlat29;
    let x_1521 : f32 = u_xlat29;
    u_xlat29 = (x_1520 * x_1521);
    let x_1523 : f32 = u_xlat29;
    let x_1525 : f32 = u_xlat8.x;
    u_xlat29 = ((x_1523 * x_1525) + 1.00001001358032226562f);
    let x_1528 : f32 = u_xlat43;
    let x_1529 : f32 = u_xlat43;
    u_xlat43 = (x_1528 * x_1529);
    let x_1531 : f32 = u_xlat29;
    let x_1532 : f32 = u_xlat29;
    u_xlat29 = (x_1531 * x_1532);
    let x_1534 : f32 = u_xlat43;
    u_xlat43 = max(x_1534, 0.10000000149011611938f);
    let x_1536 : f32 = u_xlat29;
    let x_1537 : f32 = u_xlat43;
    u_xlat29 = (x_1536 * x_1537);
    let x_1539 : f32 = u_xlat41;
    let x_1540 : f32 = u_xlat29;
    u_xlat29 = (x_1539 * x_1540);
    let x_1542 : f32 = u_xlat17;
    let x_1543 : f32 = u_xlat29;
    u_xlat29 = (x_1542 / x_1543);
    let x_1545 : f32 = u_xlat29;
    let x_1548 : vec4<f32> = u_xlat4;
    u_xlat20 = ((vec3<f32>(x_1545, x_1545, x_1545) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + vec3<f32>(x_1548.x, x_1548.y, x_1548.z));
    let x_1551 : vec3<f32> = u_xlat20;
    let x_1552 : vec4<f32> = u_xlat10;
    let x_1555 : vec3<f32> = u_xlat18;
    u_xlat18 = ((x_1551 * vec3<f32>(x_1552.x, x_1552.y, x_1552.z)) + x_1555);

    continuing {
      let x_1557 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1557 + bitcast<u32>(1i));
    }
  }
  let x_1559 : vec3<f32> = u_xlat15;
  let x_1560 : vec4<f32> = u_xlat6;
  let x_1563 : vec4<f32> = u_xlat7;
  u_xlat0 = ((x_1559 * vec3<f32>(x_1560.x, x_1560.x, x_1560.x)) + vec3<f32>(x_1563.x, x_1563.y, x_1563.z));
  let x_1566 : vec3<f32> = u_xlat18;
  let x_1567 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_1566 + x_1567);
  let x_1569 : vec4<f32> = vs_INTERP6;
  let x_1571 : vec3<f32> = u_xlat1;
  let x_1573 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1569.w, x_1569.w, x_1569.w) * x_1571) + x_1573);
  let x_1577 : f32 = u_xlat3.x;
  let x_1579 : f32 = u_xlat3.x;
  u_xlat36 = (x_1577 * -(x_1579));
  let x_1582 : f32 = u_xlat36;
  u_xlat36 = exp2(x_1582);
  let x_1584 : vec3<f32> = u_xlat0;
  let x_1587 : vec4<f32> = x_128.unity_FogColor;
  u_xlat0 = (x_1584 + -(vec3<f32>(x_1587.x, x_1587.y, x_1587.z)));
  let x_1593 : f32 = u_xlat36;
  let x_1595 : vec3<f32> = u_xlat0;
  let x_1598 : vec4<f32> = x_128.unity_FogColor;
  let x_1600 : vec3<f32> = ((vec3<f32>(x_1593, x_1593, x_1593) * x_1595) + vec3<f32>(x_1598.x, x_1598.y, x_1598.z));
  let x_1601 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1600.x, x_1600.y, x_1600.z, x_1601.w);
  let x_1603 : bool = u_xlatb14;
  let x_1604 : f32 = u_xlat37;
  SV_Target0.w = select(1.0f, x_1604, x_1603);
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


