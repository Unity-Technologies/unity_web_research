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

var<private> u_xlatb13 : vec2<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_48 : UnityPerDraw;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(6) var x_MainTex : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainTex : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_135 : PGlobals;

var<private> u_xlat40 : f32;

var<private> vs_INTERP7 : vec3<f32>;

var<private> u_xlat41 : f32;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(9) var Texture2D_D7D66558 : texture_2d<f32>;

@group(0) @binding(18) var samplerTexture2D_D7D66558 : sampler;

@group(1) @binding(5) var<uniform> x_195 : UnityPerMaterial;

var<private> u_xlat42 : f32;

var<private> u_xlat43 : f32;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(7) var Texture2D_DE8BF47E : texture_2d<f32>;

@group(0) @binding(16) var samplerTexture2D_DE8BF47E : sampler;

var<private> u_xlat20 : vec3<f32>;

var<private> u_xlat14 : vec2<f32>;

var<private> u_xlat17 : vec3<f32>;

@group(0) @binding(8) var Texture2D_C005B064 : texture_2d<f32>;

@group(0) @binding(17) var samplerTexture2D_C005B064 : sampler;

@group(0) @binding(5) var x_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D : texture_2d<f32>;

@group(0) @binding(14) var sampler_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D : sampler;

var<private> u_xlat26 : f32;

@group(1) @binding(3) var<uniform> x_666 : LightShadows;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlatb5 : vec4<bool>;

var<private> u_xlatu1 : u32;

var<private> u_xlati1 : i32;

var<private> u_xlat44 : f32;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb14 : bool;

var<private> u_xlatb27 : bool;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlat27 : f32;

@group(1) @binding(4) var<uniform> x_1084 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb19 : vec2<bool>;

var<private> u_xlat46 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat21 : vec3<f32>;

var<private> u_xlatu0 : u32;

var<private> u_xlatu45 : u32;

var<private> u_xlati46 : i32;

var<private> u_xlat45 : f32;

var<private> u_xlati45 : i32;

@group(1) @binding(1) var<uniform> x_1538 : AdditionalLights;

var<private> u_xlat9 : f32;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlati10 : i32;

var<private> u_xlatb23 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat36 : f32;

var<private> u_xlat23 : vec3<f32>;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb36 : bool;

var<private> u_xlati23 : i32;

var<private> u_xlati36 : i32;

var<private> u_xlati49 : i32;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat37 : f32;

var<private> u_xlatb25 : vec2<bool>;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_LinearClamp : sampler;

var<private> u_xlat39 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu42 : u32;

var<private> u_xlatb45 : bool;

