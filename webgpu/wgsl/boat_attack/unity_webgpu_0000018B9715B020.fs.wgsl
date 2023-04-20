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
  unity_OrthoParams : vec4<f32>,
  /* @offset(96) */
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

@group(0) @binding(6) var x_MainTex : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainTex : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_135 : PGlobals;

var<private> u_xlat34 : f32;

var<private> vs_INTERP7 : vec3<f32>;

var<private> u_xlat35 : f32;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(9) var Texture2D_D7D66558 : texture_2d<f32>;

@group(0) @binding(17) var samplerTexture2D_D7D66558 : sampler;

@group(1) @binding(4) var<uniform> x_195 : UnityPerMaterial;

var<private> u_xlat36 : f32;

var<private> u_xlat37 : f32;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(7) var Texture2D_DE8BF47E : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_DE8BF47E : sampler;

var<private> u_xlat18 : vec3<f32>;

var<private> u_xlat12 : vec2<f32>;

var<private> u_xlat15 : vec3<f32>;

@group(0) @binding(8) var Texture2D_C005B064 : texture_2d<f32>;

@group(0) @binding(16) var samplerTexture2D_C005B064 : sampler;

@group(0) @binding(5) var x_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D : texture_2d<f32>;

@group(0) @binding(13) var sampler_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D : sampler;

var<private> u_xlatb1 : bool;

@group(1) @binding(3) var<uniform> x_679 : LightShadows;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu1 : u32;

var<private> u_xlati1 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat38 : f32;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb12 : bool;

var<private> u_xlatb23 : bool;

var<private> u_xlat23 : f32;

var<private> u_xlat39 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu0 : u32;

var<private> u_xlatu39 : u32;

var<private> u_xlati18 : i32;

var<private> u_xlati39 : i32;

@group(1) @binding(1) var<uniform> x_1387 : AdditionalLights;

var<private> u_xlat19 : f32;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat30 : f32;

var<private> u_xlati30 : i32;

var<private> u_xlatb41 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat42 : f32;

var<private> u_xlat41 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb42 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu35 : u32;

var<private> u_xlatb39 : bool;

