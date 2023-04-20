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
  x_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D_TexelSize : vec4<f32>,
  /* @offset(16) */
  x_MainTex_TexelSize : vec4<f32>,
  /* @offset(32) */
  Texture2D_DE8BF47E_TexelSize : vec4<f32>,
  /* @offset(48) */
  Vector1_6E11FCEA : f32,
  /* @offset(52) */
  Vector1_A492C01C : f32,
  /* @offset(56) */
  Vector1_8B35DE98 : f32,
  /* @offset(64) */
  Texture2D_C005B064_TexelSize : vec4<f32>,
  /* @offset(80) */
  Texture2D_D7D66558_TexelSize : vec4<f32>,
  /* @offset(96) */
  Vector1_90E376AD : f32,
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

var<private> u_xlat0 : vec4<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> u_xlatb11 : vec2<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_48 : UnityPerDraw;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(4) var x_MainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainTex : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_135 : PGlobals;

var<private> u_xlat34 : f32;

var<private> vs_INTERP7 : vec3<f32>;

var<private> u_xlat35 : f32;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(7) var Texture2D_D7D66558 : texture_2d<f32>;

@group(0) @binding(14) var samplerTexture2D_D7D66558 : sampler;

@group(1) @binding(4) var<uniform> x_195 : UnityPerMaterial;

var<private> u_xlat36 : f32;

var<private> u_xlat37 : f32;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(5) var Texture2D_DE8BF47E : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_DE8BF47E : sampler;

var<private> u_xlat18 : vec3<f32>;

var<private> u_xlat12 : vec3<f32>;

var<private> u_xlat15 : vec3<f32>;

@group(0) @binding(6) var Texture2D_C005B064 : texture_2d<f32>;

@group(0) @binding(13) var samplerTexture2D_C005B064 : sampler;

@group(0) @binding(3) var x_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D : texture_2d<f32>;

@group(0) @binding(10) var sampler_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D : sampler;

var<private> u_xlat22 : f32;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat13 : f32;

var<private> u_xlat24 : f32;

var<private> vs_INTERP3 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat38 : f32;

@group(1) @binding(3) var<uniform> x_869 : LightShadows;

var<private> u_xlatb38 : bool;

var<private> u_xlatb6 : bool;

var<private> u_xlat17 : f32;

var<private> u_xlat39 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu0 : u32;

var<private> u_xlatu38 : u32;

var<private> u_xlati39 : i32;

var<private> u_xlati38 : i32;

@group(1) @binding(1) var<uniform> x_1293 : AdditionalLights;

var<private> u_xlat40 : f32;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat41 : f32;

var<private> u_xlati41 : i32;

var<private> u_xlatb42 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat43 : f32;

var<private> u_xlat21 : f32;

var<private> u_xlat42 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat33 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu37 : u32;

