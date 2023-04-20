diagnostic(off, derivative_uniformity);

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
  unity_FogParams : vec4<f32>,
  /* @offset(112) */
  unity_FogColor : vec4<f32>,
  /* @offset(128) */
  unity_MatrixV : mat4x4<f32>,
}

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

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MetallicTex : sampler;

var<private> u_xlat28 : f32;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_124 : UnityPerDraw;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat55 : f32;

var<private> u_xlat82 : f32;

var<private> u_xlat83 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlatb84 : bool;

@group(1) @binding(3) var<uniform> x_275 : LightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat84 : f32;

var<private> u_xlatb85 : bool;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat85 : f32;

var<private> u_xlat32 : f32;

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlatb5 : bool;

@group(1) @binding(4) var<uniform> x_1599 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb6 : vec2<bool>;

var<private> u_xlat86 : f32;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlat87 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu81 : u32;

var<private> u_xlatb8 : vec2<bool>;

var<private> u_xlatu85 : u32;

var<private> u_xlati86 : i32;

var<private> u_xlati85 : i32;

@group(1) @binding(1) var<uniform> x_2083 : AdditionalLights;

var<private> u_xlat88 : f32;

var<private> u_xlati88 : i32;

var<private> u_xlatb62 : bool;

var<private> u_xlatb12 : vec4<bool>;

var<private> u_xlat89 : f32;

var<private> u_xlatb88 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat69 : vec2<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat90 : f32;

var<private> u_xlat73 : vec2<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat41 : vec2<f32>;

var<private> u_xlat23 : vec2<f32>;

var<private> u_xlat70 : vec2<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlat26 : vec4<f32>;

var<private> u_xlat91 : f32;

var<private> u_xlatb89 : bool;

var<private> u_xlati62 : i32;

var<private> u_xlati89 : i32;

var<private> u_xlati90 : i32;

var<private> u_xlatb66 : vec2<bool>;

var<private> u_xlat66 : vec2<f32>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu84 : u32;