fn main_1() {
  var x_650 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_1037 : f32;
  var x_1167 : f32;
  var x_1178 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1681 : f32;
  var x_1692 : f32;
  var txVec1 : vec3<f32>;
  var x_1815 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_2156 : f32;
  var x_2169 : f32;
  var x_2228 : f32;
  var x_2240 : vec3<f32>;
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
  let x_606 : vec3<f32> = (x_603 * vec3<f32>(x_604.x, x_604.x, x_604.x));
  let x_607 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_606.x, x_606.y, x_606.z, x_607.w);
  let x_611 : f32 = x_135.unity_OrthoParams.w;
  u_xlatb13.x = (x_611 == 0.0f);
  let x_614 : vec3<f32> = vs_INTERP7;
  let x_618 : vec3<f32> = x_135.x_WorldSpaceCameraPos;
  let x_619 : vec3<f32> = (-(x_614) + x_618);
  let x_620 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_619.x, x_619.y, x_619.z, x_620.w);
  let x_623 : vec4<f32> = u_xlat1;
  let x_625 : vec4<f32> = u_xlat1;
  u_xlat26 = dot(vec3<f32>(x_623.x, x_623.y, x_623.z), vec3<f32>(x_625.x, x_625.y, x_625.z));
  let x_628 : f32 = u_xlat26;
  u_xlat26 = inverseSqrt(x_628);
  let x_630 : f32 = u_xlat26;
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
  let x_648 : bool = u_xlatb13.x;
  if (x_648) {
    let x_653 : vec4<f32> = u_xlat1;
    x_650 = vec3<f32>(x_653.x, x_653.y, x_653.z);
  } else {
    let x_656 : vec3<f32> = u_xlat5;
    x_650 = x_656;
  }
  let x_657 : vec3<f32> = x_650;
  u_xlat13 = x_657;
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
  u_xlat20 = (x_688 + -(vec3<f32>(x_690.x, x_690.y, x_690.z)));
  let x_695 : vec4<f32> = u_xlat1;
  let x_697 : vec4<f32> = u_xlat1;
  u_xlat8.x = dot(vec3<f32>(x_695.x, x_695.y, x_695.z), vec3<f32>(x_697.x, x_697.y, x_697.z));
  let x_701 : vec3<f32> = u_xlat5;
  let x_702 : vec3<f32> = u_xlat5;
  u_xlat8.y = dot(x_701, x_702);
  let x_705 : vec4<f32> = u_xlat6;
  let x_707 : vec4<f32> = u_xlat6;
  u_xlat8.z = dot(vec3<f32>(x_705.x, x_705.y, x_705.z), vec3<f32>(x_707.x, x_707.y, x_707.z));
  let x_711 : vec3<f32> = u_xlat20;
  let x_712 : vec3<f32> = u_xlat20;
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
  u_xlat41 = (x_835 * x_837);
  let x_840 : f32 = x_135.unity_MatrixV[0i].z;
  let x_842 : f32 = vs_INTERP7.x;
  let x_844 : f32 = u_xlat41;
  u_xlat41 = ((x_840 * x_842) + x_844);
  let x_847 : f32 = x_135.unity_MatrixV[2i].z;
  let x_849 : f32 = vs_INTERP7.z;
  let x_851 : f32 = u_xlat41;
  u_xlat41 = ((x_847 * x_849) + x_851);
  let x_853 : f32 = u_xlat41;
  let x_855 : f32 = x_135.unity_MatrixV[3i].z;
  u_xlat41 = (x_853 + x_855);
  let x_857 : f32 = u_xlat41;
  let x_860 : f32 = x_135.x_ProjectionParams.y;
  u_xlat41 = (-(x_857) + -(x_860));
  let x_863 : f32 = u_xlat41;
  u_xlat41 = max(x_863, 0.0f);
  let x_865 : f32 = u_xlat41;
  let x_868 : f32 = x_135.unity_FogParams.x;
  u_xlat41 = (x_865 * x_868);
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
  u_xlat42 = (x_913 * x_915);
  let x_918 : f32 = u_xlat4.x;
  let x_920 : f32 = u_xlat4.x;
  let x_922 : f32 = u_xlat42;
  u_xlat42 = ((x_918 * x_920) + -(x_922));
  let x_927 : vec4<f32> = x_48.unity_SHC;
  let x_929 : f32 = u_xlat42;
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
  u_xlat40 = (-(x_961) + 1.0f);
  let x_964 : f32 = u_xlat40;
  let x_965 : f32 = u_xlat40;
  u_xlat42 = (x_964 * x_965);
  let x_967 : f32 = u_xlat42;
  u_xlat42 = max(x_967, 0.0078125f);
  let x_970 : f32 = u_xlat42;
  let x_971 : f32 = u_xlat42;
  u_xlat43 = (x_970 * x_971);
  let x_974 : f32 = u_xlat0.x;
  u_xlat0.x = (x_974 + 0.13600003719329833984f);
  let x_979 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_979, 1.0f);
  let x_983 : f32 = u_xlat42;
  u_xlat44 = ((x_983 * 4.0f) + 2.0f);
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
  u_xlat14.x = (-(x_1011) + 1.0f);
  let x_1016 : f32 = u_xlat1.x;
  let x_1018 : f32 = x_666.x_MainLightShadowParams.x;
  let x_1021 : f32 = u_xlat14.x;
  u_xlat1.x = ((x_1016 * x_1018) + x_1021);
  let x_1026 : f32 = u_xlat1.z;
  u_xlatb14 = (0.0f >= x_1026);
  let x_1030 : f32 = u_xlat1.z;
  u_xlatb27 = (x_1030 >= 1.0f);
  let x_1032 : bool = u_xlatb27;
  let x_1033 : bool = u_xlatb14;
  u_xlatb14 = (x_1032 | x_1033);
  let x_1035 : bool = u_xlatb14;
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
  u_xlat19 = (x_1046 + -(x_1048));
  let x_1051 : vec3<f32> = u_xlat19;
  let x_1052 : vec3<f32> = u_xlat19;
  u_xlat14.x = dot(x_1051, x_1052);
  let x_1057 : f32 = u_xlat14.x;
  let x_1059 : f32 = x_666.x_MainLightShadowParams.z;
  let x_1062 : f32 = x_666.x_MainLightShadowParams.w;
  u_xlat27 = ((x_1057 * x_1059) + x_1062);
  let x_1064 : f32 = u_xlat27;
  u_xlat27 = clamp(x_1064, 0.0f, 1.0f);
  let x_1067 : f32 = u_xlat1.x;
  u_xlat19.x = (-(x_1067) + 1.0f);
  let x_1071 : f32 = u_xlat27;
  let x_1073 : f32 = u_xlat19.x;
  let x_1076 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1071 * x_1073) + x_1076);
  let x_1086 : f32 = x_1084.x_MainLightCookieTextureFormat;
  u_xlatb27 = !((x_1086 == -1.0f));
  let x_1088 : bool = u_xlatb27;
  if (x_1088) {
    let x_1091 : vec3<f32> = vs_INTERP7;
    let x_1094 : vec4<f32> = x_1084.x_MainLightWorldToLight[1i];
    let x_1096 : vec2<f32> = (vec2<f32>(x_1091.y, x_1091.y) * vec2<f32>(x_1094.x, x_1094.y));
    let x_1097 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_1096.x, x_1096.y, x_1097.z);
    let x_1100 : vec4<f32> = x_1084.x_MainLightWorldToLight[0i];
    let x_1102 : vec3<f32> = vs_INTERP7;
    let x_1105 : vec3<f32> = u_xlat19;
    let x_1107 : vec2<f32> = ((vec2<f32>(x_1100.x, x_1100.y) * vec2<f32>(x_1102.x, x_1102.x)) + vec2<f32>(x_1105.x, x_1105.y));
    let x_1108 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_1107.x, x_1107.y, x_1108.z);
    let x_1111 : vec4<f32> = x_1084.x_MainLightWorldToLight[2i];
    let x_1113 : vec3<f32> = vs_INTERP7;
    let x_1116 : vec3<f32> = u_xlat19;
    let x_1118 : vec2<f32> = ((vec2<f32>(x_1111.x, x_1111.y) * vec2<f32>(x_1113.z, x_1113.z)) + vec2<f32>(x_1116.x, x_1116.y));
    let x_1119 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_1118.x, x_1118.y, x_1119.z);
    let x_1121 : vec3<f32> = u_xlat19;
    let x_1124 : vec4<f32> = x_1084.x_MainLightWorldToLight[3i];
    let x_1126 : vec2<f32> = (vec2<f32>(x_1121.x, x_1121.y) + vec2<f32>(x_1124.x, x_1124.y));
    let x_1127 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_1126.x, x_1126.y, x_1127.z);
    let x_1129 : vec3<f32> = u_xlat19;
    let x_1134 : vec2<f32> = ((vec2<f32>(x_1129.x, x_1129.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1135 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_1134.x, x_1134.y, x_1135.z);
    let x_1142 : vec3<f32> = u_xlat19;
    let x_1145 : f32 = x_135.x_GlobalMipBias.x;
    let x_1146 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1142.x, x_1142.y), x_1145);
    u_xlat7 = x_1146;
    let x_1149 : f32 = x_1084.x_MainLightCookieTextureFormat;
    let x_1151 : f32 = x_1084.x_MainLightCookieTextureFormat;
    let x_1153 : f32 = x_1084.x_MainLightCookieTextureFormat;
    let x_1155 : f32 = x_1084.x_MainLightCookieTextureFormat;
    let x_1156 : vec4<f32> = vec4<f32>(x_1149, x_1151, x_1153, x_1155);
    let x_1163 : vec4<bool> = (vec4<f32>(x_1156.x, x_1156.y, x_1156.z, x_1156.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb19 = vec2<bool>(x_1163.x, x_1163.y);
    let x_1166 : bool = u_xlatb19.y;
    if (x_1166) {
      let x_1171 : f32 = u_xlat7.w;
      x_1167 = x_1171;
    } else {
      let x_1174 : f32 = u_xlat7.x;
      x_1167 = x_1174;
    }
    let x_1175 : f32 = x_1167;
    u_xlat27 = x_1175;
    let x_1177 : bool = u_xlatb19.x;
    if (x_1177) {
      let x_1181 : vec4<f32> = u_xlat7;
      x_1178 = vec3<f32>(x_1181.x, x_1181.y, x_1181.z);
    } else {
      let x_1184 : f32 = u_xlat27;
      x_1178 = vec3<f32>(x_1184, x_1184, x_1184);
    }
    let x_1186 : vec3<f32> = x_1178;
    u_xlat19 = x_1186;
  } else {
    u_xlat19.x = 1.0f;
    u_xlat19.y = 1.0f;
    u_xlat19.z = 1.0f;
  }
  let x_1191 : vec3<f32> = u_xlat19;
  let x_1193 : vec4<f32> = x_135.x_MainLightColor;
  u_xlat19 = (x_1191 * vec3<f32>(x_1193.x, x_1193.y, x_1193.z));
  let x_1196 : vec3<f32> = u_xlat13;
  let x_1198 : vec4<f32> = u_xlat4;
  u_xlat27 = dot(-(x_1196), vec3<f32>(x_1198.x, x_1198.y, x_1198.z));
  let x_1201 : f32 = u_xlat27;
  let x_1202 : f32 = u_xlat27;
  u_xlat27 = (x_1201 + x_1202);
  let x_1204 : vec4<f32> = u_xlat4;
  let x_1206 : f32 = u_xlat27;
  let x_1210 : vec3<f32> = u_xlat13;
  let x_1212 : vec3<f32> = ((vec3<f32>(x_1204.x, x_1204.y, x_1204.z) * -(vec3<f32>(x_1206, x_1206, x_1206))) + -(x_1210));
  let x_1213 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1212.x, x_1212.y, x_1212.z, x_1213.w);
  let x_1215 : vec4<f32> = u_xlat4;
  let x_1217 : vec3<f32> = u_xlat13;
  u_xlat27 = dot(vec3<f32>(x_1215.x, x_1215.y, x_1215.z), x_1217);
  let x_1219 : f32 = u_xlat27;
  u_xlat27 = clamp(x_1219, 0.0f, 1.0f);
  let x_1221 : f32 = u_xlat27;
  u_xlat27 = (-(x_1221) + 1.0f);
  let x_1224 : f32 = u_xlat27;
  let x_1225 : f32 = u_xlat27;
  u_xlat27 = (x_1224 * x_1225);
  let x_1227 : f32 = u_xlat27;
  let x_1228 : f32 = u_xlat27;
  u_xlat27 = (x_1227 * x_1228);
  let x_1231 : f32 = u_xlat40;
  u_xlat46 = ((-(x_1231) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1237 : f32 = u_xlat40;
  let x_1238 : f32 = u_xlat46;
  u_xlat40 = (x_1237 * x_1238);
  let x_1240 : f32 = u_xlat40;
  u_xlat40 = (x_1240 * 6.0f);
  let x_1251 : vec4<f32> = u_xlat7;
  let x_1253 : f32 = u_xlat40;
  let x_1254 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1251.x, x_1251.y, x_1251.z), x_1253);
  u_xlat7 = x_1254;
  let x_1256 : f32 = u_xlat7.w;
  u_xlat40 = (x_1256 + -1.0f);
  let x_1259 : f32 = x_48.unity_SpecCube0_HDR.w;
  let x_1260 : f32 = u_xlat40;
  u_xlat40 = ((x_1259 * x_1260) + 1.0f);
  let x_1263 : f32 = u_xlat40;
  u_xlat40 = max(x_1263, 0.0f);
  let x_1265 : f32 = u_xlat40;
  u_xlat40 = log2(x_1265);
  let x_1267 : f32 = u_xlat40;
  let x_1269 : f32 = x_48.unity_SpecCube0_HDR.y;
  u_xlat40 = (x_1267 * x_1269);
  let x_1271 : f32 = u_xlat40;
  u_xlat40 = exp2(x_1271);
  let x_1273 : f32 = u_xlat40;
  let x_1275 : f32 = x_48.unity_SpecCube0_HDR.x;
  u_xlat40 = (x_1273 * x_1275);
  let x_1277 : vec4<f32> = u_xlat7;
  let x_1279 : f32 = u_xlat40;
  let x_1281 : vec3<f32> = (vec3<f32>(x_1277.x, x_1277.y, x_1277.z) * vec3<f32>(x_1279, x_1279, x_1279));
  let x_1282 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1281.x, x_1281.y, x_1281.z, x_1282.w);
  let x_1284 : f32 = u_xlat42;
  let x_1286 : f32 = u_xlat42;
  let x_1290 : vec2<f32> = ((vec2<f32>(x_1284, x_1284) * vec2<f32>(x_1286, x_1286)) + vec2<f32>(-1.0f, 1.0f));
  let x_1291 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1290.x, x_1290.y, x_1291.z, x_1291.w);
  let x_1294 : f32 = u_xlat8.y;
  u_xlat40 = (1.0f / x_1294);
  let x_1297 : vec3<f32> = u_xlat2;
  let x_1299 : vec4<f32> = u_xlat0;
  u_xlat21 = (-(x_1297) + vec3<f32>(x_1299.x, x_1299.x, x_1299.x));
  let x_1302 : f32 = u_xlat27;
  let x_1304 : vec3<f32> = u_xlat21;
  let x_1306 : vec3<f32> = u_xlat2;
  u_xlat21 = ((vec3<f32>(x_1302, x_1302, x_1302) * x_1304) + x_1306);
  let x_1308 : f32 = u_xlat40;
  let x_1310 : vec3<f32> = u_xlat21;
  u_xlat21 = (vec3<f32>(x_1308, x_1308, x_1308) * x_1310);
  let x_1312 : vec4<f32> = u_xlat7;
  let x_1314 : vec3<f32> = u_xlat21;
  let x_1315 : vec3<f32> = (vec3<f32>(x_1312.x, x_1312.y, x_1312.z) * x_1314);
  let x_1316 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1315.x, x_1315.y, x_1315.z, x_1316.w);
  let x_1318 : vec3<f32> = u_xlat5;
  let x_1319 : vec3<f32> = u_xlat3;
  let x_1321 : vec4<f32> = u_xlat7;
  u_xlat5 = ((x_1318 * x_1319) + vec3<f32>(x_1321.x, x_1321.y, x_1321.z));
  let x_1325 : f32 = u_xlat1.x;
  let x_1327 : f32 = x_48.unity_LightData.z;
  u_xlat0.x = (x_1325 * x_1327);
  let x_1330 : vec4<f32> = u_xlat4;
  let x_1333 : vec4<f32> = x_135.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_1330.x, x_1330.y, x_1330.z), vec3<f32>(x_1333.x, x_1333.y, x_1333.z));
  let x_1338 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1338, 0.0f, 1.0f);
  let x_1342 : f32 = u_xlat0.x;
  let x_1344 : f32 = u_xlat1.x;
  u_xlat0.x = (x_1342 * x_1344);
  let x_1347 : vec4<f32> = u_xlat0;
  let x_1349 : vec3<f32> = u_xlat19;
  let x_1350 : vec3<f32> = (vec3<f32>(x_1347.x, x_1347.x, x_1347.x) * x_1349);
  let x_1351 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1350.x, x_1351.y, x_1350.y, x_1350.z);
  let x_1353 : vec3<f32> = u_xlat13;
  let x_1355 : vec4<f32> = x_135.x_MainLightPosition;
  u_xlat19 = (x_1353 + vec3<f32>(x_1355.x, x_1355.y, x_1355.z));
  let x_1358 : vec3<f32> = u_xlat19;
  let x_1359 : vec3<f32> = u_xlat19;
  u_xlat0.x = dot(x_1358, x_1359);
  let x_1363 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1363, 1.17549435e-38f);
  let x_1367 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1367);
  let x_1370 : vec4<f32> = u_xlat0;
  let x_1372 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_1370.x, x_1370.x, x_1370.x) * x_1372);
  let x_1374 : vec4<f32> = u_xlat4;
  let x_1376 : vec3<f32> = u_xlat19;
  u_xlat0.x = dot(vec3<f32>(x_1374.x, x_1374.y, x_1374.z), x_1376);
  let x_1380 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1380, 0.0f, 1.0f);
  let x_1384 : vec4<f32> = x_135.x_MainLightPosition;
  let x_1386 : vec3<f32> = u_xlat19;
  u_xlat42 = dot(vec3<f32>(x_1384.x, x_1384.y, x_1384.z), x_1386);
  let x_1388 : f32 = u_xlat42;
  u_xlat42 = clamp(x_1388, 0.0f, 1.0f);
  let x_1391 : f32 = u_xlat0.x;
  let x_1393 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1391 * x_1393);
  let x_1397 : f32 = u_xlat0.x;
  let x_1399 : f32 = u_xlat8.x;
  u_xlat0.x = ((x_1397 * x_1399) + 1.00001001358032226562f);
  let x_1404 : f32 = u_xlat42;
  let x_1405 : f32 = u_xlat42;
  u_xlat42 = (x_1404 * x_1405);
  let x_1408 : f32 = u_xlat0.x;
  let x_1410 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1408 * x_1410);
  let x_1413 : f32 = u_xlat42;
  u_xlat42 = max(x_1413, 0.10000000149011611938f);
  let x_1416 : f32 = u_xlat0.x;
  let x_1417 : f32 = u_xlat42;
  u_xlat0.x = (x_1416 * x_1417);
  let x_1420 : f32 = u_xlat44;
  let x_1422 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1420 * x_1422);
  let x_1425 : f32 = u_xlat43;
  let x_1427 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1425 / x_1427);
  let x_1430 : vec3<f32> = u_xlat2;
  let x_1431 : vec4<f32> = u_xlat0;
  let x_1434 : vec3<f32> = u_xlat3;
  u_xlat19 = ((x_1430 * vec3<f32>(x_1431.x, x_1431.x, x_1431.x)) + x_1434);
  let x_1436 : vec4<f32> = u_xlat1;
  let x_1438 : vec3<f32> = u_xlat19;
  let x_1439 : vec3<f32> = (vec3<f32>(x_1436.x, x_1436.z, x_1436.w) * x_1438);
  let x_1440 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1439.x, x_1440.y, x_1439.y, x_1439.z);
  let x_1443 : f32 = x_135.x_AdditionalLightsCount.x;
  let x_1445 : f32 = x_48.unity_LightData.y;
  u_xlat0.x = min(x_1443, x_1445);
  let x_1450 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1450));
  let x_1454 : f32 = u_xlat14.x;
  let x_1457 : f32 = x_666.x_AdditionalShadowFadeParams.x;
  let x_1460 : f32 = x_666.x_AdditionalShadowFadeParams.y;
  u_xlat14.x = ((x_1454 * x_1457) + x_1460);
  let x_1464 : f32 = u_xlat14.x;
  u_xlat14.x = clamp(x_1464, 0.0f, 1.0f);
  let x_1468 : f32 = x_1084.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1470 : f32 = x_1084.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1472 : f32 = x_1084.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1474 : f32 = x_1084.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1475 : vec4<f32> = vec4<f32>(x_1468, x_1470, x_1472, x_1474);
  let x_1481 : vec4<bool> = (vec4<f32>(x_1475.x, x_1475.y, x_1475.z, x_1475.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb19 = vec2<bool>(x_1481.x, x_1481.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1493 : u32 = u_xlatu_loop_1;
    let x_1494 : u32 = u_xlatu0;
    if ((x_1493 < x_1494)) {
    } else {
      break;
    }
    let x_1497 : u32 = u_xlatu_loop_1;
    u_xlatu45 = (x_1497 >> 2u);
    let x_1500 : u32 = u_xlatu_loop_1;
    u_xlati46 = bitcast<i32>((x_1500 & 3u));
    let x_1504 : u32 = u_xlatu45;
    let x_1507 : vec4<f32> = x_48.unity_LightIndices[bitcast<i32>(x_1504)];
    let x_1517 : i32 = u_xlati46;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1522 : vec4<u32> = indexable[x_1517];
    u_xlat45 = dot(x_1507, bitcast<vec4<f32>>(x_1522));
    let x_1526 : f32 = u_xlat45;
    u_xlati45 = i32(x_1526);
    let x_1528 : vec3<f32> = vs_INTERP7;
    let x_1539 : i32 = u_xlati45;
    let x_1541 : vec4<f32> = x_1538.x_AdditionalLightsPosition[x_1539];
    let x_1544 : i32 = u_xlati45;
    let x_1546 : vec4<f32> = x_1538.x_AdditionalLightsPosition[x_1544];
    u_xlat21 = ((-(x_1528) * vec3<f32>(x_1541.w, x_1541.w, x_1541.w)) + vec3<f32>(x_1546.x, x_1546.y, x_1546.z));
    let x_1549 : vec3<f32> = u_xlat21;
    let x_1550 : vec3<f32> = u_xlat21;
    u_xlat46 = dot(x_1549, x_1550);
    let x_1552 : f32 = u_xlat46;
    u_xlat46 = max(x_1552, 0.00006103515625f);
    let x_1555 : f32 = u_xlat46;
    u_xlat9 = inverseSqrt(x_1555);
    let x_1558 : vec3<f32> = u_xlat21;
    let x_1559 : f32 = u_xlat9;
    u_xlat22 = (x_1558 * vec3<f32>(x_1559, x_1559, x_1559));
    let x_1563 : f32 = u_xlat46;
    u_xlat10.x = (1.0f / x_1563);
    let x_1566 : f32 = u_xlat46;
    let x_1567 : i32 = u_xlati45;
    let x_1569 : f32 = x_1538.x_AdditionalLightsAttenuation[x_1567].x;
    u_xlat46 = (x_1566 * x_1569);
    let x_1571 : f32 = u_xlat46;
    let x_1573 : f32 = u_xlat46;
    u_xlat46 = ((-(x_1571) * x_1573) + 1.0f);
    let x_1576 : f32 = u_xlat46;
    u_xlat46 = max(x_1576, 0.0f);
    let x_1578 : f32 = u_xlat46;
    let x_1579 : f32 = u_xlat46;
    u_xlat46 = (x_1578 * x_1579);
    let x_1581 : f32 = u_xlat46;
    let x_1583 : f32 = u_xlat10.x;
    u_xlat46 = (x_1581 * x_1583);
    let x_1585 : i32 = u_xlati45;
    let x_1587 : vec4<f32> = x_1538.x_AdditionalLightsSpotDir[x_1585];
    let x_1589 : vec3<f32> = u_xlat22;
    u_xlat10.x = dot(vec3<f32>(x_1587.x, x_1587.y, x_1587.z), x_1589);
    let x_1593 : f32 = u_xlat10.x;
    let x_1594 : i32 = u_xlati45;
    let x_1596 : f32 = x_1538.x_AdditionalLightsAttenuation[x_1594].z;
    let x_1598 : i32 = u_xlati45;
    let x_1600 : f32 = x_1538.x_AdditionalLightsAttenuation[x_1598].w;
    u_xlat10.x = ((x_1593 * x_1596) + x_1600);
    let x_1604 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1604, 0.0f, 1.0f);
    let x_1608 : f32 = u_xlat10.x;
    let x_1610 : f32 = u_xlat10.x;
    u_xlat10.x = (x_1608 * x_1610);
    let x_1613 : f32 = u_xlat46;
    let x_1615 : f32 = u_xlat10.x;
    u_xlat46 = (x_1613 * x_1615);
    let x_1619 : i32 = u_xlati45;
    let x_1621 : f32 = x_666.x_AdditionalShadowParams[x_1619].w;
    u_xlati10 = i32(x_1621);
    let x_1626 : i32 = u_xlati10;
    u_xlatb23.x = (x_1626 >= 0i);
    let x_1630 : bool = u_xlatb23.x;
    if (x_1630) {
      let x_1634 : i32 = u_xlati45;
      let x_1636 : f32 = x_666.x_AdditionalShadowParams[x_1634].z;
      u_xlatb23.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1636, x_1636, x_1636, x_1636))));
      let x_1642 : bool = u_xlatb23.x;
      if (x_1642) {
        let x_1645 : vec3<f32> = u_xlat22;
        let x_1648 : vec3<f32> = u_xlat22;
        let x_1651 : vec4<bool> = (abs(vec4<f32>(x_1645.z, x_1645.z, x_1645.y, x_1645.y)) >= abs(vec4<f32>(x_1648.x, x_1648.y, x_1648.x, x_1648.x)));
        u_xlatb23 = vec3<bool>(x_1651.x, x_1651.y, x_1651.z);
        let x_1654 : bool = u_xlatb23.y;
        let x_1656 : bool = u_xlatb23.x;
        u_xlatb23.x = (x_1654 & x_1656);
        let x_1660 : vec3<f32> = u_xlat22;
        let x_1663 : vec4<bool> = (-(vec4<f32>(x_1660.z, x_1660.y, x_1660.x, x_1660.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_1663.x, x_1663.y, x_1663.z);
        let x_1667 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1667);
        let x_1672 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1672);
        let x_1677 : bool = u_xlatb11.z;
        u_xlat36 = select(0.0f, 1.0f, x_1677);
        let x_1680 : bool = u_xlatb23.z;
        if (x_1680) {
          let x_1685 : f32 = u_xlat11.y;
          x_1681 = x_1685;
        } else {
          let x_1687 : f32 = u_xlat36;
          x_1681 = x_1687;
        }
        let x_1688 : f32 = x_1681;
        u_xlat36 = x_1688;
        let x_1691 : bool = u_xlatb23.x;
        if (x_1691) {
          let x_1696 : f32 = u_xlat11.x;
          x_1692 = x_1696;
        } else {
          let x_1698 : f32 = u_xlat36;
          x_1692 = x_1698;
        }
        let x_1699 : f32 = x_1692;
        u_xlat23.x = x_1699;
        let x_1701 : i32 = u_xlati45;
        let x_1703 : f32 = x_666.x_AdditionalShadowParams[x_1701].w;
        u_xlat36 = trunc(x_1703);
        let x_1706 : f32 = u_xlat23.x;
        let x_1707 : f32 = u_xlat36;
        u_xlat23.x = (x_1706 + x_1707);
        let x_1711 : f32 = u_xlat23.x;
        u_xlati10 = i32(x_1711);
      }
      let x_1713 : i32 = u_xlati10;
      u_xlati10 = (x_1713 << bitcast<u32>(2i));
      let x_1715 : vec3<f32> = vs_INTERP7;
      let x_1718 : i32 = u_xlati10;
      let x_1721 : i32 = u_xlati10;
      let x_1725 : vec4<f32> = x_666.x_AdditionalLightsWorldToShadow[((x_1718 + 1i) / 4i)][((x_1721 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1715.y, x_1715.y, x_1715.y, x_1715.y) * x_1725);
      let x_1727 : i32 = u_xlati10;
      let x_1729 : i32 = u_xlati10;
      let x_1732 : vec4<f32> = x_666.x_AdditionalLightsWorldToShadow[(x_1727 / 4i)][(x_1729 % 4i)];
      let x_1733 : vec3<f32> = vs_INTERP7;
      let x_1736 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1732 * vec4<f32>(x_1733.x, x_1733.x, x_1733.x, x_1733.x)) + x_1736);
      let x_1738 : i32 = u_xlati10;
      let x_1741 : i32 = u_xlati10;
      let x_1745 : vec4<f32> = x_666.x_AdditionalLightsWorldToShadow[((x_1738 + 2i) / 4i)][((x_1741 + 2i) % 4i)];
      let x_1746 : vec3<f32> = vs_INTERP7;
      let x_1749 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1745 * vec4<f32>(x_1746.z, x_1746.z, x_1746.z, x_1746.z)) + x_1749);
      let x_1751 : vec4<f32> = u_xlat11;
      let x_1752 : i32 = u_xlati10;
      let x_1755 : i32 = u_xlati10;
      let x_1759 : vec4<f32> = x_666.x_AdditionalLightsWorldToShadow[((x_1752 + 3i) / 4i)][((x_1755 + 3i) % 4i)];
      u_xlat10 = (x_1751 + x_1759);
      let x_1761 : vec4<f32> = u_xlat10;
      let x_1763 : vec4<f32> = u_xlat10;
      let x_1765 : vec3<f32> = (vec3<f32>(x_1761.x, x_1761.y, x_1761.z) / vec3<f32>(x_1763.w, x_1763.w, x_1763.w));
      let x_1766 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1765.x, x_1765.y, x_1765.z, x_1766.w);
      let x_1769 : vec4<f32> = u_xlat10;
      let x_1770 : vec2<f32> = vec2<f32>(x_1769.x, x_1769.y);
      let x_1772 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1770.x, x_1770.y, x_1772);
      let x_1780 : vec3<f32> = txVec1;
      let x_1782 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1780.xy, x_1780.z);
      u_xlat10.x = x_1782;
      let x_1784 : i32 = u_xlati45;
      let x_1786 : f32 = x_666.x_AdditionalShadowParams[x_1784].x;
      u_xlat23.x = (1.0f + -(x_1786));
      let x_1791 : f32 = u_xlat10.x;
      let x_1792 : i32 = u_xlati45;
      let x_1794 : f32 = x_666.x_AdditionalShadowParams[x_1792].x;
      let x_1797 : f32 = u_xlat23.x;
      u_xlat10.x = ((x_1791 * x_1794) + x_1797);
      let x_1801 : f32 = u_xlat10.z;
      u_xlatb23.x = (0.0f >= x_1801);
      let x_1806 : f32 = u_xlat10.z;
      u_xlatb36 = (x_1806 >= 1.0f);
      let x_1808 : bool = u_xlatb36;
      let x_1810 : bool = u_xlatb23.x;
      u_xlatb23.x = (x_1808 | x_1810);
      let x_1814 : bool = u_xlatb23.x;
      if (x_1814) {
        x_1815 = 1.0f;
      } else {
        let x_1820 : f32 = u_xlat10.x;
        x_1815 = x_1820;
      }
      let x_1821 : f32 = x_1815;
      u_xlat10.x = x_1821;
    } else {
      u_xlat10.x = 1.0f;
    }
    let x_1826 : f32 = u_xlat10.x;
    u_xlat23.x = (-(x_1826) + 1.0f);
    let x_1831 : f32 = u_xlat14.x;
    let x_1833 : f32 = u_xlat23.x;
    let x_1836 : f32 = u_xlat10.x;
    u_xlat10.x = ((x_1831 * x_1833) + x_1836);
    let x_1840 : i32 = u_xlati45;
    u_xlati23 = (1i << bitcast<u32>((x_1840 & 31i)));
    let x_1844 : i32 = u_xlati23;
    let x_1847 : f32 = x_1084.x_AdditionalLightsCookieEnableBits;
    u_xlati23 = bitcast<i32>((bitcast<u32>(x_1844) & bitcast<u32>(x_1847)));
    let x_1851 : i32 = u_xlati23;
    if ((x_1851 != 0i)) {
      let x_1855 : i32 = u_xlati45;
      let x_1857 : f32 = x_1084.x_AdditionalLightsLightTypes[x_1855].el;
      u_xlati23 = i32(x_1857);
      let x_1860 : i32 = u_xlati23;
      u_xlati36 = select(1i, 0i, (x_1860 != 0i));
      let x_1864 : i32 = u_xlati45;
      u_xlati49 = (x_1864 << bitcast<u32>(2i));
      let x_1866 : i32 = u_xlati36;
      if ((x_1866 != 0i)) {
        let x_1870 : vec3<f32> = vs_INTERP7;
        let x_1872 : i32 = u_xlati49;
        let x_1875 : i32 = u_xlati49;
        let x_1879 : vec4<f32> = x_1084.x_AdditionalLightsWorldToLights[((x_1872 + 1i) / 4i)][((x_1875 + 1i) % 4i)];
        let x_1881 : vec3<f32> = (vec3<f32>(x_1870.y, x_1870.y, x_1870.y) * vec3<f32>(x_1879.x, x_1879.y, x_1879.w));
        let x_1882 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1881.x, x_1881.y, x_1881.z, x_1882.w);
        let x_1884 : i32 = u_xlati49;
        let x_1886 : i32 = u_xlati49;
        let x_1889 : vec4<f32> = x_1084.x_AdditionalLightsWorldToLights[(x_1884 / 4i)][(x_1886 % 4i)];
        let x_1891 : vec3<f32> = vs_INTERP7;
        let x_1894 : vec4<f32> = u_xlat11;
        let x_1896 : vec3<f32> = ((vec3<f32>(x_1889.x, x_1889.y, x_1889.w) * vec3<f32>(x_1891.x, x_1891.x, x_1891.x)) + vec3<f32>(x_1894.x, x_1894.y, x_1894.z));
        let x_1897 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1896.x, x_1896.y, x_1896.z, x_1897.w);
        let x_1899 : i32 = u_xlati49;
        let x_1902 : i32 = u_xlati49;
        let x_1906 : vec4<f32> = x_1084.x_AdditionalLightsWorldToLights[((x_1899 + 2i) / 4i)][((x_1902 + 2i) % 4i)];
        let x_1908 : vec3<f32> = vs_INTERP7;
        let x_1911 : vec4<f32> = u_xlat11;
        let x_1913 : vec3<f32> = ((vec3<f32>(x_1906.x, x_1906.y, x_1906.w) * vec3<f32>(x_1908.z, x_1908.z, x_1908.z)) + vec3<f32>(x_1911.x, x_1911.y, x_1911.z));
        let x_1914 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1913.x, x_1913.y, x_1913.z, x_1914.w);
        let x_1916 : vec4<f32> = u_xlat11;
        let x_1918 : i32 = u_xlati49;
        let x_1921 : i32 = u_xlati49;
        let x_1925 : vec4<f32> = x_1084.x_AdditionalLightsWorldToLights[((x_1918 + 3i) / 4i)][((x_1921 + 3i) % 4i)];
        let x_1927 : vec3<f32> = (vec3<f32>(x_1916.x, x_1916.y, x_1916.z) + vec3<f32>(x_1925.x, x_1925.y, x_1925.w));
        let x_1928 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1927.x, x_1927.y, x_1927.z, x_1928.w);
        let x_1930 : vec4<f32> = u_xlat11;
        let x_1932 : vec4<f32> = u_xlat11;
        let x_1934 : vec2<f32> = (vec2<f32>(x_1930.x, x_1930.y) / vec2<f32>(x_1932.z, x_1932.z));
        let x_1935 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1934.x, x_1934.y, x_1935.z, x_1935.w);
        let x_1937 : vec4<f32> = u_xlat11;
        let x_1940 : vec2<f32> = ((vec2<f32>(x_1937.x, x_1937.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1941 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1940.x, x_1940.y, x_1941.z, x_1941.w);
        let x_1943 : vec4<f32> = u_xlat11;
        let x_1947 : vec2<f32> = clamp(vec2<f32>(x_1943.x, x_1943.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1948 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1947.x, x_1947.y, x_1948.z, x_1948.w);
        let x_1950 : i32 = u_xlati45;
        let x_1952 : vec4<f32> = x_1084.x_AdditionalLightsCookieAtlasUVRects[x_1950];
        let x_1954 : vec4<f32> = u_xlat11;
        let x_1957 : i32 = u_xlati45;
        let x_1959 : vec4<f32> = x_1084.x_AdditionalLightsCookieAtlasUVRects[x_1957];
        let x_1961 : vec2<f32> = ((vec2<f32>(x_1952.x, x_1952.y) * vec2<f32>(x_1954.x, x_1954.y)) + vec2<f32>(x_1959.z, x_1959.w));
        let x_1962 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1961.x, x_1961.y, x_1962.z, x_1962.w);
      } else {
        let x_1965 : i32 = u_xlati23;
        u_xlatb23.x = (x_1965 == 1i);
        let x_1969 : bool = u_xlatb23.x;
        u_xlati23 = select(0i, 1i, x_1969);
        let x_1971 : i32 = u_xlati23;
        if ((x_1971 != 0i)) {
          let x_1975 : vec3<f32> = vs_INTERP7;
          let x_1977 : i32 = u_xlati49;
          let x_1980 : i32 = u_xlati49;
          let x_1984 : vec4<f32> = x_1084.x_AdditionalLightsWorldToLights[((x_1977 + 1i) / 4i)][((x_1980 + 1i) % 4i)];
          let x_1986 : vec2<f32> = (vec2<f32>(x_1975.y, x_1975.y) * vec2<f32>(x_1984.x, x_1984.y));
          let x_1987 : vec3<f32> = u_xlat23;
          u_xlat23 = vec3<f32>(x_1986.x, x_1986.y, x_1987.z);
          let x_1989 : i32 = u_xlati49;
          let x_1991 : i32 = u_xlati49;
          let x_1994 : vec4<f32> = x_1084.x_AdditionalLightsWorldToLights[(x_1989 / 4i)][(x_1991 % 4i)];
          let x_1996 : vec3<f32> = vs_INTERP7;
          let x_1999 : vec3<f32> = u_xlat23;
          let x_2001 : vec2<f32> = ((vec2<f32>(x_1994.x, x_1994.y) * vec2<f32>(x_1996.x, x_1996.x)) + vec2<f32>(x_1999.x, x_1999.y));
          let x_2002 : vec3<f32> = u_xlat23;
          u_xlat23 = vec3<f32>(x_2001.x, x_2001.y, x_2002.z);
          let x_2004 : i32 = u_xlati49;
          let x_2007 : i32 = u_xlati49;
          let x_2011 : vec4<f32> = x_1084.x_AdditionalLightsWorldToLights[((x_2004 + 2i) / 4i)][((x_2007 + 2i) % 4i)];
          let x_2013 : vec3<f32> = vs_INTERP7;
          let x_2016 : vec3<f32> = u_xlat23;
          let x_2018 : vec2<f32> = ((vec2<f32>(x_2011.x, x_2011.y) * vec2<f32>(x_2013.z, x_2013.z)) + vec2<f32>(x_2016.x, x_2016.y));
          let x_2019 : vec3<f32> = u_xlat23;
          u_xlat23 = vec3<f32>(x_2018.x, x_2018.y, x_2019.z);
          let x_2021 : vec3<f32> = u_xlat23;
          let x_2023 : i32 = u_xlati49;
          let x_2026 : i32 = u_xlati49;
          let x_2030 : vec4<f32> = x_1084.x_AdditionalLightsWorldToLights[((x_2023 + 3i) / 4i)][((x_2026 + 3i) % 4i)];
          let x_2032 : vec2<f32> = (vec2<f32>(x_2021.x, x_2021.y) + vec2<f32>(x_2030.x, x_2030.y));
          let x_2033 : vec3<f32> = u_xlat23;
          u_xlat23 = vec3<f32>(x_2032.x, x_2032.y, x_2033.z);
          let x_2035 : vec3<f32> = u_xlat23;
          let x_2038 : vec2<f32> = ((vec2<f32>(x_2035.x, x_2035.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2039 : vec3<f32> = u_xlat23;
          u_xlat23 = vec3<f32>(x_2038.x, x_2038.y, x_2039.z);
          let x_2041 : vec3<f32> = u_xlat23;
          let x_2043 : vec2<f32> = fract(vec2<f32>(x_2041.x, x_2041.y));
          let x_2044 : vec3<f32> = u_xlat23;
          u_xlat23 = vec3<f32>(x_2043.x, x_2043.y, x_2044.z);
          let x_2046 : i32 = u_xlati45;
          let x_2048 : vec4<f32> = x_1084.x_AdditionalLightsCookieAtlasUVRects[x_2046];
          let x_2050 : vec3<f32> = u_xlat23;
          let x_2053 : i32 = u_xlati45;
          let x_2055 : vec4<f32> = x_1084.x_AdditionalLightsCookieAtlasUVRects[x_2053];
          let x_2057 : vec2<f32> = ((vec2<f32>(x_2048.x, x_2048.y) * vec2<f32>(x_2050.x, x_2050.y)) + vec2<f32>(x_2055.z, x_2055.w));
          let x_2058 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2057.x, x_2057.y, x_2058.z, x_2058.w);
        } else {
          let x_2062 : vec3<f32> = vs_INTERP7;
          let x_2064 : i32 = u_xlati49;
          let x_2067 : i32 = u_xlati49;
          let x_2071 : vec4<f32> = x_1084.x_AdditionalLightsWorldToLights[((x_2064 + 1i) / 4i)][((x_2067 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2062.y, x_2062.y, x_2062.y, x_2062.y) * x_2071);
          let x_2073 : i32 = u_xlati49;
          let x_2075 : i32 = u_xlati49;
          let x_2078 : vec4<f32> = x_1084.x_AdditionalLightsWorldToLights[(x_2073 / 4i)][(x_2075 % 4i)];
          let x_2079 : vec3<f32> = vs_INTERP7;
          let x_2082 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2078 * vec4<f32>(x_2079.x, x_2079.x, x_2079.x, x_2079.x)) + x_2082);
          let x_2084 : i32 = u_xlati49;
          let x_2087 : i32 = u_xlati49;
          let x_2091 : vec4<f32> = x_1084.x_AdditionalLightsWorldToLights[((x_2084 + 2i) / 4i)][((x_2087 + 2i) % 4i)];
          let x_2092 : vec3<f32> = vs_INTERP7;
          let x_2095 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2091 * vec4<f32>(x_2092.z, x_2092.z, x_2092.z, x_2092.z)) + x_2095);
          let x_2097 : vec4<f32> = u_xlat12;
          let x_2098 : i32 = u_xlati49;
          let x_2101 : i32 = u_xlati49;
          let x_2105 : vec4<f32> = x_1084.x_AdditionalLightsWorldToLights[((x_2098 + 3i) / 4i)][((x_2101 + 3i) % 4i)];
          u_xlat12 = (x_2097 + x_2105);
          let x_2107 : vec4<f32> = u_xlat12;
          let x_2109 : vec4<f32> = u_xlat12;
          u_xlat23 = (vec3<f32>(x_2107.x, x_2107.y, x_2107.z) / vec3<f32>(x_2109.w, x_2109.w, x_2109.w));
          let x_2113 : vec3<f32> = u_xlat23;
          let x_2114 : vec3<f32> = u_xlat23;
          u_xlat37 = dot(x_2113, x_2114);
          let x_2116 : f32 = u_xlat37;
          u_xlat37 = inverseSqrt(x_2116);
          let x_2118 : vec3<f32> = u_xlat23;
          let x_2119 : f32 = u_xlat37;
          u_xlat23 = (x_2118 * vec3<f32>(x_2119, x_2119, x_2119));
          let x_2122 : vec3<f32> = u_xlat23;
          u_xlat37 = dot(abs(x_2122), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2126 : f32 = u_xlat37;
          u_xlat37 = max(x_2126, 0.00000099999999747524f);
          let x_2129 : f32 = u_xlat37;
          u_xlat37 = (1.0f / x_2129);
          let x_2131 : vec3<f32> = u_xlat23;
          let x_2133 : f32 = u_xlat37;
          let x_2135 : vec3<f32> = (vec3<f32>(x_2131.z, x_2131.x, x_2131.y) * vec3<f32>(x_2133, x_2133, x_2133));
          let x_2136 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2135.x, x_2135.y, x_2135.z, x_2136.w);
          let x_2139 : f32 = u_xlat12.x;
          u_xlat12.x = -(x_2139);
          let x_2143 : f32 = u_xlat12.x;
          u_xlat12.x = clamp(x_2143, 0.0f, 1.0f);
          let x_2147 : vec4<f32> = u_xlat12;
          let x_2149 : vec4<bool> = (vec4<f32>(x_2147.y, x_2147.z, x_2147.y, x_2147.y) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb25 = vec2<bool>(x_2149.x, x_2149.y);
          let x_2153 : vec4<f32> = u_xlat12;
          hlslcc_movcTemp = x_2153;
          let x_2155 : bool = u_xlatb25.x;
          if (x_2155) {
            let x_2160 : f32 = u_xlat12.x;
            x_2156 = x_2160;
          } else {
            let x_2163 : f32 = u_xlat12.x;
            x_2156 = -(x_2163);
          }
          let x_2165 : f32 = x_2156;
          hlslcc_movcTemp.x = x_2165;
          let x_2168 : bool = u_xlatb25.y;
          if (x_2168) {
            let x_2173 : f32 = u_xlat12.x;
            x_2169 = x_2173;
          } else {
            let x_2176 : f32 = u_xlat12.x;
            x_2169 = -(x_2176);
          }
          let x_2178 : f32 = x_2169;
          hlslcc_movcTemp.y = x_2178;
          let x_2180 : vec4<f32> = hlslcc_movcTemp;
          u_xlat12 = x_2180;
          let x_2181 : vec3<f32> = u_xlat23;
          let x_2183 : f32 = u_xlat37;
          let x_2186 : vec4<f32> = u_xlat12;
          let x_2188 : vec2<f32> = ((vec2<f32>(x_2181.x, x_2181.y) * vec2<f32>(x_2183, x_2183)) + vec2<f32>(x_2186.x, x_2186.y));
          let x_2189 : vec3<f32> = u_xlat23;
          u_xlat23 = vec3<f32>(x_2188.x, x_2188.y, x_2189.z);
          let x_2191 : vec3<f32> = u_xlat23;
          let x_2194 : vec2<f32> = ((vec2<f32>(x_2191.x, x_2191.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2195 : vec3<f32> = u_xlat23;
          u_xlat23 = vec3<f32>(x_2194.x, x_2194.y, x_2195.z);
          let x_2197 : vec3<f32> = u_xlat23;
          let x_2201 : vec2<f32> = clamp(vec2<f32>(x_2197.x, x_2197.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2202 : vec3<f32> = u_xlat23;
          u_xlat23 = vec3<f32>(x_2201.x, x_2201.y, x_2202.z);
          let x_2204 : i32 = u_xlati45;
          let x_2206 : vec4<f32> = x_1084.x_AdditionalLightsCookieAtlasUVRects[x_2204];
          let x_2208 : vec3<f32> = u_xlat23;
          let x_2211 : i32 = u_xlati45;
          let x_2213 : vec4<f32> = x_1084.x_AdditionalLightsCookieAtlasUVRects[x_2211];
          let x_2215 : vec2<f32> = ((vec2<f32>(x_2206.x, x_2206.y) * vec2<f32>(x_2208.x, x_2208.y)) + vec2<f32>(x_2213.z, x_2213.w));
          let x_2216 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2215.x, x_2215.y, x_2216.z, x_2216.w);
        }
      }
      let x_2223 : vec4<f32> = u_xlat11;
      let x_2225 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_2223.x, x_2223.y), 0.0f);
      u_xlat11 = x_2225;
      let x_2227 : bool = u_xlatb19.y;
      if (x_2227) {
        let x_2232 : f32 = u_xlat11.w;
        x_2228 = x_2232;
      } else {
        let x_2235 : f32 = u_xlat11.x;
        x_2228 = x_2235;
      }
      let x_2236 : f32 = x_2228;
      u_xlat23.x = x_2236;
      let x_2239 : bool = u_xlatb19.x;
      if (x_2239) {
        let x_2243 : vec4<f32> = u_xlat11;
        x_2240 = vec3<f32>(x_2243.x, x_2243.y, x_2243.z);
      } else {
        let x_2246 : vec3<f32> = u_xlat23;
        x_2240 = vec3<f32>(x_2246.x, x_2246.x, x_2246.x);
      }
      let x_2248 : vec3<f32> = x_2240;
      u_xlat23 = x_2248;
    } else {
      u_xlat23.x = 1.0f;
      u_xlat23.y = 1.0f;
      u_xlat23.z = 1.0f;
    }
    let x_2253 : vec3<f32> = u_xlat23;
    let x_2254 : i32 = u_xlati45;
    let x_2256 : vec4<f32> = x_1538.x_AdditionalLightsColor[x_2254];
    u_xlat23 = (x_2253 * vec3<f32>(x_2256.x, x_2256.y, x_2256.z));
    let x_2259 : f32 = u_xlat46;
    let x_2261 : f32 = u_xlat10.x;
    u_xlat45 = (x_2259 * x_2261);
    let x_2263 : vec4<f32> = u_xlat4;
    let x_2265 : vec3<f32> = u_xlat22;
    u_xlat46 = dot(vec3<f32>(x_2263.x, x_2263.y, x_2263.z), x_2265);
    let x_2267 : f32 = u_xlat46;
    u_xlat46 = clamp(x_2267, 0.0f, 1.0f);
    let x_2269 : f32 = u_xlat45;
    let x_2270 : f32 = u_xlat46;
    u_xlat45 = (x_2269 * x_2270);
    let x_2272 : f32 = u_xlat45;
    let x_2274 : vec3<f32> = u_xlat23;
    let x_2275 : vec3<f32> = (vec3<f32>(x_2272, x_2272, x_2272) * x_2274);
    let x_2276 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2275.x, x_2275.y, x_2275.z, x_2276.w);
    let x_2278 : vec3<f32> = u_xlat21;
    let x_2279 : f32 = u_xlat9;
    let x_2282 : vec3<f32> = u_xlat13;
    u_xlat21 = ((x_2278 * vec3<f32>(x_2279, x_2279, x_2279)) + x_2282);
    let x_2284 : vec3<f32> = u_xlat21;
    let x_2285 : vec3<f32> = u_xlat21;
    u_xlat45 = dot(x_2284, x_2285);
    let x_2287 : f32 = u_xlat45;
    u_xlat45 = max(x_2287, 1.17549435e-38f);
    let x_2289 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_2289);
    let x_2291 : f32 = u_xlat45;
    let x_2293 : vec3<f32> = u_xlat21;
    u_xlat21 = (vec3<f32>(x_2291, x_2291, x_2291) * x_2293);
    let x_2295 : vec4<f32> = u_xlat4;
    let x_2297 : vec3<f32> = u_xlat21;
    u_xlat45 = dot(vec3<f32>(x_2295.x, x_2295.y, x_2295.z), x_2297);
    let x_2299 : f32 = u_xlat45;
    u_xlat45 = clamp(x_2299, 0.0f, 1.0f);
    let x_2301 : vec3<f32> = u_xlat22;
    let x_2302 : vec3<f32> = u_xlat21;
    u_xlat46 = dot(x_2301, x_2302);
    let x_2304 : f32 = u_xlat46;
    u_xlat46 = clamp(x_2304, 0.0f, 1.0f);
    let x_2306 : f32 = u_xlat45;
    let x_2307 : f32 = u_xlat45;
    u_xlat45 = (x_2306 * x_2307);
    let x_2309 : f32 = u_xlat45;
    let x_2311 : f32 = u_xlat8.x;
    u_xlat45 = ((x_2309 * x_2311) + 1.00001001358032226562f);
    let x_2314 : f32 = u_xlat46;
    let x_2315 : f32 = u_xlat46;
    u_xlat46 = (x_2314 * x_2315);
    let x_2317 : f32 = u_xlat45;
    let x_2318 : f32 = u_xlat45;
    u_xlat45 = (x_2317 * x_2318);
    let x_2320 : f32 = u_xlat46;
    u_xlat46 = max(x_2320, 0.10000000149011611938f);
    let x_2322 : f32 = u_xlat45;
    let x_2323 : f32 = u_xlat46;
    u_xlat45 = (x_2322 * x_2323);
    let x_2325 : f32 = u_xlat44;
    let x_2326 : f32 = u_xlat45;
    u_xlat45 = (x_2325 * x_2326);
    let x_2328 : f32 = u_xlat43;
    let x_2329 : f32 = u_xlat45;
    u_xlat45 = (x_2328 / x_2329);
    let x_2331 : vec3<f32> = u_xlat2;
    let x_2332 : f32 = u_xlat45;
    let x_2335 : vec3<f32> = u_xlat3;
    u_xlat21 = ((x_2331 * vec3<f32>(x_2332, x_2332, x_2332)) + x_2335);
    let x_2337 : vec3<f32> = u_xlat21;
    let x_2338 : vec4<f32> = u_xlat10;
    let x_2341 : vec4<f32> = u_xlat7;
    let x_2343 : vec3<f32> = ((x_2337 * vec3<f32>(x_2338.x, x_2338.y, x_2338.z)) + vec3<f32>(x_2341.x, x_2341.y, x_2341.z));
    let x_2344 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2343.x, x_2343.y, x_2343.z, x_2344.w);

    continuing {
      let x_2346 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2346 + bitcast<u32>(1i));
    }
  }
  let x_2348 : vec3<f32> = u_xlat5;
  let x_2349 : vec4<f32> = u_xlat6;
  let x_2352 : vec4<f32> = u_xlat1;
  let x_2354 : vec3<f32> = ((x_2348 * vec3<f32>(x_2349.x, x_2349.x, x_2349.x)) + vec3<f32>(x_2352.x, x_2352.z, x_2352.w));
  let x_2355 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2354.x, x_2354.y, x_2354.z, x_2355.w);
  let x_2357 : vec4<f32> = u_xlat7;
  let x_2359 : vec4<f32> = u_xlat0;
  let x_2361 : vec3<f32> = (vec3<f32>(x_2357.x, x_2357.y, x_2357.z) + vec3<f32>(x_2359.x, x_2359.y, x_2359.z));
  let x_2362 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2361.x, x_2361.y, x_2361.z, x_2362.w);
  let x_2365 : f32 = u_xlat41;
  let x_2366 : f32 = u_xlat41;
  u_xlat39 = (x_2365 * -(x_2366));
  let x_2369 : f32 = u_xlat39;
  u_xlat39 = exp2(x_2369);
  let x_2371 : vec4<f32> = u_xlat0;
  let x_2374 : vec4<f32> = x_135.unity_FogColor;
  let x_2377 : vec3<f32> = (vec3<f32>(x_2371.x, x_2371.y, x_2371.z) + -(vec3<f32>(x_2374.x, x_2374.y, x_2374.z)));
  let x_2378 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2377.x, x_2377.y, x_2377.z, x_2378.w);
  let x_2382 : f32 = u_xlat39;
  let x_2384 : vec4<f32> = u_xlat0;
  let x_2388 : vec4<f32> = x_135.unity_FogColor;
  let x_2390 : vec3<f32> = ((vec3<f32>(x_2382, x_2382, x_2382) * vec3<f32>(x_2384.x, x_2384.y, x_2384.z)) + vec3<f32>(x_2388.x, x_2388.y, x_2388.z));
  let x_2391 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2390.x, x_2390.y, x_2390.z, x_2391.w);
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


