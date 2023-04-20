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

var<private> u_xlat0 : vec4<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> u_xlatb14 : vec2<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_48 : UnityPerDraw;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(6) var x_MainTex : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainTex : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_135 : PGlobals;

var<private> u_xlat43 : f32;

var<private> vs_INTERP7 : vec3<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(9) var Texture2D_D7D66558 : texture_2d<f32>;

@group(0) @binding(18) var samplerTexture2D_D7D66558 : sampler;

@group(1) @binding(5) var<uniform> x_195 : UnityPerMaterial;

var<private> u_xlat45 : f32;

var<private> u_xlat46 : f32;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(7) var Texture2D_DE8BF47E : texture_2d<f32>;

@group(0) @binding(16) var samplerTexture2D_DE8BF47E : sampler;

var<private> u_xlat21 : vec3<f32>;

var<private> u_xlat15 : vec3<f32>;

var<private> u_xlat18 : vec3<f32>;

@group(0) @binding(8) var Texture2D_C005B064 : texture_2d<f32>;

@group(0) @binding(17) var samplerTexture2D_C005B064 : sampler;

@group(0) @binding(5) var x_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D : texture_2d<f32>;

@group(0) @binding(14) var sampler_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D : sampler;

var<private> u_xlat28 : f32;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat16 : f32;

var<private> u_xlat30 : f32;

var<private> vs_INTERP3 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat47 : f32;

@group(1) @binding(3) var<uniform> x_869 : LightShadows;

var<private> u_xlatb47 : bool;

var<private> u_xlatb6 : bool;

var<private> u_xlat20 : f32;

@group(1) @binding(4) var<uniform> x_933 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat48 : f32;

var<private> u_xlat49 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu0 : u32;

var<private> u_xlatu47 : u32;

var<private> u_xlati48 : i32;

var<private> u_xlati47 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_1419 : AdditionalLights;

var<private> u_xlat35 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlati49 : i32;

var<private> u_xlatb50 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat51 : f32;

var<private> u_xlat50 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb51 : bool;

var<private> u_xlati50 : i32;

var<private> u_xlati51 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlat39 : vec2<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlatb39 : vec2<bool>;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_LinearClamp : sampler;

var<private> u_xlat42 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu46 : u32;

