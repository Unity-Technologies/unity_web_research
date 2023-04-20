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

var<private> u_xlat15 : vec2<f32>;

var<private> u_xlat18 : vec3<f32>;

@group(0) @binding(8) var Texture2D_C005B064 : texture_2d<f32>;

@group(0) @binding(17) var samplerTexture2D_C005B064 : sampler;

@group(0) @binding(5) var x_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D : texture_2d<f32>;

@group(0) @binding(14) var sampler_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D : sampler;

var<private> u_xlat28 : f32;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat17 : f32;

var<private> u_xlat31 : f32;

var<private> vs_INTERP3 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(3) var<uniform> x_827 : LightShadows;

var<private> u_xlatb46 : bool;

var<private> u_xlatb47 : bool;

var<private> u_xlat47 : f32;

@group(1) @binding(4) var<uniform> x_889 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat48 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlat42 : f32;

var<private> u_xlatu42 : u32;

var<private> u_xlatu45 : u32;

var<private> u_xlati46 : i32;

var<private> u_xlati45 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_1334 : AdditionalLights;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlati48 : i32;

var<private> u_xlatb35 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat49 : f32;

var<private> u_xlat35 : vec2<f32>;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb49 : bool;

var<private> u_xlati35 : i32;

var<private> u_xlati49 : i32;

var<private> u_xlati51 : i32;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlatb39 : vec2<bool>;

var<private> u_xlat39 : vec2<f32>;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu44 : u32;

var<private> u_xlatb45 : bool;

