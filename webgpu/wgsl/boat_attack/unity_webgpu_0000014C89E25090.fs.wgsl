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

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(13) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat18 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlat31 : f32;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(15) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat44 : f32;

@group(1) @binding(3) var<uniform> x_821 : LightShadows;

var<private> u_xlatb44 : bool;

var<private> u_xlatb6 : bool;

var<private> u_xlat19 : f32;

@group(1) @binding(4) var<uniform> x_885 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat45 : f32;

var<private> u_xlat46 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(12) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat21 : vec3<f32>;

var<private> u_xlatu0 : u32;

var<private> u_xlatb31 : vec2<bool>;

var<private> u_xlatu45 : u32;

var<private> u_xlati46 : i32;

var<private> u_xlati45 : i32;

@group(1) @binding(1) var<uniform> x_1355 : AdditionalLights;

var<private> u_xlat9 : f32;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlati10 : i32;

var<private> u_xlatb23 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat36 : f32;

var<private> u_xlat23 : vec3<f32>;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb36 : bool;

var<private> u_xlati23 : i32;

var<private> u_xlati36 : i32;

var<private> u_xlati49 : i32;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat37 : f32;

var<private> u_xlatb25 : vec2<bool>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_LinearClamp : sampler;

var<private> u_xlat39 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu42 : u32;

var<private> u_xlatb45 : bool;