fn main_1() {
  var x_657 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_1019 : f32;
  var x_1030 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1549 : f32;
  var x_1559 : f32;
  var txVec1 : vec3<f32>;
  var x_1982 : f32;
  var x_1995 : f32;
  var x_2043 : f32;
  var x_2054 : vec3<f32>;
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
  u_xlatb14.x = (0.0f < x_39);
  let x_53 : f32 = x_48.unity_WorldTransformParams.w;
  u_xlatb14.y = (x_53 >= 0.0f);
  let x_60 : bool = u_xlatb14.x;
  u_xlat14.x = select(-1.0f, 1.0f, x_60);
  let x_65 : bool = u_xlatb14.y;
  u_xlat14.y = select(-1.0f, 1.0f, x_65);
  let x_69 : f32 = u_xlat14.y;
  let x_71 : f32 = u_xlat14.x;
  u_xlat14.x = (x_69 * x_71);
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
  let x_93 : vec3<f32> = u_xlat14;
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
  u_xlat43 = ((x_147 * 4.0f) + x_152);
  let x_154 : f32 = u_xlat43;
  u_xlat43 = (x_154 * 0.33000001311302185059f);
  let x_159 : f32 = vs_INTERP7.y;
  u_xlat44 = (x_159 + 1.0f);
  let x_161 : f32 = u_xlat44;
  u_xlat44 = ((x_161 * -1.33333337306976318359f) + 1.0f);
  let x_165 : f32 = u_xlat43;
  let x_166 : f32 = u_xlat44;
  u_xlat43 = max(x_165, x_166);
  let x_168 : f32 = u_xlat43;
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
  u_xlat44 = ((-(x_198) * 0.01111099962145090103f) + 0.94999998807907104492f);
  let x_207 : f32 = x_195.Vector1_A492C01C;
  u_xlat45 = (x_207 + -10.0f);
  let x_210 : f32 = u_xlat45;
  let x_213 : f32 = vs_INTERP7.y;
  u_xlat45 = (-(x_210) + x_213);
  let x_215 : f32 = u_xlat45;
  u_xlat45 = (x_215 * 0.05000000074505805969f);
  let x_218 : f32 = u_xlat45;
  u_xlat45 = clamp(x_218, 0.0f, 1.0f);
  let x_221 : f32 = u_xlat45;
  u_xlat46 = ((x_221 * -2.0f) + 3.0f);
  let x_226 : f32 = u_xlat45;
  let x_227 : f32 = u_xlat45;
  u_xlat45 = (x_226 * x_227);
  let x_229 : f32 = u_xlat45;
  let x_230 : f32 = u_xlat46;
  u_xlat45 = (x_229 * x_230);
  let x_238 : vec4<f32> = vs_INTERP5;
  let x_241 : f32 = x_135.x_GlobalMipBias.x;
  let x_242 : vec4<f32> = textureSampleBias(Texture2D_DE8BF47E, samplerTexture2D_DE8BF47E, vec2<f32>(x_238.x, x_238.y), x_241);
  u_xlat7 = x_242;
  let x_244 : vec4<f32> = u_xlat7;
  u_xlat21 = ((vec3<f32>(x_244.w, x_244.y, x_244.z) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_251 : vec3<f32> = u_xlat3;
  let x_252 : vec3<f32> = u_xlat21;
  u_xlat3 = (x_251 * vec3<f32>(x_252.y, x_252.y, x_252.y));
  let x_255 : vec3<f32> = u_xlat21;
  let x_257 : vec3<f32> = u_xlat2;
  let x_259 : vec3<f32> = u_xlat3;
  u_xlat2 = ((vec3<f32>(x_255.x, x_255.x, x_255.x) * x_257) + x_259);
  let x_261 : vec3<f32> = u_xlat21;
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
  let x_291 : f32 = u_xlat45;
  let x_293 : f32 = u_xlat1.x;
  let x_295 : f32 = u_xlat44;
  u_xlat1.x = ((x_291 * x_293) + -(x_295));
  let x_300 : f32 = u_xlat1.x;
  u_xlat1.x = (x_300 * 10.0f);
  let x_305 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_305, 0.0f, 1.0f);
  let x_310 : f32 = u_xlat1.x;
  u_xlat15.x = ((x_310 * -2.0f) + 3.0f);
  let x_315 : f32 = u_xlat1.x;
  let x_317 : f32 = u_xlat1.x;
  u_xlat1.x = (x_315 * x_317);
  let x_321 : f32 = u_xlat1.x;
  let x_323 : f32 = u_xlat15.x;
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
  u_xlat18 = vec3<f32>(x_364.x, x_364.y, x_364.w);
  let x_367 : f32 = u_xlat18.x;
  let x_369 : f32 = u_xlat18.z;
  u_xlat18.x = (x_367 * x_369);
  let x_372 : vec3<f32> = u_xlat18;
  let x_377 : vec2<f32> = ((vec2<f32>(x_372.x, x_372.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_378 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_377.x, x_377.y, x_378.z);
  let x_380 : vec3<f32> = u_xlat5;
  let x_382 : vec3<f32> = u_xlat5;
  u_xlat15.x = dot(vec2<f32>(x_380.x, x_380.y), vec2<f32>(x_382.x, x_382.y));
  let x_387 : f32 = u_xlat15.x;
  u_xlat15.x = min(x_387, 1.0f);
  let x_391 : f32 = u_xlat15.x;
  u_xlat15.x = (-(x_391) + 1.0f);
  let x_396 : f32 = u_xlat15.x;
  u_xlat15.x = sqrt(x_396);
  let x_400 : f32 = u_xlat15.x;
  u_xlat5.z = max(x_400, 0.0000000000000001f);
  let x_406 : vec4<f32> = x_48.unity_ObjectToWorld[0i];
  let x_409 : vec4<f32> = x_48.unity_ObjectToWorld[0i];
  u_xlat15.x = dot(vec3<f32>(x_406.x, x_406.y, x_406.z), vec3<f32>(x_409.x, x_409.y, x_409.z));
  let x_414 : f32 = u_xlat15.x;
  u_xlat6.x = sqrt(x_414);
  let x_419 : vec4<f32> = x_48.unity_ObjectToWorld[1i];
  let x_422 : vec4<f32> = x_48.unity_ObjectToWorld[1i];
  u_xlat15.x = dot(vec3<f32>(x_419.x, x_419.y, x_419.z), vec3<f32>(x_422.x, x_422.y, x_422.z));
  let x_427 : f32 = u_xlat15.x;
  u_xlat6.y = sqrt(x_427);
  let x_432 : vec4<f32> = x_48.unity_ObjectToWorld[2i];
  let x_435 : vec4<f32> = x_48.unity_ObjectToWorld[2i];
  u_xlat15.x = dot(vec3<f32>(x_432.x, x_432.y, x_432.z), vec3<f32>(x_435.x, x_435.y, x_435.z));
  let x_440 : f32 = u_xlat15.x;
  u_xlat6.z = sqrt(x_440);
  let x_443 : vec4<f32> = u_xlat6;
  let x_445 : vec4<f32> = u_xlat6;
  u_xlat15.x = dot(vec3<f32>(x_443.x, x_443.y, x_443.z), vec3<f32>(x_445.x, x_445.y, x_445.z));
  let x_450 : f32 = u_xlat15.x;
  u_xlat15.x = sqrt(x_450);
  let x_454 : f32 = u_xlat15.x;
  let x_457 : f32 = x_195.Vector1_90E376AD;
  u_xlat15.x = (x_454 * x_457);
  let x_461 : f32 = u_xlat15.x;
  u_xlat15.x = (x_461 * 30.0f);
  let x_465 : vec3<f32> = u_xlat15;
  let x_467 : vec4<f32> = vs_INTERP5;
  let x_469 : vec2<f32> = (vec2<f32>(x_465.x, x_465.x) * vec2<f32>(x_467.x, x_467.y));
  let x_470 : vec3<f32> = u_xlat15;
  u_xlat15 = vec3<f32>(x_469.x, x_469.y, x_470.z);
  let x_477 : vec3<f32> = u_xlat15;
  let x_480 : f32 = x_135.x_GlobalMipBias.x;
  let x_481 : vec4<f32> = textureSampleBias(x_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D, sampler_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D, vec2<f32>(x_477.x, x_477.y), x_480);
  u_xlat18 = vec3<f32>(x_481.x, x_481.y, x_481.w);
  let x_484 : f32 = u_xlat18.x;
  let x_486 : f32 = u_xlat18.z;
  u_xlat18.x = (x_484 * x_486);
  let x_489 : vec3<f32> = u_xlat18;
  let x_492 : vec2<f32> = ((vec2<f32>(x_489.x, x_489.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_493 : vec3<f32> = u_xlat15;
  u_xlat15 = vec3<f32>(x_492.x, x_492.y, x_493.z);
  let x_495 : vec3<f32> = u_xlat15;
  let x_497 : vec3<f32> = u_xlat15;
  u_xlat44 = dot(vec2<f32>(x_495.x, x_495.y), vec2<f32>(x_497.x, x_497.y));
  let x_500 : f32 = u_xlat44;
  u_xlat44 = min(x_500, 1.0f);
  let x_502 : f32 = u_xlat44;
  u_xlat44 = (-(x_502) + 1.0f);
  let x_505 : f32 = u_xlat44;
  u_xlat44 = sqrt(x_505);
  let x_507 : f32 = u_xlat44;
  u_xlat44 = max(x_507, 0.0000000000000001f);
  let x_509 : vec3<f32> = u_xlat15;
  let x_511 : vec3<f32> = u_xlat21;
  let x_513 : vec2<f32> = (vec2<f32>(x_509.x, x_509.y) + vec2<f32>(x_511.x, x_511.y));
  let x_514 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_513.x, x_513.y, x_514.z, x_514.w);
  let x_516 : f32 = u_xlat44;
  let x_518 : f32 = u_xlat21.z;
  u_xlat6.z = (x_516 * x_518);
  let x_521 : vec4<f32> = u_xlat6;
  let x_523 : vec4<f32> = u_xlat6;
  u_xlat15.x = dot(vec3<f32>(x_521.x, x_521.y, x_521.z), vec3<f32>(x_523.x, x_523.y, x_523.z));
  let x_528 : f32 = u_xlat15.x;
  u_xlat15.x = max(x_528, 0.00006103515625f);
  let x_533 : f32 = u_xlat15.x;
  u_xlat15.x = inverseSqrt(x_533);
  let x_536 : vec4<f32> = u_xlat6;
  let x_538 : vec3<f32> = u_xlat15;
  let x_541 : vec3<f32> = u_xlat5;
  u_xlat18 = ((vec3<f32>(x_536.x, x_536.y, x_536.z) * vec3<f32>(x_538.x, x_538.x, x_538.x)) + -(x_541));
  let x_544 : vec4<f32> = u_xlat1;
  let x_546 : vec3<f32> = u_xlat18;
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
  u_xlat14 = ((vec3<f32>(x_588.y, x_588.y, x_588.y) * vec3<f32>(x_590.x, x_590.y, x_590.z)) + vec3<f32>(x_593.y, x_593.z, x_593.w));
  let x_596 : vec4<f32> = u_xlat4;
  let x_598 : vec3<f32> = vs_INTERP8;
  let x_600 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_596.w, x_596.w, x_596.w) * x_598) + x_600);
  let x_602 : vec3<f32> = u_xlat14;
  let x_603 : vec3<f32> = u_xlat14;
  u_xlat1.x = dot(x_602, x_603);
  let x_607 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_607);
  let x_610 : vec3<f32> = u_xlat14;
  let x_611 : vec4<f32> = u_xlat1;
  let x_613 : vec3<f32> = (x_610 * vec3<f32>(x_611.x, x_611.x, x_611.x));
  let x_614 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_613.x, x_613.y, x_613.z, x_614.w);
  let x_618 : f32 = x_135.unity_OrthoParams.w;
  u_xlatb14.x = (x_618 == 0.0f);
  let x_621 : vec3<f32> = vs_INTERP7;
  let x_625 : vec3<f32> = x_135.x_WorldSpaceCameraPos;
  let x_626 : vec3<f32> = (-(x_621) + x_625);
  let x_627 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_626.x, x_626.y, x_626.z, x_627.w);
  let x_630 : vec4<f32> = u_xlat1;
  let x_632 : vec4<f32> = u_xlat1;
  u_xlat28 = dot(vec3<f32>(x_630.x, x_630.y, x_630.z), vec3<f32>(x_632.x, x_632.y, x_632.z));
  let x_635 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_635);
  let x_637 : f32 = u_xlat28;
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
  let x_655 : bool = u_xlatb14.x;
  if (x_655) {
    let x_660 : vec4<f32> = u_xlat1;
    x_657 = vec3<f32>(x_660.x, x_660.y, x_660.z);
  } else {
    let x_663 : vec3<f32> = u_xlat5;
    x_657 = x_663;
  }
  let x_664 : vec3<f32> = x_657;
  u_xlat14 = x_664;
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
  u_xlat15.x = (x_758 * x_760);
  let x_764 : f32 = u_xlat4.x;
  let x_766 : f32 = u_xlat4.x;
  let x_769 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_764 * x_766) + -(x_769));
  let x_775 : vec4<f32> = x_48.unity_SHC;
  let x_777 : vec3<f32> = u_xlat15;
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
  u_xlat15 = ((vec3<f32>(x_795.w, x_795.w, x_795.w) * x_797) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_802 : vec3<f32> = u_xlat15;
  u_xlat15 = ((x_802 * vec3<f32>(0.10000000149011611938f, 0.10000000149011611938f, 0.10000000149011611938f)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_809 : f32 = u_xlat0.x;
  u_xlat2.x = (-(x_809) + 1.0f);
  let x_815 : f32 = u_xlat2.x;
  let x_817 : f32 = u_xlat2.x;
  u_xlat16 = (x_815 * x_817);
  let x_819 : f32 = u_xlat16;
  u_xlat16 = max(x_819, 0.0078125f);
  let x_823 : f32 = u_xlat16;
  let x_824 : f32 = u_xlat16;
  u_xlat30 = (x_823 * x_824);
  let x_827 : f32 = u_xlat0.x;
  u_xlat0.x = (x_827 + 0.13600003719329833984f);
  let x_832 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_832, 1.0f);
  let x_835 : f32 = u_xlat16;
  u_xlat44 = ((x_835 * 4.0f) + 2.0f);
  let x_839 : f32 = u_xlat7.x;
  u_xlat45 = min(x_839, 1.0f);
  let x_843 : vec4<f32> = vs_INTERP3;
  let x_844 : vec2<f32> = vec2<f32>(x_843.x, x_843.y);
  let x_846 : f32 = vs_INTERP3.z;
  txVec0 = vec3<f32>(x_844.x, x_844.y, x_846);
  let x_858 : vec3<f32> = txVec0;
  let x_860 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_858.xy, x_858.z);
  u_xlat46 = x_860;
  let x_871 : f32 = x_869.x_MainLightShadowParams.x;
  u_xlat47 = (-(x_871) + 1.0f);
  let x_874 : f32 = u_xlat46;
  let x_876 : f32 = x_869.x_MainLightShadowParams.x;
  let x_878 : f32 = u_xlat47;
  u_xlat46 = ((x_874 * x_876) + x_878);
  let x_882 : f32 = vs_INTERP3.z;
  u_xlatb47 = (0.0f >= x_882);
  let x_886 : f32 = vs_INTERP3.z;
  u_xlatb6 = (x_886 >= 1.0f);
  let x_888 : bool = u_xlatb47;
  let x_889 : bool = u_xlatb6;
  u_xlatb47 = (x_888 | x_889);
  let x_891 : bool = u_xlatb47;
  let x_892 : f32 = u_xlat46;
  u_xlat46 = select(x_892, 1.0f, x_891);
  let x_894 : vec3<f32> = vs_INTERP7;
  let x_896 : vec3<f32> = x_135.x_WorldSpaceCameraPos;
  let x_898 : vec3<f32> = (x_894 + -(x_896));
  let x_899 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_898.x, x_898.y, x_898.z, x_899.w);
  let x_901 : vec4<f32> = u_xlat6;
  let x_903 : vec4<f32> = u_xlat6;
  u_xlat47 = dot(vec3<f32>(x_901.x, x_901.y, x_901.z), vec3<f32>(x_903.x, x_903.y, x_903.z));
  let x_906 : f32 = u_xlat47;
  let x_908 : f32 = x_869.x_MainLightShadowParams.z;
  let x_911 : f32 = x_869.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_906 * x_908) + x_911);
  let x_915 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_915, 0.0f, 1.0f);
  let x_919 : f32 = u_xlat46;
  u_xlat20 = (-(x_919) + 1.0f);
  let x_923 : f32 = u_xlat6.x;
  let x_924 : f32 = u_xlat20;
  let x_926 : f32 = u_xlat46;
  u_xlat46 = ((x_923 * x_924) + x_926);
  let x_935 : f32 = x_933.x_MainLightCookieTextureFormat;
  u_xlatb6 = !((x_935 == -1.0f));
  let x_937 : bool = u_xlatb6;
  if (x_937) {
    let x_940 : vec3<f32> = vs_INTERP7;
    let x_943 : vec4<f32> = x_933.x_MainLightWorldToLight[1i];
    let x_945 : vec2<f32> = (vec2<f32>(x_940.y, x_940.y) * vec2<f32>(x_943.x, x_943.y));
    let x_946 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_945.x, x_945.y, x_946.z, x_946.w);
    let x_949 : vec4<f32> = x_933.x_MainLightWorldToLight[0i];
    let x_951 : vec3<f32> = vs_INTERP7;
    let x_954 : vec4<f32> = u_xlat6;
    let x_956 : vec2<f32> = ((vec2<f32>(x_949.x, x_949.y) * vec2<f32>(x_951.x, x_951.x)) + vec2<f32>(x_954.x, x_954.y));
    let x_957 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_956.x, x_956.y, x_957.z, x_957.w);
    let x_960 : vec4<f32> = x_933.x_MainLightWorldToLight[2i];
    let x_962 : vec3<f32> = vs_INTERP7;
    let x_965 : vec4<f32> = u_xlat6;
    let x_967 : vec2<f32> = ((vec2<f32>(x_960.x, x_960.y) * vec2<f32>(x_962.z, x_962.z)) + vec2<f32>(x_965.x, x_965.y));
    let x_968 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_967.x, x_967.y, x_968.z, x_968.w);
    let x_970 : vec4<f32> = u_xlat6;
    let x_973 : vec4<f32> = x_933.x_MainLightWorldToLight[3i];
    let x_975 : vec2<f32> = (vec2<f32>(x_970.x, x_970.y) + vec2<f32>(x_973.x, x_973.y));
    let x_976 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_975.x, x_975.y, x_976.z, x_976.w);
    let x_978 : vec4<f32> = u_xlat6;
    let x_983 : vec2<f32> = ((vec2<f32>(x_978.x, x_978.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_984 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_983.x, x_983.y, x_984.z, x_984.w);
    let x_991 : vec4<f32> = u_xlat6;
    let x_994 : f32 = x_135.x_GlobalMipBias.x;
    let x_995 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_991.x, x_991.y), x_994);
    u_xlat6 = x_995;
    let x_998 : f32 = x_933.x_MainLightCookieTextureFormat;
    let x_1000 : f32 = x_933.x_MainLightCookieTextureFormat;
    let x_1002 : f32 = x_933.x_MainLightCookieTextureFormat;
    let x_1004 : f32 = x_933.x_MainLightCookieTextureFormat;
    let x_1005 : vec4<f32> = vec4<f32>(x_998, x_1000, x_1002, x_1004);
    let x_1013 : vec4<bool> = (vec4<f32>(x_1005.x, x_1005.y, x_1005.z, x_1005.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_1013.x, x_1013.y);
    let x_1017 : bool = u_xlatb7.y;
    if (x_1017) {
      let x_1023 : f32 = u_xlat6.w;
      x_1019 = x_1023;
    } else {
      let x_1026 : f32 = u_xlat6.x;
      x_1019 = x_1026;
    }
    let x_1027 : f32 = x_1019;
    u_xlat48 = x_1027;
    let x_1029 : bool = u_xlatb7.x;
    if (x_1029) {
      let x_1033 : vec4<f32> = u_xlat6;
      x_1030 = vec3<f32>(x_1033.x, x_1033.y, x_1033.z);
    } else {
      let x_1036 : f32 = u_xlat48;
      x_1030 = vec3<f32>(x_1036, x_1036, x_1036);
    }
    let x_1038 : vec3<f32> = x_1030;
    let x_1039 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1038.x, x_1038.y, x_1038.z, x_1039.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1045 : vec4<f32> = u_xlat6;
  let x_1048 : vec4<f32> = x_135.x_MainLightColor;
  let x_1050 : vec3<f32> = (vec3<f32>(x_1045.x, x_1045.y, x_1045.z) * vec3<f32>(x_1048.x, x_1048.y, x_1048.z));
  let x_1051 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1050.x, x_1050.y, x_1050.z, x_1051.w);
  let x_1053 : vec3<f32> = u_xlat14;
  let x_1055 : vec4<f32> = u_xlat4;
  u_xlat48 = dot(-(x_1053), vec3<f32>(x_1055.x, x_1055.y, x_1055.z));
  let x_1058 : f32 = u_xlat48;
  let x_1059 : f32 = u_xlat48;
  u_xlat48 = (x_1058 + x_1059);
  let x_1061 : vec4<f32> = u_xlat4;
  let x_1063 : f32 = u_xlat48;
  let x_1067 : vec3<f32> = u_xlat14;
  let x_1069 : vec3<f32> = ((vec3<f32>(x_1061.x, x_1061.y, x_1061.z) * -(vec3<f32>(x_1063, x_1063, x_1063))) + -(x_1067));
  let x_1070 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1069.x, x_1069.y, x_1069.z, x_1070.w);
  let x_1072 : vec4<f32> = u_xlat4;
  let x_1074 : vec3<f32> = u_xlat14;
  u_xlat48 = dot(vec3<f32>(x_1072.x, x_1072.y, x_1072.z), x_1074);
  let x_1076 : f32 = u_xlat48;
  u_xlat48 = clamp(x_1076, 0.0f, 1.0f);
  let x_1078 : f32 = u_xlat48;
  u_xlat48 = (-(x_1078) + 1.0f);
  let x_1081 : f32 = u_xlat48;
  let x_1082 : f32 = u_xlat48;
  u_xlat48 = (x_1081 * x_1082);
  let x_1084 : f32 = u_xlat48;
  let x_1085 : f32 = u_xlat48;
  u_xlat48 = (x_1084 * x_1085);
  let x_1089 : f32 = u_xlat2.x;
  u_xlat49 = ((-(x_1089) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1096 : f32 = u_xlat2.x;
  let x_1097 : f32 = u_xlat49;
  u_xlat2.x = (x_1096 * x_1097);
  let x_1101 : f32 = u_xlat2.x;
  u_xlat2.x = (x_1101 * 6.0f);
  let x_1113 : vec4<f32> = u_xlat7;
  let x_1116 : f32 = u_xlat2.x;
  let x_1117 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1113.x, x_1113.y, x_1113.z), x_1116);
  u_xlat7 = x_1117;
  let x_1119 : f32 = u_xlat7.w;
  u_xlat2.x = (x_1119 + -1.0f);
  let x_1123 : f32 = x_48.unity_SpecCube0_HDR.w;
  let x_1125 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1123 * x_1125) + 1.0f);
  let x_1130 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_1130, 0.0f);
  let x_1134 : f32 = u_xlat2.x;
  u_xlat2.x = log2(x_1134);
  let x_1138 : f32 = u_xlat2.x;
  let x_1140 : f32 = x_48.unity_SpecCube0_HDR.y;
  u_xlat2.x = (x_1138 * x_1140);
  let x_1144 : f32 = u_xlat2.x;
  u_xlat2.x = exp2(x_1144);
  let x_1148 : f32 = u_xlat2.x;
  let x_1150 : f32 = x_48.unity_SpecCube0_HDR.x;
  u_xlat2.x = (x_1148 * x_1150);
  let x_1153 : vec4<f32> = u_xlat7;
  let x_1155 : vec3<f32> = u_xlat2;
  let x_1157 : vec3<f32> = (vec3<f32>(x_1153.x, x_1153.y, x_1153.z) * vec3<f32>(x_1155.x, x_1155.x, x_1155.x));
  let x_1158 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1157.x, x_1157.y, x_1157.z, x_1158.w);
  let x_1160 : f32 = u_xlat16;
  let x_1162 : f32 = u_xlat16;
  let x_1166 : vec2<f32> = ((vec2<f32>(x_1160, x_1160) * vec2<f32>(x_1162, x_1162)) + vec2<f32>(-1.0f, 1.0f));
  let x_1167 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_1166.x, x_1166.y, x_1167.z);
  let x_1170 : f32 = u_xlat2.y;
  u_xlat16 = (1.0f / x_1170);
  let x_1172 : vec3<f32> = u_xlat15;
  let x_1174 : vec4<f32> = u_xlat0;
  u_xlat8 = (-(x_1172) + vec3<f32>(x_1174.x, x_1174.x, x_1174.x));
  let x_1177 : f32 = u_xlat48;
  let x_1179 : vec3<f32> = u_xlat8;
  let x_1181 : vec3<f32> = u_xlat15;
  u_xlat8 = ((vec3<f32>(x_1177, x_1177, x_1177) * x_1179) + x_1181);
  let x_1183 : f32 = u_xlat16;
  let x_1185 : vec3<f32> = u_xlat8;
  u_xlat8 = (vec3<f32>(x_1183, x_1183, x_1183) * x_1185);
  let x_1187 : vec4<f32> = u_xlat7;
  let x_1189 : vec3<f32> = u_xlat8;
  let x_1190 : vec3<f32> = (vec3<f32>(x_1187.x, x_1187.y, x_1187.z) * x_1189);
  let x_1191 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1190.x, x_1190.y, x_1190.z, x_1191.w);
  let x_1193 : vec3<f32> = u_xlat5;
  let x_1194 : vec3<f32> = u_xlat3;
  let x_1196 : vec4<f32> = u_xlat7;
  u_xlat5 = ((x_1193 * x_1194) + vec3<f32>(x_1196.x, x_1196.y, x_1196.z));
  let x_1199 : f32 = u_xlat46;
  let x_1201 : f32 = x_48.unity_LightData.z;
  u_xlat0.x = (x_1199 * x_1201);
  let x_1204 : vec4<f32> = u_xlat4;
  let x_1207 : vec4<f32> = x_135.x_MainLightPosition;
  u_xlat16 = dot(vec3<f32>(x_1204.x, x_1204.y, x_1204.z), vec3<f32>(x_1207.x, x_1207.y, x_1207.z));
  let x_1210 : f32 = u_xlat16;
  u_xlat16 = clamp(x_1210, 0.0f, 1.0f);
  let x_1213 : f32 = u_xlat0.x;
  let x_1214 : f32 = u_xlat16;
  u_xlat0.x = (x_1213 * x_1214);
  let x_1217 : vec4<f32> = u_xlat0;
  let x_1219 : vec4<f32> = u_xlat6;
  let x_1221 : vec3<f32> = (vec3<f32>(x_1217.x, x_1217.x, x_1217.x) * vec3<f32>(x_1219.x, x_1219.y, x_1219.z));
  let x_1222 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1221.x, x_1221.y, x_1221.z, x_1222.w);
  let x_1224 : vec3<f32> = u_xlat14;
  let x_1226 : vec4<f32> = x_135.x_MainLightPosition;
  let x_1228 : vec3<f32> = (x_1224 + vec3<f32>(x_1226.x, x_1226.y, x_1226.z));
  let x_1229 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1228.x, x_1228.y, x_1228.z, x_1229.w);
  let x_1231 : vec4<f32> = u_xlat7;
  let x_1233 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_1231.x, x_1231.y, x_1231.z), vec3<f32>(x_1233.x, x_1233.y, x_1233.z));
  let x_1238 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1238, 1.17549435e-38f);
  let x_1242 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1242);
  let x_1245 : vec4<f32> = u_xlat0;
  let x_1247 : vec4<f32> = u_xlat7;
  let x_1249 : vec3<f32> = (vec3<f32>(x_1245.x, x_1245.x, x_1245.x) * vec3<f32>(x_1247.x, x_1247.y, x_1247.z));
  let x_1250 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1249.x, x_1249.y, x_1249.z, x_1250.w);
  let x_1252 : vec4<f32> = u_xlat4;
  let x_1254 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_1252.x, x_1252.y, x_1252.z), vec3<f32>(x_1254.x, x_1254.y, x_1254.z));
  let x_1259 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1259, 0.0f, 1.0f);
  let x_1263 : vec4<f32> = x_135.x_MainLightPosition;
  let x_1265 : vec4<f32> = u_xlat7;
  u_xlat16 = dot(vec3<f32>(x_1263.x, x_1263.y, x_1263.z), vec3<f32>(x_1265.x, x_1265.y, x_1265.z));
  let x_1268 : f32 = u_xlat16;
  u_xlat16 = clamp(x_1268, 0.0f, 1.0f);
  let x_1271 : f32 = u_xlat0.x;
  let x_1273 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1271 * x_1273);
  let x_1277 : f32 = u_xlat0.x;
  let x_1279 : f32 = u_xlat2.x;
  u_xlat0.x = ((x_1277 * x_1279) + 1.00001001358032226562f);
  let x_1284 : f32 = u_xlat16;
  let x_1285 : f32 = u_xlat16;
  u_xlat16 = (x_1284 * x_1285);
  let x_1288 : f32 = u_xlat0.x;
  let x_1290 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1288 * x_1290);
  let x_1293 : f32 = u_xlat16;
  u_xlat16 = max(x_1293, 0.10000000149011611938f);
  let x_1296 : f32 = u_xlat0.x;
  let x_1297 : f32 = u_xlat16;
  u_xlat0.x = (x_1296 * x_1297);
  let x_1300 : f32 = u_xlat44;
  let x_1302 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1300 * x_1302);
  let x_1305 : f32 = u_xlat30;
  let x_1307 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1305 / x_1307);
  let x_1310 : vec3<f32> = u_xlat15;
  let x_1311 : vec4<f32> = u_xlat0;
  let x_1314 : vec3<f32> = u_xlat3;
  let x_1315 : vec3<f32> = ((x_1310 * vec3<f32>(x_1311.x, x_1311.x, x_1311.x)) + x_1314);
  let x_1316 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1315.x, x_1315.y, x_1315.z, x_1316.w);
  let x_1318 : vec4<f32> = u_xlat6;
  let x_1320 : vec4<f32> = u_xlat7;
  let x_1322 : vec3<f32> = (vec3<f32>(x_1318.x, x_1318.y, x_1318.z) * vec3<f32>(x_1320.x, x_1320.y, x_1320.z));
  let x_1323 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1322.x, x_1322.y, x_1322.z, x_1323.w);
  let x_1326 : f32 = x_135.x_AdditionalLightsCount.x;
  let x_1328 : f32 = x_48.unity_LightData.y;
  u_xlat0.x = min(x_1326, x_1328);
  let x_1334 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1334));
  let x_1337 : f32 = u_xlat47;
  let x_1340 : f32 = x_869.x_AdditionalShadowFadeParams.x;
  let x_1343 : f32 = x_869.x_AdditionalShadowFadeParams.y;
  u_xlat16 = ((x_1337 * x_1340) + x_1343);
  let x_1345 : f32 = u_xlat16;
  u_xlat16 = clamp(x_1345, 0.0f, 1.0f);
  let x_1348 : f32 = x_933.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1350 : f32 = x_933.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1352 : f32 = x_933.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1354 : f32 = x_933.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1355 : vec4<f32> = vec4<f32>(x_1348, x_1350, x_1352, x_1354);
  let x_1361 : vec4<bool> = (vec4<f32>(x_1355.x, x_1355.y, x_1355.z, x_1355.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1361.x, x_1361.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1373 : u32 = u_xlatu_loop_1;
    let x_1374 : u32 = u_xlatu0;
    if ((x_1373 < x_1374)) {
    } else {
      break;
    }
    let x_1377 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1377 >> 2u);
    let x_1381 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1381 & 3u));
    let x_1384 : u32 = u_xlatu47;
    let x_1387 : vec4<f32> = x_48.unity_LightIndices[bitcast<i32>(x_1384)];
    let x_1397 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1402 : vec4<u32> = indexable[x_1397];
    u_xlat47 = dot(x_1387, bitcast<vec4<f32>>(x_1402));
    let x_1406 : f32 = u_xlat47;
    u_xlati47 = i32(x_1406);
    let x_1409 : vec3<f32> = vs_INTERP7;
    let x_1420 : i32 = u_xlati47;
    let x_1422 : vec4<f32> = x_1419.x_AdditionalLightsPosition[x_1420];
    let x_1425 : i32 = u_xlati47;
    let x_1427 : vec4<f32> = x_1419.x_AdditionalLightsPosition[x_1425];
    u_xlat9 = ((-(x_1409) * vec3<f32>(x_1422.w, x_1422.w, x_1422.w)) + vec3<f32>(x_1427.x, x_1427.y, x_1427.z));
    let x_1430 : vec3<f32> = u_xlat9;
    let x_1431 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1430, x_1431);
    let x_1433 : f32 = u_xlat48;
    u_xlat48 = max(x_1433, 0.00006103515625f);
    let x_1436 : f32 = u_xlat48;
    u_xlat35 = inverseSqrt(x_1436);
    let x_1439 : f32 = u_xlat35;
    let x_1441 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1439, x_1439, x_1439) * x_1441);
    let x_1443 : f32 = u_xlat48;
    u_xlat49 = (1.0f / x_1443);
    let x_1445 : f32 = u_xlat48;
    let x_1446 : i32 = u_xlati47;
    let x_1448 : f32 = x_1419.x_AdditionalLightsAttenuation[x_1446].x;
    u_xlat48 = (x_1445 * x_1448);
    let x_1450 : f32 = u_xlat48;
    let x_1452 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1450) * x_1452) + 1.0f);
    let x_1455 : f32 = u_xlat48;
    u_xlat48 = max(x_1455, 0.0f);
    let x_1457 : f32 = u_xlat48;
    let x_1458 : f32 = u_xlat48;
    u_xlat48 = (x_1457 * x_1458);
    let x_1460 : f32 = u_xlat48;
    let x_1461 : f32 = u_xlat49;
    u_xlat48 = (x_1460 * x_1461);
    let x_1463 : i32 = u_xlati47;
    let x_1465 : vec4<f32> = x_1419.x_AdditionalLightsSpotDir[x_1463];
    let x_1467 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1465.x, x_1465.y, x_1465.z), x_1467);
    let x_1469 : f32 = u_xlat49;
    let x_1470 : i32 = u_xlati47;
    let x_1472 : f32 = x_1419.x_AdditionalLightsAttenuation[x_1470].z;
    let x_1474 : i32 = u_xlati47;
    let x_1476 : f32 = x_1419.x_AdditionalLightsAttenuation[x_1474].w;
    u_xlat49 = ((x_1469 * x_1472) + x_1476);
    let x_1478 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1478, 0.0f, 1.0f);
    let x_1480 : f32 = u_xlat49;
    let x_1481 : f32 = u_xlat49;
    u_xlat49 = (x_1480 * x_1481);
    let x_1483 : f32 = u_xlat48;
    let x_1484 : f32 = u_xlat49;
    u_xlat48 = (x_1483 * x_1484);
    let x_1488 : i32 = u_xlati47;
    let x_1490 : f32 = x_869.x_AdditionalShadowParams[x_1488].w;
    u_xlati49 = i32(x_1490);
    let x_1493 : i32 = u_xlati49;
    u_xlatb50 = (x_1493 >= 0i);
    let x_1495 : bool = u_xlatb50;
    if (x_1495) {
      let x_1499 : i32 = u_xlati47;
      let x_1501 : f32 = x_869.x_AdditionalShadowParams[x_1499].z;
      u_xlatb50 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1501, x_1501, x_1501, x_1501))));
      let x_1505 : bool = u_xlatb50;
      if (x_1505) {
        let x_1510 : vec3<f32> = u_xlat10;
        let x_1513 : vec3<f32> = u_xlat10;
        let x_1516 : vec4<bool> = (abs(vec4<f32>(x_1510.z, x_1510.z, x_1510.y, x_1510.z)) >= abs(vec4<f32>(x_1513.x, x_1513.y, x_1513.x, x_1513.x)));
        let x_1518 : vec3<bool> = vec3<bool>(x_1516.x, x_1516.y, x_1516.z);
        let x_1519 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1518.x, x_1518.y, x_1518.z, x_1519.w);
        let x_1522 : bool = u_xlatb11.y;
        let x_1524 : bool = u_xlatb11.x;
        u_xlatb50 = (x_1522 & x_1524);
        let x_1526 : vec3<f32> = u_xlat10;
        let x_1529 : vec4<bool> = (-(vec4<f32>(x_1526.z, x_1526.y, x_1526.z, x_1526.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1530 : vec3<bool> = vec3<bool>(x_1529.x, x_1529.y, x_1529.w);
        let x_1531 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1530.x, x_1530.y, x_1531.z, x_1530.z);
        let x_1535 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1535);
        let x_1540 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1540);
        let x_1545 : bool = u_xlatb11.w;
        u_xlat51 = select(0.0f, 1.0f, x_1545);
        let x_1548 : bool = u_xlatb11.z;
        if (x_1548) {
          let x_1553 : f32 = u_xlat11.y;
          x_1549 = x_1553;
        } else {
          let x_1555 : f32 = u_xlat51;
          x_1549 = x_1555;
        }
        let x_1556 : f32 = x_1549;
        u_xlat51 = x_1556;
        let x_1558 : bool = u_xlatb50;
        if (x_1558) {
          let x_1563 : f32 = u_xlat11.x;
          x_1559 = x_1563;
        } else {
          let x_1565 : f32 = u_xlat51;
          x_1559 = x_1565;
        }
        let x_1566 : f32 = x_1559;
        u_xlat50 = x_1566;
        let x_1567 : i32 = u_xlati47;
        let x_1569 : f32 = x_869.x_AdditionalShadowParams[x_1567].w;
        u_xlat51 = trunc(x_1569);
        let x_1571 : f32 = u_xlat50;
        let x_1572 : f32 = u_xlat51;
        u_xlat50 = (x_1571 + x_1572);
        let x_1574 : f32 = u_xlat50;
        u_xlati49 = i32(x_1574);
      }
      let x_1576 : i32 = u_xlati49;
      u_xlati49 = (x_1576 << bitcast<u32>(2i));
      let x_1578 : vec3<f32> = vs_INTERP7;
      let x_1581 : i32 = u_xlati49;
      let x_1584 : i32 = u_xlati49;
      let x_1588 : vec4<f32> = x_869.x_AdditionalLightsWorldToShadow[((x_1581 + 1i) / 4i)][((x_1584 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1578.y, x_1578.y, x_1578.y, x_1578.y) * x_1588);
      let x_1590 : i32 = u_xlati49;
      let x_1592 : i32 = u_xlati49;
      let x_1595 : vec4<f32> = x_869.x_AdditionalLightsWorldToShadow[(x_1590 / 4i)][(x_1592 % 4i)];
      let x_1596 : vec3<f32> = vs_INTERP7;
      let x_1599 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1595 * vec4<f32>(x_1596.x, x_1596.x, x_1596.x, x_1596.x)) + x_1599);
      let x_1601 : i32 = u_xlati49;
      let x_1604 : i32 = u_xlati49;
      let x_1608 : vec4<f32> = x_869.x_AdditionalLightsWorldToShadow[((x_1601 + 2i) / 4i)][((x_1604 + 2i) % 4i)];
      let x_1609 : vec3<f32> = vs_INTERP7;
      let x_1612 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1608 * vec4<f32>(x_1609.z, x_1609.z, x_1609.z, x_1609.z)) + x_1612);
      let x_1614 : vec4<f32> = u_xlat11;
      let x_1615 : i32 = u_xlati49;
      let x_1618 : i32 = u_xlati49;
      let x_1622 : vec4<f32> = x_869.x_AdditionalLightsWorldToShadow[((x_1615 + 3i) / 4i)][((x_1618 + 3i) % 4i)];
      u_xlat11 = (x_1614 + x_1622);
      let x_1624 : vec4<f32> = u_xlat11;
      let x_1626 : vec4<f32> = u_xlat11;
      let x_1628 : vec3<f32> = (vec3<f32>(x_1624.x, x_1624.y, x_1624.z) / vec3<f32>(x_1626.w, x_1626.w, x_1626.w));
      let x_1629 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1628.x, x_1628.y, x_1628.z, x_1629.w);
      let x_1632 : vec4<f32> = u_xlat11;
      let x_1633 : vec2<f32> = vec2<f32>(x_1632.x, x_1632.y);
      let x_1635 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1633.x, x_1633.y, x_1635);
      let x_1643 : vec3<f32> = txVec1;
      let x_1645 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1643.xy, x_1643.z);
      u_xlat49 = x_1645;
      let x_1646 : i32 = u_xlati47;
      let x_1648 : f32 = x_869.x_AdditionalShadowParams[x_1646].x;
      u_xlat50 = (1.0f + -(x_1648));
      let x_1651 : f32 = u_xlat49;
      let x_1652 : i32 = u_xlati47;
      let x_1654 : f32 = x_869.x_AdditionalShadowParams[x_1652].x;
      let x_1656 : f32 = u_xlat50;
      u_xlat49 = ((x_1651 * x_1654) + x_1656);
      let x_1659 : f32 = u_xlat11.z;
      u_xlatb50 = (0.0f >= x_1659);
      let x_1663 : f32 = u_xlat11.z;
      u_xlatb51 = (x_1663 >= 1.0f);
      let x_1665 : bool = u_xlatb50;
      let x_1666 : bool = u_xlatb51;
      u_xlatb50 = (x_1665 | x_1666);
      let x_1668 : bool = u_xlatb50;
      let x_1669 : f32 = u_xlat49;
      u_xlat49 = select(x_1669, 1.0f, x_1668);
    } else {
      u_xlat49 = 1.0f;
    }
    let x_1672 : f32 = u_xlat49;
    u_xlat50 = (-(x_1672) + 1.0f);
    let x_1675 : f32 = u_xlat16;
    let x_1676 : f32 = u_xlat50;
    let x_1678 : f32 = u_xlat49;
    u_xlat49 = ((x_1675 * x_1676) + x_1678);
    let x_1681 : i32 = u_xlati47;
    u_xlati50 = (1i << bitcast<u32>((x_1681 & 31i)));
    let x_1685 : i32 = u_xlati50;
    let x_1688 : f32 = x_933.x_AdditionalLightsCookieEnableBits;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1685) & bitcast<u32>(x_1688)));
    let x_1692 : i32 = u_xlati50;
    if ((x_1692 != 0i)) {
      let x_1696 : i32 = u_xlati47;
      let x_1698 : f32 = x_933.x_AdditionalLightsLightTypes[x_1696].el;
      u_xlati50 = i32(x_1698);
      let x_1701 : i32 = u_xlati50;
      u_xlati51 = select(1i, 0i, (x_1701 != 0i));
      let x_1705 : i32 = u_xlati47;
      u_xlati52 = (x_1705 << bitcast<u32>(2i));
      let x_1707 : i32 = u_xlati51;
      if ((x_1707 != 0i)) {
        let x_1711 : vec3<f32> = vs_INTERP7;
        let x_1713 : i32 = u_xlati52;
        let x_1716 : i32 = u_xlati52;
        let x_1720 : vec4<f32> = x_933.x_AdditionalLightsWorldToLights[((x_1713 + 1i) / 4i)][((x_1716 + 1i) % 4i)];
        let x_1722 : vec3<f32> = (vec3<f32>(x_1711.y, x_1711.y, x_1711.y) * vec3<f32>(x_1720.x, x_1720.y, x_1720.w));
        let x_1723 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1722.x, x_1722.y, x_1722.z, x_1723.w);
        let x_1725 : i32 = u_xlati52;
        let x_1727 : i32 = u_xlati52;
        let x_1730 : vec4<f32> = x_933.x_AdditionalLightsWorldToLights[(x_1725 / 4i)][(x_1727 % 4i)];
        let x_1732 : vec3<f32> = vs_INTERP7;
        let x_1735 : vec4<f32> = u_xlat11;
        let x_1737 : vec3<f32> = ((vec3<f32>(x_1730.x, x_1730.y, x_1730.w) * vec3<f32>(x_1732.x, x_1732.x, x_1732.x)) + vec3<f32>(x_1735.x, x_1735.y, x_1735.z));
        let x_1738 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1737.x, x_1737.y, x_1737.z, x_1738.w);
        let x_1740 : i32 = u_xlati52;
        let x_1743 : i32 = u_xlati52;
        let x_1747 : vec4<f32> = x_933.x_AdditionalLightsWorldToLights[((x_1740 + 2i) / 4i)][((x_1743 + 2i) % 4i)];
        let x_1749 : vec3<f32> = vs_INTERP7;
        let x_1752 : vec4<f32> = u_xlat11;
        let x_1754 : vec3<f32> = ((vec3<f32>(x_1747.x, x_1747.y, x_1747.w) * vec3<f32>(x_1749.z, x_1749.z, x_1749.z)) + vec3<f32>(x_1752.x, x_1752.y, x_1752.z));
        let x_1755 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1754.x, x_1754.y, x_1754.z, x_1755.w);
        let x_1757 : vec4<f32> = u_xlat11;
        let x_1759 : i32 = u_xlati52;
        let x_1762 : i32 = u_xlati52;
        let x_1766 : vec4<f32> = x_933.x_AdditionalLightsWorldToLights[((x_1759 + 3i) / 4i)][((x_1762 + 3i) % 4i)];
        let x_1768 : vec3<f32> = (vec3<f32>(x_1757.x, x_1757.y, x_1757.z) + vec3<f32>(x_1766.x, x_1766.y, x_1766.w));
        let x_1769 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1768.x, x_1768.y, x_1768.z, x_1769.w);
        let x_1771 : vec4<f32> = u_xlat11;
        let x_1773 : vec4<f32> = u_xlat11;
        let x_1775 : vec2<f32> = (vec2<f32>(x_1771.x, x_1771.y) / vec2<f32>(x_1773.z, x_1773.z));
        let x_1776 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1775.x, x_1775.y, x_1776.z, x_1776.w);
        let x_1778 : vec4<f32> = u_xlat11;
        let x_1781 : vec2<f32> = ((vec2<f32>(x_1778.x, x_1778.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1782 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1781.x, x_1781.y, x_1782.z, x_1782.w);
        let x_1784 : vec4<f32> = u_xlat11;
        let x_1788 : vec2<f32> = clamp(vec2<f32>(x_1784.x, x_1784.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1789 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1788.x, x_1788.y, x_1789.z, x_1789.w);
        let x_1791 : i32 = u_xlati47;
        let x_1793 : vec4<f32> = x_933.x_AdditionalLightsCookieAtlasUVRects[x_1791];
        let x_1795 : vec4<f32> = u_xlat11;
        let x_1798 : i32 = u_xlati47;
        let x_1800 : vec4<f32> = x_933.x_AdditionalLightsCookieAtlasUVRects[x_1798];
        let x_1802 : vec2<f32> = ((vec2<f32>(x_1793.x, x_1793.y) * vec2<f32>(x_1795.x, x_1795.y)) + vec2<f32>(x_1800.z, x_1800.w));
        let x_1803 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1802.x, x_1802.y, x_1803.z, x_1803.w);
      } else {
        let x_1806 : i32 = u_xlati50;
        u_xlatb50 = (x_1806 == 1i);
        let x_1808 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_1808);
        let x_1810 : i32 = u_xlati50;
        if ((x_1810 != 0i)) {
          let x_1816 : vec3<f32> = vs_INTERP7;
          let x_1818 : i32 = u_xlati52;
          let x_1821 : i32 = u_xlati52;
          let x_1825 : vec4<f32> = x_933.x_AdditionalLightsWorldToLights[((x_1818 + 1i) / 4i)][((x_1821 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1816.y, x_1816.y) * vec2<f32>(x_1825.x, x_1825.y));
          let x_1828 : i32 = u_xlati52;
          let x_1830 : i32 = u_xlati52;
          let x_1833 : vec4<f32> = x_933.x_AdditionalLightsWorldToLights[(x_1828 / 4i)][(x_1830 % 4i)];
          let x_1835 : vec3<f32> = vs_INTERP7;
          let x_1838 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1833.x, x_1833.y) * vec2<f32>(x_1835.x, x_1835.x)) + x_1838);
          let x_1840 : i32 = u_xlati52;
          let x_1843 : i32 = u_xlati52;
          let x_1847 : vec4<f32> = x_933.x_AdditionalLightsWorldToLights[((x_1840 + 2i) / 4i)][((x_1843 + 2i) % 4i)];
          let x_1849 : vec3<f32> = vs_INTERP7;
          let x_1852 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1847.x, x_1847.y) * vec2<f32>(x_1849.z, x_1849.z)) + x_1852);
          let x_1854 : vec2<f32> = u_xlat39;
          let x_1855 : i32 = u_xlati52;
          let x_1858 : i32 = u_xlati52;
          let x_1862 : vec4<f32> = x_933.x_AdditionalLightsWorldToLights[((x_1855 + 3i) / 4i)][((x_1858 + 3i) % 4i)];
          u_xlat39 = (x_1854 + vec2<f32>(x_1862.x, x_1862.y));
          let x_1865 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1865 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1868 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1868);
          let x_1870 : i32 = u_xlati47;
          let x_1872 : vec4<f32> = x_933.x_AdditionalLightsCookieAtlasUVRects[x_1870];
          let x_1874 : vec2<f32> = u_xlat39;
          let x_1876 : i32 = u_xlati47;
          let x_1878 : vec4<f32> = x_933.x_AdditionalLightsCookieAtlasUVRects[x_1876];
          let x_1880 : vec2<f32> = ((vec2<f32>(x_1872.x, x_1872.y) * x_1874) + vec2<f32>(x_1878.z, x_1878.w));
          let x_1881 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1880.x, x_1880.y, x_1881.z, x_1881.w);
        } else {
          let x_1885 : vec3<f32> = vs_INTERP7;
          let x_1887 : i32 = u_xlati52;
          let x_1890 : i32 = u_xlati52;
          let x_1894 : vec4<f32> = x_933.x_AdditionalLightsWorldToLights[((x_1887 + 1i) / 4i)][((x_1890 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1885.y, x_1885.y, x_1885.y, x_1885.y) * x_1894);
          let x_1896 : i32 = u_xlati52;
          let x_1898 : i32 = u_xlati52;
          let x_1901 : vec4<f32> = x_933.x_AdditionalLightsWorldToLights[(x_1896 / 4i)][(x_1898 % 4i)];
          let x_1902 : vec3<f32> = vs_INTERP7;
          let x_1905 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1901 * vec4<f32>(x_1902.x, x_1902.x, x_1902.x, x_1902.x)) + x_1905);
          let x_1907 : i32 = u_xlati52;
          let x_1910 : i32 = u_xlati52;
          let x_1914 : vec4<f32> = x_933.x_AdditionalLightsWorldToLights[((x_1907 + 2i) / 4i)][((x_1910 + 2i) % 4i)];
          let x_1915 : vec3<f32> = vs_INTERP7;
          let x_1918 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1914 * vec4<f32>(x_1915.z, x_1915.z, x_1915.z, x_1915.z)) + x_1918);
          let x_1920 : vec4<f32> = u_xlat12;
          let x_1921 : i32 = u_xlati52;
          let x_1924 : i32 = u_xlati52;
          let x_1928 : vec4<f32> = x_933.x_AdditionalLightsWorldToLights[((x_1921 + 3i) / 4i)][((x_1924 + 3i) % 4i)];
          u_xlat12 = (x_1920 + x_1928);
          let x_1930 : vec4<f32> = u_xlat12;
          let x_1932 : vec4<f32> = u_xlat12;
          let x_1934 : vec3<f32> = (vec3<f32>(x_1930.x, x_1930.y, x_1930.z) / vec3<f32>(x_1932.w, x_1932.w, x_1932.w));
          let x_1935 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1934.x, x_1934.y, x_1934.z, x_1935.w);
          let x_1937 : vec4<f32> = u_xlat12;
          let x_1939 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_1937.x, x_1937.y, x_1937.z), vec3<f32>(x_1939.x, x_1939.y, x_1939.z));
          let x_1942 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_1942);
          let x_1944 : f32 = u_xlat50;
          let x_1946 : vec4<f32> = u_xlat12;
          let x_1948 : vec3<f32> = (vec3<f32>(x_1944, x_1944, x_1944) * vec3<f32>(x_1946.x, x_1946.y, x_1946.z));
          let x_1949 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1948.x, x_1948.y, x_1948.z, x_1949.w);
          let x_1951 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_1951.x, x_1951.y, x_1951.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1956 : f32 = u_xlat50;
          u_xlat50 = max(x_1956, 0.00000099999999747524f);
          let x_1959 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_1959);
          let x_1962 : f32 = u_xlat50;
          let x_1964 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1962, x_1962, x_1962) * vec3<f32>(x_1964.z, x_1964.x, x_1964.y));
          let x_1968 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1968);
          let x_1972 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1972, 0.0f, 1.0f);
          let x_1976 : vec3<f32> = u_xlat13;
          let x_1978 : vec4<bool> = (vec4<f32>(x_1976.y, x_1976.z, x_1976.y, x_1976.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1978.x, x_1978.y);
          let x_1981 : bool = u_xlatb39.x;
          if (x_1981) {
            let x_1986 : f32 = u_xlat13.x;
            x_1982 = x_1986;
          } else {
            let x_1989 : f32 = u_xlat13.x;
            x_1982 = -(x_1989);
          }
          let x_1991 : f32 = x_1982;
          u_xlat39.x = x_1991;
          let x_1994 : bool = u_xlatb39.y;
          if (x_1994) {
            let x_1999 : f32 = u_xlat13.x;
            x_1995 = x_1999;
          } else {
            let x_2002 : f32 = u_xlat13.x;
            x_1995 = -(x_2002);
          }
          let x_2004 : f32 = x_1995;
          u_xlat39.y = x_2004;
          let x_2006 : vec4<f32> = u_xlat12;
          let x_2008 : f32 = u_xlat50;
          let x_2011 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_2006.x, x_2006.y) * vec2<f32>(x_2008, x_2008)) + x_2011);
          let x_2013 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_2013 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2016 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_2016, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2020 : i32 = u_xlati47;
          let x_2022 : vec4<f32> = x_933.x_AdditionalLightsCookieAtlasUVRects[x_2020];
          let x_2024 : vec2<f32> = u_xlat39;
          let x_2026 : i32 = u_xlati47;
          let x_2028 : vec4<f32> = x_933.x_AdditionalLightsCookieAtlasUVRects[x_2026];
          let x_2030 : vec2<f32> = ((vec2<f32>(x_2022.x, x_2022.y) * x_2024) + vec2<f32>(x_2028.z, x_2028.w));
          let x_2031 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2030.x, x_2030.y, x_2031.z, x_2031.w);
        }
      }
      let x_2038 : vec4<f32> = u_xlat11;
      let x_2040 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_2038.x, x_2038.y), 0.0f);
      u_xlat11 = x_2040;
      let x_2042 : bool = u_xlatb7.y;
      if (x_2042) {
        let x_2047 : f32 = u_xlat11.w;
        x_2043 = x_2047;
      } else {
        let x_2050 : f32 = u_xlat11.x;
        x_2043 = x_2050;
      }
      let x_2051 : f32 = x_2043;
      u_xlat50 = x_2051;
      let x_2053 : bool = u_xlatb7.x;
      if (x_2053) {
        let x_2057 : vec4<f32> = u_xlat11;
        x_2054 = vec3<f32>(x_2057.x, x_2057.y, x_2057.z);
      } else {
        let x_2060 : f32 = u_xlat50;
        x_2054 = vec3<f32>(x_2060, x_2060, x_2060);
      }
      let x_2062 : vec3<f32> = x_2054;
      let x_2063 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2062.x, x_2062.y, x_2062.z, x_2063.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2069 : vec4<f32> = u_xlat11;
    let x_2071 : i32 = u_xlati47;
    let x_2073 : vec4<f32> = x_1419.x_AdditionalLightsColor[x_2071];
    let x_2075 : vec3<f32> = (vec3<f32>(x_2069.x, x_2069.y, x_2069.z) * vec3<f32>(x_2073.x, x_2073.y, x_2073.z));
    let x_2076 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2075.x, x_2075.y, x_2075.z, x_2076.w);
    let x_2078 : f32 = u_xlat48;
    let x_2079 : f32 = u_xlat49;
    u_xlat47 = (x_2078 * x_2079);
    let x_2081 : vec4<f32> = u_xlat4;
    let x_2083 : vec3<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_2081.x, x_2081.y, x_2081.z), x_2083);
    let x_2085 : f32 = u_xlat48;
    u_xlat48 = clamp(x_2085, 0.0f, 1.0f);
    let x_2087 : f32 = u_xlat47;
    let x_2088 : f32 = u_xlat48;
    u_xlat47 = (x_2087 * x_2088);
    let x_2090 : f32 = u_xlat47;
    let x_2092 : vec4<f32> = u_xlat11;
    let x_2094 : vec3<f32> = (vec3<f32>(x_2090, x_2090, x_2090) * vec3<f32>(x_2092.x, x_2092.y, x_2092.z));
    let x_2095 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2094.x, x_2094.y, x_2094.z, x_2095.w);
    let x_2097 : vec3<f32> = u_xlat9;
    let x_2098 : f32 = u_xlat35;
    let x_2101 : vec3<f32> = u_xlat14;
    u_xlat9 = ((x_2097 * vec3<f32>(x_2098, x_2098, x_2098)) + x_2101);
    let x_2103 : vec3<f32> = u_xlat9;
    let x_2104 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_2103, x_2104);
    let x_2106 : f32 = u_xlat47;
    u_xlat47 = max(x_2106, 1.17549435e-38f);
    let x_2108 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_2108);
    let x_2110 : f32 = u_xlat47;
    let x_2112 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_2110, x_2110, x_2110) * x_2112);
    let x_2114 : vec4<f32> = u_xlat4;
    let x_2116 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_2114.x, x_2114.y, x_2114.z), x_2116);
    let x_2118 : f32 = u_xlat47;
    u_xlat47 = clamp(x_2118, 0.0f, 1.0f);
    let x_2120 : vec3<f32> = u_xlat10;
    let x_2121 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_2120, x_2121);
    let x_2123 : f32 = u_xlat48;
    u_xlat48 = clamp(x_2123, 0.0f, 1.0f);
    let x_2125 : f32 = u_xlat47;
    let x_2126 : f32 = u_xlat47;
    u_xlat47 = (x_2125 * x_2126);
    let x_2128 : f32 = u_xlat47;
    let x_2130 : f32 = u_xlat2.x;
    u_xlat47 = ((x_2128 * x_2130) + 1.00001001358032226562f);
    let x_2133 : f32 = u_xlat48;
    let x_2134 : f32 = u_xlat48;
    u_xlat48 = (x_2133 * x_2134);
    let x_2136 : f32 = u_xlat47;
    let x_2137 : f32 = u_xlat47;
    u_xlat47 = (x_2136 * x_2137);
    let x_2139 : f32 = u_xlat48;
    u_xlat48 = max(x_2139, 0.10000000149011611938f);
    let x_2141 : f32 = u_xlat47;
    let x_2142 : f32 = u_xlat48;
    u_xlat47 = (x_2141 * x_2142);
    let x_2144 : f32 = u_xlat44;
    let x_2145 : f32 = u_xlat47;
    u_xlat47 = (x_2144 * x_2145);
    let x_2147 : f32 = u_xlat30;
    let x_2148 : f32 = u_xlat47;
    u_xlat47 = (x_2147 / x_2148);
    let x_2150 : vec3<f32> = u_xlat15;
    let x_2151 : f32 = u_xlat47;
    let x_2154 : vec3<f32> = u_xlat3;
    u_xlat9 = ((x_2150 * vec3<f32>(x_2151, x_2151, x_2151)) + x_2154);
    let x_2156 : vec3<f32> = u_xlat9;
    let x_2157 : vec4<f32> = u_xlat11;
    let x_2160 : vec3<f32> = u_xlat8;
    u_xlat8 = ((x_2156 * vec3<f32>(x_2157.x, x_2157.y, x_2157.z)) + x_2160);

    continuing {
      let x_2162 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2162 + bitcast<u32>(1i));
    }
  }
  let x_2164 : vec3<f32> = u_xlat5;
  let x_2165 : f32 = u_xlat45;
  let x_2168 : vec4<f32> = u_xlat6;
  let x_2170 : vec3<f32> = ((x_2164 * vec3<f32>(x_2165, x_2165, x_2165)) + vec3<f32>(x_2168.x, x_2168.y, x_2168.z));
  let x_2171 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2170.x, x_2170.y, x_2170.z, x_2171.w);
  let x_2173 : vec3<f32> = u_xlat8;
  let x_2174 : vec4<f32> = u_xlat0;
  let x_2176 : vec3<f32> = (x_2173 + vec3<f32>(x_2174.x, x_2174.y, x_2174.z));
  let x_2177 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2176.x, x_2176.y, x_2176.z, x_2177.w);
  let x_2181 : f32 = u_xlat1.x;
  let x_2183 : f32 = u_xlat1.x;
  u_xlat42 = (x_2181 * -(x_2183));
  let x_2186 : f32 = u_xlat42;
  u_xlat42 = exp2(x_2186);
  let x_2188 : vec4<f32> = u_xlat0;
  let x_2191 : vec4<f32> = x_135.unity_FogColor;
  let x_2194 : vec3<f32> = (vec3<f32>(x_2188.x, x_2188.y, x_2188.z) + -(vec3<f32>(x_2191.x, x_2191.y, x_2191.z)));
  let x_2195 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2194.x, x_2194.y, x_2194.z, x_2195.w);
  let x_2199 : f32 = u_xlat42;
  let x_2201 : vec4<f32> = u_xlat0;
  let x_2205 : vec4<f32> = x_135.unity_FogColor;
  let x_2207 : vec3<f32> = ((vec3<f32>(x_2199, x_2199, x_2199) * vec3<f32>(x_2201.x, x_2201.y, x_2201.z)) + vec3<f32>(x_2205.x, x_2205.y, x_2205.z));
  let x_2208 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2207.x, x_2207.y, x_2207.z, x_2208.w);
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


