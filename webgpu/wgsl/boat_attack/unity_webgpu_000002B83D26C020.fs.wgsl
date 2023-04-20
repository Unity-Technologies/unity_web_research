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

var<private> u_xlat12 : vec2<f32>;

var<private> u_xlat15 : vec3<f32>;

@group(0) @binding(6) var Texture2D_C005B064 : texture_2d<f32>;

@group(0) @binding(13) var samplerTexture2D_C005B064 : sampler;

@group(0) @binding(3) var x_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D : texture_2d<f32>;

@group(0) @binding(10) var sampler_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D : sampler;

var<private> u_xlat22 : f32;

@group(1) @binding(3) var<uniform> x_666 : LightShadows;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlatb5 : vec4<bool>;

var<private> u_xlatu1 : u32;

var<private> u_xlati1 : i32;

var<private> u_xlat38 : f32;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb12 : bool;

var<private> u_xlatb23 : bool;

var<private> u_xlat17 : vec3<f32>;

var<private> u_xlat23 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu0 : u32;

var<private> u_xlatu18 : u32;

var<private> u_xlati29 : i32;

var<private> u_xlati18 : i32;

@group(1) @binding(1) var<uniform> x_1399 : AdditionalLights;

var<private> u_xlat29 : f32;

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

var<private> u_xlatb18 : bool;

var<private> u_xlatu36 : u32;

