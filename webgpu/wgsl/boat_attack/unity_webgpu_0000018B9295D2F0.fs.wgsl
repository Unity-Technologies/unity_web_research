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

var<private> u_xlatb13 : vec2<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_48 : UnityPerDraw;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(8) var x_MainTex : texture_2d<f32>;

@group(0) @binding(18) var sampler_MainTex : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_135 : PGlobals;

var<private> u_xlat40 : f32;

var<private> vs_INTERP7 : vec3<f32>;

var<private> u_xlat41 : f32;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(11) var Texture2D_D7D66558 : texture_2d<f32>;

@group(0) @binding(21) var samplerTexture2D_D7D66558 : sampler;

@group(1) @binding(5) var<uniform> x_195 : UnityPerMaterial;

var<private> u_xlat42 : f32;

var<private> u_xlat43 : f32;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(9) var Texture2D_DE8BF47E : texture_2d<f32>;

@group(0) @binding(19) var samplerTexture2D_DE8BF47E : sampler;

var<private> u_xlat20 : vec3<f32>;

var<private> u_xlat14 : vec2<f32>;

var<private> u_xlat17 : vec3<f32>;

@group(0) @binding(10) var Texture2D_C005B064 : texture_2d<f32>;

@group(0) @binding(20) var samplerTexture2D_C005B064 : sampler;

@group(0) @binding(7) var x_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D : texture_2d<f32>;

@group(0) @binding(17) var sampler_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D : sampler;

var<private> u_xlatb1 : bool;

@group(1) @binding(3) var<uniform> x_679 : LightShadows;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu1 : u32;

var<private> u_xlati1 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(13) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat44 : f32;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(15) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb14 : bool;

var<private> u_xlatb27 : bool;

var<private> u_xlat27 : f32;

@group(1) @binding(4) var<uniform> x_1056 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat45 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(12) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat21 : vec3<f32>;

var<private> u_xlatu0 : u32;

var<private> u_xlatb6 : vec2<bool>;

var<private> u_xlatu32 : u32;

var<private> u_xlati45 : i32;

var<private> u_xlat32 : vec2<f32>;

var<private> u_xlati32 : i32;

@group(1) @binding(1) var<uniform> x_1528 : AdditionalLights;

var<private> u_xlat46 : f32;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat48 : f32;

var<private> u_xlati48 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat23 : vec3<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat36 : f32;

var<private> u_xlat10 : vec4<f32>;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb23 : bool;

var<private> u_xlati10 : i32;

var<private> u_xlati23 : i32;

var<private> u_xlati36 : i32;

var<private> u_xlat12 : vec3<f32>;

var<private> u_xlatb37 : vec2<bool>;

var<private> u_xlat37 : vec2<f32>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_LinearClamp : sampler;

var<private> u_xlat49 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb32 : bool;

var<private> u_xlatu41 : u32;