fn main_1() {
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var txVec17 : vec3<f32>;
  var txVec18 : vec3<f32>;
  var txVec19 : vec3<f32>;
  var txVec20 : vec3<f32>;
  var txVec21 : vec3<f32>;
  var txVec22 : vec3<f32>;
  var txVec23 : vec3<f32>;
  var txVec24 : vec3<f32>;
  var txVec25 : vec3<f32>;
  var txVec26 : vec3<f32>;
  var txVec27 : vec3<f32>;
  var txVec28 : vec3<f32>;
  var txVec29 : vec3<f32>;
  var x_1686 : f32;
  var x_1697 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2221 : f32;
  var x_2230 : f32;
  var txVec30 : vec3<f32>;
  var txVec31 : vec3<f32>;
  var txVec32 : vec3<f32>;
  var txVec33 : vec3<f32>;
  var txVec34 : vec3<f32>;
  var txVec35 : vec3<f32>;
  var txVec36 : vec3<f32>;
  var txVec37 : vec3<f32>;
  var txVec38 : vec3<f32>;
  var txVec39 : vec3<f32>;
  var txVec40 : vec3<f32>;
  var txVec41 : vec3<f32>;
  var txVec42 : vec3<f32>;
  var txVec43 : vec3<f32>;
  var txVec44 : vec3<f32>;
  var txVec45 : vec3<f32>;
  var txVec46 : vec3<f32>;
  var txVec47 : vec3<f32>;
  var txVec48 : vec3<f32>;
  var txVec49 : vec3<f32>;
  var txVec50 : vec3<f32>;
  var txVec51 : vec3<f32>;
  var txVec52 : vec3<f32>;
  var txVec53 : vec3<f32>;
  var txVec54 : vec3<f32>;
  var txVec55 : vec3<f32>;
  var txVec56 : vec3<f32>;
  var txVec57 : vec3<f32>;
  var txVec58 : vec3<f32>;
  var txVec59 : vec3<f32>;
  var x_3826 : f32;
  var x_3839 : f32;
  var x_3887 : f32;
  var x_3899 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y), x_36);
  u_xlat0 = x_37;
  let x_45 : vec4<f32> = vs_TEXCOORD0;
  let x_48 : f32 = x_29.x_GlobalMipBias.x;
  let x_49 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_45.x, x_45.y), x_48);
  u_xlat1.x = x_49.x;
  let x_55 : vec4<f32> = vs_TEXCOORD3;
  let x_57 : vec4<f32> = vs_TEXCOORD3;
  u_xlat28 = dot(vec3<f32>(x_55.x, x_55.y, x_55.z), vec3<f32>(x_57.x, x_57.y, x_57.z));
  let x_60 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_60);
  let x_63 : f32 = u_xlat28;
  let x_65 : vec4<f32> = vs_TEXCOORD3;
  let x_67 : vec3<f32> = (vec3<f32>(x_63, x_63, x_63) * vec3<f32>(x_65.x, x_65.y, x_65.z));
  let x_68 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_67.x, x_67.y, x_67.z, x_68.w);
  let x_75 : f32 = vs_TEXCOORD7.y;
  let x_80 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat28 = (x_75 * x_80);
  let x_83 : f32 = x_29.unity_MatrixV[0i].z;
  let x_85 : f32 = vs_TEXCOORD7.x;
  let x_87 : f32 = u_xlat28;
  u_xlat28 = ((x_83 * x_85) + x_87);
  let x_91 : f32 = x_29.unity_MatrixV[2i].z;
  let x_93 : f32 = vs_TEXCOORD7.z;
  let x_95 : f32 = u_xlat28;
  u_xlat28 = ((x_91 * x_93) + x_95);
  let x_97 : f32 = u_xlat28;
  let x_100 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat28 = (x_97 + x_100);
  let x_102 : f32 = u_xlat28;
  let x_106 : f32 = x_29.x_ProjectionParams.y;
  u_xlat28 = (-(x_102) + -(x_106));
  let x_109 : f32 = u_xlat28;
  u_xlat28 = max(x_109, 0.0f);
  let x_112 : f32 = u_xlat28;
  let x_115 : f32 = x_29.unity_FogParams.x;
  u_xlat28 = (x_112 * x_115);
  u_xlat2.w = 1.0f;
  let x_128 : vec4<f32> = x_124.unity_SHAr;
  let x_129 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_128, x_129);
  let x_134 : vec4<f32> = x_124.unity_SHAg;
  let x_135 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_134, x_135);
  let x_140 : vec4<f32> = x_124.unity_SHAb;
  let x_141 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_140, x_141);
  let x_145 : vec4<f32> = u_xlat2;
  let x_147 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_145.y, x_145.z, x_145.z, x_145.x) * vec4<f32>(x_147.x, x_147.y, x_147.z, x_147.z));
  let x_153 : vec4<f32> = x_124.unity_SHBr;
  let x_154 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_153, x_154);
  let x_159 : vec4<f32> = x_124.unity_SHBg;
  let x_160 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_159, x_160);
  let x_165 : vec4<f32> = x_124.unity_SHBb;
  let x_166 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_165, x_166);
  let x_171 : f32 = u_xlat2.y;
  let x_173 : f32 = u_xlat2.y;
  u_xlat55 = (x_171 * x_173);
  let x_176 : f32 = u_xlat2.x;
  let x_178 : f32 = u_xlat2.x;
  let x_180 : f32 = u_xlat55;
  u_xlat55 = ((x_176 * x_178) + -(x_180));
  let x_185 : vec4<f32> = x_124.unity_SHC;
  let x_187 : f32 = u_xlat55;
  let x_190 : vec4<f32> = u_xlat5;
  let x_192 : vec3<f32> = ((vec3<f32>(x_185.x, x_185.y, x_185.z) * vec3<f32>(x_187, x_187, x_187)) + vec3<f32>(x_190.x, x_190.y, x_190.z));
  let x_193 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
  let x_195 : vec3<f32> = u_xlat3;
  let x_196 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_195 + vec3<f32>(x_196.x, x_196.y, x_196.z));
  let x_199 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_199, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_203 : f32 = u_xlat1.x;
  u_xlat55 = ((-(x_203) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_209 : f32 = u_xlat55;
  u_xlat82 = (-(x_209) + 1.0f);
  let x_212 : vec4<f32> = u_xlat0;
  let x_214 : f32 = u_xlat55;
  let x_216 : vec3<f32> = (vec3<f32>(x_212.x, x_212.y, x_212.z) * vec3<f32>(x_214, x_214, x_214));
  let x_217 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_216.x, x_216.y, x_216.z, x_217.w);
  let x_219 : vec4<f32> = u_xlat0;
  let x_223 : vec3<f32> = (vec3<f32>(x_219.x, x_219.y, x_219.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_224 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_223.x, x_223.y, x_223.z, x_224.w);
  let x_226 : vec3<f32> = u_xlat1;
  let x_228 : vec4<f32> = u_xlat0;
  let x_233 : vec3<f32> = ((vec3<f32>(x_226.x, x_226.x, x_226.x) * vec3<f32>(x_228.x, x_228.y, x_228.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_234 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_233.x, x_233.y, x_233.z, x_234.w);
  let x_237 : f32 = u_xlat0.w;
  u_xlat1.x = (-(x_237) + 1.0f);
  let x_242 : f32 = u_xlat1.x;
  let x_244 : f32 = u_xlat1.x;
  u_xlat55 = (x_242 * x_244);
  let x_246 : f32 = u_xlat55;
  u_xlat55 = max(x_246, 0.0078125f);
  let x_250 : f32 = u_xlat55;
  let x_251 : f32 = u_xlat55;
  u_xlat83 = (x_250 * x_251);
  let x_255 : f32 = u_xlat0.w;
  let x_256 : f32 = u_xlat82;
  u_xlat81 = (x_255 + x_256);
  let x_258 : f32 = u_xlat81;
  u_xlat81 = clamp(x_258, 0.0f, 1.0f);
  let x_260 : f32 = u_xlat55;
  u_xlat82 = ((x_260 * 4.0f) + 2.0f);
  let x_277 : f32 = x_275.x_MainLightShadowParams.y;
  u_xlatb84 = (0.0f < x_277);
  let x_279 : bool = u_xlatb84;
  if (x_279) {
    let x_283 : f32 = x_275.x_MainLightShadowParams.y;
    u_xlatb84 = (x_283 == 1.0f);
    let x_285 : bool = u_xlatb84;
    if (x_285) {
      let x_289 : vec4<f32> = vs_TEXCOORD8;
      let x_292 : vec4<f32> = x_275.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_289.x, x_289.y, x_289.x, x_289.y) + x_292);
      let x_296 : vec4<f32> = u_xlat5;
      let x_297 : vec2<f32> = vec2<f32>(x_296.x, x_296.y);
      let x_299 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_297.x, x_297.y, x_299);
      let x_312 : vec3<f32> = txVec0;
      let x_314 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_312.xy, x_312.z);
      u_xlat6.x = x_314;
      let x_317 : vec4<f32> = u_xlat5;
      let x_318 : vec2<f32> = vec2<f32>(x_317.z, x_317.w);
      let x_320 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_318.x, x_318.y, x_320);
      let x_327 : vec3<f32> = txVec1;
      let x_329 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_327.xy, x_327.z);
      u_xlat6.y = x_329;
      let x_331 : vec4<f32> = vs_TEXCOORD8;
      let x_335 : vec4<f32> = x_275.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_331.x, x_331.y, x_331.x, x_331.y) + x_335);
      let x_338 : vec4<f32> = u_xlat5;
      let x_339 : vec2<f32> = vec2<f32>(x_338.x, x_338.y);
      let x_341 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_339.x, x_339.y, x_341);
      let x_348 : vec3<f32> = txVec2;
      let x_350 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_348.xy, x_348.z);
      u_xlat6.z = x_350;
      let x_353 : vec4<f32> = u_xlat5;
      let x_354 : vec2<f32> = vec2<f32>(x_353.z, x_353.w);
      let x_356 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_354.x, x_354.y, x_356);
      let x_363 : vec3<f32> = txVec3;
      let x_365 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_363.xy, x_363.z);
      u_xlat6.w = x_365;
      let x_368 : vec4<f32> = u_xlat6;
      u_xlat84 = dot(x_368, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_375 : f32 = x_275.x_MainLightShadowParams.y;
      u_xlatb85 = (x_375 == 2.0f);
      let x_377 : bool = u_xlatb85;
      if (x_377) {
        let x_380 : vec4<f32> = vs_TEXCOORD8;
        let x_384 : vec4<f32> = x_275.x_MainLightShadowmapSize;
        let x_389 : vec2<f32> = ((vec2<f32>(x_380.x, x_380.y) * vec2<f32>(x_384.z, x_384.w)) + vec2<f32>(0.5f, 0.5f));
        let x_390 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_389.x, x_389.y, x_390.z, x_390.w);
        let x_392 : vec4<f32> = u_xlat5;
        let x_394 : vec2<f32> = floor(vec2<f32>(x_392.x, x_392.y));
        let x_395 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_394.x, x_394.y, x_395.z, x_395.w);
        let x_399 : vec4<f32> = vs_TEXCOORD8;
        let x_402 : vec4<f32> = x_275.x_MainLightShadowmapSize;
        let x_405 : vec4<f32> = u_xlat5;
        u_xlat59 = ((vec2<f32>(x_399.x, x_399.y) * vec2<f32>(x_402.z, x_402.w)) + -(vec2<f32>(x_405.x, x_405.y)));
        let x_409 : vec2<f32> = u_xlat59;
        u_xlat6 = (vec4<f32>(x_409.x, x_409.x, x_409.y, x_409.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_414 : vec4<f32> = u_xlat6;
        let x_416 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_414.x, x_414.x, x_414.z, x_414.z) * vec4<f32>(x_416.x, x_416.x, x_416.z, x_416.z));
        let x_419 : vec4<f32> = u_xlat7;
        let x_423 : vec2<f32> = (vec2<f32>(x_419.y, x_419.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_424 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_423.x, x_424.y, x_423.y, x_424.w);
        let x_426 : vec4<f32> = u_xlat7;
        let x_429 : vec2<f32> = u_xlat59;
        let x_431 : vec2<f32> = ((vec2<f32>(x_426.x, x_426.z) * vec2<f32>(0.5f, 0.5f)) + -(x_429));
        let x_432 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_431.x, x_431.y, x_432.z, x_432.w);
        let x_435 : vec2<f32> = u_xlat59;
        u_xlat61 = (-(x_435) + vec2<f32>(1.0f, 1.0f));
        let x_440 : vec2<f32> = u_xlat59;
        let x_442 : vec2<f32> = min(x_440, vec2<f32>(0.0f, 0.0f));
        let x_443 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_442.x, x_442.y, x_443.z, x_443.w);
        let x_445 : vec4<f32> = u_xlat8;
        let x_448 : vec4<f32> = u_xlat8;
        let x_451 : vec2<f32> = u_xlat61;
        let x_452 : vec2<f32> = ((-(vec2<f32>(x_445.x, x_445.y)) * vec2<f32>(x_448.x, x_448.y)) + x_451);
        let x_453 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_452.x, x_452.y, x_453.z, x_453.w);
        let x_455 : vec2<f32> = u_xlat59;
        u_xlat59 = max(x_455, vec2<f32>(0.0f, 0.0f));
        let x_457 : vec2<f32> = u_xlat59;
        let x_459 : vec2<f32> = u_xlat59;
        let x_461 : vec4<f32> = u_xlat6;
        u_xlat59 = ((-(x_457) * x_459) + vec2<f32>(x_461.y, x_461.w));
        let x_464 : vec4<f32> = u_xlat8;
        let x_466 : vec2<f32> = (vec2<f32>(x_464.x, x_464.y) + vec2<f32>(1.0f, 1.0f));
        let x_467 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_466.x, x_466.y, x_467.z, x_467.w);
        let x_469 : vec2<f32> = u_xlat59;
        u_xlat59 = (x_469 + vec2<f32>(1.0f, 1.0f));
        let x_472 : vec4<f32> = u_xlat7;
        let x_476 : vec2<f32> = (vec2<f32>(x_472.x, x_472.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_477 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_476.x, x_476.y, x_477.z, x_477.w);
        let x_479 : vec2<f32> = u_xlat61;
        let x_480 : vec2<f32> = (x_479 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_481 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_480.x, x_480.y, x_481.z, x_481.w);
        let x_483 : vec4<f32> = u_xlat8;
        let x_485 : vec2<f32> = (vec2<f32>(x_483.x, x_483.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_486 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_485.x, x_485.y, x_486.z, x_486.w);
        let x_489 : vec2<f32> = u_xlat59;
        let x_490 : vec2<f32> = (x_489 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_491 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_490.x, x_490.y, x_491.z, x_491.w);
        let x_493 : vec4<f32> = u_xlat6;
        u_xlat59 = (vec2<f32>(x_493.y, x_493.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_497 : f32 = u_xlat8.x;
        u_xlat9.z = x_497;
        let x_500 : f32 = u_xlat59.x;
        u_xlat9.w = x_500;
        let x_503 : f32 = u_xlat10.x;
        u_xlat7.z = x_503;
        let x_506 : f32 = u_xlat6.x;
        u_xlat7.w = x_506;
        let x_509 : vec4<f32> = u_xlat7;
        let x_511 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_509.z, x_509.w, x_509.x, x_509.z) + vec4<f32>(x_511.z, x_511.w, x_511.x, x_511.z));
        let x_515 : f32 = u_xlat9.y;
        u_xlat8.z = x_515;
        let x_518 : f32 = u_xlat59.y;
        u_xlat8.w = x_518;
        let x_521 : f32 = u_xlat7.y;
        u_xlat10.z = x_521;
        let x_524 : f32 = u_xlat6.z;
        u_xlat10.w = x_524;
        let x_526 : vec4<f32> = u_xlat8;
        let x_528 : vec4<f32> = u_xlat10;
        let x_530 : vec3<f32> = (vec3<f32>(x_526.z, x_526.y, x_526.w) + vec3<f32>(x_528.z, x_528.y, x_528.w));
        let x_531 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_530.x, x_530.y, x_530.z, x_531.w);
        let x_533 : vec4<f32> = u_xlat7;
        let x_535 : vec4<f32> = u_xlat11;
        let x_537 : vec3<f32> = (vec3<f32>(x_533.x, x_533.z, x_533.w) / vec3<f32>(x_535.z, x_535.w, x_535.y));
        let x_538 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_537.x, x_537.y, x_537.z, x_538.w);
        let x_540 : vec4<f32> = u_xlat7;
        let x_546 : vec3<f32> = (vec3<f32>(x_540.x, x_540.y, x_540.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_547 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_546.x, x_546.y, x_546.z, x_547.w);
        let x_549 : vec4<f32> = u_xlat10;
        let x_551 : vec4<f32> = u_xlat6;
        let x_553 : vec3<f32> = (vec3<f32>(x_549.z, x_549.y, x_549.w) / vec3<f32>(x_551.x, x_551.y, x_551.z));
        let x_554 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_553.x, x_553.y, x_553.z, x_554.w);
        let x_556 : vec4<f32> = u_xlat8;
        let x_558 : vec3<f32> = (vec3<f32>(x_556.x, x_556.y, x_556.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_559 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_558.x, x_558.y, x_558.z, x_559.w);
        let x_561 : vec4<f32> = u_xlat7;
        let x_564 : vec4<f32> = x_275.x_MainLightShadowmapSize;
        let x_566 : vec3<f32> = (vec3<f32>(x_561.y, x_561.x, x_561.z) * vec3<f32>(x_564.x, x_564.x, x_564.x));
        let x_567 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_566.x, x_566.y, x_566.z, x_567.w);
        let x_569 : vec4<f32> = u_xlat8;
        let x_572 : vec4<f32> = x_275.x_MainLightShadowmapSize;
        let x_574 : vec3<f32> = (vec3<f32>(x_569.x, x_569.y, x_569.z) * vec3<f32>(x_572.y, x_572.y, x_572.y));
        let x_575 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_574.x, x_574.y, x_574.z, x_575.w);
        let x_578 : f32 = u_xlat8.x;
        u_xlat7.w = x_578;
        let x_580 : vec4<f32> = u_xlat5;
        let x_583 : vec4<f32> = x_275.x_MainLightShadowmapSize;
        let x_586 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_580.x, x_580.y, x_580.x, x_580.y) * vec4<f32>(x_583.x, x_583.y, x_583.x, x_583.y)) + vec4<f32>(x_586.y, x_586.w, x_586.x, x_586.w));
        let x_589 : vec4<f32> = u_xlat5;
        let x_592 : vec4<f32> = x_275.x_MainLightShadowmapSize;
        let x_595 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_589.x, x_589.y) * vec2<f32>(x_592.x, x_592.y)) + vec2<f32>(x_595.z, x_595.w));
        let x_599 : f32 = u_xlat7.y;
        u_xlat8.w = x_599;
        let x_601 : vec4<f32> = u_xlat8;
        let x_602 : vec2<f32> = vec2<f32>(x_601.y, x_601.z);
        let x_603 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_603.x, x_602.x, x_603.z, x_602.y);
        let x_605 : vec4<f32> = u_xlat5;
        let x_608 : vec4<f32> = x_275.x_MainLightShadowmapSize;
        let x_611 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_605.x, x_605.y, x_605.x, x_605.y) * vec4<f32>(x_608.x, x_608.y, x_608.x, x_608.y)) + vec4<f32>(x_611.x, x_611.y, x_611.z, x_611.y));
        let x_614 : vec4<f32> = u_xlat5;
        let x_617 : vec4<f32> = x_275.x_MainLightShadowmapSize;
        let x_620 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_614.x, x_614.y, x_614.x, x_614.y) * vec4<f32>(x_617.x, x_617.y, x_617.x, x_617.y)) + vec4<f32>(x_620.w, x_620.y, x_620.w, x_620.z));
        let x_623 : vec4<f32> = u_xlat5;
        let x_626 : vec4<f32> = x_275.x_MainLightShadowmapSize;
        let x_629 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_623.x, x_623.y, x_623.x, x_623.y) * vec4<f32>(x_626.x, x_626.y, x_626.x, x_626.y)) + vec4<f32>(x_629.x, x_629.w, x_629.z, x_629.w));
        let x_633 : vec4<f32> = u_xlat6;
        let x_635 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_633.x, x_633.x, x_633.x, x_633.y) * vec4<f32>(x_635.z, x_635.w, x_635.y, x_635.z));
        let x_639 : vec4<f32> = u_xlat6;
        let x_641 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_639.y, x_639.y, x_639.z, x_639.z) * x_641);
        let x_645 : f32 = u_xlat6.z;
        let x_647 : f32 = u_xlat11.y;
        u_xlat85 = (x_645 * x_647);
        let x_650 : vec4<f32> = u_xlat9;
        let x_651 : vec2<f32> = vec2<f32>(x_650.x, x_650.y);
        let x_653 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_651.x, x_651.y, x_653);
        let x_660 : vec3<f32> = txVec4;
        let x_662 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_660.xy, x_660.z);
        u_xlat5.x = x_662;
        let x_665 : vec4<f32> = u_xlat9;
        let x_666 : vec2<f32> = vec2<f32>(x_665.z, x_665.w);
        let x_668 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_666.x, x_666.y, x_668);
        let x_676 : vec3<f32> = txVec5;
        let x_678 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_676.xy, x_676.z);
        u_xlat32 = x_678;
        let x_679 : f32 = u_xlat32;
        let x_681 : f32 = u_xlat12.y;
        u_xlat32 = (x_679 * x_681);
        let x_684 : f32 = u_xlat12.x;
        let x_686 : f32 = u_xlat5.x;
        let x_688 : f32 = u_xlat32;
        u_xlat5.x = ((x_684 * x_686) + x_688);
        let x_692 : vec2<f32> = u_xlat59;
        let x_694 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_692.x, x_692.y, x_694);
        let x_701 : vec3<f32> = txVec6;
        let x_703 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_701.xy, x_701.z);
        u_xlat32 = x_703;
        let x_705 : f32 = u_xlat12.z;
        let x_706 : f32 = u_xlat32;
        let x_709 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_705 * x_706) + x_709);
        let x_713 : vec4<f32> = u_xlat8;
        let x_714 : vec2<f32> = vec2<f32>(x_713.x, x_713.y);
        let x_716 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_714.x, x_714.y, x_716);
        let x_723 : vec3<f32> = txVec7;
        let x_725 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_723.xy, x_723.z);
        u_xlat32 = x_725;
        let x_727 : f32 = u_xlat12.w;
        let x_728 : f32 = u_xlat32;
        let x_731 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_727 * x_728) + x_731);
        let x_735 : vec4<f32> = u_xlat10;
        let x_736 : vec2<f32> = vec2<f32>(x_735.x, x_735.y);
        let x_738 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_736.x, x_736.y, x_738);
        let x_745 : vec3<f32> = txVec8;
        let x_747 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_745.xy, x_745.z);
        u_xlat32 = x_747;
        let x_749 : f32 = u_xlat13.x;
        let x_750 : f32 = u_xlat32;
        let x_753 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_749 * x_750) + x_753);
        let x_757 : vec4<f32> = u_xlat10;
        let x_758 : vec2<f32> = vec2<f32>(x_757.z, x_757.w);
        let x_760 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_758.x, x_758.y, x_760);
        let x_767 : vec3<f32> = txVec9;
        let x_769 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_767.xy, x_767.z);
        u_xlat32 = x_769;
        let x_771 : f32 = u_xlat13.y;
        let x_772 : f32 = u_xlat32;
        let x_775 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_771 * x_772) + x_775);
        let x_779 : vec4<f32> = u_xlat8;
        let x_780 : vec2<f32> = vec2<f32>(x_779.z, x_779.w);
        let x_782 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_780.x, x_780.y, x_782);
        let x_789 : vec3<f32> = txVec10;
        let x_791 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_789.xy, x_789.z);
        u_xlat32 = x_791;
        let x_793 : f32 = u_xlat13.z;
        let x_794 : f32 = u_xlat32;
        let x_797 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_793 * x_794) + x_797);
        let x_801 : vec4<f32> = u_xlat7;
        let x_802 : vec2<f32> = vec2<f32>(x_801.x, x_801.y);
        let x_804 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_802.x, x_802.y, x_804);
        let x_811 : vec3<f32> = txVec11;
        let x_813 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_811.xy, x_811.z);
        u_xlat32 = x_813;
        let x_815 : f32 = u_xlat13.w;
        let x_816 : f32 = u_xlat32;
        let x_819 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_815 * x_816) + x_819);
        let x_823 : vec4<f32> = u_xlat7;
        let x_824 : vec2<f32> = vec2<f32>(x_823.z, x_823.w);
        let x_826 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_824.x, x_824.y, x_826);
        let x_833 : vec3<f32> = txVec12;
        let x_835 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_833.xy, x_833.z);
        u_xlat32 = x_835;
        let x_836 : f32 = u_xlat85;
        let x_837 : f32 = u_xlat32;
        let x_840 : f32 = u_xlat5.x;
        u_xlat84 = ((x_836 * x_837) + x_840);
      } else {
        let x_843 : vec4<f32> = vs_TEXCOORD8;
        let x_846 : vec4<f32> = x_275.x_MainLightShadowmapSize;
        let x_849 : vec2<f32> = ((vec2<f32>(x_843.x, x_843.y) * vec2<f32>(x_846.z, x_846.w)) + vec2<f32>(0.5f, 0.5f));
        let x_850 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_849.x, x_849.y, x_850.z, x_850.w);
        let x_852 : vec4<f32> = u_xlat5;
        let x_854 : vec2<f32> = floor(vec2<f32>(x_852.x, x_852.y));
        let x_855 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_854.x, x_854.y, x_855.z, x_855.w);
        let x_857 : vec4<f32> = vs_TEXCOORD8;
        let x_860 : vec4<f32> = x_275.x_MainLightShadowmapSize;
        let x_863 : vec4<f32> = u_xlat5;
        u_xlat59 = ((vec2<f32>(x_857.x, x_857.y) * vec2<f32>(x_860.z, x_860.w)) + -(vec2<f32>(x_863.x, x_863.y)));
        let x_867 : vec2<f32> = u_xlat59;
        u_xlat6 = (vec4<f32>(x_867.x, x_867.x, x_867.y, x_867.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_870 : vec4<f32> = u_xlat6;
        let x_872 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_870.x, x_870.x, x_870.z, x_870.z) * vec4<f32>(x_872.x, x_872.x, x_872.z, x_872.z));
        let x_875 : vec4<f32> = u_xlat7;
        let x_879 : vec2<f32> = (vec2<f32>(x_875.y, x_875.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_880 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_880.x, x_879.x, x_880.z, x_879.y);
        let x_882 : vec4<f32> = u_xlat7;
        let x_885 : vec2<f32> = u_xlat59;
        let x_887 : vec2<f32> = ((vec2<f32>(x_882.x, x_882.z) * vec2<f32>(0.5f, 0.5f)) + -(x_885));
        let x_888 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_887.x, x_888.y, x_887.y, x_888.w);
        let x_890 : vec2<f32> = u_xlat59;
        let x_892 : vec2<f32> = (-(x_890) + vec2<f32>(1.0f, 1.0f));
        let x_893 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_892.x, x_892.y, x_893.z, x_893.w);
        let x_895 : vec2<f32> = u_xlat59;
        u_xlat61 = min(x_895, vec2<f32>(0.0f, 0.0f));
        let x_897 : vec2<f32> = u_xlat61;
        let x_899 : vec2<f32> = u_xlat61;
        let x_901 : vec4<f32> = u_xlat7;
        let x_903 : vec2<f32> = ((-(x_897) * x_899) + vec2<f32>(x_901.x, x_901.y));
        let x_904 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_903.x, x_903.y, x_904.z, x_904.w);
        let x_906 : vec2<f32> = u_xlat59;
        u_xlat61 = max(x_906, vec2<f32>(0.0f, 0.0f));
        let x_909 : vec2<f32> = u_xlat61;
        let x_911 : vec2<f32> = u_xlat61;
        let x_913 : vec4<f32> = u_xlat6;
        let x_915 : vec2<f32> = ((-(x_909) * x_911) + vec2<f32>(x_913.y, x_913.w));
        let x_916 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_915.x, x_916.y, x_915.y);
        let x_918 : vec4<f32> = u_xlat7;
        let x_921 : vec2<f32> = (vec2<f32>(x_918.x, x_918.y) + vec2<f32>(2.0f, 2.0f));
        let x_922 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_921.x, x_921.y, x_922.z, x_922.w);
        let x_924 : vec3<f32> = u_xlat33;
        let x_926 : vec2<f32> = (vec2<f32>(x_924.x, x_924.z) + vec2<f32>(2.0f, 2.0f));
        let x_927 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_927.x, x_926.x, x_927.z, x_926.y);
        let x_930 : f32 = u_xlat6.y;
        u_xlat9.z = (x_930 * 0.08163200318813323975f);
        let x_934 : vec4<f32> = u_xlat6;
        let x_937 : vec3<f32> = (vec3<f32>(x_934.z, x_934.x, x_934.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_938 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_937.x, x_937.y, x_937.z, x_938.w);
        let x_940 : vec4<f32> = u_xlat7;
        let x_943 : vec2<f32> = (vec2<f32>(x_940.x, x_940.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_944 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_943.x, x_943.y, x_944.z, x_944.w);
        let x_947 : f32 = u_xlat10.y;
        u_xlat9.x = x_947;
        let x_949 : vec2<f32> = u_xlat59;
        let x_956 : vec2<f32> = ((vec2<f32>(x_949.x, x_949.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_957 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_957.x, x_956.x, x_957.z, x_956.y);
        let x_959 : vec2<f32> = u_xlat59;
        let x_963 : vec2<f32> = ((vec2<f32>(x_959.x, x_959.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_964 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_963.x, x_964.y, x_963.y, x_964.w);
        let x_967 : f32 = u_xlat6.x;
        u_xlat7.y = x_967;
        let x_970 : f32 = u_xlat8.y;
        u_xlat7.w = x_970;
        let x_972 : vec4<f32> = u_xlat7;
        let x_973 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_972 + x_973);
        let x_975 : vec2<f32> = u_xlat59;
        let x_978 : vec2<f32> = ((vec2<f32>(x_975.y, x_975.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_979 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_979.x, x_978.x, x_979.z, x_978.y);
        let x_981 : vec2<f32> = u_xlat59;
        let x_984 : vec2<f32> = ((vec2<f32>(x_981.y, x_981.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_985 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_984.x, x_985.y, x_984.y, x_985.w);
        let x_988 : f32 = u_xlat6.y;
        u_xlat8.y = x_988;
        let x_990 : vec4<f32> = u_xlat8;
        let x_991 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_990 + x_991);
        let x_993 : vec4<f32> = u_xlat7;
        let x_994 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_993 / x_994);
        let x_996 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_996 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1002 : vec4<f32> = u_xlat8;
        let x_1003 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1002 / x_1003);
        let x_1005 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1005 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1007 : vec4<f32> = u_xlat7;
        let x_1010 : vec4<f32> = x_275.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1007.w, x_1007.x, x_1007.y, x_1007.z) * vec4<f32>(x_1010.x, x_1010.x, x_1010.x, x_1010.x));
        let x_1013 : vec4<f32> = u_xlat8;
        let x_1016 : vec4<f32> = x_275.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1013.x, x_1013.w, x_1013.y, x_1013.z) * vec4<f32>(x_1016.y, x_1016.y, x_1016.y, x_1016.y));
        let x_1019 : vec4<f32> = u_xlat7;
        let x_1020 : vec3<f32> = vec3<f32>(x_1019.y, x_1019.z, x_1019.w);
        let x_1021 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1020.x, x_1021.y, x_1020.y, x_1020.z);
        let x_1024 : f32 = u_xlat8.x;
        u_xlat10.y = x_1024;
        let x_1026 : vec4<f32> = u_xlat5;
        let x_1029 : vec4<f32> = x_275.x_MainLightShadowmapSize;
        let x_1032 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1026.x, x_1026.y, x_1026.x, x_1026.y) * vec4<f32>(x_1029.x, x_1029.y, x_1029.x, x_1029.y)) + vec4<f32>(x_1032.x, x_1032.y, x_1032.z, x_1032.y));
        let x_1035 : vec4<f32> = u_xlat5;
        let x_1038 : vec4<f32> = x_275.x_MainLightShadowmapSize;
        let x_1041 : vec4<f32> = u_xlat10;
        u_xlat59 = ((vec2<f32>(x_1035.x, x_1035.y) * vec2<f32>(x_1038.x, x_1038.y)) + vec2<f32>(x_1041.w, x_1041.y));
        let x_1045 : f32 = u_xlat10.y;
        u_xlat7.y = x_1045;
        let x_1048 : f32 = u_xlat8.z;
        u_xlat10.y = x_1048;
        let x_1050 : vec4<f32> = u_xlat5;
        let x_1053 : vec4<f32> = x_275.x_MainLightShadowmapSize;
        let x_1056 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1050.x, x_1050.y, x_1050.x, x_1050.y) * vec4<f32>(x_1053.x, x_1053.y, x_1053.x, x_1053.y)) + vec4<f32>(x_1056.x, x_1056.y, x_1056.z, x_1056.y));
        let x_1059 : vec4<f32> = u_xlat5;
        let x_1062 : vec4<f32> = x_275.x_MainLightShadowmapSize;
        let x_1065 : vec4<f32> = u_xlat10;
        let x_1067 : vec2<f32> = ((vec2<f32>(x_1059.x, x_1059.y) * vec2<f32>(x_1062.x, x_1062.y)) + vec2<f32>(x_1065.w, x_1065.y));
        let x_1068 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1067.x, x_1067.y, x_1068.z, x_1068.w);
        let x_1071 : f32 = u_xlat10.y;
        u_xlat7.z = x_1071;
        let x_1074 : vec4<f32> = u_xlat5;
        let x_1077 : vec4<f32> = x_275.x_MainLightShadowmapSize;
        let x_1080 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1074.x, x_1074.y, x_1074.x, x_1074.y) * vec4<f32>(x_1077.x, x_1077.y, x_1077.x, x_1077.y)) + vec4<f32>(x_1080.x, x_1080.y, x_1080.x, x_1080.z));
        let x_1084 : f32 = u_xlat8.w;
        u_xlat10.y = x_1084;
        let x_1087 : vec4<f32> = u_xlat5;
        let x_1090 : vec4<f32> = x_275.x_MainLightShadowmapSize;
        let x_1093 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1087.x, x_1087.y, x_1087.x, x_1087.y) * vec4<f32>(x_1090.x, x_1090.y, x_1090.x, x_1090.y)) + vec4<f32>(x_1093.x, x_1093.y, x_1093.z, x_1093.y));
        let x_1097 : vec4<f32> = u_xlat5;
        let x_1100 : vec4<f32> = x_275.x_MainLightShadowmapSize;
        let x_1103 : vec4<f32> = u_xlat10;
        u_xlat34 = ((vec2<f32>(x_1097.x, x_1097.y) * vec2<f32>(x_1100.x, x_1100.y)) + vec2<f32>(x_1103.w, x_1103.y));
        let x_1107 : f32 = u_xlat10.y;
        u_xlat7.w = x_1107;
        let x_1110 : vec4<f32> = u_xlat5;
        let x_1113 : vec4<f32> = x_275.x_MainLightShadowmapSize;
        let x_1116 : vec4<f32> = u_xlat7;
        u_xlat67 = ((vec2<f32>(x_1110.x, x_1110.y) * vec2<f32>(x_1113.x, x_1113.y)) + vec2<f32>(x_1116.x, x_1116.w));
        let x_1119 : vec4<f32> = u_xlat10;
        let x_1120 : vec3<f32> = vec3<f32>(x_1119.x, x_1119.z, x_1119.w);
        let x_1121 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1120.x, x_1121.y, x_1120.y, x_1120.z);
        let x_1123 : vec4<f32> = u_xlat5;
        let x_1126 : vec4<f32> = x_275.x_MainLightShadowmapSize;
        let x_1129 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1123.x, x_1123.y, x_1123.x, x_1123.y) * vec4<f32>(x_1126.x, x_1126.y, x_1126.x, x_1126.y)) + vec4<f32>(x_1129.x, x_1129.y, x_1129.z, x_1129.y));
        let x_1133 : vec4<f32> = u_xlat5;
        let x_1136 : vec4<f32> = x_275.x_MainLightShadowmapSize;
        let x_1139 : vec4<f32> = u_xlat8;
        u_xlat62 = ((vec2<f32>(x_1133.x, x_1133.y) * vec2<f32>(x_1136.x, x_1136.y)) + vec2<f32>(x_1139.w, x_1139.y));
        let x_1143 : f32 = u_xlat7.x;
        u_xlat8.x = x_1143;
        let x_1145 : vec4<f32> = u_xlat5;
        let x_1148 : vec4<f32> = x_275.x_MainLightShadowmapSize;
        let x_1151 : vec4<f32> = u_xlat8;
        let x_1153 : vec2<f32> = ((vec2<f32>(x_1145.x, x_1145.y) * vec2<f32>(x_1148.x, x_1148.y)) + vec2<f32>(x_1151.x, x_1151.y));
        let x_1154 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1153.x, x_1153.y, x_1154.z, x_1154.w);
        let x_1157 : vec4<f32> = u_xlat6;
        let x_1159 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1157.x, x_1157.x, x_1157.x, x_1157.x) * x_1159);
        let x_1162 : vec4<f32> = u_xlat6;
        let x_1164 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1162.y, x_1162.y, x_1162.y, x_1162.y) * x_1164);
        let x_1167 : vec4<f32> = u_xlat6;
        let x_1169 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1167.z, x_1167.z, x_1167.z, x_1167.z) * x_1169);
        let x_1171 : vec4<f32> = u_xlat6;
        let x_1173 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1171.w, x_1171.w, x_1171.w, x_1171.w) * x_1173);
        let x_1176 : vec4<f32> = u_xlat11;
        let x_1177 : vec2<f32> = vec2<f32>(x_1176.x, x_1176.y);
        let x_1179 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1177.x, x_1177.y, x_1179);
        let x_1186 : vec3<f32> = txVec13;
        let x_1188 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1186.xy, x_1186.z);
        u_xlat85 = x_1188;
        let x_1190 : vec4<f32> = u_xlat11;
        let x_1191 : vec2<f32> = vec2<f32>(x_1190.z, x_1190.w);
        let x_1193 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1191.x, x_1191.y, x_1193);
        let x_1200 : vec3<f32> = txVec14;
        let x_1202 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1200.xy, x_1200.z);
        u_xlat7.x = x_1202;
        let x_1205 : f32 = u_xlat7.x;
        let x_1207 : f32 = u_xlat16.y;
        u_xlat7.x = (x_1205 * x_1207);
        let x_1211 : f32 = u_xlat16.x;
        let x_1212 : f32 = u_xlat85;
        let x_1215 : f32 = u_xlat7.x;
        u_xlat85 = ((x_1211 * x_1212) + x_1215);
        let x_1218 : vec2<f32> = u_xlat59;
        let x_1220 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1218.x, x_1218.y, x_1220);
        let x_1227 : vec3<f32> = txVec15;
        let x_1229 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1227.xy, x_1227.z);
        u_xlat59.x = x_1229;
        let x_1232 : f32 = u_xlat16.z;
        let x_1234 : f32 = u_xlat59.x;
        let x_1236 : f32 = u_xlat85;
        u_xlat85 = ((x_1232 * x_1234) + x_1236);
        let x_1239 : vec4<f32> = u_xlat14;
        let x_1240 : vec2<f32> = vec2<f32>(x_1239.x, x_1239.y);
        let x_1242 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1240.x, x_1240.y, x_1242);
        let x_1249 : vec3<f32> = txVec16;
        let x_1251 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1249.xy, x_1249.z);
        u_xlat59.x = x_1251;
        let x_1254 : f32 = u_xlat16.w;
        let x_1256 : f32 = u_xlat59.x;
        let x_1258 : f32 = u_xlat85;
        u_xlat85 = ((x_1254 * x_1256) + x_1258);
        let x_1261 : vec4<f32> = u_xlat12;
        let x_1262 : vec2<f32> = vec2<f32>(x_1261.x, x_1261.y);
        let x_1264 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1262.x, x_1262.y, x_1264);
        let x_1271 : vec3<f32> = txVec17;
        let x_1273 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1271.xy, x_1271.z);
        u_xlat59.x = x_1273;
        let x_1276 : f32 = u_xlat17.x;
        let x_1278 : f32 = u_xlat59.x;
        let x_1280 : f32 = u_xlat85;
        u_xlat85 = ((x_1276 * x_1278) + x_1280);
        let x_1283 : vec4<f32> = u_xlat12;
        let x_1284 : vec2<f32> = vec2<f32>(x_1283.z, x_1283.w);
        let x_1286 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1284.x, x_1284.y, x_1286);
        let x_1293 : vec3<f32> = txVec18;
        let x_1295 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1293.xy, x_1293.z);
        u_xlat59.x = x_1295;
        let x_1298 : f32 = u_xlat17.y;
        let x_1300 : f32 = u_xlat59.x;
        let x_1302 : f32 = u_xlat85;
        u_xlat85 = ((x_1298 * x_1300) + x_1302);
        let x_1305 : vec4<f32> = u_xlat13;
        let x_1306 : vec2<f32> = vec2<f32>(x_1305.x, x_1305.y);
        let x_1308 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1306.x, x_1306.y, x_1308);
        let x_1315 : vec3<f32> = txVec19;
        let x_1317 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1315.xy, x_1315.z);
        u_xlat59.x = x_1317;
        let x_1320 : f32 = u_xlat17.z;
        let x_1322 : f32 = u_xlat59.x;
        let x_1324 : f32 = u_xlat85;
        u_xlat85 = ((x_1320 * x_1322) + x_1324);
        let x_1327 : vec4<f32> = u_xlat14;
        let x_1328 : vec2<f32> = vec2<f32>(x_1327.z, x_1327.w);
        let x_1330 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1328.x, x_1328.y, x_1330);
        let x_1337 : vec3<f32> = txVec20;
        let x_1339 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1337.xy, x_1337.z);
        u_xlat59.x = x_1339;
        let x_1342 : f32 = u_xlat17.w;
        let x_1344 : f32 = u_xlat59.x;
        let x_1346 : f32 = u_xlat85;
        u_xlat85 = ((x_1342 * x_1344) + x_1346);
        let x_1349 : vec4<f32> = u_xlat15;
        let x_1350 : vec2<f32> = vec2<f32>(x_1349.x, x_1349.y);
        let x_1352 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1350.x, x_1350.y, x_1352);
        let x_1359 : vec3<f32> = txVec21;
        let x_1361 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1359.xy, x_1359.z);
        u_xlat59.x = x_1361;
        let x_1364 : f32 = u_xlat18.x;
        let x_1366 : f32 = u_xlat59.x;
        let x_1368 : f32 = u_xlat85;
        u_xlat85 = ((x_1364 * x_1366) + x_1368);
        let x_1371 : vec4<f32> = u_xlat15;
        let x_1372 : vec2<f32> = vec2<f32>(x_1371.z, x_1371.w);
        let x_1374 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1372.x, x_1372.y, x_1374);
        let x_1381 : vec3<f32> = txVec22;
        let x_1383 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1381.xy, x_1381.z);
        u_xlat59.x = x_1383;
        let x_1386 : f32 = u_xlat18.y;
        let x_1388 : f32 = u_xlat59.x;
        let x_1390 : f32 = u_xlat85;
        u_xlat85 = ((x_1386 * x_1388) + x_1390);
        let x_1393 : vec2<f32> = u_xlat34;
        let x_1395 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1393.x, x_1393.y, x_1395);
        let x_1402 : vec3<f32> = txVec23;
        let x_1404 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1402.xy, x_1402.z);
        u_xlat59.x = x_1404;
        let x_1407 : f32 = u_xlat18.z;
        let x_1409 : f32 = u_xlat59.x;
        let x_1411 : f32 = u_xlat85;
        u_xlat85 = ((x_1407 * x_1409) + x_1411);
        let x_1414 : vec2<f32> = u_xlat67;
        let x_1416 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1414.x, x_1414.y, x_1416);
        let x_1423 : vec3<f32> = txVec24;
        let x_1425 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1423.xy, x_1423.z);
        u_xlat59.x = x_1425;
        let x_1428 : f32 = u_xlat18.w;
        let x_1430 : f32 = u_xlat59.x;
        let x_1432 : f32 = u_xlat85;
        u_xlat85 = ((x_1428 * x_1430) + x_1432);
        let x_1435 : vec4<f32> = u_xlat10;
        let x_1436 : vec2<f32> = vec2<f32>(x_1435.x, x_1435.y);
        let x_1438 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1436.x, x_1436.y, x_1438);
        let x_1445 : vec3<f32> = txVec25;
        let x_1447 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1445.xy, x_1445.z);
        u_xlat59.x = x_1447;
        let x_1450 : f32 = u_xlat6.x;
        let x_1452 : f32 = u_xlat59.x;
        let x_1454 : f32 = u_xlat85;
        u_xlat85 = ((x_1450 * x_1452) + x_1454);
        let x_1457 : vec4<f32> = u_xlat10;
        let x_1458 : vec2<f32> = vec2<f32>(x_1457.z, x_1457.w);
        let x_1460 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1458.x, x_1458.y, x_1460);
        let x_1467 : vec3<f32> = txVec26;
        let x_1469 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1467.xy, x_1467.z);
        u_xlat59.x = x_1469;
        let x_1472 : f32 = u_xlat6.y;
        let x_1474 : f32 = u_xlat59.x;
        let x_1476 : f32 = u_xlat85;
        u_xlat85 = ((x_1472 * x_1474) + x_1476);
        let x_1479 : vec2<f32> = u_xlat62;
        let x_1481 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1479.x, x_1479.y, x_1481);
        let x_1488 : vec3<f32> = txVec27;
        let x_1490 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1488.xy, x_1488.z);
        u_xlat59.x = x_1490;
        let x_1493 : f32 = u_xlat6.z;
        let x_1495 : f32 = u_xlat59.x;
        let x_1497 : f32 = u_xlat85;
        u_xlat85 = ((x_1493 * x_1495) + x_1497);
        let x_1500 : vec4<f32> = u_xlat5;
        let x_1501 : vec2<f32> = vec2<f32>(x_1500.x, x_1500.y);
        let x_1503 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1501.x, x_1501.y, x_1503);
        let x_1510 : vec3<f32> = txVec28;
        let x_1512 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1510.xy, x_1510.z);
        u_xlat5.x = x_1512;
        let x_1515 : f32 = u_xlat6.w;
        let x_1517 : f32 = u_xlat5.x;
        let x_1519 : f32 = u_xlat85;
        u_xlat84 = ((x_1515 * x_1517) + x_1519);
      }
    }
  } else {
    let x_1523 : vec4<f32> = vs_TEXCOORD8;
    let x_1524 : vec2<f32> = vec2<f32>(x_1523.x, x_1523.y);
    let x_1526 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1524.x, x_1524.y, x_1526);
    let x_1533 : vec3<f32> = txVec29;
    let x_1535 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1533.xy, x_1533.z);
    u_xlat84 = x_1535;
  }
  let x_1537 : f32 = x_275.x_MainLightShadowParams.x;
  u_xlat85 = (-(x_1537) + 1.0f);
  let x_1540 : f32 = u_xlat84;
  let x_1542 : f32 = x_275.x_MainLightShadowParams.x;
  let x_1544 : f32 = u_xlat85;
  u_xlat84 = ((x_1540 * x_1542) + x_1544);
  let x_1547 : f32 = vs_TEXCOORD8.z;
  u_xlatb85 = (0.0f >= x_1547);
  let x_1551 : f32 = vs_TEXCOORD8.z;
  u_xlatb5 = (x_1551 >= 1.0f);
  let x_1553 : bool = u_xlatb85;
  let x_1554 : bool = u_xlatb5;
  u_xlatb85 = (x_1553 | x_1554);
  let x_1556 : bool = u_xlatb85;
  let x_1557 : f32 = u_xlat84;
  u_xlat84 = select(x_1557, 1.0f, x_1556);
  let x_1559 : vec3<f32> = vs_TEXCOORD7;
  let x_1563 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_1565 : vec3<f32> = (x_1559 + -(x_1563));
  let x_1566 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1565.x, x_1565.y, x_1565.z, x_1566.w);
  let x_1568 : vec4<f32> = u_xlat5;
  let x_1570 : vec4<f32> = u_xlat5;
  u_xlat85 = dot(vec3<f32>(x_1568.x, x_1568.y, x_1568.z), vec3<f32>(x_1570.x, x_1570.y, x_1570.z));
  let x_1573 : f32 = u_xlat85;
  let x_1575 : f32 = x_275.x_MainLightShadowParams.z;
  let x_1578 : f32 = x_275.x_MainLightShadowParams.w;
  u_xlat5.x = ((x_1573 * x_1575) + x_1578);
  let x_1582 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_1582, 0.0f, 1.0f);
  let x_1585 : f32 = u_xlat84;
  u_xlat32 = (-(x_1585) + 1.0f);
  let x_1589 : f32 = u_xlat5.x;
  let x_1590 : f32 = u_xlat32;
  let x_1592 : f32 = u_xlat84;
  u_xlat84 = ((x_1589 * x_1590) + x_1592);
  let x_1601 : f32 = x_1599.x_MainLightCookieTextureFormat;
  u_xlatb5 = !((x_1601 == -1.0f));
  let x_1604 : bool = u_xlatb5;
  if (x_1604) {
    let x_1607 : vec3<f32> = vs_TEXCOORD7;
    let x_1610 : vec4<f32> = x_1599.x_MainLightWorldToLight[1i];
    let x_1612 : vec2<f32> = (vec2<f32>(x_1607.y, x_1607.y) * vec2<f32>(x_1610.x, x_1610.y));
    let x_1613 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1612.x, x_1612.y, x_1613.z, x_1613.w);
    let x_1616 : vec4<f32> = x_1599.x_MainLightWorldToLight[0i];
    let x_1618 : vec3<f32> = vs_TEXCOORD7;
    let x_1621 : vec4<f32> = u_xlat5;
    let x_1623 : vec2<f32> = ((vec2<f32>(x_1616.x, x_1616.y) * vec2<f32>(x_1618.x, x_1618.x)) + vec2<f32>(x_1621.x, x_1621.y));
    let x_1624 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1623.x, x_1623.y, x_1624.z, x_1624.w);
    let x_1627 : vec4<f32> = x_1599.x_MainLightWorldToLight[2i];
    let x_1629 : vec3<f32> = vs_TEXCOORD7;
    let x_1632 : vec4<f32> = u_xlat5;
    let x_1634 : vec2<f32> = ((vec2<f32>(x_1627.x, x_1627.y) * vec2<f32>(x_1629.z, x_1629.z)) + vec2<f32>(x_1632.x, x_1632.y));
    let x_1635 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1634.x, x_1634.y, x_1635.z, x_1635.w);
    let x_1637 : vec4<f32> = u_xlat5;
    let x_1640 : vec4<f32> = x_1599.x_MainLightWorldToLight[3i];
    let x_1642 : vec2<f32> = (vec2<f32>(x_1637.x, x_1637.y) + vec2<f32>(x_1640.x, x_1640.y));
    let x_1643 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1642.x, x_1642.y, x_1643.z, x_1643.w);
    let x_1645 : vec4<f32> = u_xlat5;
    let x_1648 : vec2<f32> = ((vec2<f32>(x_1645.x, x_1645.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1649 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1648.x, x_1648.y, x_1649.z, x_1649.w);
    let x_1656 : vec4<f32> = u_xlat5;
    let x_1659 : f32 = x_29.x_GlobalMipBias.x;
    let x_1660 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1656.x, x_1656.y), x_1659);
    u_xlat5 = x_1660;
    let x_1665 : f32 = x_1599.x_MainLightCookieTextureFormat;
    let x_1667 : f32 = x_1599.x_MainLightCookieTextureFormat;
    let x_1669 : f32 = x_1599.x_MainLightCookieTextureFormat;
    let x_1671 : f32 = x_1599.x_MainLightCookieTextureFormat;
    let x_1672 : vec4<f32> = vec4<f32>(x_1665, x_1667, x_1669, x_1671);
    let x_1680 : vec4<bool> = (vec4<f32>(x_1672.x, x_1672.y, x_1672.z, x_1672.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb6 = vec2<bool>(x_1680.x, x_1680.y);
    let x_1684 : bool = u_xlatb6.y;
    if (x_1684) {
      let x_1690 : f32 = u_xlat5.w;
      x_1686 = x_1690;
    } else {
      let x_1693 : f32 = u_xlat5.x;
      x_1686 = x_1693;
    }
    let x_1694 : f32 = x_1686;
    u_xlat86 = x_1694;
    let x_1696 : bool = u_xlatb6.x;
    if (x_1696) {
      let x_1700 : vec4<f32> = u_xlat5;
      x_1697 = vec3<f32>(x_1700.x, x_1700.y, x_1700.z);
    } else {
      let x_1703 : f32 = u_xlat86;
      x_1697 = vec3<f32>(x_1703, x_1703, x_1703);
    }
    let x_1705 : vec3<f32> = x_1697;
    let x_1706 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1705.x, x_1705.y, x_1705.z, x_1706.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_1712 : vec4<f32> = u_xlat5;
  let x_1715 : vec4<f32> = x_29.x_MainLightColor;
  let x_1717 : vec3<f32> = (vec3<f32>(x_1712.x, x_1712.y, x_1712.z) * vec3<f32>(x_1715.x, x_1715.y, x_1715.z));
  let x_1718 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1717.x, x_1717.y, x_1717.z, x_1718.w);
  let x_1721 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_1721;
  let x_1725 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_1725;
  let x_1729 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_1729;
  let x_1731 : vec4<f32> = u_xlat6;
  let x_1734 : vec4<f32> = u_xlat2;
  u_xlat86 = dot(-(vec3<f32>(x_1731.x, x_1731.y, x_1731.z)), vec3<f32>(x_1734.x, x_1734.y, x_1734.z));
  let x_1737 : f32 = u_xlat86;
  let x_1738 : f32 = u_xlat86;
  u_xlat86 = (x_1737 + x_1738);
  let x_1740 : vec4<f32> = u_xlat2;
  let x_1742 : f32 = u_xlat86;
  let x_1746 : vec4<f32> = u_xlat6;
  let x_1749 : vec3<f32> = ((vec3<f32>(x_1740.x, x_1740.y, x_1740.z) * -(vec3<f32>(x_1742, x_1742, x_1742))) + -(vec3<f32>(x_1746.x, x_1746.y, x_1746.z)));
  let x_1750 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1749.x, x_1749.y, x_1749.z, x_1750.w);
  let x_1752 : vec4<f32> = u_xlat2;
  let x_1754 : vec4<f32> = u_xlat6;
  u_xlat86 = dot(vec3<f32>(x_1752.x, x_1752.y, x_1752.z), vec3<f32>(x_1754.x, x_1754.y, x_1754.z));
  let x_1757 : f32 = u_xlat86;
  u_xlat86 = clamp(x_1757, 0.0f, 1.0f);
  let x_1759 : f32 = u_xlat86;
  u_xlat86 = (-(x_1759) + 1.0f);
  let x_1762 : f32 = u_xlat86;
  let x_1763 : f32 = u_xlat86;
  u_xlat86 = (x_1762 * x_1763);
  let x_1765 : f32 = u_xlat86;
  let x_1766 : f32 = u_xlat86;
  u_xlat86 = (x_1765 * x_1766);
  let x_1770 : f32 = u_xlat1.x;
  u_xlat87 = ((-(x_1770) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1777 : f32 = u_xlat1.x;
  let x_1778 : f32 = u_xlat87;
  u_xlat1.x = (x_1777 * x_1778);
  let x_1782 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1782 * 6.0f);
  let x_1794 : vec4<f32> = u_xlat7;
  let x_1797 : f32 = u_xlat1.x;
  let x_1798 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1794.x, x_1794.y, x_1794.z), x_1797);
  u_xlat7 = x_1798;
  let x_1800 : f32 = u_xlat7.w;
  u_xlat1.x = (x_1800 + -1.0f);
  let x_1804 : f32 = x_124.unity_SpecCube0_HDR.w;
  let x_1806 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1804 * x_1806) + 1.0f);
  let x_1811 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_1811, 0.0f);
  let x_1815 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_1815);
  let x_1819 : f32 = u_xlat1.x;
  let x_1821 : f32 = x_124.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_1819 * x_1821);
  let x_1825 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1825);
  let x_1829 : f32 = u_xlat1.x;
  let x_1831 : f32 = x_124.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_1829 * x_1831);
  let x_1834 : vec4<f32> = u_xlat7;
  let x_1836 : vec3<f32> = u_xlat1;
  let x_1838 : vec3<f32> = (vec3<f32>(x_1834.x, x_1834.y, x_1834.z) * vec3<f32>(x_1836.x, x_1836.x, x_1836.x));
  let x_1839 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1838.x, x_1838.y, x_1838.z, x_1839.w);
  let x_1841 : f32 = u_xlat55;
  let x_1843 : f32 = u_xlat55;
  let x_1847 : vec2<f32> = ((vec2<f32>(x_1841, x_1841) * vec2<f32>(x_1843, x_1843)) + vec2<f32>(-1.0f, 1.0f));
  let x_1848 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1847.x, x_1848.y, x_1847.y);
  let x_1851 : f32 = u_xlat1.z;
  u_xlat55 = (1.0f / x_1851);
  let x_1853 : vec4<f32> = u_xlat0;
  let x_1856 : f32 = u_xlat81;
  let x_1858 : vec3<f32> = (-(vec3<f32>(x_1853.x, x_1853.y, x_1853.z)) + vec3<f32>(x_1856, x_1856, x_1856));
  let x_1859 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1858.x, x_1858.y, x_1858.z, x_1859.w);
  let x_1861 : f32 = u_xlat86;
  let x_1863 : vec4<f32> = u_xlat8;
  let x_1866 : vec4<f32> = u_xlat0;
  let x_1868 : vec3<f32> = ((vec3<f32>(x_1861, x_1861, x_1861) * vec3<f32>(x_1863.x, x_1863.y, x_1863.z)) + vec3<f32>(x_1866.x, x_1866.y, x_1866.z));
  let x_1869 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1868.x, x_1868.y, x_1868.z, x_1869.w);
  let x_1871 : f32 = u_xlat55;
  let x_1873 : vec4<f32> = u_xlat8;
  let x_1875 : vec3<f32> = (vec3<f32>(x_1871, x_1871, x_1871) * vec3<f32>(x_1873.x, x_1873.y, x_1873.z));
  let x_1876 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1875.x, x_1875.y, x_1875.z, x_1876.w);
  let x_1878 : vec4<f32> = u_xlat7;
  let x_1880 : vec4<f32> = u_xlat8;
  let x_1882 : vec3<f32> = (vec3<f32>(x_1878.x, x_1878.y, x_1878.z) * vec3<f32>(x_1880.x, x_1880.y, x_1880.z));
  let x_1883 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1882.x, x_1882.y, x_1882.z, x_1883.w);
  let x_1885 : vec3<f32> = u_xlat3;
  let x_1886 : vec4<f32> = u_xlat4;
  let x_1889 : vec4<f32> = u_xlat7;
  u_xlat3 = ((x_1885 * vec3<f32>(x_1886.x, x_1886.y, x_1886.z)) + vec3<f32>(x_1889.x, x_1889.y, x_1889.z));
  let x_1892 : f32 = u_xlat84;
  let x_1894 : f32 = x_124.unity_LightData.z;
  u_xlat81 = (x_1892 * x_1894);
  let x_1896 : vec4<f32> = u_xlat2;
  let x_1899 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat55 = dot(vec3<f32>(x_1896.x, x_1896.y, x_1896.z), vec3<f32>(x_1899.x, x_1899.y, x_1899.z));
  let x_1902 : f32 = u_xlat55;
  u_xlat55 = clamp(x_1902, 0.0f, 1.0f);
  let x_1904 : f32 = u_xlat81;
  let x_1905 : f32 = u_xlat55;
  u_xlat81 = (x_1904 * x_1905);
  let x_1907 : f32 = u_xlat81;
  let x_1909 : vec4<f32> = u_xlat5;
  let x_1911 : vec3<f32> = (vec3<f32>(x_1907, x_1907, x_1907) * vec3<f32>(x_1909.x, x_1909.y, x_1909.z));
  let x_1912 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1911.x, x_1911.y, x_1911.z, x_1912.w);
  let x_1914 : vec4<f32> = u_xlat6;
  let x_1917 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1919 : vec3<f32> = (vec3<f32>(x_1914.x, x_1914.y, x_1914.z) + vec3<f32>(x_1917.x, x_1917.y, x_1917.z));
  let x_1920 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1919.x, x_1919.y, x_1919.z, x_1920.w);
  let x_1922 : vec4<f32> = u_xlat7;
  let x_1924 : vec4<f32> = u_xlat7;
  u_xlat81 = dot(vec3<f32>(x_1922.x, x_1922.y, x_1922.z), vec3<f32>(x_1924.x, x_1924.y, x_1924.z));
  let x_1927 : f32 = u_xlat81;
  u_xlat81 = max(x_1927, 1.17549435e-38f);
  let x_1930 : f32 = u_xlat81;
  u_xlat81 = inverseSqrt(x_1930);
  let x_1932 : f32 = u_xlat81;
  let x_1934 : vec4<f32> = u_xlat7;
  let x_1936 : vec3<f32> = (vec3<f32>(x_1932, x_1932, x_1932) * vec3<f32>(x_1934.x, x_1934.y, x_1934.z));
  let x_1937 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1936.x, x_1936.y, x_1936.z, x_1937.w);
  let x_1939 : vec4<f32> = u_xlat2;
  let x_1941 : vec4<f32> = u_xlat7;
  u_xlat81 = dot(vec3<f32>(x_1939.x, x_1939.y, x_1939.z), vec3<f32>(x_1941.x, x_1941.y, x_1941.z));
  let x_1944 : f32 = u_xlat81;
  u_xlat81 = clamp(x_1944, 0.0f, 1.0f);
  let x_1947 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1949 : vec4<f32> = u_xlat7;
  u_xlat55 = dot(vec3<f32>(x_1947.x, x_1947.y, x_1947.z), vec3<f32>(x_1949.x, x_1949.y, x_1949.z));
  let x_1952 : f32 = u_xlat55;
  u_xlat55 = clamp(x_1952, 0.0f, 1.0f);
  let x_1954 : f32 = u_xlat81;
  let x_1955 : f32 = u_xlat81;
  u_xlat81 = (x_1954 * x_1955);
  let x_1957 : f32 = u_xlat81;
  let x_1959 : f32 = u_xlat1.x;
  u_xlat81 = ((x_1957 * x_1959) + 1.00001001358032226562f);
  let x_1963 : f32 = u_xlat55;
  let x_1964 : f32 = u_xlat55;
  u_xlat55 = (x_1963 * x_1964);
  let x_1966 : f32 = u_xlat81;
  let x_1967 : f32 = u_xlat81;
  u_xlat81 = (x_1966 * x_1967);
  let x_1969 : f32 = u_xlat55;
  u_xlat55 = max(x_1969, 0.10000000149011611938f);
  let x_1972 : f32 = u_xlat81;
  let x_1973 : f32 = u_xlat55;
  u_xlat81 = (x_1972 * x_1973);
  let x_1975 : f32 = u_xlat82;
  let x_1976 : f32 = u_xlat81;
  u_xlat81 = (x_1975 * x_1976);
  let x_1978 : f32 = u_xlat83;
  let x_1979 : f32 = u_xlat81;
  u_xlat81 = (x_1978 / x_1979);
  let x_1981 : vec4<f32> = u_xlat0;
  let x_1983 : f32 = u_xlat81;
  let x_1986 : vec4<f32> = u_xlat4;
  let x_1988 : vec3<f32> = ((vec3<f32>(x_1981.x, x_1981.y, x_1981.z) * vec3<f32>(x_1983, x_1983, x_1983)) + vec3<f32>(x_1986.x, x_1986.y, x_1986.z));
  let x_1989 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1988.x, x_1988.y, x_1988.z, x_1989.w);
  let x_1992 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_1994 : f32 = x_124.unity_LightData.y;
  u_xlat81 = min(x_1992, x_1994);
  let x_1998 : f32 = u_xlat81;
  u_xlatu81 = bitcast<u32>(i32(x_1998));
  let x_2001 : f32 = u_xlat85;
  let x_2004 : f32 = x_275.x_AdditionalShadowFadeParams.x;
  let x_2007 : f32 = x_275.x_AdditionalShadowFadeParams.y;
  u_xlat55 = ((x_2001 * x_2004) + x_2007);
  let x_2009 : f32 = u_xlat55;
  u_xlat55 = clamp(x_2009, 0.0f, 1.0f);
  let x_2013 : f32 = x_1599.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2015 : f32 = x_1599.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2017 : f32 = x_1599.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2019 : f32 = x_1599.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2020 : vec4<f32> = vec4<f32>(x_2013, x_2015, x_2017, x_2019);
  let x_2026 : vec4<bool> = (vec4<f32>(x_2020.x, x_2020.y, x_2020.z, x_2020.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb8 = vec2<bool>(x_2026.x, x_2026.y);
  u_xlat9.x = 0.0f;
  u_xlat9.y = 0.0f;
  u_xlat9.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2038 : u32 = u_xlatu_loop_1;
    let x_2039 : u32 = u_xlatu81;
    if ((x_2038 < x_2039)) {
    } else {
      break;
    }
    let x_2042 : u32 = u_xlatu_loop_1;
    u_xlatu85 = (x_2042 >> 2u);
    let x_2046 : u32 = u_xlatu_loop_1;
    u_xlati86 = bitcast<i32>((x_2046 & 3u));
    let x_2049 : u32 = u_xlatu85;
    let x_2052 : vec4<f32> = x_124.unity_LightIndices[bitcast<i32>(x_2049)];
    let x_2062 : i32 = u_xlati86;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2067 : vec4<u32> = indexable[x_2062];
    u_xlat85 = dot(x_2052, bitcast<vec4<f32>>(x_2067));
    let x_2071 : f32 = u_xlat85;
    u_xlati85 = i32(x_2071);
    let x_2073 : vec3<f32> = vs_TEXCOORD7;
    let x_2084 : i32 = u_xlati85;
    let x_2086 : vec4<f32> = x_2083.x_AdditionalLightsPosition[x_2084];
    let x_2089 : i32 = u_xlati85;
    let x_2091 : vec4<f32> = x_2083.x_AdditionalLightsPosition[x_2089];
    let x_2093 : vec3<f32> = ((-(x_2073) * vec3<f32>(x_2086.w, x_2086.w, x_2086.w)) + vec3<f32>(x_2091.x, x_2091.y, x_2091.z));
    let x_2094 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2093.x, x_2093.y, x_2093.z, x_2094.w);
    let x_2096 : vec4<f32> = u_xlat10;
    let x_2098 : vec4<f32> = u_xlat10;
    u_xlat86 = dot(vec3<f32>(x_2096.x, x_2096.y, x_2096.z), vec3<f32>(x_2098.x, x_2098.y, x_2098.z));
    let x_2101 : f32 = u_xlat86;
    u_xlat86 = max(x_2101, 0.00006103515625f);
    let x_2104 : f32 = u_xlat86;
    u_xlat87 = inverseSqrt(x_2104);
    let x_2106 : f32 = u_xlat87;
    let x_2108 : vec4<f32> = u_xlat10;
    let x_2110 : vec3<f32> = (vec3<f32>(x_2106, x_2106, x_2106) * vec3<f32>(x_2108.x, x_2108.y, x_2108.z));
    let x_2111 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2110.x, x_2110.y, x_2110.z, x_2111.w);
    let x_2114 : f32 = u_xlat86;
    u_xlat88 = (1.0f / x_2114);
    let x_2116 : f32 = u_xlat86;
    let x_2117 : i32 = u_xlati85;
    let x_2119 : f32 = x_2083.x_AdditionalLightsAttenuation[x_2117].x;
    u_xlat86 = (x_2116 * x_2119);
    let x_2121 : f32 = u_xlat86;
    let x_2123 : f32 = u_xlat86;
    u_xlat86 = ((-(x_2121) * x_2123) + 1.0f);
    let x_2126 : f32 = u_xlat86;
    u_xlat86 = max(x_2126, 0.0f);
    let x_2128 : f32 = u_xlat86;
    let x_2129 : f32 = u_xlat86;
    u_xlat86 = (x_2128 * x_2129);
    let x_2131 : f32 = u_xlat86;
    let x_2132 : f32 = u_xlat88;
    u_xlat86 = (x_2131 * x_2132);
    let x_2134 : i32 = u_xlati85;
    let x_2136 : vec4<f32> = x_2083.x_AdditionalLightsSpotDir[x_2134];
    let x_2138 : vec4<f32> = u_xlat11;
    u_xlat88 = dot(vec3<f32>(x_2136.x, x_2136.y, x_2136.z), vec3<f32>(x_2138.x, x_2138.y, x_2138.z));
    let x_2141 : f32 = u_xlat88;
    let x_2142 : i32 = u_xlati85;
    let x_2144 : f32 = x_2083.x_AdditionalLightsAttenuation[x_2142].z;
    let x_2146 : i32 = u_xlati85;
    let x_2148 : f32 = x_2083.x_AdditionalLightsAttenuation[x_2146].w;
    u_xlat88 = ((x_2141 * x_2144) + x_2148);
    let x_2150 : f32 = u_xlat88;
    u_xlat88 = clamp(x_2150, 0.0f, 1.0f);
    let x_2152 : f32 = u_xlat88;
    let x_2153 : f32 = u_xlat88;
    u_xlat88 = (x_2152 * x_2153);
    let x_2155 : f32 = u_xlat86;
    let x_2156 : f32 = u_xlat88;
    u_xlat86 = (x_2155 * x_2156);
    let x_2160 : i32 = u_xlati85;
    let x_2162 : f32 = x_275.x_AdditionalShadowParams[x_2160].w;
    u_xlati88 = i32(x_2162);
    let x_2165 : i32 = u_xlati88;
    u_xlatb62 = (x_2165 >= 0i);
    let x_2167 : bool = u_xlatb62;
    if (x_2167) {
      let x_2171 : i32 = u_xlati85;
      let x_2173 : f32 = x_275.x_AdditionalShadowParams[x_2171].z;
      u_xlatb62 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2173, x_2173, x_2173, x_2173))));
      let x_2177 : bool = u_xlatb62;
      if (x_2177) {
        let x_2182 : vec4<f32> = u_xlat11;
        let x_2185 : vec4<f32> = u_xlat11;
        let x_2188 : vec4<bool> = (abs(vec4<f32>(x_2182.z, x_2182.z, x_2182.y, x_2182.z)) >= abs(vec4<f32>(x_2185.x, x_2185.y, x_2185.x, x_2185.x)));
        let x_2190 : vec3<bool> = vec3<bool>(x_2188.x, x_2188.y, x_2188.z);
        let x_2191 : vec4<bool> = u_xlatb12;
        u_xlatb12 = vec4<bool>(x_2190.x, x_2190.y, x_2190.z, x_2191.w);
        let x_2194 : bool = u_xlatb12.y;
        let x_2196 : bool = u_xlatb12.x;
        u_xlatb62 = (x_2194 & x_2196);
        let x_2198 : vec4<f32> = u_xlat11;
        let x_2201 : vec4<bool> = (-(vec4<f32>(x_2198.z, x_2198.y, x_2198.z, x_2198.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2202 : vec3<bool> = vec3<bool>(x_2201.x, x_2201.y, x_2201.w);
        let x_2203 : vec4<bool> = u_xlatb12;
        u_xlatb12 = vec4<bool>(x_2202.x, x_2202.y, x_2203.z, x_2202.z);
        let x_2206 : bool = u_xlatb12.x;
        u_xlat12.x = select(4.0f, 5.0f, x_2206);
        let x_2211 : bool = u_xlatb12.y;
        u_xlat12.y = select(2.0f, 3.0f, x_2211);
        let x_2217 : bool = u_xlatb12.w;
        u_xlat89 = select(0.0f, 1.0f, x_2217);
        let x_2220 : bool = u_xlatb12.z;
        if (x_2220) {
          let x_2225 : f32 = u_xlat12.y;
          x_2221 = x_2225;
        } else {
          let x_2227 : f32 = u_xlat89;
          x_2221 = x_2227;
        }
        let x_2228 : f32 = x_2221;
        u_xlat89 = x_2228;
        let x_2229 : bool = u_xlatb62;
        if (x_2229) {
          let x_2234 : f32 = u_xlat12.x;
          x_2230 = x_2234;
        } else {
          let x_2236 : f32 = u_xlat89;
          x_2230 = x_2236;
        }
        let x_2237 : f32 = x_2230;
        u_xlat62.x = x_2237;
        let x_2239 : i32 = u_xlati85;
        let x_2241 : f32 = x_275.x_AdditionalShadowParams[x_2239].w;
        u_xlat89 = trunc(x_2241);
        let x_2244 : f32 = u_xlat62.x;
        let x_2245 : f32 = u_xlat89;
        u_xlat62.x = (x_2244 + x_2245);
        let x_2249 : f32 = u_xlat62.x;
        u_xlati88 = i32(x_2249);
      }
      let x_2251 : i32 = u_xlati88;
      u_xlati88 = (x_2251 << bitcast<u32>(2i));
      let x_2253 : vec3<f32> = vs_TEXCOORD7;
      let x_2256 : i32 = u_xlati88;
      let x_2259 : i32 = u_xlati88;
      let x_2263 : vec4<f32> = x_275.x_AdditionalLightsWorldToShadow[((x_2256 + 1i) / 4i)][((x_2259 + 1i) % 4i)];
      u_xlat12 = (vec4<f32>(x_2253.y, x_2253.y, x_2253.y, x_2253.y) * x_2263);
      let x_2265 : i32 = u_xlati88;
      let x_2267 : i32 = u_xlati88;
      let x_2270 : vec4<f32> = x_275.x_AdditionalLightsWorldToShadow[(x_2265 / 4i)][(x_2267 % 4i)];
      let x_2271 : vec3<f32> = vs_TEXCOORD7;
      let x_2274 : vec4<f32> = u_xlat12;
      u_xlat12 = ((x_2270 * vec4<f32>(x_2271.x, x_2271.x, x_2271.x, x_2271.x)) + x_2274);
      let x_2276 : i32 = u_xlati88;
      let x_2279 : i32 = u_xlati88;
      let x_2283 : vec4<f32> = x_275.x_AdditionalLightsWorldToShadow[((x_2276 + 2i) / 4i)][((x_2279 + 2i) % 4i)];
      let x_2284 : vec3<f32> = vs_TEXCOORD7;
      let x_2287 : vec4<f32> = u_xlat12;
      u_xlat12 = ((x_2283 * vec4<f32>(x_2284.z, x_2284.z, x_2284.z, x_2284.z)) + x_2287);
      let x_2289 : vec4<f32> = u_xlat12;
      let x_2290 : i32 = u_xlati88;
      let x_2293 : i32 = u_xlati88;
      let x_2297 : vec4<f32> = x_275.x_AdditionalLightsWorldToShadow[((x_2290 + 3i) / 4i)][((x_2293 + 3i) % 4i)];
      u_xlat12 = (x_2289 + x_2297);
      let x_2299 : vec4<f32> = u_xlat12;
      let x_2301 : vec4<f32> = u_xlat12;
      let x_2303 : vec3<f32> = (vec3<f32>(x_2299.x, x_2299.y, x_2299.z) / vec3<f32>(x_2301.w, x_2301.w, x_2301.w));
      let x_2304 : vec4<f32> = u_xlat12;
      u_xlat12 = vec4<f32>(x_2303.x, x_2303.y, x_2303.z, x_2304.w);
      let x_2307 : i32 = u_xlati85;
      let x_2309 : f32 = x_275.x_AdditionalShadowParams[x_2307].y;
      u_xlatb88 = (0.0f < x_2309);
      let x_2311 : bool = u_xlatb88;
      if (x_2311) {
        let x_2314 : i32 = u_xlati85;
        let x_2316 : f32 = x_275.x_AdditionalShadowParams[x_2314].y;
        u_xlatb88 = (1.0f == x_2316);
        let x_2318 : bool = u_xlatb88;
        if (x_2318) {
          let x_2321 : vec4<f32> = u_xlat12;
          let x_2325 : vec4<f32> = x_275.x_AdditionalShadowOffset0;
          u_xlat13 = (vec4<f32>(x_2321.x, x_2321.y, x_2321.x, x_2321.y) + x_2325);
          let x_2328 : vec4<f32> = u_xlat13;
          let x_2329 : vec2<f32> = vec2<f32>(x_2328.x, x_2328.y);
          let x_2331 : f32 = u_xlat12.z;
          txVec30 = vec3<f32>(x_2329.x, x_2329.y, x_2331);
          let x_2339 : vec3<f32> = txVec30;
          let x_2341 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2339.xy, x_2339.z);
          u_xlat14.x = x_2341;
          let x_2344 : vec4<f32> = u_xlat13;
          let x_2345 : vec2<f32> = vec2<f32>(x_2344.z, x_2344.w);
          let x_2347 : f32 = u_xlat12.z;
          txVec31 = vec3<f32>(x_2345.x, x_2345.y, x_2347);
          let x_2354 : vec3<f32> = txVec31;
          let x_2356 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2354.xy, x_2354.z);
          u_xlat14.y = x_2356;
          let x_2358 : vec4<f32> = u_xlat12;
          let x_2362 : vec4<f32> = x_275.x_AdditionalShadowOffset1;
          u_xlat13 = (vec4<f32>(x_2358.x, x_2358.y, x_2358.x, x_2358.y) + x_2362);
          let x_2365 : vec4<f32> = u_xlat13;
          let x_2366 : vec2<f32> = vec2<f32>(x_2365.x, x_2365.y);
          let x_2368 : f32 = u_xlat12.z;
          txVec32 = vec3<f32>(x_2366.x, x_2366.y, x_2368);
          let x_2375 : vec3<f32> = txVec32;
          let x_2377 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2375.xy, x_2375.z);
          u_xlat14.z = x_2377;
          let x_2380 : vec4<f32> = u_xlat13;
          let x_2381 : vec2<f32> = vec2<f32>(x_2380.z, x_2380.w);
          let x_2383 : f32 = u_xlat12.z;
          txVec33 = vec3<f32>(x_2381.x, x_2381.y, x_2383);
          let x_2390 : vec3<f32> = txVec33;
          let x_2392 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2390.xy, x_2390.z);
          u_xlat14.w = x_2392;
          let x_2394 : vec4<f32> = u_xlat14;
          u_xlat88 = dot(x_2394, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2397 : i32 = u_xlati85;
          let x_2399 : f32 = x_275.x_AdditionalShadowParams[x_2397].y;
          u_xlatb62 = (2.0f == x_2399);
          let x_2401 : bool = u_xlatb62;
          if (x_2401) {
            let x_2404 : vec4<f32> = u_xlat12;
            let x_2408 : vec4<f32> = x_275.x_AdditionalShadowmapSize;
            u_xlat62 = ((vec2<f32>(x_2404.x, x_2404.y) * vec2<f32>(x_2408.z, x_2408.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2412 : vec2<f32> = u_xlat62;
            u_xlat62 = floor(x_2412);
            let x_2414 : vec4<f32> = u_xlat12;
            let x_2417 : vec4<f32> = x_275.x_AdditionalShadowmapSize;
            let x_2420 : vec2<f32> = u_xlat62;
            let x_2422 : vec2<f32> = ((vec2<f32>(x_2414.x, x_2414.y) * vec2<f32>(x_2417.z, x_2417.w)) + -(x_2420));
            let x_2423 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2422.x, x_2422.y, x_2423.z, x_2423.w);
            let x_2425 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2425.x, x_2425.x, x_2425.y, x_2425.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2428 : vec4<f32> = u_xlat14;
            let x_2430 : vec4<f32> = u_xlat14;
            u_xlat15 = (vec4<f32>(x_2428.x, x_2428.x, x_2428.z, x_2428.z) * vec4<f32>(x_2430.x, x_2430.x, x_2430.z, x_2430.z));
            let x_2433 : vec4<f32> = u_xlat15;
            u_xlat67 = (vec2<f32>(x_2433.y, x_2433.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2436 : vec4<f32> = u_xlat15;
            let x_2439 : vec4<f32> = u_xlat13;
            let x_2442 : vec2<f32> = ((vec2<f32>(x_2436.x, x_2436.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2439.x, x_2439.y)));
            let x_2443 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2442.x, x_2443.y, x_2442.y, x_2443.w);
            let x_2445 : vec4<f32> = u_xlat13;
            let x_2448 : vec2<f32> = (-(vec2<f32>(x_2445.x, x_2445.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2449 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2448.x, x_2448.y, x_2449.z, x_2449.w);
            let x_2452 : vec4<f32> = u_xlat13;
            u_xlat69 = min(vec2<f32>(x_2452.x, x_2452.y), vec2<f32>(0.0f, 0.0f));
            let x_2455 : vec2<f32> = u_xlat69;
            let x_2457 : vec2<f32> = u_xlat69;
            let x_2459 : vec4<f32> = u_xlat15;
            u_xlat69 = ((-(x_2455) * x_2457) + vec2<f32>(x_2459.x, x_2459.y));
            let x_2462 : vec4<f32> = u_xlat13;
            let x_2464 : vec2<f32> = max(vec2<f32>(x_2462.x, x_2462.y), vec2<f32>(0.0f, 0.0f));
            let x_2465 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2464.x, x_2464.y, x_2465.z, x_2465.w);
            let x_2467 : vec4<f32> = u_xlat13;
            let x_2470 : vec4<f32> = u_xlat13;
            let x_2473 : vec4<f32> = u_xlat14;
            let x_2475 : vec2<f32> = ((-(vec2<f32>(x_2467.x, x_2467.y)) * vec2<f32>(x_2470.x, x_2470.y)) + vec2<f32>(x_2473.y, x_2473.w));
            let x_2476 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2475.x, x_2475.y, x_2476.z, x_2476.w);
            let x_2478 : vec2<f32> = u_xlat69;
            u_xlat69 = (x_2478 + vec2<f32>(1.0f, 1.0f));
            let x_2480 : vec4<f32> = u_xlat13;
            let x_2482 : vec2<f32> = (vec2<f32>(x_2480.x, x_2480.y) + vec2<f32>(1.0f, 1.0f));
            let x_2483 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2482.x, x_2482.y, x_2483.z, x_2483.w);
            let x_2485 : vec4<f32> = u_xlat14;
            let x_2487 : vec2<f32> = (vec2<f32>(x_2485.x, x_2485.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2488 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2487.x, x_2487.y, x_2488.z, x_2488.w);
            let x_2490 : vec4<f32> = u_xlat15;
            let x_2492 : vec2<f32> = (vec2<f32>(x_2490.x, x_2490.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2493 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2492.x, x_2492.y, x_2493.z, x_2493.w);
            let x_2495 : vec2<f32> = u_xlat69;
            let x_2496 : vec2<f32> = (x_2495 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2497 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2496.x, x_2496.y, x_2497.z, x_2497.w);
            let x_2499 : vec4<f32> = u_xlat13;
            let x_2501 : vec2<f32> = (vec2<f32>(x_2499.x, x_2499.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2502 : vec4<f32> = u_xlat18;
            u_xlat18 = vec4<f32>(x_2501.x, x_2501.y, x_2502.z, x_2502.w);
            let x_2504 : vec4<f32> = u_xlat14;
            let x_2506 : vec2<f32> = (vec2<f32>(x_2504.y, x_2504.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2507 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2506.x, x_2506.y, x_2507.z, x_2507.w);
            let x_2510 : f32 = u_xlat15.x;
            u_xlat16.z = x_2510;
            let x_2513 : f32 = u_xlat13.x;
            u_xlat16.w = x_2513;
            let x_2516 : f32 = u_xlat18.x;
            u_xlat17.z = x_2516;
            let x_2519 : f32 = u_xlat67.x;
            u_xlat17.w = x_2519;
            let x_2521 : vec4<f32> = u_xlat16;
            let x_2523 : vec4<f32> = u_xlat17;
            u_xlat14 = (vec4<f32>(x_2521.z, x_2521.w, x_2521.x, x_2521.z) + vec4<f32>(x_2523.z, x_2523.w, x_2523.x, x_2523.z));
            let x_2527 : f32 = u_xlat16.y;
            u_xlat15.z = x_2527;
            let x_2530 : f32 = u_xlat13.y;
            u_xlat15.w = x_2530;
            let x_2533 : f32 = u_xlat17.y;
            u_xlat18.z = x_2533;
            let x_2536 : f32 = u_xlat67.y;
            u_xlat18.w = x_2536;
            let x_2538 : vec4<f32> = u_xlat15;
            let x_2540 : vec4<f32> = u_xlat18;
            let x_2542 : vec3<f32> = (vec3<f32>(x_2538.z, x_2538.y, x_2538.w) + vec3<f32>(x_2540.z, x_2540.y, x_2540.w));
            let x_2543 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2542.x, x_2542.y, x_2542.z, x_2543.w);
            let x_2545 : vec4<f32> = u_xlat17;
            let x_2547 : vec4<f32> = u_xlat14;
            let x_2549 : vec3<f32> = (vec3<f32>(x_2545.x, x_2545.z, x_2545.w) / vec3<f32>(x_2547.z, x_2547.w, x_2547.y));
            let x_2550 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2549.x, x_2549.y, x_2549.z, x_2550.w);
            let x_2552 : vec4<f32> = u_xlat15;
            let x_2554 : vec3<f32> = (vec3<f32>(x_2552.x, x_2552.y, x_2552.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2555 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2554.x, x_2554.y, x_2554.z, x_2555.w);
            let x_2557 : vec4<f32> = u_xlat18;
            let x_2559 : vec4<f32> = u_xlat13;
            let x_2561 : vec3<f32> = (vec3<f32>(x_2557.z, x_2557.y, x_2557.w) / vec3<f32>(x_2559.x, x_2559.y, x_2559.z));
            let x_2562 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2561.x, x_2561.y, x_2561.z, x_2562.w);
            let x_2564 : vec4<f32> = u_xlat16;
            let x_2566 : vec3<f32> = (vec3<f32>(x_2564.x, x_2564.y, x_2564.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2567 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2566.x, x_2566.y, x_2566.z, x_2567.w);
            let x_2569 : vec4<f32> = u_xlat15;
            let x_2572 : vec4<f32> = x_275.x_AdditionalShadowmapSize;
            let x_2574 : vec3<f32> = (vec3<f32>(x_2569.y, x_2569.x, x_2569.z) * vec3<f32>(x_2572.x, x_2572.x, x_2572.x));
            let x_2575 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2574.x, x_2574.y, x_2574.z, x_2575.w);
            let x_2577 : vec4<f32> = u_xlat16;
            let x_2580 : vec4<f32> = x_275.x_AdditionalShadowmapSize;
            let x_2582 : vec3<f32> = (vec3<f32>(x_2577.x, x_2577.y, x_2577.z) * vec3<f32>(x_2580.y, x_2580.y, x_2580.y));
            let x_2583 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2582.x, x_2582.y, x_2582.z, x_2583.w);
            let x_2586 : f32 = u_xlat16.x;
            u_xlat15.w = x_2586;
            let x_2588 : vec2<f32> = u_xlat62;
            let x_2591 : vec4<f32> = x_275.x_AdditionalShadowmapSize;
            let x_2594 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_2588.x, x_2588.y, x_2588.x, x_2588.y) * vec4<f32>(x_2591.x, x_2591.y, x_2591.x, x_2591.y)) + vec4<f32>(x_2594.y, x_2594.w, x_2594.x, x_2594.w));
            let x_2597 : vec2<f32> = u_xlat62;
            let x_2599 : vec4<f32> = x_275.x_AdditionalShadowmapSize;
            let x_2602 : vec4<f32> = u_xlat15;
            let x_2604 : vec2<f32> = ((x_2597 * vec2<f32>(x_2599.x, x_2599.y)) + vec2<f32>(x_2602.z, x_2602.w));
            let x_2605 : vec4<f32> = u_xlat18;
            u_xlat18 = vec4<f32>(x_2604.x, x_2604.y, x_2605.z, x_2605.w);
            let x_2608 : f32 = u_xlat15.y;
            u_xlat16.w = x_2608;
            let x_2610 : vec4<f32> = u_xlat16;
            let x_2611 : vec2<f32> = vec2<f32>(x_2610.y, x_2610.z);
            let x_2612 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2612.x, x_2611.x, x_2612.z, x_2611.y);
            let x_2615 : vec2<f32> = u_xlat62;
            let x_2618 : vec4<f32> = x_275.x_AdditionalShadowmapSize;
            let x_2621 : vec4<f32> = u_xlat15;
            u_xlat19 = ((vec4<f32>(x_2615.x, x_2615.y, x_2615.x, x_2615.y) * vec4<f32>(x_2618.x, x_2618.y, x_2618.x, x_2618.y)) + vec4<f32>(x_2621.x, x_2621.y, x_2621.z, x_2621.y));
            let x_2624 : vec2<f32> = u_xlat62;
            let x_2627 : vec4<f32> = x_275.x_AdditionalShadowmapSize;
            let x_2630 : vec4<f32> = u_xlat16;
            u_xlat16 = ((vec4<f32>(x_2624.x, x_2624.y, x_2624.x, x_2624.y) * vec4<f32>(x_2627.x, x_2627.y, x_2627.x, x_2627.y)) + vec4<f32>(x_2630.w, x_2630.y, x_2630.w, x_2630.z));
            let x_2633 : vec2<f32> = u_xlat62;
            let x_2636 : vec4<f32> = x_275.x_AdditionalShadowmapSize;
            let x_2639 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2633.x, x_2633.y, x_2633.x, x_2633.y) * vec4<f32>(x_2636.x, x_2636.y, x_2636.x, x_2636.y)) + vec4<f32>(x_2639.x, x_2639.w, x_2639.z, x_2639.w));
            let x_2643 : vec4<f32> = u_xlat13;
            let x_2645 : vec4<f32> = u_xlat14;
            u_xlat20 = (vec4<f32>(x_2643.x, x_2643.x, x_2643.x, x_2643.y) * vec4<f32>(x_2645.z, x_2645.w, x_2645.y, x_2645.z));
            let x_2649 : vec4<f32> = u_xlat13;
            let x_2651 : vec4<f32> = u_xlat14;
            u_xlat21 = (vec4<f32>(x_2649.y, x_2649.y, x_2649.z, x_2649.z) * x_2651);
            let x_2654 : f32 = u_xlat13.z;
            let x_2656 : f32 = u_xlat14.y;
            u_xlat62.x = (x_2654 * x_2656);
            let x_2660 : vec4<f32> = u_xlat17;
            let x_2661 : vec2<f32> = vec2<f32>(x_2660.x, x_2660.y);
            let x_2663 : f32 = u_xlat12.z;
            txVec34 = vec3<f32>(x_2661.x, x_2661.y, x_2663);
            let x_2670 : vec3<f32> = txVec34;
            let x_2672 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2670.xy, x_2670.z);
            u_xlat89 = x_2672;
            let x_2674 : vec4<f32> = u_xlat17;
            let x_2675 : vec2<f32> = vec2<f32>(x_2674.z, x_2674.w);
            let x_2677 : f32 = u_xlat12.z;
            txVec35 = vec3<f32>(x_2675.x, x_2675.y, x_2677);
            let x_2685 : vec3<f32> = txVec35;
            let x_2687 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2685.xy, x_2685.z);
            u_xlat90 = x_2687;
            let x_2688 : f32 = u_xlat90;
            let x_2690 : f32 = u_xlat20.y;
            u_xlat90 = (x_2688 * x_2690);
            let x_2693 : f32 = u_xlat20.x;
            let x_2694 : f32 = u_xlat89;
            let x_2696 : f32 = u_xlat90;
            u_xlat89 = ((x_2693 * x_2694) + x_2696);
            let x_2699 : vec4<f32> = u_xlat18;
            let x_2700 : vec2<f32> = vec2<f32>(x_2699.x, x_2699.y);
            let x_2702 : f32 = u_xlat12.z;
            txVec36 = vec3<f32>(x_2700.x, x_2700.y, x_2702);
            let x_2709 : vec3<f32> = txVec36;
            let x_2711 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2709.xy, x_2709.z);
            u_xlat90 = x_2711;
            let x_2713 : f32 = u_xlat20.z;
            let x_2714 : f32 = u_xlat90;
            let x_2716 : f32 = u_xlat89;
            u_xlat89 = ((x_2713 * x_2714) + x_2716);
            let x_2719 : vec4<f32> = u_xlat16;
            let x_2720 : vec2<f32> = vec2<f32>(x_2719.x, x_2719.y);
            let x_2722 : f32 = u_xlat12.z;
            txVec37 = vec3<f32>(x_2720.x, x_2720.y, x_2722);
            let x_2729 : vec3<f32> = txVec37;
            let x_2731 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2729.xy, x_2729.z);
            u_xlat90 = x_2731;
            let x_2733 : f32 = u_xlat20.w;
            let x_2734 : f32 = u_xlat90;
            let x_2736 : f32 = u_xlat89;
            u_xlat89 = ((x_2733 * x_2734) + x_2736);
            let x_2739 : vec4<f32> = u_xlat19;
            let x_2740 : vec2<f32> = vec2<f32>(x_2739.x, x_2739.y);
            let x_2742 : f32 = u_xlat12.z;
            txVec38 = vec3<f32>(x_2740.x, x_2740.y, x_2742);
            let x_2749 : vec3<f32> = txVec38;
            let x_2751 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2749.xy, x_2749.z);
            u_xlat90 = x_2751;
            let x_2753 : f32 = u_xlat21.x;
            let x_2754 : f32 = u_xlat90;
            let x_2756 : f32 = u_xlat89;
            u_xlat89 = ((x_2753 * x_2754) + x_2756);
            let x_2759 : vec4<f32> = u_xlat19;
            let x_2760 : vec2<f32> = vec2<f32>(x_2759.z, x_2759.w);
            let x_2762 : f32 = u_xlat12.z;
            txVec39 = vec3<f32>(x_2760.x, x_2760.y, x_2762);
            let x_2769 : vec3<f32> = txVec39;
            let x_2771 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2769.xy, x_2769.z);
            u_xlat90 = x_2771;
            let x_2773 : f32 = u_xlat21.y;
            let x_2774 : f32 = u_xlat90;
            let x_2776 : f32 = u_xlat89;
            u_xlat89 = ((x_2773 * x_2774) + x_2776);
            let x_2779 : vec4<f32> = u_xlat16;
            let x_2780 : vec2<f32> = vec2<f32>(x_2779.z, x_2779.w);
            let x_2782 : f32 = u_xlat12.z;
            txVec40 = vec3<f32>(x_2780.x, x_2780.y, x_2782);
            let x_2789 : vec3<f32> = txVec40;
            let x_2791 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2789.xy, x_2789.z);
            u_xlat90 = x_2791;
            let x_2793 : f32 = u_xlat21.z;
            let x_2794 : f32 = u_xlat90;
            let x_2796 : f32 = u_xlat89;
            u_xlat89 = ((x_2793 * x_2794) + x_2796);
            let x_2799 : vec4<f32> = u_xlat15;
            let x_2800 : vec2<f32> = vec2<f32>(x_2799.x, x_2799.y);
            let x_2802 : f32 = u_xlat12.z;
            txVec41 = vec3<f32>(x_2800.x, x_2800.y, x_2802);
            let x_2809 : vec3<f32> = txVec41;
            let x_2811 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2809.xy, x_2809.z);
            u_xlat90 = x_2811;
            let x_2813 : f32 = u_xlat21.w;
            let x_2814 : f32 = u_xlat90;
            let x_2816 : f32 = u_xlat89;
            u_xlat89 = ((x_2813 * x_2814) + x_2816);
            let x_2819 : vec4<f32> = u_xlat15;
            let x_2820 : vec2<f32> = vec2<f32>(x_2819.z, x_2819.w);
            let x_2822 : f32 = u_xlat12.z;
            txVec42 = vec3<f32>(x_2820.x, x_2820.y, x_2822);
            let x_2829 : vec3<f32> = txVec42;
            let x_2831 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2829.xy, x_2829.z);
            u_xlat90 = x_2831;
            let x_2833 : f32 = u_xlat62.x;
            let x_2834 : f32 = u_xlat90;
            let x_2836 : f32 = u_xlat89;
            u_xlat88 = ((x_2833 * x_2834) + x_2836);
          } else {
            let x_2839 : vec4<f32> = u_xlat12;
            let x_2842 : vec4<f32> = x_275.x_AdditionalShadowmapSize;
            u_xlat62 = ((vec2<f32>(x_2839.x, x_2839.y) * vec2<f32>(x_2842.z, x_2842.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2846 : vec2<f32> = u_xlat62;
            u_xlat62 = floor(x_2846);
            let x_2848 : vec4<f32> = u_xlat12;
            let x_2851 : vec4<f32> = x_275.x_AdditionalShadowmapSize;
            let x_2854 : vec2<f32> = u_xlat62;
            let x_2856 : vec2<f32> = ((vec2<f32>(x_2848.x, x_2848.y) * vec2<f32>(x_2851.z, x_2851.w)) + -(x_2854));
            let x_2857 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2856.x, x_2856.y, x_2857.z, x_2857.w);
            let x_2859 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2859.x, x_2859.x, x_2859.y, x_2859.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2862 : vec4<f32> = u_xlat14;
            let x_2864 : vec4<f32> = u_xlat14;
            u_xlat15 = (vec4<f32>(x_2862.x, x_2862.x, x_2862.z, x_2862.z) * vec4<f32>(x_2864.x, x_2864.x, x_2864.z, x_2864.z));
            let x_2867 : vec4<f32> = u_xlat15;
            let x_2869 : vec2<f32> = (vec2<f32>(x_2867.y, x_2867.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2870 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2870.x, x_2869.x, x_2870.z, x_2869.y);
            let x_2872 : vec4<f32> = u_xlat15;
            let x_2875 : vec4<f32> = u_xlat13;
            u_xlat67 = ((vec2<f32>(x_2872.x, x_2872.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2875.x, x_2875.y)));
            let x_2879 : vec4<f32> = u_xlat13;
            let x_2882 : vec2<f32> = (-(vec2<f32>(x_2879.x, x_2879.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2883 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2882.x, x_2883.y, x_2882.y, x_2883.w);
            let x_2885 : vec4<f32> = u_xlat13;
            let x_2887 : vec2<f32> = min(vec2<f32>(x_2885.x, x_2885.y), vec2<f32>(0.0f, 0.0f));
            let x_2888 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2887.x, x_2887.y, x_2888.z, x_2888.w);
            let x_2890 : vec4<f32> = u_xlat15;
            let x_2893 : vec4<f32> = u_xlat15;
            let x_2896 : vec4<f32> = u_xlat14;
            let x_2898 : vec2<f32> = ((-(vec2<f32>(x_2890.x, x_2890.y)) * vec2<f32>(x_2893.x, x_2893.y)) + vec2<f32>(x_2896.x, x_2896.z));
            let x_2899 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2898.x, x_2899.y, x_2898.y, x_2899.w);
            let x_2901 : vec4<f32> = u_xlat13;
            let x_2903 : vec2<f32> = max(vec2<f32>(x_2901.x, x_2901.y), vec2<f32>(0.0f, 0.0f));
            let x_2904 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2903.x, x_2903.y, x_2904.z, x_2904.w);
            let x_2906 : vec4<f32> = u_xlat15;
            let x_2909 : vec4<f32> = u_xlat15;
            let x_2912 : vec4<f32> = u_xlat14;
            let x_2914 : vec2<f32> = ((-(vec2<f32>(x_2906.x, x_2906.y)) * vec2<f32>(x_2909.x, x_2909.y)) + vec2<f32>(x_2912.y, x_2912.w));
            let x_2915 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2915.x, x_2914.x, x_2915.z, x_2914.y);
            let x_2917 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_2917 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
            let x_2921 : f32 = u_xlat14.y;
            u_xlat15.z = (x_2921 * 0.08163200318813323975f);
            let x_2924 : vec2<f32> = u_xlat67;
            let x_2926 : vec2<f32> = (vec2<f32>(x_2924.y, x_2924.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2927 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2926.x, x_2926.y, x_2927.z, x_2927.w);
            let x_2929 : vec4<f32> = u_xlat14;
            u_xlat67 = (vec2<f32>(x_2929.x, x_2929.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2933 : f32 = u_xlat14.w;
            u_xlat17.z = (x_2933 * 0.08163200318813323975f);
            let x_2937 : f32 = u_xlat17.y;
            u_xlat15.x = x_2937;
            let x_2939 : vec4<f32> = u_xlat13;
            let x_2942 : vec2<f32> = ((vec2<f32>(x_2939.x, x_2939.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2943 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2943.x, x_2942.x, x_2943.z, x_2942.y);
            let x_2945 : vec4<f32> = u_xlat13;
            let x_2948 : vec2<f32> = ((vec2<f32>(x_2945.x, x_2945.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2949 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2948.x, x_2949.y, x_2948.y, x_2949.w);
            let x_2952 : f32 = u_xlat67.x;
            u_xlat14.y = x_2952;
            let x_2955 : f32 = u_xlat16.y;
            u_xlat14.w = x_2955;
            let x_2957 : vec4<f32> = u_xlat14;
            let x_2958 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_2957 + x_2958);
            let x_2960 : vec4<f32> = u_xlat13;
            let x_2963 : vec2<f32> = ((vec2<f32>(x_2960.y, x_2960.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2964 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2964.x, x_2963.x, x_2964.z, x_2963.y);
            let x_2966 : vec4<f32> = u_xlat13;
            let x_2969 : vec2<f32> = ((vec2<f32>(x_2966.y, x_2966.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2970 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2969.x, x_2970.y, x_2969.y, x_2970.w);
            let x_2973 : f32 = u_xlat67.y;
            u_xlat16.y = x_2973;
            let x_2975 : vec4<f32> = u_xlat16;
            let x_2976 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_2975 + x_2976);
            let x_2978 : vec4<f32> = u_xlat14;
            let x_2979 : vec4<f32> = u_xlat15;
            u_xlat14 = (x_2978 / x_2979);
            let x_2981 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_2981 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2983 : vec4<f32> = u_xlat16;
            let x_2984 : vec4<f32> = u_xlat13;
            u_xlat16 = (x_2983 / x_2984);
            let x_2986 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_2986 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2988 : vec4<f32> = u_xlat14;
            let x_2991 : vec4<f32> = x_275.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_2988.w, x_2988.x, x_2988.y, x_2988.z) * vec4<f32>(x_2991.x, x_2991.x, x_2991.x, x_2991.x));
            let x_2994 : vec4<f32> = u_xlat16;
            let x_2997 : vec4<f32> = x_275.x_AdditionalShadowmapSize;
            u_xlat16 = (vec4<f32>(x_2994.x, x_2994.w, x_2994.y, x_2994.z) * vec4<f32>(x_2997.y, x_2997.y, x_2997.y, x_2997.y));
            let x_3000 : vec4<f32> = u_xlat14;
            let x_3001 : vec3<f32> = vec3<f32>(x_3000.y, x_3000.z, x_3000.w);
            let x_3002 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3001.x, x_3002.y, x_3001.y, x_3001.z);
            let x_3005 : f32 = u_xlat16.x;
            u_xlat17.y = x_3005;
            let x_3007 : vec2<f32> = u_xlat62;
            let x_3010 : vec4<f32> = x_275.x_AdditionalShadowmapSize;
            let x_3013 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3007.x, x_3007.y, x_3007.x, x_3007.y) * vec4<f32>(x_3010.x, x_3010.y, x_3010.x, x_3010.y)) + vec4<f32>(x_3013.x, x_3013.y, x_3013.z, x_3013.y));
            let x_3016 : vec2<f32> = u_xlat62;
            let x_3018 : vec4<f32> = x_275.x_AdditionalShadowmapSize;
            let x_3021 : vec4<f32> = u_xlat17;
            let x_3023 : vec2<f32> = ((x_3016 * vec2<f32>(x_3018.x, x_3018.y)) + vec2<f32>(x_3021.w, x_3021.y));
            let x_3024 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3023.x, x_3023.y, x_3024.z, x_3024.w);
            let x_3027 : f32 = u_xlat17.y;
            u_xlat14.y = x_3027;
            let x_3030 : f32 = u_xlat16.z;
            u_xlat17.y = x_3030;
            let x_3032 : vec2<f32> = u_xlat62;
            let x_3035 : vec4<f32> = x_275.x_AdditionalShadowmapSize;
            let x_3038 : vec4<f32> = u_xlat17;
            u_xlat20 = ((vec4<f32>(x_3032.x, x_3032.y, x_3032.x, x_3032.y) * vec4<f32>(x_3035.x, x_3035.y, x_3035.x, x_3035.y)) + vec4<f32>(x_3038.x, x_3038.y, x_3038.z, x_3038.y));
            let x_3042 : vec2<f32> = u_xlat62;
            let x_3044 : vec4<f32> = x_275.x_AdditionalShadowmapSize;
            let x_3047 : vec4<f32> = u_xlat17;
            u_xlat73 = ((x_3042 * vec2<f32>(x_3044.x, x_3044.y)) + vec2<f32>(x_3047.w, x_3047.y));
            let x_3051 : f32 = u_xlat17.y;
            u_xlat14.z = x_3051;
            let x_3053 : vec2<f32> = u_xlat62;
            let x_3056 : vec4<f32> = x_275.x_AdditionalShadowmapSize;
            let x_3059 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3053.x, x_3053.y, x_3053.x, x_3053.y) * vec4<f32>(x_3056.x, x_3056.y, x_3056.x, x_3056.y)) + vec4<f32>(x_3059.x, x_3059.y, x_3059.x, x_3059.z));
            let x_3063 : f32 = u_xlat16.w;
            u_xlat17.y = x_3063;
            let x_3066 : vec2<f32> = u_xlat62;
            let x_3069 : vec4<f32> = x_275.x_AdditionalShadowmapSize;
            let x_3072 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3066.x, x_3066.y, x_3066.x, x_3066.y) * vec4<f32>(x_3069.x, x_3069.y, x_3069.x, x_3069.y)) + vec4<f32>(x_3072.x, x_3072.y, x_3072.z, x_3072.y));
            let x_3076 : vec2<f32> = u_xlat62;
            let x_3078 : vec4<f32> = x_275.x_AdditionalShadowmapSize;
            let x_3081 : vec4<f32> = u_xlat17;
            u_xlat41 = ((x_3076 * vec2<f32>(x_3078.x, x_3078.y)) + vec2<f32>(x_3081.w, x_3081.y));
            let x_3085 : f32 = u_xlat17.y;
            u_xlat14.w = x_3085;
            let x_3088 : vec2<f32> = u_xlat62;
            let x_3090 : vec4<f32> = x_275.x_AdditionalShadowmapSize;
            let x_3093 : vec4<f32> = u_xlat14;
            u_xlat23 = ((x_3088 * vec2<f32>(x_3090.x, x_3090.y)) + vec2<f32>(x_3093.x, x_3093.w));
            let x_3096 : vec4<f32> = u_xlat17;
            let x_3097 : vec3<f32> = vec3<f32>(x_3096.x, x_3096.z, x_3096.w);
            let x_3098 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3097.x, x_3098.y, x_3097.y, x_3097.z);
            let x_3100 : vec2<f32> = u_xlat62;
            let x_3103 : vec4<f32> = x_275.x_AdditionalShadowmapSize;
            let x_3106 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3100.x, x_3100.y, x_3100.x, x_3100.y) * vec4<f32>(x_3103.x, x_3103.y, x_3103.x, x_3103.y)) + vec4<f32>(x_3106.x, x_3106.y, x_3106.z, x_3106.y));
            let x_3110 : vec2<f32> = u_xlat62;
            let x_3112 : vec4<f32> = x_275.x_AdditionalShadowmapSize;
            let x_3115 : vec4<f32> = u_xlat16;
            u_xlat70 = ((x_3110 * vec2<f32>(x_3112.x, x_3112.y)) + vec2<f32>(x_3115.w, x_3115.y));
            let x_3119 : f32 = u_xlat14.x;
            u_xlat16.x = x_3119;
            let x_3121 : vec2<f32> = u_xlat62;
            let x_3123 : vec4<f32> = x_275.x_AdditionalShadowmapSize;
            let x_3126 : vec4<f32> = u_xlat16;
            u_xlat62 = ((x_3121 * vec2<f32>(x_3123.x, x_3123.y)) + vec2<f32>(x_3126.x, x_3126.y));
            let x_3130 : vec4<f32> = u_xlat13;
            let x_3132 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3130.x, x_3130.x, x_3130.x, x_3130.x) * x_3132);
            let x_3135 : vec4<f32> = u_xlat13;
            let x_3137 : vec4<f32> = u_xlat15;
            u_xlat25 = (vec4<f32>(x_3135.y, x_3135.y, x_3135.y, x_3135.y) * x_3137);
            let x_3140 : vec4<f32> = u_xlat13;
            let x_3142 : vec4<f32> = u_xlat15;
            u_xlat26 = (vec4<f32>(x_3140.z, x_3140.z, x_3140.z, x_3140.z) * x_3142);
            let x_3144 : vec4<f32> = u_xlat13;
            let x_3146 : vec4<f32> = u_xlat15;
            u_xlat13 = (vec4<f32>(x_3144.w, x_3144.w, x_3144.w, x_3144.w) * x_3146);
            let x_3149 : vec4<f32> = u_xlat18;
            let x_3150 : vec2<f32> = vec2<f32>(x_3149.x, x_3149.y);
            let x_3152 : f32 = u_xlat12.z;
            txVec43 = vec3<f32>(x_3150.x, x_3150.y, x_3152);
            let x_3159 : vec3<f32> = txVec43;
            let x_3161 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3159.xy, x_3159.z);
            u_xlat90 = x_3161;
            let x_3163 : vec4<f32> = u_xlat18;
            let x_3164 : vec2<f32> = vec2<f32>(x_3163.z, x_3163.w);
            let x_3166 : f32 = u_xlat12.z;
            txVec44 = vec3<f32>(x_3164.x, x_3164.y, x_3166);
            let x_3174 : vec3<f32> = txVec44;
            let x_3176 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3174.xy, x_3174.z);
            u_xlat91 = x_3176;
            let x_3177 : f32 = u_xlat91;
            let x_3179 : f32 = u_xlat24.y;
            u_xlat91 = (x_3177 * x_3179);
            let x_3182 : f32 = u_xlat24.x;
            let x_3183 : f32 = u_xlat90;
            let x_3185 : f32 = u_xlat91;
            u_xlat90 = ((x_3182 * x_3183) + x_3185);
            let x_3188 : vec4<f32> = u_xlat19;
            let x_3189 : vec2<f32> = vec2<f32>(x_3188.x, x_3188.y);
            let x_3191 : f32 = u_xlat12.z;
            txVec45 = vec3<f32>(x_3189.x, x_3189.y, x_3191);
            let x_3198 : vec3<f32> = txVec45;
            let x_3200 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3198.xy, x_3198.z);
            u_xlat91 = x_3200;
            let x_3202 : f32 = u_xlat24.z;
            let x_3203 : f32 = u_xlat91;
            let x_3205 : f32 = u_xlat90;
            u_xlat90 = ((x_3202 * x_3203) + x_3205);
            let x_3208 : vec4<f32> = u_xlat21;
            let x_3209 : vec2<f32> = vec2<f32>(x_3208.x, x_3208.y);
            let x_3211 : f32 = u_xlat12.z;
            txVec46 = vec3<f32>(x_3209.x, x_3209.y, x_3211);
            let x_3218 : vec3<f32> = txVec46;
            let x_3220 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3218.xy, x_3218.z);
            u_xlat91 = x_3220;
            let x_3222 : f32 = u_xlat24.w;
            let x_3223 : f32 = u_xlat91;
            let x_3225 : f32 = u_xlat90;
            u_xlat90 = ((x_3222 * x_3223) + x_3225);
            let x_3228 : vec4<f32> = u_xlat20;
            let x_3229 : vec2<f32> = vec2<f32>(x_3228.x, x_3228.y);
            let x_3231 : f32 = u_xlat12.z;
            txVec47 = vec3<f32>(x_3229.x, x_3229.y, x_3231);
            let x_3238 : vec3<f32> = txVec47;
            let x_3240 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3238.xy, x_3238.z);
            u_xlat91 = x_3240;
            let x_3242 : f32 = u_xlat25.x;
            let x_3243 : f32 = u_xlat91;
            let x_3245 : f32 = u_xlat90;
            u_xlat90 = ((x_3242 * x_3243) + x_3245);
            let x_3248 : vec4<f32> = u_xlat20;
            let x_3249 : vec2<f32> = vec2<f32>(x_3248.z, x_3248.w);
            let x_3251 : f32 = u_xlat12.z;
            txVec48 = vec3<f32>(x_3249.x, x_3249.y, x_3251);
            let x_3258 : vec3<f32> = txVec48;
            let x_3260 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3258.xy, x_3258.z);
            u_xlat91 = x_3260;
            let x_3262 : f32 = u_xlat25.y;
            let x_3263 : f32 = u_xlat91;
            let x_3265 : f32 = u_xlat90;
            u_xlat90 = ((x_3262 * x_3263) + x_3265);
            let x_3268 : vec2<f32> = u_xlat73;
            let x_3270 : f32 = u_xlat12.z;
            txVec49 = vec3<f32>(x_3268.x, x_3268.y, x_3270);
            let x_3277 : vec3<f32> = txVec49;
            let x_3279 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3277.xy, x_3277.z);
            u_xlat91 = x_3279;
            let x_3281 : f32 = u_xlat25.z;
            let x_3282 : f32 = u_xlat91;
            let x_3284 : f32 = u_xlat90;
            u_xlat90 = ((x_3281 * x_3282) + x_3284);
            let x_3287 : vec4<f32> = u_xlat21;
            let x_3288 : vec2<f32> = vec2<f32>(x_3287.z, x_3287.w);
            let x_3290 : f32 = u_xlat12.z;
            txVec50 = vec3<f32>(x_3288.x, x_3288.y, x_3290);
            let x_3297 : vec3<f32> = txVec50;
            let x_3299 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3297.xy, x_3297.z);
            u_xlat91 = x_3299;
            let x_3301 : f32 = u_xlat25.w;
            let x_3302 : f32 = u_xlat91;
            let x_3304 : f32 = u_xlat90;
            u_xlat90 = ((x_3301 * x_3302) + x_3304);
            let x_3307 : vec4<f32> = u_xlat22;
            let x_3308 : vec2<f32> = vec2<f32>(x_3307.x, x_3307.y);
            let x_3310 : f32 = u_xlat12.z;
            txVec51 = vec3<f32>(x_3308.x, x_3308.y, x_3310);
            let x_3317 : vec3<f32> = txVec51;
            let x_3319 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3317.xy, x_3317.z);
            u_xlat91 = x_3319;
            let x_3321 : f32 = u_xlat26.x;
            let x_3322 : f32 = u_xlat91;
            let x_3324 : f32 = u_xlat90;
            u_xlat90 = ((x_3321 * x_3322) + x_3324);
            let x_3327 : vec4<f32> = u_xlat22;
            let x_3328 : vec2<f32> = vec2<f32>(x_3327.z, x_3327.w);
            let x_3330 : f32 = u_xlat12.z;
            txVec52 = vec3<f32>(x_3328.x, x_3328.y, x_3330);
            let x_3337 : vec3<f32> = txVec52;
            let x_3339 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3337.xy, x_3337.z);
            u_xlat91 = x_3339;
            let x_3341 : f32 = u_xlat26.y;
            let x_3342 : f32 = u_xlat91;
            let x_3344 : f32 = u_xlat90;
            u_xlat90 = ((x_3341 * x_3342) + x_3344);
            let x_3347 : vec2<f32> = u_xlat41;
            let x_3349 : f32 = u_xlat12.z;
            txVec53 = vec3<f32>(x_3347.x, x_3347.y, x_3349);
            let x_3356 : vec3<f32> = txVec53;
            let x_3358 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3356.xy, x_3356.z);
            u_xlat91 = x_3358;
            let x_3360 : f32 = u_xlat26.z;
            let x_3361 : f32 = u_xlat91;
            let x_3363 : f32 = u_xlat90;
            u_xlat90 = ((x_3360 * x_3361) + x_3363);
            let x_3366 : vec2<f32> = u_xlat23;
            let x_3368 : f32 = u_xlat12.z;
            txVec54 = vec3<f32>(x_3366.x, x_3366.y, x_3368);
            let x_3375 : vec3<f32> = txVec54;
            let x_3377 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3375.xy, x_3375.z);
            u_xlat91 = x_3377;
            let x_3379 : f32 = u_xlat26.w;
            let x_3380 : f32 = u_xlat91;
            let x_3382 : f32 = u_xlat90;
            u_xlat90 = ((x_3379 * x_3380) + x_3382);
            let x_3385 : vec4<f32> = u_xlat17;
            let x_3386 : vec2<f32> = vec2<f32>(x_3385.x, x_3385.y);
            let x_3388 : f32 = u_xlat12.z;
            txVec55 = vec3<f32>(x_3386.x, x_3386.y, x_3388);
            let x_3395 : vec3<f32> = txVec55;
            let x_3397 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3395.xy, x_3395.z);
            u_xlat91 = x_3397;
            let x_3399 : f32 = u_xlat13.x;
            let x_3400 : f32 = u_xlat91;
            let x_3402 : f32 = u_xlat90;
            u_xlat90 = ((x_3399 * x_3400) + x_3402);
            let x_3405 : vec4<f32> = u_xlat17;
            let x_3406 : vec2<f32> = vec2<f32>(x_3405.z, x_3405.w);
            let x_3408 : f32 = u_xlat12.z;
            txVec56 = vec3<f32>(x_3406.x, x_3406.y, x_3408);
            let x_3415 : vec3<f32> = txVec56;
            let x_3417 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3415.xy, x_3415.z);
            u_xlat91 = x_3417;
            let x_3419 : f32 = u_xlat13.y;
            let x_3420 : f32 = u_xlat91;
            let x_3422 : f32 = u_xlat90;
            u_xlat90 = ((x_3419 * x_3420) + x_3422);
            let x_3425 : vec2<f32> = u_xlat70;
            let x_3427 : f32 = u_xlat12.z;
            txVec57 = vec3<f32>(x_3425.x, x_3425.y, x_3427);
            let x_3434 : vec3<f32> = txVec57;
            let x_3436 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3434.xy, x_3434.z);
            u_xlat91 = x_3436;
            let x_3438 : f32 = u_xlat13.z;
            let x_3439 : f32 = u_xlat91;
            let x_3441 : f32 = u_xlat90;
            u_xlat90 = ((x_3438 * x_3439) + x_3441);
            let x_3444 : vec2<f32> = u_xlat62;
            let x_3446 : f32 = u_xlat12.z;
            txVec58 = vec3<f32>(x_3444.x, x_3444.y, x_3446);
            let x_3453 : vec3<f32> = txVec58;
            let x_3455 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3453.xy, x_3453.z);
            u_xlat62.x = x_3455;
            let x_3458 : f32 = u_xlat13.w;
            let x_3460 : f32 = u_xlat62.x;
            let x_3462 : f32 = u_xlat90;
            u_xlat88 = ((x_3458 * x_3460) + x_3462);
          }
        }
      } else {
        let x_3466 : vec4<f32> = u_xlat12;
        let x_3467 : vec2<f32> = vec2<f32>(x_3466.x, x_3466.y);
        let x_3469 : f32 = u_xlat12.z;
        txVec59 = vec3<f32>(x_3467.x, x_3467.y, x_3469);
        let x_3476 : vec3<f32> = txVec59;
        let x_3478 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3476.xy, x_3476.z);
        u_xlat88 = x_3478;
      }
      let x_3479 : i32 = u_xlati85;
      let x_3481 : f32 = x_275.x_AdditionalShadowParams[x_3479].x;
      u_xlat62.x = (1.0f + -(x_3481));
      let x_3485 : f32 = u_xlat88;
      let x_3486 : i32 = u_xlati85;
      let x_3488 : f32 = x_275.x_AdditionalShadowParams[x_3486].x;
      let x_3491 : f32 = u_xlat62.x;
      u_xlat88 = ((x_3485 * x_3488) + x_3491);
      let x_3494 : f32 = u_xlat12.z;
      u_xlatb62 = (0.0f >= x_3494);
      let x_3498 : f32 = u_xlat12.z;
      u_xlatb89 = (x_3498 >= 1.0f);
      let x_3500 : bool = u_xlatb89;
      let x_3501 : bool = u_xlatb62;
      u_xlatb62 = (x_3500 | x_3501);
      let x_3503 : bool = u_xlatb62;
      let x_3504 : f32 = u_xlat88;
      u_xlat88 = select(x_3504, 1.0f, x_3503);
    } else {
      u_xlat88 = 1.0f;
    }
    let x_3507 : f32 = u_xlat88;
    u_xlat62.x = (-(x_3507) + 1.0f);
    let x_3511 : f32 = u_xlat55;
    let x_3513 : f32 = u_xlat62.x;
    let x_3515 : f32 = u_xlat88;
    u_xlat88 = ((x_3511 * x_3513) + x_3515);
    let x_3518 : i32 = u_xlati85;
    u_xlati62 = (1i << bitcast<u32>((x_3518 & 31i)));
    let x_3522 : i32 = u_xlati62;
    let x_3525 : f32 = x_1599.x_AdditionalLightsCookieEnableBits;
    u_xlati62 = bitcast<i32>((bitcast<u32>(x_3522) & bitcast<u32>(x_3525)));
    let x_3529 : i32 = u_xlati62;
    if ((x_3529 != 0i)) {
      let x_3533 : i32 = u_xlati85;
      let x_3535 : f32 = x_1599.x_AdditionalLightsLightTypes[x_3533].el;
      u_xlati62 = i32(x_3535);
      let x_3538 : i32 = u_xlati62;
      u_xlati89 = select(1i, 0i, (x_3538 != 0i));
      let x_3542 : i32 = u_xlati85;
      u_xlati90 = (x_3542 << bitcast<u32>(2i));
      let x_3544 : i32 = u_xlati89;
      if ((x_3544 != 0i)) {
        let x_3548 : vec3<f32> = vs_TEXCOORD7;
        let x_3550 : i32 = u_xlati90;
        let x_3553 : i32 = u_xlati90;
        let x_3557 : vec4<f32> = x_1599.x_AdditionalLightsWorldToLights[((x_3550 + 1i) / 4i)][((x_3553 + 1i) % 4i)];
        let x_3559 : vec3<f32> = (vec3<f32>(x_3548.y, x_3548.y, x_3548.y) * vec3<f32>(x_3557.x, x_3557.y, x_3557.w));
        let x_3560 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3559.x, x_3559.y, x_3559.z, x_3560.w);
        let x_3562 : i32 = u_xlati90;
        let x_3564 : i32 = u_xlati90;
        let x_3567 : vec4<f32> = x_1599.x_AdditionalLightsWorldToLights[(x_3562 / 4i)][(x_3564 % 4i)];
        let x_3569 : vec3<f32> = vs_TEXCOORD7;
        let x_3572 : vec4<f32> = u_xlat12;
        let x_3574 : vec3<f32> = ((vec3<f32>(x_3567.x, x_3567.y, x_3567.w) * vec3<f32>(x_3569.x, x_3569.x, x_3569.x)) + vec3<f32>(x_3572.x, x_3572.y, x_3572.z));
        let x_3575 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3574.x, x_3574.y, x_3574.z, x_3575.w);
        let x_3577 : i32 = u_xlati90;
        let x_3580 : i32 = u_xlati90;
        let x_3584 : vec4<f32> = x_1599.x_AdditionalLightsWorldToLights[((x_3577 + 2i) / 4i)][((x_3580 + 2i) % 4i)];
        let x_3586 : vec3<f32> = vs_TEXCOORD7;
        let x_3589 : vec4<f32> = u_xlat12;
        let x_3591 : vec3<f32> = ((vec3<f32>(x_3584.x, x_3584.y, x_3584.w) * vec3<f32>(x_3586.z, x_3586.z, x_3586.z)) + vec3<f32>(x_3589.x, x_3589.y, x_3589.z));
        let x_3592 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3591.x, x_3591.y, x_3591.z, x_3592.w);
        let x_3594 : vec4<f32> = u_xlat12;
        let x_3596 : i32 = u_xlati90;
        let x_3599 : i32 = u_xlati90;
        let x_3603 : vec4<f32> = x_1599.x_AdditionalLightsWorldToLights[((x_3596 + 3i) / 4i)][((x_3599 + 3i) % 4i)];
        let x_3605 : vec3<f32> = (vec3<f32>(x_3594.x, x_3594.y, x_3594.z) + vec3<f32>(x_3603.x, x_3603.y, x_3603.w));
        let x_3606 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3605.x, x_3605.y, x_3605.z, x_3606.w);
        let x_3608 : vec4<f32> = u_xlat12;
        let x_3610 : vec4<f32> = u_xlat12;
        let x_3612 : vec2<f32> = (vec2<f32>(x_3608.x, x_3608.y) / vec2<f32>(x_3610.z, x_3610.z));
        let x_3613 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3612.x, x_3612.y, x_3613.z, x_3613.w);
        let x_3615 : vec4<f32> = u_xlat12;
        let x_3618 : vec2<f32> = ((vec2<f32>(x_3615.x, x_3615.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3619 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3618.x, x_3618.y, x_3619.z, x_3619.w);
        let x_3621 : vec4<f32> = u_xlat12;
        let x_3625 : vec2<f32> = clamp(vec2<f32>(x_3621.x, x_3621.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3626 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3625.x, x_3625.y, x_3626.z, x_3626.w);
        let x_3628 : i32 = u_xlati85;
        let x_3630 : vec4<f32> = x_1599.x_AdditionalLightsCookieAtlasUVRects[x_3628];
        let x_3632 : vec4<f32> = u_xlat12;
        let x_3635 : i32 = u_xlati85;
        let x_3637 : vec4<f32> = x_1599.x_AdditionalLightsCookieAtlasUVRects[x_3635];
        let x_3639 : vec2<f32> = ((vec2<f32>(x_3630.x, x_3630.y) * vec2<f32>(x_3632.x, x_3632.y)) + vec2<f32>(x_3637.z, x_3637.w));
        let x_3640 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_3639.x, x_3639.y, x_3640.z, x_3640.w);
      } else {
        let x_3643 : i32 = u_xlati62;
        u_xlatb62 = (x_3643 == 1i);
        let x_3645 : bool = u_xlatb62;
        u_xlati62 = select(0i, 1i, x_3645);
        let x_3647 : i32 = u_xlati62;
        if ((x_3647 != 0i)) {
          let x_3651 : vec3<f32> = vs_TEXCOORD7;
          let x_3653 : i32 = u_xlati90;
          let x_3656 : i32 = u_xlati90;
          let x_3660 : vec4<f32> = x_1599.x_AdditionalLightsWorldToLights[((x_3653 + 1i) / 4i)][((x_3656 + 1i) % 4i)];
          u_xlat62 = (vec2<f32>(x_3651.y, x_3651.y) * vec2<f32>(x_3660.x, x_3660.y));
          let x_3663 : i32 = u_xlati90;
          let x_3665 : i32 = u_xlati90;
          let x_3668 : vec4<f32> = x_1599.x_AdditionalLightsWorldToLights[(x_3663 / 4i)][(x_3665 % 4i)];
          let x_3670 : vec3<f32> = vs_TEXCOORD7;
          let x_3673 : vec2<f32> = u_xlat62;
          u_xlat62 = ((vec2<f32>(x_3668.x, x_3668.y) * vec2<f32>(x_3670.x, x_3670.x)) + x_3673);
          let x_3675 : i32 = u_xlati90;
          let x_3678 : i32 = u_xlati90;
          let x_3682 : vec4<f32> = x_1599.x_AdditionalLightsWorldToLights[((x_3675 + 2i) / 4i)][((x_3678 + 2i) % 4i)];
          let x_3684 : vec3<f32> = vs_TEXCOORD7;
          let x_3687 : vec2<f32> = u_xlat62;
          u_xlat62 = ((vec2<f32>(x_3682.x, x_3682.y) * vec2<f32>(x_3684.z, x_3684.z)) + x_3687);
          let x_3689 : vec2<f32> = u_xlat62;
          let x_3690 : i32 = u_xlati90;
          let x_3693 : i32 = u_xlati90;
          let x_3697 : vec4<f32> = x_1599.x_AdditionalLightsWorldToLights[((x_3690 + 3i) / 4i)][((x_3693 + 3i) % 4i)];
          u_xlat62 = (x_3689 + vec2<f32>(x_3697.x, x_3697.y));
          let x_3700 : vec2<f32> = u_xlat62;
          u_xlat62 = ((x_3700 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3703 : vec2<f32> = u_xlat62;
          u_xlat62 = fract(x_3703);
          let x_3705 : i32 = u_xlati85;
          let x_3707 : vec4<f32> = x_1599.x_AdditionalLightsCookieAtlasUVRects[x_3705];
          let x_3709 : vec2<f32> = u_xlat62;
          let x_3711 : i32 = u_xlati85;
          let x_3713 : vec4<f32> = x_1599.x_AdditionalLightsCookieAtlasUVRects[x_3711];
          let x_3715 : vec2<f32> = ((vec2<f32>(x_3707.x, x_3707.y) * x_3709) + vec2<f32>(x_3713.z, x_3713.w));
          let x_3716 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3715.x, x_3715.y, x_3716.z, x_3716.w);
        } else {
          let x_3719 : vec3<f32> = vs_TEXCOORD7;
          let x_3721 : i32 = u_xlati90;
          let x_3724 : i32 = u_xlati90;
          let x_3728 : vec4<f32> = x_1599.x_AdditionalLightsWorldToLights[((x_3721 + 1i) / 4i)][((x_3724 + 1i) % 4i)];
          u_xlat13 = (vec4<f32>(x_3719.y, x_3719.y, x_3719.y, x_3719.y) * x_3728);
          let x_3730 : i32 = u_xlati90;
          let x_3732 : i32 = u_xlati90;
          let x_3735 : vec4<f32> = x_1599.x_AdditionalLightsWorldToLights[(x_3730 / 4i)][(x_3732 % 4i)];
          let x_3736 : vec3<f32> = vs_TEXCOORD7;
          let x_3739 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_3735 * vec4<f32>(x_3736.x, x_3736.x, x_3736.x, x_3736.x)) + x_3739);
          let x_3741 : i32 = u_xlati90;
          let x_3744 : i32 = u_xlati90;
          let x_3748 : vec4<f32> = x_1599.x_AdditionalLightsWorldToLights[((x_3741 + 2i) / 4i)][((x_3744 + 2i) % 4i)];
          let x_3749 : vec3<f32> = vs_TEXCOORD7;
          let x_3752 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_3748 * vec4<f32>(x_3749.z, x_3749.z, x_3749.z, x_3749.z)) + x_3752);
          let x_3754 : vec4<f32> = u_xlat13;
          let x_3755 : i32 = u_xlati90;
          let x_3758 : i32 = u_xlati90;
          let x_3762 : vec4<f32> = x_1599.x_AdditionalLightsWorldToLights[((x_3755 + 3i) / 4i)][((x_3758 + 3i) % 4i)];
          u_xlat13 = (x_3754 + x_3762);
          let x_3764 : vec4<f32> = u_xlat13;
          let x_3766 : vec4<f32> = u_xlat13;
          let x_3768 : vec3<f32> = (vec3<f32>(x_3764.x, x_3764.y, x_3764.z) / vec3<f32>(x_3766.w, x_3766.w, x_3766.w));
          let x_3769 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3768.x, x_3768.y, x_3768.z, x_3769.w);
          let x_3771 : vec4<f32> = u_xlat13;
          let x_3773 : vec4<f32> = u_xlat13;
          u_xlat62.x = dot(vec3<f32>(x_3771.x, x_3771.y, x_3771.z), vec3<f32>(x_3773.x, x_3773.y, x_3773.z));
          let x_3778 : f32 = u_xlat62.x;
          u_xlat62.x = inverseSqrt(x_3778);
          let x_3781 : vec2<f32> = u_xlat62;
          let x_3783 : vec4<f32> = u_xlat13;
          let x_3785 : vec3<f32> = (vec3<f32>(x_3781.x, x_3781.x, x_3781.x) * vec3<f32>(x_3783.x, x_3783.y, x_3783.z));
          let x_3786 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3785.x, x_3785.y, x_3785.z, x_3786.w);
          let x_3788 : vec4<f32> = u_xlat13;
          u_xlat62.x = dot(abs(vec3<f32>(x_3788.x, x_3788.y, x_3788.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3795 : f32 = u_xlat62.x;
          u_xlat62.x = max(x_3795, 0.00000099999999747524f);
          let x_3800 : f32 = u_xlat62.x;
          u_xlat62.x = (1.0f / x_3800);
          let x_3803 : vec2<f32> = u_xlat62;
          let x_3805 : vec4<f32> = u_xlat13;
          let x_3807 : vec3<f32> = (vec3<f32>(x_3803.x, x_3803.x, x_3803.x) * vec3<f32>(x_3805.z, x_3805.x, x_3805.y));
          let x_3808 : vec4<f32> = u_xlat14;
          u_xlat14 = vec4<f32>(x_3807.x, x_3807.y, x_3807.z, x_3808.w);
          let x_3811 : f32 = u_xlat14.x;
          u_xlat14.x = -(x_3811);
          let x_3815 : f32 = u_xlat14.x;
          u_xlat14.x = clamp(x_3815, 0.0f, 1.0f);
          let x_3819 : vec4<f32> = u_xlat14;
          let x_3821 : vec4<bool> = (vec4<f32>(x_3819.y, x_3819.z, x_3819.y, x_3819.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb66 = vec2<bool>(x_3821.x, x_3821.y);
          let x_3825 : bool = u_xlatb66.x;
          if (x_3825) {
            let x_3830 : f32 = u_xlat14.x;
            x_3826 = x_3830;
          } else {
            let x_3833 : f32 = u_xlat14.x;
            x_3826 = -(x_3833);
          }
          let x_3835 : f32 = x_3826;
          u_xlat66.x = x_3835;
          let x_3838 : bool = u_xlatb66.y;
          if (x_3838) {
            let x_3843 : f32 = u_xlat14.x;
            x_3839 = x_3843;
          } else {
            let x_3846 : f32 = u_xlat14.x;
            x_3839 = -(x_3846);
          }
          let x_3848 : f32 = x_3839;
          u_xlat66.y = x_3848;
          let x_3850 : vec4<f32> = u_xlat13;
          let x_3852 : vec2<f32> = u_xlat62;
          let x_3855 : vec2<f32> = u_xlat66;
          u_xlat62 = ((vec2<f32>(x_3850.x, x_3850.y) * vec2<f32>(x_3852.x, x_3852.x)) + x_3855);
          let x_3857 : vec2<f32> = u_xlat62;
          u_xlat62 = ((x_3857 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3860 : vec2<f32> = u_xlat62;
          u_xlat62 = clamp(x_3860, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3864 : i32 = u_xlati85;
          let x_3866 : vec4<f32> = x_1599.x_AdditionalLightsCookieAtlasUVRects[x_3864];
          let x_3868 : vec2<f32> = u_xlat62;
          let x_3870 : i32 = u_xlati85;
          let x_3872 : vec4<f32> = x_1599.x_AdditionalLightsCookieAtlasUVRects[x_3870];
          let x_3874 : vec2<f32> = ((vec2<f32>(x_3866.x, x_3866.y) * x_3868) + vec2<f32>(x_3872.z, x_3872.w));
          let x_3875 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3874.x, x_3874.y, x_3875.z, x_3875.w);
        }
      }
      let x_3882 : vec4<f32> = u_xlat12;
      let x_3884 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3882.x, x_3882.y), 0.0f);
      u_xlat12 = x_3884;
      let x_3886 : bool = u_xlatb8.y;
      if (x_3886) {
        let x_3891 : f32 = u_xlat12.w;
        x_3887 = x_3891;
      } else {
        let x_3894 : f32 = u_xlat12.x;
        x_3887 = x_3894;
      }
      let x_3895 : f32 = x_3887;
      u_xlat62.x = x_3895;
      let x_3898 : bool = u_xlatb8.x;
      if (x_3898) {
        let x_3902 : vec4<f32> = u_xlat12;
        x_3899 = vec3<f32>(x_3902.x, x_3902.y, x_3902.z);
      } else {
        let x_3905 : vec2<f32> = u_xlat62;
        x_3899 = vec3<f32>(x_3905.x, x_3905.x, x_3905.x);
      }
      let x_3907 : vec3<f32> = x_3899;
      let x_3908 : vec4<f32> = u_xlat12;
      u_xlat12 = vec4<f32>(x_3907.x, x_3907.y, x_3907.z, x_3908.w);
    } else {
      u_xlat12.x = 1.0f;
      u_xlat12.y = 1.0f;
      u_xlat12.z = 1.0f;
    }
    let x_3914 : vec4<f32> = u_xlat12;
    let x_3916 : i32 = u_xlati85;
    let x_3918 : vec4<f32> = x_2083.x_AdditionalLightsColor[x_3916];
    let x_3920 : vec3<f32> = (vec3<f32>(x_3914.x, x_3914.y, x_3914.z) * vec3<f32>(x_3918.x, x_3918.y, x_3918.z));
    let x_3921 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_3920.x, x_3920.y, x_3920.z, x_3921.w);
    let x_3923 : f32 = u_xlat86;
    let x_3924 : f32 = u_xlat88;
    u_xlat85 = (x_3923 * x_3924);
    let x_3926 : vec4<f32> = u_xlat2;
    let x_3928 : vec4<f32> = u_xlat11;
    u_xlat86 = dot(vec3<f32>(x_3926.x, x_3926.y, x_3926.z), vec3<f32>(x_3928.x, x_3928.y, x_3928.z));
    let x_3931 : f32 = u_xlat86;
    u_xlat86 = clamp(x_3931, 0.0f, 1.0f);
    let x_3933 : f32 = u_xlat85;
    let x_3934 : f32 = u_xlat86;
    u_xlat85 = (x_3933 * x_3934);
    let x_3936 : f32 = u_xlat85;
    let x_3938 : vec4<f32> = u_xlat12;
    let x_3940 : vec3<f32> = (vec3<f32>(x_3936, x_3936, x_3936) * vec3<f32>(x_3938.x, x_3938.y, x_3938.z));
    let x_3941 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_3940.x, x_3940.y, x_3940.z, x_3941.w);
    let x_3943 : vec4<f32> = u_xlat10;
    let x_3945 : f32 = u_xlat87;
    let x_3948 : vec4<f32> = u_xlat6;
    let x_3950 : vec3<f32> = ((vec3<f32>(x_3943.x, x_3943.y, x_3943.z) * vec3<f32>(x_3945, x_3945, x_3945)) + vec3<f32>(x_3948.x, x_3948.y, x_3948.z));
    let x_3951 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3950.x, x_3950.y, x_3950.z, x_3951.w);
    let x_3953 : vec4<f32> = u_xlat10;
    let x_3955 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_3953.x, x_3953.y, x_3953.z), vec3<f32>(x_3955.x, x_3955.y, x_3955.z));
    let x_3958 : f32 = u_xlat85;
    u_xlat85 = max(x_3958, 1.17549435e-38f);
    let x_3960 : f32 = u_xlat85;
    u_xlat85 = inverseSqrt(x_3960);
    let x_3962 : f32 = u_xlat85;
    let x_3964 : vec4<f32> = u_xlat10;
    let x_3966 : vec3<f32> = (vec3<f32>(x_3962, x_3962, x_3962) * vec3<f32>(x_3964.x, x_3964.y, x_3964.z));
    let x_3967 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3966.x, x_3966.y, x_3966.z, x_3967.w);
    let x_3969 : vec4<f32> = u_xlat2;
    let x_3971 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_3969.x, x_3969.y, x_3969.z), vec3<f32>(x_3971.x, x_3971.y, x_3971.z));
    let x_3974 : f32 = u_xlat85;
    u_xlat85 = clamp(x_3974, 0.0f, 1.0f);
    let x_3976 : vec4<f32> = u_xlat11;
    let x_3978 : vec4<f32> = u_xlat10;
    u_xlat86 = dot(vec3<f32>(x_3976.x, x_3976.y, x_3976.z), vec3<f32>(x_3978.x, x_3978.y, x_3978.z));
    let x_3981 : f32 = u_xlat86;
    u_xlat86 = clamp(x_3981, 0.0f, 1.0f);
    let x_3983 : f32 = u_xlat85;
    let x_3984 : f32 = u_xlat85;
    u_xlat85 = (x_3983 * x_3984);
    let x_3986 : f32 = u_xlat85;
    let x_3988 : f32 = u_xlat1.x;
    u_xlat85 = ((x_3986 * x_3988) + 1.00001001358032226562f);
    let x_3991 : f32 = u_xlat86;
    let x_3992 : f32 = u_xlat86;
    u_xlat86 = (x_3991 * x_3992);
    let x_3994 : f32 = u_xlat85;
    let x_3995 : f32 = u_xlat85;
    u_xlat85 = (x_3994 * x_3995);
    let x_3997 : f32 = u_xlat86;
    u_xlat86 = max(x_3997, 0.10000000149011611938f);
    let x_3999 : f32 = u_xlat85;
    let x_4000 : f32 = u_xlat86;
    u_xlat85 = (x_3999 * x_4000);
    let x_4002 : f32 = u_xlat82;
    let x_4003 : f32 = u_xlat85;
    u_xlat85 = (x_4002 * x_4003);
    let x_4005 : f32 = u_xlat83;
    let x_4006 : f32 = u_xlat85;
    u_xlat85 = (x_4005 / x_4006);
    let x_4008 : vec4<f32> = u_xlat0;
    let x_4010 : f32 = u_xlat85;
    let x_4013 : vec4<f32> = u_xlat4;
    let x_4015 : vec3<f32> = ((vec3<f32>(x_4008.x, x_4008.y, x_4008.z) * vec3<f32>(x_4010, x_4010, x_4010)) + vec3<f32>(x_4013.x, x_4013.y, x_4013.z));
    let x_4016 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_4015.x, x_4015.y, x_4015.z, x_4016.w);
    let x_4018 : vec4<f32> = u_xlat10;
    let x_4020 : vec4<f32> = u_xlat12;
    let x_4023 : vec4<f32> = u_xlat9;
    let x_4025 : vec3<f32> = ((vec3<f32>(x_4018.x, x_4018.y, x_4018.z) * vec3<f32>(x_4020.x, x_4020.y, x_4020.z)) + vec3<f32>(x_4023.x, x_4023.y, x_4023.z));
    let x_4026 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4025.x, x_4025.y, x_4025.z, x_4026.w);

    continuing {
      let x_4028 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4028 + bitcast<u32>(1i));
    }
  }
  let x_4030 : vec4<f32> = u_xlat7;
  let x_4032 : vec4<f32> = u_xlat5;
  let x_4035 : vec3<f32> = u_xlat3;
  let x_4036 : vec3<f32> = ((vec3<f32>(x_4030.x, x_4030.y, x_4030.z) * vec3<f32>(x_4032.x, x_4032.y, x_4032.z)) + x_4035);
  let x_4037 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4036.x, x_4036.y, x_4036.z, x_4037.w);
  let x_4039 : vec4<f32> = u_xlat9;
  let x_4041 : vec4<f32> = u_xlat0;
  let x_4043 : vec3<f32> = (vec3<f32>(x_4039.x, x_4039.y, x_4039.z) + vec3<f32>(x_4041.x, x_4041.y, x_4041.z));
  let x_4044 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4043.x, x_4043.y, x_4043.z, x_4044.w);
  let x_4046 : f32 = u_xlat28;
  let x_4047 : f32 = u_xlat28;
  u_xlat81 = (x_4046 * -(x_4047));
  let x_4050 : f32 = u_xlat81;
  u_xlat81 = exp2(x_4050);
  let x_4052 : vec4<f32> = u_xlat0;
  let x_4055 : vec4<f32> = x_29.unity_FogColor;
  let x_4058 : vec3<f32> = (vec3<f32>(x_4052.x, x_4052.y, x_4052.z) + -(vec3<f32>(x_4055.x, x_4055.y, x_4055.z)));
  let x_4059 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4058.x, x_4058.y, x_4058.z, x_4059.w);
  let x_4063 : f32 = u_xlat81;
  let x_4065 : vec4<f32> = u_xlat0;
  let x_4069 : vec4<f32> = x_29.unity_FogColor;
  let x_4071 : vec3<f32> = ((vec3<f32>(x_4063, x_4063, x_4063) * vec3<f32>(x_4065.x, x_4065.y, x_4065.z)) + vec3<f32>(x_4069.x, x_4069.y, x_4069.z));
  let x_4072 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4071.x, x_4071.y, x_4071.z, x_4072.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(5) vs_TEXCOORD8_param : vec4<f32>, @location(2) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD5_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