fn main_1() {
  var x_650 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_1037 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1536 : f32;
  var x_1546 : f32;
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
  let x_311 : f32 = u_xlat1.x;
  u_xlat12.x = ((x_311 * -2.0f) + 3.0f);
  let x_316 : f32 = u_xlat1.x;
  let x_318 : f32 = u_xlat1.x;
  u_xlat1.x = (x_316 * x_318);
  let x_322 : f32 = u_xlat1.x;
  let x_324 : f32 = u_xlat12.x;
  u_xlat1.x = (x_322 * x_324);
  let x_327 : vec4<f32> = u_xlat1;
  let x_330 : vec2<f32> = min(vec2<f32>(x_327.x, x_327.w), vec2<f32>(1.0f, 1.0f));
  let x_331 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_330.x, x_331.y, x_331.z, x_330.y);
  let x_334 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_334) + 1.0f);
  let x_338 : vec4<f32> = u_xlat4;
  let x_340 : vec4<f32> = u_xlat6;
  u_xlat2 = (vec3<f32>(x_338.x, x_338.y, x_338.z) + -(vec3<f32>(x_340.x, x_340.y, x_340.z)));
  let x_344 : vec4<f32> = u_xlat1;
  let x_346 : vec3<f32> = u_xlat2;
  let x_348 : vec4<f32> = u_xlat6;
  u_xlat2 = ((vec3<f32>(x_344.x, x_344.x, x_344.x) * x_346) + vec3<f32>(x_348.x, x_348.y, x_348.z));
  let x_351 : vec4<f32> = u_xlat1;
  let x_353 : vec3<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_351.w, x_351.w, x_351.w) * x_353);
  let x_361 : vec3<f32> = u_xlat5;
  let x_364 : f32 = x_135.x_GlobalMipBias.x;
  let x_365 : vec4<f32> = textureSampleBias(Texture2D_C005B064, samplerTexture2D_C005B064, vec2<f32>(x_361.x, x_361.y), x_364);
  u_xlat15 = vec3<f32>(x_365.x, x_365.y, x_365.w);
  let x_368 : f32 = u_xlat15.x;
  let x_370 : f32 = u_xlat15.z;
  u_xlat15.x = (x_368 * x_370);
  let x_373 : vec3<f32> = u_xlat15;
  let x_378 : vec2<f32> = ((vec2<f32>(x_373.x, x_373.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_379 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_378.x, x_378.y, x_379.z);
  let x_381 : vec3<f32> = u_xlat5;
  let x_383 : vec3<f32> = u_xlat5;
  u_xlat12.x = dot(vec2<f32>(x_381.x, x_381.y), vec2<f32>(x_383.x, x_383.y));
  let x_388 : f32 = u_xlat12.x;
  u_xlat12.x = min(x_388, 1.0f);
  let x_392 : f32 = u_xlat12.x;
  u_xlat12.x = (-(x_392) + 1.0f);
  let x_397 : f32 = u_xlat12.x;
  u_xlat12.x = sqrt(x_397);
  let x_401 : f32 = u_xlat12.x;
  u_xlat5.z = max(x_401, 0.0000000000000001f);
  let x_407 : vec4<f32> = x_48.unity_ObjectToWorld[0i];
  let x_410 : vec4<f32> = x_48.unity_ObjectToWorld[0i];
  u_xlat12.x = dot(vec3<f32>(x_407.x, x_407.y, x_407.z), vec3<f32>(x_410.x, x_410.y, x_410.z));
  let x_415 : f32 = u_xlat12.x;
  u_xlat6.x = sqrt(x_415);
  let x_420 : vec4<f32> = x_48.unity_ObjectToWorld[1i];
  let x_423 : vec4<f32> = x_48.unity_ObjectToWorld[1i];
  u_xlat12.x = dot(vec3<f32>(x_420.x, x_420.y, x_420.z), vec3<f32>(x_423.x, x_423.y, x_423.z));
  let x_428 : f32 = u_xlat12.x;
  u_xlat6.y = sqrt(x_428);
  let x_433 : vec4<f32> = x_48.unity_ObjectToWorld[2i];
  let x_436 : vec4<f32> = x_48.unity_ObjectToWorld[2i];
  u_xlat12.x = dot(vec3<f32>(x_433.x, x_433.y, x_433.z), vec3<f32>(x_436.x, x_436.y, x_436.z));
  let x_441 : f32 = u_xlat12.x;
  u_xlat6.z = sqrt(x_441);
  let x_444 : vec4<f32> = u_xlat6;
  let x_446 : vec4<f32> = u_xlat6;
  u_xlat12.x = dot(vec3<f32>(x_444.x, x_444.y, x_444.z), vec3<f32>(x_446.x, x_446.y, x_446.z));
  let x_451 : f32 = u_xlat12.x;
  u_xlat12.x = sqrt(x_451);
  let x_455 : f32 = u_xlat12.x;
  let x_458 : f32 = x_195.Vector1_90E376AD;
  u_xlat12.x = (x_455 * x_458);
  let x_462 : f32 = u_xlat12.x;
  u_xlat12.x = (x_462 * 30.0f);
  let x_466 : vec2<f32> = u_xlat12;
  let x_468 : vec4<f32> = vs_INTERP5;
  u_xlat12 = (vec2<f32>(x_466.x, x_466.x) * vec2<f32>(x_468.x, x_468.y));
  let x_476 : vec2<f32> = u_xlat12;
  let x_478 : f32 = x_135.x_GlobalMipBias.x;
  let x_479 : vec4<f32> = textureSampleBias(x_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D, sampler_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D, x_476, x_478);
  u_xlat15 = vec3<f32>(x_479.x, x_479.y, x_479.w);
  let x_482 : f32 = u_xlat15.x;
  let x_484 : f32 = u_xlat15.z;
  u_xlat15.x = (x_482 * x_484);
  let x_487 : vec3<f32> = u_xlat15;
  u_xlat12 = ((vec2<f32>(x_487.x, x_487.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_491 : vec2<f32> = u_xlat12;
  let x_492 : vec2<f32> = u_xlat12;
  u_xlat35 = dot(x_491, x_492);
  let x_494 : f32 = u_xlat35;
  u_xlat35 = min(x_494, 1.0f);
  let x_496 : f32 = u_xlat35;
  u_xlat35 = (-(x_496) + 1.0f);
  let x_499 : f32 = u_xlat35;
  u_xlat35 = sqrt(x_499);
  let x_501 : f32 = u_xlat35;
  u_xlat35 = max(x_501, 0.0000000000000001f);
  let x_503 : vec2<f32> = u_xlat12;
  let x_504 : vec3<f32> = u_xlat18;
  let x_506 : vec2<f32> = (x_503 + vec2<f32>(x_504.x, x_504.y));
  let x_507 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_506.x, x_506.y, x_507.z, x_507.w);
  let x_509 : f32 = u_xlat35;
  let x_511 : f32 = u_xlat18.z;
  u_xlat6.z = (x_509 * x_511);
  let x_514 : vec4<f32> = u_xlat6;
  let x_516 : vec4<f32> = u_xlat6;
  u_xlat12.x = dot(vec3<f32>(x_514.x, x_514.y, x_514.z), vec3<f32>(x_516.x, x_516.y, x_516.z));
  let x_521 : f32 = u_xlat12.x;
  u_xlat12.x = max(x_521, 0.00006103515625f);
  let x_526 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_526);
  let x_529 : vec4<f32> = u_xlat6;
  let x_531 : vec2<f32> = u_xlat12;
  let x_534 : vec3<f32> = u_xlat5;
  u_xlat15 = ((vec3<f32>(x_529.x, x_529.y, x_529.z) * vec3<f32>(x_531.x, x_531.x, x_531.x)) + -(x_534));
  let x_537 : vec4<f32> = u_xlat1;
  let x_539 : vec3<f32> = u_xlat15;
  let x_541 : vec3<f32> = u_xlat5;
  let x_542 : vec3<f32> = ((vec3<f32>(x_537.x, x_537.x, x_537.x) * x_539) + x_541);
  let x_543 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_543.x, x_542.x, x_542.y, x_542.z);
  let x_546 : f32 = u_xlat0.x;
  u_xlat0.x = (-(abs(x_546)) + 1.0f);
  let x_551 : vec4<f32> = u_xlat0;
  let x_552 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_551 * vec4<f32>(x_552.x, x_552.z, x_552.z, x_552.z));
  let x_556 : f32 = u_xlat0.x;
  let x_558 : f32 = x_195.Vector1_6E11FCEA;
  u_xlat0.x = (x_556 * x_558);
  let x_562 : f32 = u_xlat1.x;
  let x_564 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_562 * x_564) + -0.85000002384185791016f);
  let x_570 : f32 = u_xlat1.w;
  let x_572 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_570 * x_572) + 0.85000002384185791016f);
  let x_578 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_578, 0.0f, 1.0f);
  let x_581 : vec4<f32> = u_xlat4;
  let x_583 : vec4<f32> = vs_INTERP4;
  let x_586 : vec4<f32> = u_xlat0;
  u_xlat11 = ((vec3<f32>(x_581.y, x_581.y, x_581.y) * vec3<f32>(x_583.x, x_583.y, x_583.z)) + vec3<f32>(x_586.y, x_586.z, x_586.w));
  let x_589 : vec4<f32> = u_xlat4;
  let x_591 : vec3<f32> = vs_INTERP8;
  let x_593 : vec3<f32> = u_xlat11;
  u_xlat11 = ((vec3<f32>(x_589.w, x_589.w, x_589.w) * x_591) + x_593);
  let x_595 : vec3<f32> = u_xlat11;
  let x_596 : vec3<f32> = u_xlat11;
  u_xlat1.x = dot(x_595, x_596);
  let x_600 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_600);
  let x_603 : vec3<f32> = u_xlat11;
  let x_604 : vec4<f32> = u_xlat1;
  let x_606 : vec3<f32> = (x_603 * vec3<f32>(x_604.x, x_604.x, x_604.x));
  let x_607 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_606.x, x_606.y, x_606.z, x_607.w);
  let x_611 : f32 = x_135.unity_OrthoParams.w;
  u_xlatb11.x = (x_611 == 0.0f);
  let x_614 : vec3<f32> = vs_INTERP7;
  let x_618 : vec3<f32> = x_135.x_WorldSpaceCameraPos;
  let x_619 : vec3<f32> = (-(x_614) + x_618);
  let x_620 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_619.x, x_619.y, x_619.z, x_620.w);
  let x_623 : vec4<f32> = u_xlat1;
  let x_625 : vec4<f32> = u_xlat1;
  u_xlat22 = dot(vec3<f32>(x_623.x, x_623.y, x_623.z), vec3<f32>(x_625.x, x_625.y, x_625.z));
  let x_628 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_628);
  let x_630 : f32 = u_xlat22;
  let x_632 : vec4<f32> = u_xlat1;
  let x_634 : vec3<f32> = (vec3<f32>(x_630, x_630, x_630) * vec3<f32>(x_632.x, x_632.y, x_632.z));
  let x_635 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_634.x, x_634.y, x_634.z, x_635.w);
  let x_639 : f32 = x_135.unity_MatrixV[0i].z;
  u_xlat5.x = x_639;
  let x_642 : f32 = x_135.unity_MatrixV[1i].z;
  u_xlat5.y = x_642;
  let x_645 : f32 = x_135.unity_MatrixV[2i].z;
  u_xlat5.z = x_645;
  let x_648 : bool = u_xlatb11.x;
  if (x_648) {
    let x_653 : vec4<f32> = u_xlat1;
    x_650 = vec3<f32>(x_653.x, x_653.y, x_653.z);
  } else {
    let x_656 : vec3<f32> = u_xlat5;
    x_650 = x_656;
  }
  let x_657 : vec3<f32> = x_650;
  u_xlat11 = x_657;
  let x_658 : vec3<f32> = vs_INTERP7;
  let x_668 : vec4<f32> = x_666.x_CascadeShadowSplitSpheres0;
  let x_671 : vec3<f32> = (x_658 + -(vec3<f32>(x_668.x, x_668.y, x_668.z)));
  let x_672 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_671.x, x_671.y, x_671.z, x_672.w);
  let x_674 : vec3<f32> = vs_INTERP7;
  let x_676 : vec4<f32> = x_666.x_CascadeShadowSplitSpheres1;
  u_xlat5 = (x_674 + -(vec3<f32>(x_676.x, x_676.y, x_676.z)));
  let x_680 : vec3<f32> = vs_INTERP7;
  let x_682 : vec4<f32> = x_666.x_CascadeShadowSplitSpheres2;
  let x_685 : vec3<f32> = (x_680 + -(vec3<f32>(x_682.x, x_682.y, x_682.z)));
  let x_686 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_685.x, x_685.y, x_685.z, x_686.w);
  let x_688 : vec3<f32> = vs_INTERP7;
  let x_690 : vec4<f32> = x_666.x_CascadeShadowSplitSpheres3;
  u_xlat18 = (x_688 + -(vec3<f32>(x_690.x, x_690.y, x_690.z)));
  let x_695 : vec4<f32> = u_xlat1;
  let x_697 : vec4<f32> = u_xlat1;
  u_xlat8.x = dot(vec3<f32>(x_695.x, x_695.y, x_695.z), vec3<f32>(x_697.x, x_697.y, x_697.z));
  let x_701 : vec3<f32> = u_xlat5;
  let x_702 : vec3<f32> = u_xlat5;
  u_xlat8.y = dot(x_701, x_702);
  let x_705 : vec4<f32> = u_xlat6;
  let x_707 : vec4<f32> = u_xlat6;
  u_xlat8.z = dot(vec3<f32>(x_705.x, x_705.y, x_705.z), vec3<f32>(x_707.x, x_707.y, x_707.z));
  let x_711 : vec3<f32> = u_xlat18;
  let x_712 : vec3<f32> = u_xlat18;
  u_xlat8.w = dot(x_711, x_712);
  let x_718 : vec4<f32> = u_xlat8;
  let x_720 : vec4<f32> = x_666.x_CascadeShadowSplitSphereRadii;
  u_xlatb5 = (x_718 < x_720);
  let x_723 : bool = u_xlatb5.x;
  u_xlat6.x = select(0.0f, 1.0f, x_723);
  let x_727 : bool = u_xlatb5.y;
  u_xlat6.y = select(0.0f, 1.0f, x_727);
  let x_731 : bool = u_xlatb5.z;
  u_xlat6.z = select(0.0f, 1.0f, x_731);
  let x_735 : bool = u_xlatb5.w;
  u_xlat6.w = select(0.0f, 1.0f, x_735);
  let x_739 : bool = u_xlatb5.x;
  u_xlat1.x = select(-0.0f, -1.0f, x_739);
  let x_744 : bool = u_xlatb5.y;
  u_xlat1.y = select(-0.0f, -1.0f, x_744);
  let x_748 : bool = u_xlatb5.z;
  u_xlat1.z = select(-0.0f, -1.0f, x_748);
  let x_751 : vec4<f32> = u_xlat1;
  let x_753 : vec4<f32> = u_xlat6;
  let x_755 : vec3<f32> = (vec3<f32>(x_751.x, x_751.y, x_751.z) + vec3<f32>(x_753.y, x_753.z, x_753.w));
  let x_756 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_755.x, x_755.y, x_755.z, x_756.w);
  let x_758 : vec4<f32> = u_xlat1;
  let x_761 : vec3<f32> = max(vec3<f32>(x_758.x, x_758.y, x_758.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_762 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_762.x, x_761.x, x_761.y, x_761.z);
  let x_764 : vec4<f32> = u_xlat6;
  u_xlat1.x = dot(x_764, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_769 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_769) + 4.0f);
  let x_776 : f32 = u_xlat1.x;
  u_xlatu1 = u32(x_776);
  let x_780 : u32 = u_xlatu1;
  u_xlati1 = (bitcast<i32>(x_780) << bitcast<u32>(2i));
  let x_783 : vec3<f32> = vs_INTERP7;
  let x_785 : i32 = u_xlati1;
  let x_788 : i32 = u_xlati1;
  let x_792 : vec4<f32> = x_666.x_MainLightWorldToShadow[((x_785 + 1i) / 4i)][((x_788 + 1i) % 4i)];
  u_xlat5 = (vec3<f32>(x_783.y, x_783.y, x_783.y) * vec3<f32>(x_792.x, x_792.y, x_792.z));
  let x_795 : i32 = u_xlati1;
  let x_797 : i32 = u_xlati1;
  let x_800 : vec4<f32> = x_666.x_MainLightWorldToShadow[(x_795 / 4i)][(x_797 % 4i)];
  let x_802 : vec3<f32> = vs_INTERP7;
  let x_805 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_800.x, x_800.y, x_800.z) * vec3<f32>(x_802.x, x_802.x, x_802.x)) + x_805);
  let x_807 : i32 = u_xlati1;
  let x_810 : i32 = u_xlati1;
  let x_814 : vec4<f32> = x_666.x_MainLightWorldToShadow[((x_807 + 2i) / 4i)][((x_810 + 2i) % 4i)];
  let x_816 : vec3<f32> = vs_INTERP7;
  let x_819 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_814.x, x_814.y, x_814.z) * vec3<f32>(x_816.z, x_816.z, x_816.z)) + x_819);
  let x_821 : vec3<f32> = u_xlat5;
  let x_822 : i32 = u_xlati1;
  let x_825 : i32 = u_xlati1;
  let x_829 : vec4<f32> = x_666.x_MainLightWorldToShadow[((x_822 + 3i) / 4i)][((x_825 + 3i) % 4i)];
  let x_831 : vec3<f32> = (x_821 + vec3<f32>(x_829.x, x_829.y, x_829.z));
  let x_832 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_831.x, x_831.y, x_831.z, x_832.w);
  let x_835 : f32 = vs_INTERP7.y;
  let x_837 : f32 = x_135.unity_MatrixV[1i].z;
  u_xlat35 = (x_835 * x_837);
  let x_840 : f32 = x_135.unity_MatrixV[0i].z;
  let x_842 : f32 = vs_INTERP7.x;
  let x_844 : f32 = u_xlat35;
  u_xlat35 = ((x_840 * x_842) + x_844);
  let x_847 : f32 = x_135.unity_MatrixV[2i].z;
  let x_849 : f32 = vs_INTERP7.z;
  let x_851 : f32 = u_xlat35;
  u_xlat35 = ((x_847 * x_849) + x_851);
  let x_853 : f32 = u_xlat35;
  let x_855 : f32 = x_135.unity_MatrixV[3i].z;
  u_xlat35 = (x_853 + x_855);
  let x_857 : f32 = u_xlat35;
  let x_860 : f32 = x_135.x_ProjectionParams.y;
  u_xlat35 = (-(x_857) + -(x_860));
  let x_863 : f32 = u_xlat35;
  u_xlat35 = max(x_863, 0.0f);
  let x_865 : f32 = u_xlat35;
  let x_868 : f32 = x_135.unity_FogParams.x;
  u_xlat35 = (x_865 * x_868);
  u_xlat4.w = 1.0f;
  let x_873 : vec4<f32> = x_48.unity_SHAr;
  let x_874 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_873, x_874);
  let x_879 : vec4<f32> = x_48.unity_SHAg;
  let x_880 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_879, x_880);
  let x_885 : vec4<f32> = x_48.unity_SHAb;
  let x_886 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_885, x_886);
  let x_889 : vec4<f32> = u_xlat4;
  let x_891 : vec4<f32> = u_xlat4;
  u_xlat6 = (vec4<f32>(x_889.y, x_889.z, x_889.z, x_889.x) * vec4<f32>(x_891.x, x_891.y, x_891.z, x_891.z));
  let x_896 : vec4<f32> = x_48.unity_SHBr;
  let x_897 : vec4<f32> = u_xlat6;
  u_xlat8.x = dot(x_896, x_897);
  let x_902 : vec4<f32> = x_48.unity_SHBg;
  let x_903 : vec4<f32> = u_xlat6;
  u_xlat8.y = dot(x_902, x_903);
  let x_908 : vec4<f32> = x_48.unity_SHBb;
  let x_909 : vec4<f32> = u_xlat6;
  u_xlat8.z = dot(x_908, x_909);
  let x_913 : f32 = u_xlat4.y;
  let x_915 : f32 = u_xlat4.y;
  u_xlat36 = (x_913 * x_915);
  let x_918 : f32 = u_xlat4.x;
  let x_920 : f32 = u_xlat4.x;
  let x_922 : f32 = u_xlat36;
  u_xlat36 = ((x_918 * x_920) + -(x_922));
  let x_927 : vec4<f32> = x_48.unity_SHC;
  let x_929 : f32 = u_xlat36;
  let x_932 : vec4<f32> = u_xlat8;
  let x_934 : vec3<f32> = ((vec3<f32>(x_927.x, x_927.y, x_927.z) * vec3<f32>(x_929, x_929, x_929)) + vec3<f32>(x_932.x, x_932.y, x_932.z));
  let x_935 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_934.x, x_934.y, x_934.z, x_935.w);
  let x_937 : vec3<f32> = u_xlat5;
  let x_938 : vec4<f32> = u_xlat6;
  u_xlat5 = (x_937 + vec3<f32>(x_938.x, x_938.y, x_938.z));
  let x_941 : vec3<f32> = u_xlat5;
  u_xlat5 = max(x_941, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_943 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_943 * vec3<f32>(0.86399996280670166016f, 0.86399996280670166016f, 0.86399996280670166016f));
  let x_947 : vec4<f32> = u_xlat1;
  let x_949 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_947.w, x_947.w, x_947.w) * x_949) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_954 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_954 * vec3<f32>(0.10000000149011611938f, 0.10000000149011611938f, 0.10000000149011611938f)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_961 : f32 = u_xlat0.x;
  u_xlat34 = (-(x_961) + 1.0f);
  let x_964 : f32 = u_xlat34;
  let x_965 : f32 = u_xlat34;
  u_xlat36 = (x_964 * x_965);
  let x_967 : f32 = u_xlat36;
  u_xlat36 = max(x_967, 0.0078125f);
  let x_970 : f32 = u_xlat36;
  let x_971 : f32 = u_xlat36;
  u_xlat37 = (x_970 * x_971);
  let x_974 : f32 = u_xlat0.x;
  u_xlat0.x = (x_974 + 0.13600003719329833984f);
  let x_979 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_979, 1.0f);
  let x_983 : f32 = u_xlat36;
  u_xlat38 = ((x_983 * 4.0f) + 2.0f);
  let x_987 : f32 = u_xlat7.x;
  u_xlat6.x = min(x_987, 1.0f);
  let x_991 : vec4<f32> = u_xlat1;
  let x_992 : vec2<f32> = vec2<f32>(x_991.x, x_991.y);
  let x_994 : f32 = u_xlat1.z;
  txVec0 = vec3<f32>(x_992.x, x_992.y, x_994);
  let x_1006 : vec3<f32> = txVec0;
  let x_1008 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1006.xy, x_1006.z);
  u_xlat1.x = x_1008;
  let x_1011 : f32 = x_666.x_MainLightShadowParams.x;
  u_xlat12.x = (-(x_1011) + 1.0f);
  let x_1016 : f32 = u_xlat1.x;
  let x_1018 : f32 = x_666.x_MainLightShadowParams.x;
  let x_1021 : f32 = u_xlat12.x;
  u_xlat1.x = ((x_1016 * x_1018) + x_1021);
  let x_1026 : f32 = u_xlat1.z;
  u_xlatb12 = (0.0f >= x_1026);
  let x_1030 : f32 = u_xlat1.z;
  u_xlatb23 = (x_1030 >= 1.0f);
  let x_1032 : bool = u_xlatb23;
  let x_1033 : bool = u_xlatb12;
  u_xlatb12 = (x_1032 | x_1033);
  let x_1035 : bool = u_xlatb12;
  if (x_1035) {
    x_1037 = 1.0f;
  } else {
    let x_1042 : f32 = u_xlat1.x;
    x_1037 = x_1042;
  }
  let x_1043 : f32 = x_1037;
  u_xlat1.x = x_1043;
  let x_1046 : vec3<f32> = vs_INTERP7;
  let x_1048 : vec3<f32> = x_135.x_WorldSpaceCameraPos;
  u_xlat17 = (x_1046 + -(x_1048));
  let x_1051 : vec3<f32> = u_xlat17;
  let x_1052 : vec3<f32> = u_xlat17;
  u_xlat12.x = dot(x_1051, x_1052);
  let x_1057 : f32 = u_xlat12.x;
  let x_1059 : f32 = x_666.x_MainLightShadowParams.z;
  let x_1062 : f32 = x_666.x_MainLightShadowParams.w;
  u_xlat23 = ((x_1057 * x_1059) + x_1062);
  let x_1064 : f32 = u_xlat23;
  u_xlat23 = clamp(x_1064, 0.0f, 1.0f);
  let x_1067 : f32 = u_xlat1.x;
  u_xlat17.x = (-(x_1067) + 1.0f);
  let x_1071 : f32 = u_xlat23;
  let x_1073 : f32 = u_xlat17.x;
  let x_1076 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1071 * x_1073) + x_1076);
  let x_1079 : vec3<f32> = u_xlat11;
  let x_1081 : vec4<f32> = u_xlat4;
  u_xlat23 = dot(-(x_1079), vec3<f32>(x_1081.x, x_1081.y, x_1081.z));
  let x_1084 : f32 = u_xlat23;
  let x_1085 : f32 = u_xlat23;
  u_xlat23 = (x_1084 + x_1085);
  let x_1087 : vec4<f32> = u_xlat4;
  let x_1089 : f32 = u_xlat23;
  let x_1093 : vec3<f32> = u_xlat11;
  u_xlat17 = ((vec3<f32>(x_1087.x, x_1087.y, x_1087.z) * -(vec3<f32>(x_1089, x_1089, x_1089))) + -(x_1093));
  let x_1096 : vec4<f32> = u_xlat4;
  let x_1098 : vec3<f32> = u_xlat11;
  u_xlat23 = dot(vec3<f32>(x_1096.x, x_1096.y, x_1096.z), x_1098);
  let x_1100 : f32 = u_xlat23;
  u_xlat23 = clamp(x_1100, 0.0f, 1.0f);
  let x_1102 : f32 = u_xlat23;
  u_xlat23 = (-(x_1102) + 1.0f);
  let x_1105 : f32 = u_xlat23;
  let x_1106 : f32 = u_xlat23;
  u_xlat23 = (x_1105 * x_1106);
  let x_1108 : f32 = u_xlat23;
  let x_1109 : f32 = u_xlat23;
  u_xlat23 = (x_1108 * x_1109);
  let x_1111 : f32 = u_xlat34;
  u_xlat7.x = ((-(x_1111) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1118 : f32 = u_xlat34;
  let x_1120 : f32 = u_xlat7.x;
  u_xlat34 = (x_1118 * x_1120);
  let x_1122 : f32 = u_xlat34;
  u_xlat34 = (x_1122 * 6.0f);
  let x_1133 : vec3<f32> = u_xlat17;
  let x_1134 : f32 = u_xlat34;
  let x_1135 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_1133, x_1134);
  u_xlat7 = x_1135;
  let x_1137 : f32 = u_xlat7.w;
  u_xlat34 = (x_1137 + -1.0f);
  let x_1140 : f32 = x_48.unity_SpecCube0_HDR.w;
  let x_1141 : f32 = u_xlat34;
  u_xlat34 = ((x_1140 * x_1141) + 1.0f);
  let x_1144 : f32 = u_xlat34;
  u_xlat34 = max(x_1144, 0.0f);
  let x_1146 : f32 = u_xlat34;
  u_xlat34 = log2(x_1146);
  let x_1148 : f32 = u_xlat34;
  let x_1150 : f32 = x_48.unity_SpecCube0_HDR.y;
  u_xlat34 = (x_1148 * x_1150);
  let x_1152 : f32 = u_xlat34;
  u_xlat34 = exp2(x_1152);
  let x_1154 : f32 = u_xlat34;
  let x_1156 : f32 = x_48.unity_SpecCube0_HDR.x;
  u_xlat34 = (x_1154 * x_1156);
  let x_1158 : vec4<f32> = u_xlat7;
  let x_1160 : f32 = u_xlat34;
  u_xlat17 = (vec3<f32>(x_1158.x, x_1158.y, x_1158.z) * vec3<f32>(x_1160, x_1160, x_1160));
  let x_1163 : f32 = u_xlat36;
  let x_1165 : f32 = u_xlat36;
  let x_1169 : vec2<f32> = ((vec2<f32>(x_1163, x_1163) * vec2<f32>(x_1165, x_1165)) + vec2<f32>(-1.0f, 1.0f));
  let x_1170 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1169.x, x_1169.y, x_1170.z, x_1170.w);
  let x_1173 : f32 = u_xlat7.y;
  u_xlat34 = (1.0f / x_1173);
  let x_1175 : vec3<f32> = u_xlat2;
  let x_1177 : vec4<f32> = u_xlat0;
  u_xlat18 = (-(x_1175) + vec3<f32>(x_1177.x, x_1177.x, x_1177.x));
  let x_1180 : f32 = u_xlat23;
  let x_1182 : vec3<f32> = u_xlat18;
  let x_1184 : vec3<f32> = u_xlat2;
  u_xlat18 = ((vec3<f32>(x_1180, x_1180, x_1180) * x_1182) + x_1184);
  let x_1186 : f32 = u_xlat34;
  let x_1188 : vec3<f32> = u_xlat18;
  u_xlat18 = (vec3<f32>(x_1186, x_1186, x_1186) * x_1188);
  let x_1190 : vec3<f32> = u_xlat17;
  let x_1191 : vec3<f32> = u_xlat18;
  u_xlat17 = (x_1190 * x_1191);
  let x_1193 : vec3<f32> = u_xlat5;
  let x_1194 : vec3<f32> = u_xlat3;
  let x_1196 : vec3<f32> = u_xlat17;
  u_xlat5 = ((x_1193 * x_1194) + x_1196);
  let x_1199 : f32 = u_xlat1.x;
  let x_1201 : f32 = x_48.unity_LightData.z;
  u_xlat0.x = (x_1199 * x_1201);
  let x_1204 : vec4<f32> = u_xlat4;
  let x_1207 : vec4<f32> = x_135.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_1204.x, x_1204.y, x_1204.z), vec3<f32>(x_1207.x, x_1207.y, x_1207.z));
  let x_1212 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1212, 0.0f, 1.0f);
  let x_1216 : f32 = u_xlat0.x;
  let x_1218 : f32 = u_xlat1.x;
  u_xlat0.x = (x_1216 * x_1218);
  let x_1221 : vec4<f32> = u_xlat0;
  let x_1224 : vec4<f32> = x_135.x_MainLightColor;
  let x_1226 : vec3<f32> = (vec3<f32>(x_1221.x, x_1221.x, x_1221.x) * vec3<f32>(x_1224.x, x_1224.y, x_1224.z));
  let x_1227 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1226.x, x_1227.y, x_1226.y, x_1226.z);
  let x_1229 : vec3<f32> = u_xlat11;
  let x_1231 : vec4<f32> = x_135.x_MainLightPosition;
  u_xlat17 = (x_1229 + vec3<f32>(x_1231.x, x_1231.y, x_1231.z));
  let x_1234 : vec3<f32> = u_xlat17;
  let x_1235 : vec3<f32> = u_xlat17;
  u_xlat0.x = dot(x_1234, x_1235);
  let x_1239 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1239, 1.17549435e-38f);
  let x_1243 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1243);
  let x_1246 : vec4<f32> = u_xlat0;
  let x_1248 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_1246.x, x_1246.x, x_1246.x) * x_1248);
  let x_1250 : vec4<f32> = u_xlat4;
  let x_1252 : vec3<f32> = u_xlat17;
  u_xlat0.x = dot(vec3<f32>(x_1250.x, x_1250.y, x_1250.z), x_1252);
  let x_1256 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1256, 0.0f, 1.0f);
  let x_1260 : vec4<f32> = x_135.x_MainLightPosition;
  let x_1262 : vec3<f32> = u_xlat17;
  u_xlat36 = dot(vec3<f32>(x_1260.x, x_1260.y, x_1260.z), x_1262);
  let x_1264 : f32 = u_xlat36;
  u_xlat36 = clamp(x_1264, 0.0f, 1.0f);
  let x_1267 : f32 = u_xlat0.x;
  let x_1269 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1267 * x_1269);
  let x_1273 : f32 = u_xlat0.x;
  let x_1275 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_1273 * x_1275) + 1.00001001358032226562f);
  let x_1280 : f32 = u_xlat36;
  let x_1281 : f32 = u_xlat36;
  u_xlat36 = (x_1280 * x_1281);
  let x_1284 : f32 = u_xlat0.x;
  let x_1286 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1284 * x_1286);
  let x_1289 : f32 = u_xlat36;
  u_xlat36 = max(x_1289, 0.10000000149011611938f);
  let x_1292 : f32 = u_xlat0.x;
  let x_1293 : f32 = u_xlat36;
  u_xlat0.x = (x_1292 * x_1293);
  let x_1296 : f32 = u_xlat38;
  let x_1298 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1296 * x_1298);
  let x_1301 : f32 = u_xlat37;
  let x_1303 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1301 / x_1303);
  let x_1306 : vec3<f32> = u_xlat2;
  let x_1307 : vec4<f32> = u_xlat0;
  let x_1310 : vec3<f32> = u_xlat3;
  u_xlat17 = ((x_1306 * vec3<f32>(x_1307.x, x_1307.x, x_1307.x)) + x_1310);
  let x_1312 : vec4<f32> = u_xlat1;
  let x_1314 : vec3<f32> = u_xlat17;
  let x_1315 : vec3<f32> = (vec3<f32>(x_1312.x, x_1312.z, x_1312.w) * x_1314);
  let x_1316 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1315.x, x_1316.y, x_1315.y, x_1315.z);
  let x_1319 : f32 = x_135.x_AdditionalLightsCount.x;
  let x_1321 : f32 = x_48.unity_LightData.y;
  u_xlat0.x = min(x_1319, x_1321);
  let x_1326 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1326));
  let x_1330 : f32 = u_xlat12.x;
  let x_1333 : f32 = x_666.x_AdditionalShadowFadeParams.x;
  let x_1336 : f32 = x_666.x_AdditionalShadowFadeParams.y;
  u_xlat12.x = ((x_1330 * x_1333) + x_1336);
  let x_1340 : f32 = u_xlat12.x;
  u_xlat12.x = clamp(x_1340, 0.0f, 1.0f);
  u_xlat17.x = 0.0f;
  u_xlat17.y = 0.0f;
  u_xlat17.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1353 : u32 = u_xlatu_loop_1;
    let x_1354 : u32 = u_xlatu0;
    if ((x_1353 < x_1354)) {
    } else {
      break;
    }
    let x_1357 : u32 = u_xlatu_loop_1;
    u_xlatu18 = (x_1357 >> 2u);
    let x_1360 : u32 = u_xlatu_loop_1;
    u_xlati29 = bitcast<i32>((x_1360 & 3u));
    let x_1363 : u32 = u_xlatu18;
    let x_1366 : vec4<f32> = x_48.unity_LightIndices[bitcast<i32>(x_1363)];
    let x_1376 : i32 = u_xlati29;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1381 : vec4<u32> = indexable[x_1376];
    u_xlat18.x = dot(x_1366, bitcast<vec4<f32>>(x_1381));
    let x_1387 : f32 = u_xlat18.x;
    u_xlati18 = i32(x_1387);
    let x_1389 : vec3<f32> = vs_INTERP7;
    let x_1400 : i32 = u_xlati18;
    let x_1402 : vec4<f32> = x_1399.x_AdditionalLightsPosition[x_1400];
    let x_1405 : i32 = u_xlati18;
    let x_1407 : vec4<f32> = x_1399.x_AdditionalLightsPosition[x_1405];
    let x_1409 : vec3<f32> = ((-(x_1389) * vec3<f32>(x_1402.w, x_1402.w, x_1402.w)) + vec3<f32>(x_1407.x, x_1407.y, x_1407.z));
    let x_1410 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1409.x, x_1409.y, x_1409.z, x_1410.w);
    let x_1413 : vec4<f32> = u_xlat8;
    let x_1415 : vec4<f32> = u_xlat8;
    u_xlat29 = dot(vec3<f32>(x_1413.x, x_1413.y, x_1413.z), vec3<f32>(x_1415.x, x_1415.y, x_1415.z));
    let x_1418 : f32 = u_xlat29;
    u_xlat29 = max(x_1418, 0.00006103515625f);
    let x_1421 : f32 = u_xlat29;
    u_xlat40 = inverseSqrt(x_1421);
    let x_1424 : f32 = u_xlat40;
    let x_1426 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1424, x_1424, x_1424) * vec3<f32>(x_1426.x, x_1426.y, x_1426.z));
    let x_1430 : f32 = u_xlat29;
    u_xlat41 = (1.0f / x_1430);
    let x_1432 : f32 = u_xlat29;
    let x_1433 : i32 = u_xlati18;
    let x_1435 : f32 = x_1399.x_AdditionalLightsAttenuation[x_1433].x;
    u_xlat29 = (x_1432 * x_1435);
    let x_1437 : f32 = u_xlat29;
    let x_1439 : f32 = u_xlat29;
    u_xlat29 = ((-(x_1437) * x_1439) + 1.0f);
    let x_1442 : f32 = u_xlat29;
    u_xlat29 = max(x_1442, 0.0f);
    let x_1444 : f32 = u_xlat29;
    let x_1445 : f32 = u_xlat29;
    u_xlat29 = (x_1444 * x_1445);
    let x_1447 : f32 = u_xlat29;
    let x_1448 : f32 = u_xlat41;
    u_xlat29 = (x_1447 * x_1448);
    let x_1450 : i32 = u_xlati18;
    let x_1452 : vec4<f32> = x_1399.x_AdditionalLightsSpotDir[x_1450];
    let x_1454 : vec3<f32> = u_xlat9;
    u_xlat41 = dot(vec3<f32>(x_1452.x, x_1452.y, x_1452.z), x_1454);
    let x_1456 : f32 = u_xlat41;
    let x_1457 : i32 = u_xlati18;
    let x_1459 : f32 = x_1399.x_AdditionalLightsAttenuation[x_1457].z;
    let x_1461 : i32 = u_xlati18;
    let x_1463 : f32 = x_1399.x_AdditionalLightsAttenuation[x_1461].w;
    u_xlat41 = ((x_1456 * x_1459) + x_1463);
    let x_1465 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1465, 0.0f, 1.0f);
    let x_1467 : f32 = u_xlat41;
    let x_1468 : f32 = u_xlat41;
    u_xlat41 = (x_1467 * x_1468);
    let x_1470 : f32 = u_xlat29;
    let x_1471 : f32 = u_xlat41;
    u_xlat29 = (x_1470 * x_1471);
    let x_1475 : i32 = u_xlati18;
    let x_1477 : f32 = x_666.x_AdditionalShadowParams[x_1475].w;
    u_xlati41 = i32(x_1477);
    let x_1480 : i32 = u_xlati41;
    u_xlatb42 = (x_1480 >= 0i);
    let x_1482 : bool = u_xlatb42;
    if (x_1482) {
      let x_1486 : i32 = u_xlati18;
      let x_1488 : f32 = x_666.x_AdditionalShadowParams[x_1486].z;
      u_xlatb42 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1488, x_1488, x_1488, x_1488))));
      let x_1492 : bool = u_xlatb42;
      if (x_1492) {
        let x_1496 : vec3<f32> = u_xlat9;
        let x_1499 : vec3<f32> = u_xlat9;
        let x_1502 : vec4<bool> = (abs(vec4<f32>(x_1496.z, x_1496.z, x_1496.y, x_1496.z)) >= abs(vec4<f32>(x_1499.x, x_1499.y, x_1499.x, x_1499.x)));
        let x_1504 : vec3<bool> = vec3<bool>(x_1502.x, x_1502.y, x_1502.z);
        let x_1505 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1504.x, x_1504.y, x_1504.z, x_1505.w);
        let x_1508 : bool = u_xlatb10.y;
        let x_1510 : bool = u_xlatb10.x;
        u_xlatb42 = (x_1508 & x_1510);
        let x_1512 : vec3<f32> = u_xlat9;
        let x_1515 : vec4<bool> = (-(vec4<f32>(x_1512.z, x_1512.y, x_1512.z, x_1512.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1516 : vec3<bool> = vec3<bool>(x_1515.x, x_1515.y, x_1515.w);
        let x_1517 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1516.x, x_1516.y, x_1517.z, x_1516.z);
        let x_1521 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_1521);
        let x_1526 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_1526);
        let x_1531 : bool = u_xlatb10.w;
        u_xlat43 = select(0.0f, 1.0f, x_1531);
        let x_1535 : bool = u_xlatb10.z;
        if (x_1535) {
          let x_1540 : f32 = u_xlat10.y;
          x_1536 = x_1540;
        } else {
          let x_1542 : f32 = u_xlat43;
          x_1536 = x_1542;
        }
        let x_1543 : f32 = x_1536;
        u_xlat21 = x_1543;
        let x_1545 : bool = u_xlatb42;
        if (x_1545) {
          let x_1550 : f32 = u_xlat10.x;
          x_1546 = x_1550;
        } else {
          let x_1552 : f32 = u_xlat21;
          x_1546 = x_1552;
        }
        let x_1553 : f32 = x_1546;
        u_xlat42 = x_1553;
        let x_1554 : i32 = u_xlati18;
        let x_1556 : f32 = x_666.x_AdditionalShadowParams[x_1554].w;
        u_xlat10.x = trunc(x_1556);
        let x_1559 : f32 = u_xlat42;
        let x_1561 : f32 = u_xlat10.x;
        u_xlat42 = (x_1559 + x_1561);
        let x_1563 : f32 = u_xlat42;
        u_xlati41 = i32(x_1563);
      }
      let x_1565 : i32 = u_xlati41;
      u_xlati41 = (x_1565 << bitcast<u32>(2i));
      let x_1567 : vec3<f32> = vs_INTERP7;
      let x_1570 : i32 = u_xlati41;
      let x_1573 : i32 = u_xlati41;
      let x_1577 : vec4<f32> = x_666.x_AdditionalLightsWorldToShadow[((x_1570 + 1i) / 4i)][((x_1573 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1567.y, x_1567.y, x_1567.y, x_1567.y) * x_1577);
      let x_1579 : i32 = u_xlati41;
      let x_1581 : i32 = u_xlati41;
      let x_1584 : vec4<f32> = x_666.x_AdditionalLightsWorldToShadow[(x_1579 / 4i)][(x_1581 % 4i)];
      let x_1585 : vec3<f32> = vs_INTERP7;
      let x_1588 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1584 * vec4<f32>(x_1585.x, x_1585.x, x_1585.x, x_1585.x)) + x_1588);
      let x_1590 : i32 = u_xlati41;
      let x_1593 : i32 = u_xlati41;
      let x_1597 : vec4<f32> = x_666.x_AdditionalLightsWorldToShadow[((x_1590 + 2i) / 4i)][((x_1593 + 2i) % 4i)];
      let x_1598 : vec3<f32> = vs_INTERP7;
      let x_1601 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1597 * vec4<f32>(x_1598.z, x_1598.z, x_1598.z, x_1598.z)) + x_1601);
      let x_1603 : vec4<f32> = u_xlat10;
      let x_1604 : i32 = u_xlati41;
      let x_1607 : i32 = u_xlati41;
      let x_1611 : vec4<f32> = x_666.x_AdditionalLightsWorldToShadow[((x_1604 + 3i) / 4i)][((x_1607 + 3i) % 4i)];
      u_xlat10 = (x_1603 + x_1611);
      let x_1613 : vec4<f32> = u_xlat10;
      let x_1615 : vec4<f32> = u_xlat10;
      let x_1617 : vec3<f32> = (vec3<f32>(x_1613.x, x_1613.y, x_1613.z) / vec3<f32>(x_1615.w, x_1615.w, x_1615.w));
      let x_1618 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1617.x, x_1617.y, x_1617.z, x_1618.w);
      let x_1621 : vec4<f32> = u_xlat10;
      let x_1622 : vec2<f32> = vec2<f32>(x_1621.x, x_1621.y);
      let x_1624 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1622.x, x_1622.y, x_1624);
      let x_1632 : vec3<f32> = txVec1;
      let x_1634 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1632.xy, x_1632.z);
      u_xlat41 = x_1634;
      let x_1635 : i32 = u_xlati18;
      let x_1637 : f32 = x_666.x_AdditionalShadowParams[x_1635].x;
      u_xlat42 = (1.0f + -(x_1637));
      let x_1640 : f32 = u_xlat41;
      let x_1641 : i32 = u_xlati18;
      let x_1643 : f32 = x_666.x_AdditionalShadowParams[x_1641].x;
      let x_1645 : f32 = u_xlat42;
      u_xlat41 = ((x_1640 * x_1643) + x_1645);
      let x_1648 : f32 = u_xlat10.z;
      u_xlatb42 = (0.0f >= x_1648);
      let x_1651 : f32 = u_xlat10.z;
      u_xlatb10.x = (x_1651 >= 1.0f);
      let x_1654 : bool = u_xlatb42;
      let x_1656 : bool = u_xlatb10.x;
      u_xlatb42 = (x_1654 | x_1656);
      let x_1658 : bool = u_xlatb42;
      let x_1659 : f32 = u_xlat41;
      u_xlat41 = select(x_1659, 1.0f, x_1658);
    } else {
      u_xlat41 = 1.0f;
    }
    let x_1662 : f32 = u_xlat41;
    u_xlat42 = (-(x_1662) + 1.0f);
    let x_1666 : f32 = u_xlat12.x;
    let x_1667 : f32 = u_xlat42;
    let x_1669 : f32 = u_xlat41;
    u_xlat41 = ((x_1666 * x_1667) + x_1669);
    let x_1671 : f32 = u_xlat29;
    let x_1672 : f32 = u_xlat41;
    u_xlat29 = (x_1671 * x_1672);
    let x_1674 : vec4<f32> = u_xlat4;
    let x_1676 : vec3<f32> = u_xlat9;
    u_xlat41 = dot(vec3<f32>(x_1674.x, x_1674.y, x_1674.z), x_1676);
    let x_1678 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1678, 0.0f, 1.0f);
    let x_1680 : f32 = u_xlat29;
    let x_1681 : f32 = u_xlat41;
    u_xlat29 = (x_1680 * x_1681);
    let x_1683 : f32 = u_xlat29;
    let x_1685 : i32 = u_xlati18;
    let x_1687 : vec4<f32> = x_1399.x_AdditionalLightsColor[x_1685];
    let x_1689 : vec3<f32> = (vec3<f32>(x_1683, x_1683, x_1683) * vec3<f32>(x_1687.x, x_1687.y, x_1687.z));
    let x_1690 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1689.x, x_1689.y, x_1689.z, x_1690.w);
    let x_1692 : vec4<f32> = u_xlat8;
    let x_1694 : f32 = u_xlat40;
    let x_1697 : vec3<f32> = u_xlat11;
    u_xlat18 = ((vec3<f32>(x_1692.x, x_1692.y, x_1692.z) * vec3<f32>(x_1694, x_1694, x_1694)) + x_1697);
    let x_1699 : vec3<f32> = u_xlat18;
    let x_1700 : vec3<f32> = u_xlat18;
    u_xlat8.x = dot(x_1699, x_1700);
    let x_1704 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_1704, 1.17549435e-38f);
    let x_1708 : f32 = u_xlat8.x;
    u_xlat8.x = inverseSqrt(x_1708);
    let x_1711 : vec3<f32> = u_xlat18;
    let x_1712 : vec4<f32> = u_xlat8;
    u_xlat18 = (x_1711 * vec3<f32>(x_1712.x, x_1712.x, x_1712.x));
    let x_1715 : vec4<f32> = u_xlat4;
    let x_1717 : vec3<f32> = u_xlat18;
    u_xlat8.x = dot(vec3<f32>(x_1715.x, x_1715.y, x_1715.z), x_1717);
    let x_1721 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_1721, 0.0f, 1.0f);
    let x_1724 : vec3<f32> = u_xlat9;
    let x_1725 : vec3<f32> = u_xlat18;
    u_xlat18.x = dot(x_1724, x_1725);
    let x_1729 : f32 = u_xlat18.x;
    u_xlat18.x = clamp(x_1729, 0.0f, 1.0f);
    let x_1733 : f32 = u_xlat8.x;
    let x_1735 : f32 = u_xlat8.x;
    u_xlat29 = (x_1733 * x_1735);
    let x_1737 : f32 = u_xlat29;
    let x_1739 : f32 = u_xlat7.x;
    u_xlat29 = ((x_1737 * x_1739) + 1.00001001358032226562f);
    let x_1743 : f32 = u_xlat18.x;
    let x_1745 : f32 = u_xlat18.x;
    u_xlat18.x = (x_1743 * x_1745);
    let x_1748 : f32 = u_xlat29;
    let x_1749 : f32 = u_xlat29;
    u_xlat29 = (x_1748 * x_1749);
    let x_1752 : f32 = u_xlat18.x;
    u_xlat18.x = max(x_1752, 0.10000000149011611938f);
    let x_1756 : f32 = u_xlat18.x;
    let x_1757 : f32 = u_xlat29;
    u_xlat18.x = (x_1756 * x_1757);
    let x_1760 : f32 = u_xlat38;
    let x_1762 : f32 = u_xlat18.x;
    u_xlat18.x = (x_1760 * x_1762);
    let x_1765 : f32 = u_xlat37;
    let x_1767 : f32 = u_xlat18.x;
    u_xlat18.x = (x_1765 / x_1767);
    let x_1770 : vec3<f32> = u_xlat2;
    let x_1771 : vec3<f32> = u_xlat18;
    let x_1774 : vec3<f32> = u_xlat3;
    u_xlat18 = ((x_1770 * vec3<f32>(x_1771.x, x_1771.x, x_1771.x)) + x_1774);
    let x_1776 : vec3<f32> = u_xlat18;
    let x_1777 : vec4<f32> = u_xlat10;
    let x_1780 : vec3<f32> = u_xlat17;
    u_xlat17 = ((x_1776 * vec3<f32>(x_1777.x, x_1777.y, x_1777.z)) + x_1780);

    continuing {
      let x_1782 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1782 + bitcast<u32>(1i));
    }
  }
  let x_1784 : vec3<f32> = u_xlat5;
  let x_1785 : vec4<f32> = u_xlat6;
  let x_1788 : vec4<f32> = u_xlat1;
  let x_1790 : vec3<f32> = ((x_1784 * vec3<f32>(x_1785.x, x_1785.x, x_1785.x)) + vec3<f32>(x_1788.x, x_1788.z, x_1788.w));
  let x_1791 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1790.x, x_1790.y, x_1790.z, x_1791.w);
  let x_1793 : vec3<f32> = u_xlat17;
  let x_1794 : vec4<f32> = u_xlat0;
  let x_1796 : vec3<f32> = (x_1793 + vec3<f32>(x_1794.x, x_1794.y, x_1794.z));
  let x_1797 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1796.x, x_1796.y, x_1796.z, x_1797.w);
  let x_1800 : f32 = u_xlat35;
  let x_1801 : f32 = u_xlat35;
  u_xlat33 = (x_1800 * -(x_1801));
  let x_1804 : f32 = u_xlat33;
  u_xlat33 = exp2(x_1804);
  let x_1806 : vec4<f32> = u_xlat0;
  let x_1809 : vec4<f32> = x_135.unity_FogColor;
  let x_1812 : vec3<f32> = (vec3<f32>(x_1806.x, x_1806.y, x_1806.z) + -(vec3<f32>(x_1809.x, x_1809.y, x_1809.z)));
  let x_1813 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1812.x, x_1812.y, x_1812.z, x_1813.w);
  let x_1817 : f32 = u_xlat33;
  let x_1819 : vec4<f32> = u_xlat0;
  let x_1823 : vec4<f32> = x_135.unity_FogColor;
  let x_1825 : vec3<f32> = ((vec3<f32>(x_1817, x_1817, x_1817) * vec3<f32>(x_1819.x, x_1819.y, x_1819.z)) + vec3<f32>(x_1823.x, x_1823.y, x_1823.z));
  let x_1826 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1825.x, x_1825.y, x_1825.z, x_1826.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(3) vs_INTERP8_param : vec3<f32>, @location(0) vs_INTERP4_param : vec4<f32>, @location(1) vs_INTERP5_param : vec4<f32>, @location(2) vs_INTERP7_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP7 = vs_INTERP7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


