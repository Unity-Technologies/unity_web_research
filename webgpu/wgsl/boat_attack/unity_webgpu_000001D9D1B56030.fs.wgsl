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

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu0 : u32;

var<private> u_xlati0 : i32;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat37 : f32;

var<private> u_xlatb37 : bool;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlat14 : f32;

var<private> u_xlat26 : vec2<f32>;

var<private> u_xlatb14 : bool;

var<private> u_xlat24 : f32;

var<private> u_xlat38 : f32;

var<private> u_xlat39 : f32;

var<private> u_xlat40 : f32;

var<private> u_xlat41 : f32;

var<private> u_xlat30 : f32;

var<private> u_xlat42 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu43 : u32;

var<private> u_xlati8 : i32;

var<private> u_xlat43 : f32;

var<private> u_xlati43 : i32;

@group(1) @binding(1) var<uniform> x_1216 : AdditionalLights;

var<private> u_xlat44 : f32;

var<private> u_xlat9 : f32;

var<private> u_xlat21 : vec3<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlati10 : i32;

var<private> u_xlatb22 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat34 : f32;

var<private> u_xlat22 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb34 : bool;

var<private> u_xlat36 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu40 : u32;

var<private> u_xlatb43 : bool;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_481 : f32;
  var x_520 : f32;
  var x_570 : f32;
  var x_666 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1361 : f32;
  var x_1372 : f32;
  var txVec1 : vec3<f32>;
  var x_1489 : f32;
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
  let x_539 : f32 = u_xlat4.w;
  u_xlat26.x = dpdyCoarse(x_539);
  let x_543 : f32 = u_xlat26.x;
  let x_545 : f32 = u_xlat14;
  u_xlat14 = (abs(x_543) + abs(x_545));
  let x_548 : f32 = u_xlat14;
  u_xlat14 = max(x_548, 0.00009999999747378752f);
  let x_552 : f32 = u_xlat2.x;
  let x_553 : f32 = u_xlat14;
  u_xlat2.x = (x_552 / x_553);
  let x_557 : f32 = u_xlat2.x;
  u_xlat2.x = (x_557 + 0.5f);
  let x_562 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_562, 0.0f, 1.0f);
  let x_567 : f32 = x_128.x_AlphaToMaskAvailable;
  u_xlatb14 = !((x_567 == 0.0f));
  let x_569 : bool = u_xlatb14;
  if (x_569) {
    let x_574 : f32 = u_xlat2.x;
    x_570 = x_574;
  } else {
    let x_576 : f32 = u_xlat37;
    x_570 = x_576;
  }
  let x_577 : f32 = x_570;
  u_xlat37 = x_577;
  let x_578 : f32 = u_xlat37;
  u_xlat2.x = (x_578 + -0.00009999999747378752f);
  let x_583 : f32 = u_xlat2.x;
  u_xlatb2.x = (x_583 < 0.0f);
  let x_587 : bool = u_xlatb2.x;
  if (((select(0i, 1i, x_587) * -1i) != 0i)) {
    discard;
  }
  let x_595 : vec3<f32> = u_xlat12;
  let x_596 : vec3<f32> = u_xlat18;
  u_xlat12 = (x_595 * vec3<f32>(x_596.y, x_596.y, x_596.y));
  let x_599 : vec3<f32> = u_xlat18;
  let x_601 : vec4<f32> = vs_INTERP4;
  let x_604 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_599.x, x_599.x, x_599.x) * vec3<f32>(x_601.x, x_601.y, x_601.z)) + x_604);
  let x_606 : vec3<f32> = u_xlat18;
  let x_608 : vec3<f32> = vs_INTERP9;
  let x_610 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_606.z, x_606.z, x_606.z) * x_608) + x_610);
  let x_612 : vec3<f32> = u_xlat12;
  let x_613 : vec3<f32> = u_xlat12;
  u_xlat2.x = dot(x_612, x_613);
  let x_617 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_617);
  let x_620 : vec3<f32> = u_xlat12;
  let x_621 : vec4<f32> = u_xlat2;
  let x_623 : vec3<f32> = (x_620 * vec3<f32>(x_621.x, x_621.x, x_621.x));
  let x_624 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_623.x, x_623.y, x_623.z, x_624.w);
  let x_628 : f32 = x_128.unity_OrthoParams.w;
  u_xlatb12.x = (x_628 == 0.0f);
  let x_631 : vec3<f32> = vs_INTERP8;
  let x_635 : vec3<f32> = x_128.x_WorldSpaceCameraPos;
  let x_636 : vec3<f32> = (-(x_631) + x_635);
  let x_637 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_636.x, x_637.y, x_636.y, x_636.z);
  let x_640 : vec4<f32> = u_xlat2;
  let x_642 : vec4<f32> = u_xlat2;
  u_xlat24 = dot(vec3<f32>(x_640.x, x_640.z, x_640.w), vec3<f32>(x_642.x, x_642.z, x_642.w));
  let x_645 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_645);
  let x_647 : f32 = u_xlat24;
  let x_649 : vec4<f32> = u_xlat2;
  let x_651 : vec3<f32> = (vec3<f32>(x_647, x_647, x_647) * vec3<f32>(x_649.x, x_649.z, x_649.w));
  let x_652 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_651.x, x_652.y, x_651.y, x_651.z);
  let x_656 : f32 = x_128.unity_MatrixV[0i].z;
  u_xlat4.x = x_656;
  let x_659 : f32 = x_128.unity_MatrixV[1i].z;
  u_xlat4.y = x_659;
  let x_662 : f32 = x_128.unity_MatrixV[2i].z;
  u_xlat4.z = x_662;
  let x_665 : bool = u_xlatb12.x;
  if (x_665) {
    let x_669 : vec4<f32> = u_xlat2;
    x_666 = vec3<f32>(x_669.x, x_669.z, x_669.w);
  } else {
    let x_672 : vec4<f32> = u_xlat4;
    x_666 = vec3<f32>(x_672.x, x_672.y, x_672.z);
  }
  let x_674 : vec3<f32> = x_666;
  u_xlat12 = x_674;
  let x_676 : f32 = vs_INTERP8.y;
  let x_678 : f32 = x_128.unity_MatrixV[1i].z;
  u_xlat2.x = (x_676 * x_678);
  let x_682 : f32 = x_128.unity_MatrixV[0i].z;
  let x_684 : f32 = vs_INTERP8.x;
  let x_687 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_682 * x_684) + x_687);
  let x_691 : f32 = x_128.unity_MatrixV[2i].z;
  let x_693 : f32 = vs_INTERP8.z;
  let x_696 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_691 * x_693) + x_696);
  let x_700 : f32 = u_xlat2.x;
  let x_702 : f32 = x_128.unity_MatrixV[3i].z;
  u_xlat2.x = (x_700 + x_702);
  let x_706 : f32 = u_xlat2.x;
  let x_710 : f32 = x_128.x_ProjectionParams.y;
  u_xlat2.x = (-(x_706) + -(x_710));
  let x_715 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_715, 0.0f);
  let x_719 : f32 = u_xlat2.x;
  let x_721 : f32 = x_128.unity_FogParams.x;
  u_xlat2.x = (x_719 * x_721);
  u_xlat3.w = 1.0f;
  let x_727 : vec4<f32> = x_48.unity_SHAr;
  let x_728 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_727, x_728);
  let x_733 : vec4<f32> = x_48.unity_SHAg;
  let x_734 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_733, x_734);
  let x_739 : vec4<f32> = x_48.unity_SHAb;
  let x_740 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_739, x_740);
  let x_743 : vec4<f32> = u_xlat3;
  let x_745 : vec4<f32> = u_xlat3;
  u_xlat7 = (vec4<f32>(x_743.y, x_743.z, x_743.z, x_743.x) * vec4<f32>(x_745.x, x_745.y, x_745.z, x_745.z));
  let x_750 : vec4<f32> = x_48.unity_SHBr;
  let x_751 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_750, x_751);
  let x_756 : vec4<f32> = x_48.unity_SHBg;
  let x_757 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_756, x_757);
  let x_762 : vec4<f32> = x_48.unity_SHBb;
  let x_763 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_762, x_763);
  let x_767 : f32 = u_xlat3.y;
  let x_769 : f32 = u_xlat3.y;
  u_xlat26.x = (x_767 * x_769);
  let x_773 : f32 = u_xlat3.x;
  let x_775 : f32 = u_xlat3.x;
  let x_778 : f32 = u_xlat26.x;
  u_xlat26.x = ((x_773 * x_775) + -(x_778));
  let x_784 : vec4<f32> = x_48.unity_SHC;
  let x_786 : vec2<f32> = u_xlat26;
  let x_789 : vec3<f32> = u_xlat8;
  u_xlat18 = ((vec3<f32>(x_784.x, x_784.y, x_784.z) * vec3<f32>(x_786.x, x_786.x, x_786.x)) + x_789);
  let x_791 : vec4<f32> = u_xlat4;
  let x_793 : vec3<f32> = u_xlat18;
  let x_794 : vec3<f32> = (vec3<f32>(x_791.x, x_791.y, x_791.z) + x_793);
  let x_795 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_794.x, x_794.y, x_794.z, x_795.w);
  let x_797 : vec4<f32> = u_xlat4;
  let x_799 : vec3<f32> = max(vec3<f32>(x_797.x, x_797.y, x_797.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_800 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_799.x, x_799.y, x_799.z, x_800.w);
  let x_803 : f32 = u_xlat6.x;
  u_xlat6.x = x_803;
  let x_806 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_806, 0.0f, 1.0f);
  let x_809 : f32 = u_xlat37;
  u_xlat37 = min(x_809, 1.0f);
  let x_811 : vec3<f32> = u_xlat5;
  u_xlat5 = (x_811 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_816 : f32 = u_xlat6.x;
  u_xlat26.x = (-(x_816) + 1.0f);
  let x_822 : f32 = u_xlat26.x;
  let x_824 : f32 = u_xlat26.x;
  u_xlat38 = (x_822 * x_824);
  let x_826 : f32 = u_xlat38;
  u_xlat38 = max(x_826, 0.0078125f);
  let x_830 : f32 = u_xlat38;
  let x_831 : f32 = u_xlat38;
  u_xlat39 = (x_830 * x_831);
  let x_835 : f32 = u_xlat6.x;
  u_xlat40 = (x_835 + 0.04000002145767211914f);
  let x_838 : f32 = u_xlat40;
  u_xlat40 = min(x_838, 1.0f);
  let x_841 : f32 = u_xlat38;
  u_xlat41 = ((x_841 * 4.0f) + 2.0f);
  let x_845 : f32 = vs_INTERP6.w;
  u_xlat6.x = min(x_845, 1.0f);
  let x_848 : vec3<f32> = vs_INTERP8;
  let x_850 : vec3<f32> = x_128.x_WorldSpaceCameraPos;
  u_xlat18 = (x_848 + -(x_850));
  let x_853 : vec3<f32> = u_xlat18;
  let x_854 : vec3<f32> = u_xlat18;
  u_xlat18.x = dot(x_853, x_854);
  let x_859 : f32 = u_xlat18.x;
  let x_861 : f32 = x_246.x_MainLightShadowParams.z;
  let x_864 : f32 = x_246.x_MainLightShadowParams.w;
  u_xlat30 = ((x_859 * x_861) + x_864);
  let x_866 : f32 = u_xlat30;
  u_xlat30 = clamp(x_866, 0.0f, 1.0f);
  let x_870 : f32 = u_xlat0.x;
  u_xlat42 = (-(x_870) + 1.0f);
  let x_873 : f32 = u_xlat30;
  let x_874 : f32 = u_xlat42;
  let x_877 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_873 * x_874) + x_877);
  let x_880 : vec3<f32> = u_xlat12;
  let x_882 : vec4<f32> = u_xlat3;
  u_xlat30 = dot(-(x_880), vec3<f32>(x_882.x, x_882.y, x_882.z));
  let x_885 : f32 = u_xlat30;
  let x_886 : f32 = u_xlat30;
  u_xlat30 = (x_885 + x_886);
  let x_888 : vec4<f32> = u_xlat3;
  let x_890 : f32 = u_xlat30;
  let x_894 : vec3<f32> = u_xlat12;
  let x_896 : vec3<f32> = ((vec3<f32>(x_888.x, x_888.y, x_888.z) * -(vec3<f32>(x_890, x_890, x_890))) + -(x_894));
  let x_897 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_896.x, x_896.y, x_896.z, x_897.w);
  let x_899 : vec4<f32> = u_xlat3;
  let x_901 : vec3<f32> = u_xlat12;
  u_xlat30 = dot(vec3<f32>(x_899.x, x_899.y, x_899.z), x_901);
  let x_903 : f32 = u_xlat30;
  u_xlat30 = clamp(x_903, 0.0f, 1.0f);
  let x_905 : f32 = u_xlat30;
  u_xlat30 = (-(x_905) + 1.0f);
  let x_908 : f32 = u_xlat30;
  let x_909 : f32 = u_xlat30;
  u_xlat30 = (x_908 * x_909);
  let x_911 : f32 = u_xlat30;
  let x_912 : f32 = u_xlat30;
  u_xlat30 = (x_911 * x_912);
  let x_915 : f32 = u_xlat26.x;
  u_xlat42 = ((-(x_915) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_922 : f32 = u_xlat26.x;
  let x_923 : f32 = u_xlat42;
  u_xlat26.x = (x_922 * x_923);
  let x_927 : f32 = u_xlat26.x;
  u_xlat26.x = (x_927 * 6.0f);
  let x_939 : vec4<f32> = u_xlat7;
  let x_942 : f32 = u_xlat26.x;
  let x_943 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_939.x, x_939.y, x_939.z), x_942);
  u_xlat7 = x_943;
  let x_945 : f32 = u_xlat7.w;
  u_xlat26.x = (x_945 + -1.0f);
  let x_949 : f32 = x_48.unity_SpecCube0_HDR.w;
  let x_951 : f32 = u_xlat26.x;
  u_xlat26.x = ((x_949 * x_951) + 1.0f);
  let x_956 : f32 = u_xlat26.x;
  u_xlat26.x = max(x_956, 0.0f);
  let x_960 : f32 = u_xlat26.x;
  u_xlat26.x = log2(x_960);
  let x_964 : f32 = u_xlat26.x;
  let x_966 : f32 = x_48.unity_SpecCube0_HDR.y;
  u_xlat26.x = (x_964 * x_966);
  let x_970 : f32 = u_xlat26.x;
  u_xlat26.x = exp2(x_970);
  let x_974 : f32 = u_xlat26.x;
  let x_976 : f32 = x_48.unity_SpecCube0_HDR.x;
  u_xlat26.x = (x_974 * x_976);
  let x_979 : vec4<f32> = u_xlat7;
  let x_981 : vec2<f32> = u_xlat26;
  let x_983 : vec3<f32> = (vec3<f32>(x_979.x, x_979.y, x_979.z) * vec3<f32>(x_981.x, x_981.x, x_981.x));
  let x_984 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_983.x, x_983.y, x_983.z, x_984.w);
  let x_986 : f32 = u_xlat38;
  let x_988 : f32 = u_xlat38;
  u_xlat26 = ((vec2<f32>(x_986, x_986) * vec2<f32>(x_988, x_988)) + vec2<f32>(-1.0f, 1.0f));
  let x_994 : f32 = u_xlat26.y;
  u_xlat38 = (1.0f / x_994);
  let x_996 : f32 = u_xlat40;
  u_xlat40 = (x_996 + -0.03999999910593032837f);
  let x_999 : f32 = u_xlat30;
  let x_1000 : f32 = u_xlat40;
  u_xlat40 = ((x_999 * x_1000) + 0.03999999910593032837f);
  let x_1004 : f32 = u_xlat38;
  let x_1005 : f32 = u_xlat40;
  u_xlat38 = (x_1004 * x_1005);
  let x_1007 : f32 = u_xlat38;
  let x_1009 : vec4<f32> = u_xlat7;
  let x_1011 : vec3<f32> = (vec3<f32>(x_1007, x_1007, x_1007) * vec3<f32>(x_1009.x, x_1009.y, x_1009.z));
  let x_1012 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1011.x, x_1011.y, x_1011.z, x_1012.w);
  let x_1014 : vec4<f32> = u_xlat4;
  let x_1016 : vec3<f32> = u_xlat5;
  let x_1018 : vec4<f32> = u_xlat7;
  let x_1020 : vec3<f32> = ((vec3<f32>(x_1014.x, x_1014.y, x_1014.z) * x_1016) + vec3<f32>(x_1018.x, x_1018.y, x_1018.z));
  let x_1021 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1020.x, x_1020.y, x_1020.z, x_1021.w);
  let x_1024 : f32 = u_xlat0.x;
  let x_1026 : f32 = x_48.unity_LightData.z;
  u_xlat0.x = (x_1024 * x_1026);
  let x_1029 : vec4<f32> = u_xlat3;
  let x_1032 : vec4<f32> = x_128.x_MainLightPosition;
  u_xlat38 = dot(vec3<f32>(x_1029.x, x_1029.y, x_1029.z), vec3<f32>(x_1032.x, x_1032.y, x_1032.z));
  let x_1035 : f32 = u_xlat38;
  u_xlat38 = clamp(x_1035, 0.0f, 1.0f);
  let x_1038 : f32 = u_xlat0.x;
  let x_1039 : f32 = u_xlat38;
  u_xlat0.x = (x_1038 * x_1039);
  let x_1042 : vec3<f32> = u_xlat0;
  let x_1045 : vec4<f32> = x_128.x_MainLightColor;
  let x_1047 : vec3<f32> = (vec3<f32>(x_1042.x, x_1042.x, x_1042.x) * vec3<f32>(x_1045.x, x_1045.y, x_1045.z));
  let x_1048 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1047.x, x_1047.y, x_1047.z, x_1048.w);
  let x_1050 : vec3<f32> = u_xlat12;
  let x_1052 : vec4<f32> = x_128.x_MainLightPosition;
  u_xlat8 = (x_1050 + vec3<f32>(x_1052.x, x_1052.y, x_1052.z));
  let x_1055 : vec3<f32> = u_xlat8;
  let x_1056 : vec3<f32> = u_xlat8;
  u_xlat0.x = dot(x_1055, x_1056);
  let x_1060 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1060, 1.17549435e-38f);
  let x_1064 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1064);
  let x_1067 : vec3<f32> = u_xlat0;
  let x_1069 : vec3<f32> = u_xlat8;
  u_xlat8 = (vec3<f32>(x_1067.x, x_1067.x, x_1067.x) * x_1069);
  let x_1071 : vec4<f32> = u_xlat3;
  let x_1073 : vec3<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_1071.x, x_1071.y, x_1071.z), x_1073);
  let x_1077 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1077, 0.0f, 1.0f);
  let x_1081 : vec4<f32> = x_128.x_MainLightPosition;
  let x_1083 : vec3<f32> = u_xlat8;
  u_xlat38 = dot(vec3<f32>(x_1081.x, x_1081.y, x_1081.z), x_1083);
  let x_1085 : f32 = u_xlat38;
  u_xlat38 = clamp(x_1085, 0.0f, 1.0f);
  let x_1088 : f32 = u_xlat0.x;
  let x_1090 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1088 * x_1090);
  let x_1094 : f32 = u_xlat0.x;
  let x_1096 : f32 = u_xlat26.x;
  u_xlat0.x = ((x_1094 * x_1096) + 1.00001001358032226562f);
  let x_1101 : f32 = u_xlat38;
  let x_1102 : f32 = u_xlat38;
  u_xlat38 = (x_1101 * x_1102);
  let x_1105 : f32 = u_xlat0.x;
  let x_1107 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1105 * x_1107);
  let x_1110 : f32 = u_xlat38;
  u_xlat38 = max(x_1110, 0.10000000149011611938f);
  let x_1114 : f32 = u_xlat0.x;
  let x_1115 : f32 = u_xlat38;
  u_xlat0.x = (x_1114 * x_1115);
  let x_1118 : f32 = u_xlat41;
  let x_1120 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1118 * x_1120);
  let x_1123 : f32 = u_xlat39;
  let x_1125 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1123 / x_1125);
  let x_1128 : vec3<f32> = u_xlat0;
  let x_1132 : vec3<f32> = u_xlat5;
  u_xlat8 = ((vec3<f32>(x_1128.x, x_1128.x, x_1128.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_1132);
  let x_1134 : vec4<f32> = u_xlat7;
  let x_1136 : vec3<f32> = u_xlat8;
  let x_1137 : vec3<f32> = (vec3<f32>(x_1134.x, x_1134.y, x_1134.z) * x_1136);
  let x_1138 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1137.x, x_1137.y, x_1137.z, x_1138.w);
  let x_1141 : f32 = x_128.x_AdditionalLightsCount.x;
  let x_1143 : f32 = x_48.unity_LightData.y;
  u_xlat0.x = min(x_1141, x_1143);
  let x_1147 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1147));
  let x_1151 : f32 = u_xlat18.x;
  let x_1154 : f32 = x_246.x_AdditionalShadowFadeParams.x;
  let x_1157 : f32 = x_246.x_AdditionalShadowFadeParams.y;
  u_xlat38 = ((x_1151 * x_1154) + x_1157);
  let x_1159 : f32 = u_xlat38;
  u_xlat38 = clamp(x_1159, 0.0f, 1.0f);
  u_xlat18.x = 0.0f;
  u_xlat18.y = 0.0f;
  u_xlat18.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1171 : u32 = u_xlatu_loop_1;
    let x_1172 : u32 = u_xlatu0;
    if ((x_1171 < x_1172)) {
    } else {
      break;
    }
    let x_1175 : u32 = u_xlatu_loop_1;
    u_xlatu43 = (x_1175 >> 2u);
    let x_1178 : u32 = u_xlatu_loop_1;
    u_xlati8 = bitcast<i32>((x_1178 & 3u));
    let x_1182 : u32 = u_xlatu43;
    let x_1185 : vec4<f32> = x_48.unity_LightIndices[bitcast<i32>(x_1182)];
    let x_1195 : i32 = u_xlati8;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1200 : vec4<u32> = indexable[x_1195];
    u_xlat43 = dot(x_1185, bitcast<vec4<f32>>(x_1200));
    let x_1204 : f32 = u_xlat43;
    u_xlati43 = i32(x_1204);
    let x_1206 : vec3<f32> = vs_INTERP8;
    let x_1217 : i32 = u_xlati43;
    let x_1219 : vec4<f32> = x_1216.x_AdditionalLightsPosition[x_1217];
    let x_1222 : i32 = u_xlati43;
    let x_1224 : vec4<f32> = x_1216.x_AdditionalLightsPosition[x_1222];
    u_xlat8 = ((-(x_1206) * vec3<f32>(x_1219.w, x_1219.w, x_1219.w)) + vec3<f32>(x_1224.x, x_1224.y, x_1224.z));
    let x_1228 : vec3<f32> = u_xlat8;
    let x_1229 : vec3<f32> = u_xlat8;
    u_xlat44 = dot(x_1228, x_1229);
    let x_1231 : f32 = u_xlat44;
    u_xlat44 = max(x_1231, 0.00006103515625f);
    let x_1235 : f32 = u_xlat44;
    u_xlat9 = inverseSqrt(x_1235);
    let x_1238 : vec3<f32> = u_xlat8;
    let x_1239 : f32 = u_xlat9;
    u_xlat21 = (x_1238 * vec3<f32>(x_1239, x_1239, x_1239));
    let x_1243 : f32 = u_xlat44;
    u_xlat10.x = (1.0f / x_1243);
    let x_1246 : f32 = u_xlat44;
    let x_1247 : i32 = u_xlati43;
    let x_1249 : f32 = x_1216.x_AdditionalLightsAttenuation[x_1247].x;
    u_xlat44 = (x_1246 * x_1249);
    let x_1251 : f32 = u_xlat44;
    let x_1253 : f32 = u_xlat44;
    u_xlat44 = ((-(x_1251) * x_1253) + 1.0f);
    let x_1256 : f32 = u_xlat44;
    u_xlat44 = max(x_1256, 0.0f);
    let x_1258 : f32 = u_xlat44;
    let x_1259 : f32 = u_xlat44;
    u_xlat44 = (x_1258 * x_1259);
    let x_1261 : f32 = u_xlat44;
    let x_1263 : f32 = u_xlat10.x;
    u_xlat44 = (x_1261 * x_1263);
    let x_1265 : i32 = u_xlati43;
    let x_1267 : vec4<f32> = x_1216.x_AdditionalLightsSpotDir[x_1265];
    let x_1269 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(vec3<f32>(x_1267.x, x_1267.y, x_1267.z), x_1269);
    let x_1273 : f32 = u_xlat10.x;
    let x_1274 : i32 = u_xlati43;
    let x_1276 : f32 = x_1216.x_AdditionalLightsAttenuation[x_1274].z;
    let x_1278 : i32 = u_xlati43;
    let x_1280 : f32 = x_1216.x_AdditionalLightsAttenuation[x_1278].w;
    u_xlat10.x = ((x_1273 * x_1276) + x_1280);
    let x_1284 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1284, 0.0f, 1.0f);
    let x_1288 : f32 = u_xlat10.x;
    let x_1290 : f32 = u_xlat10.x;
    u_xlat10.x = (x_1288 * x_1290);
    let x_1293 : f32 = u_xlat44;
    let x_1295 : f32 = u_xlat10.x;
    u_xlat44 = (x_1293 * x_1295);
    let x_1299 : i32 = u_xlati43;
    let x_1301 : f32 = x_246.x_AdditionalShadowParams[x_1299].w;
    u_xlati10 = i32(x_1301);
    let x_1306 : i32 = u_xlati10;
    u_xlatb22.x = (x_1306 >= 0i);
    let x_1310 : bool = u_xlatb22.x;
    if (x_1310) {
      let x_1314 : i32 = u_xlati43;
      let x_1316 : f32 = x_246.x_AdditionalShadowParams[x_1314].z;
      u_xlatb22.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1316, x_1316, x_1316, x_1316))));
      let x_1322 : bool = u_xlatb22.x;
      if (x_1322) {
        let x_1325 : vec3<f32> = u_xlat21;
        let x_1328 : vec3<f32> = u_xlat21;
        let x_1331 : vec4<bool> = (abs(vec4<f32>(x_1325.z, x_1325.z, x_1325.y, x_1325.y)) >= abs(vec4<f32>(x_1328.x, x_1328.y, x_1328.x, x_1328.x)));
        u_xlatb22 = vec3<bool>(x_1331.x, x_1331.y, x_1331.z);
        let x_1334 : bool = u_xlatb22.y;
        let x_1336 : bool = u_xlatb22.x;
        u_xlatb22.x = (x_1334 & x_1336);
        let x_1340 : vec3<f32> = u_xlat21;
        let x_1343 : vec4<bool> = (-(vec4<f32>(x_1340.z, x_1340.y, x_1340.x, x_1340.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_1343.x, x_1343.y, x_1343.z);
        let x_1347 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1347);
        let x_1352 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1352);
        let x_1357 : bool = u_xlatb11.z;
        u_xlat34 = select(0.0f, 1.0f, x_1357);
        let x_1360 : bool = u_xlatb22.z;
        if (x_1360) {
          let x_1365 : f32 = u_xlat11.y;
          x_1361 = x_1365;
        } else {
          let x_1367 : f32 = u_xlat34;
          x_1361 = x_1367;
        }
        let x_1368 : f32 = x_1361;
        u_xlat34 = x_1368;
        let x_1371 : bool = u_xlatb22.x;
        if (x_1371) {
          let x_1376 : f32 = u_xlat11.x;
          x_1372 = x_1376;
        } else {
          let x_1378 : f32 = u_xlat34;
          x_1372 = x_1378;
        }
        let x_1379 : f32 = x_1372;
        u_xlat22 = x_1379;
        let x_1380 : i32 = u_xlati43;
        let x_1382 : f32 = x_246.x_AdditionalShadowParams[x_1380].w;
        u_xlat34 = trunc(x_1382);
        let x_1384 : f32 = u_xlat22;
        let x_1385 : f32 = u_xlat34;
        u_xlat22 = (x_1384 + x_1385);
        let x_1387 : f32 = u_xlat22;
        u_xlati10 = i32(x_1387);
      }
      let x_1389 : i32 = u_xlati10;
      u_xlati10 = (x_1389 << bitcast<u32>(2i));
      let x_1391 : vec3<f32> = vs_INTERP8;
      let x_1394 : i32 = u_xlati10;
      let x_1397 : i32 = u_xlati10;
      let x_1401 : vec4<f32> = x_246.x_AdditionalLightsWorldToShadow[((x_1394 + 1i) / 4i)][((x_1397 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1391.y, x_1391.y, x_1391.y, x_1391.y) * x_1401);
      let x_1403 : i32 = u_xlati10;
      let x_1405 : i32 = u_xlati10;
      let x_1408 : vec4<f32> = x_246.x_AdditionalLightsWorldToShadow[(x_1403 / 4i)][(x_1405 % 4i)];
      let x_1409 : vec3<f32> = vs_INTERP8;
      let x_1412 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1408 * vec4<f32>(x_1409.x, x_1409.x, x_1409.x, x_1409.x)) + x_1412);
      let x_1414 : i32 = u_xlati10;
      let x_1417 : i32 = u_xlati10;
      let x_1421 : vec4<f32> = x_246.x_AdditionalLightsWorldToShadow[((x_1414 + 2i) / 4i)][((x_1417 + 2i) % 4i)];
      let x_1422 : vec3<f32> = vs_INTERP8;
      let x_1425 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1421 * vec4<f32>(x_1422.z, x_1422.z, x_1422.z, x_1422.z)) + x_1425);
      let x_1427 : vec4<f32> = u_xlat11;
      let x_1428 : i32 = u_xlati10;
      let x_1431 : i32 = u_xlati10;
      let x_1435 : vec4<f32> = x_246.x_AdditionalLightsWorldToShadow[((x_1428 + 3i) / 4i)][((x_1431 + 3i) % 4i)];
      u_xlat10 = (x_1427 + x_1435);
      let x_1437 : vec4<f32> = u_xlat10;
      let x_1439 : vec4<f32> = u_xlat10;
      let x_1441 : vec3<f32> = (vec3<f32>(x_1437.x, x_1437.y, x_1437.z) / vec3<f32>(x_1439.w, x_1439.w, x_1439.w));
      let x_1442 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1441.x, x_1441.y, x_1441.z, x_1442.w);
      let x_1445 : vec4<f32> = u_xlat10;
      let x_1446 : vec2<f32> = vec2<f32>(x_1445.x, x_1445.y);
      let x_1448 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1446.x, x_1446.y, x_1448);
      let x_1456 : vec3<f32> = txVec1;
      let x_1458 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1456.xy, x_1456.z);
      u_xlat10.x = x_1458;
      let x_1460 : i32 = u_xlati43;
      let x_1462 : f32 = x_246.x_AdditionalShadowParams[x_1460].x;
      u_xlat22 = (1.0f + -(x_1462));
      let x_1466 : f32 = u_xlat10.x;
      let x_1467 : i32 = u_xlati43;
      let x_1469 : f32 = x_246.x_AdditionalShadowParams[x_1467].x;
      let x_1471 : f32 = u_xlat22;
      u_xlat10.x = ((x_1466 * x_1469) + x_1471);
      let x_1475 : f32 = u_xlat10.z;
      u_xlatb22.x = (0.0f >= x_1475);
      let x_1480 : f32 = u_xlat10.z;
      u_xlatb34 = (x_1480 >= 1.0f);
      let x_1482 : bool = u_xlatb34;
      let x_1484 : bool = u_xlatb22.x;
      u_xlatb22.x = (x_1482 | x_1484);
      let x_1488 : bool = u_xlatb22.x;
      if (x_1488) {
        x_1489 = 1.0f;
      } else {
        let x_1494 : f32 = u_xlat10.x;
        x_1489 = x_1494;
      }
      let x_1495 : f32 = x_1489;
      u_xlat10.x = x_1495;
    } else {
      u_xlat10.x = 1.0f;
    }
    let x_1500 : f32 = u_xlat10.x;
    u_xlat22 = (-(x_1500) + 1.0f);
    let x_1503 : f32 = u_xlat38;
    let x_1504 : f32 = u_xlat22;
    let x_1507 : f32 = u_xlat10.x;
    u_xlat10.x = ((x_1503 * x_1504) + x_1507);
    let x_1510 : f32 = u_xlat44;
    let x_1512 : f32 = u_xlat10.x;
    u_xlat44 = (x_1510 * x_1512);
    let x_1514 : vec4<f32> = u_xlat3;
    let x_1516 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(vec3<f32>(x_1514.x, x_1514.y, x_1514.z), x_1516);
    let x_1520 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1520, 0.0f, 1.0f);
    let x_1523 : f32 = u_xlat44;
    let x_1525 : f32 = u_xlat10.x;
    u_xlat44 = (x_1523 * x_1525);
    let x_1527 : f32 = u_xlat44;
    let x_1529 : i32 = u_xlati43;
    let x_1531 : vec4<f32> = x_1216.x_AdditionalLightsColor[x_1529];
    let x_1533 : vec3<f32> = (vec3<f32>(x_1527, x_1527, x_1527) * vec3<f32>(x_1531.x, x_1531.y, x_1531.z));
    let x_1534 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1533.x, x_1533.y, x_1533.z, x_1534.w);
    let x_1536 : vec3<f32> = u_xlat8;
    let x_1537 : f32 = u_xlat9;
    let x_1540 : vec3<f32> = u_xlat12;
    u_xlat8 = ((x_1536 * vec3<f32>(x_1537, x_1537, x_1537)) + x_1540);
    let x_1542 : vec3<f32> = u_xlat8;
    let x_1543 : vec3<f32> = u_xlat8;
    u_xlat43 = dot(x_1542, x_1543);
    let x_1545 : f32 = u_xlat43;
    u_xlat43 = max(x_1545, 1.17549435e-38f);
    let x_1547 : f32 = u_xlat43;
    u_xlat43 = inverseSqrt(x_1547);
    let x_1549 : f32 = u_xlat43;
    let x_1551 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1549, x_1549, x_1549) * x_1551);
    let x_1553 : vec4<f32> = u_xlat3;
    let x_1555 : vec3<f32> = u_xlat8;
    u_xlat43 = dot(vec3<f32>(x_1553.x, x_1553.y, x_1553.z), x_1555);
    let x_1557 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1557, 0.0f, 1.0f);
    let x_1559 : vec3<f32> = u_xlat21;
    let x_1560 : vec3<f32> = u_xlat8;
    u_xlat8.x = dot(x_1559, x_1560);
    let x_1564 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_1564, 0.0f, 1.0f);
    let x_1567 : f32 = u_xlat43;
    let x_1568 : f32 = u_xlat43;
    u_xlat43 = (x_1567 * x_1568);
    let x_1570 : f32 = u_xlat43;
    let x_1572 : f32 = u_xlat26.x;
    u_xlat43 = ((x_1570 * x_1572) + 1.00001001358032226562f);
    let x_1576 : f32 = u_xlat8.x;
    let x_1578 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1576 * x_1578);
    let x_1581 : f32 = u_xlat43;
    let x_1582 : f32 = u_xlat43;
    u_xlat43 = (x_1581 * x_1582);
    let x_1585 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_1585, 0.10000000149011611938f);
    let x_1588 : f32 = u_xlat43;
    let x_1590 : f32 = u_xlat8.x;
    u_xlat43 = (x_1588 * x_1590);
    let x_1592 : f32 = u_xlat41;
    let x_1593 : f32 = u_xlat43;
    u_xlat43 = (x_1592 * x_1593);
    let x_1595 : f32 = u_xlat39;
    let x_1596 : f32 = u_xlat43;
    u_xlat43 = (x_1595 / x_1596);
    let x_1598 : f32 = u_xlat43;
    let x_1601 : vec3<f32> = u_xlat5;
    u_xlat8 = ((vec3<f32>(x_1598, x_1598, x_1598) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_1601);
    let x_1603 : vec3<f32> = u_xlat8;
    let x_1604 : vec4<f32> = u_xlat10;
    let x_1607 : vec3<f32> = u_xlat18;
    u_xlat18 = ((x_1603 * vec3<f32>(x_1604.x, x_1604.y, x_1604.z)) + x_1607);

    continuing {
      let x_1609 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1609 + bitcast<u32>(1i));
    }
  }
  let x_1611 : vec4<f32> = u_xlat4;
  let x_1613 : vec4<f32> = u_xlat6;
  let x_1616 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_1611.x, x_1611.y, x_1611.z) * vec3<f32>(x_1613.x, x_1613.x, x_1613.x)) + vec3<f32>(x_1616.x, x_1616.y, x_1616.z));
  let x_1619 : vec3<f32> = u_xlat18;
  let x_1620 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_1619 + x_1620);
  let x_1622 : vec4<f32> = vs_INTERP6;
  let x_1624 : vec3<f32> = u_xlat1;
  let x_1626 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1622.w, x_1622.w, x_1622.w) * x_1624) + x_1626);
  let x_1630 : f32 = u_xlat2.x;
  let x_1632 : f32 = u_xlat2.x;
  u_xlat36 = (x_1630 * -(x_1632));
  let x_1635 : f32 = u_xlat36;
  u_xlat36 = exp2(x_1635);
  let x_1637 : vec3<f32> = u_xlat0;
  let x_1640 : vec4<f32> = x_128.unity_FogColor;
  u_xlat0 = (x_1637 + -(vec3<f32>(x_1640.x, x_1640.y, x_1640.z)));
  let x_1646 : f32 = u_xlat36;
  let x_1648 : vec3<f32> = u_xlat0;
  let x_1651 : vec4<f32> = x_128.unity_FogColor;
  let x_1653 : vec3<f32> = ((vec3<f32>(x_1646, x_1646, x_1646) * x_1648) + vec3<f32>(x_1651.x, x_1651.y, x_1651.z));
  let x_1654 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1653.x, x_1653.y, x_1653.z, x_1654.w);
  let x_1656 : bool = u_xlatb14;
  let x_1657 : f32 = u_xlat37;
  SV_Target0.w = select(1.0f, x_1657, x_1656);
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