fn main_1() {
  var x_639 : f32;
  var x_652 : f32;
  var x_664 : f32;
  var txVec0 : vec3<f32>;
  var x_973 : f32;
  var x_984 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1463 : f32;
  var x_1473 : f32;
  var txVec1 : vec3<f32>;
  var x_1911 : f32;
  var x_1924 : f32;
  var x_1972 : f32;
  var x_1984 : vec3<f32>;
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
  let x_311 : f32 = u_xlat1.x;
  u_xlat15.x = ((x_311 * -2.0f) + 3.0f);
  let x_316 : f32 = u_xlat1.x;
  let x_318 : f32 = u_xlat1.x;
  u_xlat1.x = (x_316 * x_318);
  let x_322 : f32 = u_xlat1.x;
  let x_324 : f32 = u_xlat15.x;
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
  u_xlat18 = vec3<f32>(x_365.x, x_365.y, x_365.w);
  let x_368 : f32 = u_xlat18.x;
  let x_370 : f32 = u_xlat18.z;
  u_xlat18.x = (x_368 * x_370);
  let x_373 : vec3<f32> = u_xlat18;
  let x_378 : vec2<f32> = ((vec2<f32>(x_373.x, x_373.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_379 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_378.x, x_378.y, x_379.z);
  let x_381 : vec3<f32> = u_xlat5;
  let x_383 : vec3<f32> = u_xlat5;
  u_xlat15.x = dot(vec2<f32>(x_381.x, x_381.y), vec2<f32>(x_383.x, x_383.y));
  let x_388 : f32 = u_xlat15.x;
  u_xlat15.x = min(x_388, 1.0f);
  let x_392 : f32 = u_xlat15.x;
  u_xlat15.x = (-(x_392) + 1.0f);
  let x_397 : f32 = u_xlat15.x;
  u_xlat15.x = sqrt(x_397);
  let x_401 : f32 = u_xlat15.x;
  u_xlat5.z = max(x_401, 0.0000000000000001f);
  let x_407 : vec4<f32> = x_48.unity_ObjectToWorld[0i];
  let x_410 : vec4<f32> = x_48.unity_ObjectToWorld[0i];
  u_xlat15.x = dot(vec3<f32>(x_407.x, x_407.y, x_407.z), vec3<f32>(x_410.x, x_410.y, x_410.z));
  let x_415 : f32 = u_xlat15.x;
  u_xlat6.x = sqrt(x_415);
  let x_420 : vec4<f32> = x_48.unity_ObjectToWorld[1i];
  let x_423 : vec4<f32> = x_48.unity_ObjectToWorld[1i];
  u_xlat15.x = dot(vec3<f32>(x_420.x, x_420.y, x_420.z), vec3<f32>(x_423.x, x_423.y, x_423.z));
  let x_428 : f32 = u_xlat15.x;
  u_xlat6.y = sqrt(x_428);
  let x_433 : vec4<f32> = x_48.unity_ObjectToWorld[2i];
  let x_436 : vec4<f32> = x_48.unity_ObjectToWorld[2i];
  u_xlat15.x = dot(vec3<f32>(x_433.x, x_433.y, x_433.z), vec3<f32>(x_436.x, x_436.y, x_436.z));
  let x_441 : f32 = u_xlat15.x;
  u_xlat6.z = sqrt(x_441);
  let x_444 : vec4<f32> = u_xlat6;
  let x_446 : vec4<f32> = u_xlat6;
  u_xlat15.x = dot(vec3<f32>(x_444.x, x_444.y, x_444.z), vec3<f32>(x_446.x, x_446.y, x_446.z));
  let x_451 : f32 = u_xlat15.x;
  u_xlat15.x = sqrt(x_451);
  let x_455 : f32 = u_xlat15.x;
  let x_458 : f32 = x_195.Vector1_90E376AD;
  u_xlat15.x = (x_455 * x_458);
  let x_462 : f32 = u_xlat15.x;
  u_xlat15.x = (x_462 * 30.0f);
  let x_466 : vec2<f32> = u_xlat15;
  let x_468 : vec4<f32> = vs_INTERP5;
  u_xlat15 = (vec2<f32>(x_466.x, x_466.x) * vec2<f32>(x_468.x, x_468.y));
  let x_476 : vec2<f32> = u_xlat15;
  let x_478 : f32 = x_135.x_GlobalMipBias.x;
  let x_479 : vec4<f32> = textureSampleBias(x_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D, sampler_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D, x_476, x_478);
  u_xlat18 = vec3<f32>(x_479.x, x_479.y, x_479.w);
  let x_482 : f32 = u_xlat18.x;
  let x_484 : f32 = u_xlat18.z;
  u_xlat18.x = (x_482 * x_484);
  let x_487 : vec3<f32> = u_xlat18;
  u_xlat15 = ((vec2<f32>(x_487.x, x_487.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_491 : vec2<f32> = u_xlat15;
  let x_492 : vec2<f32> = u_xlat15;
  u_xlat44 = dot(x_491, x_492);
  let x_494 : f32 = u_xlat44;
  u_xlat44 = min(x_494, 1.0f);
  let x_496 : f32 = u_xlat44;
  u_xlat44 = (-(x_496) + 1.0f);
  let x_499 : f32 = u_xlat44;
  u_xlat44 = sqrt(x_499);
  let x_501 : f32 = u_xlat44;
  u_xlat44 = max(x_501, 0.0000000000000001f);
  let x_503 : vec2<f32> = u_xlat15;
  let x_504 : vec3<f32> = u_xlat21;
  let x_506 : vec2<f32> = (x_503 + vec2<f32>(x_504.x, x_504.y));
  let x_507 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_506.x, x_506.y, x_507.z, x_507.w);
  let x_509 : f32 = u_xlat44;
  let x_511 : f32 = u_xlat21.z;
  u_xlat6.z = (x_509 * x_511);
  let x_514 : vec4<f32> = u_xlat6;
  let x_516 : vec4<f32> = u_xlat6;
  u_xlat15.x = dot(vec3<f32>(x_514.x, x_514.y, x_514.z), vec3<f32>(x_516.x, x_516.y, x_516.z));
  let x_521 : f32 = u_xlat15.x;
  u_xlat15.x = max(x_521, 0.00006103515625f);
  let x_526 : f32 = u_xlat15.x;
  u_xlat15.x = inverseSqrt(x_526);
  let x_529 : vec4<f32> = u_xlat6;
  let x_531 : vec2<f32> = u_xlat15;
  let x_534 : vec3<f32> = u_xlat5;
  u_xlat18 = ((vec3<f32>(x_529.x, x_529.y, x_529.z) * vec3<f32>(x_531.x, x_531.x, x_531.x)) + -(x_534));
  let x_537 : vec4<f32> = u_xlat1;
  let x_539 : vec3<f32> = u_xlat18;
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
  u_xlat14 = ((vec3<f32>(x_581.y, x_581.y, x_581.y) * vec3<f32>(x_583.x, x_583.y, x_583.z)) + vec3<f32>(x_586.y, x_586.z, x_586.w));
  let x_589 : vec4<f32> = u_xlat4;
  let x_591 : vec3<f32> = vs_INTERP8;
  let x_593 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_589.w, x_589.w, x_589.w) * x_591) + x_593);
  let x_595 : vec3<f32> = u_xlat14;
  let x_596 : vec3<f32> = u_xlat14;
  u_xlat1.x = dot(x_595, x_596);
  let x_600 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_600);
  let x_603 : vec3<f32> = u_xlat14;
  let x_604 : vec4<f32> = u_xlat1;
  let x_606 : vec3<f32> = (x_603 * vec3<f32>(x_604.x, x_604.x, x_604.x));
  let x_607 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_606.x, x_606.y, x_606.z, x_607.w);
  let x_610 : f32 = x_135.unity_OrthoParams.w;
  u_xlatb14.x = (x_610 == 0.0f);
  let x_613 : vec3<f32> = vs_INTERP7;
  let x_617 : vec3<f32> = x_135.x_WorldSpaceCameraPos;
  let x_618 : vec3<f32> = (-(x_613) + x_617);
  let x_619 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_618.x, x_618.y, x_618.z, x_619.w);
  let x_622 : vec4<f32> = u_xlat1;
  let x_624 : vec4<f32> = u_xlat1;
  u_xlat28 = dot(vec3<f32>(x_622.x, x_622.y, x_622.z), vec3<f32>(x_624.x, x_624.y, x_624.z));
  let x_627 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_627);
  let x_629 : f32 = u_xlat28;
  let x_631 : vec4<f32> = u_xlat1;
  let x_633 : vec3<f32> = (vec3<f32>(x_629, x_629, x_629) * vec3<f32>(x_631.x, x_631.y, x_631.z));
  let x_634 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_633.x, x_633.y, x_633.z, x_634.w);
  let x_637 : bool = u_xlatb14.x;
  if (x_637) {
    let x_643 : f32 = u_xlat1.x;
    x_639 = x_643;
  } else {
    let x_647 : f32 = x_135.unity_MatrixV[0i].z;
    x_639 = x_647;
  }
  let x_648 : f32 = x_639;
  u_xlat5.x = x_648;
  let x_651 : bool = u_xlatb14.x;
  if (x_651) {
    let x_656 : f32 = u_xlat1.y;
    x_652 = x_656;
  } else {
    let x_659 : f32 = x_135.unity_MatrixV[1i].z;
    x_652 = x_659;
  }
  let x_660 : f32 = x_652;
  u_xlat5.y = x_660;
  let x_663 : bool = u_xlatb14.x;
  if (x_663) {
    let x_668 : f32 = u_xlat1.z;
    x_664 = x_668;
  } else {
    let x_671 : f32 = x_135.unity_MatrixV[2i].z;
    x_664 = x_671;
  }
  let x_672 : f32 = x_664;
  u_xlat5.z = x_672;
  u_xlat4.w = 1.0f;
  let x_677 : vec4<f32> = x_48.unity_SHAr;
  let x_678 : vec4<f32> = u_xlat4;
  u_xlat1.x = dot(x_677, x_678);
  let x_683 : vec4<f32> = x_48.unity_SHAg;
  let x_684 : vec4<f32> = u_xlat4;
  u_xlat1.y = dot(x_683, x_684);
  let x_689 : vec4<f32> = x_48.unity_SHAb;
  let x_690 : vec4<f32> = u_xlat4;
  u_xlat1.z = dot(x_689, x_690);
  let x_693 : vec4<f32> = u_xlat4;
  let x_695 : vec4<f32> = u_xlat4;
  u_xlat6 = (vec4<f32>(x_693.y, x_693.z, x_693.z, x_693.x) * vec4<f32>(x_695.x, x_695.y, x_695.z, x_695.z));
  let x_701 : vec4<f32> = x_48.unity_SHBr;
  let x_702 : vec4<f32> = u_xlat6;
  u_xlat8.x = dot(x_701, x_702);
  let x_707 : vec4<f32> = x_48.unity_SHBg;
  let x_708 : vec4<f32> = u_xlat6;
  u_xlat8.y = dot(x_707, x_708);
  let x_713 : vec4<f32> = x_48.unity_SHBb;
  let x_714 : vec4<f32> = u_xlat6;
  u_xlat8.z = dot(x_713, x_714);
  let x_718 : f32 = u_xlat4.y;
  let x_720 : f32 = u_xlat4.y;
  u_xlat14.x = (x_718 * x_720);
  let x_724 : f32 = u_xlat4.x;
  let x_726 : f32 = u_xlat4.x;
  let x_729 : f32 = u_xlat14.x;
  u_xlat14.x = ((x_724 * x_726) + -(x_729));
  let x_735 : vec4<f32> = x_48.unity_SHC;
  let x_737 : vec3<f32> = u_xlat14;
  let x_740 : vec3<f32> = u_xlat8;
  u_xlat14 = ((vec3<f32>(x_735.x, x_735.y, x_735.z) * vec3<f32>(x_737.x, x_737.x, x_737.x)) + x_740);
  let x_742 : vec3<f32> = u_xlat14;
  let x_743 : vec4<f32> = u_xlat1;
  u_xlat14 = (x_742 + vec3<f32>(x_743.x, x_743.y, x_743.z));
  let x_746 : vec3<f32> = u_xlat14;
  u_xlat14 = max(x_746, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_749 : vec3<f32> = u_xlat3;
  let x_752 : vec3<f32> = (x_749 * vec3<f32>(0.86399996280670166016f, 0.86399996280670166016f, 0.86399996280670166016f));
  let x_753 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_752.x, x_752.y, x_752.z, x_753.w);
  let x_755 : vec4<f32> = u_xlat1;
  let x_757 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_755.w, x_755.w, x_755.w) * x_757) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_762 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_762 * vec3<f32>(0.10000000149011611938f, 0.10000000149011611938f, 0.10000000149011611938f)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_769 : f32 = u_xlat0.x;
  u_xlat43 = (-(x_769) + 1.0f);
  let x_772 : f32 = u_xlat43;
  let x_773 : f32 = u_xlat43;
  u_xlat44 = (x_772 * x_773);
  let x_775 : f32 = u_xlat44;
  u_xlat44 = max(x_775, 0.0078125f);
  let x_778 : f32 = u_xlat44;
  let x_779 : f32 = u_xlat44;
  u_xlat3.x = (x_778 * x_779);
  let x_783 : f32 = u_xlat0.x;
  u_xlat0.x = (x_783 + 0.13600003719329833984f);
  let x_788 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_788, 1.0f);
  let x_792 : f32 = u_xlat44;
  u_xlat17 = ((x_792 * 4.0f) + 2.0f);
  let x_797 : f32 = u_xlat7.x;
  u_xlat31 = min(x_797, 1.0f);
  let x_802 : vec4<f32> = vs_INTERP3;
  let x_803 : vec2<f32> = vec2<f32>(x_802.x, x_802.y);
  let x_805 : f32 = vs_INTERP3.z;
  txVec0 = vec3<f32>(x_803.x, x_803.y, x_805);
  let x_817 : vec3<f32> = txVec0;
  let x_819 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_817.xy, x_817.z);
  u_xlat45 = x_819;
  let x_829 : f32 = x_827.x_MainLightShadowParams.x;
  u_xlat46 = (-(x_829) + 1.0f);
  let x_832 : f32 = u_xlat45;
  let x_834 : f32 = x_827.x_MainLightShadowParams.x;
  let x_836 : f32 = u_xlat46;
  u_xlat45 = ((x_832 * x_834) + x_836);
  let x_840 : f32 = vs_INTERP3.z;
  u_xlatb46 = (0.0f >= x_840);
  let x_844 : f32 = vs_INTERP3.z;
  u_xlatb47 = (x_844 >= 1.0f);
  let x_846 : bool = u_xlatb46;
  let x_847 : bool = u_xlatb47;
  u_xlatb46 = (x_846 | x_847);
  let x_849 : bool = u_xlatb46;
  let x_850 : f32 = u_xlat45;
  u_xlat45 = select(x_850, 1.0f, x_849);
  let x_852 : vec3<f32> = vs_INTERP7;
  let x_854 : vec3<f32> = x_135.x_WorldSpaceCameraPos;
  let x_856 : vec3<f32> = (x_852 + -(x_854));
  let x_857 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_856.x, x_856.y, x_856.z, x_857.w);
  let x_859 : vec4<f32> = u_xlat6;
  let x_861 : vec4<f32> = u_xlat6;
  u_xlat46 = dot(vec3<f32>(x_859.x, x_859.y, x_859.z), vec3<f32>(x_861.x, x_861.y, x_861.z));
  let x_865 : f32 = u_xlat46;
  let x_867 : f32 = x_827.x_MainLightShadowParams.z;
  let x_870 : f32 = x_827.x_MainLightShadowParams.w;
  u_xlat47 = ((x_865 * x_867) + x_870);
  let x_872 : f32 = u_xlat47;
  u_xlat47 = clamp(x_872, 0.0f, 1.0f);
  let x_874 : f32 = u_xlat45;
  u_xlat6.x = (-(x_874) + 1.0f);
  let x_878 : f32 = u_xlat47;
  let x_880 : f32 = u_xlat6.x;
  let x_882 : f32 = u_xlat45;
  u_xlat45 = ((x_878 * x_880) + x_882);
  let x_891 : f32 = x_889.x_MainLightCookieTextureFormat;
  u_xlatb47 = !((x_891 == -1.0f));
  let x_893 : bool = u_xlatb47;
  if (x_893) {
    let x_896 : vec3<f32> = vs_INTERP7;
    let x_899 : vec4<f32> = x_889.x_MainLightWorldToLight[1i];
    let x_901 : vec2<f32> = (vec2<f32>(x_896.y, x_896.y) * vec2<f32>(x_899.x, x_899.y));
    let x_902 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_901.x, x_901.y, x_902.z, x_902.w);
    let x_905 : vec4<f32> = x_889.x_MainLightWorldToLight[0i];
    let x_907 : vec3<f32> = vs_INTERP7;
    let x_910 : vec4<f32> = u_xlat6;
    let x_912 : vec2<f32> = ((vec2<f32>(x_905.x, x_905.y) * vec2<f32>(x_907.x, x_907.x)) + vec2<f32>(x_910.x, x_910.y));
    let x_913 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_912.x, x_912.y, x_913.z, x_913.w);
    let x_916 : vec4<f32> = x_889.x_MainLightWorldToLight[2i];
    let x_918 : vec3<f32> = vs_INTERP7;
    let x_921 : vec4<f32> = u_xlat6;
    let x_923 : vec2<f32> = ((vec2<f32>(x_916.x, x_916.y) * vec2<f32>(x_918.z, x_918.z)) + vec2<f32>(x_921.x, x_921.y));
    let x_924 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_923.x, x_923.y, x_924.z, x_924.w);
    let x_926 : vec4<f32> = u_xlat6;
    let x_929 : vec4<f32> = x_889.x_MainLightWorldToLight[3i];
    let x_931 : vec2<f32> = (vec2<f32>(x_926.x, x_926.y) + vec2<f32>(x_929.x, x_929.y));
    let x_932 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_931.x, x_931.y, x_932.z, x_932.w);
    let x_934 : vec4<f32> = u_xlat6;
    let x_939 : vec2<f32> = ((vec2<f32>(x_934.x, x_934.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_940 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_939.x, x_939.y, x_940.z, x_940.w);
    let x_947 : vec4<f32> = u_xlat6;
    let x_950 : f32 = x_135.x_GlobalMipBias.x;
    let x_951 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_947.x, x_947.y), x_950);
    u_xlat6 = x_951;
    let x_954 : f32 = x_889.x_MainLightCookieTextureFormat;
    let x_956 : f32 = x_889.x_MainLightCookieTextureFormat;
    let x_958 : f32 = x_889.x_MainLightCookieTextureFormat;
    let x_960 : f32 = x_889.x_MainLightCookieTextureFormat;
    let x_961 : vec4<f32> = vec4<f32>(x_954, x_956, x_958, x_960);
    let x_969 : vec4<bool> = (vec4<f32>(x_961.x, x_961.y, x_961.z, x_961.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_969.x, x_969.y);
    let x_972 : bool = u_xlatb7.y;
    if (x_972) {
      let x_977 : f32 = u_xlat6.w;
      x_973 = x_977;
    } else {
      let x_980 : f32 = u_xlat6.x;
      x_973 = x_980;
    }
    let x_981 : f32 = x_973;
    u_xlat47 = x_981;
    let x_983 : bool = u_xlatb7.x;
    if (x_983) {
      let x_987 : vec4<f32> = u_xlat6;
      x_984 = vec3<f32>(x_987.x, x_987.y, x_987.z);
    } else {
      let x_990 : f32 = u_xlat47;
      x_984 = vec3<f32>(x_990, x_990, x_990);
    }
    let x_992 : vec3<f32> = x_984;
    let x_993 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_992.x, x_992.y, x_992.z, x_993.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_999 : vec4<f32> = u_xlat6;
  let x_1002 : vec4<f32> = x_135.x_MainLightColor;
  let x_1004 : vec3<f32> = (vec3<f32>(x_999.x, x_999.y, x_999.z) * vec3<f32>(x_1002.x, x_1002.y, x_1002.z));
  let x_1005 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1004.x, x_1004.y, x_1004.z, x_1005.w);
  let x_1007 : vec3<f32> = u_xlat5;
  let x_1009 : vec4<f32> = u_xlat4;
  u_xlat47 = dot(-(x_1007), vec3<f32>(x_1009.x, x_1009.y, x_1009.z));
  let x_1012 : f32 = u_xlat47;
  let x_1013 : f32 = u_xlat47;
  u_xlat47 = (x_1012 + x_1013);
  let x_1015 : vec4<f32> = u_xlat4;
  let x_1017 : f32 = u_xlat47;
  let x_1021 : vec3<f32> = u_xlat5;
  let x_1023 : vec3<f32> = ((vec3<f32>(x_1015.x, x_1015.y, x_1015.z) * -(vec3<f32>(x_1017, x_1017, x_1017))) + -(x_1021));
  let x_1024 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1023.x, x_1023.y, x_1023.z, x_1024.w);
  let x_1026 : vec4<f32> = u_xlat4;
  let x_1028 : vec3<f32> = u_xlat5;
  u_xlat47 = dot(vec3<f32>(x_1026.x, x_1026.y, x_1026.z), x_1028);
  let x_1030 : f32 = u_xlat47;
  u_xlat47 = clamp(x_1030, 0.0f, 1.0f);
  let x_1032 : f32 = u_xlat47;
  u_xlat47 = (-(x_1032) + 1.0f);
  let x_1035 : f32 = u_xlat47;
  let x_1036 : f32 = u_xlat47;
  u_xlat47 = (x_1035 * x_1036);
  let x_1038 : f32 = u_xlat47;
  let x_1039 : f32 = u_xlat47;
  u_xlat47 = (x_1038 * x_1039);
  let x_1042 : f32 = u_xlat43;
  u_xlat48 = ((-(x_1042) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1048 : f32 = u_xlat43;
  let x_1049 : f32 = u_xlat48;
  u_xlat43 = (x_1048 * x_1049);
  let x_1051 : f32 = u_xlat43;
  u_xlat43 = (x_1051 * 6.0f);
  let x_1062 : vec4<f32> = u_xlat7;
  let x_1064 : f32 = u_xlat43;
  let x_1065 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1062.x, x_1062.y, x_1062.z), x_1064);
  u_xlat7 = x_1065;
  let x_1067 : f32 = u_xlat7.w;
  u_xlat43 = (x_1067 + -1.0f);
  let x_1070 : f32 = x_48.unity_SpecCube0_HDR.w;
  let x_1071 : f32 = u_xlat43;
  u_xlat43 = ((x_1070 * x_1071) + 1.0f);
  let x_1074 : f32 = u_xlat43;
  u_xlat43 = max(x_1074, 0.0f);
  let x_1076 : f32 = u_xlat43;
  u_xlat43 = log2(x_1076);
  let x_1078 : f32 = u_xlat43;
  let x_1080 : f32 = x_48.unity_SpecCube0_HDR.y;
  u_xlat43 = (x_1078 * x_1080);
  let x_1082 : f32 = u_xlat43;
  u_xlat43 = exp2(x_1082);
  let x_1084 : f32 = u_xlat43;
  let x_1086 : f32 = x_48.unity_SpecCube0_HDR.x;
  u_xlat43 = (x_1084 * x_1086);
  let x_1088 : vec4<f32> = u_xlat7;
  let x_1090 : f32 = u_xlat43;
  let x_1092 : vec3<f32> = (vec3<f32>(x_1088.x, x_1088.y, x_1088.z) * vec3<f32>(x_1090, x_1090, x_1090));
  let x_1093 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1092.x, x_1092.y, x_1092.z, x_1093.w);
  let x_1095 : f32 = u_xlat44;
  let x_1097 : f32 = u_xlat44;
  let x_1101 : vec2<f32> = ((vec2<f32>(x_1095, x_1095) * vec2<f32>(x_1097, x_1097)) + vec2<f32>(-1.0f, 1.0f));
  let x_1102 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_1101.x, x_1101.y, x_1102.z);
  let x_1105 : f32 = u_xlat8.y;
  u_xlat43 = (1.0f / x_1105);
  let x_1108 : vec3<f32> = u_xlat2;
  let x_1110 : vec4<f32> = u_xlat0;
  u_xlat22 = (-(x_1108) + vec3<f32>(x_1110.x, x_1110.x, x_1110.x));
  let x_1113 : f32 = u_xlat47;
  let x_1115 : vec3<f32> = u_xlat22;
  let x_1117 : vec3<f32> = u_xlat2;
  u_xlat22 = ((vec3<f32>(x_1113, x_1113, x_1113) * x_1115) + x_1117);
  let x_1119 : f32 = u_xlat43;
  let x_1121 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_1119, x_1119, x_1119) * x_1121);
  let x_1123 : vec4<f32> = u_xlat7;
  let x_1125 : vec3<f32> = u_xlat22;
  let x_1126 : vec3<f32> = (vec3<f32>(x_1123.x, x_1123.y, x_1123.z) * x_1125);
  let x_1127 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1126.x, x_1126.y, x_1126.z, x_1127.w);
  let x_1129 : vec3<f32> = u_xlat14;
  let x_1130 : vec4<f32> = u_xlat1;
  let x_1133 : vec4<f32> = u_xlat7;
  let x_1135 : vec3<f32> = ((x_1129 * vec3<f32>(x_1130.x, x_1130.y, x_1130.z)) + vec3<f32>(x_1133.x, x_1133.y, x_1133.z));
  let x_1136 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1135.x, x_1135.y, x_1135.z, x_1136.w);
  let x_1139 : f32 = u_xlat45;
  let x_1141 : f32 = x_48.unity_LightData.z;
  u_xlat42 = (x_1139 * x_1141);
  let x_1143 : vec4<f32> = u_xlat4;
  let x_1146 : vec4<f32> = x_135.x_MainLightPosition;
  u_xlat43 = dot(vec3<f32>(x_1143.x, x_1143.y, x_1143.z), vec3<f32>(x_1146.x, x_1146.y, x_1146.z));
  let x_1149 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1149, 0.0f, 1.0f);
  let x_1151 : f32 = u_xlat42;
  let x_1152 : f32 = u_xlat43;
  u_xlat42 = (x_1151 * x_1152);
  let x_1154 : f32 = u_xlat42;
  let x_1156 : vec4<f32> = u_xlat6;
  let x_1158 : vec3<f32> = (vec3<f32>(x_1154, x_1154, x_1154) * vec3<f32>(x_1156.x, x_1156.y, x_1156.z));
  let x_1159 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1158.x, x_1158.y, x_1158.z, x_1159.w);
  let x_1161 : vec3<f32> = u_xlat5;
  let x_1163 : vec4<f32> = x_135.x_MainLightPosition;
  let x_1165 : vec3<f32> = (x_1161 + vec3<f32>(x_1163.x, x_1163.y, x_1163.z));
  let x_1166 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1165.x, x_1165.y, x_1165.z, x_1166.w);
  let x_1168 : vec4<f32> = u_xlat7;
  let x_1170 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_1168.x, x_1168.y, x_1168.z), vec3<f32>(x_1170.x, x_1170.y, x_1170.z));
  let x_1173 : f32 = u_xlat42;
  u_xlat42 = max(x_1173, 1.17549435e-38f);
  let x_1175 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_1175);
  let x_1177 : f32 = u_xlat42;
  let x_1179 : vec4<f32> = u_xlat7;
  let x_1181 : vec3<f32> = (vec3<f32>(x_1177, x_1177, x_1177) * vec3<f32>(x_1179.x, x_1179.y, x_1179.z));
  let x_1182 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1181.x, x_1181.y, x_1181.z, x_1182.w);
  let x_1184 : vec4<f32> = u_xlat4;
  let x_1186 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_1184.x, x_1184.y, x_1184.z), vec3<f32>(x_1186.x, x_1186.y, x_1186.z));
  let x_1189 : f32 = u_xlat42;
  u_xlat42 = clamp(x_1189, 0.0f, 1.0f);
  let x_1192 : vec4<f32> = x_135.x_MainLightPosition;
  let x_1194 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec3<f32>(x_1192.x, x_1192.y, x_1192.z), vec3<f32>(x_1194.x, x_1194.y, x_1194.z));
  let x_1197 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1197, 0.0f, 1.0f);
  let x_1199 : f32 = u_xlat42;
  let x_1200 : f32 = u_xlat42;
  u_xlat42 = (x_1199 * x_1200);
  let x_1202 : f32 = u_xlat42;
  let x_1204 : f32 = u_xlat8.x;
  u_xlat42 = ((x_1202 * x_1204) + 1.00001001358032226562f);
  let x_1208 : f32 = u_xlat43;
  let x_1209 : f32 = u_xlat43;
  u_xlat43 = (x_1208 * x_1209);
  let x_1211 : f32 = u_xlat42;
  let x_1212 : f32 = u_xlat42;
  u_xlat42 = (x_1211 * x_1212);
  let x_1214 : f32 = u_xlat43;
  u_xlat43 = max(x_1214, 0.10000000149011611938f);
  let x_1216 : f32 = u_xlat42;
  let x_1217 : f32 = u_xlat43;
  u_xlat42 = (x_1216 * x_1217);
  let x_1219 : f32 = u_xlat17;
  let x_1220 : f32 = u_xlat42;
  u_xlat42 = (x_1219 * x_1220);
  let x_1223 : f32 = u_xlat3.x;
  let x_1224 : f32 = u_xlat42;
  u_xlat42 = (x_1223 / x_1224);
  let x_1226 : vec3<f32> = u_xlat2;
  let x_1227 : f32 = u_xlat42;
  let x_1230 : vec4<f32> = u_xlat1;
  let x_1232 : vec3<f32> = ((x_1226 * vec3<f32>(x_1227, x_1227, x_1227)) + vec3<f32>(x_1230.x, x_1230.y, x_1230.z));
  let x_1233 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1232.x, x_1232.y, x_1232.z, x_1233.w);
  let x_1235 : vec4<f32> = u_xlat6;
  let x_1237 : vec4<f32> = u_xlat7;
  let x_1239 : vec3<f32> = (vec3<f32>(x_1235.x, x_1235.y, x_1235.z) * vec3<f32>(x_1237.x, x_1237.y, x_1237.z));
  let x_1240 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1239.x, x_1239.y, x_1239.z, x_1240.w);
  let x_1243 : f32 = x_135.x_AdditionalLightsCount.x;
  let x_1245 : f32 = x_48.unity_LightData.y;
  u_xlat42 = min(x_1243, x_1245);
  let x_1249 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_1249));
  let x_1252 : f32 = u_xlat46;
  let x_1255 : f32 = x_827.x_AdditionalShadowFadeParams.x;
  let x_1258 : f32 = x_827.x_AdditionalShadowFadeParams.y;
  u_xlat43 = ((x_1252 * x_1255) + x_1258);
  let x_1260 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1260, 0.0f, 1.0f);
  let x_1263 : f32 = x_889.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1265 : f32 = x_889.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1267 : f32 = x_889.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1269 : f32 = x_889.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1270 : vec4<f32> = vec4<f32>(x_1263, x_1265, x_1267, x_1269);
  let x_1276 : vec4<bool> = (vec4<f32>(x_1270.x, x_1270.y, x_1270.z, x_1270.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1276.x, x_1276.y);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1288 : u32 = u_xlatu_loop_1;
    let x_1289 : u32 = u_xlatu42;
    if ((x_1288 < x_1289)) {
    } else {
      break;
    }
    let x_1292 : u32 = u_xlatu_loop_1;
    u_xlatu45 = (x_1292 >> 2u);
    let x_1296 : u32 = u_xlatu_loop_1;
    u_xlati46 = bitcast<i32>((x_1296 & 3u));
    let x_1299 : u32 = u_xlatu45;
    let x_1302 : vec4<f32> = x_48.unity_LightIndices[bitcast<i32>(x_1299)];
    let x_1312 : i32 = u_xlati46;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1317 : vec4<u32> = indexable[x_1312];
    u_xlat45 = dot(x_1302, bitcast<vec4<f32>>(x_1317));
    let x_1321 : f32 = u_xlat45;
    u_xlati45 = i32(x_1321);
    let x_1324 : vec3<f32> = vs_INTERP7;
    let x_1335 : i32 = u_xlati45;
    let x_1337 : vec4<f32> = x_1334.x_AdditionalLightsPosition[x_1335];
    let x_1340 : i32 = u_xlati45;
    let x_1342 : vec4<f32> = x_1334.x_AdditionalLightsPosition[x_1340];
    u_xlat9 = ((-(x_1324) * vec3<f32>(x_1337.w, x_1337.w, x_1337.w)) + vec3<f32>(x_1342.x, x_1342.y, x_1342.z));
    let x_1345 : vec3<f32> = u_xlat9;
    let x_1346 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(x_1345, x_1346);
    let x_1348 : f32 = u_xlat46;
    u_xlat46 = max(x_1348, 0.00006103515625f);
    let x_1350 : f32 = u_xlat46;
    u_xlat47 = inverseSqrt(x_1350);
    let x_1353 : f32 = u_xlat47;
    let x_1355 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1353, x_1353, x_1353) * x_1355);
    let x_1357 : f32 = u_xlat46;
    u_xlat48 = (1.0f / x_1357);
    let x_1359 : f32 = u_xlat46;
    let x_1360 : i32 = u_xlati45;
    let x_1362 : f32 = x_1334.x_AdditionalLightsAttenuation[x_1360].x;
    u_xlat46 = (x_1359 * x_1362);
    let x_1364 : f32 = u_xlat46;
    let x_1366 : f32 = u_xlat46;
    u_xlat46 = ((-(x_1364) * x_1366) + 1.0f);
    let x_1369 : f32 = u_xlat46;
    u_xlat46 = max(x_1369, 0.0f);
    let x_1371 : f32 = u_xlat46;
    let x_1372 : f32 = u_xlat46;
    u_xlat46 = (x_1371 * x_1372);
    let x_1374 : f32 = u_xlat46;
    let x_1375 : f32 = u_xlat48;
    u_xlat46 = (x_1374 * x_1375);
    let x_1377 : i32 = u_xlati45;
    let x_1379 : vec4<f32> = x_1334.x_AdditionalLightsSpotDir[x_1377];
    let x_1381 : vec3<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_1379.x, x_1379.y, x_1379.z), x_1381);
    let x_1383 : f32 = u_xlat48;
    let x_1384 : i32 = u_xlati45;
    let x_1386 : f32 = x_1334.x_AdditionalLightsAttenuation[x_1384].z;
    let x_1388 : i32 = u_xlati45;
    let x_1390 : f32 = x_1334.x_AdditionalLightsAttenuation[x_1388].w;
    u_xlat48 = ((x_1383 * x_1386) + x_1390);
    let x_1392 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1392, 0.0f, 1.0f);
    let x_1394 : f32 = u_xlat48;
    let x_1395 : f32 = u_xlat48;
    u_xlat48 = (x_1394 * x_1395);
    let x_1397 : f32 = u_xlat46;
    let x_1398 : f32 = u_xlat48;
    u_xlat46 = (x_1397 * x_1398);
    let x_1402 : i32 = u_xlati45;
    let x_1404 : f32 = x_827.x_AdditionalShadowParams[x_1402].w;
    u_xlati48 = i32(x_1404);
    let x_1407 : i32 = u_xlati48;
    u_xlatb35 = (x_1407 >= 0i);
    let x_1409 : bool = u_xlatb35;
    if (x_1409) {
      let x_1413 : i32 = u_xlati45;
      let x_1415 : f32 = x_827.x_AdditionalShadowParams[x_1413].z;
      u_xlatb35 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1415, x_1415, x_1415, x_1415))));
      let x_1419 : bool = u_xlatb35;
      if (x_1419) {
        let x_1424 : vec3<f32> = u_xlat10;
        let x_1427 : vec3<f32> = u_xlat10;
        let x_1430 : vec4<bool> = (abs(vec4<f32>(x_1424.z, x_1424.z, x_1424.y, x_1424.z)) >= abs(vec4<f32>(x_1427.x, x_1427.y, x_1427.x, x_1427.x)));
        let x_1432 : vec3<bool> = vec3<bool>(x_1430.x, x_1430.y, x_1430.z);
        let x_1433 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1432.x, x_1432.y, x_1432.z, x_1433.w);
        let x_1436 : bool = u_xlatb11.y;
        let x_1438 : bool = u_xlatb11.x;
        u_xlatb35 = (x_1436 & x_1438);
        let x_1440 : vec3<f32> = u_xlat10;
        let x_1443 : vec4<bool> = (-(vec4<f32>(x_1440.z, x_1440.y, x_1440.z, x_1440.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1444 : vec3<bool> = vec3<bool>(x_1443.x, x_1443.y, x_1443.w);
        let x_1445 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1444.x, x_1444.y, x_1445.z, x_1444.z);
        let x_1449 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1449);
        let x_1454 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1454);
        let x_1459 : bool = u_xlatb11.w;
        u_xlat49 = select(0.0f, 1.0f, x_1459);
        let x_1462 : bool = u_xlatb11.z;
        if (x_1462) {
          let x_1467 : f32 = u_xlat11.y;
          x_1463 = x_1467;
        } else {
          let x_1469 : f32 = u_xlat49;
          x_1463 = x_1469;
        }
        let x_1470 : f32 = x_1463;
        u_xlat49 = x_1470;
        let x_1472 : bool = u_xlatb35;
        if (x_1472) {
          let x_1477 : f32 = u_xlat11.x;
          x_1473 = x_1477;
        } else {
          let x_1479 : f32 = u_xlat49;
          x_1473 = x_1479;
        }
        let x_1480 : f32 = x_1473;
        u_xlat35.x = x_1480;
        let x_1482 : i32 = u_xlati45;
        let x_1484 : f32 = x_827.x_AdditionalShadowParams[x_1482].w;
        u_xlat49 = trunc(x_1484);
        let x_1487 : f32 = u_xlat35.x;
        let x_1488 : f32 = u_xlat49;
        u_xlat35.x = (x_1487 + x_1488);
        let x_1492 : f32 = u_xlat35.x;
        u_xlati48 = i32(x_1492);
      }
      let x_1494 : i32 = u_xlati48;
      u_xlati48 = (x_1494 << bitcast<u32>(2i));
      let x_1496 : vec3<f32> = vs_INTERP7;
      let x_1499 : i32 = u_xlati48;
      let x_1502 : i32 = u_xlati48;
      let x_1506 : vec4<f32> = x_827.x_AdditionalLightsWorldToShadow[((x_1499 + 1i) / 4i)][((x_1502 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1496.y, x_1496.y, x_1496.y, x_1496.y) * x_1506);
      let x_1508 : i32 = u_xlati48;
      let x_1510 : i32 = u_xlati48;
      let x_1513 : vec4<f32> = x_827.x_AdditionalLightsWorldToShadow[(x_1508 / 4i)][(x_1510 % 4i)];
      let x_1514 : vec3<f32> = vs_INTERP7;
      let x_1517 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1513 * vec4<f32>(x_1514.x, x_1514.x, x_1514.x, x_1514.x)) + x_1517);
      let x_1519 : i32 = u_xlati48;
      let x_1522 : i32 = u_xlati48;
      let x_1526 : vec4<f32> = x_827.x_AdditionalLightsWorldToShadow[((x_1519 + 2i) / 4i)][((x_1522 + 2i) % 4i)];
      let x_1527 : vec3<f32> = vs_INTERP7;
      let x_1530 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1526 * vec4<f32>(x_1527.z, x_1527.z, x_1527.z, x_1527.z)) + x_1530);
      let x_1532 : vec4<f32> = u_xlat11;
      let x_1533 : i32 = u_xlati48;
      let x_1536 : i32 = u_xlati48;
      let x_1540 : vec4<f32> = x_827.x_AdditionalLightsWorldToShadow[((x_1533 + 3i) / 4i)][((x_1536 + 3i) % 4i)];
      u_xlat11 = (x_1532 + x_1540);
      let x_1542 : vec4<f32> = u_xlat11;
      let x_1544 : vec4<f32> = u_xlat11;
      let x_1546 : vec3<f32> = (vec3<f32>(x_1542.x, x_1542.y, x_1542.z) / vec3<f32>(x_1544.w, x_1544.w, x_1544.w));
      let x_1547 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1546.x, x_1546.y, x_1546.z, x_1547.w);
      let x_1550 : vec4<f32> = u_xlat11;
      let x_1551 : vec2<f32> = vec2<f32>(x_1550.x, x_1550.y);
      let x_1553 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1551.x, x_1551.y, x_1553);
      let x_1561 : vec3<f32> = txVec1;
      let x_1563 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1561.xy, x_1561.z);
      u_xlat48 = x_1563;
      let x_1564 : i32 = u_xlati45;
      let x_1566 : f32 = x_827.x_AdditionalShadowParams[x_1564].x;
      u_xlat35.x = (1.0f + -(x_1566));
      let x_1570 : f32 = u_xlat48;
      let x_1571 : i32 = u_xlati45;
      let x_1573 : f32 = x_827.x_AdditionalShadowParams[x_1571].x;
      let x_1576 : f32 = u_xlat35.x;
      u_xlat48 = ((x_1570 * x_1573) + x_1576);
      let x_1579 : f32 = u_xlat11.z;
      u_xlatb35 = (0.0f >= x_1579);
      let x_1583 : f32 = u_xlat11.z;
      u_xlatb49 = (x_1583 >= 1.0f);
      let x_1585 : bool = u_xlatb49;
      let x_1586 : bool = u_xlatb35;
      u_xlatb35 = (x_1585 | x_1586);
      let x_1588 : bool = u_xlatb35;
      let x_1589 : f32 = u_xlat48;
      u_xlat48 = select(x_1589, 1.0f, x_1588);
    } else {
      u_xlat48 = 1.0f;
    }
    let x_1592 : f32 = u_xlat48;
    u_xlat35.x = (-(x_1592) + 1.0f);
    let x_1596 : f32 = u_xlat43;
    let x_1598 : f32 = u_xlat35.x;
    let x_1600 : f32 = u_xlat48;
    u_xlat48 = ((x_1596 * x_1598) + x_1600);
    let x_1603 : i32 = u_xlati45;
    u_xlati35 = (1i << bitcast<u32>((x_1603 & 31i)));
    let x_1607 : i32 = u_xlati35;
    let x_1610 : f32 = x_889.x_AdditionalLightsCookieEnableBits;
    u_xlati35 = bitcast<i32>((bitcast<u32>(x_1607) & bitcast<u32>(x_1610)));
    let x_1614 : i32 = u_xlati35;
    if ((x_1614 != 0i)) {
      let x_1618 : i32 = u_xlati45;
      let x_1620 : f32 = x_889.x_AdditionalLightsLightTypes[x_1618].el;
      u_xlati35 = i32(x_1620);
      let x_1623 : i32 = u_xlati35;
      u_xlati49 = select(1i, 0i, (x_1623 != 0i));
      let x_1627 : i32 = u_xlati45;
      u_xlati51 = (x_1627 << bitcast<u32>(2i));
      let x_1629 : i32 = u_xlati49;
      if ((x_1629 != 0i)) {
        let x_1633 : vec3<f32> = vs_INTERP7;
        let x_1635 : i32 = u_xlati51;
        let x_1638 : i32 = u_xlati51;
        let x_1642 : vec4<f32> = x_889.x_AdditionalLightsWorldToLights[((x_1635 + 1i) / 4i)][((x_1638 + 1i) % 4i)];
        let x_1644 : vec3<f32> = (vec3<f32>(x_1633.y, x_1633.y, x_1633.y) * vec3<f32>(x_1642.x, x_1642.y, x_1642.w));
        let x_1645 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1644.x, x_1644.y, x_1644.z, x_1645.w);
        let x_1647 : i32 = u_xlati51;
        let x_1649 : i32 = u_xlati51;
        let x_1652 : vec4<f32> = x_889.x_AdditionalLightsWorldToLights[(x_1647 / 4i)][(x_1649 % 4i)];
        let x_1654 : vec3<f32> = vs_INTERP7;
        let x_1657 : vec4<f32> = u_xlat11;
        let x_1659 : vec3<f32> = ((vec3<f32>(x_1652.x, x_1652.y, x_1652.w) * vec3<f32>(x_1654.x, x_1654.x, x_1654.x)) + vec3<f32>(x_1657.x, x_1657.y, x_1657.z));
        let x_1660 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1659.x, x_1659.y, x_1659.z, x_1660.w);
        let x_1662 : i32 = u_xlati51;
        let x_1665 : i32 = u_xlati51;
        let x_1669 : vec4<f32> = x_889.x_AdditionalLightsWorldToLights[((x_1662 + 2i) / 4i)][((x_1665 + 2i) % 4i)];
        let x_1671 : vec3<f32> = vs_INTERP7;
        let x_1674 : vec4<f32> = u_xlat11;
        let x_1676 : vec3<f32> = ((vec3<f32>(x_1669.x, x_1669.y, x_1669.w) * vec3<f32>(x_1671.z, x_1671.z, x_1671.z)) + vec3<f32>(x_1674.x, x_1674.y, x_1674.z));
        let x_1677 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1676.x, x_1676.y, x_1676.z, x_1677.w);
        let x_1679 : vec4<f32> = u_xlat11;
        let x_1681 : i32 = u_xlati51;
        let x_1684 : i32 = u_xlati51;
        let x_1688 : vec4<f32> = x_889.x_AdditionalLightsWorldToLights[((x_1681 + 3i) / 4i)][((x_1684 + 3i) % 4i)];
        let x_1690 : vec3<f32> = (vec3<f32>(x_1679.x, x_1679.y, x_1679.z) + vec3<f32>(x_1688.x, x_1688.y, x_1688.w));
        let x_1691 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1690.x, x_1690.y, x_1690.z, x_1691.w);
        let x_1693 : vec4<f32> = u_xlat11;
        let x_1695 : vec4<f32> = u_xlat11;
        let x_1697 : vec2<f32> = (vec2<f32>(x_1693.x, x_1693.y) / vec2<f32>(x_1695.z, x_1695.z));
        let x_1698 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1697.x, x_1697.y, x_1698.z, x_1698.w);
        let x_1700 : vec4<f32> = u_xlat11;
        let x_1703 : vec2<f32> = ((vec2<f32>(x_1700.x, x_1700.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1704 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1703.x, x_1703.y, x_1704.z, x_1704.w);
        let x_1706 : vec4<f32> = u_xlat11;
        let x_1710 : vec2<f32> = clamp(vec2<f32>(x_1706.x, x_1706.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1711 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1710.x, x_1710.y, x_1711.z, x_1711.w);
        let x_1713 : i32 = u_xlati45;
        let x_1715 : vec4<f32> = x_889.x_AdditionalLightsCookieAtlasUVRects[x_1713];
        let x_1717 : vec4<f32> = u_xlat11;
        let x_1720 : i32 = u_xlati45;
        let x_1722 : vec4<f32> = x_889.x_AdditionalLightsCookieAtlasUVRects[x_1720];
        let x_1724 : vec2<f32> = ((vec2<f32>(x_1715.x, x_1715.y) * vec2<f32>(x_1717.x, x_1717.y)) + vec2<f32>(x_1722.z, x_1722.w));
        let x_1725 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1724.x, x_1724.y, x_1725.z, x_1725.w);
      } else {
        let x_1728 : i32 = u_xlati35;
        u_xlatb35 = (x_1728 == 1i);
        let x_1730 : bool = u_xlatb35;
        u_xlati35 = select(0i, 1i, x_1730);
        let x_1732 : i32 = u_xlati35;
        if ((x_1732 != 0i)) {
          let x_1736 : vec3<f32> = vs_INTERP7;
          let x_1738 : i32 = u_xlati51;
          let x_1741 : i32 = u_xlati51;
          let x_1745 : vec4<f32> = x_889.x_AdditionalLightsWorldToLights[((x_1738 + 1i) / 4i)][((x_1741 + 1i) % 4i)];
          u_xlat35 = (vec2<f32>(x_1736.y, x_1736.y) * vec2<f32>(x_1745.x, x_1745.y));
          let x_1748 : i32 = u_xlati51;
          let x_1750 : i32 = u_xlati51;
          let x_1753 : vec4<f32> = x_889.x_AdditionalLightsWorldToLights[(x_1748 / 4i)][(x_1750 % 4i)];
          let x_1755 : vec3<f32> = vs_INTERP7;
          let x_1758 : vec2<f32> = u_xlat35;
          u_xlat35 = ((vec2<f32>(x_1753.x, x_1753.y) * vec2<f32>(x_1755.x, x_1755.x)) + x_1758);
          let x_1760 : i32 = u_xlati51;
          let x_1763 : i32 = u_xlati51;
          let x_1767 : vec4<f32> = x_889.x_AdditionalLightsWorldToLights[((x_1760 + 2i) / 4i)][((x_1763 + 2i) % 4i)];
          let x_1769 : vec3<f32> = vs_INTERP7;
          let x_1772 : vec2<f32> = u_xlat35;
          u_xlat35 = ((vec2<f32>(x_1767.x, x_1767.y) * vec2<f32>(x_1769.z, x_1769.z)) + x_1772);
          let x_1774 : vec2<f32> = u_xlat35;
          let x_1775 : i32 = u_xlati51;
          let x_1778 : i32 = u_xlati51;
          let x_1782 : vec4<f32> = x_889.x_AdditionalLightsWorldToLights[((x_1775 + 3i) / 4i)][((x_1778 + 3i) % 4i)];
          u_xlat35 = (x_1774 + vec2<f32>(x_1782.x, x_1782.y));
          let x_1785 : vec2<f32> = u_xlat35;
          u_xlat35 = ((x_1785 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1788 : vec2<f32> = u_xlat35;
          u_xlat35 = fract(x_1788);
          let x_1790 : i32 = u_xlati45;
          let x_1792 : vec4<f32> = x_889.x_AdditionalLightsCookieAtlasUVRects[x_1790];
          let x_1794 : vec2<f32> = u_xlat35;
          let x_1796 : i32 = u_xlati45;
          let x_1798 : vec4<f32> = x_889.x_AdditionalLightsCookieAtlasUVRects[x_1796];
          let x_1800 : vec2<f32> = ((vec2<f32>(x_1792.x, x_1792.y) * x_1794) + vec2<f32>(x_1798.z, x_1798.w));
          let x_1801 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1800.x, x_1800.y, x_1801.z, x_1801.w);
        } else {
          let x_1805 : vec3<f32> = vs_INTERP7;
          let x_1807 : i32 = u_xlati51;
          let x_1810 : i32 = u_xlati51;
          let x_1814 : vec4<f32> = x_889.x_AdditionalLightsWorldToLights[((x_1807 + 1i) / 4i)][((x_1810 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1805.y, x_1805.y, x_1805.y, x_1805.y) * x_1814);
          let x_1816 : i32 = u_xlati51;
          let x_1818 : i32 = u_xlati51;
          let x_1821 : vec4<f32> = x_889.x_AdditionalLightsWorldToLights[(x_1816 / 4i)][(x_1818 % 4i)];
          let x_1822 : vec3<f32> = vs_INTERP7;
          let x_1825 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1821 * vec4<f32>(x_1822.x, x_1822.x, x_1822.x, x_1822.x)) + x_1825);
          let x_1827 : i32 = u_xlati51;
          let x_1830 : i32 = u_xlati51;
          let x_1834 : vec4<f32> = x_889.x_AdditionalLightsWorldToLights[((x_1827 + 2i) / 4i)][((x_1830 + 2i) % 4i)];
          let x_1835 : vec3<f32> = vs_INTERP7;
          let x_1838 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1834 * vec4<f32>(x_1835.z, x_1835.z, x_1835.z, x_1835.z)) + x_1838);
          let x_1840 : vec4<f32> = u_xlat12;
          let x_1841 : i32 = u_xlati51;
          let x_1844 : i32 = u_xlati51;
          let x_1848 : vec4<f32> = x_889.x_AdditionalLightsWorldToLights[((x_1841 + 3i) / 4i)][((x_1844 + 3i) % 4i)];
          u_xlat12 = (x_1840 + x_1848);
          let x_1850 : vec4<f32> = u_xlat12;
          let x_1852 : vec4<f32> = u_xlat12;
          let x_1854 : vec3<f32> = (vec3<f32>(x_1850.x, x_1850.y, x_1850.z) / vec3<f32>(x_1852.w, x_1852.w, x_1852.w));
          let x_1855 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1854.x, x_1854.y, x_1854.z, x_1855.w);
          let x_1857 : vec4<f32> = u_xlat12;
          let x_1859 : vec4<f32> = u_xlat12;
          u_xlat35.x = dot(vec3<f32>(x_1857.x, x_1857.y, x_1857.z), vec3<f32>(x_1859.x, x_1859.y, x_1859.z));
          let x_1864 : f32 = u_xlat35.x;
          u_xlat35.x = inverseSqrt(x_1864);
          let x_1867 : vec2<f32> = u_xlat35;
          let x_1869 : vec4<f32> = u_xlat12;
          let x_1871 : vec3<f32> = (vec3<f32>(x_1867.x, x_1867.x, x_1867.x) * vec3<f32>(x_1869.x, x_1869.y, x_1869.z));
          let x_1872 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1871.x, x_1871.y, x_1871.z, x_1872.w);
          let x_1874 : vec4<f32> = u_xlat12;
          u_xlat35.x = dot(abs(vec3<f32>(x_1874.x, x_1874.y, x_1874.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1881 : f32 = u_xlat35.x;
          u_xlat35.x = max(x_1881, 0.00000099999999747524f);
          let x_1886 : f32 = u_xlat35.x;
          u_xlat35.x = (1.0f / x_1886);
          let x_1890 : vec2<f32> = u_xlat35;
          let x_1892 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1890.x, x_1890.x, x_1890.x) * vec3<f32>(x_1892.z, x_1892.x, x_1892.y));
          let x_1896 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1896);
          let x_1900 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1900, 0.0f, 1.0f);
          let x_1904 : vec3<f32> = u_xlat13;
          let x_1906 : vec4<bool> = (vec4<f32>(x_1904.y, x_1904.z, x_1904.y, x_1904.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1906.x, x_1906.y);
          let x_1910 : bool = u_xlatb39.x;
          if (x_1910) {
            let x_1915 : f32 = u_xlat13.x;
            x_1911 = x_1915;
          } else {
            let x_1918 : f32 = u_xlat13.x;
            x_1911 = -(x_1918);
          }
          let x_1920 : f32 = x_1911;
          u_xlat39.x = x_1920;
          let x_1923 : bool = u_xlatb39.y;
          if (x_1923) {
            let x_1928 : f32 = u_xlat13.x;
            x_1924 = x_1928;
          } else {
            let x_1931 : f32 = u_xlat13.x;
            x_1924 = -(x_1931);
          }
          let x_1933 : f32 = x_1924;
          u_xlat39.y = x_1933;
          let x_1935 : vec4<f32> = u_xlat12;
          let x_1937 : vec2<f32> = u_xlat35;
          let x_1940 : vec2<f32> = u_xlat39;
          u_xlat35 = ((vec2<f32>(x_1935.x, x_1935.y) * vec2<f32>(x_1937.x, x_1937.x)) + x_1940);
          let x_1942 : vec2<f32> = u_xlat35;
          u_xlat35 = ((x_1942 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1945 : vec2<f32> = u_xlat35;
          u_xlat35 = clamp(x_1945, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1949 : i32 = u_xlati45;
          let x_1951 : vec4<f32> = x_889.x_AdditionalLightsCookieAtlasUVRects[x_1949];
          let x_1953 : vec2<f32> = u_xlat35;
          let x_1955 : i32 = u_xlati45;
          let x_1957 : vec4<f32> = x_889.x_AdditionalLightsCookieAtlasUVRects[x_1955];
          let x_1959 : vec2<f32> = ((vec2<f32>(x_1951.x, x_1951.y) * x_1953) + vec2<f32>(x_1957.z, x_1957.w));
          let x_1960 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1959.x, x_1959.y, x_1960.z, x_1960.w);
        }
      }
      let x_1967 : vec4<f32> = u_xlat11;
      let x_1969 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1967.x, x_1967.y), 0.0f);
      u_xlat11 = x_1969;
      let x_1971 : bool = u_xlatb7.y;
      if (x_1971) {
        let x_1976 : f32 = u_xlat11.w;
        x_1972 = x_1976;
      } else {
        let x_1979 : f32 = u_xlat11.x;
        x_1972 = x_1979;
      }
      let x_1980 : f32 = x_1972;
      u_xlat35.x = x_1980;
      let x_1983 : bool = u_xlatb7.x;
      if (x_1983) {
        let x_1987 : vec4<f32> = u_xlat11;
        x_1984 = vec3<f32>(x_1987.x, x_1987.y, x_1987.z);
      } else {
        let x_1990 : vec2<f32> = u_xlat35;
        x_1984 = vec3<f32>(x_1990.x, x_1990.x, x_1990.x);
      }
      let x_1992 : vec3<f32> = x_1984;
      let x_1993 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1992.x, x_1992.y, x_1992.z, x_1993.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1999 : vec4<f32> = u_xlat11;
    let x_2001 : i32 = u_xlati45;
    let x_2003 : vec4<f32> = x_1334.x_AdditionalLightsColor[x_2001];
    let x_2005 : vec3<f32> = (vec3<f32>(x_1999.x, x_1999.y, x_1999.z) * vec3<f32>(x_2003.x, x_2003.y, x_2003.z));
    let x_2006 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2005.x, x_2005.y, x_2005.z, x_2006.w);
    let x_2008 : f32 = u_xlat46;
    let x_2009 : f32 = u_xlat48;
    u_xlat45 = (x_2008 * x_2009);
    let x_2011 : vec4<f32> = u_xlat4;
    let x_2013 : vec3<f32> = u_xlat10;
    u_xlat46 = dot(vec3<f32>(x_2011.x, x_2011.y, x_2011.z), x_2013);
    let x_2015 : f32 = u_xlat46;
    u_xlat46 = clamp(x_2015, 0.0f, 1.0f);
    let x_2017 : f32 = u_xlat45;
    let x_2018 : f32 = u_xlat46;
    u_xlat45 = (x_2017 * x_2018);
    let x_2020 : f32 = u_xlat45;
    let x_2022 : vec4<f32> = u_xlat11;
    let x_2024 : vec3<f32> = (vec3<f32>(x_2020, x_2020, x_2020) * vec3<f32>(x_2022.x, x_2022.y, x_2022.z));
    let x_2025 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2024.x, x_2024.y, x_2024.z, x_2025.w);
    let x_2027 : vec3<f32> = u_xlat9;
    let x_2028 : f32 = u_xlat47;
    let x_2031 : vec3<f32> = u_xlat5;
    u_xlat9 = ((x_2027 * vec3<f32>(x_2028, x_2028, x_2028)) + x_2031);
    let x_2033 : vec3<f32> = u_xlat9;
    let x_2034 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_2033, x_2034);
    let x_2036 : f32 = u_xlat45;
    u_xlat45 = max(x_2036, 1.17549435e-38f);
    let x_2038 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_2038);
    let x_2040 : f32 = u_xlat45;
    let x_2042 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_2040, x_2040, x_2040) * x_2042);
    let x_2044 : vec4<f32> = u_xlat4;
    let x_2046 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_2044.x, x_2044.y, x_2044.z), x_2046);
    let x_2048 : f32 = u_xlat45;
    u_xlat45 = clamp(x_2048, 0.0f, 1.0f);
    let x_2050 : vec3<f32> = u_xlat10;
    let x_2051 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(x_2050, x_2051);
    let x_2053 : f32 = u_xlat46;
    u_xlat46 = clamp(x_2053, 0.0f, 1.0f);
    let x_2055 : f32 = u_xlat45;
    let x_2056 : f32 = u_xlat45;
    u_xlat45 = (x_2055 * x_2056);
    let x_2058 : f32 = u_xlat45;
    let x_2060 : f32 = u_xlat8.x;
    u_xlat45 = ((x_2058 * x_2060) + 1.00001001358032226562f);
    let x_2063 : f32 = u_xlat46;
    let x_2064 : f32 = u_xlat46;
    u_xlat46 = (x_2063 * x_2064);
    let x_2066 : f32 = u_xlat45;
    let x_2067 : f32 = u_xlat45;
    u_xlat45 = (x_2066 * x_2067);
    let x_2069 : f32 = u_xlat46;
    u_xlat46 = max(x_2069, 0.10000000149011611938f);
    let x_2071 : f32 = u_xlat45;
    let x_2072 : f32 = u_xlat46;
    u_xlat45 = (x_2071 * x_2072);
    let x_2074 : f32 = u_xlat17;
    let x_2075 : f32 = u_xlat45;
    u_xlat45 = (x_2074 * x_2075);
    let x_2078 : f32 = u_xlat3.x;
    let x_2079 : f32 = u_xlat45;
    u_xlat45 = (x_2078 / x_2079);
    let x_2081 : vec3<f32> = u_xlat2;
    let x_2082 : f32 = u_xlat45;
    let x_2085 : vec4<f32> = u_xlat1;
    u_xlat9 = ((x_2081 * vec3<f32>(x_2082, x_2082, x_2082)) + vec3<f32>(x_2085.x, x_2085.y, x_2085.z));
    let x_2088 : vec3<f32> = u_xlat9;
    let x_2089 : vec4<f32> = u_xlat11;
    let x_2092 : vec3<f32> = u_xlat22;
    u_xlat22 = ((x_2088 * vec3<f32>(x_2089.x, x_2089.y, x_2089.z)) + x_2092);

    continuing {
      let x_2094 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2094 + bitcast<u32>(1i));
    }
  }
  let x_2096 : vec4<f32> = u_xlat0;
  let x_2098 : f32 = u_xlat31;
  let x_2101 : vec4<f32> = u_xlat6;
  let x_2103 : vec3<f32> = ((vec3<f32>(x_2096.x, x_2096.y, x_2096.z) * vec3<f32>(x_2098, x_2098, x_2098)) + vec3<f32>(x_2101.x, x_2101.y, x_2101.z));
  let x_2104 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2103.x, x_2103.y, x_2103.z, x_2104.w);
  let x_2108 : vec3<f32> = u_xlat22;
  let x_2109 : vec4<f32> = u_xlat0;
  let x_2111 : vec3<f32> = (x_2108 + vec3<f32>(x_2109.x, x_2109.y, x_2109.z));
  let x_2112 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2111.x, x_2111.y, x_2111.z, x_2112.w);
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