fn main_1() {
  var x_649 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_970 : f32;
  var x_981 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1498 : f32;
  var x_1509 : f32;
  var txVec1 : vec3<f32>;
  var x_1632 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_1972 : f32;
  var x_1985 : f32;
  var x_2044 : f32;
  var x_2056 : vec3<f32>;
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
  let x_610 : f32 = x_135.unity_OrthoParams.w;
  u_xlatb1 = (x_610 == 0.0f);
  let x_612 : vec3<f32> = vs_INTERP7;
  let x_616 : vec3<f32> = x_135.x_WorldSpaceCameraPos;
  let x_617 : vec3<f32> = (-(x_612) + x_616);
  let x_618 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
  let x_620 : vec4<f32> = u_xlat4;
  let x_622 : vec4<f32> = u_xlat4;
  u_xlat14.x = dot(vec3<f32>(x_620.x, x_620.y, x_620.z), vec3<f32>(x_622.x, x_622.y, x_622.z));
  let x_627 : f32 = u_xlat14.x;
  u_xlat14.x = inverseSqrt(x_627);
  let x_630 : vec2<f32> = u_xlat14;
  let x_632 : vec4<f32> = u_xlat4;
  let x_634 : vec3<f32> = (vec3<f32>(x_630.x, x_630.x, x_630.x) * vec3<f32>(x_632.x, x_632.y, x_632.z));
  let x_635 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_634.x, x_634.y, x_634.z, x_635.w);
  let x_639 : f32 = x_135.unity_MatrixV[0i].z;
  u_xlat5.x = x_639;
  let x_642 : f32 = x_135.unity_MatrixV[1i].z;
  u_xlat5.y = x_642;
  let x_645 : f32 = x_135.unity_MatrixV[2i].z;
  u_xlat5.z = x_645;
  let x_647 : bool = u_xlatb1;
  if (x_647) {
    let x_652 : vec4<f32> = u_xlat4;
    x_649 = vec3<f32>(x_652.x, x_652.y, x_652.z);
  } else {
    let x_655 : vec3<f32> = u_xlat5;
    x_649 = x_655;
  }
  let x_656 : vec3<f32> = x_649;
  let x_657 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_656.x, x_656.y, x_656.z, x_657.w);
  let x_660 : f32 = vs_INTERP7.y;
  let x_662 : f32 = x_135.unity_MatrixV[1i].z;
  u_xlat41 = (x_660 * x_662);
  let x_665 : f32 = x_135.unity_MatrixV[0i].z;
  let x_667 : f32 = vs_INTERP7.x;
  let x_669 : f32 = u_xlat41;
  u_xlat41 = ((x_665 * x_667) + x_669);
  let x_672 : f32 = x_135.unity_MatrixV[2i].z;
  let x_674 : f32 = vs_INTERP7.z;
  let x_676 : f32 = u_xlat41;
  u_xlat41 = ((x_672 * x_674) + x_676);
  let x_678 : f32 = u_xlat41;
  let x_680 : f32 = x_135.unity_MatrixV[3i].z;
  u_xlat41 = (x_678 + x_680);
  let x_682 : f32 = u_xlat41;
  let x_685 : f32 = x_135.x_ProjectionParams.y;
  u_xlat41 = (-(x_682) + -(x_685));
  let x_688 : f32 = u_xlat41;
  u_xlat41 = max(x_688, 0.0f);
  let x_690 : f32 = u_xlat41;
  let x_693 : f32 = x_135.unity_FogParams.x;
  u_xlat41 = (x_690 * x_693);
  let x_702 : vec2<f32> = vs_INTERP0;
  let x_704 : f32 = x_135.x_GlobalMipBias.x;
  let x_705 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_702, x_704);
  u_xlat4 = x_705;
  let x_710 : vec2<f32> = vs_INTERP0;
  let x_712 : f32 = x_135.x_GlobalMipBias.x;
  let x_713 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_710, x_712);
  u_xlat5 = vec3<f32>(x_713.x, x_713.y, x_713.z);
  let x_715 : vec4<f32> = u_xlat4;
  let x_718 : vec3<f32> = (vec3<f32>(x_715.x, x_715.y, x_715.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_719 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_718.x, x_718.y, x_718.z, x_719.w);
  let x_721 : vec3<f32> = u_xlat13;
  let x_722 : vec4<f32> = u_xlat4;
  u_xlat42 = dot(x_721, vec3<f32>(x_722.x, x_722.y, x_722.z));
  let x_725 : f32 = u_xlat42;
  u_xlat42 = (x_725 + 0.5f);
  let x_728 : f32 = u_xlat42;
  let x_730 : vec3<f32> = u_xlat5;
  let x_731 : vec3<f32> = (vec3<f32>(x_728, x_728, x_728) * x_730);
  let x_732 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_731.x, x_731.y, x_731.z, x_732.w);
  let x_735 : f32 = u_xlat4.w;
  u_xlat42 = max(x_735, 0.00009999999747378752f);
  let x_738 : vec4<f32> = u_xlat4;
  let x_740 : f32 = u_xlat42;
  let x_742 : vec3<f32> = (vec3<f32>(x_738.x, x_738.y, x_738.z) / vec3<f32>(x_740, x_740, x_740));
  let x_743 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_742.x, x_742.y, x_742.z, x_743.w);
  let x_745 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_745 * vec3<f32>(0.86399996280670166016f, 0.86399996280670166016f, 0.86399996280670166016f));
  let x_749 : vec4<f32> = u_xlat1;
  let x_751 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_749.w, x_749.w, x_749.w) * x_751) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_756 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_756 * vec3<f32>(0.10000000149011611938f, 0.10000000149011611938f, 0.10000000149011611938f)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_763 : f32 = u_xlat0.x;
  u_xlat40 = (-(x_763) + 1.0f);
  let x_766 : f32 = u_xlat40;
  let x_767 : f32 = u_xlat40;
  u_xlat42 = (x_766 * x_767);
  let x_769 : f32 = u_xlat42;
  u_xlat42 = max(x_769, 0.0078125f);
  let x_772 : f32 = u_xlat42;
  let x_773 : f32 = u_xlat42;
  u_xlat43 = (x_772 * x_773);
  let x_776 : f32 = u_xlat0.x;
  u_xlat0.x = (x_776 + 0.13600003719329833984f);
  let x_781 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_781, 1.0f);
  let x_784 : f32 = u_xlat42;
  u_xlat5.x = ((x_784 * 4.0f) + 2.0f);
  let x_790 : f32 = u_xlat7.x;
  u_xlat18 = min(x_790, 1.0f);
  let x_794 : vec4<f32> = vs_INTERP3;
  let x_795 : vec2<f32> = vec2<f32>(x_794.x, x_794.y);
  let x_797 : f32 = vs_INTERP3.z;
  txVec0 = vec3<f32>(x_795.x, x_795.y, x_797);
  let x_810 : vec3<f32> = txVec0;
  let x_812 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_810.xy, x_810.z);
  u_xlat31 = x_812;
  let x_823 : f32 = x_821.x_MainLightShadowParams.x;
  u_xlat44 = (-(x_823) + 1.0f);
  let x_826 : f32 = u_xlat31;
  let x_828 : f32 = x_821.x_MainLightShadowParams.x;
  let x_830 : f32 = u_xlat44;
  u_xlat31 = ((x_826 * x_828) + x_830);
  let x_834 : f32 = vs_INTERP3.z;
  u_xlatb44 = (0.0f >= x_834);
  let x_838 : f32 = vs_INTERP3.z;
  u_xlatb6 = (x_838 >= 1.0f);
  let x_840 : bool = u_xlatb44;
  let x_841 : bool = u_xlatb6;
  u_xlatb44 = (x_840 | x_841);
  let x_843 : bool = u_xlatb44;
  let x_844 : f32 = u_xlat31;
  u_xlat31 = select(x_844, 1.0f, x_843);
  let x_846 : vec3<f32> = vs_INTERP7;
  let x_848 : vec3<f32> = x_135.x_WorldSpaceCameraPos;
  let x_850 : vec3<f32> = (x_846 + -(x_848));
  let x_851 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_850.x, x_850.y, x_850.z, x_851.w);
  let x_853 : vec4<f32> = u_xlat6;
  let x_855 : vec4<f32> = u_xlat6;
  u_xlat44 = dot(vec3<f32>(x_853.x, x_853.y, x_853.z), vec3<f32>(x_855.x, x_855.y, x_855.z));
  let x_858 : f32 = u_xlat44;
  let x_860 : f32 = x_821.x_MainLightShadowParams.z;
  let x_863 : f32 = x_821.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_858 * x_860) + x_863);
  let x_867 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_867, 0.0f, 1.0f);
  let x_871 : f32 = u_xlat31;
  u_xlat19 = (-(x_871) + 1.0f);
  let x_875 : f32 = u_xlat6.x;
  let x_876 : f32 = u_xlat19;
  let x_878 : f32 = u_xlat31;
  u_xlat31 = ((x_875 * x_876) + x_878);
  let x_887 : f32 = x_885.x_MainLightCookieTextureFormat;
  u_xlatb6 = !((x_887 == -1.0f));
  let x_889 : bool = u_xlatb6;
  if (x_889) {
    let x_892 : vec3<f32> = vs_INTERP7;
    let x_895 : vec4<f32> = x_885.x_MainLightWorldToLight[1i];
    let x_897 : vec2<f32> = (vec2<f32>(x_892.y, x_892.y) * vec2<f32>(x_895.x, x_895.y));
    let x_898 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_897.x, x_897.y, x_898.z, x_898.w);
    let x_901 : vec4<f32> = x_885.x_MainLightWorldToLight[0i];
    let x_903 : vec3<f32> = vs_INTERP7;
    let x_906 : vec4<f32> = u_xlat6;
    let x_908 : vec2<f32> = ((vec2<f32>(x_901.x, x_901.y) * vec2<f32>(x_903.x, x_903.x)) + vec2<f32>(x_906.x, x_906.y));
    let x_909 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_908.x, x_908.y, x_909.z, x_909.w);
    let x_912 : vec4<f32> = x_885.x_MainLightWorldToLight[2i];
    let x_914 : vec3<f32> = vs_INTERP7;
    let x_917 : vec4<f32> = u_xlat6;
    let x_919 : vec2<f32> = ((vec2<f32>(x_912.x, x_912.y) * vec2<f32>(x_914.z, x_914.z)) + vec2<f32>(x_917.x, x_917.y));
    let x_920 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_919.x, x_919.y, x_920.z, x_920.w);
    let x_922 : vec4<f32> = u_xlat6;
    let x_925 : vec4<f32> = x_885.x_MainLightWorldToLight[3i];
    let x_927 : vec2<f32> = (vec2<f32>(x_922.x, x_922.y) + vec2<f32>(x_925.x, x_925.y));
    let x_928 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_927.x, x_927.y, x_928.z, x_928.w);
    let x_930 : vec4<f32> = u_xlat6;
    let x_934 : vec2<f32> = ((vec2<f32>(x_930.x, x_930.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_935 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_934.x, x_934.y, x_935.z, x_935.w);
    let x_942 : vec4<f32> = u_xlat6;
    let x_945 : f32 = x_135.x_GlobalMipBias.x;
    let x_946 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_942.x, x_942.y), x_945);
    u_xlat6 = x_946;
    let x_949 : f32 = x_885.x_MainLightCookieTextureFormat;
    let x_951 : f32 = x_885.x_MainLightCookieTextureFormat;
    let x_953 : f32 = x_885.x_MainLightCookieTextureFormat;
    let x_955 : f32 = x_885.x_MainLightCookieTextureFormat;
    let x_956 : vec4<f32> = vec4<f32>(x_949, x_951, x_953, x_955);
    let x_964 : vec4<bool> = (vec4<f32>(x_956.x, x_956.y, x_956.z, x_956.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_964.x, x_964.y);
    let x_968 : bool = u_xlatb7.y;
    if (x_968) {
      let x_974 : f32 = u_xlat6.w;
      x_970 = x_974;
    } else {
      let x_977 : f32 = u_xlat6.x;
      x_970 = x_977;
    }
    let x_978 : f32 = x_970;
    u_xlat45 = x_978;
    let x_980 : bool = u_xlatb7.x;
    if (x_980) {
      let x_984 : vec4<f32> = u_xlat6;
      x_981 = vec3<f32>(x_984.x, x_984.y, x_984.z);
    } else {
      let x_987 : f32 = u_xlat45;
      x_981 = vec3<f32>(x_987, x_987, x_987);
    }
    let x_989 : vec3<f32> = x_981;
    let x_990 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_989.x, x_989.y, x_989.z, x_990.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_996 : vec4<f32> = u_xlat6;
  let x_999 : vec4<f32> = x_135.x_MainLightColor;
  let x_1001 : vec3<f32> = (vec3<f32>(x_996.x, x_996.y, x_996.z) * vec3<f32>(x_999.x, x_999.y, x_999.z));
  let x_1002 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1001.x, x_1001.y, x_1001.z, x_1002.w);
  let x_1004 : vec4<f32> = u_xlat1;
  let x_1007 : vec3<f32> = u_xlat13;
  u_xlat45 = dot(-(vec3<f32>(x_1004.x, x_1004.y, x_1004.z)), x_1007);
  let x_1009 : f32 = u_xlat45;
  let x_1010 : f32 = u_xlat45;
  u_xlat45 = (x_1009 + x_1010);
  let x_1012 : vec3<f32> = u_xlat13;
  let x_1013 : f32 = u_xlat45;
  let x_1017 : vec4<f32> = u_xlat1;
  let x_1020 : vec3<f32> = ((x_1012 * -(vec3<f32>(x_1013, x_1013, x_1013))) + -(vec3<f32>(x_1017.x, x_1017.y, x_1017.z)));
  let x_1021 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1020.x, x_1020.y, x_1020.z, x_1021.w);
  let x_1023 : vec3<f32> = u_xlat13;
  let x_1024 : vec4<f32> = u_xlat1;
  u_xlat45 = dot(x_1023, vec3<f32>(x_1024.x, x_1024.y, x_1024.z));
  let x_1027 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1027, 0.0f, 1.0f);
  let x_1029 : f32 = u_xlat45;
  u_xlat45 = (-(x_1029) + 1.0f);
  let x_1032 : f32 = u_xlat45;
  let x_1033 : f32 = u_xlat45;
  u_xlat45 = (x_1032 * x_1033);
  let x_1035 : f32 = u_xlat45;
  let x_1036 : f32 = u_xlat45;
  u_xlat45 = (x_1035 * x_1036);
  let x_1039 : f32 = u_xlat40;
  u_xlat46 = ((-(x_1039) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1045 : f32 = u_xlat40;
  let x_1046 : f32 = u_xlat46;
  u_xlat40 = (x_1045 * x_1046);
  let x_1048 : f32 = u_xlat40;
  u_xlat40 = (x_1048 * 6.0f);
  let x_1059 : vec4<f32> = u_xlat7;
  let x_1061 : f32 = u_xlat40;
  let x_1062 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1059.x, x_1059.y, x_1059.z), x_1061);
  u_xlat7 = x_1062;
  let x_1064 : f32 = u_xlat7.w;
  u_xlat40 = (x_1064 + -1.0f);
  let x_1067 : f32 = x_48.unity_SpecCube0_HDR.w;
  let x_1068 : f32 = u_xlat40;
  u_xlat40 = ((x_1067 * x_1068) + 1.0f);
  let x_1071 : f32 = u_xlat40;
  u_xlat40 = max(x_1071, 0.0f);
  let x_1073 : f32 = u_xlat40;
  u_xlat40 = log2(x_1073);
  let x_1075 : f32 = u_xlat40;
  let x_1077 : f32 = x_48.unity_SpecCube0_HDR.y;
  u_xlat40 = (x_1075 * x_1077);
  let x_1079 : f32 = u_xlat40;
  u_xlat40 = exp2(x_1079);
  let x_1081 : f32 = u_xlat40;
  let x_1083 : f32 = x_48.unity_SpecCube0_HDR.x;
  u_xlat40 = (x_1081 * x_1083);
  let x_1085 : vec4<f32> = u_xlat7;
  let x_1087 : f32 = u_xlat40;
  let x_1089 : vec3<f32> = (vec3<f32>(x_1085.x, x_1085.y, x_1085.z) * vec3<f32>(x_1087, x_1087, x_1087));
  let x_1090 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1089.x, x_1089.y, x_1089.z, x_1090.w);
  let x_1093 : f32 = u_xlat42;
  let x_1095 : f32 = u_xlat42;
  u_xlat8 = ((vec2<f32>(x_1093, x_1093) * vec2<f32>(x_1095, x_1095)) + vec2<f32>(-1.0f, 1.0f));
  let x_1101 : f32 = u_xlat8.y;
  u_xlat40 = (1.0f / x_1101);
  let x_1104 : vec3<f32> = u_xlat2;
  let x_1106 : vec4<f32> = u_xlat0;
  u_xlat21 = (-(x_1104) + vec3<f32>(x_1106.x, x_1106.x, x_1106.x));
  let x_1109 : f32 = u_xlat45;
  let x_1111 : vec3<f32> = u_xlat21;
  let x_1113 : vec3<f32> = u_xlat2;
  u_xlat21 = ((vec3<f32>(x_1109, x_1109, x_1109) * x_1111) + x_1113);
  let x_1115 : f32 = u_xlat40;
  let x_1117 : vec3<f32> = u_xlat21;
  u_xlat21 = (vec3<f32>(x_1115, x_1115, x_1115) * x_1117);
  let x_1119 : vec4<f32> = u_xlat7;
  let x_1121 : vec3<f32> = u_xlat21;
  let x_1122 : vec3<f32> = (vec3<f32>(x_1119.x, x_1119.y, x_1119.z) * x_1121);
  let x_1123 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1122.x, x_1122.y, x_1122.z, x_1123.w);
  let x_1125 : vec4<f32> = u_xlat4;
  let x_1127 : vec3<f32> = u_xlat3;
  let x_1129 : vec4<f32> = u_xlat7;
  let x_1131 : vec3<f32> = ((vec3<f32>(x_1125.x, x_1125.y, x_1125.z) * x_1127) + vec3<f32>(x_1129.x, x_1129.y, x_1129.z));
  let x_1132 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1131.x, x_1131.y, x_1131.z, x_1132.w);
  let x_1134 : f32 = u_xlat31;
  let x_1136 : f32 = x_48.unity_LightData.z;
  u_xlat0.x = (x_1134 * x_1136);
  let x_1139 : vec3<f32> = u_xlat13;
  let x_1141 : vec4<f32> = x_135.x_MainLightPosition;
  u_xlat40 = dot(x_1139, vec3<f32>(x_1141.x, x_1141.y, x_1141.z));
  let x_1144 : f32 = u_xlat40;
  u_xlat40 = clamp(x_1144, 0.0f, 1.0f);
  let x_1147 : f32 = u_xlat0.x;
  let x_1148 : f32 = u_xlat40;
  u_xlat0.x = (x_1147 * x_1148);
  let x_1151 : vec4<f32> = u_xlat0;
  let x_1153 : vec4<f32> = u_xlat6;
  let x_1155 : vec3<f32> = (vec3<f32>(x_1151.x, x_1151.x, x_1151.x) * vec3<f32>(x_1153.x, x_1153.y, x_1153.z));
  let x_1156 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1155.x, x_1155.y, x_1155.z, x_1156.w);
  let x_1158 : vec4<f32> = u_xlat1;
  let x_1161 : vec4<f32> = x_135.x_MainLightPosition;
  let x_1163 : vec3<f32> = (vec3<f32>(x_1158.x, x_1158.y, x_1158.z) + vec3<f32>(x_1161.x, x_1161.y, x_1161.z));
  let x_1164 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1163.x, x_1163.y, x_1163.z, x_1164.w);
  let x_1166 : vec4<f32> = u_xlat7;
  let x_1168 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_1166.x, x_1166.y, x_1166.z), vec3<f32>(x_1168.x, x_1168.y, x_1168.z));
  let x_1173 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1173, 1.17549435e-38f);
  let x_1177 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1177);
  let x_1180 : vec4<f32> = u_xlat0;
  let x_1182 : vec4<f32> = u_xlat7;
  let x_1184 : vec3<f32> = (vec3<f32>(x_1180.x, x_1180.x, x_1180.x) * vec3<f32>(x_1182.x, x_1182.y, x_1182.z));
  let x_1185 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1184.x, x_1184.y, x_1184.z, x_1185.w);
  let x_1187 : vec3<f32> = u_xlat13;
  let x_1188 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_1187, vec3<f32>(x_1188.x, x_1188.y, x_1188.z));
  let x_1193 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1193, 0.0f, 1.0f);
  let x_1197 : vec4<f32> = x_135.x_MainLightPosition;
  let x_1199 : vec4<f32> = u_xlat7;
  u_xlat40 = dot(vec3<f32>(x_1197.x, x_1197.y, x_1197.z), vec3<f32>(x_1199.x, x_1199.y, x_1199.z));
  let x_1202 : f32 = u_xlat40;
  u_xlat40 = clamp(x_1202, 0.0f, 1.0f);
  let x_1205 : f32 = u_xlat0.x;
  let x_1207 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1205 * x_1207);
  let x_1211 : f32 = u_xlat0.x;
  let x_1213 : f32 = u_xlat8.x;
  u_xlat0.x = ((x_1211 * x_1213) + 1.00001001358032226562f);
  let x_1218 : f32 = u_xlat40;
  let x_1219 : f32 = u_xlat40;
  u_xlat40 = (x_1218 * x_1219);
  let x_1222 : f32 = u_xlat0.x;
  let x_1224 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1222 * x_1224);
  let x_1227 : f32 = u_xlat40;
  u_xlat40 = max(x_1227, 0.10000000149011611938f);
  let x_1230 : f32 = u_xlat0.x;
  let x_1231 : f32 = u_xlat40;
  u_xlat0.x = (x_1230 * x_1231);
  let x_1235 : f32 = u_xlat5.x;
  let x_1237 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1235 * x_1237);
  let x_1240 : f32 = u_xlat43;
  let x_1242 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1240 / x_1242);
  let x_1245 : vec3<f32> = u_xlat2;
  let x_1246 : vec4<f32> = u_xlat0;
  let x_1249 : vec3<f32> = u_xlat3;
  let x_1250 : vec3<f32> = ((x_1245 * vec3<f32>(x_1246.x, x_1246.x, x_1246.x)) + x_1249);
  let x_1251 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1250.x, x_1250.y, x_1250.z, x_1251.w);
  let x_1253 : vec4<f32> = u_xlat6;
  let x_1255 : vec4<f32> = u_xlat7;
  let x_1257 : vec3<f32> = (vec3<f32>(x_1253.x, x_1253.y, x_1253.z) * vec3<f32>(x_1255.x, x_1255.y, x_1255.z));
  let x_1258 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1257.x, x_1257.y, x_1257.z, x_1258.w);
  let x_1261 : f32 = x_135.x_AdditionalLightsCount.x;
  let x_1263 : f32 = x_48.unity_LightData.y;
  u_xlat0.x = min(x_1261, x_1263);
  let x_1269 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1269));
  let x_1272 : f32 = u_xlat44;
  let x_1275 : f32 = x_821.x_AdditionalShadowFadeParams.x;
  let x_1278 : f32 = x_821.x_AdditionalShadowFadeParams.y;
  u_xlat40 = ((x_1272 * x_1275) + x_1278);
  let x_1280 : f32 = u_xlat40;
  u_xlat40 = clamp(x_1280, 0.0f, 1.0f);
  let x_1284 : f32 = x_885.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1286 : f32 = x_885.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1288 : f32 = x_885.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1290 : f32 = x_885.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1291 : vec4<f32> = vec4<f32>(x_1284, x_1286, x_1288, x_1290);
  let x_1298 : vec4<bool> = (vec4<f32>(x_1291.x, x_1291.y, x_1291.z, x_1291.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
  u_xlatb31 = vec2<bool>(x_1298.x, x_1298.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1310 : u32 = u_xlatu_loop_1;
    let x_1311 : u32 = u_xlatu0;
    if ((x_1310 < x_1311)) {
    } else {
      break;
    }
    let x_1314 : u32 = u_xlatu_loop_1;
    u_xlatu45 = (x_1314 >> 2u);
    let x_1318 : u32 = u_xlatu_loop_1;
    u_xlati46 = bitcast<i32>((x_1318 & 3u));
    let x_1321 : u32 = u_xlatu45;
    let x_1324 : vec4<f32> = x_48.unity_LightIndices[bitcast<i32>(x_1321)];
    let x_1334 : i32 = u_xlati46;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1339 : vec4<u32> = indexable[x_1334];
    u_xlat45 = dot(x_1324, bitcast<vec4<f32>>(x_1339));
    let x_1343 : f32 = u_xlat45;
    u_xlati45 = i32(x_1343);
    let x_1345 : vec3<f32> = vs_INTERP7;
    let x_1356 : i32 = u_xlati45;
    let x_1358 : vec4<f32> = x_1355.x_AdditionalLightsPosition[x_1356];
    let x_1361 : i32 = u_xlati45;
    let x_1363 : vec4<f32> = x_1355.x_AdditionalLightsPosition[x_1361];
    u_xlat21 = ((-(x_1345) * vec3<f32>(x_1358.w, x_1358.w, x_1358.w)) + vec3<f32>(x_1363.x, x_1363.y, x_1363.z));
    let x_1366 : vec3<f32> = u_xlat21;
    let x_1367 : vec3<f32> = u_xlat21;
    u_xlat46 = dot(x_1366, x_1367);
    let x_1369 : f32 = u_xlat46;
    u_xlat46 = max(x_1369, 0.00006103515625f);
    let x_1372 : f32 = u_xlat46;
    u_xlat9 = inverseSqrt(x_1372);
    let x_1375 : vec3<f32> = u_xlat21;
    let x_1376 : f32 = u_xlat9;
    u_xlat22 = (x_1375 * vec3<f32>(x_1376, x_1376, x_1376));
    let x_1380 : f32 = u_xlat46;
    u_xlat10.x = (1.0f / x_1380);
    let x_1383 : f32 = u_xlat46;
    let x_1384 : i32 = u_xlati45;
    let x_1386 : f32 = x_1355.x_AdditionalLightsAttenuation[x_1384].x;
    u_xlat46 = (x_1383 * x_1386);
    let x_1388 : f32 = u_xlat46;
    let x_1390 : f32 = u_xlat46;
    u_xlat46 = ((-(x_1388) * x_1390) + 1.0f);
    let x_1393 : f32 = u_xlat46;
    u_xlat46 = max(x_1393, 0.0f);
    let x_1395 : f32 = u_xlat46;
    let x_1396 : f32 = u_xlat46;
    u_xlat46 = (x_1395 * x_1396);
    let x_1398 : f32 = u_xlat46;
    let x_1400 : f32 = u_xlat10.x;
    u_xlat46 = (x_1398 * x_1400);
    let x_1402 : i32 = u_xlati45;
    let x_1404 : vec4<f32> = x_1355.x_AdditionalLightsSpotDir[x_1402];
    let x_1406 : vec3<f32> = u_xlat22;
    u_xlat10.x = dot(vec3<f32>(x_1404.x, x_1404.y, x_1404.z), x_1406);
    let x_1410 : f32 = u_xlat10.x;
    let x_1411 : i32 = u_xlati45;
    let x_1413 : f32 = x_1355.x_AdditionalLightsAttenuation[x_1411].z;
    let x_1415 : i32 = u_xlati45;
    let x_1417 : f32 = x_1355.x_AdditionalLightsAttenuation[x_1415].w;
    u_xlat10.x = ((x_1410 * x_1413) + x_1417);
    let x_1421 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1421, 0.0f, 1.0f);
    let x_1425 : f32 = u_xlat10.x;
    let x_1427 : f32 = u_xlat10.x;
    u_xlat10.x = (x_1425 * x_1427);
    let x_1430 : f32 = u_xlat46;
    let x_1432 : f32 = u_xlat10.x;
    u_xlat46 = (x_1430 * x_1432);
    let x_1436 : i32 = u_xlati45;
    let x_1438 : f32 = x_821.x_AdditionalShadowParams[x_1436].w;
    u_xlati10 = i32(x_1438);
    let x_1443 : i32 = u_xlati10;
    u_xlatb23.x = (x_1443 >= 0i);
    let x_1447 : bool = u_xlatb23.x;
    if (x_1447) {
      let x_1451 : i32 = u_xlati45;
      let x_1453 : f32 = x_821.x_AdditionalShadowParams[x_1451].z;
      u_xlatb23.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1453, x_1453, x_1453, x_1453))));
      let x_1459 : bool = u_xlatb23.x;
      if (x_1459) {
        let x_1462 : vec3<f32> = u_xlat22;
        let x_1465 : vec3<f32> = u_xlat22;
        let x_1468 : vec4<bool> = (abs(vec4<f32>(x_1462.z, x_1462.z, x_1462.y, x_1462.y)) >= abs(vec4<f32>(x_1465.x, x_1465.y, x_1465.x, x_1465.x)));
        u_xlatb23 = vec3<bool>(x_1468.x, x_1468.y, x_1468.z);
        let x_1471 : bool = u_xlatb23.y;
        let x_1473 : bool = u_xlatb23.x;
        u_xlatb23.x = (x_1471 & x_1473);
        let x_1477 : vec3<f32> = u_xlat22;
        let x_1480 : vec4<bool> = (-(vec4<f32>(x_1477.z, x_1477.y, x_1477.x, x_1477.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_1480.x, x_1480.y, x_1480.z);
        let x_1484 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1484);
        let x_1489 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1489);
        let x_1494 : bool = u_xlatb11.z;
        u_xlat36 = select(0.0f, 1.0f, x_1494);
        let x_1497 : bool = u_xlatb23.z;
        if (x_1497) {
          let x_1502 : f32 = u_xlat11.y;
          x_1498 = x_1502;
        } else {
          let x_1504 : f32 = u_xlat36;
          x_1498 = x_1504;
        }
        let x_1505 : f32 = x_1498;
        u_xlat36 = x_1505;
        let x_1508 : bool = u_xlatb23.x;
        if (x_1508) {
          let x_1513 : f32 = u_xlat11.x;
          x_1509 = x_1513;
        } else {
          let x_1515 : f32 = u_xlat36;
          x_1509 = x_1515;
        }
        let x_1516 : f32 = x_1509;
        u_xlat23.x = x_1516;
        let x_1518 : i32 = u_xlati45;
        let x_1520 : f32 = x_821.x_AdditionalShadowParams[x_1518].w;
        u_xlat36 = trunc(x_1520);
        let x_1523 : f32 = u_xlat23.x;
        let x_1524 : f32 = u_xlat36;
        u_xlat23.x = (x_1523 + x_1524);
        let x_1528 : f32 = u_xlat23.x;
        u_xlati10 = i32(x_1528);
      }
      let x_1530 : i32 = u_xlati10;
      u_xlati10 = (x_1530 << bitcast<u32>(2i));
      let x_1532 : vec3<f32> = vs_INTERP7;
      let x_1535 : i32 = u_xlati10;
      let x_1538 : i32 = u_xlati10;
      let x_1542 : vec4<f32> = x_821.x_AdditionalLightsWorldToShadow[((x_1535 + 1i) / 4i)][((x_1538 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1532.y, x_1532.y, x_1532.y, x_1532.y) * x_1542);
      let x_1544 : i32 = u_xlati10;
      let x_1546 : i32 = u_xlati10;
      let x_1549 : vec4<f32> = x_821.x_AdditionalLightsWorldToShadow[(x_1544 / 4i)][(x_1546 % 4i)];
      let x_1550 : vec3<f32> = vs_INTERP7;
      let x_1553 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1549 * vec4<f32>(x_1550.x, x_1550.x, x_1550.x, x_1550.x)) + x_1553);
      let x_1555 : i32 = u_xlati10;
      let x_1558 : i32 = u_xlati10;
      let x_1562 : vec4<f32> = x_821.x_AdditionalLightsWorldToShadow[((x_1555 + 2i) / 4i)][((x_1558 + 2i) % 4i)];
      let x_1563 : vec3<f32> = vs_INTERP7;
      let x_1566 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1562 * vec4<f32>(x_1563.z, x_1563.z, x_1563.z, x_1563.z)) + x_1566);
      let x_1568 : vec4<f32> = u_xlat11;
      let x_1569 : i32 = u_xlati10;
      let x_1572 : i32 = u_xlati10;
      let x_1576 : vec4<f32> = x_821.x_AdditionalLightsWorldToShadow[((x_1569 + 3i) / 4i)][((x_1572 + 3i) % 4i)];
      u_xlat10 = (x_1568 + x_1576);
      let x_1578 : vec4<f32> = u_xlat10;
      let x_1580 : vec4<f32> = u_xlat10;
      let x_1582 : vec3<f32> = (vec3<f32>(x_1578.x, x_1578.y, x_1578.z) / vec3<f32>(x_1580.w, x_1580.w, x_1580.w));
      let x_1583 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1582.x, x_1582.y, x_1582.z, x_1583.w);
      let x_1586 : vec4<f32> = u_xlat10;
      let x_1587 : vec2<f32> = vec2<f32>(x_1586.x, x_1586.y);
      let x_1589 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1587.x, x_1587.y, x_1589);
      let x_1597 : vec3<f32> = txVec1;
      let x_1599 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1597.xy, x_1597.z);
      u_xlat10.x = x_1599;
      let x_1601 : i32 = u_xlati45;
      let x_1603 : f32 = x_821.x_AdditionalShadowParams[x_1601].x;
      u_xlat23.x = (1.0f + -(x_1603));
      let x_1608 : f32 = u_xlat10.x;
      let x_1609 : i32 = u_xlati45;
      let x_1611 : f32 = x_821.x_AdditionalShadowParams[x_1609].x;
      let x_1614 : f32 = u_xlat23.x;
      u_xlat10.x = ((x_1608 * x_1611) + x_1614);
      let x_1618 : f32 = u_xlat10.z;
      u_xlatb23.x = (0.0f >= x_1618);
      let x_1623 : f32 = u_xlat10.z;
      u_xlatb36 = (x_1623 >= 1.0f);
      let x_1625 : bool = u_xlatb36;
      let x_1627 : bool = u_xlatb23.x;
      u_xlatb23.x = (x_1625 | x_1627);
      let x_1631 : bool = u_xlatb23.x;
      if (x_1631) {
        x_1632 = 1.0f;
      } else {
        let x_1637 : f32 = u_xlat10.x;
        x_1632 = x_1637;
      }
      let x_1638 : f32 = x_1632;
      u_xlat10.x = x_1638;
    } else {
      u_xlat10.x = 1.0f;
    }
    let x_1643 : f32 = u_xlat10.x;
    u_xlat23.x = (-(x_1643) + 1.0f);
    let x_1647 : f32 = u_xlat40;
    let x_1649 : f32 = u_xlat23.x;
    let x_1652 : f32 = u_xlat10.x;
    u_xlat10.x = ((x_1647 * x_1649) + x_1652);
    let x_1656 : i32 = u_xlati45;
    u_xlati23 = (1i << bitcast<u32>((x_1656 & 31i)));
    let x_1660 : i32 = u_xlati23;
    let x_1663 : f32 = x_885.x_AdditionalLightsCookieEnableBits;
    u_xlati23 = bitcast<i32>((bitcast<u32>(x_1660) & bitcast<u32>(x_1663)));
    let x_1667 : i32 = u_xlati23;
    if ((x_1667 != 0i)) {
      let x_1671 : i32 = u_xlati45;
      let x_1673 : f32 = x_885.x_AdditionalLightsLightTypes[x_1671].el;
      u_xlati23 = i32(x_1673);
      let x_1676 : i32 = u_xlati23;
      u_xlati36 = select(1i, 0i, (x_1676 != 0i));
      let x_1680 : i32 = u_xlati45;
      u_xlati49 = (x_1680 << bitcast<u32>(2i));
      let x_1682 : i32 = u_xlati36;
      if ((x_1682 != 0i)) {
        let x_1686 : vec3<f32> = vs_INTERP7;
        let x_1688 : i32 = u_xlati49;
        let x_1691 : i32 = u_xlati49;
        let x_1695 : vec4<f32> = x_885.x_AdditionalLightsWorldToLights[((x_1688 + 1i) / 4i)][((x_1691 + 1i) % 4i)];
        let x_1697 : vec3<f32> = (vec3<f32>(x_1686.y, x_1686.y, x_1686.y) * vec3<f32>(x_1695.x, x_1695.y, x_1695.w));
        let x_1698 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1697.x, x_1697.y, x_1697.z, x_1698.w);
        let x_1700 : i32 = u_xlati49;
        let x_1702 : i32 = u_xlati49;
        let x_1705 : vec4<f32> = x_885.x_AdditionalLightsWorldToLights[(x_1700 / 4i)][(x_1702 % 4i)];
        let x_1707 : vec3<f32> = vs_INTERP7;
        let x_1710 : vec4<f32> = u_xlat11;
        let x_1712 : vec3<f32> = ((vec3<f32>(x_1705.x, x_1705.y, x_1705.w) * vec3<f32>(x_1707.x, x_1707.x, x_1707.x)) + vec3<f32>(x_1710.x, x_1710.y, x_1710.z));
        let x_1713 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1712.x, x_1712.y, x_1712.z, x_1713.w);
        let x_1715 : i32 = u_xlati49;
        let x_1718 : i32 = u_xlati49;
        let x_1722 : vec4<f32> = x_885.x_AdditionalLightsWorldToLights[((x_1715 + 2i) / 4i)][((x_1718 + 2i) % 4i)];
        let x_1724 : vec3<f32> = vs_INTERP7;
        let x_1727 : vec4<f32> = u_xlat11;
        let x_1729 : vec3<f32> = ((vec3<f32>(x_1722.x, x_1722.y, x_1722.w) * vec3<f32>(x_1724.z, x_1724.z, x_1724.z)) + vec3<f32>(x_1727.x, x_1727.y, x_1727.z));
        let x_1730 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1729.x, x_1729.y, x_1729.z, x_1730.w);
        let x_1732 : vec4<f32> = u_xlat11;
        let x_1734 : i32 = u_xlati49;
        let x_1737 : i32 = u_xlati49;
        let x_1741 : vec4<f32> = x_885.x_AdditionalLightsWorldToLights[((x_1734 + 3i) / 4i)][((x_1737 + 3i) % 4i)];
        let x_1743 : vec3<f32> = (vec3<f32>(x_1732.x, x_1732.y, x_1732.z) + vec3<f32>(x_1741.x, x_1741.y, x_1741.w));
        let x_1744 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1743.x, x_1743.y, x_1743.z, x_1744.w);
        let x_1746 : vec4<f32> = u_xlat11;
        let x_1748 : vec4<f32> = u_xlat11;
        let x_1750 : vec2<f32> = (vec2<f32>(x_1746.x, x_1746.y) / vec2<f32>(x_1748.z, x_1748.z));
        let x_1751 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1750.x, x_1750.y, x_1751.z, x_1751.w);
        let x_1753 : vec4<f32> = u_xlat11;
        let x_1756 : vec2<f32> = ((vec2<f32>(x_1753.x, x_1753.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1757 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1756.x, x_1756.y, x_1757.z, x_1757.w);
        let x_1759 : vec4<f32> = u_xlat11;
        let x_1763 : vec2<f32> = clamp(vec2<f32>(x_1759.x, x_1759.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1764 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1763.x, x_1763.y, x_1764.z, x_1764.w);
        let x_1766 : i32 = u_xlati45;
        let x_1768 : vec4<f32> = x_885.x_AdditionalLightsCookieAtlasUVRects[x_1766];
        let x_1770 : vec4<f32> = u_xlat11;
        let x_1773 : i32 = u_xlati45;
        let x_1775 : vec4<f32> = x_885.x_AdditionalLightsCookieAtlasUVRects[x_1773];
        let x_1777 : vec2<f32> = ((vec2<f32>(x_1768.x, x_1768.y) * vec2<f32>(x_1770.x, x_1770.y)) + vec2<f32>(x_1775.z, x_1775.w));
        let x_1778 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1777.x, x_1777.y, x_1778.z, x_1778.w);
      } else {
        let x_1781 : i32 = u_xlati23;
        u_xlatb23.x = (x_1781 == 1i);
        let x_1785 : bool = u_xlatb23.x;
        u_xlati23 = select(0i, 1i, x_1785);
        let x_1787 : i32 = u_xlati23;
        if ((x_1787 != 0i)) {
          let x_1791 : vec3<f32> = vs_INTERP7;
          let x_1793 : i32 = u_xlati49;
          let x_1796 : i32 = u_xlati49;
          let x_1800 : vec4<f32> = x_885.x_AdditionalLightsWorldToLights[((x_1793 + 1i) / 4i)][((x_1796 + 1i) % 4i)];
          let x_1802 : vec2<f32> = (vec2<f32>(x_1791.y, x_1791.y) * vec2<f32>(x_1800.x, x_1800.y));
          let x_1803 : vec3<f32> = u_xlat23;
          u_xlat23 = vec3<f32>(x_1802.x, x_1802.y, x_1803.z);
          let x_1805 : i32 = u_xlati49;
          let x_1807 : i32 = u_xlati49;
          let x_1810 : vec4<f32> = x_885.x_AdditionalLightsWorldToLights[(x_1805 / 4i)][(x_1807 % 4i)];
          let x_1812 : vec3<f32> = vs_INTERP7;
          let x_1815 : vec3<f32> = u_xlat23;
          let x_1817 : vec2<f32> = ((vec2<f32>(x_1810.x, x_1810.y) * vec2<f32>(x_1812.x, x_1812.x)) + vec2<f32>(x_1815.x, x_1815.y));
          let x_1818 : vec3<f32> = u_xlat23;
          u_xlat23 = vec3<f32>(x_1817.x, x_1817.y, x_1818.z);
          let x_1820 : i32 = u_xlati49;
          let x_1823 : i32 = u_xlati49;
          let x_1827 : vec4<f32> = x_885.x_AdditionalLightsWorldToLights[((x_1820 + 2i) / 4i)][((x_1823 + 2i) % 4i)];
          let x_1829 : vec3<f32> = vs_INTERP7;
          let x_1832 : vec3<f32> = u_xlat23;
          let x_1834 : vec2<f32> = ((vec2<f32>(x_1827.x, x_1827.y) * vec2<f32>(x_1829.z, x_1829.z)) + vec2<f32>(x_1832.x, x_1832.y));
          let x_1835 : vec3<f32> = u_xlat23;
          u_xlat23 = vec3<f32>(x_1834.x, x_1834.y, x_1835.z);
          let x_1837 : vec3<f32> = u_xlat23;
          let x_1839 : i32 = u_xlati49;
          let x_1842 : i32 = u_xlati49;
          let x_1846 : vec4<f32> = x_885.x_AdditionalLightsWorldToLights[((x_1839 + 3i) / 4i)][((x_1842 + 3i) % 4i)];
          let x_1848 : vec2<f32> = (vec2<f32>(x_1837.x, x_1837.y) + vec2<f32>(x_1846.x, x_1846.y));
          let x_1849 : vec3<f32> = u_xlat23;
          u_xlat23 = vec3<f32>(x_1848.x, x_1848.y, x_1849.z);
          let x_1851 : vec3<f32> = u_xlat23;
          let x_1854 : vec2<f32> = ((vec2<f32>(x_1851.x, x_1851.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1855 : vec3<f32> = u_xlat23;
          u_xlat23 = vec3<f32>(x_1854.x, x_1854.y, x_1855.z);
          let x_1857 : vec3<f32> = u_xlat23;
          let x_1859 : vec2<f32> = fract(vec2<f32>(x_1857.x, x_1857.y));
          let x_1860 : vec3<f32> = u_xlat23;
          u_xlat23 = vec3<f32>(x_1859.x, x_1859.y, x_1860.z);
          let x_1862 : i32 = u_xlati45;
          let x_1864 : vec4<f32> = x_885.x_AdditionalLightsCookieAtlasUVRects[x_1862];
          let x_1866 : vec3<f32> = u_xlat23;
          let x_1869 : i32 = u_xlati45;
          let x_1871 : vec4<f32> = x_885.x_AdditionalLightsCookieAtlasUVRects[x_1869];
          let x_1873 : vec2<f32> = ((vec2<f32>(x_1864.x, x_1864.y) * vec2<f32>(x_1866.x, x_1866.y)) + vec2<f32>(x_1871.z, x_1871.w));
          let x_1874 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1873.x, x_1873.y, x_1874.z, x_1874.w);
        } else {
          let x_1878 : vec3<f32> = vs_INTERP7;
          let x_1880 : i32 = u_xlati49;
          let x_1883 : i32 = u_xlati49;
          let x_1887 : vec4<f32> = x_885.x_AdditionalLightsWorldToLights[((x_1880 + 1i) / 4i)][((x_1883 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1878.y, x_1878.y, x_1878.y, x_1878.y) * x_1887);
          let x_1889 : i32 = u_xlati49;
          let x_1891 : i32 = u_xlati49;
          let x_1894 : vec4<f32> = x_885.x_AdditionalLightsWorldToLights[(x_1889 / 4i)][(x_1891 % 4i)];
          let x_1895 : vec3<f32> = vs_INTERP7;
          let x_1898 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1894 * vec4<f32>(x_1895.x, x_1895.x, x_1895.x, x_1895.x)) + x_1898);
          let x_1900 : i32 = u_xlati49;
          let x_1903 : i32 = u_xlati49;
          let x_1907 : vec4<f32> = x_885.x_AdditionalLightsWorldToLights[((x_1900 + 2i) / 4i)][((x_1903 + 2i) % 4i)];
          let x_1908 : vec3<f32> = vs_INTERP7;
          let x_1911 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1907 * vec4<f32>(x_1908.z, x_1908.z, x_1908.z, x_1908.z)) + x_1911);
          let x_1913 : vec4<f32> = u_xlat12;
          let x_1914 : i32 = u_xlati49;
          let x_1917 : i32 = u_xlati49;
          let x_1921 : vec4<f32> = x_885.x_AdditionalLightsWorldToLights[((x_1914 + 3i) / 4i)][((x_1917 + 3i) % 4i)];
          u_xlat12 = (x_1913 + x_1921);
          let x_1923 : vec4<f32> = u_xlat12;
          let x_1925 : vec4<f32> = u_xlat12;
          u_xlat23 = (vec3<f32>(x_1923.x, x_1923.y, x_1923.z) / vec3<f32>(x_1925.w, x_1925.w, x_1925.w));
          let x_1929 : vec3<f32> = u_xlat23;
          let x_1930 : vec3<f32> = u_xlat23;
          u_xlat37 = dot(x_1929, x_1930);
          let x_1932 : f32 = u_xlat37;
          u_xlat37 = inverseSqrt(x_1932);
          let x_1934 : vec3<f32> = u_xlat23;
          let x_1935 : f32 = u_xlat37;
          u_xlat23 = (x_1934 * vec3<f32>(x_1935, x_1935, x_1935));
          let x_1938 : vec3<f32> = u_xlat23;
          u_xlat37 = dot(abs(x_1938), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1942 : f32 = u_xlat37;
          u_xlat37 = max(x_1942, 0.00000099999999747524f);
          let x_1945 : f32 = u_xlat37;
          u_xlat37 = (1.0f / x_1945);
          let x_1947 : vec3<f32> = u_xlat23;
          let x_1949 : f32 = u_xlat37;
          let x_1951 : vec3<f32> = (vec3<f32>(x_1947.z, x_1947.x, x_1947.y) * vec3<f32>(x_1949, x_1949, x_1949));
          let x_1952 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1951.x, x_1951.y, x_1951.z, x_1952.w);
          let x_1955 : f32 = u_xlat12.x;
          u_xlat12.x = -(x_1955);
          let x_1959 : f32 = u_xlat12.x;
          u_xlat12.x = clamp(x_1959, 0.0f, 1.0f);
          let x_1963 : vec4<f32> = u_xlat12;
          let x_1965 : vec4<bool> = (vec4<f32>(x_1963.y, x_1963.z, x_1963.y, x_1963.y) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb25 = vec2<bool>(x_1965.x, x_1965.y);
          let x_1969 : vec4<f32> = u_xlat12;
          hlslcc_movcTemp = x_1969;
          let x_1971 : bool = u_xlatb25.x;
          if (x_1971) {
            let x_1976 : f32 = u_xlat12.x;
            x_1972 = x_1976;
          } else {
            let x_1979 : f32 = u_xlat12.x;
            x_1972 = -(x_1979);
          }
          let x_1981 : f32 = x_1972;
          hlslcc_movcTemp.x = x_1981;
          let x_1984 : bool = u_xlatb25.y;
          if (x_1984) {
            let x_1989 : f32 = u_xlat12.x;
            x_1985 = x_1989;
          } else {
            let x_1992 : f32 = u_xlat12.x;
            x_1985 = -(x_1992);
          }
          let x_1994 : f32 = x_1985;
          hlslcc_movcTemp.y = x_1994;
          let x_1996 : vec4<f32> = hlslcc_movcTemp;
          u_xlat12 = x_1996;
          let x_1997 : vec3<f32> = u_xlat23;
          let x_1999 : f32 = u_xlat37;
          let x_2002 : vec4<f32> = u_xlat12;
          let x_2004 : vec2<f32> = ((vec2<f32>(x_1997.x, x_1997.y) * vec2<f32>(x_1999, x_1999)) + vec2<f32>(x_2002.x, x_2002.y));
          let x_2005 : vec3<f32> = u_xlat23;
          u_xlat23 = vec3<f32>(x_2004.x, x_2004.y, x_2005.z);
          let x_2007 : vec3<f32> = u_xlat23;
          let x_2010 : vec2<f32> = ((vec2<f32>(x_2007.x, x_2007.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2011 : vec3<f32> = u_xlat23;
          u_xlat23 = vec3<f32>(x_2010.x, x_2010.y, x_2011.z);
          let x_2013 : vec3<f32> = u_xlat23;
          let x_2017 : vec2<f32> = clamp(vec2<f32>(x_2013.x, x_2013.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2018 : vec3<f32> = u_xlat23;
          u_xlat23 = vec3<f32>(x_2017.x, x_2017.y, x_2018.z);
          let x_2020 : i32 = u_xlati45;
          let x_2022 : vec4<f32> = x_885.x_AdditionalLightsCookieAtlasUVRects[x_2020];
          let x_2024 : vec3<f32> = u_xlat23;
          let x_2027 : i32 = u_xlati45;
          let x_2029 : vec4<f32> = x_885.x_AdditionalLightsCookieAtlasUVRects[x_2027];
          let x_2031 : vec2<f32> = ((vec2<f32>(x_2022.x, x_2022.y) * vec2<f32>(x_2024.x, x_2024.y)) + vec2<f32>(x_2029.z, x_2029.w));
          let x_2032 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2031.x, x_2031.y, x_2032.z, x_2032.w);
        }
      }
      let x_2039 : vec4<f32> = u_xlat11;
      let x_2041 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_2039.x, x_2039.y), 0.0f);
      u_xlat11 = x_2041;
      let x_2043 : bool = u_xlatb31.y;
      if (x_2043) {
        let x_2048 : f32 = u_xlat11.w;
        x_2044 = x_2048;
      } else {
        let x_2051 : f32 = u_xlat11.x;
        x_2044 = x_2051;
      }
      let x_2052 : f32 = x_2044;
      u_xlat23.x = x_2052;
      let x_2055 : bool = u_xlatb31.x;
      if (x_2055) {
        let x_2059 : vec4<f32> = u_xlat11;
        x_2056 = vec3<f32>(x_2059.x, x_2059.y, x_2059.z);
      } else {
        let x_2062 : vec3<f32> = u_xlat23;
        x_2056 = vec3<f32>(x_2062.x, x_2062.x, x_2062.x);
      }
      let x_2064 : vec3<f32> = x_2056;
      u_xlat23 = x_2064;
    } else {
      u_xlat23.x = 1.0f;
      u_xlat23.y = 1.0f;
      u_xlat23.z = 1.0f;
    }
    let x_2069 : vec3<f32> = u_xlat23;
    let x_2070 : i32 = u_xlati45;
    let x_2072 : vec4<f32> = x_1355.x_AdditionalLightsColor[x_2070];
    u_xlat23 = (x_2069 * vec3<f32>(x_2072.x, x_2072.y, x_2072.z));
    let x_2075 : f32 = u_xlat46;
    let x_2077 : f32 = u_xlat10.x;
    u_xlat45 = (x_2075 * x_2077);
    let x_2079 : vec3<f32> = u_xlat13;
    let x_2080 : vec3<f32> = u_xlat22;
    u_xlat46 = dot(x_2079, x_2080);
    let x_2082 : f32 = u_xlat46;
    u_xlat46 = clamp(x_2082, 0.0f, 1.0f);
    let x_2084 : f32 = u_xlat45;
    let x_2085 : f32 = u_xlat46;
    u_xlat45 = (x_2084 * x_2085);
    let x_2087 : f32 = u_xlat45;
    let x_2089 : vec3<f32> = u_xlat23;
    let x_2090 : vec3<f32> = (vec3<f32>(x_2087, x_2087, x_2087) * x_2089);
    let x_2091 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2090.x, x_2090.y, x_2090.z, x_2091.w);
    let x_2093 : vec3<f32> = u_xlat21;
    let x_2094 : f32 = u_xlat9;
    let x_2097 : vec4<f32> = u_xlat1;
    u_xlat21 = ((x_2093 * vec3<f32>(x_2094, x_2094, x_2094)) + vec3<f32>(x_2097.x, x_2097.y, x_2097.z));
    let x_2100 : vec3<f32> = u_xlat21;
    let x_2101 : vec3<f32> = u_xlat21;
    u_xlat45 = dot(x_2100, x_2101);
    let x_2103 : f32 = u_xlat45;
    u_xlat45 = max(x_2103, 1.17549435e-38f);
    let x_2105 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_2105);
    let x_2107 : f32 = u_xlat45;
    let x_2109 : vec3<f32> = u_xlat21;
    u_xlat21 = (vec3<f32>(x_2107, x_2107, x_2107) * x_2109);
    let x_2111 : vec3<f32> = u_xlat13;
    let x_2112 : vec3<f32> = u_xlat21;
    u_xlat45 = dot(x_2111, x_2112);
    let x_2114 : f32 = u_xlat45;
    u_xlat45 = clamp(x_2114, 0.0f, 1.0f);
    let x_2116 : vec3<f32> = u_xlat22;
    let x_2117 : vec3<f32> = u_xlat21;
    u_xlat46 = dot(x_2116, x_2117);
    let x_2119 : f32 = u_xlat46;
    u_xlat46 = clamp(x_2119, 0.0f, 1.0f);
    let x_2121 : f32 = u_xlat45;
    let x_2122 : f32 = u_xlat45;
    u_xlat45 = (x_2121 * x_2122);
    let x_2124 : f32 = u_xlat45;
    let x_2126 : f32 = u_xlat8.x;
    u_xlat45 = ((x_2124 * x_2126) + 1.00001001358032226562f);
    let x_2129 : f32 = u_xlat46;
    let x_2130 : f32 = u_xlat46;
    u_xlat46 = (x_2129 * x_2130);
    let x_2132 : f32 = u_xlat45;
    let x_2133 : f32 = u_xlat45;
    u_xlat45 = (x_2132 * x_2133);
    let x_2135 : f32 = u_xlat46;
    u_xlat46 = max(x_2135, 0.10000000149011611938f);
    let x_2137 : f32 = u_xlat45;
    let x_2138 : f32 = u_xlat46;
    u_xlat45 = (x_2137 * x_2138);
    let x_2141 : f32 = u_xlat5.x;
    let x_2142 : f32 = u_xlat45;
    u_xlat45 = (x_2141 * x_2142);
    let x_2144 : f32 = u_xlat43;
    let x_2145 : f32 = u_xlat45;
    u_xlat45 = (x_2144 / x_2145);
    let x_2147 : vec3<f32> = u_xlat2;
    let x_2148 : f32 = u_xlat45;
    let x_2151 : vec3<f32> = u_xlat3;
    u_xlat21 = ((x_2147 * vec3<f32>(x_2148, x_2148, x_2148)) + x_2151);
    let x_2153 : vec3<f32> = u_xlat21;
    let x_2154 : vec4<f32> = u_xlat10;
    let x_2157 : vec4<f32> = u_xlat7;
    let x_2159 : vec3<f32> = ((x_2153 * vec3<f32>(x_2154.x, x_2154.y, x_2154.z)) + vec3<f32>(x_2157.x, x_2157.y, x_2157.z));
    let x_2160 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2159.x, x_2159.y, x_2159.z, x_2160.w);

    continuing {
      let x_2162 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2162 + bitcast<u32>(1i));
    }
  }
  let x_2164 : vec4<f32> = u_xlat4;
  let x_2166 : f32 = u_xlat18;
  let x_2169 : vec4<f32> = u_xlat6;
  let x_2171 : vec3<f32> = ((vec3<f32>(x_2164.x, x_2164.y, x_2164.z) * vec3<f32>(x_2166, x_2166, x_2166)) + vec3<f32>(x_2169.x, x_2169.y, x_2169.z));
  let x_2172 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2171.x, x_2171.y, x_2171.z, x_2172.w);
  let x_2174 : vec4<f32> = u_xlat7;
  let x_2176 : vec4<f32> = u_xlat0;
  let x_2178 : vec3<f32> = (vec3<f32>(x_2174.x, x_2174.y, x_2174.z) + vec3<f32>(x_2176.x, x_2176.y, x_2176.z));
  let x_2179 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2178.x, x_2178.y, x_2178.z, x_2179.w);
  let x_2182 : f32 = u_xlat41;
  let x_2183 : f32 = u_xlat41;
  u_xlat39 = (x_2182 * -(x_2183));
  let x_2186 : f32 = u_xlat39;
  u_xlat39 = exp2(x_2186);
  let x_2188 : vec4<f32> = u_xlat0;
  let x_2191 : vec4<f32> = x_135.unity_FogColor;
  let x_2194 : vec3<f32> = (vec3<f32>(x_2188.x, x_2188.y, x_2188.z) + -(vec3<f32>(x_2191.x, x_2191.y, x_2191.z)));
  let x_2195 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2194.x, x_2194.y, x_2194.z, x_2195.w);
  let x_2199 : f32 = u_xlat39;
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
fn main(@location(5) vs_INTERP8_param : vec3<f32>, @location(2) vs_INTERP4_param : vec4<f32>, @location(3) vs_INTERP5_param : vec4<f32>, @location(4) vs_INTERP7_param : vec3<f32>, @location(0) vs_INTERP0_param : vec2<f32>, @location(1) vs_INTERP3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP7 = vs_INTERP7_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


