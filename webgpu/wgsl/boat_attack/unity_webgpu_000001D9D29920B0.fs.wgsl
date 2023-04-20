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

@group(1) @binding(3) var<uniform> x_682 : LightShadows;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlatb6 : vec4<bool>;

var<private> u_xlatu13 : u32;

var<private> u_xlati13 : i32;

var<private> u_xlat44 : f32;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb26 : bool;

var<private> u_xlatb39 : bool;

var<private> u_xlat39 : f32;

@group(1) @binding(4) var<uniform> x_1071 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat45 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat21 : vec3<f32>;

var<private> u_xlatu40 : u32;

var<private> u_xlatu32 : u32;

var<private> u_xlati45 : i32;

var<private> u_xlat32 : vec2<f32>;

var<private> u_xlati32 : i32;

@group(1) @binding(1) var<uniform> x_1522 : AdditionalLights;

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

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb23 : bool;

var<private> u_xlati10 : i32;

var<private> u_xlati23 : i32;

var<private> u_xlati36 : i32;

var<private> u_xlat12 : vec3<f32>;

var<private> u_xlatb37 : vec2<bool>;

var<private> u_xlat37 : vec2<f32>;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_LinearClamp : sampler;

var<private> u_xlat49 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb32 : bool;

var<private> u_xlatu41 : u32;