fn main_1() {
  var x_638 : f32;
  var x_650 : f32;
  var x_661 : f32;
  var txVec0 : vec3<f32>;
  var x_1006 : f32;
  var x_1138 : f32;
  var x_1149 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1662 : f32;
  var x_1674 : f32;
  var txVec1 : vec3<f32>;
  var x_2138 : f32;
  var x_2151 : f32;
  var x_2209 : f32;
  var x_2220 : vec3<f32>;
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
  u_xlatb13.x = (0.0f < x_39);
  let x_53 : f32 = x_48.unity_WorldTransformParams.w;
  u_xlatb13.y = (x_53 >= 0.0f);
  let x_60 : bool = u_xlatb13.x;
  u_xlat13.x = select(-1.0f, 1.0f, x_60);
  let x_65 : bool = u_xlatb13.y;
  u_xlat13.y = select(-1.0f, 1.0f, x_65);
  let x_69 : f32 = u_xlat13.y;
  let x_71 : f32 = u_xlat13.x;
  u_xlat13.x = (x_69 * x_71);
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
  let x_93 : vec3<f32> = u_xlat13;
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
  u_xlat40 = ((x_147 * 4.0f) + x_152);
  let x_154 : f32 = u_xlat40;
  u_xlat40 = (x_154 * 0.33000001311302185059f);
  let x_159 : f32 = vs_INTERP7.y;
  u_xlat41 = (x_159 + 1.0f);
  let x_161 : f32 = u_xlat41;
  u_xlat41 = ((x_161 * -1.33333337306976318359f) + 1.0f);
  let x_165 : f32 = u_xlat40;
  let x_166 : f32 = u_xlat41;
  u_xlat40 = max(x_165, x_166);
  let x_168 : f32 = u_xlat40;
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
  u_xlat41 = ((-(x_198) * 0.01111099962145090103f) + 0.94999998807907104492f);
  let x_207 : f32 = x_195.Vector1_A492C01C;
  u_xlat42 = (x_207 + -10.0f);
  let x_210 : f32 = u_xlat42;
  let x_213 : f32 = vs_INTERP7.y;
  u_xlat42 = (-(x_210) + x_213);
  let x_215 : f32 = u_xlat42;
  u_xlat42 = (x_215 * 0.05000000074505805969f);
  let x_218 : f32 = u_xlat42;
  u_xlat42 = clamp(x_218, 0.0f, 1.0f);
  let x_221 : f32 = u_xlat42;
  u_xlat43 = ((x_221 * -2.0f) + 3.0f);
  let x_226 : f32 = u_xlat42;
  let x_227 : f32 = u_xlat42;
  u_xlat42 = (x_226 * x_227);
  let x_229 : f32 = u_xlat42;
  let x_230 : f32 = u_xlat43;
  u_xlat42 = (x_229 * x_230);
  let x_238 : vec4<f32> = vs_INTERP5;
  let x_241 : f32 = x_135.x_GlobalMipBias.x;
  let x_242 : vec4<f32> = textureSampleBias(Texture2D_DE8BF47E, samplerTexture2D_DE8BF47E, vec2<f32>(x_238.x, x_238.y), x_241);
  u_xlat7 = x_242;
  let x_244 : vec4<f32> = u_xlat7;
  u_xlat20 = ((vec3<f32>(x_244.w, x_244.y, x_244.z) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_251 : vec3<f32> = u_xlat3;
  let x_252 : vec3<f32> = u_xlat20;
  u_xlat3 = (x_251 * vec3<f32>(x_252.y, x_252.y, x_252.y));
  let x_255 : vec3<f32> = u_xlat20;
  let x_257 : vec3<f32> = u_xlat2;
  let x_259 : vec3<f32> = u_xlat3;
  u_xlat2 = ((vec3<f32>(x_255.x, x_255.x, x_255.x) * x_257) + x_259);
  let x_261 : vec3<f32> = u_xlat20;
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
  let x_291 : f32 = u_xlat42;
  let x_293 : f32 = u_xlat1.x;
  let x_295 : f32 = u_xlat41;
  u_xlat1.x = ((x_291 * x_293) + -(x_295));
  let x_300 : f32 = u_xlat1.x;
  u_xlat1.x = (x_300 * 10.0f);
  let x_305 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_305, 0.0f, 1.0f);
  let x_311 : f32 = u_xlat1.x;
  u_xlat14.x = ((x_311 * -2.0f) + 3.0f);
  let x_316 : f32 = u_xlat1.x;
  let x_318 : f32 = u_xlat1.x;
  u_xlat1.x = (x_316 * x_318);
  let x_322 : f32 = u_xlat1.x;
  let x_324 : f32 = u_xlat14.x;
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
  u_xlat17 = vec3<f32>(x_365.x, x_365.y, x_365.w);
  let x_368 : f32 = u_xlat17.x;
  let x_370 : f32 = u_xlat17.z;
  u_xlat17.x = (x_368 * x_370);
  let x_373 : vec3<f32> = u_xlat17;
  let x_378 : vec2<f32> = ((vec2<f32>(x_373.x, x_373.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_379 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_378.x, x_378.y, x_379.z);
  let x_381 : vec3<f32> = u_xlat5;
  let x_383 : vec3<f32> = u_xlat5;
  u_xlat14.x = dot(vec2<f32>(x_381.x, x_381.y), vec2<f32>(x_383.x, x_383.y));
  let x_388 : f32 = u_xlat14.x;
  u_xlat14.x = min(x_388, 1.0f);
  let x_392 : f32 = u_xlat14.x;
  u_xlat14.x = (-(x_392) + 1.0f);
  let x_397 : f32 = u_xlat14.x;
  u_xlat14.x = sqrt(x_397);
  let x_401 : f32 = u_xlat14.x;
  u_xlat5.z = max(x_401, 0.0000000000000001f);
  let x_407 : vec4<f32> = x_48.unity_ObjectToWorld[0i];
  let x_410 : vec4<f32> = x_48.unity_ObjectToWorld[0i];
  u_xlat14.x = dot(vec3<f32>(x_407.x, x_407.y, x_407.z), vec3<f32>(x_410.x, x_410.y, x_410.z));
  let x_415 : f32 = u_xlat14.x;
  u_xlat6.x = sqrt(x_415);
  let x_420 : vec4<f32> = x_48.unity_ObjectToWorld[1i];
  let x_423 : vec4<f32> = x_48.unity_ObjectToWorld[1i];
  u_xlat14.x = dot(vec3<f32>(x_420.x, x_420.y, x_420.z), vec3<f32>(x_423.x, x_423.y, x_423.z));
  let x_428 : f32 = u_xlat14.x;
  u_xlat6.y = sqrt(x_428);
  let x_433 : vec4<f32> = x_48.unity_ObjectToWorld[2i];
  let x_436 : vec4<f32> = x_48.unity_ObjectToWorld[2i];
  u_xlat14.x = dot(vec3<f32>(x_433.x, x_433.y, x_433.z), vec3<f32>(x_436.x, x_436.y, x_436.z));
  let x_441 : f32 = u_xlat14.x;
  u_xlat6.z = sqrt(x_441);
  let x_444 : vec4<f32> = u_xlat6;
  let x_446 : vec4<f32> = u_xlat6;
  u_xlat14.x = dot(vec3<f32>(x_444.x, x_444.y, x_444.z), vec3<f32>(x_446.x, x_446.y, x_446.z));
  let x_451 : f32 = u_xlat14.x;
  u_xlat14.x = sqrt(x_451);
  let x_455 : f32 = u_xlat14.x;
  let x_458 : f32 = x_195.Vector1_90E376AD;
  u_xlat14.x = (x_455 * x_458);
  let x_462 : f32 = u_xlat14.x;
  u_xlat14.x = (x_462 * 30.0f);
  let x_466 : vec2<f32> = u_xlat14;
  let x_468 : vec4<f32> = vs_INTERP5;
  u_xlat14 = (vec2<f32>(x_466.x, x_466.x) * vec2<f32>(x_468.x, x_468.y));
  let x_476 : vec2<f32> = u_xlat14;
  let x_478 : f32 = x_135.x_GlobalMipBias.x;
  let x_479 : vec4<f32> = textureSampleBias(x_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D, sampler_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D, x_476, x_478);
  u_xlat17 = vec3<f32>(x_479.x, x_479.y, x_479.w);
  let x_482 : f32 = u_xlat17.x;
  let x_484 : f32 = u_xlat17.z;
  u_xlat17.x = (x_482 * x_484);
  let x_487 : vec3<f32> = u_xlat17;
  u_xlat14 = ((vec2<f32>(x_487.x, x_487.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_491 : vec2<f32> = u_xlat14;
  let x_492 : vec2<f32> = u_xlat14;
  u_xlat41 = dot(x_491, x_492);
  let x_494 : f32 = u_xlat41;
  u_xlat41 = min(x_494, 1.0f);
  let x_496 : f32 = u_xlat41;
  u_xlat41 = (-(x_496) + 1.0f);
  let x_499 : f32 = u_xlat41;
  u_xlat41 = sqrt(x_499);
  let x_501 : f32 = u_xlat41;
  u_xlat41 = max(x_501, 0.0000000000000001f);
  let x_503 : vec2<f32> = u_xlat14;
  let x_504 : vec3<f32> = u_xlat20;
  let x_506 : vec2<f32> = (x_503 + vec2<f32>(x_504.x, x_504.y));
  let x_507 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_506.x, x_506.y, x_507.z, x_507.w);
  let x_509 : f32 = u_xlat41;
  let x_511 : f32 = u_xlat20.z;
  u_xlat6.z = (x_509 * x_511);
  let x_514 : vec4<f32> = u_xlat6;
  let x_516 : vec4<f32> = u_xlat6;
  u_xlat14.x = dot(vec3<f32>(x_514.x, x_514.y, x_514.z), vec3<f32>(x_516.x, x_516.y, x_516.z));
  let x_521 : f32 = u_xlat14.x;
  u_xlat14.x = max(x_521, 0.00006103515625f);
  let x_526 : f32 = u_xlat14.x;
  u_xlat14.x = inverseSqrt(x_526);
  let x_529 : vec4<f32> = u_xlat6;
  let x_531 : vec2<f32> = u_xlat14;
  let x_534 : vec3<f32> = u_xlat5;
  u_xlat17 = ((vec3<f32>(x_529.x, x_529.y, x_529.z) * vec3<f32>(x_531.x, x_531.x, x_531.x)) + -(x_534));
  let x_537 : vec4<f32> = u_xlat1;
  let x_539 : vec3<f32> = u_xlat17;
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
  u_xlat13 = ((vec3<f32>(x_581.y, x_581.y, x_581.y) * vec3<f32>(x_583.x, x_583.y, x_583.z)) + vec3<f32>(x_586.y, x_586.z, x_586.w));
  let x_589 : vec4<f32> = u_xlat4;
  let x_591 : vec3<f32> = vs_INTERP8;
  let x_593 : vec3<f32> = u_xlat13;
  u_xlat13 = ((vec3<f32>(x_589.w, x_589.w, x_589.w) * x_591) + x_593);
  let x_595 : vec3<f32> = u_xlat13;
  let x_596 : vec3<f32> = u_xlat13;
  u_xlat1.x = dot(x_595, x_596);
  let x_600 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_600);
  let x_603 : vec3<f32> = u_xlat13;
  let x_604 : vec4<f32> = u_xlat1;
  u_xlat13 = (x_603 * vec3<f32>(x_604.x, x_604.x, x_604.x));
  let x_609 : f32 = x_135.unity_OrthoParams.w;
  u_xlatb1 = (x_609 == 0.0f);
  let x_611 : vec3<f32> = vs_INTERP7;
  let x_615 : vec3<f32> = x_135.x_WorldSpaceCameraPos;
  let x_616 : vec3<f32> = (-(x_611) + x_615);
  let x_617 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_616.x, x_616.y, x_616.z, x_617.w);
  let x_619 : vec4<f32> = u_xlat4;
  let x_621 : vec4<f32> = u_xlat4;
  u_xlat14.x = dot(vec3<f32>(x_619.x, x_619.y, x_619.z), vec3<f32>(x_621.x, x_621.y, x_621.z));
  let x_626 : f32 = u_xlat14.x;
  u_xlat14.x = inverseSqrt(x_626);
  let x_629 : vec2<f32> = u_xlat14;
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
  u_xlat20 = (x_703 + -(vec3<f32>(x_705.x, x_705.y, x_705.z)));
  let x_710 : vec4<f32> = u_xlat1;
  let x_712 : vec4<f32> = u_xlat1;
  u_xlat8.x = dot(vec3<f32>(x_710.x, x_710.y, x_710.z), vec3<f32>(x_712.x, x_712.y, x_712.z));
  let x_716 : vec4<f32> = u_xlat4;
  let x_718 : vec4<f32> = u_xlat4;
  u_xlat8.y = dot(vec3<f32>(x_716.x, x_716.y, x_716.z), vec3<f32>(x_718.x, x_718.y, x_718.z));
  let x_722 : vec4<f32> = u_xlat6;
  let x_724 : vec4<f32> = u_xlat6;
  u_xlat8.z = dot(vec3<f32>(x_722.x, x_722.y, x_722.z), vec3<f32>(x_724.x, x_724.y, x_724.z));
  let x_728 : vec3<f32> = u_xlat20;
  let x_729 : vec3<f32> = u_xlat20;
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
  let x_888 : vec3<f32> = u_xlat13;
  let x_889 : vec4<f32> = u_xlat4;
  u_xlat41 = dot(x_888, vec3<f32>(x_889.x, x_889.y, x_889.z));
  let x_892 : f32 = u_xlat41;
  u_xlat41 = (x_892 + 0.5f);
  let x_895 : f32 = u_xlat41;
  let x_897 : vec4<f32> = u_xlat6;
  let x_899 : vec3<f32> = (vec3<f32>(x_895, x_895, x_895) * vec3<f32>(x_897.x, x_897.y, x_897.z));
  let x_900 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_899.x, x_899.y, x_899.z, x_900.w);
  let x_903 : f32 = u_xlat4.w;
  u_xlat41 = max(x_903, 0.00009999999747378752f);
  let x_906 : vec4<f32> = u_xlat4;
  let x_908 : f32 = u_xlat41;
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
  u_xlat40 = (-(x_931) + 1.0f);
  let x_934 : f32 = u_xlat40;
  let x_935 : f32 = u_xlat40;
  u_xlat41 = (x_934 * x_935);
  let x_937 : f32 = u_xlat41;
  u_xlat41 = max(x_937, 0.0078125f);
  let x_940 : f32 = u_xlat41;
  let x_941 : f32 = u_xlat41;
  u_xlat42 = (x_940 * x_941);
  let x_944 : f32 = u_xlat0.x;
  u_xlat0.x = (x_944 + 0.13600003719329833984f);
  let x_949 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_949, 1.0f);
  let x_952 : f32 = u_xlat41;
  u_xlat43 = ((x_952 * 4.0f) + 2.0f);
  let x_957 : f32 = u_xlat7.x;
  u_xlat44 = min(x_957, 1.0f);
  let x_961 : vec4<f32> = u_xlat1;
  let x_962 : vec2<f32> = vec2<f32>(x_961.x, x_961.y);
  let x_964 : f32 = u_xlat1.z;
  txVec0 = vec3<f32>(x_962.x, x_962.y, x_964);
  let x_976 : vec3<f32> = txVec0;
  let x_978 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_976.xy, x_976.z);
  u_xlat1.x = x_978;
  let x_981 : f32 = x_679.x_MainLightShadowParams.x;
  u_xlat14.x = (-(x_981) + 1.0f);
  let x_986 : f32 = u_xlat1.x;
  let x_988 : f32 = x_679.x_MainLightShadowParams.x;
  let x_991 : f32 = u_xlat14.x;
  u_xlat1.x = ((x_986 * x_988) + x_991);
  let x_996 : f32 = u_xlat1.z;
  u_xlatb14 = (0.0f >= x_996);
  let x_1000 : f32 = u_xlat1.z;
  u_xlatb27 = (x_1000 >= 1.0f);
  let x_1002 : bool = u_xlatb27;
  let x_1003 : bool = u_xlatb14;
  u_xlatb14 = (x_1002 | x_1003);
  let x_1005 : bool = u_xlatb14;
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
  u_xlat14.x = dot(vec3<f32>(x_1021.x, x_1021.y, x_1021.z), vec3<f32>(x_1023.x, x_1023.y, x_1023.z));
  let x_1029 : f32 = u_xlat14.x;
  let x_1031 : f32 = x_679.x_MainLightShadowParams.z;
  let x_1034 : f32 = x_679.x_MainLightShadowParams.w;
  u_xlat27 = ((x_1029 * x_1031) + x_1034);
  let x_1036 : f32 = u_xlat27;
  u_xlat27 = clamp(x_1036, 0.0f, 1.0f);
  let x_1039 : f32 = u_xlat1.x;
  u_xlat6.x = (-(x_1039) + 1.0f);
  let x_1043 : f32 = u_xlat27;
  let x_1045 : f32 = u_xlat6.x;
  let x_1048 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1043 * x_1045) + x_1048);
  let x_1058 : f32 = x_1056.x_MainLightCookieTextureFormat;
  u_xlatb27 = !((x_1058 == -1.0f));
  let x_1060 : bool = u_xlatb27;
  if (x_1060) {
    let x_1063 : vec3<f32> = vs_INTERP7;
    let x_1066 : vec4<f32> = x_1056.x_MainLightWorldToLight[1i];
    let x_1068 : vec2<f32> = (vec2<f32>(x_1063.y, x_1063.y) * vec2<f32>(x_1066.x, x_1066.y));
    let x_1069 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1068.x, x_1068.y, x_1069.z, x_1069.w);
    let x_1072 : vec4<f32> = x_1056.x_MainLightWorldToLight[0i];
    let x_1074 : vec3<f32> = vs_INTERP7;
    let x_1077 : vec4<f32> = u_xlat6;
    let x_1079 : vec2<f32> = ((vec2<f32>(x_1072.x, x_1072.y) * vec2<f32>(x_1074.x, x_1074.x)) + vec2<f32>(x_1077.x, x_1077.y));
    let x_1080 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1079.x, x_1079.y, x_1080.z, x_1080.w);
    let x_1083 : vec4<f32> = x_1056.x_MainLightWorldToLight[2i];
    let x_1085 : vec3<f32> = vs_INTERP7;
    let x_1088 : vec4<f32> = u_xlat6;
    let x_1090 : vec2<f32> = ((vec2<f32>(x_1083.x, x_1083.y) * vec2<f32>(x_1085.z, x_1085.z)) + vec2<f32>(x_1088.x, x_1088.y));
    let x_1091 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1090.x, x_1090.y, x_1091.z, x_1091.w);
    let x_1093 : vec4<f32> = u_xlat6;
    let x_1096 : vec4<f32> = x_1056.x_MainLightWorldToLight[3i];
    let x_1098 : vec2<f32> = (vec2<f32>(x_1093.x, x_1093.y) + vec2<f32>(x_1096.x, x_1096.y));
    let x_1099 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1098.x, x_1098.y, x_1099.z, x_1099.w);
    let x_1101 : vec4<f32> = u_xlat6;
    let x_1105 : vec2<f32> = ((vec2<f32>(x_1101.x, x_1101.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1106 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1105.x, x_1105.y, x_1106.z, x_1106.w);
    let x_1113 : vec4<f32> = u_xlat6;
    let x_1116 : f32 = x_135.x_GlobalMipBias.x;
    let x_1117 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1113.x, x_1113.y), x_1116);
    u_xlat6 = x_1117;
    let x_1120 : f32 = x_1056.x_MainLightCookieTextureFormat;
    let x_1122 : f32 = x_1056.x_MainLightCookieTextureFormat;
    let x_1124 : f32 = x_1056.x_MainLightCookieTextureFormat;
    let x_1126 : f32 = x_1056.x_MainLightCookieTextureFormat;
    let x_1127 : vec4<f32> = vec4<f32>(x_1120, x_1122, x_1124, x_1126);
    let x_1134 : vec4<bool> = (vec4<f32>(x_1127.x, x_1127.y, x_1127.z, x_1127.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_1134.x, x_1134.y);
    let x_1137 : bool = u_xlatb7.y;
    if (x_1137) {
      let x_1142 : f32 = u_xlat6.w;
      x_1138 = x_1142;
    } else {
      let x_1145 : f32 = u_xlat6.x;
      x_1138 = x_1145;
    }
    let x_1146 : f32 = x_1138;
    u_xlat27 = x_1146;
    let x_1148 : bool = u_xlatb7.x;
    if (x_1148) {
      let x_1152 : vec4<f32> = u_xlat6;
      x_1149 = vec3<f32>(x_1152.x, x_1152.y, x_1152.z);
    } else {
      let x_1155 : f32 = u_xlat27;
      x_1149 = vec3<f32>(x_1155, x_1155, x_1155);
    }
    let x_1157 : vec3<f32> = x_1149;
    let x_1158 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1157.x, x_1157.y, x_1157.z, x_1158.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1164 : vec4<f32> = u_xlat6;
  let x_1167 : vec4<f32> = x_135.x_MainLightColor;
  let x_1169 : vec3<f32> = (vec3<f32>(x_1164.x, x_1164.y, x_1164.z) * vec3<f32>(x_1167.x, x_1167.y, x_1167.z));
  let x_1170 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1169.x, x_1169.y, x_1169.z, x_1170.w);
  let x_1172 : vec3<f32> = u_xlat5;
  let x_1174 : vec3<f32> = u_xlat13;
  u_xlat27 = dot(-(x_1172), x_1174);
  let x_1176 : f32 = u_xlat27;
  let x_1177 : f32 = u_xlat27;
  u_xlat27 = (x_1176 + x_1177);
  let x_1179 : vec3<f32> = u_xlat13;
  let x_1180 : f32 = u_xlat27;
  let x_1184 : vec3<f32> = u_xlat5;
  let x_1186 : vec3<f32> = ((x_1179 * -(vec3<f32>(x_1180, x_1180, x_1180))) + -(x_1184));
  let x_1187 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1186.x, x_1186.y, x_1186.z, x_1187.w);
  let x_1189 : vec3<f32> = u_xlat13;
  let x_1190 : vec3<f32> = u_xlat5;
  u_xlat27 = dot(x_1189, x_1190);
  let x_1192 : f32 = u_xlat27;
  u_xlat27 = clamp(x_1192, 0.0f, 1.0f);
  let x_1194 : f32 = u_xlat27;
  u_xlat27 = (-(x_1194) + 1.0f);
  let x_1197 : f32 = u_xlat27;
  let x_1198 : f32 = u_xlat27;
  u_xlat27 = (x_1197 * x_1198);
  let x_1200 : f32 = u_xlat27;
  let x_1201 : f32 = u_xlat27;
  u_xlat27 = (x_1200 * x_1201);
  let x_1204 : f32 = u_xlat40;
  u_xlat45 = ((-(x_1204) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1210 : f32 = u_xlat40;
  let x_1211 : f32 = u_xlat45;
  u_xlat40 = (x_1210 * x_1211);
  let x_1213 : f32 = u_xlat40;
  u_xlat40 = (x_1213 * 6.0f);
  let x_1224 : vec4<f32> = u_xlat7;
  let x_1226 : f32 = u_xlat40;
  let x_1227 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1224.x, x_1224.y, x_1224.z), x_1226);
  u_xlat7 = x_1227;
  let x_1229 : f32 = u_xlat7.w;
  u_xlat40 = (x_1229 + -1.0f);
  let x_1232 : f32 = x_48.unity_SpecCube0_HDR.w;
  let x_1233 : f32 = u_xlat40;
  u_xlat40 = ((x_1232 * x_1233) + 1.0f);
  let x_1236 : f32 = u_xlat40;
  u_xlat40 = max(x_1236, 0.0f);
  let x_1238 : f32 = u_xlat40;
  u_xlat40 = log2(x_1238);
  let x_1240 : f32 = u_xlat40;
  let x_1242 : f32 = x_48.unity_SpecCube0_HDR.y;
  u_xlat40 = (x_1240 * x_1242);
  let x_1244 : f32 = u_xlat40;
  u_xlat40 = exp2(x_1244);
  let x_1246 : f32 = u_xlat40;
  let x_1248 : f32 = x_48.unity_SpecCube0_HDR.x;
  u_xlat40 = (x_1246 * x_1248);
  let x_1250 : vec4<f32> = u_xlat7;
  let x_1252 : f32 = u_xlat40;
  let x_1254 : vec3<f32> = (vec3<f32>(x_1250.x, x_1250.y, x_1250.z) * vec3<f32>(x_1252, x_1252, x_1252));
  let x_1255 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1254.x, x_1254.y, x_1254.z, x_1255.w);
  let x_1257 : f32 = u_xlat41;
  let x_1259 : f32 = u_xlat41;
  let x_1263 : vec2<f32> = ((vec2<f32>(x_1257, x_1257) * vec2<f32>(x_1259, x_1259)) + vec2<f32>(-1.0f, 1.0f));
  let x_1264 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1263.x, x_1263.y, x_1264.z, x_1264.w);
  let x_1267 : f32 = u_xlat8.y;
  u_xlat40 = (1.0f / x_1267);
  let x_1270 : vec3<f32> = u_xlat2;
  let x_1272 : vec4<f32> = u_xlat0;
  u_xlat21 = (-(x_1270) + vec3<f32>(x_1272.x, x_1272.x, x_1272.x));
  let x_1275 : f32 = u_xlat27;
  let x_1277 : vec3<f32> = u_xlat21;
  let x_1279 : vec3<f32> = u_xlat2;
  u_xlat21 = ((vec3<f32>(x_1275, x_1275, x_1275) * x_1277) + x_1279);
  let x_1281 : f32 = u_xlat40;
  let x_1283 : vec3<f32> = u_xlat21;
  u_xlat21 = (vec3<f32>(x_1281, x_1281, x_1281) * x_1283);
  let x_1285 : vec4<f32> = u_xlat7;
  let x_1287 : vec3<f32> = u_xlat21;
  let x_1288 : vec3<f32> = (vec3<f32>(x_1285.x, x_1285.y, x_1285.z) * x_1287);
  let x_1289 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1288.x, x_1288.y, x_1288.z, x_1289.w);
  let x_1291 : vec4<f32> = u_xlat4;
  let x_1293 : vec3<f32> = u_xlat3;
  let x_1295 : vec4<f32> = u_xlat7;
  let x_1297 : vec3<f32> = ((vec3<f32>(x_1291.x, x_1291.y, x_1291.z) * x_1293) + vec3<f32>(x_1295.x, x_1295.y, x_1295.z));
  let x_1298 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1297.x, x_1297.y, x_1297.z, x_1298.w);
  let x_1301 : f32 = u_xlat1.x;
  let x_1303 : f32 = x_48.unity_LightData.z;
  u_xlat0.x = (x_1301 * x_1303);
  let x_1306 : vec3<f32> = u_xlat13;
  let x_1308 : vec4<f32> = x_135.x_MainLightPosition;
  u_xlat1.x = dot(x_1306, vec3<f32>(x_1308.x, x_1308.y, x_1308.z));
  let x_1313 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1313, 0.0f, 1.0f);
  let x_1317 : f32 = u_xlat0.x;
  let x_1319 : f32 = u_xlat1.x;
  u_xlat0.x = (x_1317 * x_1319);
  let x_1322 : vec4<f32> = u_xlat0;
  let x_1324 : vec4<f32> = u_xlat6;
  let x_1326 : vec3<f32> = (vec3<f32>(x_1322.x, x_1322.x, x_1322.x) * vec3<f32>(x_1324.x, x_1324.y, x_1324.z));
  let x_1327 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1326.x, x_1327.y, x_1326.y, x_1326.z);
  let x_1329 : vec3<f32> = u_xlat5;
  let x_1331 : vec4<f32> = x_135.x_MainLightPosition;
  let x_1333 : vec3<f32> = (x_1329 + vec3<f32>(x_1331.x, x_1331.y, x_1331.z));
  let x_1334 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1333.x, x_1333.y, x_1333.z, x_1334.w);
  let x_1336 : vec4<f32> = u_xlat6;
  let x_1338 : vec4<f32> = u_xlat6;
  u_xlat0.x = dot(vec3<f32>(x_1336.x, x_1336.y, x_1336.z), vec3<f32>(x_1338.x, x_1338.y, x_1338.z));
  let x_1343 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1343, 1.17549435e-38f);
  let x_1347 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1347);
  let x_1350 : vec4<f32> = u_xlat0;
  let x_1352 : vec4<f32> = u_xlat6;
  let x_1354 : vec3<f32> = (vec3<f32>(x_1350.x, x_1350.x, x_1350.x) * vec3<f32>(x_1352.x, x_1352.y, x_1352.z));
  let x_1355 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1354.x, x_1354.y, x_1354.z, x_1355.w);
  let x_1357 : vec3<f32> = u_xlat13;
  let x_1358 : vec4<f32> = u_xlat6;
  u_xlat0.x = dot(x_1357, vec3<f32>(x_1358.x, x_1358.y, x_1358.z));
  let x_1363 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1363, 0.0f, 1.0f);
  let x_1367 : vec4<f32> = x_135.x_MainLightPosition;
  let x_1369 : vec4<f32> = u_xlat6;
  u_xlat41 = dot(vec3<f32>(x_1367.x, x_1367.y, x_1367.z), vec3<f32>(x_1369.x, x_1369.y, x_1369.z));
  let x_1372 : f32 = u_xlat41;
  u_xlat41 = clamp(x_1372, 0.0f, 1.0f);
  let x_1375 : f32 = u_xlat0.x;
  let x_1377 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1375 * x_1377);
  let x_1381 : f32 = u_xlat0.x;
  let x_1383 : f32 = u_xlat8.x;
  u_xlat0.x = ((x_1381 * x_1383) + 1.00001001358032226562f);
  let x_1388 : f32 = u_xlat41;
  let x_1389 : f32 = u_xlat41;
  u_xlat41 = (x_1388 * x_1389);
  let x_1392 : f32 = u_xlat0.x;
  let x_1394 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1392 * x_1394);
  let x_1397 : f32 = u_xlat41;
  u_xlat41 = max(x_1397, 0.10000000149011611938f);
  let x_1400 : f32 = u_xlat0.x;
  let x_1401 : f32 = u_xlat41;
  u_xlat0.x = (x_1400 * x_1401);
  let x_1404 : f32 = u_xlat43;
  let x_1406 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1404 * x_1406);
  let x_1409 : f32 = u_xlat42;
  let x_1411 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1409 / x_1411);
  let x_1414 : vec3<f32> = u_xlat2;
  let x_1415 : vec4<f32> = u_xlat0;
  let x_1418 : vec3<f32> = u_xlat3;
  let x_1419 : vec3<f32> = ((x_1414 * vec3<f32>(x_1415.x, x_1415.x, x_1415.x)) + x_1418);
  let x_1420 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1419.x, x_1419.y, x_1419.z, x_1420.w);
  let x_1422 : vec4<f32> = u_xlat1;
  let x_1424 : vec4<f32> = u_xlat6;
  let x_1426 : vec3<f32> = (vec3<f32>(x_1422.x, x_1422.z, x_1422.w) * vec3<f32>(x_1424.x, x_1424.y, x_1424.z));
  let x_1427 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1426.x, x_1427.y, x_1426.y, x_1426.z);
  let x_1430 : f32 = x_135.x_AdditionalLightsCount.x;
  let x_1432 : f32 = x_48.unity_LightData.y;
  u_xlat0.x = min(x_1430, x_1432);
  let x_1437 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1437));
  let x_1441 : f32 = u_xlat14.x;
  let x_1444 : f32 = x_679.x_AdditionalShadowFadeParams.x;
  let x_1447 : f32 = x_679.x_AdditionalShadowFadeParams.y;
  u_xlat14.x = ((x_1441 * x_1444) + x_1447);
  let x_1451 : f32 = u_xlat14.x;
  u_xlat14.x = clamp(x_1451, 0.0f, 1.0f);
  let x_1456 : f32 = x_1056.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1458 : f32 = x_1056.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1460 : f32 = x_1056.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1462 : f32 = x_1056.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1463 : vec4<f32> = vec4<f32>(x_1456, x_1458, x_1460, x_1462);
  let x_1469 : vec4<bool> = (vec4<f32>(x_1463.x, x_1463.y, x_1463.z, x_1463.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_1469.x, x_1469.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1481 : u32 = u_xlatu_loop_1;
    let x_1482 : u32 = u_xlatu0;
    if ((x_1481 < x_1482)) {
    } else {
      break;
    }
    let x_1485 : u32 = u_xlatu_loop_1;
    u_xlatu32 = (x_1485 >> 2u);
    let x_1488 : u32 = u_xlatu_loop_1;
    u_xlati45 = bitcast<i32>((x_1488 & 3u));
    let x_1492 : u32 = u_xlatu32;
    let x_1495 : vec4<f32> = x_48.unity_LightIndices[bitcast<i32>(x_1492)];
    let x_1505 : i32 = u_xlati45;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1510 : vec4<u32> = indexable[x_1505];
    u_xlat32.x = dot(x_1495, bitcast<vec4<f32>>(x_1510));
    let x_1516 : f32 = u_xlat32.x;
    u_xlati32 = i32(x_1516);
    let x_1518 : vec3<f32> = vs_INTERP7;
    let x_1529 : i32 = u_xlati32;
    let x_1531 : vec4<f32> = x_1528.x_AdditionalLightsPosition[x_1529];
    let x_1534 : i32 = u_xlati32;
    let x_1536 : vec4<f32> = x_1528.x_AdditionalLightsPosition[x_1534];
    u_xlat21 = ((-(x_1518) * vec3<f32>(x_1531.w, x_1531.w, x_1531.w)) + vec3<f32>(x_1536.x, x_1536.y, x_1536.z));
    let x_1539 : vec3<f32> = u_xlat21;
    let x_1540 : vec3<f32> = u_xlat21;
    u_xlat45 = dot(x_1539, x_1540);
    let x_1542 : f32 = u_xlat45;
    u_xlat45 = max(x_1542, 0.00006103515625f);
    let x_1545 : f32 = u_xlat45;
    u_xlat46 = inverseSqrt(x_1545);
    let x_1548 : f32 = u_xlat46;
    let x_1550 : vec3<f32> = u_xlat21;
    u_xlat9 = (vec3<f32>(x_1548, x_1548, x_1548) * x_1550);
    let x_1553 : f32 = u_xlat45;
    u_xlat48 = (1.0f / x_1553);
    let x_1555 : f32 = u_xlat45;
    let x_1556 : i32 = u_xlati32;
    let x_1558 : f32 = x_1528.x_AdditionalLightsAttenuation[x_1556].x;
    u_xlat45 = (x_1555 * x_1558);
    let x_1560 : f32 = u_xlat45;
    let x_1562 : f32 = u_xlat45;
    u_xlat45 = ((-(x_1560) * x_1562) + 1.0f);
    let x_1565 : f32 = u_xlat45;
    u_xlat45 = max(x_1565, 0.0f);
    let x_1567 : f32 = u_xlat45;
    let x_1568 : f32 = u_xlat45;
    u_xlat45 = (x_1567 * x_1568);
    let x_1570 : f32 = u_xlat45;
    let x_1571 : f32 = u_xlat48;
    u_xlat45 = (x_1570 * x_1571);
    let x_1573 : i32 = u_xlati32;
    let x_1575 : vec4<f32> = x_1528.x_AdditionalLightsSpotDir[x_1573];
    let x_1577 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_1575.x, x_1575.y, x_1575.z), x_1577);
    let x_1579 : f32 = u_xlat48;
    let x_1580 : i32 = u_xlati32;
    let x_1582 : f32 = x_1528.x_AdditionalLightsAttenuation[x_1580].z;
    let x_1584 : i32 = u_xlati32;
    let x_1586 : f32 = x_1528.x_AdditionalLightsAttenuation[x_1584].w;
    u_xlat48 = ((x_1579 * x_1582) + x_1586);
    let x_1588 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1588, 0.0f, 1.0f);
    let x_1590 : f32 = u_xlat48;
    let x_1591 : f32 = u_xlat48;
    u_xlat48 = (x_1590 * x_1591);
    let x_1593 : f32 = u_xlat45;
    let x_1594 : f32 = u_xlat48;
    u_xlat45 = (x_1593 * x_1594);
    let x_1598 : i32 = u_xlati32;
    let x_1600 : f32 = x_679.x_AdditionalShadowParams[x_1598].w;
    u_xlati48 = i32(x_1600);
    let x_1605 : i32 = u_xlati48;
    u_xlatb10.x = (x_1605 >= 0i);
    let x_1609 : bool = u_xlatb10.x;
    if (x_1609) {
      let x_1613 : i32 = u_xlati32;
      let x_1615 : f32 = x_679.x_AdditionalShadowParams[x_1613].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1615, x_1615, x_1615, x_1615))));
      let x_1621 : bool = u_xlatb10.x;
      if (x_1621) {
        let x_1624 : vec3<f32> = u_xlat9;
        let x_1627 : vec3<f32> = u_xlat9;
        let x_1630 : vec4<bool> = (abs(vec4<f32>(x_1624.z, x_1624.z, x_1624.y, x_1624.z)) >= abs(vec4<f32>(x_1627.x, x_1627.y, x_1627.x, x_1627.x)));
        u_xlatb10 = vec3<bool>(x_1630.x, x_1630.y, x_1630.z);
        let x_1633 : bool = u_xlatb10.y;
        let x_1635 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_1633 & x_1635);
        let x_1639 : vec3<f32> = u_xlat9;
        let x_1642 : vec4<bool> = (-(vec4<f32>(x_1639.z, x_1639.y, x_1639.x, x_1639.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_1642.x, x_1642.y, x_1642.z);
        let x_1646 : bool = u_xlatb11.x;
        u_xlat23.x = select(4.0f, 5.0f, x_1646);
        let x_1651 : bool = u_xlatb11.y;
        u_xlat23.z = select(2.0f, 3.0f, x_1651);
        let x_1656 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_1656);
        let x_1661 : bool = u_xlatb10.z;
        if (x_1661) {
          let x_1666 : f32 = u_xlat23.z;
          x_1662 = x_1666;
        } else {
          let x_1669 : f32 = u_xlat11.x;
          x_1662 = x_1669;
        }
        let x_1670 : f32 = x_1662;
        u_xlat36 = x_1670;
        let x_1673 : bool = u_xlatb10.x;
        if (x_1673) {
          let x_1678 : f32 = u_xlat23.x;
          x_1674 = x_1678;
        } else {
          let x_1680 : f32 = u_xlat36;
          x_1674 = x_1680;
        }
        let x_1681 : f32 = x_1674;
        u_xlat10.x = x_1681;
        let x_1683 : i32 = u_xlati32;
        let x_1685 : f32 = x_679.x_AdditionalShadowParams[x_1683].w;
        u_xlat23.x = trunc(x_1685);
        let x_1689 : f32 = u_xlat10.x;
        let x_1691 : f32 = u_xlat23.x;
        u_xlat10.x = (x_1689 + x_1691);
        let x_1695 : f32 = u_xlat10.x;
        u_xlati48 = i32(x_1695);
      }
      let x_1697 : i32 = u_xlati48;
      u_xlati48 = (x_1697 << bitcast<u32>(2i));
      let x_1699 : vec3<f32> = vs_INTERP7;
      let x_1702 : i32 = u_xlati48;
      let x_1705 : i32 = u_xlati48;
      let x_1709 : vec4<f32> = x_679.x_AdditionalLightsWorldToShadow[((x_1702 + 1i) / 4i)][((x_1705 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1699.y, x_1699.y, x_1699.y, x_1699.y) * x_1709);
      let x_1711 : i32 = u_xlati48;
      let x_1713 : i32 = u_xlati48;
      let x_1716 : vec4<f32> = x_679.x_AdditionalLightsWorldToShadow[(x_1711 / 4i)][(x_1713 % 4i)];
      let x_1717 : vec3<f32> = vs_INTERP7;
      let x_1720 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1716 * vec4<f32>(x_1717.x, x_1717.x, x_1717.x, x_1717.x)) + x_1720);
      let x_1722 : i32 = u_xlati48;
      let x_1725 : i32 = u_xlati48;
      let x_1729 : vec4<f32> = x_679.x_AdditionalLightsWorldToShadow[((x_1722 + 2i) / 4i)][((x_1725 + 2i) % 4i)];
      let x_1730 : vec3<f32> = vs_INTERP7;
      let x_1733 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1729 * vec4<f32>(x_1730.z, x_1730.z, x_1730.z, x_1730.z)) + x_1733);
      let x_1735 : vec4<f32> = u_xlat10;
      let x_1736 : i32 = u_xlati48;
      let x_1739 : i32 = u_xlati48;
      let x_1743 : vec4<f32> = x_679.x_AdditionalLightsWorldToShadow[((x_1736 + 3i) / 4i)][((x_1739 + 3i) % 4i)];
      u_xlat10 = (x_1735 + x_1743);
      let x_1745 : vec4<f32> = u_xlat10;
      let x_1747 : vec4<f32> = u_xlat10;
      let x_1749 : vec3<f32> = (vec3<f32>(x_1745.x, x_1745.y, x_1745.z) / vec3<f32>(x_1747.w, x_1747.w, x_1747.w));
      let x_1750 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1749.x, x_1749.y, x_1749.z, x_1750.w);
      let x_1753 : vec4<f32> = u_xlat10;
      let x_1754 : vec2<f32> = vec2<f32>(x_1753.x, x_1753.y);
      let x_1756 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1754.x, x_1754.y, x_1756);
      let x_1764 : vec3<f32> = txVec1;
      let x_1766 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1764.xy, x_1764.z);
      u_xlat48 = x_1766;
      let x_1767 : i32 = u_xlati32;
      let x_1769 : f32 = x_679.x_AdditionalShadowParams[x_1767].x;
      u_xlat10.x = (1.0f + -(x_1769));
      let x_1773 : f32 = u_xlat48;
      let x_1774 : i32 = u_xlati32;
      let x_1776 : f32 = x_679.x_AdditionalShadowParams[x_1774].x;
      let x_1779 : f32 = u_xlat10.x;
      u_xlat48 = ((x_1773 * x_1776) + x_1779);
      let x_1782 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_1782);
      let x_1787 : f32 = u_xlat10.z;
      u_xlatb23 = (x_1787 >= 1.0f);
      let x_1789 : bool = u_xlatb23;
      let x_1791 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_1789 | x_1791);
      let x_1795 : bool = u_xlatb10.x;
      let x_1796 : f32 = u_xlat48;
      u_xlat48 = select(x_1796, 1.0f, x_1795);
    } else {
      u_xlat48 = 1.0f;
    }
    let x_1799 : f32 = u_xlat48;
    u_xlat10.x = (-(x_1799) + 1.0f);
    let x_1804 : f32 = u_xlat14.x;
    let x_1806 : f32 = u_xlat10.x;
    let x_1808 : f32 = u_xlat48;
    u_xlat48 = ((x_1804 * x_1806) + x_1808);
    let x_1811 : i32 = u_xlati32;
    u_xlati10 = (1i << bitcast<u32>((x_1811 & 31i)));
    let x_1815 : i32 = u_xlati10;
    let x_1818 : f32 = x_1056.x_AdditionalLightsCookieEnableBits;
    u_xlati10 = bitcast<i32>((bitcast<u32>(x_1815) & bitcast<u32>(x_1818)));
    let x_1822 : i32 = u_xlati10;
    if ((x_1822 != 0i)) {
      let x_1826 : i32 = u_xlati32;
      let x_1828 : f32 = x_1056.x_AdditionalLightsLightTypes[x_1826].el;
      u_xlati10 = i32(x_1828);
      let x_1831 : i32 = u_xlati10;
      u_xlati23 = select(1i, 0i, (x_1831 != 0i));
      let x_1835 : i32 = u_xlati32;
      u_xlati36 = (x_1835 << bitcast<u32>(2i));
      let x_1837 : i32 = u_xlati23;
      if ((x_1837 != 0i)) {
        let x_1841 : vec3<f32> = vs_INTERP7;
        let x_1843 : i32 = u_xlati36;
        let x_1846 : i32 = u_xlati36;
        let x_1850 : vec4<f32> = x_1056.x_AdditionalLightsWorldToLights[((x_1843 + 1i) / 4i)][((x_1846 + 1i) % 4i)];
        let x_1852 : vec3<f32> = (vec3<f32>(x_1841.y, x_1841.y, x_1841.y) * vec3<f32>(x_1850.x, x_1850.y, x_1850.w));
        let x_1853 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1852.x, x_1852.y, x_1852.z, x_1853.w);
        let x_1855 : i32 = u_xlati36;
        let x_1857 : i32 = u_xlati36;
        let x_1860 : vec4<f32> = x_1056.x_AdditionalLightsWorldToLights[(x_1855 / 4i)][(x_1857 % 4i)];
        let x_1862 : vec3<f32> = vs_INTERP7;
        let x_1865 : vec4<f32> = u_xlat11;
        let x_1867 : vec3<f32> = ((vec3<f32>(x_1860.x, x_1860.y, x_1860.w) * vec3<f32>(x_1862.x, x_1862.x, x_1862.x)) + vec3<f32>(x_1865.x, x_1865.y, x_1865.z));
        let x_1868 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1867.x, x_1867.y, x_1867.z, x_1868.w);
        let x_1870 : i32 = u_xlati36;
        let x_1873 : i32 = u_xlati36;
        let x_1877 : vec4<f32> = x_1056.x_AdditionalLightsWorldToLights[((x_1870 + 2i) / 4i)][((x_1873 + 2i) % 4i)];
        let x_1879 : vec3<f32> = vs_INTERP7;
        let x_1882 : vec4<f32> = u_xlat11;
        let x_1884 : vec3<f32> = ((vec3<f32>(x_1877.x, x_1877.y, x_1877.w) * vec3<f32>(x_1879.z, x_1879.z, x_1879.z)) + vec3<f32>(x_1882.x, x_1882.y, x_1882.z));
        let x_1885 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1884.x, x_1884.y, x_1884.z, x_1885.w);
        let x_1887 : vec4<f32> = u_xlat11;
        let x_1889 : i32 = u_xlati36;
        let x_1892 : i32 = u_xlati36;
        let x_1896 : vec4<f32> = x_1056.x_AdditionalLightsWorldToLights[((x_1889 + 3i) / 4i)][((x_1892 + 3i) % 4i)];
        let x_1898 : vec3<f32> = (vec3<f32>(x_1887.x, x_1887.y, x_1887.z) + vec3<f32>(x_1896.x, x_1896.y, x_1896.w));
        let x_1899 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1898.x, x_1898.y, x_1898.z, x_1899.w);
        let x_1901 : vec4<f32> = u_xlat11;
        let x_1903 : vec4<f32> = u_xlat11;
        let x_1905 : vec2<f32> = (vec2<f32>(x_1901.x, x_1901.y) / vec2<f32>(x_1903.z, x_1903.z));
        let x_1906 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_1905.x, x_1906.y, x_1905.y);
        let x_1908 : vec3<f32> = u_xlat23;
        let x_1911 : vec2<f32> = ((vec2<f32>(x_1908.x, x_1908.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1912 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_1911.x, x_1912.y, x_1911.y);
        let x_1914 : vec3<f32> = u_xlat23;
        let x_1918 : vec2<f32> = clamp(vec2<f32>(x_1914.x, x_1914.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1919 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_1918.x, x_1919.y, x_1918.y);
        let x_1921 : i32 = u_xlati32;
        let x_1923 : vec4<f32> = x_1056.x_AdditionalLightsCookieAtlasUVRects[x_1921];
        let x_1925 : vec3<f32> = u_xlat23;
        let x_1928 : i32 = u_xlati32;
        let x_1930 : vec4<f32> = x_1056.x_AdditionalLightsCookieAtlasUVRects[x_1928];
        let x_1932 : vec2<f32> = ((vec2<f32>(x_1923.x, x_1923.y) * vec2<f32>(x_1925.x, x_1925.z)) + vec2<f32>(x_1930.z, x_1930.w));
        let x_1933 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_1932.x, x_1933.y, x_1932.y);
      } else {
        let x_1936 : i32 = u_xlati10;
        u_xlatb10.x = (x_1936 == 1i);
        let x_1940 : bool = u_xlatb10.x;
        u_xlati10 = select(0i, 1i, x_1940);
        let x_1942 : i32 = u_xlati10;
        if ((x_1942 != 0i)) {
          let x_1946 : vec3<f32> = vs_INTERP7;
          let x_1948 : i32 = u_xlati36;
          let x_1951 : i32 = u_xlati36;
          let x_1955 : vec4<f32> = x_1056.x_AdditionalLightsWorldToLights[((x_1948 + 1i) / 4i)][((x_1951 + 1i) % 4i)];
          let x_1957 : vec2<f32> = (vec2<f32>(x_1946.y, x_1946.y) * vec2<f32>(x_1955.x, x_1955.y));
          let x_1958 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1957.x, x_1957.y, x_1958.z, x_1958.w);
          let x_1960 : i32 = u_xlati36;
          let x_1962 : i32 = u_xlati36;
          let x_1965 : vec4<f32> = x_1056.x_AdditionalLightsWorldToLights[(x_1960 / 4i)][(x_1962 % 4i)];
          let x_1967 : vec3<f32> = vs_INTERP7;
          let x_1970 : vec4<f32> = u_xlat11;
          let x_1972 : vec2<f32> = ((vec2<f32>(x_1965.x, x_1965.y) * vec2<f32>(x_1967.x, x_1967.x)) + vec2<f32>(x_1970.x, x_1970.y));
          let x_1973 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1972.x, x_1972.y, x_1973.z, x_1973.w);
          let x_1975 : i32 = u_xlati36;
          let x_1978 : i32 = u_xlati36;
          let x_1982 : vec4<f32> = x_1056.x_AdditionalLightsWorldToLights[((x_1975 + 2i) / 4i)][((x_1978 + 2i) % 4i)];
          let x_1984 : vec3<f32> = vs_INTERP7;
          let x_1987 : vec4<f32> = u_xlat11;
          let x_1989 : vec2<f32> = ((vec2<f32>(x_1982.x, x_1982.y) * vec2<f32>(x_1984.z, x_1984.z)) + vec2<f32>(x_1987.x, x_1987.y));
          let x_1990 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1989.x, x_1989.y, x_1990.z, x_1990.w);
          let x_1992 : vec4<f32> = u_xlat11;
          let x_1994 : i32 = u_xlati36;
          let x_1997 : i32 = u_xlati36;
          let x_2001 : vec4<f32> = x_1056.x_AdditionalLightsWorldToLights[((x_1994 + 3i) / 4i)][((x_1997 + 3i) % 4i)];
          let x_2003 : vec2<f32> = (vec2<f32>(x_1992.x, x_1992.y) + vec2<f32>(x_2001.x, x_2001.y));
          let x_2004 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2003.x, x_2003.y, x_2004.z, x_2004.w);
          let x_2006 : vec4<f32> = u_xlat11;
          let x_2009 : vec2<f32> = ((vec2<f32>(x_2006.x, x_2006.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2010 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2009.x, x_2009.y, x_2010.z, x_2010.w);
          let x_2012 : vec4<f32> = u_xlat11;
          let x_2014 : vec2<f32> = fract(vec2<f32>(x_2012.x, x_2012.y));
          let x_2015 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2014.x, x_2014.y, x_2015.z, x_2015.w);
          let x_2017 : i32 = u_xlati32;
          let x_2019 : vec4<f32> = x_1056.x_AdditionalLightsCookieAtlasUVRects[x_2017];
          let x_2021 : vec4<f32> = u_xlat11;
          let x_2024 : i32 = u_xlati32;
          let x_2026 : vec4<f32> = x_1056.x_AdditionalLightsCookieAtlasUVRects[x_2024];
          let x_2028 : vec2<f32> = ((vec2<f32>(x_2019.x, x_2019.y) * vec2<f32>(x_2021.x, x_2021.y)) + vec2<f32>(x_2026.z, x_2026.w));
          let x_2029 : vec3<f32> = u_xlat23;
          u_xlat23 = vec3<f32>(x_2028.x, x_2029.y, x_2028.y);
        } else {
          let x_2032 : vec3<f32> = vs_INTERP7;
          let x_2034 : i32 = u_xlati36;
          let x_2037 : i32 = u_xlati36;
          let x_2041 : vec4<f32> = x_1056.x_AdditionalLightsWorldToLights[((x_2034 + 1i) / 4i)][((x_2037 + 1i) % 4i)];
          u_xlat11 = (vec4<f32>(x_2032.y, x_2032.y, x_2032.y, x_2032.y) * x_2041);
          let x_2043 : i32 = u_xlati36;
          let x_2045 : i32 = u_xlati36;
          let x_2048 : vec4<f32> = x_1056.x_AdditionalLightsWorldToLights[(x_2043 / 4i)][(x_2045 % 4i)];
          let x_2049 : vec3<f32> = vs_INTERP7;
          let x_2052 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_2048 * vec4<f32>(x_2049.x, x_2049.x, x_2049.x, x_2049.x)) + x_2052);
          let x_2054 : i32 = u_xlati36;
          let x_2057 : i32 = u_xlati36;
          let x_2061 : vec4<f32> = x_1056.x_AdditionalLightsWorldToLights[((x_2054 + 2i) / 4i)][((x_2057 + 2i) % 4i)];
          let x_2062 : vec3<f32> = vs_INTERP7;
          let x_2065 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_2061 * vec4<f32>(x_2062.z, x_2062.z, x_2062.z, x_2062.z)) + x_2065);
          let x_2067 : vec4<f32> = u_xlat11;
          let x_2068 : i32 = u_xlati36;
          let x_2071 : i32 = u_xlati36;
          let x_2075 : vec4<f32> = x_1056.x_AdditionalLightsWorldToLights[((x_2068 + 3i) / 4i)][((x_2071 + 3i) % 4i)];
          u_xlat11 = (x_2067 + x_2075);
          let x_2077 : vec4<f32> = u_xlat11;
          let x_2079 : vec4<f32> = u_xlat11;
          let x_2081 : vec3<f32> = (vec3<f32>(x_2077.x, x_2077.y, x_2077.z) / vec3<f32>(x_2079.w, x_2079.w, x_2079.w));
          let x_2082 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2081.x, x_2081.y, x_2081.z, x_2082.w);
          let x_2084 : vec4<f32> = u_xlat11;
          let x_2086 : vec4<f32> = u_xlat11;
          u_xlat10.x = dot(vec3<f32>(x_2084.x, x_2084.y, x_2084.z), vec3<f32>(x_2086.x, x_2086.y, x_2086.z));
          let x_2091 : f32 = u_xlat10.x;
          u_xlat10.x = inverseSqrt(x_2091);
          let x_2094 : vec4<f32> = u_xlat10;
          let x_2096 : vec4<f32> = u_xlat11;
          let x_2098 : vec3<f32> = (vec3<f32>(x_2094.x, x_2094.x, x_2094.x) * vec3<f32>(x_2096.x, x_2096.y, x_2096.z));
          let x_2099 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2098.x, x_2098.y, x_2098.z, x_2099.w);
          let x_2101 : vec4<f32> = u_xlat11;
          u_xlat10.x = dot(abs(vec3<f32>(x_2101.x, x_2101.y, x_2101.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2108 : f32 = u_xlat10.x;
          u_xlat10.x = max(x_2108, 0.00000099999999747524f);
          let x_2113 : f32 = u_xlat10.x;
          u_xlat10.x = (1.0f / x_2113);
          let x_2117 : vec4<f32> = u_xlat10;
          let x_2119 : vec4<f32> = u_xlat11;
          u_xlat12 = (vec3<f32>(x_2117.x, x_2117.x, x_2117.x) * vec3<f32>(x_2119.z, x_2119.x, x_2119.y));
          let x_2123 : f32 = u_xlat12.x;
          u_xlat12.x = -(x_2123);
          let x_2127 : f32 = u_xlat12.x;
          u_xlat12.x = clamp(x_2127, 0.0f, 1.0f);
          let x_2131 : vec3<f32> = u_xlat12;
          let x_2133 : vec4<bool> = (vec4<f32>(x_2131.y, x_2131.z, x_2131.y, x_2131.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb37 = vec2<bool>(x_2133.x, x_2133.y);
          let x_2137 : bool = u_xlatb37.x;
          if (x_2137) {
            let x_2142 : f32 = u_xlat12.x;
            x_2138 = x_2142;
          } else {
            let x_2145 : f32 = u_xlat12.x;
            x_2138 = -(x_2145);
          }
          let x_2147 : f32 = x_2138;
          u_xlat37.x = x_2147;
          let x_2150 : bool = u_xlatb37.y;
          if (x_2150) {
            let x_2155 : f32 = u_xlat12.x;
            x_2151 = x_2155;
          } else {
            let x_2158 : f32 = u_xlat12.x;
            x_2151 = -(x_2158);
          }
          let x_2160 : f32 = x_2151;
          u_xlat37.y = x_2160;
          let x_2162 : vec4<f32> = u_xlat11;
          let x_2164 : vec4<f32> = u_xlat10;
          let x_2167 : vec2<f32> = u_xlat37;
          let x_2168 : vec2<f32> = ((vec2<f32>(x_2162.x, x_2162.y) * vec2<f32>(x_2164.x, x_2164.x)) + x_2167);
          let x_2169 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2168.x, x_2169.y, x_2168.y, x_2169.w);
          let x_2171 : vec4<f32> = u_xlat10;
          let x_2174 : vec2<f32> = ((vec2<f32>(x_2171.x, x_2171.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2175 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2174.x, x_2175.y, x_2174.y, x_2175.w);
          let x_2177 : vec4<f32> = u_xlat10;
          let x_2181 : vec2<f32> = clamp(vec2<f32>(x_2177.x, x_2177.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2182 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2181.x, x_2182.y, x_2181.y, x_2182.w);
          let x_2184 : i32 = u_xlati32;
          let x_2186 : vec4<f32> = x_1056.x_AdditionalLightsCookieAtlasUVRects[x_2184];
          let x_2188 : vec4<f32> = u_xlat10;
          let x_2191 : i32 = u_xlati32;
          let x_2193 : vec4<f32> = x_1056.x_AdditionalLightsCookieAtlasUVRects[x_2191];
          let x_2195 : vec2<f32> = ((vec2<f32>(x_2186.x, x_2186.y) * vec2<f32>(x_2188.x, x_2188.z)) + vec2<f32>(x_2193.z, x_2193.w));
          let x_2196 : vec3<f32> = u_xlat23;
          u_xlat23 = vec3<f32>(x_2195.x, x_2196.y, x_2195.y);
        }
      }
      let x_2203 : vec3<f32> = u_xlat23;
      let x_2205 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_2203.x, x_2203.z), 0.0f);
      u_xlat10 = x_2205;
      let x_2208 : bool = u_xlatb6.y;
      if (x_2208) {
        let x_2213 : f32 = u_xlat10.w;
        x_2209 = x_2213;
      } else {
        let x_2216 : f32 = u_xlat10.x;
        x_2209 = x_2216;
      }
      let x_2217 : f32 = x_2209;
      u_xlat49 = x_2217;
      let x_2219 : bool = u_xlatb6.x;
      if (x_2219) {
        let x_2223 : vec4<f32> = u_xlat10;
        x_2220 = vec3<f32>(x_2223.x, x_2223.y, x_2223.z);
      } else {
        let x_2226 : f32 = u_xlat49;
        x_2220 = vec3<f32>(x_2226, x_2226, x_2226);
      }
      let x_2228 : vec3<f32> = x_2220;
      let x_2229 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2228.x, x_2228.y, x_2228.z, x_2229.w);
    } else {
      u_xlat10.x = 1.0f;
      u_xlat10.y = 1.0f;
      u_xlat10.z = 1.0f;
    }
    let x_2235 : vec4<f32> = u_xlat10;
    let x_2237 : i32 = u_xlati32;
    let x_2239 : vec4<f32> = x_1528.x_AdditionalLightsColor[x_2237];
    let x_2241 : vec3<f32> = (vec3<f32>(x_2235.x, x_2235.y, x_2235.z) * vec3<f32>(x_2239.x, x_2239.y, x_2239.z));
    let x_2242 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2241.x, x_2241.y, x_2241.z, x_2242.w);
    let x_2244 : f32 = u_xlat45;
    let x_2245 : f32 = u_xlat48;
    u_xlat32.x = (x_2244 * x_2245);
    let x_2248 : vec3<f32> = u_xlat13;
    let x_2249 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_2248, x_2249);
    let x_2251 : f32 = u_xlat45;
    u_xlat45 = clamp(x_2251, 0.0f, 1.0f);
    let x_2253 : f32 = u_xlat45;
    let x_2255 : f32 = u_xlat32.x;
    u_xlat32.x = (x_2253 * x_2255);
    let x_2258 : vec2<f32> = u_xlat32;
    let x_2260 : vec4<f32> = u_xlat10;
    let x_2262 : vec3<f32> = (vec3<f32>(x_2258.x, x_2258.x, x_2258.x) * vec3<f32>(x_2260.x, x_2260.y, x_2260.z));
    let x_2263 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2262.x, x_2262.y, x_2262.z, x_2263.w);
    let x_2265 : vec3<f32> = u_xlat21;
    let x_2266 : f32 = u_xlat46;
    let x_2269 : vec3<f32> = u_xlat5;
    u_xlat21 = ((x_2265 * vec3<f32>(x_2266, x_2266, x_2266)) + x_2269);
    let x_2271 : vec3<f32> = u_xlat21;
    let x_2272 : vec3<f32> = u_xlat21;
    u_xlat32.x = dot(x_2271, x_2272);
    let x_2276 : f32 = u_xlat32.x;
    u_xlat32.x = max(x_2276, 1.17549435e-38f);
    let x_2280 : f32 = u_xlat32.x;
    u_xlat32.x = inverseSqrt(x_2280);
    let x_2283 : vec2<f32> = u_xlat32;
    let x_2285 : vec3<f32> = u_xlat21;
    u_xlat21 = (vec3<f32>(x_2283.x, x_2283.x, x_2283.x) * x_2285);
    let x_2287 : vec3<f32> = u_xlat13;
    let x_2288 : vec3<f32> = u_xlat21;
    u_xlat32.x = dot(x_2287, x_2288);
    let x_2292 : f32 = u_xlat32.x;
    u_xlat32.x = clamp(x_2292, 0.0f, 1.0f);
    let x_2295 : vec3<f32> = u_xlat9;
    let x_2296 : vec3<f32> = u_xlat21;
    u_xlat32.y = dot(x_2295, x_2296);
    let x_2300 : f32 = u_xlat32.y;
    u_xlat32.y = clamp(x_2300, 0.0f, 1.0f);
    let x_2303 : vec2<f32> = u_xlat32;
    let x_2304 : vec2<f32> = u_xlat32;
    u_xlat32 = (x_2303 * x_2304);
    let x_2307 : f32 = u_xlat32.x;
    let x_2309 : f32 = u_xlat8.x;
    u_xlat32.x = ((x_2307 * x_2309) + 1.00001001358032226562f);
    let x_2314 : f32 = u_xlat32.x;
    let x_2316 : f32 = u_xlat32.x;
    u_xlat32.x = (x_2314 * x_2316);
    let x_2320 : f32 = u_xlat32.y;
    u_xlat45 = max(x_2320, 0.10000000149011611938f);
    let x_2322 : f32 = u_xlat45;
    let x_2324 : f32 = u_xlat32.x;
    u_xlat32.x = (x_2322 * x_2324);
    let x_2327 : f32 = u_xlat43;
    let x_2329 : f32 = u_xlat32.x;
    u_xlat32.x = (x_2327 * x_2329);
    let x_2332 : f32 = u_xlat42;
    let x_2334 : f32 = u_xlat32.x;
    u_xlat32.x = (x_2332 / x_2334);
    let x_2337 : vec3<f32> = u_xlat2;
    let x_2338 : vec2<f32> = u_xlat32;
    let x_2341 : vec3<f32> = u_xlat3;
    u_xlat21 = ((x_2337 * vec3<f32>(x_2338.x, x_2338.x, x_2338.x)) + x_2341);
    let x_2343 : vec3<f32> = u_xlat21;
    let x_2344 : vec4<f32> = u_xlat10;
    let x_2347 : vec4<f32> = u_xlat7;
    let x_2349 : vec3<f32> = ((x_2343 * vec3<f32>(x_2344.x, x_2344.y, x_2344.z)) + vec3<f32>(x_2347.x, x_2347.y, x_2347.z));
    let x_2350 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2349.x, x_2349.y, x_2349.z, x_2350.w);

    continuing {
      let x_2352 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2352 + bitcast<u32>(1i));
    }
  }
  let x_2354 : vec4<f32> = u_xlat4;
  let x_2356 : f32 = u_xlat44;
  let x_2359 : vec4<f32> = u_xlat1;
  let x_2361 : vec3<f32> = ((vec3<f32>(x_2354.x, x_2354.y, x_2354.z) * vec3<f32>(x_2356, x_2356, x_2356)) + vec3<f32>(x_2359.x, x_2359.z, x_2359.w));
  let x_2362 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2361.x, x_2361.y, x_2361.z, x_2362.w);
  let x_2366 : vec4<f32> = u_xlat7;
  let x_2368 : vec4<f32> = u_xlat0;
  let x_2370 : vec3<f32> = (vec3<f32>(x_2366.x, x_2366.y, x_2366.z) + vec3<f32>(x_2368.x, x_2368.y, x_2368.z));
  let x_2371 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2370.x, x_2370.y, x_2370.z, x_2371.w);
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