fn main_1() {
  var x_638 : f32;
  var x_650 : f32;
  var x_661 : f32;
  var txVec0 : vec3<f32>;
  var x_1006 : f32;
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
  u_xlat11 = (x_603 * vec3<f32>(x_604.x, x_604.x, x_604.x));
  let x_609 : f32 = x_135.unity_OrthoParams.w;
  u_xlatb1 = (x_609 == 0.0f);
  let x_611 : vec3<f32> = vs_INTERP7;
  let x_615 : vec3<f32> = x_135.x_WorldSpaceCameraPos;
  let x_616 : vec3<f32> = (-(x_611) + x_615);
  let x_617 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_616.x, x_616.y, x_616.z, x_617.w);
  let x_619 : vec4<f32> = u_xlat4;
  let x_621 : vec4<f32> = u_xlat4;
  u_xlat12.x = dot(vec3<f32>(x_619.x, x_619.y, x_619.z), vec3<f32>(x_621.x, x_621.y, x_621.z));
  let x_626 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_626);
  let x_629 : vec2<f32> = u_xlat12;
  let x_631 : vec4<f32> = u_xlat4;
  let x_633 : vec3<f32> = (vec3<f32>(x_629.x, x_629.x, x_629.x) * vec3<f32>(x_631.x, x_631.y, x_631.z));
  let x_634 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_633.x, x_633.y, x_633.z, x_634.w);
  let x_636 : bool = u_xlatb1;
  if (x_636) {
    let x_642 : f32 = u_xlat4.x;
    x_638 = x_642;
  } else {
    let x_646 : f32 = x_135.unity_MatrixV[0i].z;
    x_638 = x_646;
  }
  let x_647 : f32 = x_638;
  u_xlat5.x = x_647;
  let x_649 : bool = u_xlatb1;
  if (x_649) {
    let x_654 : f32 = u_xlat4.y;
    x_650 = x_654;
  } else {
    let x_657 : f32 = x_135.unity_MatrixV[1i].z;
    x_650 = x_657;
  }
  let x_658 : f32 = x_650;
  u_xlat5.y = x_658;
  let x_660 : bool = u_xlatb1;
  if (x_660) {
    let x_665 : f32 = u_xlat4.z;
    x_661 = x_665;
  } else {
    let x_668 : f32 = x_135.unity_MatrixV[2i].z;
    x_661 = x_668;
  }
  let x_669 : f32 = x_661;
  u_xlat5.z = x_669;
  let x_671 : vec3<f32> = vs_INTERP7;
  let x_681 : vec4<f32> = x_679.x_CascadeShadowSplitSpheres0;
  let x_684 : vec3<f32> = (x_671 + -(vec3<f32>(x_681.x, x_681.y, x_681.z)));
  let x_685 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_684.x, x_684.y, x_684.z, x_685.w);
  let x_687 : vec3<f32> = vs_INTERP7;
  let x_689 : vec4<f32> = x_679.x_CascadeShadowSplitSpheres1;
  let x_692 : vec3<f32> = (x_687 + -(vec3<f32>(x_689.x, x_689.y, x_689.z)));
  let x_693 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_692.x, x_692.y, x_692.z, x_693.w);
  let x_695 : vec3<f32> = vs_INTERP7;
  let x_697 : vec4<f32> = x_679.x_CascadeShadowSplitSpheres2;
  let x_700 : vec3<f32> = (x_695 + -(vec3<f32>(x_697.x, x_697.y, x_697.z)));
  let x_701 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_700.x, x_700.y, x_700.z, x_701.w);
  let x_703 : vec3<f32> = vs_INTERP7;
  let x_705 : vec4<f32> = x_679.x_CascadeShadowSplitSpheres3;
  u_xlat18 = (x_703 + -(vec3<f32>(x_705.x, x_705.y, x_705.z)));
  let x_710 : vec4<f32> = u_xlat1;
  let x_712 : vec4<f32> = u_xlat1;
  u_xlat8.x = dot(vec3<f32>(x_710.x, x_710.y, x_710.z), vec3<f32>(x_712.x, x_712.y, x_712.z));
  let x_716 : vec4<f32> = u_xlat4;
  let x_718 : vec4<f32> = u_xlat4;
  u_xlat8.y = dot(vec3<f32>(x_716.x, x_716.y, x_716.z), vec3<f32>(x_718.x, x_718.y, x_718.z));
  let x_722 : vec4<f32> = u_xlat6;
  let x_724 : vec4<f32> = u_xlat6;
  u_xlat8.z = dot(vec3<f32>(x_722.x, x_722.y, x_722.z), vec3<f32>(x_724.x, x_724.y, x_724.z));
  let x_728 : vec3<f32> = u_xlat18;
  let x_729 : vec3<f32> = u_xlat18;
  u_xlat8.w = dot(x_728, x_729);
  let x_735 : vec4<f32> = u_xlat8;
  let x_737 : vec4<f32> = x_679.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_735 < x_737);
  let x_740 : bool = u_xlatb4.x;
  u_xlat6.x = select(0.0f, 1.0f, x_740);
  let x_744 : bool = u_xlatb4.y;
  u_xlat6.y = select(0.0f, 1.0f, x_744);
  let x_748 : bool = u_xlatb4.z;
  u_xlat6.z = select(0.0f, 1.0f, x_748);
  let x_752 : bool = u_xlatb4.w;
  u_xlat6.w = select(0.0f, 1.0f, x_752);
  let x_756 : bool = u_xlatb4.x;
  u_xlat1.x = select(-0.0f, -1.0f, x_756);
  let x_761 : bool = u_xlatb4.y;
  u_xlat1.y = select(-0.0f, -1.0f, x_761);
  let x_765 : bool = u_xlatb4.z;
  u_xlat1.z = select(-0.0f, -1.0f, x_765);
  let x_768 : vec4<f32> = u_xlat1;
  let x_770 : vec4<f32> = u_xlat6;
  let x_772 : vec3<f32> = (vec3<f32>(x_768.x, x_768.y, x_768.z) + vec3<f32>(x_770.y, x_770.z, x_770.w));
  let x_773 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_772.x, x_772.y, x_772.z, x_773.w);
  let x_775 : vec4<f32> = u_xlat1;
  let x_778 : vec3<f32> = max(vec3<f32>(x_775.x, x_775.y, x_775.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_779 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_779.x, x_778.x, x_778.y, x_778.z);
  let x_781 : vec4<f32> = u_xlat6;
  u_xlat1.x = dot(x_781, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_786 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_786) + 4.0f);
  let x_793 : f32 = u_xlat1.x;
  u_xlatu1 = u32(x_793);
  let x_797 : u32 = u_xlatu1;
  u_xlati1 = (bitcast<i32>(x_797) << bitcast<u32>(2i));
  let x_800 : vec3<f32> = vs_INTERP7;
  let x_802 : i32 = u_xlati1;
  let x_805 : i32 = u_xlati1;
  let x_809 : vec4<f32> = x_679.x_MainLightWorldToShadow[((x_802 + 1i) / 4i)][((x_805 + 1i) % 4i)];
  let x_811 : vec3<f32> = (vec3<f32>(x_800.y, x_800.y, x_800.y) * vec3<f32>(x_809.x, x_809.y, x_809.z));
  let x_812 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_811.x, x_811.y, x_811.z, x_812.w);
  let x_814 : i32 = u_xlati1;
  let x_816 : i32 = u_xlati1;
  let x_819 : vec4<f32> = x_679.x_MainLightWorldToShadow[(x_814 / 4i)][(x_816 % 4i)];
  let x_821 : vec3<f32> = vs_INTERP7;
  let x_824 : vec4<f32> = u_xlat4;
  let x_826 : vec3<f32> = ((vec3<f32>(x_819.x, x_819.y, x_819.z) * vec3<f32>(x_821.x, x_821.x, x_821.x)) + vec3<f32>(x_824.x, x_824.y, x_824.z));
  let x_827 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_826.x, x_826.y, x_826.z, x_827.w);
  let x_829 : i32 = u_xlati1;
  let x_832 : i32 = u_xlati1;
  let x_836 : vec4<f32> = x_679.x_MainLightWorldToShadow[((x_829 + 2i) / 4i)][((x_832 + 2i) % 4i)];
  let x_838 : vec3<f32> = vs_INTERP7;
  let x_841 : vec4<f32> = u_xlat4;
  let x_843 : vec3<f32> = ((vec3<f32>(x_836.x, x_836.y, x_836.z) * vec3<f32>(x_838.z, x_838.z, x_838.z)) + vec3<f32>(x_841.x, x_841.y, x_841.z));
  let x_844 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_843.x, x_843.y, x_843.z, x_844.w);
  let x_846 : vec4<f32> = u_xlat4;
  let x_848 : i32 = u_xlati1;
  let x_851 : i32 = u_xlati1;
  let x_855 : vec4<f32> = x_679.x_MainLightWorldToShadow[((x_848 + 3i) / 4i)][((x_851 + 3i) % 4i)];
  let x_857 : vec3<f32> = (vec3<f32>(x_846.x, x_846.y, x_846.z) + vec3<f32>(x_855.x, x_855.y, x_855.z));
  let x_858 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_857.x, x_857.y, x_857.z, x_858.w);
  let x_867 : vec2<f32> = vs_INTERP0;
  let x_869 : f32 = x_135.x_GlobalMipBias.x;
  let x_870 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_867, x_869);
  u_xlat4 = x_870;
  let x_875 : vec2<f32> = vs_INTERP0;
  let x_877 : f32 = x_135.x_GlobalMipBias.x;
  let x_878 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_875, x_877);
  let x_879 : vec3<f32> = vec3<f32>(x_878.x, x_878.y, x_878.z);
  let x_880 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_879.x, x_879.y, x_879.z, x_880.w);
  let x_882 : vec4<f32> = u_xlat4;
  let x_885 : vec3<f32> = (vec3<f32>(x_882.x, x_882.y, x_882.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_886 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_885.x, x_885.y, x_885.z, x_886.w);
  let x_888 : vec3<f32> = u_xlat11;
  let x_889 : vec4<f32> = u_xlat4;
  u_xlat35 = dot(x_888, vec3<f32>(x_889.x, x_889.y, x_889.z));
  let x_892 : f32 = u_xlat35;
  u_xlat35 = (x_892 + 0.5f);
  let x_895 : f32 = u_xlat35;
  let x_897 : vec4<f32> = u_xlat6;
  let x_899 : vec3<f32> = (vec3<f32>(x_895, x_895, x_895) * vec3<f32>(x_897.x, x_897.y, x_897.z));
  let x_900 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_899.x, x_899.y, x_899.z, x_900.w);
  let x_903 : f32 = u_xlat4.w;
  u_xlat35 = max(x_903, 0.00009999999747378752f);
  let x_906 : vec4<f32> = u_xlat4;
  let x_908 : f32 = u_xlat35;
  let x_910 : vec3<f32> = (vec3<f32>(x_906.x, x_906.y, x_906.z) / vec3<f32>(x_908, x_908, x_908));
  let x_911 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_910.x, x_910.y, x_910.z, x_911.w);
  let x_913 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_913 * vec3<f32>(0.86399996280670166016f, 0.86399996280670166016f, 0.86399996280670166016f));
  let x_917 : vec4<f32> = u_xlat1;
  let x_919 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_917.w, x_917.w, x_917.w) * x_919) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_924 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_924 * vec3<f32>(0.10000000149011611938f, 0.10000000149011611938f, 0.10000000149011611938f)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_931 : f32 = u_xlat0.x;
  u_xlat34 = (-(x_931) + 1.0f);
  let x_934 : f32 = u_xlat34;
  let x_935 : f32 = u_xlat34;
  u_xlat35 = (x_934 * x_935);
  let x_937 : f32 = u_xlat35;
  u_xlat35 = max(x_937, 0.0078125f);
  let x_940 : f32 = u_xlat35;
  let x_941 : f32 = u_xlat35;
  u_xlat36 = (x_940 * x_941);
  let x_944 : f32 = u_xlat0.x;
  u_xlat0.x = (x_944 + 0.13600003719329833984f);
  let x_949 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_949, 1.0f);
  let x_952 : f32 = u_xlat35;
  u_xlat37 = ((x_952 * 4.0f) + 2.0f);
  let x_957 : f32 = u_xlat7.x;
  u_xlat38 = min(x_957, 1.0f);
  let x_961 : vec4<f32> = u_xlat1;
  let x_962 : vec2<f32> = vec2<f32>(x_961.x, x_961.y);
  let x_964 : f32 = u_xlat1.z;
  txVec0 = vec3<f32>(x_962.x, x_962.y, x_964);
  let x_976 : vec3<f32> = txVec0;
  let x_978 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_976.xy, x_976.z);
  u_xlat1.x = x_978;
  let x_981 : f32 = x_679.x_MainLightShadowParams.x;
  u_xlat12.x = (-(x_981) + 1.0f);
  let x_986 : f32 = u_xlat1.x;
  let x_988 : f32 = x_679.x_MainLightShadowParams.x;
  let x_991 : f32 = u_xlat12.x;
  u_xlat1.x = ((x_986 * x_988) + x_991);
  let x_996 : f32 = u_xlat1.z;
  u_xlatb12 = (0.0f >= x_996);
  let x_1000 : f32 = u_xlat1.z;
  u_xlatb23 = (x_1000 >= 1.0f);
  let x_1002 : bool = u_xlatb23;
  let x_1003 : bool = u_xlatb12;
  u_xlatb12 = (x_1002 | x_1003);
  let x_1005 : bool = u_xlatb12;
  if (x_1005) {
    x_1006 = 1.0f;
  } else {
    let x_1011 : f32 = u_xlat1.x;
    x_1006 = x_1011;
  }
  let x_1012 : f32 = x_1006;
  u_xlat1.x = x_1012;
  let x_1014 : vec3<f32> = vs_INTERP7;
  let x_1016 : vec3<f32> = x_135.x_WorldSpaceCameraPos;
  let x_1018 : vec3<f32> = (x_1014 + -(x_1016));
  let x_1019 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1018.x, x_1018.y, x_1018.z, x_1019.w);
  let x_1021 : vec4<f32> = u_xlat6;
  let x_1023 : vec4<f32> = u_xlat6;
  u_xlat12.x = dot(vec3<f32>(x_1021.x, x_1021.y, x_1021.z), vec3<f32>(x_1023.x, x_1023.y, x_1023.z));
  let x_1029 : f32 = u_xlat12.x;
  let x_1031 : f32 = x_679.x_MainLightShadowParams.z;
  let x_1034 : f32 = x_679.x_MainLightShadowParams.w;
  u_xlat23 = ((x_1029 * x_1031) + x_1034);
  let x_1036 : f32 = u_xlat23;
  u_xlat23 = clamp(x_1036, 0.0f, 1.0f);
  let x_1039 : f32 = u_xlat1.x;
  u_xlat6.x = (-(x_1039) + 1.0f);
  let x_1043 : f32 = u_xlat23;
  let x_1045 : f32 = u_xlat6.x;
  let x_1048 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1043 * x_1045) + x_1048);
  let x_1051 : vec3<f32> = u_xlat5;
  let x_1053 : vec3<f32> = u_xlat11;
  u_xlat23 = dot(-(x_1051), x_1053);
  let x_1055 : f32 = u_xlat23;
  let x_1056 : f32 = u_xlat23;
  u_xlat23 = (x_1055 + x_1056);
  let x_1058 : vec3<f32> = u_xlat11;
  let x_1059 : f32 = u_xlat23;
  let x_1063 : vec3<f32> = u_xlat5;
  let x_1065 : vec3<f32> = ((x_1058 * -(vec3<f32>(x_1059, x_1059, x_1059))) + -(x_1063));
  let x_1066 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1065.x, x_1065.y, x_1065.z, x_1066.w);
  let x_1068 : vec3<f32> = u_xlat11;
  let x_1069 : vec3<f32> = u_xlat5;
  u_xlat23 = dot(x_1068, x_1069);
  let x_1071 : f32 = u_xlat23;
  u_xlat23 = clamp(x_1071, 0.0f, 1.0f);
  let x_1073 : f32 = u_xlat23;
  u_xlat23 = (-(x_1073) + 1.0f);
  let x_1076 : f32 = u_xlat23;
  let x_1077 : f32 = u_xlat23;
  u_xlat23 = (x_1076 * x_1077);
  let x_1079 : f32 = u_xlat23;
  let x_1080 : f32 = u_xlat23;
  u_xlat23 = (x_1079 * x_1080);
  let x_1083 : f32 = u_xlat34;
  u_xlat39 = ((-(x_1083) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1089 : f32 = u_xlat34;
  let x_1090 : f32 = u_xlat39;
  u_xlat34 = (x_1089 * x_1090);
  let x_1092 : f32 = u_xlat34;
  u_xlat34 = (x_1092 * 6.0f);
  let x_1103 : vec4<f32> = u_xlat6;
  let x_1105 : f32 = u_xlat34;
  let x_1106 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1103.x, x_1103.y, x_1103.z), x_1105);
  u_xlat6 = x_1106;
  let x_1108 : f32 = u_xlat6.w;
  u_xlat34 = (x_1108 + -1.0f);
  let x_1111 : f32 = x_48.unity_SpecCube0_HDR.w;
  let x_1112 : f32 = u_xlat34;
  u_xlat34 = ((x_1111 * x_1112) + 1.0f);
  let x_1115 : f32 = u_xlat34;
  u_xlat34 = max(x_1115, 0.0f);
  let x_1117 : f32 = u_xlat34;
  u_xlat34 = log2(x_1117);
  let x_1119 : f32 = u_xlat34;
  let x_1121 : f32 = x_48.unity_SpecCube0_HDR.y;
  u_xlat34 = (x_1119 * x_1121);
  let x_1123 : f32 = u_xlat34;
  u_xlat34 = exp2(x_1123);
  let x_1125 : f32 = u_xlat34;
  let x_1127 : f32 = x_48.unity_SpecCube0_HDR.x;
  u_xlat34 = (x_1125 * x_1127);
  let x_1129 : vec4<f32> = u_xlat6;
  let x_1131 : f32 = u_xlat34;
  let x_1133 : vec3<f32> = (vec3<f32>(x_1129.x, x_1129.y, x_1129.z) * vec3<f32>(x_1131, x_1131, x_1131));
  let x_1134 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1133.x, x_1133.y, x_1133.z, x_1134.w);
  let x_1136 : f32 = u_xlat35;
  let x_1138 : f32 = u_xlat35;
  let x_1142 : vec2<f32> = ((vec2<f32>(x_1136, x_1136) * vec2<f32>(x_1138, x_1138)) + vec2<f32>(-1.0f, 1.0f));
  let x_1143 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1142.x, x_1142.y, x_1143.z, x_1143.w);
  let x_1146 : f32 = u_xlat7.y;
  u_xlat34 = (1.0f / x_1146);
  let x_1148 : vec3<f32> = u_xlat2;
  let x_1150 : vec4<f32> = u_xlat0;
  u_xlat18 = (-(x_1148) + vec3<f32>(x_1150.x, x_1150.x, x_1150.x));
  let x_1153 : f32 = u_xlat23;
  let x_1155 : vec3<f32> = u_xlat18;
  let x_1157 : vec3<f32> = u_xlat2;
  u_xlat18 = ((vec3<f32>(x_1153, x_1153, x_1153) * x_1155) + x_1157);
  let x_1159 : f32 = u_xlat34;
  let x_1161 : vec3<f32> = u_xlat18;
  u_xlat18 = (vec3<f32>(x_1159, x_1159, x_1159) * x_1161);
  let x_1163 : vec4<f32> = u_xlat6;
  let x_1165 : vec3<f32> = u_xlat18;
  let x_1166 : vec3<f32> = (vec3<f32>(x_1163.x, x_1163.y, x_1163.z) * x_1165);
  let x_1167 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1166.x, x_1166.y, x_1166.z, x_1167.w);
  let x_1169 : vec4<f32> = u_xlat4;
  let x_1171 : vec3<f32> = u_xlat3;
  let x_1173 : vec4<f32> = u_xlat6;
  let x_1175 : vec3<f32> = ((vec3<f32>(x_1169.x, x_1169.y, x_1169.z) * x_1171) + vec3<f32>(x_1173.x, x_1173.y, x_1173.z));
  let x_1176 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1175.x, x_1175.y, x_1175.z, x_1176.w);
  let x_1179 : f32 = u_xlat1.x;
  let x_1181 : f32 = x_48.unity_LightData.z;
  u_xlat0.x = (x_1179 * x_1181);
  let x_1184 : vec3<f32> = u_xlat11;
  let x_1186 : vec4<f32> = x_135.x_MainLightPosition;
  u_xlat1.x = dot(x_1184, vec3<f32>(x_1186.x, x_1186.y, x_1186.z));
  let x_1191 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1191, 0.0f, 1.0f);
  let x_1195 : f32 = u_xlat0.x;
  let x_1197 : f32 = u_xlat1.x;
  u_xlat0.x = (x_1195 * x_1197);
  let x_1200 : vec4<f32> = u_xlat0;
  let x_1203 : vec4<f32> = x_135.x_MainLightColor;
  let x_1205 : vec3<f32> = (vec3<f32>(x_1200.x, x_1200.x, x_1200.x) * vec3<f32>(x_1203.x, x_1203.y, x_1203.z));
  let x_1206 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1205.x, x_1206.y, x_1205.y, x_1205.z);
  let x_1208 : vec3<f32> = u_xlat5;
  let x_1210 : vec4<f32> = x_135.x_MainLightPosition;
  let x_1212 : vec3<f32> = (x_1208 + vec3<f32>(x_1210.x, x_1210.y, x_1210.z));
  let x_1213 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1212.x, x_1212.y, x_1212.z, x_1213.w);
  let x_1215 : vec4<f32> = u_xlat6;
  let x_1217 : vec4<f32> = u_xlat6;
  u_xlat0.x = dot(vec3<f32>(x_1215.x, x_1215.y, x_1215.z), vec3<f32>(x_1217.x, x_1217.y, x_1217.z));
  let x_1222 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1222, 1.17549435e-38f);
  let x_1226 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1226);
  let x_1229 : vec4<f32> = u_xlat0;
  let x_1231 : vec4<f32> = u_xlat6;
  let x_1233 : vec3<f32> = (vec3<f32>(x_1229.x, x_1229.x, x_1229.x) * vec3<f32>(x_1231.x, x_1231.y, x_1231.z));
  let x_1234 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1233.x, x_1233.y, x_1233.z, x_1234.w);
  let x_1236 : vec3<f32> = u_xlat11;
  let x_1237 : vec4<f32> = u_xlat6;
  u_xlat0.x = dot(x_1236, vec3<f32>(x_1237.x, x_1237.y, x_1237.z));
  let x_1242 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1242, 0.0f, 1.0f);
  let x_1246 : vec4<f32> = x_135.x_MainLightPosition;
  let x_1248 : vec4<f32> = u_xlat6;
  u_xlat35 = dot(vec3<f32>(x_1246.x, x_1246.y, x_1246.z), vec3<f32>(x_1248.x, x_1248.y, x_1248.z));
  let x_1251 : f32 = u_xlat35;
  u_xlat35 = clamp(x_1251, 0.0f, 1.0f);
  let x_1254 : f32 = u_xlat0.x;
  let x_1256 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1254 * x_1256);
  let x_1260 : f32 = u_xlat0.x;
  let x_1262 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_1260 * x_1262) + 1.00001001358032226562f);
  let x_1267 : f32 = u_xlat35;
  let x_1268 : f32 = u_xlat35;
  u_xlat35 = (x_1267 * x_1268);
  let x_1271 : f32 = u_xlat0.x;
  let x_1273 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1271 * x_1273);
  let x_1276 : f32 = u_xlat35;
  u_xlat35 = max(x_1276, 0.10000000149011611938f);
  let x_1279 : f32 = u_xlat0.x;
  let x_1280 : f32 = u_xlat35;
  u_xlat0.x = (x_1279 * x_1280);
  let x_1283 : f32 = u_xlat37;
  let x_1285 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1283 * x_1285);
  let x_1288 : f32 = u_xlat36;
  let x_1290 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1288 / x_1290);
  let x_1293 : vec3<f32> = u_xlat2;
  let x_1294 : vec4<f32> = u_xlat0;
  let x_1297 : vec3<f32> = u_xlat3;
  let x_1298 : vec3<f32> = ((x_1293 * vec3<f32>(x_1294.x, x_1294.x, x_1294.x)) + x_1297);
  let x_1299 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1298.x, x_1298.y, x_1298.z, x_1299.w);
  let x_1301 : vec4<f32> = u_xlat1;
  let x_1303 : vec4<f32> = u_xlat6;
  let x_1305 : vec3<f32> = (vec3<f32>(x_1301.x, x_1301.z, x_1301.w) * vec3<f32>(x_1303.x, x_1303.y, x_1303.z));
  let x_1306 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1305.x, x_1306.y, x_1305.y, x_1305.z);
  let x_1309 : f32 = x_135.x_AdditionalLightsCount.x;
  let x_1311 : f32 = x_48.unity_LightData.y;
  u_xlat0.x = min(x_1309, x_1311);
  let x_1316 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1316));
  let x_1320 : f32 = u_xlat12.x;
  let x_1323 : f32 = x_679.x_AdditionalShadowFadeParams.x;
  let x_1326 : f32 = x_679.x_AdditionalShadowFadeParams.y;
  u_xlat12.x = ((x_1320 * x_1323) + x_1326);
  let x_1330 : f32 = u_xlat12.x;
  u_xlat12.x = clamp(x_1330, 0.0f, 1.0f);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1343 : u32 = u_xlatu_loop_1;
    let x_1344 : u32 = u_xlatu0;
    if ((x_1343 < x_1344)) {
    } else {
      break;
    }
    let x_1347 : u32 = u_xlatu_loop_1;
    u_xlatu39 = (x_1347 >> 2u);
    let x_1350 : u32 = u_xlatu_loop_1;
    u_xlati18 = bitcast<i32>((x_1350 & 3u));
    let x_1353 : u32 = u_xlatu39;
    let x_1356 : vec4<f32> = x_48.unity_LightIndices[bitcast<i32>(x_1353)];
    let x_1366 : i32 = u_xlati18;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1371 : vec4<u32> = indexable[x_1366];
    u_xlat39 = dot(x_1356, bitcast<vec4<f32>>(x_1371));
    let x_1375 : f32 = u_xlat39;
    u_xlati39 = i32(x_1375);
    let x_1377 : vec3<f32> = vs_INTERP7;
    let x_1388 : i32 = u_xlati39;
    let x_1390 : vec4<f32> = x_1387.x_AdditionalLightsPosition[x_1388];
    let x_1393 : i32 = u_xlati39;
    let x_1395 : vec4<f32> = x_1387.x_AdditionalLightsPosition[x_1393];
    u_xlat18 = ((-(x_1377) * vec3<f32>(x_1390.w, x_1390.w, x_1390.w)) + vec3<f32>(x_1395.x, x_1395.y, x_1395.z));
    let x_1398 : vec3<f32> = u_xlat18;
    let x_1399 : vec3<f32> = u_xlat18;
    u_xlat8.x = dot(x_1398, x_1399);
    let x_1403 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_1403, 0.00006103515625f);
    let x_1408 : f32 = u_xlat8.x;
    u_xlat19 = inverseSqrt(x_1408);
    let x_1411 : vec3<f32> = u_xlat18;
    let x_1412 : f32 = u_xlat19;
    u_xlat9 = (x_1411 * vec3<f32>(x_1412, x_1412, x_1412));
    let x_1417 : f32 = u_xlat8.x;
    u_xlat30 = (1.0f / x_1417);
    let x_1420 : f32 = u_xlat8.x;
    let x_1421 : i32 = u_xlati39;
    let x_1423 : f32 = x_1387.x_AdditionalLightsAttenuation[x_1421].x;
    u_xlat8.x = (x_1420 * x_1423);
    let x_1427 : f32 = u_xlat8.x;
    let x_1430 : f32 = u_xlat8.x;
    u_xlat8.x = ((-(x_1427) * x_1430) + 1.0f);
    let x_1435 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_1435, 0.0f);
    let x_1439 : f32 = u_xlat8.x;
    let x_1441 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1439 * x_1441);
    let x_1445 : f32 = u_xlat8.x;
    let x_1446 : f32 = u_xlat30;
    u_xlat8.x = (x_1445 * x_1446);
    let x_1449 : i32 = u_xlati39;
    let x_1451 : vec4<f32> = x_1387.x_AdditionalLightsSpotDir[x_1449];
    let x_1453 : vec3<f32> = u_xlat9;
    u_xlat30 = dot(vec3<f32>(x_1451.x, x_1451.y, x_1451.z), x_1453);
    let x_1455 : f32 = u_xlat30;
    let x_1456 : i32 = u_xlati39;
    let x_1458 : f32 = x_1387.x_AdditionalLightsAttenuation[x_1456].z;
    let x_1460 : i32 = u_xlati39;
    let x_1462 : f32 = x_1387.x_AdditionalLightsAttenuation[x_1460].w;
    u_xlat30 = ((x_1455 * x_1458) + x_1462);
    let x_1464 : f32 = u_xlat30;
    u_xlat30 = clamp(x_1464, 0.0f, 1.0f);
    let x_1466 : f32 = u_xlat30;
    let x_1467 : f32 = u_xlat30;
    u_xlat30 = (x_1466 * x_1467);
    let x_1469 : f32 = u_xlat30;
    let x_1471 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1469 * x_1471);
    let x_1476 : i32 = u_xlati39;
    let x_1478 : f32 = x_679.x_AdditionalShadowParams[x_1476].w;
    u_xlati30 = i32(x_1478);
    let x_1481 : i32 = u_xlati30;
    u_xlatb41 = (x_1481 >= 0i);
    let x_1483 : bool = u_xlatb41;
    if (x_1483) {
      let x_1487 : i32 = u_xlati39;
      let x_1489 : f32 = x_679.x_AdditionalShadowParams[x_1487].z;
      u_xlatb41 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1489, x_1489, x_1489, x_1489))));
      let x_1493 : bool = u_xlatb41;
      if (x_1493) {
        let x_1497 : vec3<f32> = u_xlat9;
        let x_1500 : vec3<f32> = u_xlat9;
        let x_1503 : vec4<bool> = (abs(vec4<f32>(x_1497.z, x_1497.z, x_1497.y, x_1497.z)) >= abs(vec4<f32>(x_1500.x, x_1500.y, x_1500.x, x_1500.x)));
        let x_1505 : vec3<bool> = vec3<bool>(x_1503.x, x_1503.y, x_1503.z);
        let x_1506 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1505.x, x_1505.y, x_1505.z, x_1506.w);
        let x_1509 : bool = u_xlatb10.y;
        let x_1511 : bool = u_xlatb10.x;
        u_xlatb41 = (x_1509 & x_1511);
        let x_1513 : vec3<f32> = u_xlat9;
        let x_1516 : vec4<bool> = (-(vec4<f32>(x_1513.z, x_1513.y, x_1513.z, x_1513.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1517 : vec3<bool> = vec3<bool>(x_1516.x, x_1516.y, x_1516.w);
        let x_1518 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1517.x, x_1517.y, x_1518.z, x_1517.z);
        let x_1522 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_1522);
        let x_1527 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_1527);
        let x_1532 : bool = u_xlatb10.w;
        u_xlat42 = select(0.0f, 1.0f, x_1532);
        let x_1535 : bool = u_xlatb10.z;
        if (x_1535) {
          let x_1540 : f32 = u_xlat10.y;
          x_1536 = x_1540;
        } else {
          let x_1542 : f32 = u_xlat42;
          x_1536 = x_1542;
        }
        let x_1543 : f32 = x_1536;
        u_xlat42 = x_1543;
        let x_1545 : bool = u_xlatb41;
        if (x_1545) {
          let x_1550 : f32 = u_xlat10.x;
          x_1546 = x_1550;
        } else {
          let x_1552 : f32 = u_xlat42;
          x_1546 = x_1552;
        }
        let x_1553 : f32 = x_1546;
        u_xlat41 = x_1553;
        let x_1554 : i32 = u_xlati39;
        let x_1556 : f32 = x_679.x_AdditionalShadowParams[x_1554].w;
        u_xlat42 = trunc(x_1556);
        let x_1558 : f32 = u_xlat41;
        let x_1559 : f32 = u_xlat42;
        u_xlat41 = (x_1558 + x_1559);
        let x_1561 : f32 = u_xlat41;
        u_xlati30 = i32(x_1561);
      }
      let x_1563 : i32 = u_xlati30;
      u_xlati30 = (x_1563 << bitcast<u32>(2i));
      let x_1565 : vec3<f32> = vs_INTERP7;
      let x_1568 : i32 = u_xlati30;
      let x_1571 : i32 = u_xlati30;
      let x_1575 : vec4<f32> = x_679.x_AdditionalLightsWorldToShadow[((x_1568 + 1i) / 4i)][((x_1571 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1565.y, x_1565.y, x_1565.y, x_1565.y) * x_1575);
      let x_1577 : i32 = u_xlati30;
      let x_1579 : i32 = u_xlati30;
      let x_1582 : vec4<f32> = x_679.x_AdditionalLightsWorldToShadow[(x_1577 / 4i)][(x_1579 % 4i)];
      let x_1583 : vec3<f32> = vs_INTERP7;
      let x_1586 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1582 * vec4<f32>(x_1583.x, x_1583.x, x_1583.x, x_1583.x)) + x_1586);
      let x_1588 : i32 = u_xlati30;
      let x_1591 : i32 = u_xlati30;
      let x_1595 : vec4<f32> = x_679.x_AdditionalLightsWorldToShadow[((x_1588 + 2i) / 4i)][((x_1591 + 2i) % 4i)];
      let x_1596 : vec3<f32> = vs_INTERP7;
      let x_1599 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1595 * vec4<f32>(x_1596.z, x_1596.z, x_1596.z, x_1596.z)) + x_1599);
      let x_1601 : vec4<f32> = u_xlat10;
      let x_1602 : i32 = u_xlati30;
      let x_1605 : i32 = u_xlati30;
      let x_1609 : vec4<f32> = x_679.x_AdditionalLightsWorldToShadow[((x_1602 + 3i) / 4i)][((x_1605 + 3i) % 4i)];
      u_xlat10 = (x_1601 + x_1609);
      let x_1611 : vec4<f32> = u_xlat10;
      let x_1613 : vec4<f32> = u_xlat10;
      let x_1615 : vec3<f32> = (vec3<f32>(x_1611.x, x_1611.y, x_1611.z) / vec3<f32>(x_1613.w, x_1613.w, x_1613.w));
      let x_1616 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1615.x, x_1615.y, x_1615.z, x_1616.w);
      let x_1619 : vec4<f32> = u_xlat10;
      let x_1620 : vec2<f32> = vec2<f32>(x_1619.x, x_1619.y);
      let x_1622 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1620.x, x_1620.y, x_1622);
      let x_1630 : vec3<f32> = txVec1;
      let x_1632 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1630.xy, x_1630.z);
      u_xlat30 = x_1632;
      let x_1633 : i32 = u_xlati39;
      let x_1635 : f32 = x_679.x_AdditionalShadowParams[x_1633].x;
      u_xlat41 = (1.0f + -(x_1635));
      let x_1638 : f32 = u_xlat30;
      let x_1639 : i32 = u_xlati39;
      let x_1641 : f32 = x_679.x_AdditionalShadowParams[x_1639].x;
      let x_1643 : f32 = u_xlat41;
      u_xlat30 = ((x_1638 * x_1641) + x_1643);
      let x_1646 : f32 = u_xlat10.z;
      u_xlatb41 = (0.0f >= x_1646);
      let x_1650 : f32 = u_xlat10.z;
      u_xlatb42 = (x_1650 >= 1.0f);
      let x_1652 : bool = u_xlatb41;
      let x_1653 : bool = u_xlatb42;
      u_xlatb41 = (x_1652 | x_1653);
      let x_1655 : bool = u_xlatb41;
      let x_1656 : f32 = u_xlat30;
      u_xlat30 = select(x_1656, 1.0f, x_1655);
    } else {
      u_xlat30 = 1.0f;
    }
    let x_1659 : f32 = u_xlat30;
    u_xlat41 = (-(x_1659) + 1.0f);
    let x_1663 : f32 = u_xlat12.x;
    let x_1664 : f32 = u_xlat41;
    let x_1666 : f32 = u_xlat30;
    u_xlat30 = ((x_1663 * x_1664) + x_1666);
    let x_1668 : f32 = u_xlat30;
    let x_1670 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1668 * x_1670);
    let x_1673 : vec3<f32> = u_xlat11;
    let x_1674 : vec3<f32> = u_xlat9;
    u_xlat30 = dot(x_1673, x_1674);
    let x_1676 : f32 = u_xlat30;
    u_xlat30 = clamp(x_1676, 0.0f, 1.0f);
    let x_1678 : f32 = u_xlat30;
    let x_1680 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1678 * x_1680);
    let x_1683 : vec4<f32> = u_xlat8;
    let x_1685 : i32 = u_xlati39;
    let x_1687 : vec4<f32> = x_1387.x_AdditionalLightsColor[x_1685];
    let x_1689 : vec3<f32> = (vec3<f32>(x_1683.x, x_1683.x, x_1683.x) * vec3<f32>(x_1687.x, x_1687.y, x_1687.z));
    let x_1690 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1689.x, x_1690.y, x_1689.y, x_1689.z);
    let x_1692 : vec3<f32> = u_xlat18;
    let x_1693 : f32 = u_xlat19;
    let x_1696 : vec3<f32> = u_xlat5;
    u_xlat18 = ((x_1692 * vec3<f32>(x_1693, x_1693, x_1693)) + x_1696);
    let x_1698 : vec3<f32> = u_xlat18;
    let x_1699 : vec3<f32> = u_xlat18;
    u_xlat39 = dot(x_1698, x_1699);
    let x_1701 : f32 = u_xlat39;
    u_xlat39 = max(x_1701, 1.17549435e-38f);
    let x_1703 : f32 = u_xlat39;
    u_xlat39 = inverseSqrt(x_1703);
    let x_1705 : f32 = u_xlat39;
    let x_1707 : vec3<f32> = u_xlat18;
    u_xlat18 = (vec3<f32>(x_1705, x_1705, x_1705) * x_1707);
    let x_1709 : vec3<f32> = u_xlat11;
    let x_1710 : vec3<f32> = u_xlat18;
    u_xlat39 = dot(x_1709, x_1710);
    let x_1712 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1712, 0.0f, 1.0f);
    let x_1714 : vec3<f32> = u_xlat9;
    let x_1715 : vec3<f32> = u_xlat18;
    u_xlat18.x = dot(x_1714, x_1715);
    let x_1719 : f32 = u_xlat18.x;
    u_xlat18.x = clamp(x_1719, 0.0f, 1.0f);
    let x_1722 : f32 = u_xlat39;
    let x_1723 : f32 = u_xlat39;
    u_xlat39 = (x_1722 * x_1723);
    let x_1725 : f32 = u_xlat39;
    let x_1727 : f32 = u_xlat7.x;
    u_xlat39 = ((x_1725 * x_1727) + 1.00001001358032226562f);
    let x_1731 : f32 = u_xlat18.x;
    let x_1733 : f32 = u_xlat18.x;
    u_xlat18.x = (x_1731 * x_1733);
    let x_1736 : f32 = u_xlat39;
    let x_1737 : f32 = u_xlat39;
    u_xlat39 = (x_1736 * x_1737);
    let x_1740 : f32 = u_xlat18.x;
    u_xlat18.x = max(x_1740, 0.10000000149011611938f);
    let x_1743 : f32 = u_xlat39;
    let x_1745 : f32 = u_xlat18.x;
    u_xlat39 = (x_1743 * x_1745);
    let x_1747 : f32 = u_xlat37;
    let x_1748 : f32 = u_xlat39;
    u_xlat39 = (x_1747 * x_1748);
    let x_1750 : f32 = u_xlat36;
    let x_1751 : f32 = u_xlat39;
    u_xlat39 = (x_1750 / x_1751);
    let x_1753 : vec3<f32> = u_xlat2;
    let x_1754 : f32 = u_xlat39;
    let x_1757 : vec3<f32> = u_xlat3;
    u_xlat18 = ((x_1753 * vec3<f32>(x_1754, x_1754, x_1754)) + x_1757);
    let x_1759 : vec3<f32> = u_xlat18;
    let x_1760 : vec4<f32> = u_xlat8;
    let x_1763 : vec4<f32> = u_xlat6;
    let x_1765 : vec3<f32> = ((x_1759 * vec3<f32>(x_1760.x, x_1760.z, x_1760.w)) + vec3<f32>(x_1763.x, x_1763.y, x_1763.z));
    let x_1766 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1765.x, x_1765.y, x_1765.z, x_1766.w);

    continuing {
      let x_1768 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1768 + bitcast<u32>(1i));
    }
  }
  let x_1770 : vec4<f32> = u_xlat4;
  let x_1772 : f32 = u_xlat38;
  let x_1775 : vec4<f32> = u_xlat1;
  let x_1777 : vec3<f32> = ((vec3<f32>(x_1770.x, x_1770.y, x_1770.z) * vec3<f32>(x_1772, x_1772, x_1772)) + vec3<f32>(x_1775.x, x_1775.z, x_1775.w));
  let x_1778 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1777.x, x_1777.y, x_1777.z, x_1778.w);
  let x_1782 : vec4<f32> = u_xlat6;
  let x_1784 : vec4<f32> = u_xlat0;
  let x_1786 : vec3<f32> = (vec3<f32>(x_1782.x, x_1782.y, x_1782.z) + vec3<f32>(x_1784.x, x_1784.y, x_1784.z));
  let x_1787 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1786.x, x_1786.y, x_1786.z, x_1787.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_INTERP8_param : vec3<f32>, @location(1) vs_INTERP4_param : vec4<f32>, @location(2) vs_INTERP5_param : vec4<f32>, @location(3) vs_INTERP7_param : vec3<f32>, @location(0) vs_INTERP0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP7 = vs_INTERP7_param;
  vs_INTERP0 = vs_INTERP0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