fn main_1() {
  var x_639 : f32;
  var x_652 : f32;
  var x_664 : f32;
  var txVec0 : vec3<f32>;
  var x_1023 : f32;
  var x_1154 : f32;
  var x_1165 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1656 : f32;
  var x_1668 : f32;
  var txVec1 : vec3<f32>;
  var x_2131 : f32;
  var x_2144 : f32;
  var x_2202 : f32;
  var x_2213 : vec3<f32>;
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
  let x_610 : f32 = x_135.unity_OrthoParams.w;
  u_xlatb13.x = (x_610 == 0.0f);
  let x_613 : vec3<f32> = vs_INTERP7;
  let x_617 : vec3<f32> = x_135.x_WorldSpaceCameraPos;
  let x_618 : vec3<f32> = (-(x_613) + x_617);
  let x_619 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_618.x, x_618.y, x_618.z, x_619.w);
  let x_622 : vec4<f32> = u_xlat1;
  let x_624 : vec4<f32> = u_xlat1;
  u_xlat26 = dot(vec3<f32>(x_622.x, x_622.y, x_622.z), vec3<f32>(x_624.x, x_624.y, x_624.z));
  let x_627 : f32 = u_xlat26;
  u_xlat26 = inverseSqrt(x_627);
  let x_629 : f32 = u_xlat26;
  let x_631 : vec4<f32> = u_xlat1;
  let x_633 : vec3<f32> = (vec3<f32>(x_629, x_629, x_629) * vec3<f32>(x_631.x, x_631.y, x_631.z));
  let x_634 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_633.x, x_633.y, x_633.z, x_634.w);
  let x_637 : bool = u_xlatb13.x;
  if (x_637) {
    let x_643 : f32 = u_xlat1.x;
    x_639 = x_643;
  } else {
    let x_647 : f32 = x_135.unity_MatrixV[0i].z;
    x_639 = x_647;
  }
  let x_648 : f32 = x_639;
  u_xlat5.x = x_648;
  let x_651 : bool = u_xlatb13.x;
  if (x_651) {
    let x_656 : f32 = u_xlat1.y;
    x_652 = x_656;
  } else {
    let x_659 : f32 = x_135.unity_MatrixV[1i].z;
    x_652 = x_659;
  }
  let x_660 : f32 = x_652;
  u_xlat5.y = x_660;
  let x_663 : bool = u_xlatb13.x;
  if (x_663) {
    let x_668 : f32 = u_xlat1.z;
    x_664 = x_668;
  } else {
    let x_671 : f32 = x_135.unity_MatrixV[2i].z;
    x_664 = x_671;
  }
  let x_672 : f32 = x_664;
  u_xlat5.z = x_672;
  let x_674 : vec3<f32> = vs_INTERP7;
  let x_684 : vec4<f32> = x_682.x_CascadeShadowSplitSpheres0;
  u_xlat13 = (x_674 + -(vec3<f32>(x_684.x, x_684.y, x_684.z)));
  let x_688 : vec3<f32> = vs_INTERP7;
  let x_690 : vec4<f32> = x_682.x_CascadeShadowSplitSpheres1;
  let x_693 : vec3<f32> = (x_688 + -(vec3<f32>(x_690.x, x_690.y, x_690.z)));
  let x_694 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_693.x, x_693.y, x_693.z, x_694.w);
  let x_696 : vec3<f32> = vs_INTERP7;
  let x_698 : vec4<f32> = x_682.x_CascadeShadowSplitSpheres2;
  let x_701 : vec3<f32> = (x_696 + -(vec3<f32>(x_698.x, x_698.y, x_698.z)));
  let x_702 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_701.x, x_701.y, x_701.z, x_702.w);
  let x_704 : vec3<f32> = vs_INTERP7;
  let x_706 : vec4<f32> = x_682.x_CascadeShadowSplitSpheres3;
  u_xlat20 = (x_704 + -(vec3<f32>(x_706.x, x_706.y, x_706.z)));
  let x_711 : vec3<f32> = u_xlat13;
  let x_712 : vec3<f32> = u_xlat13;
  u_xlat8.x = dot(x_711, x_712);
  let x_715 : vec4<f32> = u_xlat1;
  let x_717 : vec4<f32> = u_xlat1;
  u_xlat8.y = dot(vec3<f32>(x_715.x, x_715.y, x_715.z), vec3<f32>(x_717.x, x_717.y, x_717.z));
  let x_721 : vec4<f32> = u_xlat6;
  let x_723 : vec4<f32> = u_xlat6;
  u_xlat8.z = dot(vec3<f32>(x_721.x, x_721.y, x_721.z), vec3<f32>(x_723.x, x_723.y, x_723.z));
  let x_727 : vec3<f32> = u_xlat20;
  let x_728 : vec3<f32> = u_xlat20;
  u_xlat8.w = dot(x_727, x_728);
  let x_734 : vec4<f32> = u_xlat8;
  let x_736 : vec4<f32> = x_682.x_CascadeShadowSplitSphereRadii;
  u_xlatb6 = (x_734 < x_736);
  let x_739 : bool = u_xlatb6.x;
  u_xlat8.x = select(0.0f, 1.0f, x_739);
  let x_743 : bool = u_xlatb6.y;
  u_xlat8.y = select(0.0f, 1.0f, x_743);
  let x_747 : bool = u_xlatb6.z;
  u_xlat8.z = select(0.0f, 1.0f, x_747);
  let x_751 : bool = u_xlatb6.w;
  u_xlat8.w = select(0.0f, 1.0f, x_751);
  let x_755 : bool = u_xlatb6.x;
  u_xlat13.x = select(-0.0f, -1.0f, x_755);
  let x_760 : bool = u_xlatb6.y;
  u_xlat13.y = select(-0.0f, -1.0f, x_760);
  let x_764 : bool = u_xlatb6.z;
  u_xlat13.z = select(-0.0f, -1.0f, x_764);
  let x_767 : vec3<f32> = u_xlat13;
  let x_768 : vec4<f32> = u_xlat8;
  u_xlat13 = (x_767 + vec3<f32>(x_768.y, x_768.z, x_768.w));
  let x_771 : vec3<f32> = u_xlat13;
  let x_773 : vec3<f32> = max(x_771, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_774 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_774.x, x_773.x, x_773.y, x_773.z);
  let x_776 : vec4<f32> = u_xlat8;
  u_xlat13.x = dot(x_776, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_781 : f32 = u_xlat13.x;
  u_xlat13.x = (-(x_781) + 4.0f);
  let x_788 : f32 = u_xlat13.x;
  u_xlatu13 = u32(x_788);
  let x_792 : u32 = u_xlatu13;
  u_xlati13 = (bitcast<i32>(x_792) << bitcast<u32>(2i));
  let x_795 : vec3<f32> = vs_INTERP7;
  let x_797 : i32 = u_xlati13;
  let x_800 : i32 = u_xlati13;
  let x_804 : vec4<f32> = x_682.x_MainLightWorldToShadow[((x_797 + 1i) / 4i)][((x_800 + 1i) % 4i)];
  let x_806 : vec3<f32> = (vec3<f32>(x_795.y, x_795.y, x_795.y) * vec3<f32>(x_804.x, x_804.y, x_804.z));
  let x_807 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_806.x, x_806.y, x_806.z, x_807.w);
  let x_809 : i32 = u_xlati13;
  let x_811 : i32 = u_xlati13;
  let x_814 : vec4<f32> = x_682.x_MainLightWorldToShadow[(x_809 / 4i)][(x_811 % 4i)];
  let x_816 : vec3<f32> = vs_INTERP7;
  let x_819 : vec4<f32> = u_xlat1;
  let x_821 : vec3<f32> = ((vec3<f32>(x_814.x, x_814.y, x_814.z) * vec3<f32>(x_816.x, x_816.x, x_816.x)) + vec3<f32>(x_819.x, x_819.y, x_819.z));
  let x_822 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_821.x, x_821.y, x_821.z, x_822.w);
  let x_824 : i32 = u_xlati13;
  let x_827 : i32 = u_xlati13;
  let x_831 : vec4<f32> = x_682.x_MainLightWorldToShadow[((x_824 + 2i) / 4i)][((x_827 + 2i) % 4i)];
  let x_833 : vec3<f32> = vs_INTERP7;
  let x_836 : vec4<f32> = u_xlat1;
  let x_838 : vec3<f32> = ((vec3<f32>(x_831.x, x_831.y, x_831.z) * vec3<f32>(x_833.z, x_833.z, x_833.z)) + vec3<f32>(x_836.x, x_836.y, x_836.z));
  let x_839 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_838.x, x_838.y, x_838.z, x_839.w);
  let x_841 : vec4<f32> = u_xlat1;
  let x_843 : i32 = u_xlati13;
  let x_846 : i32 = u_xlati13;
  let x_850 : vec4<f32> = x_682.x_MainLightWorldToShadow[((x_843 + 3i) / 4i)][((x_846 + 3i) % 4i)];
  u_xlat13 = (vec3<f32>(x_841.x, x_841.y, x_841.z) + vec3<f32>(x_850.x, x_850.y, x_850.z));
  u_xlat4.w = 1.0f;
  let x_856 : vec4<f32> = x_48.unity_SHAr;
  let x_857 : vec4<f32> = u_xlat4;
  u_xlat1.x = dot(x_856, x_857);
  let x_862 : vec4<f32> = x_48.unity_SHAg;
  let x_863 : vec4<f32> = u_xlat4;
  u_xlat1.y = dot(x_862, x_863);
  let x_868 : vec4<f32> = x_48.unity_SHAb;
  let x_869 : vec4<f32> = u_xlat4;
  u_xlat1.z = dot(x_868, x_869);
  let x_872 : vec4<f32> = u_xlat4;
  let x_874 : vec4<f32> = u_xlat4;
  u_xlat6 = (vec4<f32>(x_872.y, x_872.z, x_872.z, x_872.x) * vec4<f32>(x_874.x, x_874.y, x_874.z, x_874.z));
  let x_879 : vec4<f32> = x_48.unity_SHBr;
  let x_880 : vec4<f32> = u_xlat6;
  u_xlat8.x = dot(x_879, x_880);
  let x_885 : vec4<f32> = x_48.unity_SHBg;
  let x_886 : vec4<f32> = u_xlat6;
  u_xlat8.y = dot(x_885, x_886);
  let x_891 : vec4<f32> = x_48.unity_SHBb;
  let x_892 : vec4<f32> = u_xlat6;
  u_xlat8.z = dot(x_891, x_892);
  let x_896 : f32 = u_xlat4.y;
  let x_898 : f32 = u_xlat4.y;
  u_xlat41 = (x_896 * x_898);
  let x_901 : f32 = u_xlat4.x;
  let x_903 : f32 = u_xlat4.x;
  let x_905 : f32 = u_xlat41;
  u_xlat41 = ((x_901 * x_903) + -(x_905));
  let x_910 : vec4<f32> = x_48.unity_SHC;
  let x_912 : f32 = u_xlat41;
  let x_915 : vec4<f32> = u_xlat8;
  let x_917 : vec3<f32> = ((vec3<f32>(x_910.x, x_910.y, x_910.z) * vec3<f32>(x_912, x_912, x_912)) + vec3<f32>(x_915.x, x_915.y, x_915.z));
  let x_918 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_917.x, x_917.y, x_917.z, x_918.w);
  let x_920 : vec4<f32> = u_xlat1;
  let x_922 : vec4<f32> = u_xlat6;
  let x_924 : vec3<f32> = (vec3<f32>(x_920.x, x_920.y, x_920.z) + vec3<f32>(x_922.x, x_922.y, x_922.z));
  let x_925 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_924.x, x_924.y, x_924.z, x_925.w);
  let x_927 : vec4<f32> = u_xlat1;
  let x_929 : vec3<f32> = max(vec3<f32>(x_927.x, x_927.y, x_927.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_930 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_929.x, x_929.y, x_929.z, x_930.w);
  let x_932 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_932 * vec3<f32>(0.86399996280670166016f, 0.86399996280670166016f, 0.86399996280670166016f));
  let x_936 : vec4<f32> = u_xlat1;
  let x_938 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_936.w, x_936.w, x_936.w) * x_938) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_943 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_943 * vec3<f32>(0.10000000149011611938f, 0.10000000149011611938f, 0.10000000149011611938f)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_950 : f32 = u_xlat0.x;
  u_xlat40 = (-(x_950) + 1.0f);
  let x_953 : f32 = u_xlat40;
  let x_954 : f32 = u_xlat40;
  u_xlat41 = (x_953 * x_954);
  let x_956 : f32 = u_xlat41;
  u_xlat41 = max(x_956, 0.0078125f);
  let x_959 : f32 = u_xlat41;
  let x_960 : f32 = u_xlat41;
  u_xlat42 = (x_959 * x_960);
  let x_963 : f32 = u_xlat0.x;
  u_xlat0.x = (x_963 + 0.13600003719329833984f);
  let x_968 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_968, 1.0f);
  let x_971 : f32 = u_xlat41;
  u_xlat43 = ((x_971 * 4.0f) + 2.0f);
  let x_976 : f32 = u_xlat7.x;
  u_xlat44 = min(x_976, 1.0f);
  let x_980 : vec3<f32> = u_xlat13;
  let x_981 : vec2<f32> = vec2<f32>(x_980.x, x_980.y);
  let x_983 : f32 = u_xlat13.z;
  txVec0 = vec3<f32>(x_981.x, x_981.y, x_983);
  let x_995 : vec3<f32> = txVec0;
  let x_997 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_995.xy, x_995.z);
  u_xlat13.x = x_997;
  let x_1000 : f32 = x_682.x_MainLightShadowParams.x;
  u_xlat26 = (-(x_1000) + 1.0f);
  let x_1004 : f32 = u_xlat13.x;
  let x_1006 : f32 = x_682.x_MainLightShadowParams.x;
  let x_1008 : f32 = u_xlat26;
  u_xlat13.x = ((x_1004 * x_1006) + x_1008);
  let x_1013 : f32 = u_xlat13.z;
  u_xlatb26 = (0.0f >= x_1013);
  let x_1017 : f32 = u_xlat13.z;
  u_xlatb39 = (x_1017 >= 1.0f);
  let x_1019 : bool = u_xlatb39;
  let x_1020 : bool = u_xlatb26;
  u_xlatb26 = (x_1019 | x_1020);
  let x_1022 : bool = u_xlatb26;
  if (x_1022) {
    x_1023 = 1.0f;
  } else {
    let x_1028 : f32 = u_xlat13.x;
    x_1023 = x_1028;
  }
  let x_1029 : f32 = x_1023;
  u_xlat13.x = x_1029;
  let x_1031 : vec3<f32> = vs_INTERP7;
  let x_1033 : vec3<f32> = x_135.x_WorldSpaceCameraPos;
  let x_1035 : vec3<f32> = (x_1031 + -(x_1033));
  let x_1036 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1035.x, x_1035.y, x_1035.z, x_1036.w);
  let x_1038 : vec4<f32> = u_xlat6;
  let x_1040 : vec4<f32> = u_xlat6;
  u_xlat26 = dot(vec3<f32>(x_1038.x, x_1038.y, x_1038.z), vec3<f32>(x_1040.x, x_1040.y, x_1040.z));
  let x_1044 : f32 = u_xlat26;
  let x_1046 : f32 = x_682.x_MainLightShadowParams.z;
  let x_1049 : f32 = x_682.x_MainLightShadowParams.w;
  u_xlat39 = ((x_1044 * x_1046) + x_1049);
  let x_1051 : f32 = u_xlat39;
  u_xlat39 = clamp(x_1051, 0.0f, 1.0f);
  let x_1054 : f32 = u_xlat13.x;
  u_xlat6.x = (-(x_1054) + 1.0f);
  let x_1058 : f32 = u_xlat39;
  let x_1060 : f32 = u_xlat6.x;
  let x_1063 : f32 = u_xlat13.x;
  u_xlat13.x = ((x_1058 * x_1060) + x_1063);
  let x_1073 : f32 = x_1071.x_MainLightCookieTextureFormat;
  u_xlatb39 = !((x_1073 == -1.0f));
  let x_1075 : bool = u_xlatb39;
  if (x_1075) {
    let x_1078 : vec3<f32> = vs_INTERP7;
    let x_1081 : vec4<f32> = x_1071.x_MainLightWorldToLight[1i];
    let x_1083 : vec2<f32> = (vec2<f32>(x_1078.y, x_1078.y) * vec2<f32>(x_1081.x, x_1081.y));
    let x_1084 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1083.x, x_1083.y, x_1084.z, x_1084.w);
    let x_1087 : vec4<f32> = x_1071.x_MainLightWorldToLight[0i];
    let x_1089 : vec3<f32> = vs_INTERP7;
    let x_1092 : vec4<f32> = u_xlat6;
    let x_1094 : vec2<f32> = ((vec2<f32>(x_1087.x, x_1087.y) * vec2<f32>(x_1089.x, x_1089.x)) + vec2<f32>(x_1092.x, x_1092.y));
    let x_1095 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1094.x, x_1094.y, x_1095.z, x_1095.w);
    let x_1098 : vec4<f32> = x_1071.x_MainLightWorldToLight[2i];
    let x_1100 : vec3<f32> = vs_INTERP7;
    let x_1103 : vec4<f32> = u_xlat6;
    let x_1105 : vec2<f32> = ((vec2<f32>(x_1098.x, x_1098.y) * vec2<f32>(x_1100.z, x_1100.z)) + vec2<f32>(x_1103.x, x_1103.y));
    let x_1106 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1105.x, x_1105.y, x_1106.z, x_1106.w);
    let x_1108 : vec4<f32> = u_xlat6;
    let x_1111 : vec4<f32> = x_1071.x_MainLightWorldToLight[3i];
    let x_1113 : vec2<f32> = (vec2<f32>(x_1108.x, x_1108.y) + vec2<f32>(x_1111.x, x_1111.y));
    let x_1114 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1113.x, x_1113.y, x_1114.z, x_1114.w);
    let x_1116 : vec4<f32> = u_xlat6;
    let x_1121 : vec2<f32> = ((vec2<f32>(x_1116.x, x_1116.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1122 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1121.x, x_1121.y, x_1122.z, x_1122.w);
    let x_1129 : vec4<f32> = u_xlat6;
    let x_1132 : f32 = x_135.x_GlobalMipBias.x;
    let x_1133 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1129.x, x_1129.y), x_1132);
    u_xlat6 = x_1133;
    let x_1136 : f32 = x_1071.x_MainLightCookieTextureFormat;
    let x_1138 : f32 = x_1071.x_MainLightCookieTextureFormat;
    let x_1140 : f32 = x_1071.x_MainLightCookieTextureFormat;
    let x_1142 : f32 = x_1071.x_MainLightCookieTextureFormat;
    let x_1143 : vec4<f32> = vec4<f32>(x_1136, x_1138, x_1140, x_1142);
    let x_1150 : vec4<bool> = (vec4<f32>(x_1143.x, x_1143.y, x_1143.z, x_1143.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_1150.x, x_1150.y);
    let x_1153 : bool = u_xlatb7.y;
    if (x_1153) {
      let x_1158 : f32 = u_xlat6.w;
      x_1154 = x_1158;
    } else {
      let x_1161 : f32 = u_xlat6.x;
      x_1154 = x_1161;
    }
    let x_1162 : f32 = x_1154;
    u_xlat39 = x_1162;
    let x_1164 : bool = u_xlatb7.x;
    if (x_1164) {
      let x_1168 : vec4<f32> = u_xlat6;
      x_1165 = vec3<f32>(x_1168.x, x_1168.y, x_1168.z);
    } else {
      let x_1171 : f32 = u_xlat39;
      x_1165 = vec3<f32>(x_1171, x_1171, x_1171);
    }
    let x_1173 : vec3<f32> = x_1165;
    let x_1174 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1173.x, x_1173.y, x_1173.z, x_1174.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1180 : vec4<f32> = u_xlat6;
  let x_1183 : vec4<f32> = x_135.x_MainLightColor;
  let x_1185 : vec3<f32> = (vec3<f32>(x_1180.x, x_1180.y, x_1180.z) * vec3<f32>(x_1183.x, x_1183.y, x_1183.z));
  let x_1186 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1185.x, x_1185.y, x_1185.z, x_1186.w);
  let x_1188 : vec3<f32> = u_xlat5;
  let x_1190 : vec4<f32> = u_xlat4;
  u_xlat39 = dot(-(x_1188), vec3<f32>(x_1190.x, x_1190.y, x_1190.z));
  let x_1193 : f32 = u_xlat39;
  let x_1194 : f32 = u_xlat39;
  u_xlat39 = (x_1193 + x_1194);
  let x_1196 : vec4<f32> = u_xlat4;
  let x_1198 : f32 = u_xlat39;
  let x_1202 : vec3<f32> = u_xlat5;
  let x_1204 : vec3<f32> = ((vec3<f32>(x_1196.x, x_1196.y, x_1196.z) * -(vec3<f32>(x_1198, x_1198, x_1198))) + -(x_1202));
  let x_1205 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1204.x, x_1204.y, x_1204.z, x_1205.w);
  let x_1207 : vec4<f32> = u_xlat4;
  let x_1209 : vec3<f32> = u_xlat5;
  u_xlat39 = dot(vec3<f32>(x_1207.x, x_1207.y, x_1207.z), x_1209);
  let x_1211 : f32 = u_xlat39;
  u_xlat39 = clamp(x_1211, 0.0f, 1.0f);
  let x_1213 : f32 = u_xlat39;
  u_xlat39 = (-(x_1213) + 1.0f);
  let x_1216 : f32 = u_xlat39;
  let x_1217 : f32 = u_xlat39;
  u_xlat39 = (x_1216 * x_1217);
  let x_1219 : f32 = u_xlat39;
  let x_1220 : f32 = u_xlat39;
  u_xlat39 = (x_1219 * x_1220);
  let x_1223 : f32 = u_xlat40;
  u_xlat45 = ((-(x_1223) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1229 : f32 = u_xlat40;
  let x_1230 : f32 = u_xlat45;
  u_xlat40 = (x_1229 * x_1230);
  let x_1232 : f32 = u_xlat40;
  u_xlat40 = (x_1232 * 6.0f);
  let x_1243 : vec4<f32> = u_xlat7;
  let x_1245 : f32 = u_xlat40;
  let x_1246 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1243.x, x_1243.y, x_1243.z), x_1245);
  u_xlat7 = x_1246;
  let x_1248 : f32 = u_xlat7.w;
  u_xlat40 = (x_1248 + -1.0f);
  let x_1251 : f32 = x_48.unity_SpecCube0_HDR.w;
  let x_1252 : f32 = u_xlat40;
  u_xlat40 = ((x_1251 * x_1252) + 1.0f);
  let x_1255 : f32 = u_xlat40;
  u_xlat40 = max(x_1255, 0.0f);
  let x_1257 : f32 = u_xlat40;
  u_xlat40 = log2(x_1257);
  let x_1259 : f32 = u_xlat40;
  let x_1261 : f32 = x_48.unity_SpecCube0_HDR.y;
  u_xlat40 = (x_1259 * x_1261);
  let x_1263 : f32 = u_xlat40;
  u_xlat40 = exp2(x_1263);
  let x_1265 : f32 = u_xlat40;
  let x_1267 : f32 = x_48.unity_SpecCube0_HDR.x;
  u_xlat40 = (x_1265 * x_1267);
  let x_1269 : vec4<f32> = u_xlat7;
  let x_1271 : f32 = u_xlat40;
  let x_1273 : vec3<f32> = (vec3<f32>(x_1269.x, x_1269.y, x_1269.z) * vec3<f32>(x_1271, x_1271, x_1271));
  let x_1274 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1273.x, x_1273.y, x_1273.z, x_1274.w);
  let x_1276 : f32 = u_xlat41;
  let x_1278 : f32 = u_xlat41;
  let x_1282 : vec2<f32> = ((vec2<f32>(x_1276, x_1276) * vec2<f32>(x_1278, x_1278)) + vec2<f32>(-1.0f, 1.0f));
  let x_1283 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1282.x, x_1282.y, x_1283.z, x_1283.w);
  let x_1286 : f32 = u_xlat8.y;
  u_xlat40 = (1.0f / x_1286);
  let x_1289 : vec3<f32> = u_xlat2;
  let x_1291 : vec4<f32> = u_xlat0;
  u_xlat21 = (-(x_1289) + vec3<f32>(x_1291.x, x_1291.x, x_1291.x));
  let x_1294 : f32 = u_xlat39;
  let x_1296 : vec3<f32> = u_xlat21;
  let x_1298 : vec3<f32> = u_xlat2;
  u_xlat21 = ((vec3<f32>(x_1294, x_1294, x_1294) * x_1296) + x_1298);
  let x_1300 : f32 = u_xlat40;
  let x_1302 : vec3<f32> = u_xlat21;
  u_xlat21 = (vec3<f32>(x_1300, x_1300, x_1300) * x_1302);
  let x_1304 : vec4<f32> = u_xlat7;
  let x_1306 : vec3<f32> = u_xlat21;
  let x_1307 : vec3<f32> = (vec3<f32>(x_1304.x, x_1304.y, x_1304.z) * x_1306);
  let x_1308 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1307.x, x_1307.y, x_1307.z, x_1308.w);
  let x_1310 : vec4<f32> = u_xlat1;
  let x_1312 : vec3<f32> = u_xlat3;
  let x_1314 : vec4<f32> = u_xlat7;
  let x_1316 : vec3<f32> = ((vec3<f32>(x_1310.x, x_1310.y, x_1310.z) * x_1312) + vec3<f32>(x_1314.x, x_1314.y, x_1314.z));
  let x_1317 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1316.x, x_1316.y, x_1316.z, x_1317.w);
  let x_1320 : f32 = u_xlat13.x;
  let x_1322 : f32 = x_48.unity_LightData.z;
  u_xlat0.x = (x_1320 * x_1322);
  let x_1325 : vec4<f32> = u_xlat4;
  let x_1328 : vec4<f32> = x_135.x_MainLightPosition;
  u_xlat13.x = dot(vec3<f32>(x_1325.x, x_1325.y, x_1325.z), vec3<f32>(x_1328.x, x_1328.y, x_1328.z));
  let x_1333 : f32 = u_xlat13.x;
  u_xlat13.x = clamp(x_1333, 0.0f, 1.0f);
  let x_1337 : f32 = u_xlat13.x;
  let x_1339 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1337 * x_1339);
  let x_1342 : vec4<f32> = u_xlat0;
  let x_1344 : vec4<f32> = u_xlat6;
  let x_1346 : vec3<f32> = (vec3<f32>(x_1342.x, x_1342.x, x_1342.x) * vec3<f32>(x_1344.x, x_1344.y, x_1344.z));
  let x_1347 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1346.x, x_1346.y, x_1347.z, x_1346.z);
  let x_1349 : vec3<f32> = u_xlat5;
  let x_1351 : vec4<f32> = x_135.x_MainLightPosition;
  let x_1353 : vec3<f32> = (x_1349 + vec3<f32>(x_1351.x, x_1351.y, x_1351.z));
  let x_1354 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1353.x, x_1353.y, x_1353.z, x_1354.w);
  let x_1356 : vec4<f32> = u_xlat6;
  let x_1358 : vec4<f32> = u_xlat6;
  u_xlat40 = dot(vec3<f32>(x_1356.x, x_1356.y, x_1356.z), vec3<f32>(x_1358.x, x_1358.y, x_1358.z));
  let x_1361 : f32 = u_xlat40;
  u_xlat40 = max(x_1361, 1.17549435e-38f);
  let x_1363 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_1363);
  let x_1365 : f32 = u_xlat40;
  let x_1367 : vec4<f32> = u_xlat6;
  let x_1369 : vec3<f32> = (vec3<f32>(x_1365, x_1365, x_1365) * vec3<f32>(x_1367.x, x_1367.y, x_1367.z));
  let x_1370 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1369.x, x_1369.y, x_1369.z, x_1370.w);
  let x_1372 : vec4<f32> = u_xlat4;
  let x_1374 : vec4<f32> = u_xlat6;
  u_xlat40 = dot(vec3<f32>(x_1372.x, x_1372.y, x_1372.z), vec3<f32>(x_1374.x, x_1374.y, x_1374.z));
  let x_1377 : f32 = u_xlat40;
  u_xlat40 = clamp(x_1377, 0.0f, 1.0f);
  let x_1380 : vec4<f32> = x_135.x_MainLightPosition;
  let x_1382 : vec4<f32> = u_xlat6;
  u_xlat41 = dot(vec3<f32>(x_1380.x, x_1380.y, x_1380.z), vec3<f32>(x_1382.x, x_1382.y, x_1382.z));
  let x_1385 : f32 = u_xlat41;
  u_xlat41 = clamp(x_1385, 0.0f, 1.0f);
  let x_1387 : f32 = u_xlat40;
  let x_1388 : f32 = u_xlat40;
  u_xlat40 = (x_1387 * x_1388);
  let x_1390 : f32 = u_xlat40;
  let x_1392 : f32 = u_xlat8.x;
  u_xlat40 = ((x_1390 * x_1392) + 1.00001001358032226562f);
  let x_1396 : f32 = u_xlat41;
  let x_1397 : f32 = u_xlat41;
  u_xlat41 = (x_1396 * x_1397);
  let x_1399 : f32 = u_xlat40;
  let x_1400 : f32 = u_xlat40;
  u_xlat40 = (x_1399 * x_1400);
  let x_1402 : f32 = u_xlat41;
  u_xlat41 = max(x_1402, 0.10000000149011611938f);
  let x_1404 : f32 = u_xlat40;
  let x_1405 : f32 = u_xlat41;
  u_xlat40 = (x_1404 * x_1405);
  let x_1407 : f32 = u_xlat43;
  let x_1408 : f32 = u_xlat40;
  u_xlat40 = (x_1407 * x_1408);
  let x_1410 : f32 = u_xlat42;
  let x_1411 : f32 = u_xlat40;
  u_xlat40 = (x_1410 / x_1411);
  let x_1413 : vec3<f32> = u_xlat2;
  let x_1414 : f32 = u_xlat40;
  let x_1417 : vec3<f32> = u_xlat3;
  let x_1418 : vec3<f32> = ((x_1413 * vec3<f32>(x_1414, x_1414, x_1414)) + x_1417);
  let x_1419 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1418.x, x_1418.y, x_1418.z, x_1419.w);
  let x_1421 : vec4<f32> = u_xlat0;
  let x_1423 : vec4<f32> = u_xlat6;
  let x_1425 : vec3<f32> = (vec3<f32>(x_1421.x, x_1421.y, x_1421.w) * vec3<f32>(x_1423.x, x_1423.y, x_1423.z));
  let x_1426 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1425.x, x_1425.y, x_1426.z, x_1425.z);
  let x_1429 : f32 = x_135.x_AdditionalLightsCount.x;
  let x_1431 : f32 = x_48.unity_LightData.y;
  u_xlat40 = min(x_1429, x_1431);
  let x_1434 : f32 = u_xlat40;
  u_xlatu40 = bitcast<u32>(i32(x_1434));
  let x_1437 : f32 = u_xlat26;
  let x_1440 : f32 = x_682.x_AdditionalShadowFadeParams.x;
  let x_1443 : f32 = x_682.x_AdditionalShadowFadeParams.y;
  u_xlat26 = ((x_1437 * x_1440) + x_1443);
  let x_1445 : f32 = u_xlat26;
  u_xlat26 = clamp(x_1445, 0.0f, 1.0f);
  let x_1448 : f32 = x_1071.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1450 : f32 = x_1071.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1452 : f32 = x_1071.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1454 : f32 = x_1071.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1455 : vec4<f32> = vec4<f32>(x_1448, x_1450, x_1452, x_1454);
  let x_1461 : vec4<bool> = (vec4<f32>(x_1455.x, x_1455.y, x_1455.z, x_1455.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  let x_1462 : vec2<bool> = vec2<bool>(x_1461.x, x_1461.y);
  let x_1463 : vec4<bool> = u_xlatb6;
  u_xlatb6 = vec4<bool>(x_1462.x, x_1462.y, x_1463.z, x_1463.w);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1475 : u32 = u_xlatu_loop_1;
    let x_1476 : u32 = u_xlatu40;
    if ((x_1475 < x_1476)) {
    } else {
      break;
    }
    let x_1479 : u32 = u_xlatu_loop_1;
    u_xlatu32 = (x_1479 >> 2u);
    let x_1482 : u32 = u_xlatu_loop_1;
    u_xlati45 = bitcast<i32>((x_1482 & 3u));
    let x_1486 : u32 = u_xlatu32;
    let x_1489 : vec4<f32> = x_48.unity_LightIndices[bitcast<i32>(x_1486)];
    let x_1499 : i32 = u_xlati45;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1504 : vec4<u32> = indexable[x_1499];
    u_xlat32.x = dot(x_1489, bitcast<vec4<f32>>(x_1504));
    let x_1510 : f32 = u_xlat32.x;
    u_xlati32 = i32(x_1510);
    let x_1512 : vec3<f32> = vs_INTERP7;
    let x_1523 : i32 = u_xlati32;
    let x_1525 : vec4<f32> = x_1522.x_AdditionalLightsPosition[x_1523];
    let x_1528 : i32 = u_xlati32;
    let x_1530 : vec4<f32> = x_1522.x_AdditionalLightsPosition[x_1528];
    u_xlat21 = ((-(x_1512) * vec3<f32>(x_1525.w, x_1525.w, x_1525.w)) + vec3<f32>(x_1530.x, x_1530.y, x_1530.z));
    let x_1533 : vec3<f32> = u_xlat21;
    let x_1534 : vec3<f32> = u_xlat21;
    u_xlat45 = dot(x_1533, x_1534);
    let x_1536 : f32 = u_xlat45;
    u_xlat45 = max(x_1536, 0.00006103515625f);
    let x_1539 : f32 = u_xlat45;
    u_xlat46 = inverseSqrt(x_1539);
    let x_1542 : f32 = u_xlat46;
    let x_1544 : vec3<f32> = u_xlat21;
    u_xlat9 = (vec3<f32>(x_1542, x_1542, x_1542) * x_1544);
    let x_1547 : f32 = u_xlat45;
    u_xlat48 = (1.0f / x_1547);
    let x_1549 : f32 = u_xlat45;
    let x_1550 : i32 = u_xlati32;
    let x_1552 : f32 = x_1522.x_AdditionalLightsAttenuation[x_1550].x;
    u_xlat45 = (x_1549 * x_1552);
    let x_1554 : f32 = u_xlat45;
    let x_1556 : f32 = u_xlat45;
    u_xlat45 = ((-(x_1554) * x_1556) + 1.0f);
    let x_1559 : f32 = u_xlat45;
    u_xlat45 = max(x_1559, 0.0f);
    let x_1561 : f32 = u_xlat45;
    let x_1562 : f32 = u_xlat45;
    u_xlat45 = (x_1561 * x_1562);
    let x_1564 : f32 = u_xlat45;
    let x_1565 : f32 = u_xlat48;
    u_xlat45 = (x_1564 * x_1565);
    let x_1567 : i32 = u_xlati32;
    let x_1569 : vec4<f32> = x_1522.x_AdditionalLightsSpotDir[x_1567];
    let x_1571 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_1569.x, x_1569.y, x_1569.z), x_1571);
    let x_1573 : f32 = u_xlat48;
    let x_1574 : i32 = u_xlati32;
    let x_1576 : f32 = x_1522.x_AdditionalLightsAttenuation[x_1574].z;
    let x_1578 : i32 = u_xlati32;
    let x_1580 : f32 = x_1522.x_AdditionalLightsAttenuation[x_1578].w;
    u_xlat48 = ((x_1573 * x_1576) + x_1580);
    let x_1582 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1582, 0.0f, 1.0f);
    let x_1584 : f32 = u_xlat48;
    let x_1585 : f32 = u_xlat48;
    u_xlat48 = (x_1584 * x_1585);
    let x_1587 : f32 = u_xlat45;
    let x_1588 : f32 = u_xlat48;
    u_xlat45 = (x_1587 * x_1588);
    let x_1592 : i32 = u_xlati32;
    let x_1594 : f32 = x_682.x_AdditionalShadowParams[x_1592].w;
    u_xlati48 = i32(x_1594);
    let x_1599 : i32 = u_xlati48;
    u_xlatb10.x = (x_1599 >= 0i);
    let x_1603 : bool = u_xlatb10.x;
    if (x_1603) {
      let x_1607 : i32 = u_xlati32;
      let x_1609 : f32 = x_682.x_AdditionalShadowParams[x_1607].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1609, x_1609, x_1609, x_1609))));
      let x_1615 : bool = u_xlatb10.x;
      if (x_1615) {
        let x_1618 : vec3<f32> = u_xlat9;
        let x_1621 : vec3<f32> = u_xlat9;
        let x_1624 : vec4<bool> = (abs(vec4<f32>(x_1618.z, x_1618.z, x_1618.y, x_1618.z)) >= abs(vec4<f32>(x_1621.x, x_1621.y, x_1621.x, x_1621.x)));
        u_xlatb10 = vec3<bool>(x_1624.x, x_1624.y, x_1624.z);
        let x_1627 : bool = u_xlatb10.y;
        let x_1629 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_1627 & x_1629);
        let x_1633 : vec3<f32> = u_xlat9;
        let x_1636 : vec4<bool> = (-(vec4<f32>(x_1633.z, x_1633.y, x_1633.x, x_1633.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_1636.x, x_1636.y, x_1636.z);
        let x_1640 : bool = u_xlatb11.x;
        u_xlat23.x = select(4.0f, 5.0f, x_1640);
        let x_1645 : bool = u_xlatb11.y;
        u_xlat23.z = select(2.0f, 3.0f, x_1645);
        let x_1650 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_1650);
        let x_1655 : bool = u_xlatb10.z;
        if (x_1655) {
          let x_1660 : f32 = u_xlat23.z;
          x_1656 = x_1660;
        } else {
          let x_1663 : f32 = u_xlat11.x;
          x_1656 = x_1663;
        }
        let x_1664 : f32 = x_1656;
        u_xlat36 = x_1664;
        let x_1667 : bool = u_xlatb10.x;
        if (x_1667) {
          let x_1672 : f32 = u_xlat23.x;
          x_1668 = x_1672;
        } else {
          let x_1674 : f32 = u_xlat36;
          x_1668 = x_1674;
        }
        let x_1675 : f32 = x_1668;
        u_xlat10.x = x_1675;
        let x_1677 : i32 = u_xlati32;
        let x_1679 : f32 = x_682.x_AdditionalShadowParams[x_1677].w;
        u_xlat23.x = trunc(x_1679);
        let x_1683 : f32 = u_xlat10.x;
        let x_1685 : f32 = u_xlat23.x;
        u_xlat10.x = (x_1683 + x_1685);
        let x_1689 : f32 = u_xlat10.x;
        u_xlati48 = i32(x_1689);
      }
      let x_1691 : i32 = u_xlati48;
      u_xlati48 = (x_1691 << bitcast<u32>(2i));
      let x_1693 : vec3<f32> = vs_INTERP7;
      let x_1696 : i32 = u_xlati48;
      let x_1699 : i32 = u_xlati48;
      let x_1703 : vec4<f32> = x_682.x_AdditionalLightsWorldToShadow[((x_1696 + 1i) / 4i)][((x_1699 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1693.y, x_1693.y, x_1693.y, x_1693.y) * x_1703);
      let x_1705 : i32 = u_xlati48;
      let x_1707 : i32 = u_xlati48;
      let x_1710 : vec4<f32> = x_682.x_AdditionalLightsWorldToShadow[(x_1705 / 4i)][(x_1707 % 4i)];
      let x_1711 : vec3<f32> = vs_INTERP7;
      let x_1714 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1710 * vec4<f32>(x_1711.x, x_1711.x, x_1711.x, x_1711.x)) + x_1714);
      let x_1716 : i32 = u_xlati48;
      let x_1719 : i32 = u_xlati48;
      let x_1723 : vec4<f32> = x_682.x_AdditionalLightsWorldToShadow[((x_1716 + 2i) / 4i)][((x_1719 + 2i) % 4i)];
      let x_1724 : vec3<f32> = vs_INTERP7;
      let x_1727 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1723 * vec4<f32>(x_1724.z, x_1724.z, x_1724.z, x_1724.z)) + x_1727);
      let x_1729 : vec4<f32> = u_xlat10;
      let x_1730 : i32 = u_xlati48;
      let x_1733 : i32 = u_xlati48;
      let x_1737 : vec4<f32> = x_682.x_AdditionalLightsWorldToShadow[((x_1730 + 3i) / 4i)][((x_1733 + 3i) % 4i)];
      u_xlat10 = (x_1729 + x_1737);
      let x_1739 : vec4<f32> = u_xlat10;
      let x_1741 : vec4<f32> = u_xlat10;
      let x_1743 : vec3<f32> = (vec3<f32>(x_1739.x, x_1739.y, x_1739.z) / vec3<f32>(x_1741.w, x_1741.w, x_1741.w));
      let x_1744 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1743.x, x_1743.y, x_1743.z, x_1744.w);
      let x_1747 : vec4<f32> = u_xlat10;
      let x_1748 : vec2<f32> = vec2<f32>(x_1747.x, x_1747.y);
      let x_1750 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1748.x, x_1748.y, x_1750);
      let x_1758 : vec3<f32> = txVec1;
      let x_1760 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1758.xy, x_1758.z);
      u_xlat48 = x_1760;
      let x_1761 : i32 = u_xlati32;
      let x_1763 : f32 = x_682.x_AdditionalShadowParams[x_1761].x;
      u_xlat10.x = (1.0f + -(x_1763));
      let x_1767 : f32 = u_xlat48;
      let x_1768 : i32 = u_xlati32;
      let x_1770 : f32 = x_682.x_AdditionalShadowParams[x_1768].x;
      let x_1773 : f32 = u_xlat10.x;
      u_xlat48 = ((x_1767 * x_1770) + x_1773);
      let x_1776 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_1776);
      let x_1781 : f32 = u_xlat10.z;
      u_xlatb23 = (x_1781 >= 1.0f);
      let x_1783 : bool = u_xlatb23;
      let x_1785 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_1783 | x_1785);
      let x_1789 : bool = u_xlatb10.x;
      let x_1790 : f32 = u_xlat48;
      u_xlat48 = select(x_1790, 1.0f, x_1789);
    } else {
      u_xlat48 = 1.0f;
    }
    let x_1793 : f32 = u_xlat48;
    u_xlat10.x = (-(x_1793) + 1.0f);
    let x_1797 : f32 = u_xlat26;
    let x_1799 : f32 = u_xlat10.x;
    let x_1801 : f32 = u_xlat48;
    u_xlat48 = ((x_1797 * x_1799) + x_1801);
    let x_1804 : i32 = u_xlati32;
    u_xlati10 = (1i << bitcast<u32>((x_1804 & 31i)));
    let x_1808 : i32 = u_xlati10;
    let x_1811 : f32 = x_1071.x_AdditionalLightsCookieEnableBits;
    u_xlati10 = bitcast<i32>((bitcast<u32>(x_1808) & bitcast<u32>(x_1811)));
    let x_1815 : i32 = u_xlati10;
    if ((x_1815 != 0i)) {
      let x_1819 : i32 = u_xlati32;
      let x_1821 : f32 = x_1071.x_AdditionalLightsLightTypes[x_1819].el;
      u_xlati10 = i32(x_1821);
      let x_1824 : i32 = u_xlati10;
      u_xlati23 = select(1i, 0i, (x_1824 != 0i));
      let x_1828 : i32 = u_xlati32;
      u_xlati36 = (x_1828 << bitcast<u32>(2i));
      let x_1830 : i32 = u_xlati23;
      if ((x_1830 != 0i)) {
        let x_1834 : vec3<f32> = vs_INTERP7;
        let x_1836 : i32 = u_xlati36;
        let x_1839 : i32 = u_xlati36;
        let x_1843 : vec4<f32> = x_1071.x_AdditionalLightsWorldToLights[((x_1836 + 1i) / 4i)][((x_1839 + 1i) % 4i)];
        let x_1845 : vec3<f32> = (vec3<f32>(x_1834.y, x_1834.y, x_1834.y) * vec3<f32>(x_1843.x, x_1843.y, x_1843.w));
        let x_1846 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1845.x, x_1845.y, x_1845.z, x_1846.w);
        let x_1848 : i32 = u_xlati36;
        let x_1850 : i32 = u_xlati36;
        let x_1853 : vec4<f32> = x_1071.x_AdditionalLightsWorldToLights[(x_1848 / 4i)][(x_1850 % 4i)];
        let x_1855 : vec3<f32> = vs_INTERP7;
        let x_1858 : vec4<f32> = u_xlat11;
        let x_1860 : vec3<f32> = ((vec3<f32>(x_1853.x, x_1853.y, x_1853.w) * vec3<f32>(x_1855.x, x_1855.x, x_1855.x)) + vec3<f32>(x_1858.x, x_1858.y, x_1858.z));
        let x_1861 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1860.x, x_1860.y, x_1860.z, x_1861.w);
        let x_1863 : i32 = u_xlati36;
        let x_1866 : i32 = u_xlati36;
        let x_1870 : vec4<f32> = x_1071.x_AdditionalLightsWorldToLights[((x_1863 + 2i) / 4i)][((x_1866 + 2i) % 4i)];
        let x_1872 : vec3<f32> = vs_INTERP7;
        let x_1875 : vec4<f32> = u_xlat11;
        let x_1877 : vec3<f32> = ((vec3<f32>(x_1870.x, x_1870.y, x_1870.w) * vec3<f32>(x_1872.z, x_1872.z, x_1872.z)) + vec3<f32>(x_1875.x, x_1875.y, x_1875.z));
        let x_1878 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1877.x, x_1877.y, x_1877.z, x_1878.w);
        let x_1880 : vec4<f32> = u_xlat11;
        let x_1882 : i32 = u_xlati36;
        let x_1885 : i32 = u_xlati36;
        let x_1889 : vec4<f32> = x_1071.x_AdditionalLightsWorldToLights[((x_1882 + 3i) / 4i)][((x_1885 + 3i) % 4i)];
        let x_1891 : vec3<f32> = (vec3<f32>(x_1880.x, x_1880.y, x_1880.z) + vec3<f32>(x_1889.x, x_1889.y, x_1889.w));
        let x_1892 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1891.x, x_1891.y, x_1891.z, x_1892.w);
        let x_1894 : vec4<f32> = u_xlat11;
        let x_1896 : vec4<f32> = u_xlat11;
        let x_1898 : vec2<f32> = (vec2<f32>(x_1894.x, x_1894.y) / vec2<f32>(x_1896.z, x_1896.z));
        let x_1899 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_1898.x, x_1899.y, x_1898.y);
        let x_1901 : vec3<f32> = u_xlat23;
        let x_1904 : vec2<f32> = ((vec2<f32>(x_1901.x, x_1901.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1905 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_1904.x, x_1905.y, x_1904.y);
        let x_1907 : vec3<f32> = u_xlat23;
        let x_1911 : vec2<f32> = clamp(vec2<f32>(x_1907.x, x_1907.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1912 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_1911.x, x_1912.y, x_1911.y);
        let x_1914 : i32 = u_xlati32;
        let x_1916 : vec4<f32> = x_1071.x_AdditionalLightsCookieAtlasUVRects[x_1914];
        let x_1918 : vec3<f32> = u_xlat23;
        let x_1921 : i32 = u_xlati32;
        let x_1923 : vec4<f32> = x_1071.x_AdditionalLightsCookieAtlasUVRects[x_1921];
        let x_1925 : vec2<f32> = ((vec2<f32>(x_1916.x, x_1916.y) * vec2<f32>(x_1918.x, x_1918.z)) + vec2<f32>(x_1923.z, x_1923.w));
        let x_1926 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_1925.x, x_1926.y, x_1925.y);
      } else {
        let x_1929 : i32 = u_xlati10;
        u_xlatb10.x = (x_1929 == 1i);
        let x_1933 : bool = u_xlatb10.x;
        u_xlati10 = select(0i, 1i, x_1933);
        let x_1935 : i32 = u_xlati10;
        if ((x_1935 != 0i)) {
          let x_1939 : vec3<f32> = vs_INTERP7;
          let x_1941 : i32 = u_xlati36;
          let x_1944 : i32 = u_xlati36;
          let x_1948 : vec4<f32> = x_1071.x_AdditionalLightsWorldToLights[((x_1941 + 1i) / 4i)][((x_1944 + 1i) % 4i)];
          let x_1950 : vec2<f32> = (vec2<f32>(x_1939.y, x_1939.y) * vec2<f32>(x_1948.x, x_1948.y));
          let x_1951 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1950.x, x_1950.y, x_1951.z, x_1951.w);
          let x_1953 : i32 = u_xlati36;
          let x_1955 : i32 = u_xlati36;
          let x_1958 : vec4<f32> = x_1071.x_AdditionalLightsWorldToLights[(x_1953 / 4i)][(x_1955 % 4i)];
          let x_1960 : vec3<f32> = vs_INTERP7;
          let x_1963 : vec4<f32> = u_xlat11;
          let x_1965 : vec2<f32> = ((vec2<f32>(x_1958.x, x_1958.y) * vec2<f32>(x_1960.x, x_1960.x)) + vec2<f32>(x_1963.x, x_1963.y));
          let x_1966 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1965.x, x_1965.y, x_1966.z, x_1966.w);
          let x_1968 : i32 = u_xlati36;
          let x_1971 : i32 = u_xlati36;
          let x_1975 : vec4<f32> = x_1071.x_AdditionalLightsWorldToLights[((x_1968 + 2i) / 4i)][((x_1971 + 2i) % 4i)];
          let x_1977 : vec3<f32> = vs_INTERP7;
          let x_1980 : vec4<f32> = u_xlat11;
          let x_1982 : vec2<f32> = ((vec2<f32>(x_1975.x, x_1975.y) * vec2<f32>(x_1977.z, x_1977.z)) + vec2<f32>(x_1980.x, x_1980.y));
          let x_1983 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1982.x, x_1982.y, x_1983.z, x_1983.w);
          let x_1985 : vec4<f32> = u_xlat11;
          let x_1987 : i32 = u_xlati36;
          let x_1990 : i32 = u_xlati36;
          let x_1994 : vec4<f32> = x_1071.x_AdditionalLightsWorldToLights[((x_1987 + 3i) / 4i)][((x_1990 + 3i) % 4i)];
          let x_1996 : vec2<f32> = (vec2<f32>(x_1985.x, x_1985.y) + vec2<f32>(x_1994.x, x_1994.y));
          let x_1997 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1996.x, x_1996.y, x_1997.z, x_1997.w);
          let x_1999 : vec4<f32> = u_xlat11;
          let x_2002 : vec2<f32> = ((vec2<f32>(x_1999.x, x_1999.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2003 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2002.x, x_2002.y, x_2003.z, x_2003.w);
          let x_2005 : vec4<f32> = u_xlat11;
          let x_2007 : vec2<f32> = fract(vec2<f32>(x_2005.x, x_2005.y));
          let x_2008 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2007.x, x_2007.y, x_2008.z, x_2008.w);
          let x_2010 : i32 = u_xlati32;
          let x_2012 : vec4<f32> = x_1071.x_AdditionalLightsCookieAtlasUVRects[x_2010];
          let x_2014 : vec4<f32> = u_xlat11;
          let x_2017 : i32 = u_xlati32;
          let x_2019 : vec4<f32> = x_1071.x_AdditionalLightsCookieAtlasUVRects[x_2017];
          let x_2021 : vec2<f32> = ((vec2<f32>(x_2012.x, x_2012.y) * vec2<f32>(x_2014.x, x_2014.y)) + vec2<f32>(x_2019.z, x_2019.w));
          let x_2022 : vec3<f32> = u_xlat23;
          u_xlat23 = vec3<f32>(x_2021.x, x_2022.y, x_2021.y);
        } else {
          let x_2025 : vec3<f32> = vs_INTERP7;
          let x_2027 : i32 = u_xlati36;
          let x_2030 : i32 = u_xlati36;
          let x_2034 : vec4<f32> = x_1071.x_AdditionalLightsWorldToLights[((x_2027 + 1i) / 4i)][((x_2030 + 1i) % 4i)];
          u_xlat11 = (vec4<f32>(x_2025.y, x_2025.y, x_2025.y, x_2025.y) * x_2034);
          let x_2036 : i32 = u_xlati36;
          let x_2038 : i32 = u_xlati36;
          let x_2041 : vec4<f32> = x_1071.x_AdditionalLightsWorldToLights[(x_2036 / 4i)][(x_2038 % 4i)];
          let x_2042 : vec3<f32> = vs_INTERP7;
          let x_2045 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_2041 * vec4<f32>(x_2042.x, x_2042.x, x_2042.x, x_2042.x)) + x_2045);
          let x_2047 : i32 = u_xlati36;
          let x_2050 : i32 = u_xlati36;
          let x_2054 : vec4<f32> = x_1071.x_AdditionalLightsWorldToLights[((x_2047 + 2i) / 4i)][((x_2050 + 2i) % 4i)];
          let x_2055 : vec3<f32> = vs_INTERP7;
          let x_2058 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_2054 * vec4<f32>(x_2055.z, x_2055.z, x_2055.z, x_2055.z)) + x_2058);
          let x_2060 : vec4<f32> = u_xlat11;
          let x_2061 : i32 = u_xlati36;
          let x_2064 : i32 = u_xlati36;
          let x_2068 : vec4<f32> = x_1071.x_AdditionalLightsWorldToLights[((x_2061 + 3i) / 4i)][((x_2064 + 3i) % 4i)];
          u_xlat11 = (x_2060 + x_2068);
          let x_2070 : vec4<f32> = u_xlat11;
          let x_2072 : vec4<f32> = u_xlat11;
          let x_2074 : vec3<f32> = (vec3<f32>(x_2070.x, x_2070.y, x_2070.z) / vec3<f32>(x_2072.w, x_2072.w, x_2072.w));
          let x_2075 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2074.x, x_2074.y, x_2074.z, x_2075.w);
          let x_2077 : vec4<f32> = u_xlat11;
          let x_2079 : vec4<f32> = u_xlat11;
          u_xlat10.x = dot(vec3<f32>(x_2077.x, x_2077.y, x_2077.z), vec3<f32>(x_2079.x, x_2079.y, x_2079.z));
          let x_2084 : f32 = u_xlat10.x;
          u_xlat10.x = inverseSqrt(x_2084);
          let x_2087 : vec4<f32> = u_xlat10;
          let x_2089 : vec4<f32> = u_xlat11;
          let x_2091 : vec3<f32> = (vec3<f32>(x_2087.x, x_2087.x, x_2087.x) * vec3<f32>(x_2089.x, x_2089.y, x_2089.z));
          let x_2092 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2091.x, x_2091.y, x_2091.z, x_2092.w);
          let x_2094 : vec4<f32> = u_xlat11;
          u_xlat10.x = dot(abs(vec3<f32>(x_2094.x, x_2094.y, x_2094.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2101 : f32 = u_xlat10.x;
          u_xlat10.x = max(x_2101, 0.00000099999999747524f);
          let x_2106 : f32 = u_xlat10.x;
          u_xlat10.x = (1.0f / x_2106);
          let x_2110 : vec4<f32> = u_xlat10;
          let x_2112 : vec4<f32> = u_xlat11;
          u_xlat12 = (vec3<f32>(x_2110.x, x_2110.x, x_2110.x) * vec3<f32>(x_2112.z, x_2112.x, x_2112.y));
          let x_2116 : f32 = u_xlat12.x;
          u_xlat12.x = -(x_2116);
          let x_2120 : f32 = u_xlat12.x;
          u_xlat12.x = clamp(x_2120, 0.0f, 1.0f);
          let x_2124 : vec3<f32> = u_xlat12;
          let x_2126 : vec4<bool> = (vec4<f32>(x_2124.y, x_2124.z, x_2124.y, x_2124.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb37 = vec2<bool>(x_2126.x, x_2126.y);
          let x_2130 : bool = u_xlatb37.x;
          if (x_2130) {
            let x_2135 : f32 = u_xlat12.x;
            x_2131 = x_2135;
          } else {
            let x_2138 : f32 = u_xlat12.x;
            x_2131 = -(x_2138);
          }
          let x_2140 : f32 = x_2131;
          u_xlat37.x = x_2140;
          let x_2143 : bool = u_xlatb37.y;
          if (x_2143) {
            let x_2148 : f32 = u_xlat12.x;
            x_2144 = x_2148;
          } else {
            let x_2151 : f32 = u_xlat12.x;
            x_2144 = -(x_2151);
          }
          let x_2153 : f32 = x_2144;
          u_xlat37.y = x_2153;
          let x_2155 : vec4<f32> = u_xlat11;
          let x_2157 : vec4<f32> = u_xlat10;
          let x_2160 : vec2<f32> = u_xlat37;
          let x_2161 : vec2<f32> = ((vec2<f32>(x_2155.x, x_2155.y) * vec2<f32>(x_2157.x, x_2157.x)) + x_2160);
          let x_2162 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2161.x, x_2162.y, x_2161.y, x_2162.w);
          let x_2164 : vec4<f32> = u_xlat10;
          let x_2167 : vec2<f32> = ((vec2<f32>(x_2164.x, x_2164.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2168 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2167.x, x_2168.y, x_2167.y, x_2168.w);
          let x_2170 : vec4<f32> = u_xlat10;
          let x_2174 : vec2<f32> = clamp(vec2<f32>(x_2170.x, x_2170.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2175 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2174.x, x_2175.y, x_2174.y, x_2175.w);
          let x_2177 : i32 = u_xlati32;
          let x_2179 : vec4<f32> = x_1071.x_AdditionalLightsCookieAtlasUVRects[x_2177];
          let x_2181 : vec4<f32> = u_xlat10;
          let x_2184 : i32 = u_xlati32;
          let x_2186 : vec4<f32> = x_1071.x_AdditionalLightsCookieAtlasUVRects[x_2184];
          let x_2188 : vec2<f32> = ((vec2<f32>(x_2179.x, x_2179.y) * vec2<f32>(x_2181.x, x_2181.z)) + vec2<f32>(x_2186.z, x_2186.w));
          let x_2189 : vec3<f32> = u_xlat23;
          u_xlat23 = vec3<f32>(x_2188.x, x_2189.y, x_2188.y);
        }
      }
      let x_2196 : vec3<f32> = u_xlat23;
      let x_2198 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_2196.x, x_2196.z), 0.0f);
      u_xlat10 = x_2198;
      let x_2201 : bool = u_xlatb6.y;
      if (x_2201) {
        let x_2206 : f32 = u_xlat10.w;
        x_2202 = x_2206;
      } else {
        let x_2209 : f32 = u_xlat10.x;
        x_2202 = x_2209;
      }
      let x_2210 : f32 = x_2202;
      u_xlat49 = x_2210;
      let x_2212 : bool = u_xlatb6.x;
      if (x_2212) {
        let x_2216 : vec4<f32> = u_xlat10;
        x_2213 = vec3<f32>(x_2216.x, x_2216.y, x_2216.z);
      } else {
        let x_2219 : f32 = u_xlat49;
        x_2213 = vec3<f32>(x_2219, x_2219, x_2219);
      }
      let x_2221 : vec3<f32> = x_2213;
      let x_2222 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2221.x, x_2221.y, x_2221.z, x_2222.w);
    } else {
      u_xlat10.x = 1.0f;
      u_xlat10.y = 1.0f;
      u_xlat10.z = 1.0f;
    }
    let x_2228 : vec4<f32> = u_xlat10;
    let x_2230 : i32 = u_xlati32;
    let x_2232 : vec4<f32> = x_1522.x_AdditionalLightsColor[x_2230];
    let x_2234 : vec3<f32> = (vec3<f32>(x_2228.x, x_2228.y, x_2228.z) * vec3<f32>(x_2232.x, x_2232.y, x_2232.z));
    let x_2235 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2234.x, x_2234.y, x_2234.z, x_2235.w);
    let x_2237 : f32 = u_xlat45;
    let x_2238 : f32 = u_xlat48;
    u_xlat32.x = (x_2237 * x_2238);
    let x_2241 : vec4<f32> = u_xlat4;
    let x_2243 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_2241.x, x_2241.y, x_2241.z), x_2243);
    let x_2245 : f32 = u_xlat45;
    u_xlat45 = clamp(x_2245, 0.0f, 1.0f);
    let x_2247 : f32 = u_xlat45;
    let x_2249 : f32 = u_xlat32.x;
    u_xlat32.x = (x_2247 * x_2249);
    let x_2252 : vec2<f32> = u_xlat32;
    let x_2254 : vec4<f32> = u_xlat10;
    let x_2256 : vec3<f32> = (vec3<f32>(x_2252.x, x_2252.x, x_2252.x) * vec3<f32>(x_2254.x, x_2254.y, x_2254.z));
    let x_2257 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2256.x, x_2256.y, x_2256.z, x_2257.w);
    let x_2259 : vec3<f32> = u_xlat21;
    let x_2260 : f32 = u_xlat46;
    let x_2263 : vec3<f32> = u_xlat5;
    u_xlat21 = ((x_2259 * vec3<f32>(x_2260, x_2260, x_2260)) + x_2263);
    let x_2265 : vec3<f32> = u_xlat21;
    let x_2266 : vec3<f32> = u_xlat21;
    u_xlat32.x = dot(x_2265, x_2266);
    let x_2270 : f32 = u_xlat32.x;
    u_xlat32.x = max(x_2270, 1.17549435e-38f);
    let x_2274 : f32 = u_xlat32.x;
    u_xlat32.x = inverseSqrt(x_2274);
    let x_2277 : vec2<f32> = u_xlat32;
    let x_2279 : vec3<f32> = u_xlat21;
    u_xlat21 = (vec3<f32>(x_2277.x, x_2277.x, x_2277.x) * x_2279);
    let x_2281 : vec4<f32> = u_xlat4;
    let x_2283 : vec3<f32> = u_xlat21;
    u_xlat32.x = dot(vec3<f32>(x_2281.x, x_2281.y, x_2281.z), x_2283);
    let x_2287 : f32 = u_xlat32.x;
    u_xlat32.x = clamp(x_2287, 0.0f, 1.0f);
    let x_2290 : vec3<f32> = u_xlat9;
    let x_2291 : vec3<f32> = u_xlat21;
    u_xlat32.y = dot(x_2290, x_2291);
    let x_2295 : f32 = u_xlat32.y;
    u_xlat32.y = clamp(x_2295, 0.0f, 1.0f);
    let x_2298 : vec2<f32> = u_xlat32;
    let x_2299 : vec2<f32> = u_xlat32;
    u_xlat32 = (x_2298 * x_2299);
    let x_2302 : f32 = u_xlat32.x;
    let x_2304 : f32 = u_xlat8.x;
    u_xlat32.x = ((x_2302 * x_2304) + 1.00001001358032226562f);
    let x_2309 : f32 = u_xlat32.x;
    let x_2311 : f32 = u_xlat32.x;
    u_xlat32.x = (x_2309 * x_2311);
    let x_2315 : f32 = u_xlat32.y;
    u_xlat45 = max(x_2315, 0.10000000149011611938f);
    let x_2317 : f32 = u_xlat45;
    let x_2319 : f32 = u_xlat32.x;
    u_xlat32.x = (x_2317 * x_2319);
    let x_2322 : f32 = u_xlat43;
    let x_2324 : f32 = u_xlat32.x;
    u_xlat32.x = (x_2322 * x_2324);
    let x_2327 : f32 = u_xlat42;
    let x_2329 : f32 = u_xlat32.x;
    u_xlat32.x = (x_2327 / x_2329);
    let x_2332 : vec3<f32> = u_xlat2;
    let x_2333 : vec2<f32> = u_xlat32;
    let x_2336 : vec3<f32> = u_xlat3;
    u_xlat21 = ((x_2332 * vec3<f32>(x_2333.x, x_2333.x, x_2333.x)) + x_2336);
    let x_2338 : vec3<f32> = u_xlat21;
    let x_2339 : vec4<f32> = u_xlat10;
    let x_2342 : vec4<f32> = u_xlat7;
    let x_2344 : vec3<f32> = ((x_2338 * vec3<f32>(x_2339.x, x_2339.y, x_2339.z)) + vec3<f32>(x_2342.x, x_2342.y, x_2342.z));
    let x_2345 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2344.x, x_2344.y, x_2344.z, x_2345.w);

    continuing {
      let x_2347 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2347 + bitcast<u32>(1i));
    }
  }
  let x_2349 : vec4<f32> = u_xlat1;
  let x_2351 : f32 = u_xlat44;
  let x_2354 : vec4<f32> = u_xlat0;
  let x_2356 : vec3<f32> = ((vec3<f32>(x_2349.x, x_2349.y, x_2349.z) * vec3<f32>(x_2351, x_2351, x_2351)) + vec3<f32>(x_2354.x, x_2354.y, x_2354.w));
  let x_2357 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2356.x, x_2356.y, x_2356.z, x_2357.w);
  let x_2361 : vec4<f32> = u_xlat7;
  let x_2363 : vec4<f32> = u_xlat0;
  let x_2365 : vec3<f32> = (vec3<f32>(x_2361.x, x_2361.y, x_2361.z) + vec3<f32>(x_2363.x, x_2363.y, x_2363.z));
  let x_2366 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2365.x, x_2365.y, x_2365.z, x_2366.w);
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