fn main_1() {
  var x_657 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1427 : f32;
  var x_1437 : f32;
  var txVec1 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec3<f32> = vs_INTERP8;
  let x_14 : vec3<f32> = vs_INTERP8;
  u_xlat0.x = dot(x_13, x_14);
  let x_21 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_21);
  let x_26 : f32 = u_xlat0.x;
  u_xlat0.x = (1.0f / x_26);
  let x_39 : f32 = vs_INTERP4.w;
  u_xlatb11.x = (0.0f < x_39);
  let x_53 : f32 = x_48.unity_WorldTransformParams.w;
  u_xlatb11.y = (x_53 >= 0.0f);
  let x_60 : bool = u_xlatb11.x;
  u_xlat11.x = select(-1.0f, 1.0f, x_60);
  let x_65 : bool = u_xlatb11.y;
  u_xlat11.y = select(-1.0f, 1.0f, x_65);
  let x_69 : f32 = u_xlat11.y;
  let x_71 : f32 = u_xlat11.x;
  u_xlat11.x = (x_69 * x_71);
  let x_75 : vec4<f32> = vs_INTERP4;
  let x_77 : vec3<f32> = vs_INTERP8;
  let x_79 : vec3<f32> = (vec3<f32>(x_75.y, x_75.z, x_75.x) * vec3<f32>(x_77.z, x_77.x, x_77.y));
  let x_80 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_79.x, x_79.y, x_79.z, x_80.w);
  let x_82 : vec3<f32> = vs_INTERP8;
  let x_84 : vec4<f32> = vs_INTERP4;
  let x_87 : vec4<f32> = u_xlat1;
  let x_90 : vec3<f32> = ((vec3<f32>(x_82.y, x_82.z, x_82.x) * vec3<f32>(x_84.z, x_84.x, x_84.y)) + -(vec3<f32>(x_87.x, x_87.y, x_87.z)));
  let x_91 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_90.x, x_90.y, x_90.z, x_91.w);
  let x_93 : vec3<f32> = u_xlat11;
  let x_95 : vec4<f32> = u_xlat1;
  let x_97 : vec3<f32> = (vec3<f32>(x_93.x, x_93.x, x_93.x) * vec3<f32>(x_95.x, x_95.y, x_95.z));
  let x_98 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_98.x, x_97.x, x_97.y, x_97.z);
  let x_100 : vec4<f32> = u_xlat0;
  let x_102 : vec3<f32> = vs_INTERP8;
  let x_103 : vec3<f32> = (vec3<f32>(x_100.x, x_100.x, x_100.x) * x_102);
  let x_104 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_103.x, x_103.y, x_103.z, x_104.w);
  let x_107 : vec4<f32> = u_xlat0;
  let x_109 : vec4<f32> = vs_INTERP4;
  u_xlat2 = (vec3<f32>(x_107.x, x_107.x, x_107.x) * vec3<f32>(x_109.x, x_109.y, x_109.z));
  let x_113 : vec4<f32> = u_xlat0;
  let x_115 : vec4<f32> = u_xlat0;
  u_xlat3 = (vec3<f32>(x_113.y, x_113.z, x_113.w) * vec3<f32>(x_115.x, x_115.x, x_115.x));
  let x_131 : vec4<f32> = vs_INTERP5;
  let x_138 : f32 = x_135.x_GlobalMipBias.x;
  let x_139 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_131.x, x_131.y), x_138);
  u_xlat4 = x_139;
  let x_141 : f32 = u_xlat4.w;
  u_xlat0.x = (x_141 + -0.5f);
  let x_147 : f32 = u_xlat0.x;
  let x_152 : f32 = vs_INTERP7.y;
  u_xlat34 = ((x_147 * 4.0f) + x_152);
  let x_154 : f32 = u_xlat34;
  u_xlat34 = (x_154 * 0.33000001311302185059f);
  let x_159 : f32 = vs_INTERP7.y;
  u_xlat35 = (x_159 + 1.0f);
  let x_161 : f32 = u_xlat35;
  u_xlat35 = ((x_161 * -1.33333337306976318359f) + 1.0f);
  let x_165 : f32 = u_xlat34;
  let x_166 : f32 = u_xlat35;
  u_xlat34 = max(x_165, x_166);
  let x_168 : f32 = u_xlat34;
  u_xlat1.w = max(x_168, 0.10000000149011611938f);
  let x_173 : vec4<f32> = vs_INTERP5;
  let x_176 : vec2<f32> = (vec2<f32>(x_173.x, x_173.y) * vec2<f32>(4.0f, 4.0f));
  let x_177 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_176.x, x_176.y, x_177.z);
  let x_185 : vec3<f32> = u_xlat5;
  let x_188 : f32 = x_135.x_GlobalMipBias.x;
  let x_189 : vec4<f32> = textureSampleBias(Texture2D_D7D66558, samplerTexture2D_D7D66558, vec2<f32>(x_185.x, x_185.y), x_188);
  let x_190 : vec3<f32> = vec3<f32>(x_189.x, x_189.y, x_189.z);
  let x_191 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_190.x, x_190.y, x_190.z, x_191.w);
  let x_198 : f32 = x_195.Vector1_8B35DE98;
  u_xlat35 = ((-(x_198) * 0.01111099962145090103f) + 0.94999998807907104492f);
  let x_207 : f32 = x_195.Vector1_A492C01C;
  u_xlat36 = (x_207 + -10.0f);
  let x_210 : f32 = u_xlat36;
  let x_213 : f32 = vs_INTERP7.y;
  u_xlat36 = (-(x_210) + x_213);
  let x_215 : f32 = u_xlat36;
  u_xlat36 = (x_215 * 0.05000000074505805969f);
  let x_218 : f32 = u_xlat36;
  u_xlat36 = clamp(x_218, 0.0f, 1.0f);
  let x_221 : f32 = u_xlat36;
  u_xlat37 = ((x_221 * -2.0f) + 3.0f);
  let x_226 : f32 = u_xlat36;
  let x_227 : f32 = u_xlat36;
  u_xlat36 = (x_226 * x_227);
  let x_229 : f32 = u_xlat36;
  let x_230 : f32 = u_xlat37;
  u_xlat36 = (x_229 * x_230);
  let x_238 : vec4<f32> = vs_INTERP5;
  let x_241 : f32 = x_135.x_GlobalMipBias.x;
  let x_242 : vec4<f32> = textureSampleBias(Texture2D_DE8BF47E, samplerTexture2D_DE8BF47E, vec2<f32>(x_238.x, x_238.y), x_241);
  u_xlat7 = x_242;
  let x_244 : vec4<f32> = u_xlat7;
  u_xlat18 = ((vec3<f32>(x_244.w, x_244.y, x_244.z) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_251 : vec3<f32> = u_xlat3;
  let x_252 : vec3<f32> = u_xlat18;
  u_xlat3 = (x_251 * vec3<f32>(x_252.y, x_252.y, x_252.y));
  let x_255 : vec3<f32> = u_xlat18;
  let x_257 : vec3<f32> = u_xlat2;
  let x_259 : vec3<f32> = u_xlat3;
  u_xlat2 = ((vec3<f32>(x_255.x, x_255.x, x_255.x) * x_257) + x_259);
  let x_261 : vec3<f32> = u_xlat18;
  let x_263 : vec4<f32> = u_xlat1;
  let x_266 : vec3<f32> = u_xlat2;
  let x_267 : vec3<f32> = ((vec3<f32>(x_261.z, x_261.z, x_261.z) * vec3<f32>(x_263.x, x_263.y, x_263.z)) + x_266);
  let x_268 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_267.x, x_267.y, x_267.z, x_268.w);
  let x_270 : vec4<f32> = u_xlat1;
  let x_272 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_270.x, x_270.y, x_270.z), vec3<f32>(x_272.x, x_272.y, x_272.z));
  let x_277 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_277, 1.17549435e-38f);
  let x_282 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_282);
  let x_286 : f32 = u_xlat1.x;
  let x_288 : f32 = u_xlat1.y;
  u_xlat1.x = (x_286 * x_288);
  let x_291 : f32 = u_xlat36;
  let x_293 : f32 = u_xlat1.x;
  let x_295 : f32 = u_xlat35;
  u_xlat1.x = ((x_291 * x_293) + -(x_295));
  let x_300 : f32 = u_xlat1.x;
  u_xlat1.x = (x_300 * 10.0f);
  let x_305 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_305, 0.0f, 1.0f);
  let x_310 : f32 = u_xlat1.x;
  u_xlat12.x = ((x_310 * -2.0f) + 3.0f);
  let x_315 : f32 = u_xlat1.x;
  let x_317 : f32 = u_xlat1.x;
  u_xlat1.x = (x_315 * x_317);
  let x_321 : f32 = u_xlat1.x;
  let x_323 : f32 = u_xlat12.x;
  u_xlat1.x = (x_321 * x_323);
  let x_326 : vec4<f32> = u_xlat1;
  let x_329 : vec2<f32> = min(vec2<f32>(x_326.x, x_326.w), vec2<f32>(1.0f, 1.0f));
  let x_330 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_329.x, x_330.y, x_330.z, x_329.y);
  let x_333 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_333) + 1.0f);
  let x_337 : vec4<f32> = u_xlat4;
  let x_339 : vec4<f32> = u_xlat6;
  u_xlat2 = (vec3<f32>(x_337.x, x_337.y, x_337.z) + -(vec3<f32>(x_339.x, x_339.y, x_339.z)));
  let x_343 : vec4<f32> = u_xlat1;
  let x_345 : vec3<f32> = u_xlat2;
  let x_347 : vec4<f32> = u_xlat6;
  u_xlat2 = ((vec3<f32>(x_343.x, x_343.x, x_343.x) * x_345) + vec3<f32>(x_347.x, x_347.y, x_347.z));
  let x_350 : vec4<f32> = u_xlat1;
  let x_352 : vec3<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_350.w, x_350.w, x_350.w) * x_352);
  let x_360 : vec3<f32> = u_xlat5;
  let x_363 : f32 = x_135.x_GlobalMipBias.x;
  let x_364 : vec4<f32> = textureSampleBias(Texture2D_C005B064, samplerTexture2D_C005B064, vec2<f32>(x_360.x, x_360.y), x_363);
  u_xlat15 = vec3<f32>(x_364.x, x_364.y, x_364.w);
  let x_367 : f32 = u_xlat15.x;
  let x_369 : f32 = u_xlat15.z;
  u_xlat15.x = (x_367 * x_369);
  let x_372 : vec3<f32> = u_xlat15;
  let x_377 : vec2<f32> = ((vec2<f32>(x_372.x, x_372.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_378 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_377.x, x_377.y, x_378.z);
  let x_380 : vec3<f32> = u_xlat5;
  let x_382 : vec3<f32> = u_xlat5;
  u_xlat12.x = dot(vec2<f32>(x_380.x, x_380.y), vec2<f32>(x_382.x, x_382.y));
  let x_387 : f32 = u_xlat12.x;
  u_xlat12.x = min(x_387, 1.0f);
  let x_391 : f32 = u_xlat12.x;
  u_xlat12.x = (-(x_391) + 1.0f);
  let x_396 : f32 = u_xlat12.x;
  u_xlat12.x = sqrt(x_396);
  let x_400 : f32 = u_xlat12.x;
  u_xlat5.z = max(x_400, 0.0000000000000001f);
  let x_406 : vec4<f32> = x_48.unity_ObjectToWorld[0i];
  let x_409 : vec4<f32> = x_48.unity_ObjectToWorld[0i];
  u_xlat12.x = dot(vec3<f32>(x_406.x, x_406.y, x_406.z), vec3<f32>(x_409.x, x_409.y, x_409.z));
  let x_414 : f32 = u_xlat12.x;
  u_xlat6.x = sqrt(x_414);
  let x_419 : vec4<f32> = x_48.unity_ObjectToWorld[1i];
  let x_422 : vec4<f32> = x_48.unity_ObjectToWorld[1i];
  u_xlat12.x = dot(vec3<f32>(x_419.x, x_419.y, x_419.z), vec3<f32>(x_422.x, x_422.y, x_422.z));
  let x_427 : f32 = u_xlat12.x;
  u_xlat6.y = sqrt(x_427);
  let x_432 : vec4<f32> = x_48.unity_ObjectToWorld[2i];
  let x_435 : vec4<f32> = x_48.unity_ObjectToWorld[2i];
  u_xlat12.x = dot(vec3<f32>(x_432.x, x_432.y, x_432.z), vec3<f32>(x_435.x, x_435.y, x_435.z));
  let x_440 : f32 = u_xlat12.x;
  u_xlat6.z = sqrt(x_440);
  let x_443 : vec4<f32> = u_xlat6;
  let x_445 : vec4<f32> = u_xlat6;
  u_xlat12.x = dot(vec3<f32>(x_443.x, x_443.y, x_443.z), vec3<f32>(x_445.x, x_445.y, x_445.z));
  let x_450 : f32 = u_xlat12.x;
  u_xlat12.x = sqrt(x_450);
  let x_454 : f32 = u_xlat12.x;
  let x_457 : f32 = x_195.Vector1_90E376AD;
  u_xlat12.x = (x_454 * x_457);
  let x_461 : f32 = u_xlat12.x;
  u_xlat12.x = (x_461 * 30.0f);
  let x_465 : vec3<f32> = u_xlat12;
  let x_467 : vec4<f32> = vs_INTERP5;
  let x_469 : vec2<f32> = (vec2<f32>(x_465.x, x_465.x) * vec2<f32>(x_467.x, x_467.y));
  let x_470 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_469.x, x_469.y, x_470.z);
  let x_477 : vec3<f32> = u_xlat12;
  let x_480 : f32 = x_135.x_GlobalMipBias.x;
  let x_481 : vec4<f32> = textureSampleBias(x_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D, sampler_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D, vec2<f32>(x_477.x, x_477.y), x_480);
  u_xlat15 = vec3<f32>(x_481.x, x_481.y, x_481.w);
  let x_484 : f32 = u_xlat15.x;
  let x_486 : f32 = u_xlat15.z;
  u_xlat15.x = (x_484 * x_486);
  let x_489 : vec3<f32> = u_xlat15;
  let x_492 : vec2<f32> = ((vec2<f32>(x_489.x, x_489.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_493 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_492.x, x_492.y, x_493.z);
  let x_495 : vec3<f32> = u_xlat12;
  let x_497 : vec3<f32> = u_xlat12;
  u_xlat35 = dot(vec2<f32>(x_495.x, x_495.y), vec2<f32>(x_497.x, x_497.y));
  let x_500 : f32 = u_xlat35;
  u_xlat35 = min(x_500, 1.0f);
  let x_502 : f32 = u_xlat35;
  u_xlat35 = (-(x_502) + 1.0f);
  let x_505 : f32 = u_xlat35;
  u_xlat35 = sqrt(x_505);
  let x_507 : f32 = u_xlat35;
  u_xlat35 = max(x_507, 0.0000000000000001f);
  let x_509 : vec3<f32> = u_xlat12;
  let x_511 : vec3<f32> = u_xlat18;
  let x_513 : vec2<f32> = (vec2<f32>(x_509.x, x_509.y) + vec2<f32>(x_511.x, x_511.y));
  let x_514 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_513.x, x_513.y, x_514.z, x_514.w);
  let x_516 : f32 = u_xlat35;
  let x_518 : f32 = u_xlat18.z;
  u_xlat6.z = (x_516 * x_518);
  let x_521 : vec4<f32> = u_xlat6;
  let x_523 : vec4<f32> = u_xlat6;
  u_xlat12.x = dot(vec3<f32>(x_521.x, x_521.y, x_521.z), vec3<f32>(x_523.x, x_523.y, x_523.z));
  let x_528 : f32 = u_xlat12.x;
  u_xlat12.x = max(x_528, 0.00006103515625f);
  let x_533 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_533);
  let x_536 : vec4<f32> = u_xlat6;
  let x_538 : vec3<f32> = u_xlat12;
  let x_541 : vec3<f32> = u_xlat5;
  u_xlat15 = ((vec3<f32>(x_536.x, x_536.y, x_536.z) * vec3<f32>(x_538.x, x_538.x, x_538.x)) + -(x_541));
  let x_544 : vec4<f32> = u_xlat1;
  let x_546 : vec3<f32> = u_xlat15;
  let x_548 : vec3<f32> = u_xlat5;
  let x_549 : vec3<f32> = ((vec3<f32>(x_544.x, x_544.x, x_544.x) * x_546) + x_548);
  let x_550 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_550.x, x_549.x, x_549.y, x_549.z);
  let x_553 : f32 = u_xlat0.x;
  u_xlat0.x = (-(abs(x_553)) + 1.0f);
  let x_558 : vec4<f32> = u_xlat0;
  let x_559 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_558 * vec4<f32>(x_559.x, x_559.z, x_559.z, x_559.z));
  let x_563 : f32 = u_xlat0.x;
  let x_565 : f32 = x_195.Vector1_6E11FCEA;
  u_xlat0.x = (x_563 * x_565);
  let x_569 : f32 = u_xlat1.x;
  let x_571 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_569 * x_571) + -0.85000002384185791016f);
  let x_577 : f32 = u_xlat1.w;
  let x_579 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_577 * x_579) + 0.85000002384185791016f);
  let x_585 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_585, 0.0f, 1.0f);
  let x_588 : vec4<f32> = u_xlat4;
  let x_590 : vec4<f32> = vs_INTERP4;
  let x_593 : vec4<f32> = u_xlat0;
  u_xlat11 = ((vec3<f32>(x_588.y, x_588.y, x_588.y) * vec3<f32>(x_590.x, x_590.y, x_590.z)) + vec3<f32>(x_593.y, x_593.z, x_593.w));
  let x_596 : vec4<f32> = u_xlat4;
  let x_598 : vec3<f32> = vs_INTERP8;
  let x_600 : vec3<f32> = u_xlat11;
  u_xlat11 = ((vec3<f32>(x_596.w, x_596.w, x_596.w) * x_598) + x_600);
  let x_602 : vec3<f32> = u_xlat11;
  let x_603 : vec3<f32> = u_xlat11;
  u_xlat1.x = dot(x_602, x_603);
  let x_607 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_607);
  let x_610 : vec3<f32> = u_xlat11;
  let x_611 : vec4<f32> = u_xlat1;
  let x_613 : vec3<f32> = (x_610 * vec3<f32>(x_611.x, x_611.x, x_611.x));
  let x_614 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_613.x, x_613.y, x_613.z, x_614.w);
  let x_618 : f32 = x_135.unity_OrthoParams.w;
  u_xlatb11.x = (x_618 == 0.0f);
  let x_621 : vec3<f32> = vs_INTERP7;
  let x_625 : vec3<f32> = x_135.x_WorldSpaceCameraPos;
  let x_626 : vec3<f32> = (-(x_621) + x_625);
  let x_627 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_626.x, x_626.y, x_626.z, x_627.w);
  let x_630 : vec4<f32> = u_xlat1;
  let x_632 : vec4<f32> = u_xlat1;
  u_xlat22 = dot(vec3<f32>(x_630.x, x_630.y, x_630.z), vec3<f32>(x_632.x, x_632.y, x_632.z));
  let x_635 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_635);
  let x_637 : f32 = u_xlat22;
  let x_639 : vec4<f32> = u_xlat1;
  let x_641 : vec3<f32> = (vec3<f32>(x_637, x_637, x_637) * vec3<f32>(x_639.x, x_639.y, x_639.z));
  let x_642 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_641.x, x_641.y, x_641.z, x_642.w);
  let x_646 : f32 = x_135.unity_MatrixV[0i].z;
  u_xlat5.x = x_646;
  let x_649 : f32 = x_135.unity_MatrixV[1i].z;
  u_xlat5.y = x_649;
  let x_652 : f32 = x_135.unity_MatrixV[2i].z;
  u_xlat5.z = x_652;
  let x_655 : bool = u_xlatb11.x;
  if (x_655) {
    let x_660 : vec4<f32> = u_xlat1;
    x_657 = vec3<f32>(x_660.x, x_660.y, x_660.z);
  } else {
    let x_663 : vec3<f32> = u_xlat5;
    x_657 = x_663;
  }
  let x_664 : vec3<f32> = x_657;
  u_xlat11 = x_664;
  let x_666 : f32 = vs_INTERP7.y;
  let x_668 : f32 = x_135.unity_MatrixV[1i].z;
  u_xlat1.x = (x_666 * x_668);
  let x_672 : f32 = x_135.unity_MatrixV[0i].z;
  let x_674 : f32 = vs_INTERP7.x;
  let x_677 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_672 * x_674) + x_677);
  let x_681 : f32 = x_135.unity_MatrixV[2i].z;
  let x_683 : f32 = vs_INTERP7.z;
  let x_686 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_681 * x_683) + x_686);
  let x_690 : f32 = u_xlat1.x;
  let x_692 : f32 = x_135.unity_MatrixV[3i].z;
  u_xlat1.x = (x_690 + x_692);
  let x_696 : f32 = u_xlat1.x;
  let x_699 : f32 = x_135.x_ProjectionParams.y;
  u_xlat1.x = (-(x_696) + -(x_699));
  let x_704 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_704, 0.0f);
  let x_708 : f32 = u_xlat1.x;
  let x_711 : f32 = x_135.unity_FogParams.x;
  u_xlat1.x = (x_708 * x_711);
  u_xlat4.w = 1.0f;
  let x_717 : vec4<f32> = x_48.unity_SHAr;
  let x_718 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_717, x_718);
  let x_723 : vec4<f32> = x_48.unity_SHAg;
  let x_724 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_723, x_724);
  let x_729 : vec4<f32> = x_48.unity_SHAb;
  let x_730 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_729, x_730);
  let x_733 : vec4<f32> = u_xlat4;
  let x_735 : vec4<f32> = u_xlat4;
  u_xlat6 = (vec4<f32>(x_733.y, x_733.z, x_733.z, x_733.x) * vec4<f32>(x_735.x, x_735.y, x_735.z, x_735.z));
  let x_741 : vec4<f32> = x_48.unity_SHBr;
  let x_742 : vec4<f32> = u_xlat6;
  u_xlat8.x = dot(x_741, x_742);
  let x_747 : vec4<f32> = x_48.unity_SHBg;
  let x_748 : vec4<f32> = u_xlat6;
  u_xlat8.y = dot(x_747, x_748);
  let x_753 : vec4<f32> = x_48.unity_SHBb;
  let x_754 : vec4<f32> = u_xlat6;
  u_xlat8.z = dot(x_753, x_754);
  let x_758 : f32 = u_xlat4.y;
  let x_760 : f32 = u_xlat4.y;
  u_xlat12.x = (x_758 * x_760);
  let x_764 : f32 = u_xlat4.x;
  let x_766 : f32 = u_xlat4.x;
  let x_769 : f32 = u_xlat12.x;
  u_xlat12.x = ((x_764 * x_766) + -(x_769));
  let x_775 : vec4<f32> = x_48.unity_SHC;
  let x_777 : vec3<f32> = u_xlat12;
  let x_780 : vec3<f32> = u_xlat8;
  let x_781 : vec3<f32> = ((vec3<f32>(x_775.x, x_775.y, x_775.z) * vec3<f32>(x_777.x, x_777.x, x_777.x)) + x_780);
  let x_782 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_781.x, x_781.y, x_781.z, x_782.w);
  let x_784 : vec3<f32> = u_xlat5;
  let x_785 : vec4<f32> = u_xlat6;
  u_xlat5 = (x_784 + vec3<f32>(x_785.x, x_785.y, x_785.z));
  let x_788 : vec3<f32> = u_xlat5;
  u_xlat5 = max(x_788, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_791 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_791 * vec3<f32>(0.86399996280670166016f, 0.86399996280670166016f, 0.86399996280670166016f));
  let x_795 : vec4<f32> = u_xlat1;
  let x_797 : vec3<f32> = u_xlat2;
  u_xlat12 = ((vec3<f32>(x_795.w, x_795.w, x_795.w) * x_797) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_802 : vec3<f32> = u_xlat12;
  u_xlat12 = ((x_802 * vec3<f32>(0.10000000149011611938f, 0.10000000149011611938f, 0.10000000149011611938f)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_809 : f32 = u_xlat0.x;
  u_xlat2.x = (-(x_809) + 1.0f);
  let x_815 : f32 = u_xlat2.x;
  let x_817 : f32 = u_xlat2.x;
  u_xlat13 = (x_815 * x_817);
  let x_819 : f32 = u_xlat13;
  u_xlat13 = max(x_819, 0.0078125f);
  let x_823 : f32 = u_xlat13;
  let x_824 : f32 = u_xlat13;
  u_xlat24 = (x_823 * x_824);
  let x_827 : f32 = u_xlat0.x;
  u_xlat0.x = (x_827 + 0.13600003719329833984f);
  let x_832 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_832, 1.0f);
  let x_835 : f32 = u_xlat13;
  u_xlat35 = ((x_835 * 4.0f) + 2.0f);
  let x_839 : f32 = u_xlat7.x;
  u_xlat36 = min(x_839, 1.0f);
  let x_843 : vec4<f32> = vs_INTERP3;
  let x_844 : vec2<f32> = vec2<f32>(x_843.x, x_843.y);
  let x_846 : f32 = vs_INTERP3.z;
  txVec0 = vec3<f32>(x_844.x, x_844.y, x_846);
  let x_858 : vec3<f32> = txVec0;
  let x_860 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_858.xy, x_858.z);
  u_xlat37 = x_860;
  let x_871 : f32 = x_869.x_MainLightShadowParams.x;
  u_xlat38 = (-(x_871) + 1.0f);
  let x_874 : f32 = u_xlat37;
  let x_876 : f32 = x_869.x_MainLightShadowParams.x;
  let x_878 : f32 = u_xlat38;
  u_xlat37 = ((x_874 * x_876) + x_878);
  let x_882 : f32 = vs_INTERP3.z;
  u_xlatb38 = (0.0f >= x_882);
  let x_886 : f32 = vs_INTERP3.z;
  u_xlatb6 = (x_886 >= 1.0f);
  let x_888 : bool = u_xlatb38;
  let x_889 : bool = u_xlatb6;
  u_xlatb38 = (x_888 | x_889);
  let x_891 : bool = u_xlatb38;
  let x_892 : f32 = u_xlat37;
  u_xlat37 = select(x_892, 1.0f, x_891);
  let x_894 : vec3<f32> = vs_INTERP7;
  let x_896 : vec3<f32> = x_135.x_WorldSpaceCameraPos;
  let x_898 : vec3<f32> = (x_894 + -(x_896));
  let x_899 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_898.x, x_898.y, x_898.z, x_899.w);
  let x_901 : vec4<f32> = u_xlat6;
  let x_903 : vec4<f32> = u_xlat6;
  u_xlat38 = dot(vec3<f32>(x_901.x, x_901.y, x_901.z), vec3<f32>(x_903.x, x_903.y, x_903.z));
  let x_906 : f32 = u_xlat38;
  let x_908 : f32 = x_869.x_MainLightShadowParams.z;
  let x_911 : f32 = x_869.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_906 * x_908) + x_911);
  let x_915 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_915, 0.0f, 1.0f);
  let x_919 : f32 = u_xlat37;
  u_xlat17 = (-(x_919) + 1.0f);
  let x_923 : f32 = u_xlat6.x;
  let x_924 : f32 = u_xlat17;
  let x_926 : f32 = u_xlat37;
  u_xlat37 = ((x_923 * x_924) + x_926);
  let x_928 : vec3<f32> = u_xlat11;
  let x_930 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(-(x_928), vec3<f32>(x_930.x, x_930.y, x_930.z));
  let x_935 : f32 = u_xlat6.x;
  let x_937 : f32 = u_xlat6.x;
  u_xlat6.x = (x_935 + x_937);
  let x_940 : vec4<f32> = u_xlat4;
  let x_942 : vec4<f32> = u_xlat6;
  let x_946 : vec3<f32> = u_xlat11;
  let x_948 : vec3<f32> = ((vec3<f32>(x_940.x, x_940.y, x_940.z) * -(vec3<f32>(x_942.x, x_942.x, x_942.x))) + -(x_946));
  let x_949 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_948.x, x_948.y, x_948.z, x_949.w);
  let x_952 : vec4<f32> = u_xlat4;
  let x_954 : vec3<f32> = u_xlat11;
  u_xlat39 = dot(vec3<f32>(x_952.x, x_952.y, x_952.z), x_954);
  let x_956 : f32 = u_xlat39;
  u_xlat39 = clamp(x_956, 0.0f, 1.0f);
  let x_958 : f32 = u_xlat39;
  u_xlat39 = (-(x_958) + 1.0f);
  let x_961 : f32 = u_xlat39;
  let x_962 : f32 = u_xlat39;
  u_xlat39 = (x_961 * x_962);
  let x_964 : f32 = u_xlat39;
  let x_965 : f32 = u_xlat39;
  u_xlat39 = (x_964 * x_965);
  let x_968 : f32 = u_xlat2.x;
  u_xlat7.x = ((-(x_968) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_976 : f32 = u_xlat2.x;
  let x_978 : f32 = u_xlat7.x;
  u_xlat2.x = (x_976 * x_978);
  let x_982 : f32 = u_xlat2.x;
  u_xlat2.x = (x_982 * 6.0f);
  let x_994 : vec4<f32> = u_xlat6;
  let x_997 : f32 = u_xlat2.x;
  let x_998 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_994.x, x_994.y, x_994.z), x_997);
  u_xlat7 = x_998;
  let x_1000 : f32 = u_xlat7.w;
  u_xlat2.x = (x_1000 + -1.0f);
  let x_1004 : f32 = x_48.unity_SpecCube0_HDR.w;
  let x_1006 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1004 * x_1006) + 1.0f);
  let x_1011 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_1011, 0.0f);
  let x_1015 : f32 = u_xlat2.x;
  u_xlat2.x = log2(x_1015);
  let x_1019 : f32 = u_xlat2.x;
  let x_1021 : f32 = x_48.unity_SpecCube0_HDR.y;
  u_xlat2.x = (x_1019 * x_1021);
  let x_1025 : f32 = u_xlat2.x;
  u_xlat2.x = exp2(x_1025);
  let x_1029 : f32 = u_xlat2.x;
  let x_1031 : f32 = x_48.unity_SpecCube0_HDR.x;
  u_xlat2.x = (x_1029 * x_1031);
  let x_1034 : vec4<f32> = u_xlat7;
  let x_1036 : vec3<f32> = u_xlat2;
  let x_1038 : vec3<f32> = (vec3<f32>(x_1034.x, x_1034.y, x_1034.z) * vec3<f32>(x_1036.x, x_1036.x, x_1036.x));
  let x_1039 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1038.x, x_1038.y, x_1038.z, x_1039.w);
  let x_1041 : f32 = u_xlat13;
  let x_1043 : f32 = u_xlat13;
  let x_1047 : vec2<f32> = ((vec2<f32>(x_1041, x_1041) * vec2<f32>(x_1043, x_1043)) + vec2<f32>(-1.0f, 1.0f));
  let x_1048 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_1047.x, x_1047.y, x_1048.z);
  let x_1051 : f32 = u_xlat2.y;
  u_xlat13 = (1.0f / x_1051);
  let x_1053 : vec3<f32> = u_xlat12;
  let x_1055 : vec4<f32> = u_xlat0;
  let x_1057 : vec3<f32> = (-(x_1053) + vec3<f32>(x_1055.x, x_1055.x, x_1055.x));
  let x_1058 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1057.x, x_1057.y, x_1057.z, x_1058.w);
  let x_1060 : f32 = u_xlat39;
  let x_1062 : vec4<f32> = u_xlat7;
  let x_1065 : vec3<f32> = u_xlat12;
  let x_1066 : vec3<f32> = ((vec3<f32>(x_1060, x_1060, x_1060) * vec3<f32>(x_1062.x, x_1062.y, x_1062.z)) + x_1065);
  let x_1067 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1066.x, x_1066.y, x_1066.z, x_1067.w);
  let x_1069 : f32 = u_xlat13;
  let x_1071 : vec4<f32> = u_xlat7;
  let x_1073 : vec3<f32> = (vec3<f32>(x_1069, x_1069, x_1069) * vec3<f32>(x_1071.x, x_1071.y, x_1071.z));
  let x_1074 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1073.x, x_1073.y, x_1073.z, x_1074.w);
  let x_1076 : vec4<f32> = u_xlat6;
  let x_1078 : vec4<f32> = u_xlat7;
  let x_1080 : vec3<f32> = (vec3<f32>(x_1076.x, x_1076.y, x_1076.z) * vec3<f32>(x_1078.x, x_1078.y, x_1078.z));
  let x_1081 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1080.x, x_1080.y, x_1080.z, x_1081.w);
  let x_1083 : vec3<f32> = u_xlat5;
  let x_1084 : vec3<f32> = u_xlat3;
  let x_1086 : vec4<f32> = u_xlat6;
  u_xlat5 = ((x_1083 * x_1084) + vec3<f32>(x_1086.x, x_1086.y, x_1086.z));
  let x_1089 : f32 = u_xlat37;
  let x_1091 : f32 = x_48.unity_LightData.z;
  u_xlat0.x = (x_1089 * x_1091);
  let x_1094 : vec4<f32> = u_xlat4;
  let x_1097 : vec4<f32> = x_135.x_MainLightPosition;
  u_xlat13 = dot(vec3<f32>(x_1094.x, x_1094.y, x_1094.z), vec3<f32>(x_1097.x, x_1097.y, x_1097.z));
  let x_1100 : f32 = u_xlat13;
  u_xlat13 = clamp(x_1100, 0.0f, 1.0f);
  let x_1103 : f32 = u_xlat0.x;
  let x_1104 : f32 = u_xlat13;
  u_xlat0.x = (x_1103 * x_1104);
  let x_1107 : vec4<f32> = u_xlat0;
  let x_1110 : vec4<f32> = x_135.x_MainLightColor;
  let x_1112 : vec3<f32> = (vec3<f32>(x_1107.x, x_1107.x, x_1107.x) * vec3<f32>(x_1110.x, x_1110.y, x_1110.z));
  let x_1113 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1112.x, x_1112.y, x_1112.z, x_1113.w);
  let x_1115 : vec3<f32> = u_xlat11;
  let x_1117 : vec4<f32> = x_135.x_MainLightPosition;
  let x_1119 : vec3<f32> = (x_1115 + vec3<f32>(x_1117.x, x_1117.y, x_1117.z));
  let x_1120 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1119.x, x_1119.y, x_1119.z, x_1120.w);
  let x_1122 : vec4<f32> = u_xlat7;
  let x_1124 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_1122.x, x_1122.y, x_1122.z), vec3<f32>(x_1124.x, x_1124.y, x_1124.z));
  let x_1129 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1129, 1.17549435e-38f);
  let x_1133 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1133);
  let x_1136 : vec4<f32> = u_xlat0;
  let x_1138 : vec4<f32> = u_xlat7;
  let x_1140 : vec3<f32> = (vec3<f32>(x_1136.x, x_1136.x, x_1136.x) * vec3<f32>(x_1138.x, x_1138.y, x_1138.z));
  let x_1141 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1140.x, x_1140.y, x_1140.z, x_1141.w);
  let x_1143 : vec4<f32> = u_xlat4;
  let x_1145 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_1143.x, x_1143.y, x_1143.z), vec3<f32>(x_1145.x, x_1145.y, x_1145.z));
  let x_1150 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1150, 0.0f, 1.0f);
  let x_1154 : vec4<f32> = x_135.x_MainLightPosition;
  let x_1156 : vec4<f32> = u_xlat7;
  u_xlat13 = dot(vec3<f32>(x_1154.x, x_1154.y, x_1154.z), vec3<f32>(x_1156.x, x_1156.y, x_1156.z));
  let x_1159 : f32 = u_xlat13;
  u_xlat13 = clamp(x_1159, 0.0f, 1.0f);
  let x_1162 : f32 = u_xlat0.x;
  let x_1164 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1162 * x_1164);
  let x_1168 : f32 = u_xlat0.x;
  let x_1170 : f32 = u_xlat2.x;
  u_xlat0.x = ((x_1168 * x_1170) + 1.00001001358032226562f);
  let x_1175 : f32 = u_xlat13;
  let x_1176 : f32 = u_xlat13;
  u_xlat13 = (x_1175 * x_1176);
  let x_1179 : f32 = u_xlat0.x;
  let x_1181 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1179 * x_1181);
  let x_1184 : f32 = u_xlat13;
  u_xlat13 = max(x_1184, 0.10000000149011611938f);
  let x_1187 : f32 = u_xlat0.x;
  let x_1188 : f32 = u_xlat13;
  u_xlat0.x = (x_1187 * x_1188);
  let x_1191 : f32 = u_xlat35;
  let x_1193 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1191 * x_1193);
  let x_1196 : f32 = u_xlat24;
  let x_1198 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1196 / x_1198);
  let x_1201 : vec3<f32> = u_xlat12;
  let x_1202 : vec4<f32> = u_xlat0;
  let x_1205 : vec3<f32> = u_xlat3;
  let x_1206 : vec3<f32> = ((x_1201 * vec3<f32>(x_1202.x, x_1202.x, x_1202.x)) + x_1205);
  let x_1207 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1206.x, x_1206.y, x_1206.z, x_1207.w);
  let x_1209 : vec4<f32> = u_xlat6;
  let x_1211 : vec4<f32> = u_xlat7;
  let x_1213 : vec3<f32> = (vec3<f32>(x_1209.x, x_1209.y, x_1209.z) * vec3<f32>(x_1211.x, x_1211.y, x_1211.z));
  let x_1214 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1213.x, x_1213.y, x_1213.z, x_1214.w);
  let x_1217 : f32 = x_135.x_AdditionalLightsCount.x;
  let x_1219 : f32 = x_48.unity_LightData.y;
  u_xlat0.x = min(x_1217, x_1219);
  let x_1225 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1225));
  let x_1228 : f32 = u_xlat38;
  let x_1231 : f32 = x_869.x_AdditionalShadowFadeParams.x;
  let x_1234 : f32 = x_869.x_AdditionalShadowFadeParams.y;
  u_xlat13 = ((x_1228 * x_1231) + x_1234);
  let x_1236 : f32 = u_xlat13;
  u_xlat13 = clamp(x_1236, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1248 : u32 = u_xlatu_loop_1;
    let x_1249 : u32 = u_xlatu0;
    if ((x_1248 < x_1249)) {
    } else {
      break;
    }
    let x_1252 : u32 = u_xlatu_loop_1;
    u_xlatu38 = (x_1252 >> 2u);
    let x_1256 : u32 = u_xlatu_loop_1;
    u_xlati39 = bitcast<i32>((x_1256 & 3u));
    let x_1259 : u32 = u_xlatu38;
    let x_1262 : vec4<f32> = x_48.unity_LightIndices[bitcast<i32>(x_1259)];
    let x_1272 : i32 = u_xlati39;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1277 : vec4<u32> = indexable[x_1272];
    u_xlat38 = dot(x_1262, bitcast<vec4<f32>>(x_1277));
    let x_1281 : f32 = u_xlat38;
    u_xlati38 = i32(x_1281);
    let x_1283 : vec3<f32> = vs_INTERP7;
    let x_1294 : i32 = u_xlati38;
    let x_1296 : vec4<f32> = x_1293.x_AdditionalLightsPosition[x_1294];
    let x_1299 : i32 = u_xlati38;
    let x_1301 : vec4<f32> = x_1293.x_AdditionalLightsPosition[x_1299];
    u_xlat8 = ((-(x_1283) * vec3<f32>(x_1296.w, x_1296.w, x_1296.w)) + vec3<f32>(x_1301.x, x_1301.y, x_1301.z));
    let x_1304 : vec3<f32> = u_xlat8;
    let x_1305 : vec3<f32> = u_xlat8;
    u_xlat39 = dot(x_1304, x_1305);
    let x_1307 : f32 = u_xlat39;
    u_xlat39 = max(x_1307, 0.00006103515625f);
    let x_1310 : f32 = u_xlat39;
    u_xlat40 = inverseSqrt(x_1310);
    let x_1313 : f32 = u_xlat40;
    let x_1315 : vec3<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1313, x_1313, x_1313) * x_1315);
    let x_1318 : f32 = u_xlat39;
    u_xlat41 = (1.0f / x_1318);
    let x_1320 : f32 = u_xlat39;
    let x_1321 : i32 = u_xlati38;
    let x_1323 : f32 = x_1293.x_AdditionalLightsAttenuation[x_1321].x;
    u_xlat39 = (x_1320 * x_1323);
    let x_1325 : f32 = u_xlat39;
    let x_1327 : f32 = u_xlat39;
    u_xlat39 = ((-(x_1325) * x_1327) + 1.0f);
    let x_1330 : f32 = u_xlat39;
    u_xlat39 = max(x_1330, 0.0f);
    let x_1332 : f32 = u_xlat39;
    let x_1333 : f32 = u_xlat39;
    u_xlat39 = (x_1332 * x_1333);
    let x_1335 : f32 = u_xlat39;
    let x_1336 : f32 = u_xlat41;
    u_xlat39 = (x_1335 * x_1336);
    let x_1338 : i32 = u_xlati38;
    let x_1340 : vec4<f32> = x_1293.x_AdditionalLightsSpotDir[x_1338];
    let x_1342 : vec3<f32> = u_xlat9;
    u_xlat41 = dot(vec3<f32>(x_1340.x, x_1340.y, x_1340.z), x_1342);
    let x_1344 : f32 = u_xlat41;
    let x_1345 : i32 = u_xlati38;
    let x_1347 : f32 = x_1293.x_AdditionalLightsAttenuation[x_1345].z;
    let x_1349 : i32 = u_xlati38;
    let x_1351 : f32 = x_1293.x_AdditionalLightsAttenuation[x_1349].w;
    u_xlat41 = ((x_1344 * x_1347) + x_1351);
    let x_1353 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1353, 0.0f, 1.0f);
    let x_1355 : f32 = u_xlat41;
    let x_1356 : f32 = u_xlat41;
    u_xlat41 = (x_1355 * x_1356);
    let x_1358 : f32 = u_xlat39;
    let x_1359 : f32 = u_xlat41;
    u_xlat39 = (x_1358 * x_1359);
    let x_1363 : i32 = u_xlati38;
    let x_1365 : f32 = x_869.x_AdditionalShadowParams[x_1363].w;
    u_xlati41 = i32(x_1365);
    let x_1368 : i32 = u_xlati41;
    u_xlatb42 = (x_1368 >= 0i);
    let x_1370 : bool = u_xlatb42;
    if (x_1370) {
      let x_1374 : i32 = u_xlati38;
      let x_1376 : f32 = x_869.x_AdditionalShadowParams[x_1374].z;
      u_xlatb42 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1376, x_1376, x_1376, x_1376))));
      let x_1381 : bool = u_xlatb42;
      if (x_1381) {
        let x_1386 : vec3<f32> = u_xlat9;
        let x_1389 : vec3<f32> = u_xlat9;
        let x_1392 : vec4<bool> = (abs(vec4<f32>(x_1386.z, x_1386.z, x_1386.y, x_1386.z)) >= abs(vec4<f32>(x_1389.x, x_1389.y, x_1389.x, x_1389.x)));
        let x_1394 : vec3<bool> = vec3<bool>(x_1392.x, x_1392.y, x_1392.z);
        let x_1395 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1394.x, x_1394.y, x_1394.z, x_1395.w);
        let x_1398 : bool = u_xlatb10.y;
        let x_1400 : bool = u_xlatb10.x;
        u_xlatb42 = (x_1398 & x_1400);
        let x_1402 : vec3<f32> = u_xlat9;
        let x_1405 : vec4<bool> = (-(vec4<f32>(x_1402.z, x_1402.y, x_1402.z, x_1402.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1406 : vec3<bool> = vec3<bool>(x_1405.x, x_1405.y, x_1405.w);
        let x_1407 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1406.x, x_1406.y, x_1407.z, x_1406.z);
        let x_1411 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_1411);
        let x_1416 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_1416);
        let x_1421 : bool = u_xlatb10.w;
        u_xlat43 = select(0.0f, 1.0f, x_1421);
        let x_1425 : bool = u_xlatb10.z;
        if (x_1425) {
          let x_1431 : f32 = u_xlat10.y;
          x_1427 = x_1431;
        } else {
          let x_1433 : f32 = u_xlat43;
          x_1427 = x_1433;
        }
        let x_1434 : f32 = x_1427;
        u_xlat21 = x_1434;
        let x_1436 : bool = u_xlatb42;
        if (x_1436) {
          let x_1441 : f32 = u_xlat10.x;
          x_1437 = x_1441;
        } else {
          let x_1443 : f32 = u_xlat21;
          x_1437 = x_1443;
        }
        let x_1444 : f32 = x_1437;
        u_xlat42 = x_1444;
        let x_1445 : i32 = u_xlati38;
        let x_1447 : f32 = x_869.x_AdditionalShadowParams[x_1445].w;
        u_xlat10.x = trunc(x_1447);
        let x_1450 : f32 = u_xlat42;
        let x_1452 : f32 = u_xlat10.x;
        u_xlat42 = (x_1450 + x_1452);
        let x_1454 : f32 = u_xlat42;
        u_xlati41 = i32(x_1454);
      }
      let x_1456 : i32 = u_xlati41;
      u_xlati41 = (x_1456 << bitcast<u32>(2i));
      let x_1458 : vec3<f32> = vs_INTERP7;
      let x_1461 : i32 = u_xlati41;
      let x_1464 : i32 = u_xlati41;
      let x_1468 : vec4<f32> = x_869.x_AdditionalLightsWorldToShadow[((x_1461 + 1i) / 4i)][((x_1464 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1458.y, x_1458.y, x_1458.y, x_1458.y) * x_1468);
      let x_1470 : i32 = u_xlati41;
      let x_1472 : i32 = u_xlati41;
      let x_1475 : vec4<f32> = x_869.x_AdditionalLightsWorldToShadow[(x_1470 / 4i)][(x_1472 % 4i)];
      let x_1476 : vec3<f32> = vs_INTERP7;
      let x_1479 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1475 * vec4<f32>(x_1476.x, x_1476.x, x_1476.x, x_1476.x)) + x_1479);
      let x_1481 : i32 = u_xlati41;
      let x_1484 : i32 = u_xlati41;
      let x_1488 : vec4<f32> = x_869.x_AdditionalLightsWorldToShadow[((x_1481 + 2i) / 4i)][((x_1484 + 2i) % 4i)];
      let x_1489 : vec3<f32> = vs_INTERP7;
      let x_1492 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1488 * vec4<f32>(x_1489.z, x_1489.z, x_1489.z, x_1489.z)) + x_1492);
      let x_1494 : vec4<f32> = u_xlat10;
      let x_1495 : i32 = u_xlati41;
      let x_1498 : i32 = u_xlati41;
      let x_1502 : vec4<f32> = x_869.x_AdditionalLightsWorldToShadow[((x_1495 + 3i) / 4i)][((x_1498 + 3i) % 4i)];
      u_xlat10 = (x_1494 + x_1502);
      let x_1504 : vec4<f32> = u_xlat10;
      let x_1506 : vec4<f32> = u_xlat10;
      let x_1508 : vec3<f32> = (vec3<f32>(x_1504.x, x_1504.y, x_1504.z) / vec3<f32>(x_1506.w, x_1506.w, x_1506.w));
      let x_1509 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1508.x, x_1508.y, x_1508.z, x_1509.w);
      let x_1512 : vec4<f32> = u_xlat10;
      let x_1513 : vec2<f32> = vec2<f32>(x_1512.x, x_1512.y);
      let x_1515 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1513.x, x_1513.y, x_1515);
      let x_1523 : vec3<f32> = txVec1;
      let x_1525 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1523.xy, x_1523.z);
      u_xlat41 = x_1525;
      let x_1526 : i32 = u_xlati38;
      let x_1528 : f32 = x_869.x_AdditionalShadowParams[x_1526].x;
      u_xlat42 = (1.0f + -(x_1528));
      let x_1531 : f32 = u_xlat41;
      let x_1532 : i32 = u_xlati38;
      let x_1534 : f32 = x_869.x_AdditionalShadowParams[x_1532].x;
      let x_1536 : f32 = u_xlat42;
      u_xlat41 = ((x_1531 * x_1534) + x_1536);
      let x_1539 : f32 = u_xlat10.z;
      u_xlatb42 = (0.0f >= x_1539);
      let x_1542 : f32 = u_xlat10.z;
      u_xlatb10.x = (x_1542 >= 1.0f);
      let x_1545 : bool = u_xlatb42;
      let x_1547 : bool = u_xlatb10.x;
      u_xlatb42 = (x_1545 | x_1547);
      let x_1549 : bool = u_xlatb42;
      let x_1550 : f32 = u_xlat41;
      u_xlat41 = select(x_1550, 1.0f, x_1549);
    } else {
      u_xlat41 = 1.0f;
    }
    let x_1553 : f32 = u_xlat41;
    u_xlat42 = (-(x_1553) + 1.0f);
    let x_1556 : f32 = u_xlat13;
    let x_1557 : f32 = u_xlat42;
    let x_1559 : f32 = u_xlat41;
    u_xlat41 = ((x_1556 * x_1557) + x_1559);
    let x_1561 : f32 = u_xlat39;
    let x_1562 : f32 = u_xlat41;
    u_xlat39 = (x_1561 * x_1562);
    let x_1564 : vec4<f32> = u_xlat4;
    let x_1566 : vec3<f32> = u_xlat9;
    u_xlat41 = dot(vec3<f32>(x_1564.x, x_1564.y, x_1564.z), x_1566);
    let x_1568 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1568, 0.0f, 1.0f);
    let x_1570 : f32 = u_xlat39;
    let x_1571 : f32 = u_xlat41;
    u_xlat39 = (x_1570 * x_1571);
    let x_1573 : f32 = u_xlat39;
    let x_1575 : i32 = u_xlati38;
    let x_1577 : vec4<f32> = x_1293.x_AdditionalLightsColor[x_1575];
    let x_1579 : vec3<f32> = (vec3<f32>(x_1573, x_1573, x_1573) * vec3<f32>(x_1577.x, x_1577.y, x_1577.z));
    let x_1580 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1579.x, x_1579.y, x_1579.z, x_1580.w);
    let x_1582 : vec3<f32> = u_xlat8;
    let x_1583 : f32 = u_xlat40;
    let x_1586 : vec3<f32> = u_xlat11;
    u_xlat8 = ((x_1582 * vec3<f32>(x_1583, x_1583, x_1583)) + x_1586);
    let x_1588 : vec3<f32> = u_xlat8;
    let x_1589 : vec3<f32> = u_xlat8;
    u_xlat38 = dot(x_1588, x_1589);
    let x_1591 : f32 = u_xlat38;
    u_xlat38 = max(x_1591, 1.17549435e-38f);
    let x_1593 : f32 = u_xlat38;
    u_xlat38 = inverseSqrt(x_1593);
    let x_1595 : f32 = u_xlat38;
    let x_1597 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1595, x_1595, x_1595) * x_1597);
    let x_1599 : vec4<f32> = u_xlat4;
    let x_1601 : vec3<f32> = u_xlat8;
    u_xlat38 = dot(vec3<f32>(x_1599.x, x_1599.y, x_1599.z), x_1601);
    let x_1603 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1603, 0.0f, 1.0f);
    let x_1605 : vec3<f32> = u_xlat9;
    let x_1606 : vec3<f32> = u_xlat8;
    u_xlat39 = dot(x_1605, x_1606);
    let x_1608 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1608, 0.0f, 1.0f);
    let x_1610 : f32 = u_xlat38;
    let x_1611 : f32 = u_xlat38;
    u_xlat38 = (x_1610 * x_1611);
    let x_1613 : f32 = u_xlat38;
    let x_1615 : f32 = u_xlat2.x;
    u_xlat38 = ((x_1613 * x_1615) + 1.00001001358032226562f);
    let x_1618 : f32 = u_xlat39;
    let x_1619 : f32 = u_xlat39;
    u_xlat39 = (x_1618 * x_1619);
    let x_1621 : f32 = u_xlat38;
    let x_1622 : f32 = u_xlat38;
    u_xlat38 = (x_1621 * x_1622);
    let x_1624 : f32 = u_xlat39;
    u_xlat39 = max(x_1624, 0.10000000149011611938f);
    let x_1626 : f32 = u_xlat38;
    let x_1627 : f32 = u_xlat39;
    u_xlat38 = (x_1626 * x_1627);
    let x_1629 : f32 = u_xlat35;
    let x_1630 : f32 = u_xlat38;
    u_xlat38 = (x_1629 * x_1630);
    let x_1632 : f32 = u_xlat24;
    let x_1633 : f32 = u_xlat38;
    u_xlat38 = (x_1632 / x_1633);
    let x_1635 : vec3<f32> = u_xlat12;
    let x_1636 : f32 = u_xlat38;
    let x_1639 : vec3<f32> = u_xlat3;
    u_xlat8 = ((x_1635 * vec3<f32>(x_1636, x_1636, x_1636)) + x_1639);
    let x_1641 : vec3<f32> = u_xlat8;
    let x_1642 : vec4<f32> = u_xlat10;
    let x_1645 : vec4<f32> = u_xlat7;
    let x_1647 : vec3<f32> = ((x_1641 * vec3<f32>(x_1642.x, x_1642.y, x_1642.z)) + vec3<f32>(x_1645.x, x_1645.y, x_1645.z));
    let x_1648 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1647.x, x_1647.y, x_1647.z, x_1648.w);

    continuing {
      let x_1650 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1650 + bitcast<u32>(1i));
    }
  }
  let x_1652 : vec3<f32> = u_xlat5;
  let x_1653 : f32 = u_xlat36;
  let x_1656 : vec4<f32> = u_xlat6;
  let x_1658 : vec3<f32> = ((x_1652 * vec3<f32>(x_1653, x_1653, x_1653)) + vec3<f32>(x_1656.x, x_1656.y, x_1656.z));
  let x_1659 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1658.x, x_1658.y, x_1658.z, x_1659.w);
  let x_1661 : vec4<f32> = u_xlat7;
  let x_1663 : vec4<f32> = u_xlat0;
  let x_1665 : vec3<f32> = (vec3<f32>(x_1661.x, x_1661.y, x_1661.z) + vec3<f32>(x_1663.x, x_1663.y, x_1663.z));
  let x_1666 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1665.x, x_1665.y, x_1665.z, x_1666.w);
  let x_1670 : f32 = u_xlat1.x;
  let x_1672 : f32 = u_xlat1.x;
  u_xlat33 = (x_1670 * -(x_1672));
  let x_1675 : f32 = u_xlat33;
  u_xlat33 = exp2(x_1675);
  let x_1677 : vec4<f32> = u_xlat0;
  let x_1680 : vec4<f32> = x_135.unity_FogColor;
  let x_1683 : vec3<f32> = (vec3<f32>(x_1677.x, x_1677.y, x_1677.z) + -(vec3<f32>(x_1680.x, x_1680.y, x_1680.z)));
  let x_1684 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1683.x, x_1683.y, x_1683.z, x_1684.w);
  let x_1688 : f32 = u_xlat33;
  let x_1690 : vec4<f32> = u_xlat0;
  let x_1694 : vec4<f32> = x_135.unity_FogColor;
  let x_1696 : vec3<f32> = ((vec3<f32>(x_1688, x_1688, x_1688) * vec3<f32>(x_1690.x, x_1690.y, x_1690.z)) + vec3<f32>(x_1694.x, x_1694.y, x_1694.z));
  let x_1697 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1696.x, x_1696.y, x_1696.z, x_1697.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_INTERP8_param : vec3<f32>, @location(1) vs_INTERP4_param : vec4<f32>, @location(2) vs_INTERP5_param : vec4<f32>, @location(3) vs_INTERP7_param : vec3<f32>, @location(0) vs_INTERP3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP7 = vs_INTERP7_param;
  vs_INTERP3 = vs_INTERP3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


