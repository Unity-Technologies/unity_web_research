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
  unity_OrthoParams : vec4<f32>,
  /* @offset(96) */
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_MainTex_TexelSize : vec4<f32>,
  /* @offset(16) */
  x_MRLL_TexelSize : vec4<f32>,
  /* @offset(32) */
  x_BumpMap_TexelSize : vec4<f32>,
  /* @offset(48) */
  x_Color1 : vec4<f32>,
  /* @offset(64) */
  x_Color2 : vec4<f32>,
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

@group(0) @binding(5) var x_MainTex : texture_2d<f32>;

@group(0) @binding(12) var samplerSamplerState_Trilinear_Clamp : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(6) var x_MRLL : texture_2d<f32>;

var<private> u_xlat2 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_54 : UnityPerMaterial;

var<private> u_xlat53 : f32;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlatb4 : vec3<bool>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(7) var x_BumpMap : texture_2d<f32>;

var<private> u_xlat26 : vec2<f32>;

var<private> u_xlatb27 : vec3<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_271 : UnityPerDraw;

var<private> u_xlat27 : vec3<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> u_xlatb26 : bool;

var<private> vs_INTERP7 : vec3<f32>;

var<private> u_xlat52 : f32;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlatb81 : bool;

@group(1) @binding(3) var<uniform> x_558 : LightShadows;

var<private> vs_INTERP3 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat81 : f32;

var<private> u_xlatb82 : bool;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat82 : f32;

var<private> u_xlat83 : f32;

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlatb83 : bool;

@group(1) @binding(4) var<uniform> x_1845 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat84 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu26 : u32;

var<private> u_xlatu82 : u32;

var<private> u_xlati83 : i32;

var<private> u_xlati82 : i32;

@group(1) @binding(1) var<uniform> x_2338 : AdditionalLights;

var<private> u_xlat59 : f32;

var<private> u_xlati59 : i32;

var<private> u_xlatb85 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat86 : f32;

var<private> u_xlat85 : f32;

var<private> u_xlatb59 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat87 : f32;

var<private> u_xlat39 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat40 : vec2<f32>;

var<private> u_xlat72 : vec2<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlatb86 : bool;

var<private> u_xlati85 : i32;

var<private> u_xlati86 : i32;

var<private> u_xlati87 : i32;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlatb63 : vec2<bool>;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu81 : u32;

fn main_1() {
  var x_380 : f32;
  var x_392 : f32;
  var x_404 : f32;
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
  var x_1928 : f32;
  var x_1939 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2475 : f32;
  var x_2485 : f32;
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
  var x_4060 : f32;
  var x_4073 : f32;
  var x_4121 : f32;
  var x_4132 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_INTERP5;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(x_MainTex, samplerSamplerState_Trilinear_Clamp, vec2<f32>(x_23.x, x_23.y), x_36);
  u_xlat0 = x_37;
  let x_43 : vec4<f32> = vs_INTERP5;
  let x_46 : f32 = x_29.x_GlobalMipBias.x;
  let x_47 : vec4<f32> = textureSampleBias(x_MRLL, samplerSamplerState_Trilinear_Clamp, vec2<f32>(x_43.x, x_43.y), x_46);
  u_xlat1 = x_47;
  let x_50 : vec4<f32> = u_xlat1;
  let x_58 : vec4<f32> = x_54.x_Color2;
  u_xlat2 = (vec3<f32>(x_50.w, x_50.w, x_50.w) * vec3<f32>(x_58.x, x_58.y, x_58.z));
  let x_63 : vec4<f32> = x_54.x_Color1;
  let x_65 : vec4<f32> = u_xlat1;
  let x_68 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_63.x, x_63.y, x_63.z) * vec3<f32>(x_65.z, x_65.z, x_65.z)) + x_68);
  let x_74 : f32 = u_xlat1.w;
  let x_77 : f32 = u_xlat1.z;
  u_xlat53 = (x_74 + x_77);
  let x_79 : f32 = u_xlat53;
  u_xlat53 = clamp(x_79, 0.0f, 1.0f);
  let x_84 : vec4<f32> = u_xlat0;
  let x_88 : vec3<f32> = (-(vec3<f32>(x_84.x, x_84.y, x_84.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_89 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_88.x, x_88.y, x_88.z, x_89.w);
  let x_91 : vec4<f32> = u_xlat3;
  let x_93 : vec4<f32> = u_xlat3;
  let x_95 : vec3<f32> = (vec3<f32>(x_91.x, x_91.y, x_91.z) + vec3<f32>(x_93.x, x_93.y, x_93.z));
  let x_96 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_95.x, x_95.y, x_95.z, x_96.w);
  let x_99 : vec3<f32> = u_xlat2;
  u_xlat4 = (-(x_99) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_102 : vec4<f32> = u_xlat3;
  let x_105 : vec3<f32> = u_xlat4;
  let x_107 : vec3<f32> = ((-(vec3<f32>(x_102.x, x_102.y, x_102.z)) * x_105) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_108 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_107.x, x_107.y, x_107.z, x_108.w);
  let x_110 : vec4<f32> = u_xlat0;
  let x_112 : vec4<f32> = u_xlat0;
  u_xlat4 = (vec3<f32>(x_110.x, x_110.y, x_110.z) + vec3<f32>(x_112.x, x_112.y, x_112.z));
  let x_115 : vec3<f32> = u_xlat2;
  let x_116 : vec3<f32> = u_xlat4;
  u_xlat2 = (x_115 * x_116);
  let x_124 : vec4<f32> = u_xlat0;
  let x_127 : vec4<bool> = (vec4<f32>(0.5f, 0.5f, 0.5f, 0.0f) >= vec4<f32>(x_124.x, x_124.y, x_124.z, x_124.x));
  u_xlatb4 = vec3<bool>(x_127.x, x_127.y, x_127.z);
  let x_132 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_132);
  let x_137 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_137);
  let x_141 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_141);
  let x_145 : bool = u_xlatb4.x;
  u_xlat4.x = select(1.0f, 0.0f, x_145);
  let x_149 : bool = u_xlatb4.y;
  u_xlat4.y = select(1.0f, 0.0f, x_149);
  let x_153 : bool = u_xlatb4.z;
  u_xlat4.z = select(1.0f, 0.0f, x_153);
  let x_156 : vec4<f32> = u_xlat3;
  let x_158 : vec3<f32> = u_xlat4;
  let x_159 : vec3<f32> = (vec3<f32>(x_156.x, x_156.y, x_156.z) * x_158);
  let x_160 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_159.x, x_159.y, x_159.z, x_160.w);
  let x_162 : vec3<f32> = u_xlat2;
  let x_163 : vec3<f32> = u_xlat5;
  let x_165 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_162 * x_163) + vec3<f32>(x_165.x, x_165.y, x_165.z));
  let x_168 : vec4<f32> = u_xlat0;
  let x_171 : vec3<f32> = u_xlat2;
  u_xlat2 = (-(vec3<f32>(x_168.x, x_168.y, x_168.z)) + x_171);
  let x_173 : f32 = u_xlat53;
  let x_175 : vec3<f32> = u_xlat2;
  let x_177 : vec4<f32> = u_xlat0;
  u_xlat2 = ((vec3<f32>(x_173, x_173, x_173) * x_175) + vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_181 : f32 = u_xlat0.x;
  u_xlat0.x = (x_181 + -0.15000000596046447754f);
  let x_186 : f32 = u_xlat0.x;
  u_xlat0.x = ceil(x_186);
  let x_190 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_190) + 1.0f);
  let x_194 : vec4<f32> = u_xlat0;
  let x_199 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_194.x, x_194.x, x_194.x) * vec3<f32>(0.40000000596046447754f, 0.40000000596046447754f, 0.40000000596046447754f)) + x_199);
  let x_205 : vec4<f32> = vs_INTERP5;
  let x_208 : f32 = x_29.x_GlobalMipBias.x;
  let x_209 : vec4<f32> = textureSampleBias(x_BumpMap, samplerSamplerState_Trilinear_Clamp, vec2<f32>(x_205.x, x_205.y), x_208);
  let x_210 : vec3<f32> = vec3<f32>(x_209.x, x_209.y, x_209.w);
  let x_211 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_210.x, x_210.y, x_210.z, x_211.w);
  let x_214 : f32 = u_xlat3.x;
  let x_216 : f32 = u_xlat3.z;
  u_xlat3.x = (x_214 * x_216);
  let x_221 : vec4<f32> = u_xlat3;
  u_xlat26 = ((vec2<f32>(x_221.x, x_221.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_229 : vec2<f32> = u_xlat26;
  let x_230 : vec2<f32> = u_xlat26;
  u_xlat53 = dot(x_229, x_230);
  let x_232 : f32 = u_xlat53;
  u_xlat53 = min(x_232, 1.0f);
  let x_234 : f32 = u_xlat53;
  u_xlat53 = (-(x_234) + 1.0f);
  let x_237 : f32 = u_xlat53;
  u_xlat53 = sqrt(x_237);
  let x_239 : f32 = u_xlat53;
  u_xlat53 = max(x_239, 0.0000000000000001f);
  let x_243 : f32 = u_xlat1.x;
  let x_245 : f32 = u_xlat0.x;
  u_xlat0.x = (x_243 + x_245);
  let x_249 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_249, 0.0f, 1.0f);
  let x_253 : f32 = u_xlat1.y;
  u_xlat1.x = max(x_253, 0.0f);
  let x_257 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_257, 0.85000002384185791016f);
  let x_265 : f32 = vs_INTERP4.w;
  u_xlatb27.x = (0.0f < x_265);
  let x_273 : f32 = x_271.unity_WorldTransformParams.w;
  u_xlatb27.z = (x_273 >= 0.0f);
  let x_278 : bool = u_xlatb27.x;
  u_xlat27.x = select(-1.0f, 1.0f, x_278);
  let x_282 : bool = u_xlatb27.z;
  u_xlat27.z = select(-1.0f, 1.0f, x_282);
  let x_286 : f32 = u_xlat27.z;
  let x_288 : f32 = u_xlat27.x;
  u_xlat27.x = (x_286 * x_288);
  let x_291 : vec4<f32> = vs_INTERP4;
  let x_295 : vec3<f32> = vs_INTERP8;
  let x_297 : vec3<f32> = (vec3<f32>(x_291.y, x_291.z, x_291.x) * vec3<f32>(x_295.z, x_295.x, x_295.y));
  let x_298 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_297.x, x_297.y, x_297.z, x_298.w);
  let x_300 : vec3<f32> = vs_INTERP8;
  let x_302 : vec4<f32> = vs_INTERP4;
  let x_305 : vec4<f32> = u_xlat3;
  let x_308 : vec3<f32> = ((vec3<f32>(x_300.y, x_300.z, x_300.x) * vec3<f32>(x_302.z, x_302.x, x_302.y)) + -(vec3<f32>(x_305.x, x_305.y, x_305.z)));
  let x_309 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
  let x_311 : vec3<f32> = u_xlat27;
  let x_313 : vec4<f32> = u_xlat3;
  let x_315 : vec3<f32> = (vec3<f32>(x_311.x, x_311.x, x_311.x) * vec3<f32>(x_313.x, x_313.y, x_313.z));
  let x_316 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
  let x_318 : vec2<f32> = u_xlat26;
  let x_320 : vec4<f32> = u_xlat3;
  let x_322 : vec3<f32> = (vec3<f32>(x_318.y, x_318.y, x_318.y) * vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_323 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_325 : vec2<f32> = u_xlat26;
  let x_327 : vec4<f32> = vs_INTERP4;
  let x_330 : vec4<f32> = u_xlat3;
  let x_332 : vec3<f32> = ((vec3<f32>(x_325.x, x_325.x, x_325.x) * vec3<f32>(x_327.x, x_327.y, x_327.z)) + vec3<f32>(x_330.x, x_330.y, x_330.z));
  let x_333 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_332.x, x_332.y, x_332.z, x_333.w);
  let x_335 : f32 = u_xlat53;
  let x_337 : vec3<f32> = vs_INTERP8;
  let x_339 : vec4<f32> = u_xlat3;
  u_xlat27 = ((vec3<f32>(x_335, x_335, x_335) * x_337) + vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_342 : vec3<f32> = u_xlat27;
  let x_343 : vec3<f32> = u_xlat27;
  u_xlat26.x = dot(x_342, x_343);
  let x_347 : f32 = u_xlat26.x;
  u_xlat26.x = inverseSqrt(x_347);
  let x_350 : vec2<f32> = u_xlat26;
  let x_352 : vec3<f32> = u_xlat27;
  let x_353 : vec3<f32> = (vec3<f32>(x_350.x, x_350.x, x_350.x) * x_352);
  let x_354 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  let x_359 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb26 = (x_359 == 0.0f);
  let x_362 : vec3<f32> = vs_INTERP7;
  let x_366 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat27 = (-(x_362) + x_366);
  let x_369 : vec3<f32> = u_xlat27;
  let x_370 : vec3<f32> = u_xlat27;
  u_xlat52 = dot(x_369, x_370);
  let x_372 : f32 = u_xlat52;
  u_xlat52 = inverseSqrt(x_372);
  let x_374 : f32 = u_xlat52;
  let x_376 : vec3<f32> = u_xlat27;
  u_xlat27 = (vec3<f32>(x_374, x_374, x_374) * x_376);
  let x_378 : bool = u_xlatb26;
  if (x_378) {
    let x_384 : f32 = u_xlat27.x;
    x_380 = x_384;
  } else {
    let x_388 : f32 = x_29.unity_MatrixV[0i].z;
    x_380 = x_388;
  }
  let x_389 : f32 = x_380;
  u_xlat4.x = x_389;
  let x_391 : bool = u_xlatb26;
  if (x_391) {
    let x_396 : f32 = u_xlat27.y;
    x_392 = x_396;
  } else {
    let x_400 : f32 = x_29.unity_MatrixV[1i].z;
    x_392 = x_400;
  }
  let x_401 : f32 = x_392;
  u_xlat4.y = x_401;
  let x_403 : bool = u_xlatb26;
  if (x_403) {
    let x_408 : f32 = u_xlat27.z;
    x_404 = x_408;
  } else {
    let x_412 : f32 = x_29.unity_MatrixV[2i].z;
    x_404 = x_412;
  }
  let x_413 : f32 = x_404;
  u_xlat4.z = x_413;
  u_xlat3.w = 1.0f;
  let x_418 : vec4<f32> = x_271.unity_SHAr;
  let x_419 : vec4<f32> = u_xlat3;
  u_xlat5.x = dot(x_418, x_419);
  let x_424 : vec4<f32> = x_271.unity_SHAg;
  let x_425 : vec4<f32> = u_xlat3;
  u_xlat5.y = dot(x_424, x_425);
  let x_430 : vec4<f32> = x_271.unity_SHAb;
  let x_431 : vec4<f32> = u_xlat3;
  u_xlat5.z = dot(x_430, x_431);
  let x_435 : vec4<f32> = u_xlat3;
  let x_437 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec4<f32>(x_435.y, x_435.z, x_435.z, x_435.x) * vec4<f32>(x_437.x, x_437.y, x_437.z, x_437.z));
  let x_443 : vec4<f32> = x_271.unity_SHBr;
  let x_444 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_443, x_444);
  let x_449 : vec4<f32> = x_271.unity_SHBg;
  let x_450 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_449, x_450);
  let x_455 : vec4<f32> = x_271.unity_SHBb;
  let x_456 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_455, x_456);
  let x_460 : f32 = u_xlat3.y;
  let x_462 : f32 = u_xlat3.y;
  u_xlat26.x = (x_460 * x_462);
  let x_466 : f32 = u_xlat3.x;
  let x_468 : f32 = u_xlat3.x;
  let x_471 : f32 = u_xlat26.x;
  u_xlat26.x = ((x_466 * x_468) + -(x_471));
  let x_477 : vec4<f32> = x_271.unity_SHC;
  let x_479 : vec2<f32> = u_xlat26;
  let x_482 : vec4<f32> = u_xlat7;
  u_xlat27 = ((vec3<f32>(x_477.x, x_477.y, x_477.z) * vec3<f32>(x_479.x, x_479.x, x_479.x)) + vec3<f32>(x_482.x, x_482.y, x_482.z));
  let x_485 : vec3<f32> = u_xlat27;
  let x_486 : vec3<f32> = u_xlat5;
  u_xlat27 = (x_485 + x_486);
  let x_488 : vec3<f32> = u_xlat27;
  u_xlat27 = max(x_488, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_492 : f32 = u_xlat0.x;
  u_xlat26.x = ((-(x_492) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_499 : f32 = u_xlat26.x;
  let x_502 : f32 = u_xlat1.x;
  u_xlat52 = (-(x_499) + x_502);
  let x_504 : vec2<f32> = u_xlat26;
  let x_506 : vec3<f32> = u_xlat2;
  u_xlat5 = (vec3<f32>(x_504.x, x_504.x, x_504.x) * x_506);
  let x_508 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_508 + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_512 : vec4<f32> = u_xlat0;
  let x_514 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_512.x, x_512.x, x_512.x) * x_514) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_520 : f32 = u_xlat1.x;
  u_xlat0.x = (-(x_520) + 1.0f);
  let x_525 : f32 = u_xlat0.x;
  let x_527 : f32 = u_xlat0.x;
  u_xlat26.x = (x_525 * x_527);
  let x_531 : f32 = u_xlat26.x;
  let x_533 : f32 = u_xlat26.x;
  u_xlat1.x = (x_531 * x_533);
  let x_536 : f32 = u_xlat52;
  u_xlat52 = (x_536 + 1.0f);
  let x_538 : f32 = u_xlat52;
  u_xlat52 = min(x_538, 1.0f);
  let x_542 : f32 = u_xlat26.x;
  u_xlat80 = ((x_542 * 4.0f) + 2.0f);
  let x_548 : f32 = u_xlat0.w;
  u_xlat78 = min(x_548, 1.0f);
  let x_561 : f32 = x_558.x_MainLightShadowParams.y;
  u_xlatb81 = (0.0f < x_561);
  let x_563 : bool = u_xlatb81;
  if (x_563) {
    let x_567 : f32 = x_558.x_MainLightShadowParams.y;
    u_xlatb81 = (x_567 == 1.0f);
    let x_569 : bool = u_xlatb81;
    if (x_569) {
      let x_573 : vec4<f32> = vs_INTERP3;
      let x_576 : vec4<f32> = x_558.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_573.x, x_573.y, x_573.x, x_573.y) + x_576);
      let x_580 : vec4<f32> = u_xlat6;
      let x_581 : vec2<f32> = vec2<f32>(x_580.x, x_580.y);
      let x_583 : f32 = vs_INTERP3.z;
      txVec0 = vec3<f32>(x_581.x, x_581.y, x_583);
      let x_595 : vec3<f32> = txVec0;
      let x_597 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_595.xy, x_595.z);
      u_xlat7.x = x_597;
      let x_600 : vec4<f32> = u_xlat6;
      let x_601 : vec2<f32> = vec2<f32>(x_600.z, x_600.w);
      let x_603 : f32 = vs_INTERP3.z;
      txVec1 = vec3<f32>(x_601.x, x_601.y, x_603);
      let x_610 : vec3<f32> = txVec1;
      let x_612 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_610.xy, x_610.z);
      u_xlat7.y = x_612;
      let x_614 : vec4<f32> = vs_INTERP3;
      let x_618 : vec4<f32> = x_558.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_614.x, x_614.y, x_614.x, x_614.y) + x_618);
      let x_621 : vec4<f32> = u_xlat6;
      let x_622 : vec2<f32> = vec2<f32>(x_621.x, x_621.y);
      let x_624 : f32 = vs_INTERP3.z;
      txVec2 = vec3<f32>(x_622.x, x_622.y, x_624);
      let x_631 : vec3<f32> = txVec2;
      let x_633 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_631.xy, x_631.z);
      u_xlat7.z = x_633;
      let x_636 : vec4<f32> = u_xlat6;
      let x_637 : vec2<f32> = vec2<f32>(x_636.z, x_636.w);
      let x_639 : f32 = vs_INTERP3.z;
      txVec3 = vec3<f32>(x_637.x, x_637.y, x_639);
      let x_646 : vec3<f32> = txVec3;
      let x_648 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_646.xy, x_646.z);
      u_xlat7.w = x_648;
      let x_651 : vec4<f32> = u_xlat7;
      u_xlat81 = dot(x_651, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_658 : f32 = x_558.x_MainLightShadowParams.y;
      u_xlatb82 = (x_658 == 2.0f);
      let x_660 : bool = u_xlatb82;
      if (x_660) {
        let x_663 : vec4<f32> = vs_INTERP3;
        let x_667 : vec4<f32> = x_558.x_MainLightShadowmapSize;
        let x_671 : vec2<f32> = ((vec2<f32>(x_663.x, x_663.y) * vec2<f32>(x_667.z, x_667.w)) + vec2<f32>(0.5f, 0.5f));
        let x_672 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_671.x, x_671.y, x_672.z, x_672.w);
        let x_674 : vec4<f32> = u_xlat6;
        let x_676 : vec2<f32> = floor(vec2<f32>(x_674.x, x_674.y));
        let x_677 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_676.x, x_676.y, x_677.z, x_677.w);
        let x_680 : vec4<f32> = vs_INTERP3;
        let x_683 : vec4<f32> = x_558.x_MainLightShadowmapSize;
        let x_686 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_680.x, x_680.y) * vec2<f32>(x_683.z, x_683.w)) + -(vec2<f32>(x_686.x, x_686.y)));
        let x_690 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_690.x, x_690.x, x_690.y, x_690.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_695 : vec4<f32> = u_xlat7;
        let x_697 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_695.x, x_695.x, x_695.z, x_695.z) * vec4<f32>(x_697.x, x_697.x, x_697.z, x_697.z));
        let x_700 : vec4<f32> = u_xlat8;
        let x_704 : vec2<f32> = (vec2<f32>(x_700.y, x_700.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_705 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_704.x, x_705.y, x_704.y, x_705.w);
        let x_707 : vec4<f32> = u_xlat8;
        let x_710 : vec2<f32> = u_xlat58;
        let x_712 : vec2<f32> = ((vec2<f32>(x_707.x, x_707.z) * vec2<f32>(0.5f, 0.5f)) + -(x_710));
        let x_713 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_712.x, x_712.y, x_713.z, x_713.w);
        let x_716 : vec2<f32> = u_xlat58;
        u_xlat60 = (-(x_716) + vec2<f32>(1.0f, 1.0f));
        let x_721 : vec2<f32> = u_xlat58;
        let x_723 : vec2<f32> = min(x_721, vec2<f32>(0.0f, 0.0f));
        let x_724 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_723.x, x_723.y, x_724.z, x_724.w);
        let x_726 : vec4<f32> = u_xlat9;
        let x_729 : vec4<f32> = u_xlat9;
        let x_732 : vec2<f32> = u_xlat60;
        let x_733 : vec2<f32> = ((-(vec2<f32>(x_726.x, x_726.y)) * vec2<f32>(x_729.x, x_729.y)) + x_732);
        let x_734 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_733.x, x_733.y, x_734.z, x_734.w);
        let x_736 : vec2<f32> = u_xlat58;
        u_xlat58 = max(x_736, vec2<f32>(0.0f, 0.0f));
        let x_738 : vec2<f32> = u_xlat58;
        let x_740 : vec2<f32> = u_xlat58;
        let x_742 : vec4<f32> = u_xlat7;
        u_xlat58 = ((-(x_738) * x_740) + vec2<f32>(x_742.y, x_742.w));
        let x_745 : vec4<f32> = u_xlat9;
        let x_747 : vec2<f32> = (vec2<f32>(x_745.x, x_745.y) + vec2<f32>(1.0f, 1.0f));
        let x_748 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_747.x, x_747.y, x_748.z, x_748.w);
        let x_750 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_750 + vec2<f32>(1.0f, 1.0f));
        let x_753 : vec4<f32> = u_xlat8;
        let x_757 : vec2<f32> = (vec2<f32>(x_753.x, x_753.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_758 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_757.x, x_757.y, x_758.z, x_758.w);
        let x_760 : vec2<f32> = u_xlat60;
        let x_761 : vec2<f32> = (x_760 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_762 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_761.x, x_761.y, x_762.z, x_762.w);
        let x_764 : vec4<f32> = u_xlat9;
        let x_766 : vec2<f32> = (vec2<f32>(x_764.x, x_764.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_767 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_766.x, x_766.y, x_767.z, x_767.w);
        let x_770 : vec2<f32> = u_xlat58;
        let x_771 : vec2<f32> = (x_770 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_772 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_771.x, x_771.y, x_772.z, x_772.w);
        let x_774 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_774.y, x_774.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_778 : f32 = u_xlat9.x;
        u_xlat10.z = x_778;
        let x_781 : f32 = u_xlat58.x;
        u_xlat10.w = x_781;
        let x_784 : f32 = u_xlat11.x;
        u_xlat8.z = x_784;
        let x_787 : f32 = u_xlat7.x;
        u_xlat8.w = x_787;
        let x_790 : vec4<f32> = u_xlat8;
        let x_792 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_790.z, x_790.w, x_790.x, x_790.z) + vec4<f32>(x_792.z, x_792.w, x_792.x, x_792.z));
        let x_796 : f32 = u_xlat10.y;
        u_xlat9.z = x_796;
        let x_799 : f32 = u_xlat58.y;
        u_xlat9.w = x_799;
        let x_802 : f32 = u_xlat8.y;
        u_xlat11.z = x_802;
        let x_805 : f32 = u_xlat7.z;
        u_xlat11.w = x_805;
        let x_807 : vec4<f32> = u_xlat9;
        let x_809 : vec4<f32> = u_xlat11;
        let x_811 : vec3<f32> = (vec3<f32>(x_807.z, x_807.y, x_807.w) + vec3<f32>(x_809.z, x_809.y, x_809.w));
        let x_812 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_811.x, x_811.y, x_811.z, x_812.w);
        let x_814 : vec4<f32> = u_xlat8;
        let x_816 : vec4<f32> = u_xlat12;
        let x_818 : vec3<f32> = (vec3<f32>(x_814.x, x_814.z, x_814.w) / vec3<f32>(x_816.z, x_816.w, x_816.y));
        let x_819 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_818.x, x_818.y, x_818.z, x_819.w);
        let x_821 : vec4<f32> = u_xlat8;
        let x_827 : vec3<f32> = (vec3<f32>(x_821.x, x_821.y, x_821.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_828 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_827.x, x_827.y, x_827.z, x_828.w);
        let x_830 : vec4<f32> = u_xlat11;
        let x_832 : vec4<f32> = u_xlat7;
        let x_834 : vec3<f32> = (vec3<f32>(x_830.z, x_830.y, x_830.w) / vec3<f32>(x_832.x, x_832.y, x_832.z));
        let x_835 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_834.x, x_834.y, x_834.z, x_835.w);
        let x_837 : vec4<f32> = u_xlat9;
        let x_839 : vec3<f32> = (vec3<f32>(x_837.x, x_837.y, x_837.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_840 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_839.x, x_839.y, x_839.z, x_840.w);
        let x_842 : vec4<f32> = u_xlat8;
        let x_845 : vec4<f32> = x_558.x_MainLightShadowmapSize;
        let x_847 : vec3<f32> = (vec3<f32>(x_842.y, x_842.x, x_842.z) * vec3<f32>(x_845.x, x_845.x, x_845.x));
        let x_848 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_847.x, x_847.y, x_847.z, x_848.w);
        let x_850 : vec4<f32> = u_xlat9;
        let x_853 : vec4<f32> = x_558.x_MainLightShadowmapSize;
        let x_855 : vec3<f32> = (vec3<f32>(x_850.x, x_850.y, x_850.z) * vec3<f32>(x_853.y, x_853.y, x_853.y));
        let x_856 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_855.x, x_855.y, x_855.z, x_856.w);
        let x_859 : f32 = u_xlat9.x;
        u_xlat8.w = x_859;
        let x_861 : vec4<f32> = u_xlat6;
        let x_864 : vec4<f32> = x_558.x_MainLightShadowmapSize;
        let x_867 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_861.x, x_861.y, x_861.x, x_861.y) * vec4<f32>(x_864.x, x_864.y, x_864.x, x_864.y)) + vec4<f32>(x_867.y, x_867.w, x_867.x, x_867.w));
        let x_870 : vec4<f32> = u_xlat6;
        let x_873 : vec4<f32> = x_558.x_MainLightShadowmapSize;
        let x_876 : vec4<f32> = u_xlat8;
        u_xlat58 = ((vec2<f32>(x_870.x, x_870.y) * vec2<f32>(x_873.x, x_873.y)) + vec2<f32>(x_876.z, x_876.w));
        let x_880 : f32 = u_xlat8.y;
        u_xlat9.w = x_880;
        let x_882 : vec4<f32> = u_xlat9;
        let x_883 : vec2<f32> = vec2<f32>(x_882.y, x_882.z);
        let x_884 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_884.x, x_883.x, x_884.z, x_883.y);
        let x_886 : vec4<f32> = u_xlat6;
        let x_889 : vec4<f32> = x_558.x_MainLightShadowmapSize;
        let x_892 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_886.x, x_886.y, x_886.x, x_886.y) * vec4<f32>(x_889.x, x_889.y, x_889.x, x_889.y)) + vec4<f32>(x_892.x, x_892.y, x_892.z, x_892.y));
        let x_895 : vec4<f32> = u_xlat6;
        let x_898 : vec4<f32> = x_558.x_MainLightShadowmapSize;
        let x_901 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_895.x, x_895.y, x_895.x, x_895.y) * vec4<f32>(x_898.x, x_898.y, x_898.x, x_898.y)) + vec4<f32>(x_901.w, x_901.y, x_901.w, x_901.z));
        let x_904 : vec4<f32> = u_xlat6;
        let x_907 : vec4<f32> = x_558.x_MainLightShadowmapSize;
        let x_910 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_904.x, x_904.y, x_904.x, x_904.y) * vec4<f32>(x_907.x, x_907.y, x_907.x, x_907.y)) + vec4<f32>(x_910.x, x_910.w, x_910.z, x_910.w));
        let x_914 : vec4<f32> = u_xlat7;
        let x_916 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_914.x, x_914.x, x_914.x, x_914.y) * vec4<f32>(x_916.z, x_916.w, x_916.y, x_916.z));
        let x_920 : vec4<f32> = u_xlat7;
        let x_922 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_920.y, x_920.y, x_920.z, x_920.z) * x_922);
        let x_926 : f32 = u_xlat7.z;
        let x_928 : f32 = u_xlat12.y;
        u_xlat82 = (x_926 * x_928);
        let x_931 : vec4<f32> = u_xlat10;
        let x_932 : vec2<f32> = vec2<f32>(x_931.x, x_931.y);
        let x_934 : f32 = vs_INTERP3.z;
        txVec4 = vec3<f32>(x_932.x, x_932.y, x_934);
        let x_942 : vec3<f32> = txVec4;
        let x_944 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_942.xy, x_942.z);
        u_xlat83 = x_944;
        let x_946 : vec4<f32> = u_xlat10;
        let x_947 : vec2<f32> = vec2<f32>(x_946.z, x_946.w);
        let x_949 : f32 = vs_INTERP3.z;
        txVec5 = vec3<f32>(x_947.x, x_947.y, x_949);
        let x_956 : vec3<f32> = txVec5;
        let x_958 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_956.xy, x_956.z);
        u_xlat6.x = x_958;
        let x_961 : f32 = u_xlat6.x;
        let x_963 : f32 = u_xlat13.y;
        u_xlat6.x = (x_961 * x_963);
        let x_967 : f32 = u_xlat13.x;
        let x_968 : f32 = u_xlat83;
        let x_971 : f32 = u_xlat6.x;
        u_xlat83 = ((x_967 * x_968) + x_971);
        let x_974 : vec2<f32> = u_xlat58;
        let x_976 : f32 = vs_INTERP3.z;
        txVec6 = vec3<f32>(x_974.x, x_974.y, x_976);
        let x_983 : vec3<f32> = txVec6;
        let x_985 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_983.xy, x_983.z);
        u_xlat6.x = x_985;
        let x_988 : f32 = u_xlat13.z;
        let x_990 : f32 = u_xlat6.x;
        let x_992 : f32 = u_xlat83;
        u_xlat83 = ((x_988 * x_990) + x_992);
        let x_995 : vec4<f32> = u_xlat9;
        let x_996 : vec2<f32> = vec2<f32>(x_995.x, x_995.y);
        let x_998 : f32 = vs_INTERP3.z;
        txVec7 = vec3<f32>(x_996.x, x_996.y, x_998);
        let x_1005 : vec3<f32> = txVec7;
        let x_1007 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1005.xy, x_1005.z);
        u_xlat6.x = x_1007;
        let x_1010 : f32 = u_xlat13.w;
        let x_1012 : f32 = u_xlat6.x;
        let x_1014 : f32 = u_xlat83;
        u_xlat83 = ((x_1010 * x_1012) + x_1014);
        let x_1017 : vec4<f32> = u_xlat11;
        let x_1018 : vec2<f32> = vec2<f32>(x_1017.x, x_1017.y);
        let x_1020 : f32 = vs_INTERP3.z;
        txVec8 = vec3<f32>(x_1018.x, x_1018.y, x_1020);
        let x_1027 : vec3<f32> = txVec8;
        let x_1029 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1027.xy, x_1027.z);
        u_xlat6.x = x_1029;
        let x_1032 : f32 = u_xlat14.x;
        let x_1034 : f32 = u_xlat6.x;
        let x_1036 : f32 = u_xlat83;
        u_xlat83 = ((x_1032 * x_1034) + x_1036);
        let x_1039 : vec4<f32> = u_xlat11;
        let x_1040 : vec2<f32> = vec2<f32>(x_1039.z, x_1039.w);
        let x_1042 : f32 = vs_INTERP3.z;
        txVec9 = vec3<f32>(x_1040.x, x_1040.y, x_1042);
        let x_1049 : vec3<f32> = txVec9;
        let x_1051 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1049.xy, x_1049.z);
        u_xlat6.x = x_1051;
        let x_1054 : f32 = u_xlat14.y;
        let x_1056 : f32 = u_xlat6.x;
        let x_1058 : f32 = u_xlat83;
        u_xlat83 = ((x_1054 * x_1056) + x_1058);
        let x_1061 : vec4<f32> = u_xlat9;
        let x_1062 : vec2<f32> = vec2<f32>(x_1061.z, x_1061.w);
        let x_1064 : f32 = vs_INTERP3.z;
        txVec10 = vec3<f32>(x_1062.x, x_1062.y, x_1064);
        let x_1071 : vec3<f32> = txVec10;
        let x_1073 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1071.xy, x_1071.z);
        u_xlat6.x = x_1073;
        let x_1076 : f32 = u_xlat14.z;
        let x_1078 : f32 = u_xlat6.x;
        let x_1080 : f32 = u_xlat83;
        u_xlat83 = ((x_1076 * x_1078) + x_1080);
        let x_1083 : vec4<f32> = u_xlat8;
        let x_1084 : vec2<f32> = vec2<f32>(x_1083.x, x_1083.y);
        let x_1086 : f32 = vs_INTERP3.z;
        txVec11 = vec3<f32>(x_1084.x, x_1084.y, x_1086);
        let x_1093 : vec3<f32> = txVec11;
        let x_1095 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1093.xy, x_1093.z);
        u_xlat6.x = x_1095;
        let x_1098 : f32 = u_xlat14.w;
        let x_1100 : f32 = u_xlat6.x;
        let x_1102 : f32 = u_xlat83;
        u_xlat83 = ((x_1098 * x_1100) + x_1102);
        let x_1105 : vec4<f32> = u_xlat8;
        let x_1106 : vec2<f32> = vec2<f32>(x_1105.z, x_1105.w);
        let x_1108 : f32 = vs_INTERP3.z;
        txVec12 = vec3<f32>(x_1106.x, x_1106.y, x_1108);
        let x_1115 : vec3<f32> = txVec12;
        let x_1117 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1115.xy, x_1115.z);
        u_xlat6.x = x_1117;
        let x_1119 : f32 = u_xlat82;
        let x_1121 : f32 = u_xlat6.x;
        let x_1123 : f32 = u_xlat83;
        u_xlat81 = ((x_1119 * x_1121) + x_1123);
      } else {
        let x_1126 : vec4<f32> = vs_INTERP3;
        let x_1129 : vec4<f32> = x_558.x_MainLightShadowmapSize;
        let x_1132 : vec2<f32> = ((vec2<f32>(x_1126.x, x_1126.y) * vec2<f32>(x_1129.z, x_1129.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1133 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1132.x, x_1132.y, x_1133.z, x_1133.w);
        let x_1135 : vec4<f32> = u_xlat6;
        let x_1137 : vec2<f32> = floor(vec2<f32>(x_1135.x, x_1135.y));
        let x_1138 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1137.x, x_1137.y, x_1138.z, x_1138.w);
        let x_1140 : vec4<f32> = vs_INTERP3;
        let x_1143 : vec4<f32> = x_558.x_MainLightShadowmapSize;
        let x_1146 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1140.x, x_1140.y) * vec2<f32>(x_1143.z, x_1143.w)) + -(vec2<f32>(x_1146.x, x_1146.y)));
        let x_1150 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_1150.x, x_1150.x, x_1150.y, x_1150.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1153 : vec4<f32> = u_xlat7;
        let x_1155 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1153.x, x_1153.x, x_1153.z, x_1153.z) * vec4<f32>(x_1155.x, x_1155.x, x_1155.z, x_1155.z));
        let x_1158 : vec4<f32> = u_xlat8;
        let x_1162 : vec2<f32> = (vec2<f32>(x_1158.y, x_1158.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1163 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1163.x, x_1162.x, x_1163.z, x_1162.y);
        let x_1165 : vec4<f32> = u_xlat8;
        let x_1168 : vec2<f32> = u_xlat58;
        let x_1170 : vec2<f32> = ((vec2<f32>(x_1165.x, x_1165.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1168));
        let x_1171 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1170.x, x_1171.y, x_1170.y, x_1171.w);
        let x_1173 : vec2<f32> = u_xlat58;
        let x_1175 : vec2<f32> = (-(x_1173) + vec2<f32>(1.0f, 1.0f));
        let x_1176 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1175.x, x_1175.y, x_1176.z, x_1176.w);
        let x_1178 : vec2<f32> = u_xlat58;
        u_xlat60 = min(x_1178, vec2<f32>(0.0f, 0.0f));
        let x_1180 : vec2<f32> = u_xlat60;
        let x_1182 : vec2<f32> = u_xlat60;
        let x_1184 : vec4<f32> = u_xlat8;
        let x_1186 : vec2<f32> = ((-(x_1180) * x_1182) + vec2<f32>(x_1184.x, x_1184.y));
        let x_1187 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1186.x, x_1186.y, x_1187.z, x_1187.w);
        let x_1189 : vec2<f32> = u_xlat58;
        u_xlat60 = max(x_1189, vec2<f32>(0.0f, 0.0f));
        let x_1192 : vec2<f32> = u_xlat60;
        let x_1194 : vec2<f32> = u_xlat60;
        let x_1196 : vec4<f32> = u_xlat7;
        let x_1198 : vec2<f32> = ((-(x_1192) * x_1194) + vec2<f32>(x_1196.y, x_1196.w));
        let x_1199 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1198.x, x_1199.y, x_1198.y);
        let x_1201 : vec4<f32> = u_xlat8;
        let x_1203 : vec2<f32> = (vec2<f32>(x_1201.x, x_1201.y) + vec2<f32>(2.0f, 2.0f));
        let x_1204 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1203.x, x_1203.y, x_1204.z, x_1204.w);
        let x_1206 : vec3<f32> = u_xlat33;
        let x_1208 : vec2<f32> = (vec2<f32>(x_1206.x, x_1206.z) + vec2<f32>(2.0f, 2.0f));
        let x_1209 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1209.x, x_1208.x, x_1209.z, x_1208.y);
        let x_1212 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1212 * 0.08163200318813323975f);
        let x_1216 : vec4<f32> = u_xlat7;
        let x_1219 : vec3<f32> = (vec3<f32>(x_1216.z, x_1216.x, x_1216.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1220 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1219.x, x_1219.y, x_1219.z, x_1220.w);
        let x_1222 : vec4<f32> = u_xlat8;
        let x_1225 : vec2<f32> = (vec2<f32>(x_1222.x, x_1222.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1226 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1225.x, x_1225.y, x_1226.z, x_1226.w);
        let x_1229 : f32 = u_xlat11.y;
        u_xlat10.x = x_1229;
        let x_1231 : vec2<f32> = u_xlat58;
        let x_1238 : vec2<f32> = ((vec2<f32>(x_1231.x, x_1231.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1239 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1239.x, x_1238.x, x_1239.z, x_1238.y);
        let x_1241 : vec2<f32> = u_xlat58;
        let x_1245 : vec2<f32> = ((vec2<f32>(x_1241.x, x_1241.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1246 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1245.x, x_1246.y, x_1245.y, x_1246.w);
        let x_1249 : f32 = u_xlat7.x;
        u_xlat8.y = x_1249;
        let x_1252 : f32 = u_xlat9.y;
        u_xlat8.w = x_1252;
        let x_1254 : vec4<f32> = u_xlat8;
        let x_1255 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1254 + x_1255);
        let x_1257 : vec2<f32> = u_xlat58;
        let x_1260 : vec2<f32> = ((vec2<f32>(x_1257.y, x_1257.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1261 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1261.x, x_1260.x, x_1261.z, x_1260.y);
        let x_1263 : vec2<f32> = u_xlat58;
        let x_1266 : vec2<f32> = ((vec2<f32>(x_1263.y, x_1263.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1267 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1266.x, x_1267.y, x_1266.y, x_1267.w);
        let x_1270 : f32 = u_xlat7.y;
        u_xlat9.y = x_1270;
        let x_1272 : vec4<f32> = u_xlat9;
        let x_1273 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1272 + x_1273);
        let x_1275 : vec4<f32> = u_xlat8;
        let x_1276 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1275 / x_1276);
        let x_1278 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1278 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1284 : vec4<f32> = u_xlat9;
        let x_1285 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1284 / x_1285);
        let x_1287 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1287 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1289 : vec4<f32> = u_xlat8;
        let x_1292 : vec4<f32> = x_558.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1289.w, x_1289.x, x_1289.y, x_1289.z) * vec4<f32>(x_1292.x, x_1292.x, x_1292.x, x_1292.x));
        let x_1295 : vec4<f32> = u_xlat9;
        let x_1298 : vec4<f32> = x_558.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1295.x, x_1295.w, x_1295.y, x_1295.z) * vec4<f32>(x_1298.y, x_1298.y, x_1298.y, x_1298.y));
        let x_1301 : vec4<f32> = u_xlat8;
        let x_1302 : vec3<f32> = vec3<f32>(x_1301.y, x_1301.z, x_1301.w);
        let x_1303 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1302.x, x_1303.y, x_1302.y, x_1302.z);
        let x_1306 : f32 = u_xlat9.x;
        u_xlat11.y = x_1306;
        let x_1308 : vec4<f32> = u_xlat6;
        let x_1311 : vec4<f32> = x_558.x_MainLightShadowmapSize;
        let x_1314 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1308.x, x_1308.y, x_1308.x, x_1308.y) * vec4<f32>(x_1311.x, x_1311.y, x_1311.x, x_1311.y)) + vec4<f32>(x_1314.x, x_1314.y, x_1314.z, x_1314.y));
        let x_1317 : vec4<f32> = u_xlat6;
        let x_1320 : vec4<f32> = x_558.x_MainLightShadowmapSize;
        let x_1323 : vec4<f32> = u_xlat11;
        u_xlat58 = ((vec2<f32>(x_1317.x, x_1317.y) * vec2<f32>(x_1320.x, x_1320.y)) + vec2<f32>(x_1323.w, x_1323.y));
        let x_1327 : f32 = u_xlat11.y;
        u_xlat8.y = x_1327;
        let x_1330 : f32 = u_xlat9.z;
        u_xlat11.y = x_1330;
        let x_1332 : vec4<f32> = u_xlat6;
        let x_1335 : vec4<f32> = x_558.x_MainLightShadowmapSize;
        let x_1338 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1332.x, x_1332.y, x_1332.x, x_1332.y) * vec4<f32>(x_1335.x, x_1335.y, x_1335.x, x_1335.y)) + vec4<f32>(x_1338.x, x_1338.y, x_1338.z, x_1338.y));
        let x_1341 : vec4<f32> = u_xlat6;
        let x_1344 : vec4<f32> = x_558.x_MainLightShadowmapSize;
        let x_1347 : vec4<f32> = u_xlat11;
        let x_1349 : vec2<f32> = ((vec2<f32>(x_1341.x, x_1341.y) * vec2<f32>(x_1344.x, x_1344.y)) + vec2<f32>(x_1347.w, x_1347.y));
        let x_1350 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1349.x, x_1349.y, x_1350.z, x_1350.w);
        let x_1353 : f32 = u_xlat11.y;
        u_xlat8.z = x_1353;
        let x_1356 : vec4<f32> = u_xlat6;
        let x_1359 : vec4<f32> = x_558.x_MainLightShadowmapSize;
        let x_1362 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1356.x, x_1356.y, x_1356.x, x_1356.y) * vec4<f32>(x_1359.x, x_1359.y, x_1359.x, x_1359.y)) + vec4<f32>(x_1362.x, x_1362.y, x_1362.x, x_1362.z));
        let x_1366 : f32 = u_xlat9.w;
        u_xlat11.y = x_1366;
        let x_1369 : vec4<f32> = u_xlat6;
        let x_1372 : vec4<f32> = x_558.x_MainLightShadowmapSize;
        let x_1375 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1369.x, x_1369.y, x_1369.x, x_1369.y) * vec4<f32>(x_1372.x, x_1372.y, x_1372.x, x_1372.y)) + vec4<f32>(x_1375.x, x_1375.y, x_1375.z, x_1375.y));
        let x_1379 : vec4<f32> = u_xlat6;
        let x_1382 : vec4<f32> = x_558.x_MainLightShadowmapSize;
        let x_1385 : vec4<f32> = u_xlat11;
        u_xlat34 = ((vec2<f32>(x_1379.x, x_1379.y) * vec2<f32>(x_1382.x, x_1382.y)) + vec2<f32>(x_1385.w, x_1385.y));
        let x_1389 : f32 = u_xlat11.y;
        u_xlat8.w = x_1389;
        let x_1392 : vec4<f32> = u_xlat6;
        let x_1395 : vec4<f32> = x_558.x_MainLightShadowmapSize;
        let x_1398 : vec4<f32> = u_xlat8;
        u_xlat66 = ((vec2<f32>(x_1392.x, x_1392.y) * vec2<f32>(x_1395.x, x_1395.y)) + vec2<f32>(x_1398.x, x_1398.w));
        let x_1401 : vec4<f32> = u_xlat11;
        let x_1402 : vec3<f32> = vec3<f32>(x_1401.x, x_1401.z, x_1401.w);
        let x_1403 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1402.x, x_1403.y, x_1402.y, x_1402.z);
        let x_1405 : vec4<f32> = u_xlat6;
        let x_1408 : vec4<f32> = x_558.x_MainLightShadowmapSize;
        let x_1411 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1405.x, x_1405.y, x_1405.x, x_1405.y) * vec4<f32>(x_1408.x, x_1408.y, x_1408.x, x_1408.y)) + vec4<f32>(x_1411.x, x_1411.y, x_1411.z, x_1411.y));
        let x_1415 : vec4<f32> = u_xlat6;
        let x_1418 : vec4<f32> = x_558.x_MainLightShadowmapSize;
        let x_1421 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_1415.x, x_1415.y) * vec2<f32>(x_1418.x, x_1418.y)) + vec2<f32>(x_1421.w, x_1421.y));
        let x_1425 : f32 = u_xlat8.x;
        u_xlat9.x = x_1425;
        let x_1427 : vec4<f32> = u_xlat6;
        let x_1430 : vec4<f32> = x_558.x_MainLightShadowmapSize;
        let x_1433 : vec4<f32> = u_xlat9;
        let x_1435 : vec2<f32> = ((vec2<f32>(x_1427.x, x_1427.y) * vec2<f32>(x_1430.x, x_1430.y)) + vec2<f32>(x_1433.x, x_1433.y));
        let x_1436 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1435.x, x_1435.y, x_1436.z, x_1436.w);
        let x_1439 : vec4<f32> = u_xlat7;
        let x_1441 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1439.x, x_1439.x, x_1439.x, x_1439.x) * x_1441);
        let x_1444 : vec4<f32> = u_xlat7;
        let x_1446 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1444.y, x_1444.y, x_1444.y, x_1444.y) * x_1446);
        let x_1449 : vec4<f32> = u_xlat7;
        let x_1451 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1449.z, x_1449.z, x_1449.z, x_1449.z) * x_1451);
        let x_1453 : vec4<f32> = u_xlat7;
        let x_1455 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1453.w, x_1453.w, x_1453.w, x_1453.w) * x_1455);
        let x_1458 : vec4<f32> = u_xlat12;
        let x_1459 : vec2<f32> = vec2<f32>(x_1458.x, x_1458.y);
        let x_1461 : f32 = vs_INTERP3.z;
        txVec13 = vec3<f32>(x_1459.x, x_1459.y, x_1461);
        let x_1468 : vec3<f32> = txVec13;
        let x_1470 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1468.xy, x_1468.z);
        u_xlat82 = x_1470;
        let x_1472 : vec4<f32> = u_xlat12;
        let x_1473 : vec2<f32> = vec2<f32>(x_1472.z, x_1472.w);
        let x_1475 : f32 = vs_INTERP3.z;
        txVec14 = vec3<f32>(x_1473.x, x_1473.y, x_1475);
        let x_1482 : vec3<f32> = txVec14;
        let x_1484 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1482.xy, x_1482.z);
        u_xlat83 = x_1484;
        let x_1485 : f32 = u_xlat83;
        let x_1487 : f32 = u_xlat17.y;
        u_xlat83 = (x_1485 * x_1487);
        let x_1490 : f32 = u_xlat17.x;
        let x_1491 : f32 = u_xlat82;
        let x_1493 : f32 = u_xlat83;
        u_xlat82 = ((x_1490 * x_1491) + x_1493);
        let x_1496 : vec2<f32> = u_xlat58;
        let x_1498 : f32 = vs_INTERP3.z;
        txVec15 = vec3<f32>(x_1496.x, x_1496.y, x_1498);
        let x_1505 : vec3<f32> = txVec15;
        let x_1507 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1505.xy, x_1505.z);
        u_xlat83 = x_1507;
        let x_1509 : f32 = u_xlat17.z;
        let x_1510 : f32 = u_xlat83;
        let x_1512 : f32 = u_xlat82;
        u_xlat82 = ((x_1509 * x_1510) + x_1512);
        let x_1515 : vec4<f32> = u_xlat15;
        let x_1516 : vec2<f32> = vec2<f32>(x_1515.x, x_1515.y);
        let x_1518 : f32 = vs_INTERP3.z;
        txVec16 = vec3<f32>(x_1516.x, x_1516.y, x_1518);
        let x_1525 : vec3<f32> = txVec16;
        let x_1527 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1525.xy, x_1525.z);
        u_xlat83 = x_1527;
        let x_1529 : f32 = u_xlat17.w;
        let x_1530 : f32 = u_xlat83;
        let x_1532 : f32 = u_xlat82;
        u_xlat82 = ((x_1529 * x_1530) + x_1532);
        let x_1535 : vec4<f32> = u_xlat13;
        let x_1536 : vec2<f32> = vec2<f32>(x_1535.x, x_1535.y);
        let x_1538 : f32 = vs_INTERP3.z;
        txVec17 = vec3<f32>(x_1536.x, x_1536.y, x_1538);
        let x_1545 : vec3<f32> = txVec17;
        let x_1547 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1545.xy, x_1545.z);
        u_xlat83 = x_1547;
        let x_1549 : f32 = u_xlat18.x;
        let x_1550 : f32 = u_xlat83;
        let x_1552 : f32 = u_xlat82;
        u_xlat82 = ((x_1549 * x_1550) + x_1552);
        let x_1555 : vec4<f32> = u_xlat13;
        let x_1556 : vec2<f32> = vec2<f32>(x_1555.z, x_1555.w);
        let x_1558 : f32 = vs_INTERP3.z;
        txVec18 = vec3<f32>(x_1556.x, x_1556.y, x_1558);
        let x_1565 : vec3<f32> = txVec18;
        let x_1567 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1565.xy, x_1565.z);
        u_xlat83 = x_1567;
        let x_1569 : f32 = u_xlat18.y;
        let x_1570 : f32 = u_xlat83;
        let x_1572 : f32 = u_xlat82;
        u_xlat82 = ((x_1569 * x_1570) + x_1572);
        let x_1575 : vec4<f32> = u_xlat14;
        let x_1576 : vec2<f32> = vec2<f32>(x_1575.x, x_1575.y);
        let x_1578 : f32 = vs_INTERP3.z;
        txVec19 = vec3<f32>(x_1576.x, x_1576.y, x_1578);
        let x_1585 : vec3<f32> = txVec19;
        let x_1587 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1585.xy, x_1585.z);
        u_xlat83 = x_1587;
        let x_1589 : f32 = u_xlat18.z;
        let x_1590 : f32 = u_xlat83;
        let x_1592 : f32 = u_xlat82;
        u_xlat82 = ((x_1589 * x_1590) + x_1592);
        let x_1595 : vec4<f32> = u_xlat15;
        let x_1596 : vec2<f32> = vec2<f32>(x_1595.z, x_1595.w);
        let x_1598 : f32 = vs_INTERP3.z;
        txVec20 = vec3<f32>(x_1596.x, x_1596.y, x_1598);
        let x_1605 : vec3<f32> = txVec20;
        let x_1607 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1605.xy, x_1605.z);
        u_xlat83 = x_1607;
        let x_1609 : f32 = u_xlat18.w;
        let x_1610 : f32 = u_xlat83;
        let x_1612 : f32 = u_xlat82;
        u_xlat82 = ((x_1609 * x_1610) + x_1612);
        let x_1615 : vec4<f32> = u_xlat16;
        let x_1616 : vec2<f32> = vec2<f32>(x_1615.x, x_1615.y);
        let x_1618 : f32 = vs_INTERP3.z;
        txVec21 = vec3<f32>(x_1616.x, x_1616.y, x_1618);
        let x_1625 : vec3<f32> = txVec21;
        let x_1627 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1625.xy, x_1625.z);
        u_xlat83 = x_1627;
        let x_1629 : f32 = u_xlat19.x;
        let x_1630 : f32 = u_xlat83;
        let x_1632 : f32 = u_xlat82;
        u_xlat82 = ((x_1629 * x_1630) + x_1632);
        let x_1635 : vec4<f32> = u_xlat16;
        let x_1636 : vec2<f32> = vec2<f32>(x_1635.z, x_1635.w);
        let x_1638 : f32 = vs_INTERP3.z;
        txVec22 = vec3<f32>(x_1636.x, x_1636.y, x_1638);
        let x_1645 : vec3<f32> = txVec22;
        let x_1647 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1645.xy, x_1645.z);
        u_xlat83 = x_1647;
        let x_1649 : f32 = u_xlat19.y;
        let x_1650 : f32 = u_xlat83;
        let x_1652 : f32 = u_xlat82;
        u_xlat82 = ((x_1649 * x_1650) + x_1652);
        let x_1655 : vec2<f32> = u_xlat34;
        let x_1657 : f32 = vs_INTERP3.z;
        txVec23 = vec3<f32>(x_1655.x, x_1655.y, x_1657);
        let x_1664 : vec3<f32> = txVec23;
        let x_1666 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1664.xy, x_1664.z);
        u_xlat83 = x_1666;
        let x_1668 : f32 = u_xlat19.z;
        let x_1669 : f32 = u_xlat83;
        let x_1671 : f32 = u_xlat82;
        u_xlat82 = ((x_1668 * x_1669) + x_1671);
        let x_1674 : vec2<f32> = u_xlat66;
        let x_1676 : f32 = vs_INTERP3.z;
        txVec24 = vec3<f32>(x_1674.x, x_1674.y, x_1676);
        let x_1683 : vec3<f32> = txVec24;
        let x_1685 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1683.xy, x_1683.z);
        u_xlat83 = x_1685;
        let x_1687 : f32 = u_xlat19.w;
        let x_1688 : f32 = u_xlat83;
        let x_1690 : f32 = u_xlat82;
        u_xlat82 = ((x_1687 * x_1688) + x_1690);
        let x_1693 : vec4<f32> = u_xlat11;
        let x_1694 : vec2<f32> = vec2<f32>(x_1693.x, x_1693.y);
        let x_1696 : f32 = vs_INTERP3.z;
        txVec25 = vec3<f32>(x_1694.x, x_1694.y, x_1696);
        let x_1703 : vec3<f32> = txVec25;
        let x_1705 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1703.xy, x_1703.z);
        u_xlat83 = x_1705;
        let x_1707 : f32 = u_xlat7.x;
        let x_1708 : f32 = u_xlat83;
        let x_1710 : f32 = u_xlat82;
        u_xlat82 = ((x_1707 * x_1708) + x_1710);
        let x_1713 : vec4<f32> = u_xlat11;
        let x_1714 : vec2<f32> = vec2<f32>(x_1713.z, x_1713.w);
        let x_1716 : f32 = vs_INTERP3.z;
        txVec26 = vec3<f32>(x_1714.x, x_1714.y, x_1716);
        let x_1723 : vec3<f32> = txVec26;
        let x_1725 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1723.xy, x_1723.z);
        u_xlat83 = x_1725;
        let x_1727 : f32 = u_xlat7.y;
        let x_1728 : f32 = u_xlat83;
        let x_1730 : f32 = u_xlat82;
        u_xlat82 = ((x_1727 * x_1728) + x_1730);
        let x_1733 : vec2<f32> = u_xlat61;
        let x_1735 : f32 = vs_INTERP3.z;
        txVec27 = vec3<f32>(x_1733.x, x_1733.y, x_1735);
        let x_1742 : vec3<f32> = txVec27;
        let x_1744 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1742.xy, x_1742.z);
        u_xlat83 = x_1744;
        let x_1746 : f32 = u_xlat7.z;
        let x_1747 : f32 = u_xlat83;
        let x_1749 : f32 = u_xlat82;
        u_xlat82 = ((x_1746 * x_1747) + x_1749);
        let x_1752 : vec4<f32> = u_xlat6;
        let x_1753 : vec2<f32> = vec2<f32>(x_1752.x, x_1752.y);
        let x_1755 : f32 = vs_INTERP3.z;
        txVec28 = vec3<f32>(x_1753.x, x_1753.y, x_1755);
        let x_1762 : vec3<f32> = txVec28;
        let x_1764 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1762.xy, x_1762.z);
        u_xlat83 = x_1764;
        let x_1766 : f32 = u_xlat7.w;
        let x_1767 : f32 = u_xlat83;
        let x_1769 : f32 = u_xlat82;
        u_xlat81 = ((x_1766 * x_1767) + x_1769);
      }
    }
  } else {
    let x_1773 : vec4<f32> = vs_INTERP3;
    let x_1774 : vec2<f32> = vec2<f32>(x_1773.x, x_1773.y);
    let x_1776 : f32 = vs_INTERP3.z;
    txVec29 = vec3<f32>(x_1774.x, x_1774.y, x_1776);
    let x_1783 : vec3<f32> = txVec29;
    let x_1785 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1783.xy, x_1783.z);
    u_xlat81 = x_1785;
  }
  let x_1787 : f32 = x_558.x_MainLightShadowParams.x;
  u_xlat82 = (-(x_1787) + 1.0f);
  let x_1790 : f32 = u_xlat81;
  let x_1792 : f32 = x_558.x_MainLightShadowParams.x;
  let x_1794 : f32 = u_xlat82;
  u_xlat81 = ((x_1790 * x_1792) + x_1794);
  let x_1797 : f32 = vs_INTERP3.z;
  u_xlatb82 = (0.0f >= x_1797);
  let x_1801 : f32 = vs_INTERP3.z;
  u_xlatb83 = (x_1801 >= 1.0f);
  let x_1803 : bool = u_xlatb82;
  let x_1804 : bool = u_xlatb83;
  u_xlatb82 = (x_1803 | x_1804);
  let x_1806 : bool = u_xlatb82;
  let x_1807 : f32 = u_xlat81;
  u_xlat81 = select(x_1807, 1.0f, x_1806);
  let x_1809 : vec3<f32> = vs_INTERP7;
  let x_1811 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_1813 : vec3<f32> = (x_1809 + -(x_1811));
  let x_1814 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1813.x, x_1813.y, x_1813.z, x_1814.w);
  let x_1816 : vec4<f32> = u_xlat6;
  let x_1818 : vec4<f32> = u_xlat6;
  u_xlat82 = dot(vec3<f32>(x_1816.x, x_1816.y, x_1816.z), vec3<f32>(x_1818.x, x_1818.y, x_1818.z));
  let x_1821 : f32 = u_xlat82;
  let x_1823 : f32 = x_558.x_MainLightShadowParams.z;
  let x_1826 : f32 = x_558.x_MainLightShadowParams.w;
  u_xlat83 = ((x_1821 * x_1823) + x_1826);
  let x_1828 : f32 = u_xlat83;
  u_xlat83 = clamp(x_1828, 0.0f, 1.0f);
  let x_1830 : f32 = u_xlat81;
  u_xlat6.x = (-(x_1830) + 1.0f);
  let x_1834 : f32 = u_xlat83;
  let x_1836 : f32 = u_xlat6.x;
  let x_1838 : f32 = u_xlat81;
  u_xlat81 = ((x_1834 * x_1836) + x_1838);
  let x_1847 : f32 = x_1845.x_MainLightCookieTextureFormat;
  u_xlatb83 = !((x_1847 == -1.0f));
  let x_1849 : bool = u_xlatb83;
  if (x_1849) {
    let x_1852 : vec3<f32> = vs_INTERP7;
    let x_1855 : vec4<f32> = x_1845.x_MainLightWorldToLight[1i];
    let x_1857 : vec2<f32> = (vec2<f32>(x_1852.y, x_1852.y) * vec2<f32>(x_1855.x, x_1855.y));
    let x_1858 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1857.x, x_1857.y, x_1858.z, x_1858.w);
    let x_1861 : vec4<f32> = x_1845.x_MainLightWorldToLight[0i];
    let x_1863 : vec3<f32> = vs_INTERP7;
    let x_1866 : vec4<f32> = u_xlat6;
    let x_1868 : vec2<f32> = ((vec2<f32>(x_1861.x, x_1861.y) * vec2<f32>(x_1863.x, x_1863.x)) + vec2<f32>(x_1866.x, x_1866.y));
    let x_1869 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1868.x, x_1868.y, x_1869.z, x_1869.w);
    let x_1872 : vec4<f32> = x_1845.x_MainLightWorldToLight[2i];
    let x_1874 : vec3<f32> = vs_INTERP7;
    let x_1877 : vec4<f32> = u_xlat6;
    let x_1879 : vec2<f32> = ((vec2<f32>(x_1872.x, x_1872.y) * vec2<f32>(x_1874.z, x_1874.z)) + vec2<f32>(x_1877.x, x_1877.y));
    let x_1880 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1879.x, x_1879.y, x_1880.z, x_1880.w);
    let x_1882 : vec4<f32> = u_xlat6;
    let x_1885 : vec4<f32> = x_1845.x_MainLightWorldToLight[3i];
    let x_1887 : vec2<f32> = (vec2<f32>(x_1882.x, x_1882.y) + vec2<f32>(x_1885.x, x_1885.y));
    let x_1888 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1887.x, x_1887.y, x_1888.z, x_1888.w);
    let x_1890 : vec4<f32> = u_xlat6;
    let x_1893 : vec2<f32> = ((vec2<f32>(x_1890.x, x_1890.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1894 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1893.x, x_1893.y, x_1894.z, x_1894.w);
    let x_1901 : vec4<f32> = u_xlat6;
    let x_1904 : f32 = x_29.x_GlobalMipBias.x;
    let x_1905 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1901.x, x_1901.y), x_1904);
    u_xlat6 = x_1905;
    let x_1910 : f32 = x_1845.x_MainLightCookieTextureFormat;
    let x_1912 : f32 = x_1845.x_MainLightCookieTextureFormat;
    let x_1914 : f32 = x_1845.x_MainLightCookieTextureFormat;
    let x_1916 : f32 = x_1845.x_MainLightCookieTextureFormat;
    let x_1917 : vec4<f32> = vec4<f32>(x_1910, x_1912, x_1914, x_1916);
    let x_1924 : vec4<bool> = (vec4<f32>(x_1917.x, x_1917.y, x_1917.z, x_1917.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_1924.x, x_1924.y);
    let x_1927 : bool = u_xlatb7.y;
    if (x_1927) {
      let x_1932 : f32 = u_xlat6.w;
      x_1928 = x_1932;
    } else {
      let x_1935 : f32 = u_xlat6.x;
      x_1928 = x_1935;
    }
    let x_1936 : f32 = x_1928;
    u_xlat83 = x_1936;
    let x_1938 : bool = u_xlatb7.x;
    if (x_1938) {
      let x_1942 : vec4<f32> = u_xlat6;
      x_1939 = vec3<f32>(x_1942.x, x_1942.y, x_1942.z);
    } else {
      let x_1945 : f32 = u_xlat83;
      x_1939 = vec3<f32>(x_1945, x_1945, x_1945);
    }
    let x_1947 : vec3<f32> = x_1939;
    let x_1948 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1947.x, x_1947.y, x_1947.z, x_1948.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1954 : vec4<f32> = u_xlat6;
  let x_1957 : vec4<f32> = x_29.x_MainLightColor;
  let x_1959 : vec3<f32> = (vec3<f32>(x_1954.x, x_1954.y, x_1954.z) * vec3<f32>(x_1957.x, x_1957.y, x_1957.z));
  let x_1960 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1959.x, x_1959.y, x_1959.z, x_1960.w);
  let x_1962 : vec3<f32> = u_xlat4;
  let x_1964 : vec4<f32> = u_xlat3;
  u_xlat83 = dot(-(x_1962), vec3<f32>(x_1964.x, x_1964.y, x_1964.z));
  let x_1967 : f32 = u_xlat83;
  let x_1968 : f32 = u_xlat83;
  u_xlat83 = (x_1967 + x_1968);
  let x_1970 : vec4<f32> = u_xlat3;
  let x_1972 : f32 = u_xlat83;
  let x_1976 : vec3<f32> = u_xlat4;
  let x_1978 : vec3<f32> = ((vec3<f32>(x_1970.x, x_1970.y, x_1970.z) * -(vec3<f32>(x_1972, x_1972, x_1972))) + -(x_1976));
  let x_1979 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1978.x, x_1978.y, x_1978.z, x_1979.w);
  let x_1981 : vec4<f32> = u_xlat3;
  let x_1983 : vec3<f32> = u_xlat4;
  u_xlat83 = dot(vec3<f32>(x_1981.x, x_1981.y, x_1981.z), x_1983);
  let x_1985 : f32 = u_xlat83;
  u_xlat83 = clamp(x_1985, 0.0f, 1.0f);
  let x_1987 : f32 = u_xlat83;
  u_xlat83 = (-(x_1987) + 1.0f);
  let x_1990 : f32 = u_xlat83;
  let x_1991 : f32 = u_xlat83;
  u_xlat83 = (x_1990 * x_1991);
  let x_1993 : f32 = u_xlat83;
  let x_1994 : f32 = u_xlat83;
  u_xlat83 = (x_1993 * x_1994);
  let x_1998 : f32 = u_xlat0.x;
  u_xlat84 = ((-(x_1998) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2005 : f32 = u_xlat0.x;
  let x_2006 : f32 = u_xlat84;
  u_xlat0.x = (x_2005 * x_2006);
  let x_2010 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2010 * 6.0f);
  let x_2022 : vec4<f32> = u_xlat7;
  let x_2025 : f32 = u_xlat0.x;
  let x_2026 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2022.x, x_2022.y, x_2022.z), x_2025);
  u_xlat7 = x_2026;
  let x_2028 : f32 = u_xlat7.w;
  u_xlat0.x = (x_2028 + -1.0f);
  let x_2032 : f32 = x_271.unity_SpecCube0_HDR.w;
  let x_2034 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2032 * x_2034) + 1.0f);
  let x_2039 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2039, 0.0f);
  let x_2043 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2043);
  let x_2047 : f32 = u_xlat0.x;
  let x_2049 : f32 = x_271.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2047 * x_2049);
  let x_2053 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2053);
  let x_2057 : f32 = u_xlat0.x;
  let x_2059 : f32 = x_271.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2057 * x_2059);
  let x_2062 : vec4<f32> = u_xlat7;
  let x_2064 : vec4<f32> = u_xlat0;
  let x_2066 : vec3<f32> = (vec3<f32>(x_2062.x, x_2062.y, x_2062.z) * vec3<f32>(x_2064.x, x_2064.x, x_2064.x));
  let x_2067 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2066.x, x_2066.y, x_2066.z, x_2067.w);
  let x_2069 : vec2<f32> = u_xlat26;
  let x_2071 : vec2<f32> = u_xlat26;
  let x_2075 : vec2<f32> = ((vec2<f32>(x_2069.x, x_2069.x) * vec2<f32>(x_2071.x, x_2071.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2076 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2075.x, x_2075.y, x_2076.z, x_2076.w);
  let x_2079 : f32 = u_xlat0.y;
  u_xlat26.x = (1.0f / x_2079);
  let x_2082 : vec3<f32> = u_xlat2;
  let x_2084 : f32 = u_xlat52;
  let x_2086 : vec3<f32> = (-(x_2082) + vec3<f32>(x_2084, x_2084, x_2084));
  let x_2087 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2086.x, x_2086.y, x_2086.z, x_2087.w);
  let x_2089 : f32 = u_xlat83;
  let x_2091 : vec4<f32> = u_xlat8;
  let x_2094 : vec3<f32> = u_xlat2;
  let x_2095 : vec3<f32> = ((vec3<f32>(x_2089, x_2089, x_2089) * vec3<f32>(x_2091.x, x_2091.y, x_2091.z)) + x_2094);
  let x_2096 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2095.x, x_2095.y, x_2095.z, x_2096.w);
  let x_2098 : vec2<f32> = u_xlat26;
  let x_2100 : vec4<f32> = u_xlat8;
  let x_2102 : vec3<f32> = (vec3<f32>(x_2098.x, x_2098.x, x_2098.x) * vec3<f32>(x_2100.x, x_2100.y, x_2100.z));
  let x_2103 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2102.x, x_2102.y, x_2102.z, x_2103.w);
  let x_2105 : vec4<f32> = u_xlat7;
  let x_2107 : vec4<f32> = u_xlat8;
  let x_2109 : vec3<f32> = (vec3<f32>(x_2105.x, x_2105.y, x_2105.z) * vec3<f32>(x_2107.x, x_2107.y, x_2107.z));
  let x_2110 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2109.x, x_2109.y, x_2109.z, x_2110.w);
  let x_2112 : vec3<f32> = u_xlat27;
  let x_2113 : vec3<f32> = u_xlat5;
  let x_2115 : vec4<f32> = u_xlat7;
  u_xlat27 = ((x_2112 * x_2113) + vec3<f32>(x_2115.x, x_2115.y, x_2115.z));
  let x_2118 : f32 = u_xlat81;
  let x_2120 : f32 = x_271.unity_LightData.z;
  u_xlat26.x = (x_2118 * x_2120);
  let x_2123 : vec4<f32> = u_xlat3;
  let x_2126 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat52 = dot(vec3<f32>(x_2123.x, x_2123.y, x_2123.z), vec3<f32>(x_2126.x, x_2126.y, x_2126.z));
  let x_2129 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2129, 0.0f, 1.0f);
  let x_2131 : f32 = u_xlat52;
  let x_2133 : f32 = u_xlat26.x;
  u_xlat26.x = (x_2131 * x_2133);
  let x_2136 : vec2<f32> = u_xlat26;
  let x_2138 : vec4<f32> = u_xlat6;
  let x_2140 : vec3<f32> = (vec3<f32>(x_2136.x, x_2136.x, x_2136.x) * vec3<f32>(x_2138.x, x_2138.y, x_2138.z));
  let x_2141 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2140.x, x_2140.y, x_2140.z, x_2141.w);
  let x_2143 : vec3<f32> = u_xlat4;
  let x_2145 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2147 : vec3<f32> = (x_2143 + vec3<f32>(x_2145.x, x_2145.y, x_2145.z));
  let x_2148 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2147.x, x_2147.y, x_2147.z, x_2148.w);
  let x_2150 : vec4<f32> = u_xlat7;
  let x_2152 : vec4<f32> = u_xlat7;
  u_xlat26.x = dot(vec3<f32>(x_2150.x, x_2150.y, x_2150.z), vec3<f32>(x_2152.x, x_2152.y, x_2152.z));
  let x_2157 : f32 = u_xlat26.x;
  u_xlat26.x = max(x_2157, 1.17549435e-38f);
  let x_2162 : f32 = u_xlat26.x;
  u_xlat26.x = inverseSqrt(x_2162);
  let x_2165 : vec2<f32> = u_xlat26;
  let x_2167 : vec4<f32> = u_xlat7;
  let x_2169 : vec3<f32> = (vec3<f32>(x_2165.x, x_2165.x, x_2165.x) * vec3<f32>(x_2167.x, x_2167.y, x_2167.z));
  let x_2170 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2169.x, x_2169.y, x_2169.z, x_2170.w);
  let x_2172 : vec4<f32> = u_xlat3;
  let x_2174 : vec4<f32> = u_xlat7;
  u_xlat26.x = dot(vec3<f32>(x_2172.x, x_2172.y, x_2172.z), vec3<f32>(x_2174.x, x_2174.y, x_2174.z));
  let x_2179 : f32 = u_xlat26.x;
  u_xlat26.x = clamp(x_2179, 0.0f, 1.0f);
  let x_2183 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2185 : vec4<f32> = u_xlat7;
  u_xlat26.y = dot(vec3<f32>(x_2183.x, x_2183.y, x_2183.z), vec3<f32>(x_2185.x, x_2185.y, x_2185.z));
  let x_2190 : f32 = u_xlat26.y;
  u_xlat26.y = clamp(x_2190, 0.0f, 1.0f);
  let x_2193 : vec2<f32> = u_xlat26;
  let x_2194 : vec2<f32> = u_xlat26;
  u_xlat26 = (x_2193 * x_2194);
  let x_2197 : f32 = u_xlat26.x;
  let x_2199 : f32 = u_xlat0.x;
  u_xlat26.x = ((x_2197 * x_2199) + 1.00001001358032226562f);
  let x_2205 : f32 = u_xlat26.x;
  let x_2207 : f32 = u_xlat26.x;
  u_xlat26.x = (x_2205 * x_2207);
  let x_2211 : f32 = u_xlat26.y;
  u_xlat52 = max(x_2211, 0.10000000149011611938f);
  let x_2214 : f32 = u_xlat52;
  let x_2216 : f32 = u_xlat26.x;
  u_xlat26.x = (x_2214 * x_2216);
  let x_2219 : f32 = u_xlat80;
  let x_2221 : f32 = u_xlat26.x;
  u_xlat26.x = (x_2219 * x_2221);
  let x_2225 : f32 = u_xlat1.x;
  let x_2227 : f32 = u_xlat26.x;
  u_xlat26.x = (x_2225 / x_2227);
  let x_2230 : vec3<f32> = u_xlat2;
  let x_2231 : vec2<f32> = u_xlat26;
  let x_2234 : vec3<f32> = u_xlat5;
  let x_2235 : vec3<f32> = ((x_2230 * vec3<f32>(x_2231.x, x_2231.x, x_2231.x)) + x_2234);
  let x_2236 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2235.x, x_2235.y, x_2235.z, x_2236.w);
  let x_2238 : vec4<f32> = u_xlat6;
  let x_2240 : vec4<f32> = u_xlat7;
  let x_2242 : vec3<f32> = (vec3<f32>(x_2238.x, x_2238.y, x_2238.z) * vec3<f32>(x_2240.x, x_2240.y, x_2240.z));
  let x_2243 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2242.x, x_2242.y, x_2242.z, x_2243.w);
  let x_2246 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2248 : f32 = x_271.unity_LightData.y;
  u_xlat26.x = min(x_2246, x_2248);
  let x_2254 : f32 = u_xlat26.x;
  u_xlatu26 = bitcast<u32>(i32(x_2254));
  let x_2257 : f32 = u_xlat82;
  let x_2260 : f32 = x_558.x_AdditionalShadowFadeParams.x;
  let x_2263 : f32 = x_558.x_AdditionalShadowFadeParams.y;
  u_xlat52 = ((x_2257 * x_2260) + x_2263);
  let x_2265 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2265, 0.0f, 1.0f);
  let x_2268 : f32 = x_1845.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2270 : f32 = x_1845.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2272 : f32 = x_1845.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2274 : f32 = x_1845.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2275 : vec4<f32> = vec4<f32>(x_2268, x_2270, x_2272, x_2274);
  let x_2281 : vec4<bool> = (vec4<f32>(x_2275.x, x_2275.y, x_2275.z, x_2275.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2281.x, x_2281.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2293 : u32 = u_xlatu_loop_1;
    let x_2294 : u32 = u_xlatu26;
    if ((x_2293 < x_2294)) {
    } else {
      break;
    }
    let x_2297 : u32 = u_xlatu_loop_1;
    u_xlatu82 = (x_2297 >> 2u);
    let x_2301 : u32 = u_xlatu_loop_1;
    u_xlati83 = bitcast<i32>((x_2301 & 3u));
    let x_2304 : u32 = u_xlatu82;
    let x_2307 : vec4<f32> = x_271.unity_LightIndices[bitcast<i32>(x_2304)];
    let x_2317 : i32 = u_xlati83;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2322 : vec4<u32> = indexable[x_2317];
    u_xlat82 = dot(x_2307, bitcast<vec4<f32>>(x_2322));
    let x_2326 : f32 = u_xlat82;
    u_xlati82 = i32(x_2326);
    let x_2328 : vec3<f32> = vs_INTERP7;
    let x_2339 : i32 = u_xlati82;
    let x_2341 : vec4<f32> = x_2338.x_AdditionalLightsPosition[x_2339];
    let x_2344 : i32 = u_xlati82;
    let x_2346 : vec4<f32> = x_2338.x_AdditionalLightsPosition[x_2344];
    let x_2348 : vec3<f32> = ((-(x_2328) * vec3<f32>(x_2341.w, x_2341.w, x_2341.w)) + vec3<f32>(x_2346.x, x_2346.y, x_2346.z));
    let x_2349 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2348.x, x_2348.y, x_2348.z, x_2349.w);
    let x_2351 : vec4<f32> = u_xlat9;
    let x_2353 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_2351.x, x_2351.y, x_2351.z), vec3<f32>(x_2353.x, x_2353.y, x_2353.z));
    let x_2356 : f32 = u_xlat83;
    u_xlat83 = max(x_2356, 0.00006103515625f);
    let x_2359 : f32 = u_xlat83;
    u_xlat84 = inverseSqrt(x_2359);
    let x_2361 : f32 = u_xlat84;
    let x_2363 : vec4<f32> = u_xlat9;
    let x_2365 : vec3<f32> = (vec3<f32>(x_2361, x_2361, x_2361) * vec3<f32>(x_2363.x, x_2363.y, x_2363.z));
    let x_2366 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2365.x, x_2365.y, x_2365.z, x_2366.w);
    let x_2369 : f32 = u_xlat83;
    u_xlat59 = (1.0f / x_2369);
    let x_2371 : f32 = u_xlat83;
    let x_2372 : i32 = u_xlati82;
    let x_2374 : f32 = x_2338.x_AdditionalLightsAttenuation[x_2372].x;
    u_xlat83 = (x_2371 * x_2374);
    let x_2376 : f32 = u_xlat83;
    let x_2378 : f32 = u_xlat83;
    u_xlat83 = ((-(x_2376) * x_2378) + 1.0f);
    let x_2381 : f32 = u_xlat83;
    u_xlat83 = max(x_2381, 0.0f);
    let x_2383 : f32 = u_xlat83;
    let x_2384 : f32 = u_xlat83;
    u_xlat83 = (x_2383 * x_2384);
    let x_2386 : f32 = u_xlat83;
    let x_2387 : f32 = u_xlat59;
    u_xlat83 = (x_2386 * x_2387);
    let x_2389 : i32 = u_xlati82;
    let x_2391 : vec4<f32> = x_2338.x_AdditionalLightsSpotDir[x_2389];
    let x_2393 : vec4<f32> = u_xlat10;
    u_xlat59 = dot(vec3<f32>(x_2391.x, x_2391.y, x_2391.z), vec3<f32>(x_2393.x, x_2393.y, x_2393.z));
    let x_2396 : f32 = u_xlat59;
    let x_2397 : i32 = u_xlati82;
    let x_2399 : f32 = x_2338.x_AdditionalLightsAttenuation[x_2397].z;
    let x_2401 : i32 = u_xlati82;
    let x_2403 : f32 = x_2338.x_AdditionalLightsAttenuation[x_2401].w;
    u_xlat59 = ((x_2396 * x_2399) + x_2403);
    let x_2405 : f32 = u_xlat59;
    u_xlat59 = clamp(x_2405, 0.0f, 1.0f);
    let x_2407 : f32 = u_xlat59;
    let x_2408 : f32 = u_xlat59;
    u_xlat59 = (x_2407 * x_2408);
    let x_2410 : f32 = u_xlat83;
    let x_2411 : f32 = u_xlat59;
    u_xlat83 = (x_2410 * x_2411);
    let x_2415 : i32 = u_xlati82;
    let x_2417 : f32 = x_558.x_AdditionalShadowParams[x_2415].w;
    u_xlati59 = i32(x_2417);
    let x_2420 : i32 = u_xlati59;
    u_xlatb85 = (x_2420 >= 0i);
    let x_2422 : bool = u_xlatb85;
    if (x_2422) {
      let x_2426 : i32 = u_xlati82;
      let x_2428 : f32 = x_558.x_AdditionalShadowParams[x_2426].z;
      u_xlatb85 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2428, x_2428, x_2428, x_2428))));
      let x_2432 : bool = u_xlatb85;
      if (x_2432) {
        let x_2437 : vec4<f32> = u_xlat10;
        let x_2440 : vec4<f32> = u_xlat10;
        let x_2443 : vec4<bool> = (abs(vec4<f32>(x_2437.z, x_2437.z, x_2437.y, x_2437.z)) >= abs(vec4<f32>(x_2440.x, x_2440.y, x_2440.x, x_2440.x)));
        let x_2444 : vec3<bool> = vec3<bool>(x_2443.x, x_2443.y, x_2443.z);
        let x_2445 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2444.x, x_2444.y, x_2444.z, x_2445.w);
        let x_2448 : bool = u_xlatb11.y;
        let x_2450 : bool = u_xlatb11.x;
        u_xlatb85 = (x_2448 & x_2450);
        let x_2452 : vec4<f32> = u_xlat10;
        let x_2455 : vec4<bool> = (-(vec4<f32>(x_2452.z, x_2452.y, x_2452.z, x_2452.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2456 : vec3<bool> = vec3<bool>(x_2455.x, x_2455.y, x_2455.w);
        let x_2457 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2456.x, x_2456.y, x_2457.z, x_2456.z);
        let x_2460 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2460);
        let x_2465 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2465);
        let x_2471 : bool = u_xlatb11.w;
        u_xlat86 = select(0.0f, 1.0f, x_2471);
        let x_2474 : bool = u_xlatb11.z;
        if (x_2474) {
          let x_2479 : f32 = u_xlat11.y;
          x_2475 = x_2479;
        } else {
          let x_2481 : f32 = u_xlat86;
          x_2475 = x_2481;
        }
        let x_2482 : f32 = x_2475;
        u_xlat86 = x_2482;
        let x_2484 : bool = u_xlatb85;
        if (x_2484) {
          let x_2489 : f32 = u_xlat11.x;
          x_2485 = x_2489;
        } else {
          let x_2491 : f32 = u_xlat86;
          x_2485 = x_2491;
        }
        let x_2492 : f32 = x_2485;
        u_xlat85 = x_2492;
        let x_2493 : i32 = u_xlati82;
        let x_2495 : f32 = x_558.x_AdditionalShadowParams[x_2493].w;
        u_xlat86 = trunc(x_2495);
        let x_2497 : f32 = u_xlat85;
        let x_2498 : f32 = u_xlat86;
        u_xlat85 = (x_2497 + x_2498);
        let x_2500 : f32 = u_xlat85;
        u_xlati59 = i32(x_2500);
      }
      let x_2502 : i32 = u_xlati59;
      u_xlati59 = (x_2502 << bitcast<u32>(2i));
      let x_2504 : vec3<f32> = vs_INTERP7;
      let x_2507 : i32 = u_xlati59;
      let x_2510 : i32 = u_xlati59;
      let x_2514 : vec4<f32> = x_558.x_AdditionalLightsWorldToShadow[((x_2507 + 1i) / 4i)][((x_2510 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2504.y, x_2504.y, x_2504.y, x_2504.y) * x_2514);
      let x_2516 : i32 = u_xlati59;
      let x_2518 : i32 = u_xlati59;
      let x_2521 : vec4<f32> = x_558.x_AdditionalLightsWorldToShadow[(x_2516 / 4i)][(x_2518 % 4i)];
      let x_2522 : vec3<f32> = vs_INTERP7;
      let x_2525 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2521 * vec4<f32>(x_2522.x, x_2522.x, x_2522.x, x_2522.x)) + x_2525);
      let x_2527 : i32 = u_xlati59;
      let x_2530 : i32 = u_xlati59;
      let x_2534 : vec4<f32> = x_558.x_AdditionalLightsWorldToShadow[((x_2527 + 2i) / 4i)][((x_2530 + 2i) % 4i)];
      let x_2535 : vec3<f32> = vs_INTERP7;
      let x_2538 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2534 * vec4<f32>(x_2535.z, x_2535.z, x_2535.z, x_2535.z)) + x_2538);
      let x_2540 : vec4<f32> = u_xlat11;
      let x_2541 : i32 = u_xlati59;
      let x_2544 : i32 = u_xlati59;
      let x_2548 : vec4<f32> = x_558.x_AdditionalLightsWorldToShadow[((x_2541 + 3i) / 4i)][((x_2544 + 3i) % 4i)];
      u_xlat11 = (x_2540 + x_2548);
      let x_2550 : vec4<f32> = u_xlat11;
      let x_2552 : vec4<f32> = u_xlat11;
      let x_2554 : vec3<f32> = (vec3<f32>(x_2550.x, x_2550.y, x_2550.z) / vec3<f32>(x_2552.w, x_2552.w, x_2552.w));
      let x_2555 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2554.x, x_2554.y, x_2554.z, x_2555.w);
      let x_2558 : i32 = u_xlati82;
      let x_2560 : f32 = x_558.x_AdditionalShadowParams[x_2558].y;
      u_xlatb59 = (0.0f < x_2560);
      let x_2562 : bool = u_xlatb59;
      if (x_2562) {
        let x_2565 : i32 = u_xlati82;
        let x_2567 : f32 = x_558.x_AdditionalShadowParams[x_2565].y;
        u_xlatb59 = (1.0f == x_2567);
        let x_2569 : bool = u_xlatb59;
        if (x_2569) {
          let x_2572 : vec4<f32> = u_xlat11;
          let x_2576 : vec4<f32> = x_558.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2572.x, x_2572.y, x_2572.x, x_2572.y) + x_2576);
          let x_2579 : vec4<f32> = u_xlat12;
          let x_2580 : vec2<f32> = vec2<f32>(x_2579.x, x_2579.y);
          let x_2582 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2580.x, x_2580.y, x_2582);
          let x_2590 : vec3<f32> = txVec30;
          let x_2592 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2590.xy, x_2590.z);
          u_xlat13.x = x_2592;
          let x_2595 : vec4<f32> = u_xlat12;
          let x_2596 : vec2<f32> = vec2<f32>(x_2595.z, x_2595.w);
          let x_2598 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2596.x, x_2596.y, x_2598);
          let x_2605 : vec3<f32> = txVec31;
          let x_2607 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2605.xy, x_2605.z);
          u_xlat13.y = x_2607;
          let x_2609 : vec4<f32> = u_xlat11;
          let x_2613 : vec4<f32> = x_558.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2609.x, x_2609.y, x_2609.x, x_2609.y) + x_2613);
          let x_2616 : vec4<f32> = u_xlat12;
          let x_2617 : vec2<f32> = vec2<f32>(x_2616.x, x_2616.y);
          let x_2619 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2617.x, x_2617.y, x_2619);
          let x_2626 : vec3<f32> = txVec32;
          let x_2628 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2626.xy, x_2626.z);
          u_xlat13.z = x_2628;
          let x_2631 : vec4<f32> = u_xlat12;
          let x_2632 : vec2<f32> = vec2<f32>(x_2631.z, x_2631.w);
          let x_2634 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2632.x, x_2632.y, x_2634);
          let x_2641 : vec3<f32> = txVec33;
          let x_2643 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2641.xy, x_2641.z);
          u_xlat13.w = x_2643;
          let x_2645 : vec4<f32> = u_xlat13;
          u_xlat59 = dot(x_2645, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2648 : i32 = u_xlati82;
          let x_2650 : f32 = x_558.x_AdditionalShadowParams[x_2648].y;
          u_xlatb85 = (2.0f == x_2650);
          let x_2652 : bool = u_xlatb85;
          if (x_2652) {
            let x_2655 : vec4<f32> = u_xlat11;
            let x_2659 : vec4<f32> = x_558.x_AdditionalShadowmapSize;
            let x_2662 : vec2<f32> = ((vec2<f32>(x_2655.x, x_2655.y) * vec2<f32>(x_2659.z, x_2659.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2663 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2662.x, x_2662.y, x_2663.z, x_2663.w);
            let x_2665 : vec4<f32> = u_xlat12;
            let x_2667 : vec2<f32> = floor(vec2<f32>(x_2665.x, x_2665.y));
            let x_2668 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2667.x, x_2667.y, x_2668.z, x_2668.w);
            let x_2671 : vec4<f32> = u_xlat11;
            let x_2674 : vec4<f32> = x_558.x_AdditionalShadowmapSize;
            let x_2677 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2671.x, x_2671.y) * vec2<f32>(x_2674.z, x_2674.w)) + -(vec2<f32>(x_2677.x, x_2677.y)));
            let x_2681 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2681.x, x_2681.x, x_2681.y, x_2681.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2684 : vec4<f32> = u_xlat13;
            let x_2686 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2684.x, x_2684.x, x_2684.z, x_2684.z) * vec4<f32>(x_2686.x, x_2686.x, x_2686.z, x_2686.z));
            let x_2689 : vec4<f32> = u_xlat14;
            let x_2691 : vec2<f32> = (vec2<f32>(x_2689.y, x_2689.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2692 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2691.x, x_2692.y, x_2691.y, x_2692.w);
            let x_2694 : vec4<f32> = u_xlat14;
            let x_2697 : vec2<f32> = u_xlat64;
            let x_2699 : vec2<f32> = ((vec2<f32>(x_2694.x, x_2694.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2697));
            let x_2700 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2699.x, x_2699.y, x_2700.z, x_2700.w);
            let x_2702 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2702) + vec2<f32>(1.0f, 1.0f));
            let x_2705 : vec2<f32> = u_xlat64;
            let x_2706 : vec2<f32> = min(x_2705, vec2<f32>(0.0f, 0.0f));
            let x_2707 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2706.x, x_2706.y, x_2707.z, x_2707.w);
            let x_2709 : vec4<f32> = u_xlat15;
            let x_2712 : vec4<f32> = u_xlat15;
            let x_2715 : vec2<f32> = u_xlat66;
            let x_2716 : vec2<f32> = ((-(vec2<f32>(x_2709.x, x_2709.y)) * vec2<f32>(x_2712.x, x_2712.y)) + x_2715);
            let x_2717 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2716.x, x_2716.y, x_2717.z, x_2717.w);
            let x_2719 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2719, vec2<f32>(0.0f, 0.0f));
            let x_2721 : vec2<f32> = u_xlat64;
            let x_2723 : vec2<f32> = u_xlat64;
            let x_2725 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2721) * x_2723) + vec2<f32>(x_2725.y, x_2725.w));
            let x_2728 : vec4<f32> = u_xlat15;
            let x_2730 : vec2<f32> = (vec2<f32>(x_2728.x, x_2728.y) + vec2<f32>(1.0f, 1.0f));
            let x_2731 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2730.x, x_2730.y, x_2731.z, x_2731.w);
            let x_2733 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2733 + vec2<f32>(1.0f, 1.0f));
            let x_2735 : vec4<f32> = u_xlat14;
            let x_2737 : vec2<f32> = (vec2<f32>(x_2735.x, x_2735.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2738 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2737.x, x_2737.y, x_2738.z, x_2738.w);
            let x_2740 : vec2<f32> = u_xlat66;
            let x_2741 : vec2<f32> = (x_2740 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2742 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2741.x, x_2741.y, x_2742.z, x_2742.w);
            let x_2744 : vec4<f32> = u_xlat15;
            let x_2746 : vec2<f32> = (vec2<f32>(x_2744.x, x_2744.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2747 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2746.x, x_2746.y, x_2747.z, x_2747.w);
            let x_2749 : vec2<f32> = u_xlat64;
            let x_2750 : vec2<f32> = (x_2749 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2751 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2750.x, x_2750.y, x_2751.z, x_2751.w);
            let x_2753 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2753.y, x_2753.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2757 : f32 = u_xlat15.x;
            u_xlat16.z = x_2757;
            let x_2760 : f32 = u_xlat64.x;
            u_xlat16.w = x_2760;
            let x_2763 : f32 = u_xlat17.x;
            u_xlat14.z = x_2763;
            let x_2766 : f32 = u_xlat13.x;
            u_xlat14.w = x_2766;
            let x_2768 : vec4<f32> = u_xlat14;
            let x_2770 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2768.z, x_2768.w, x_2768.x, x_2768.z) + vec4<f32>(x_2770.z, x_2770.w, x_2770.x, x_2770.z));
            let x_2774 : f32 = u_xlat16.y;
            u_xlat15.z = x_2774;
            let x_2777 : f32 = u_xlat64.y;
            u_xlat15.w = x_2777;
            let x_2780 : f32 = u_xlat14.y;
            u_xlat17.z = x_2780;
            let x_2783 : f32 = u_xlat13.z;
            u_xlat17.w = x_2783;
            let x_2785 : vec4<f32> = u_xlat15;
            let x_2787 : vec4<f32> = u_xlat17;
            let x_2789 : vec3<f32> = (vec3<f32>(x_2785.z, x_2785.y, x_2785.w) + vec3<f32>(x_2787.z, x_2787.y, x_2787.w));
            let x_2790 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2789.x, x_2789.y, x_2789.z, x_2790.w);
            let x_2792 : vec4<f32> = u_xlat14;
            let x_2794 : vec4<f32> = u_xlat18;
            let x_2796 : vec3<f32> = (vec3<f32>(x_2792.x, x_2792.z, x_2792.w) / vec3<f32>(x_2794.z, x_2794.w, x_2794.y));
            let x_2797 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2796.x, x_2796.y, x_2796.z, x_2797.w);
            let x_2799 : vec4<f32> = u_xlat14;
            let x_2801 : vec3<f32> = (vec3<f32>(x_2799.x, x_2799.y, x_2799.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2802 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2801.x, x_2801.y, x_2801.z, x_2802.w);
            let x_2804 : vec4<f32> = u_xlat17;
            let x_2806 : vec4<f32> = u_xlat13;
            let x_2808 : vec3<f32> = (vec3<f32>(x_2804.z, x_2804.y, x_2804.w) / vec3<f32>(x_2806.x, x_2806.y, x_2806.z));
            let x_2809 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2808.x, x_2808.y, x_2808.z, x_2809.w);
            let x_2811 : vec4<f32> = u_xlat15;
            let x_2813 : vec3<f32> = (vec3<f32>(x_2811.x, x_2811.y, x_2811.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2814 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2813.x, x_2813.y, x_2813.z, x_2814.w);
            let x_2816 : vec4<f32> = u_xlat14;
            let x_2819 : vec4<f32> = x_558.x_AdditionalShadowmapSize;
            let x_2821 : vec3<f32> = (vec3<f32>(x_2816.y, x_2816.x, x_2816.z) * vec3<f32>(x_2819.x, x_2819.x, x_2819.x));
            let x_2822 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2821.x, x_2821.y, x_2821.z, x_2822.w);
            let x_2824 : vec4<f32> = u_xlat15;
            let x_2827 : vec4<f32> = x_558.x_AdditionalShadowmapSize;
            let x_2829 : vec3<f32> = (vec3<f32>(x_2824.x, x_2824.y, x_2824.z) * vec3<f32>(x_2827.y, x_2827.y, x_2827.y));
            let x_2830 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2829.x, x_2829.y, x_2829.z, x_2830.w);
            let x_2833 : f32 = u_xlat15.x;
            u_xlat14.w = x_2833;
            let x_2835 : vec4<f32> = u_xlat12;
            let x_2838 : vec4<f32> = x_558.x_AdditionalShadowmapSize;
            let x_2841 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2835.x, x_2835.y, x_2835.x, x_2835.y) * vec4<f32>(x_2838.x, x_2838.y, x_2838.x, x_2838.y)) + vec4<f32>(x_2841.y, x_2841.w, x_2841.x, x_2841.w));
            let x_2844 : vec4<f32> = u_xlat12;
            let x_2847 : vec4<f32> = x_558.x_AdditionalShadowmapSize;
            let x_2850 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2844.x, x_2844.y) * vec2<f32>(x_2847.x, x_2847.y)) + vec2<f32>(x_2850.z, x_2850.w));
            let x_2854 : f32 = u_xlat14.y;
            u_xlat15.w = x_2854;
            let x_2856 : vec4<f32> = u_xlat15;
            let x_2857 : vec2<f32> = vec2<f32>(x_2856.y, x_2856.z);
            let x_2858 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2858.x, x_2857.x, x_2858.z, x_2857.y);
            let x_2860 : vec4<f32> = u_xlat12;
            let x_2863 : vec4<f32> = x_558.x_AdditionalShadowmapSize;
            let x_2866 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2860.x, x_2860.y, x_2860.x, x_2860.y) * vec4<f32>(x_2863.x, x_2863.y, x_2863.x, x_2863.y)) + vec4<f32>(x_2866.x, x_2866.y, x_2866.z, x_2866.y));
            let x_2869 : vec4<f32> = u_xlat12;
            let x_2872 : vec4<f32> = x_558.x_AdditionalShadowmapSize;
            let x_2875 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2869.x, x_2869.y, x_2869.x, x_2869.y) * vec4<f32>(x_2872.x, x_2872.y, x_2872.x, x_2872.y)) + vec4<f32>(x_2875.w, x_2875.y, x_2875.w, x_2875.z));
            let x_2878 : vec4<f32> = u_xlat12;
            let x_2881 : vec4<f32> = x_558.x_AdditionalShadowmapSize;
            let x_2884 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2878.x, x_2878.y, x_2878.x, x_2878.y) * vec4<f32>(x_2881.x, x_2881.y, x_2881.x, x_2881.y)) + vec4<f32>(x_2884.x, x_2884.w, x_2884.z, x_2884.w));
            let x_2887 : vec4<f32> = u_xlat13;
            let x_2889 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2887.x, x_2887.x, x_2887.x, x_2887.y) * vec4<f32>(x_2889.z, x_2889.w, x_2889.y, x_2889.z));
            let x_2893 : vec4<f32> = u_xlat13;
            let x_2895 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2893.y, x_2893.y, x_2893.z, x_2893.z) * x_2895);
            let x_2898 : f32 = u_xlat13.z;
            let x_2900 : f32 = u_xlat18.y;
            u_xlat85 = (x_2898 * x_2900);
            let x_2903 : vec4<f32> = u_xlat16;
            let x_2904 : vec2<f32> = vec2<f32>(x_2903.x, x_2903.y);
            let x_2906 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2904.x, x_2904.y, x_2906);
            let x_2913 : vec3<f32> = txVec34;
            let x_2915 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2913.xy, x_2913.z);
            u_xlat86 = x_2915;
            let x_2917 : vec4<f32> = u_xlat16;
            let x_2918 : vec2<f32> = vec2<f32>(x_2917.z, x_2917.w);
            let x_2920 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2918.x, x_2918.y, x_2920);
            let x_2928 : vec3<f32> = txVec35;
            let x_2930 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2928.xy, x_2928.z);
            u_xlat87 = x_2930;
            let x_2931 : f32 = u_xlat87;
            let x_2933 : f32 = u_xlat19.y;
            u_xlat87 = (x_2931 * x_2933);
            let x_2936 : f32 = u_xlat19.x;
            let x_2937 : f32 = u_xlat86;
            let x_2939 : f32 = u_xlat87;
            u_xlat86 = ((x_2936 * x_2937) + x_2939);
            let x_2942 : vec2<f32> = u_xlat64;
            let x_2944 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_2942.x, x_2942.y, x_2944);
            let x_2951 : vec3<f32> = txVec36;
            let x_2953 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2951.xy, x_2951.z);
            u_xlat87 = x_2953;
            let x_2955 : f32 = u_xlat19.z;
            let x_2956 : f32 = u_xlat87;
            let x_2958 : f32 = u_xlat86;
            u_xlat86 = ((x_2955 * x_2956) + x_2958);
            let x_2961 : vec4<f32> = u_xlat15;
            let x_2962 : vec2<f32> = vec2<f32>(x_2961.x, x_2961.y);
            let x_2964 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_2962.x, x_2962.y, x_2964);
            let x_2971 : vec3<f32> = txVec37;
            let x_2973 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2971.xy, x_2971.z);
            u_xlat87 = x_2973;
            let x_2975 : f32 = u_xlat19.w;
            let x_2976 : f32 = u_xlat87;
            let x_2978 : f32 = u_xlat86;
            u_xlat86 = ((x_2975 * x_2976) + x_2978);
            let x_2981 : vec4<f32> = u_xlat17;
            let x_2982 : vec2<f32> = vec2<f32>(x_2981.x, x_2981.y);
            let x_2984 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_2982.x, x_2982.y, x_2984);
            let x_2991 : vec3<f32> = txVec38;
            let x_2993 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2991.xy, x_2991.z);
            u_xlat87 = x_2993;
            let x_2995 : f32 = u_xlat20.x;
            let x_2996 : f32 = u_xlat87;
            let x_2998 : f32 = u_xlat86;
            u_xlat86 = ((x_2995 * x_2996) + x_2998);
            let x_3001 : vec4<f32> = u_xlat17;
            let x_3002 : vec2<f32> = vec2<f32>(x_3001.z, x_3001.w);
            let x_3004 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3002.x, x_3002.y, x_3004);
            let x_3011 : vec3<f32> = txVec39;
            let x_3013 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3011.xy, x_3011.z);
            u_xlat87 = x_3013;
            let x_3015 : f32 = u_xlat20.y;
            let x_3016 : f32 = u_xlat87;
            let x_3018 : f32 = u_xlat86;
            u_xlat86 = ((x_3015 * x_3016) + x_3018);
            let x_3021 : vec4<f32> = u_xlat15;
            let x_3022 : vec2<f32> = vec2<f32>(x_3021.z, x_3021.w);
            let x_3024 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3022.x, x_3022.y, x_3024);
            let x_3031 : vec3<f32> = txVec40;
            let x_3033 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3031.xy, x_3031.z);
            u_xlat87 = x_3033;
            let x_3035 : f32 = u_xlat20.z;
            let x_3036 : f32 = u_xlat87;
            let x_3038 : f32 = u_xlat86;
            u_xlat86 = ((x_3035 * x_3036) + x_3038);
            let x_3041 : vec4<f32> = u_xlat14;
            let x_3042 : vec2<f32> = vec2<f32>(x_3041.x, x_3041.y);
            let x_3044 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3042.x, x_3042.y, x_3044);
            let x_3051 : vec3<f32> = txVec41;
            let x_3053 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3051.xy, x_3051.z);
            u_xlat87 = x_3053;
            let x_3055 : f32 = u_xlat20.w;
            let x_3056 : f32 = u_xlat87;
            let x_3058 : f32 = u_xlat86;
            u_xlat86 = ((x_3055 * x_3056) + x_3058);
            let x_3061 : vec4<f32> = u_xlat14;
            let x_3062 : vec2<f32> = vec2<f32>(x_3061.z, x_3061.w);
            let x_3064 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3062.x, x_3062.y, x_3064);
            let x_3071 : vec3<f32> = txVec42;
            let x_3073 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3071.xy, x_3071.z);
            u_xlat87 = x_3073;
            let x_3074 : f32 = u_xlat85;
            let x_3075 : f32 = u_xlat87;
            let x_3077 : f32 = u_xlat86;
            u_xlat59 = ((x_3074 * x_3075) + x_3077);
          } else {
            let x_3080 : vec4<f32> = u_xlat11;
            let x_3083 : vec4<f32> = x_558.x_AdditionalShadowmapSize;
            let x_3086 : vec2<f32> = ((vec2<f32>(x_3080.x, x_3080.y) * vec2<f32>(x_3083.z, x_3083.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3087 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3086.x, x_3086.y, x_3087.z, x_3087.w);
            let x_3089 : vec4<f32> = u_xlat12;
            let x_3091 : vec2<f32> = floor(vec2<f32>(x_3089.x, x_3089.y));
            let x_3092 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3091.x, x_3091.y, x_3092.z, x_3092.w);
            let x_3094 : vec4<f32> = u_xlat11;
            let x_3097 : vec4<f32> = x_558.x_AdditionalShadowmapSize;
            let x_3100 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3094.x, x_3094.y) * vec2<f32>(x_3097.z, x_3097.w)) + -(vec2<f32>(x_3100.x, x_3100.y)));
            let x_3104 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3104.x, x_3104.x, x_3104.y, x_3104.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3107 : vec4<f32> = u_xlat13;
            let x_3109 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3107.x, x_3107.x, x_3107.z, x_3107.z) * vec4<f32>(x_3109.x, x_3109.x, x_3109.z, x_3109.z));
            let x_3112 : vec4<f32> = u_xlat14;
            let x_3114 : vec2<f32> = (vec2<f32>(x_3112.y, x_3112.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3115 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3115.x, x_3114.x, x_3115.z, x_3114.y);
            let x_3117 : vec4<f32> = u_xlat14;
            let x_3120 : vec2<f32> = u_xlat64;
            let x_3122 : vec2<f32> = ((vec2<f32>(x_3117.x, x_3117.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3120));
            let x_3123 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3122.x, x_3123.y, x_3122.y, x_3123.w);
            let x_3125 : vec2<f32> = u_xlat64;
            let x_3127 : vec2<f32> = (-(x_3125) + vec2<f32>(1.0f, 1.0f));
            let x_3128 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3127.x, x_3127.y, x_3128.z, x_3128.w);
            let x_3130 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3130, vec2<f32>(0.0f, 0.0f));
            let x_3132 : vec2<f32> = u_xlat66;
            let x_3134 : vec2<f32> = u_xlat66;
            let x_3136 : vec4<f32> = u_xlat14;
            let x_3138 : vec2<f32> = ((-(x_3132) * x_3134) + vec2<f32>(x_3136.x, x_3136.y));
            let x_3139 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3138.x, x_3138.y, x_3139.z, x_3139.w);
            let x_3141 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3141, vec2<f32>(0.0f, 0.0f));
            let x_3144 : vec2<f32> = u_xlat66;
            let x_3146 : vec2<f32> = u_xlat66;
            let x_3148 : vec4<f32> = u_xlat13;
            let x_3150 : vec2<f32> = ((-(x_3144) * x_3146) + vec2<f32>(x_3148.y, x_3148.w));
            let x_3151 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3150.x, x_3151.y, x_3150.y);
            let x_3153 : vec4<f32> = u_xlat14;
            let x_3155 : vec2<f32> = (vec2<f32>(x_3153.x, x_3153.y) + vec2<f32>(2.0f, 2.0f));
            let x_3156 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3155.x, x_3155.y, x_3156.z, x_3156.w);
            let x_3158 : vec3<f32> = u_xlat39;
            let x_3160 : vec2<f32> = (vec2<f32>(x_3158.x, x_3158.z) + vec2<f32>(2.0f, 2.0f));
            let x_3161 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3161.x, x_3160.x, x_3161.z, x_3160.y);
            let x_3164 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3164 * 0.08163200318813323975f);
            let x_3167 : vec4<f32> = u_xlat13;
            let x_3169 : vec3<f32> = (vec3<f32>(x_3167.z, x_3167.x, x_3167.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3170 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3169.x, x_3169.y, x_3169.z, x_3170.w);
            let x_3172 : vec4<f32> = u_xlat14;
            let x_3174 : vec2<f32> = (vec2<f32>(x_3172.x, x_3172.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3175 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3174.x, x_3174.y, x_3175.z, x_3175.w);
            let x_3178 : f32 = u_xlat17.y;
            u_xlat16.x = x_3178;
            let x_3180 : vec2<f32> = u_xlat64;
            let x_3183 : vec2<f32> = ((vec2<f32>(x_3180.x, x_3180.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3184 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3184.x, x_3183.x, x_3184.z, x_3183.y);
            let x_3186 : vec2<f32> = u_xlat64;
            let x_3189 : vec2<f32> = ((vec2<f32>(x_3186.x, x_3186.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3190 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3189.x, x_3190.y, x_3189.y, x_3190.w);
            let x_3193 : f32 = u_xlat13.x;
            u_xlat14.y = x_3193;
            let x_3196 : f32 = u_xlat15.y;
            u_xlat14.w = x_3196;
            let x_3198 : vec4<f32> = u_xlat14;
            let x_3199 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3198 + x_3199);
            let x_3201 : vec2<f32> = u_xlat64;
            let x_3204 : vec2<f32> = ((vec2<f32>(x_3201.y, x_3201.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3205 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3205.x, x_3204.x, x_3205.z, x_3204.y);
            let x_3207 : vec2<f32> = u_xlat64;
            let x_3210 : vec2<f32> = ((vec2<f32>(x_3207.y, x_3207.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3211 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3210.x, x_3211.y, x_3210.y, x_3211.w);
            let x_3214 : f32 = u_xlat13.y;
            u_xlat15.y = x_3214;
            let x_3216 : vec4<f32> = u_xlat15;
            let x_3217 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3216 + x_3217);
            let x_3219 : vec4<f32> = u_xlat14;
            let x_3220 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3219 / x_3220);
            let x_3222 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3222 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3224 : vec4<f32> = u_xlat15;
            let x_3225 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3224 / x_3225);
            let x_3227 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3227 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3229 : vec4<f32> = u_xlat14;
            let x_3232 : vec4<f32> = x_558.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3229.w, x_3229.x, x_3229.y, x_3229.z) * vec4<f32>(x_3232.x, x_3232.x, x_3232.x, x_3232.x));
            let x_3235 : vec4<f32> = u_xlat15;
            let x_3238 : vec4<f32> = x_558.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3235.x, x_3235.w, x_3235.y, x_3235.z) * vec4<f32>(x_3238.y, x_3238.y, x_3238.y, x_3238.y));
            let x_3241 : vec4<f32> = u_xlat14;
            let x_3242 : vec3<f32> = vec3<f32>(x_3241.y, x_3241.z, x_3241.w);
            let x_3243 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3242.x, x_3243.y, x_3242.y, x_3242.z);
            let x_3246 : f32 = u_xlat15.x;
            u_xlat17.y = x_3246;
            let x_3248 : vec4<f32> = u_xlat12;
            let x_3251 : vec4<f32> = x_558.x_AdditionalShadowmapSize;
            let x_3254 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3248.x, x_3248.y, x_3248.x, x_3248.y) * vec4<f32>(x_3251.x, x_3251.y, x_3251.x, x_3251.y)) + vec4<f32>(x_3254.x, x_3254.y, x_3254.z, x_3254.y));
            let x_3257 : vec4<f32> = u_xlat12;
            let x_3260 : vec4<f32> = x_558.x_AdditionalShadowmapSize;
            let x_3263 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3257.x, x_3257.y) * vec2<f32>(x_3260.x, x_3260.y)) + vec2<f32>(x_3263.w, x_3263.y));
            let x_3267 : f32 = u_xlat17.y;
            u_xlat14.y = x_3267;
            let x_3270 : f32 = u_xlat15.z;
            u_xlat17.y = x_3270;
            let x_3272 : vec4<f32> = u_xlat12;
            let x_3275 : vec4<f32> = x_558.x_AdditionalShadowmapSize;
            let x_3278 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3272.x, x_3272.y, x_3272.x, x_3272.y) * vec4<f32>(x_3275.x, x_3275.y, x_3275.x, x_3275.y)) + vec4<f32>(x_3278.x, x_3278.y, x_3278.z, x_3278.y));
            let x_3281 : vec4<f32> = u_xlat12;
            let x_3284 : vec4<f32> = x_558.x_AdditionalShadowmapSize;
            let x_3287 : vec4<f32> = u_xlat17;
            let x_3289 : vec2<f32> = ((vec2<f32>(x_3281.x, x_3281.y) * vec2<f32>(x_3284.x, x_3284.y)) + vec2<f32>(x_3287.w, x_3287.y));
            let x_3290 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3289.x, x_3289.y, x_3290.z, x_3290.w);
            let x_3293 : f32 = u_xlat17.y;
            u_xlat14.z = x_3293;
            let x_3296 : vec4<f32> = u_xlat12;
            let x_3299 : vec4<f32> = x_558.x_AdditionalShadowmapSize;
            let x_3302 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3296.x, x_3296.y, x_3296.x, x_3296.y) * vec4<f32>(x_3299.x, x_3299.y, x_3299.x, x_3299.y)) + vec4<f32>(x_3302.x, x_3302.y, x_3302.x, x_3302.z));
            let x_3306 : f32 = u_xlat15.w;
            u_xlat17.y = x_3306;
            let x_3309 : vec4<f32> = u_xlat12;
            let x_3312 : vec4<f32> = x_558.x_AdditionalShadowmapSize;
            let x_3315 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3309.x, x_3309.y, x_3309.x, x_3309.y) * vec4<f32>(x_3312.x, x_3312.y, x_3312.x, x_3312.y)) + vec4<f32>(x_3315.x, x_3315.y, x_3315.z, x_3315.y));
            let x_3319 : vec4<f32> = u_xlat12;
            let x_3322 : vec4<f32> = x_558.x_AdditionalShadowmapSize;
            let x_3325 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3319.x, x_3319.y) * vec2<f32>(x_3322.x, x_3322.y)) + vec2<f32>(x_3325.w, x_3325.y));
            let x_3329 : f32 = u_xlat17.y;
            u_xlat14.w = x_3329;
            let x_3332 : vec4<f32> = u_xlat12;
            let x_3335 : vec4<f32> = x_558.x_AdditionalShadowmapSize;
            let x_3338 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3332.x, x_3332.y) * vec2<f32>(x_3335.x, x_3335.y)) + vec2<f32>(x_3338.x, x_3338.w));
            let x_3341 : vec4<f32> = u_xlat17;
            let x_3342 : vec3<f32> = vec3<f32>(x_3341.x, x_3341.z, x_3341.w);
            let x_3343 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3342.x, x_3343.y, x_3342.y, x_3342.z);
            let x_3345 : vec4<f32> = u_xlat12;
            let x_3348 : vec4<f32> = x_558.x_AdditionalShadowmapSize;
            let x_3351 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3345.x, x_3345.y, x_3345.x, x_3345.y) * vec4<f32>(x_3348.x, x_3348.y, x_3348.x, x_3348.y)) + vec4<f32>(x_3351.x, x_3351.y, x_3351.z, x_3351.y));
            let x_3355 : vec4<f32> = u_xlat12;
            let x_3358 : vec4<f32> = x_558.x_AdditionalShadowmapSize;
            let x_3361 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3355.x, x_3355.y) * vec2<f32>(x_3358.x, x_3358.y)) + vec2<f32>(x_3361.w, x_3361.y));
            let x_3365 : f32 = u_xlat14.x;
            u_xlat15.x = x_3365;
            let x_3367 : vec4<f32> = u_xlat12;
            let x_3370 : vec4<f32> = x_558.x_AdditionalShadowmapSize;
            let x_3373 : vec4<f32> = u_xlat15;
            let x_3375 : vec2<f32> = ((vec2<f32>(x_3367.x, x_3367.y) * vec2<f32>(x_3370.x, x_3370.y)) + vec2<f32>(x_3373.x, x_3373.y));
            let x_3376 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3375.x, x_3375.y, x_3376.z, x_3376.w);
            let x_3379 : vec4<f32> = u_xlat13;
            let x_3381 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3379.x, x_3379.x, x_3379.x, x_3379.x) * x_3381);
            let x_3384 : vec4<f32> = u_xlat13;
            let x_3386 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3384.y, x_3384.y, x_3384.y, x_3384.y) * x_3386);
            let x_3389 : vec4<f32> = u_xlat13;
            let x_3391 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3389.z, x_3389.z, x_3389.z, x_3389.z) * x_3391);
            let x_3393 : vec4<f32> = u_xlat13;
            let x_3395 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3393.w, x_3393.w, x_3393.w, x_3393.w) * x_3395);
            let x_3398 : vec4<f32> = u_xlat18;
            let x_3399 : vec2<f32> = vec2<f32>(x_3398.x, x_3398.y);
            let x_3401 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3399.x, x_3399.y, x_3401);
            let x_3408 : vec3<f32> = txVec43;
            let x_3410 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3408.xy, x_3408.z);
            u_xlat85 = x_3410;
            let x_3412 : vec4<f32> = u_xlat18;
            let x_3413 : vec2<f32> = vec2<f32>(x_3412.z, x_3412.w);
            let x_3415 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3413.x, x_3413.y, x_3415);
            let x_3422 : vec3<f32> = txVec44;
            let x_3424 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3422.xy, x_3422.z);
            u_xlat86 = x_3424;
            let x_3425 : f32 = u_xlat86;
            let x_3427 : f32 = u_xlat23.y;
            u_xlat86 = (x_3425 * x_3427);
            let x_3430 : f32 = u_xlat23.x;
            let x_3431 : f32 = u_xlat85;
            let x_3433 : f32 = u_xlat86;
            u_xlat85 = ((x_3430 * x_3431) + x_3433);
            let x_3436 : vec2<f32> = u_xlat64;
            let x_3438 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3436.x, x_3436.y, x_3438);
            let x_3445 : vec3<f32> = txVec45;
            let x_3447 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3445.xy, x_3445.z);
            u_xlat86 = x_3447;
            let x_3449 : f32 = u_xlat23.z;
            let x_3450 : f32 = u_xlat86;
            let x_3452 : f32 = u_xlat85;
            u_xlat85 = ((x_3449 * x_3450) + x_3452);
            let x_3455 : vec4<f32> = u_xlat21;
            let x_3456 : vec2<f32> = vec2<f32>(x_3455.x, x_3455.y);
            let x_3458 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3456.x, x_3456.y, x_3458);
            let x_3465 : vec3<f32> = txVec46;
            let x_3467 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3465.xy, x_3465.z);
            u_xlat86 = x_3467;
            let x_3469 : f32 = u_xlat23.w;
            let x_3470 : f32 = u_xlat86;
            let x_3472 : f32 = u_xlat85;
            u_xlat85 = ((x_3469 * x_3470) + x_3472);
            let x_3475 : vec4<f32> = u_xlat19;
            let x_3476 : vec2<f32> = vec2<f32>(x_3475.x, x_3475.y);
            let x_3478 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3476.x, x_3476.y, x_3478);
            let x_3485 : vec3<f32> = txVec47;
            let x_3487 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3485.xy, x_3485.z);
            u_xlat86 = x_3487;
            let x_3489 : f32 = u_xlat24.x;
            let x_3490 : f32 = u_xlat86;
            let x_3492 : f32 = u_xlat85;
            u_xlat85 = ((x_3489 * x_3490) + x_3492);
            let x_3495 : vec4<f32> = u_xlat19;
            let x_3496 : vec2<f32> = vec2<f32>(x_3495.z, x_3495.w);
            let x_3498 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3496.x, x_3496.y, x_3498);
            let x_3505 : vec3<f32> = txVec48;
            let x_3507 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3505.xy, x_3505.z);
            u_xlat86 = x_3507;
            let x_3509 : f32 = u_xlat24.y;
            let x_3510 : f32 = u_xlat86;
            let x_3512 : f32 = u_xlat85;
            u_xlat85 = ((x_3509 * x_3510) + x_3512);
            let x_3515 : vec4<f32> = u_xlat20;
            let x_3516 : vec2<f32> = vec2<f32>(x_3515.x, x_3515.y);
            let x_3518 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3516.x, x_3516.y, x_3518);
            let x_3525 : vec3<f32> = txVec49;
            let x_3527 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3525.xy, x_3525.z);
            u_xlat86 = x_3527;
            let x_3529 : f32 = u_xlat24.z;
            let x_3530 : f32 = u_xlat86;
            let x_3532 : f32 = u_xlat85;
            u_xlat85 = ((x_3529 * x_3530) + x_3532);
            let x_3535 : vec4<f32> = u_xlat21;
            let x_3536 : vec2<f32> = vec2<f32>(x_3535.z, x_3535.w);
            let x_3538 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3536.x, x_3536.y, x_3538);
            let x_3545 : vec3<f32> = txVec50;
            let x_3547 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3545.xy, x_3545.z);
            u_xlat86 = x_3547;
            let x_3549 : f32 = u_xlat24.w;
            let x_3550 : f32 = u_xlat86;
            let x_3552 : f32 = u_xlat85;
            u_xlat85 = ((x_3549 * x_3550) + x_3552);
            let x_3555 : vec4<f32> = u_xlat22;
            let x_3556 : vec2<f32> = vec2<f32>(x_3555.x, x_3555.y);
            let x_3558 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3556.x, x_3556.y, x_3558);
            let x_3565 : vec3<f32> = txVec51;
            let x_3567 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3565.xy, x_3565.z);
            u_xlat86 = x_3567;
            let x_3569 : f32 = u_xlat25.x;
            let x_3570 : f32 = u_xlat86;
            let x_3572 : f32 = u_xlat85;
            u_xlat85 = ((x_3569 * x_3570) + x_3572);
            let x_3575 : vec4<f32> = u_xlat22;
            let x_3576 : vec2<f32> = vec2<f32>(x_3575.z, x_3575.w);
            let x_3578 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3576.x, x_3576.y, x_3578);
            let x_3585 : vec3<f32> = txVec52;
            let x_3587 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3585.xy, x_3585.z);
            u_xlat86 = x_3587;
            let x_3589 : f32 = u_xlat25.y;
            let x_3590 : f32 = u_xlat86;
            let x_3592 : f32 = u_xlat85;
            u_xlat85 = ((x_3589 * x_3590) + x_3592);
            let x_3595 : vec2<f32> = u_xlat40;
            let x_3597 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3595.x, x_3595.y, x_3597);
            let x_3604 : vec3<f32> = txVec53;
            let x_3606 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3604.xy, x_3604.z);
            u_xlat86 = x_3606;
            let x_3608 : f32 = u_xlat25.z;
            let x_3609 : f32 = u_xlat86;
            let x_3611 : f32 = u_xlat85;
            u_xlat85 = ((x_3608 * x_3609) + x_3611);
            let x_3614 : vec2<f32> = u_xlat72;
            let x_3616 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3614.x, x_3614.y, x_3616);
            let x_3623 : vec3<f32> = txVec54;
            let x_3625 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3623.xy, x_3623.z);
            u_xlat86 = x_3625;
            let x_3627 : f32 = u_xlat25.w;
            let x_3628 : f32 = u_xlat86;
            let x_3630 : f32 = u_xlat85;
            u_xlat85 = ((x_3627 * x_3628) + x_3630);
            let x_3633 : vec4<f32> = u_xlat17;
            let x_3634 : vec2<f32> = vec2<f32>(x_3633.x, x_3633.y);
            let x_3636 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3634.x, x_3634.y, x_3636);
            let x_3643 : vec3<f32> = txVec55;
            let x_3645 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3643.xy, x_3643.z);
            u_xlat86 = x_3645;
            let x_3647 : f32 = u_xlat13.x;
            let x_3648 : f32 = u_xlat86;
            let x_3650 : f32 = u_xlat85;
            u_xlat85 = ((x_3647 * x_3648) + x_3650);
            let x_3653 : vec4<f32> = u_xlat17;
            let x_3654 : vec2<f32> = vec2<f32>(x_3653.z, x_3653.w);
            let x_3656 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3654.x, x_3654.y, x_3656);
            let x_3663 : vec3<f32> = txVec56;
            let x_3665 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3663.xy, x_3663.z);
            u_xlat86 = x_3665;
            let x_3667 : f32 = u_xlat13.y;
            let x_3668 : f32 = u_xlat86;
            let x_3670 : f32 = u_xlat85;
            u_xlat85 = ((x_3667 * x_3668) + x_3670);
            let x_3673 : vec2<f32> = u_xlat67;
            let x_3675 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3673.x, x_3673.y, x_3675);
            let x_3682 : vec3<f32> = txVec57;
            let x_3684 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3682.xy, x_3682.z);
            u_xlat86 = x_3684;
            let x_3686 : f32 = u_xlat13.z;
            let x_3687 : f32 = u_xlat86;
            let x_3689 : f32 = u_xlat85;
            u_xlat85 = ((x_3686 * x_3687) + x_3689);
            let x_3692 : vec4<f32> = u_xlat12;
            let x_3693 : vec2<f32> = vec2<f32>(x_3692.x, x_3692.y);
            let x_3695 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3693.x, x_3693.y, x_3695);
            let x_3702 : vec3<f32> = txVec58;
            let x_3704 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3702.xy, x_3702.z);
            u_xlat86 = x_3704;
            let x_3706 : f32 = u_xlat13.w;
            let x_3707 : f32 = u_xlat86;
            let x_3709 : f32 = u_xlat85;
            u_xlat59 = ((x_3706 * x_3707) + x_3709);
          }
        }
      } else {
        let x_3713 : vec4<f32> = u_xlat11;
        let x_3714 : vec2<f32> = vec2<f32>(x_3713.x, x_3713.y);
        let x_3716 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3714.x, x_3714.y, x_3716);
        let x_3723 : vec3<f32> = txVec59;
        let x_3725 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3723.xy, x_3723.z);
        u_xlat59 = x_3725;
      }
      let x_3726 : i32 = u_xlati82;
      let x_3728 : f32 = x_558.x_AdditionalShadowParams[x_3726].x;
      u_xlat85 = (1.0f + -(x_3728));
      let x_3731 : f32 = u_xlat59;
      let x_3732 : i32 = u_xlati82;
      let x_3734 : f32 = x_558.x_AdditionalShadowParams[x_3732].x;
      let x_3736 : f32 = u_xlat85;
      u_xlat59 = ((x_3731 * x_3734) + x_3736);
      let x_3739 : f32 = u_xlat11.z;
      u_xlatb85 = (0.0f >= x_3739);
      let x_3743 : f32 = u_xlat11.z;
      u_xlatb86 = (x_3743 >= 1.0f);
      let x_3745 : bool = u_xlatb85;
      let x_3746 : bool = u_xlatb86;
      u_xlatb85 = (x_3745 | x_3746);
      let x_3748 : bool = u_xlatb85;
      let x_3749 : f32 = u_xlat59;
      u_xlat59 = select(x_3749, 1.0f, x_3748);
    } else {
      u_xlat59 = 1.0f;
    }
    let x_3752 : f32 = u_xlat59;
    u_xlat85 = (-(x_3752) + 1.0f);
    let x_3755 : f32 = u_xlat52;
    let x_3756 : f32 = u_xlat85;
    let x_3758 : f32 = u_xlat59;
    u_xlat59 = ((x_3755 * x_3756) + x_3758);
    let x_3761 : i32 = u_xlati82;
    u_xlati85 = (1i << bitcast<u32>((x_3761 & 31i)));
    let x_3765 : i32 = u_xlati85;
    let x_3768 : f32 = x_1845.x_AdditionalLightsCookieEnableBits;
    u_xlati85 = bitcast<i32>((bitcast<u32>(x_3765) & bitcast<u32>(x_3768)));
    let x_3772 : i32 = u_xlati85;
    if ((x_3772 != 0i)) {
      let x_3776 : i32 = u_xlati82;
      let x_3778 : f32 = x_1845.x_AdditionalLightsLightTypes[x_3776].el;
      u_xlati85 = i32(x_3778);
      let x_3781 : i32 = u_xlati85;
      u_xlati86 = select(1i, 0i, (x_3781 != 0i));
      let x_3785 : i32 = u_xlati82;
      u_xlati87 = (x_3785 << bitcast<u32>(2i));
      let x_3787 : i32 = u_xlati86;
      if ((x_3787 != 0i)) {
        let x_3791 : vec3<f32> = vs_INTERP7;
        let x_3793 : i32 = u_xlati87;
        let x_3796 : i32 = u_xlati87;
        let x_3800 : vec4<f32> = x_1845.x_AdditionalLightsWorldToLights[((x_3793 + 1i) / 4i)][((x_3796 + 1i) % 4i)];
        let x_3802 : vec3<f32> = (vec3<f32>(x_3791.y, x_3791.y, x_3791.y) * vec3<f32>(x_3800.x, x_3800.y, x_3800.w));
        let x_3803 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3802.x, x_3802.y, x_3802.z, x_3803.w);
        let x_3805 : i32 = u_xlati87;
        let x_3807 : i32 = u_xlati87;
        let x_3810 : vec4<f32> = x_1845.x_AdditionalLightsWorldToLights[(x_3805 / 4i)][(x_3807 % 4i)];
        let x_3812 : vec3<f32> = vs_INTERP7;
        let x_3815 : vec4<f32> = u_xlat11;
        let x_3817 : vec3<f32> = ((vec3<f32>(x_3810.x, x_3810.y, x_3810.w) * vec3<f32>(x_3812.x, x_3812.x, x_3812.x)) + vec3<f32>(x_3815.x, x_3815.y, x_3815.z));
        let x_3818 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3817.x, x_3817.y, x_3817.z, x_3818.w);
        let x_3820 : i32 = u_xlati87;
        let x_3823 : i32 = u_xlati87;
        let x_3827 : vec4<f32> = x_1845.x_AdditionalLightsWorldToLights[((x_3820 + 2i) / 4i)][((x_3823 + 2i) % 4i)];
        let x_3829 : vec3<f32> = vs_INTERP7;
        let x_3832 : vec4<f32> = u_xlat11;
        let x_3834 : vec3<f32> = ((vec3<f32>(x_3827.x, x_3827.y, x_3827.w) * vec3<f32>(x_3829.z, x_3829.z, x_3829.z)) + vec3<f32>(x_3832.x, x_3832.y, x_3832.z));
        let x_3835 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3834.x, x_3834.y, x_3834.z, x_3835.w);
        let x_3837 : vec4<f32> = u_xlat11;
        let x_3839 : i32 = u_xlati87;
        let x_3842 : i32 = u_xlati87;
        let x_3846 : vec4<f32> = x_1845.x_AdditionalLightsWorldToLights[((x_3839 + 3i) / 4i)][((x_3842 + 3i) % 4i)];
        let x_3848 : vec3<f32> = (vec3<f32>(x_3837.x, x_3837.y, x_3837.z) + vec3<f32>(x_3846.x, x_3846.y, x_3846.w));
        let x_3849 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3848.x, x_3848.y, x_3848.z, x_3849.w);
        let x_3851 : vec4<f32> = u_xlat11;
        let x_3853 : vec4<f32> = u_xlat11;
        let x_3855 : vec2<f32> = (vec2<f32>(x_3851.x, x_3851.y) / vec2<f32>(x_3853.z, x_3853.z));
        let x_3856 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3855.x, x_3855.y, x_3856.z, x_3856.w);
        let x_3858 : vec4<f32> = u_xlat11;
        let x_3861 : vec2<f32> = ((vec2<f32>(x_3858.x, x_3858.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3862 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3861.x, x_3861.y, x_3862.z, x_3862.w);
        let x_3864 : vec4<f32> = u_xlat11;
        let x_3868 : vec2<f32> = clamp(vec2<f32>(x_3864.x, x_3864.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3869 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3868.x, x_3868.y, x_3869.z, x_3869.w);
        let x_3871 : i32 = u_xlati82;
        let x_3873 : vec4<f32> = x_1845.x_AdditionalLightsCookieAtlasUVRects[x_3871];
        let x_3875 : vec4<f32> = u_xlat11;
        let x_3878 : i32 = u_xlati82;
        let x_3880 : vec4<f32> = x_1845.x_AdditionalLightsCookieAtlasUVRects[x_3878];
        let x_3882 : vec2<f32> = ((vec2<f32>(x_3873.x, x_3873.y) * vec2<f32>(x_3875.x, x_3875.y)) + vec2<f32>(x_3880.z, x_3880.w));
        let x_3883 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3882.x, x_3882.y, x_3883.z, x_3883.w);
      } else {
        let x_3886 : i32 = u_xlati85;
        u_xlatb85 = (x_3886 == 1i);
        let x_3888 : bool = u_xlatb85;
        u_xlati85 = select(0i, 1i, x_3888);
        let x_3890 : i32 = u_xlati85;
        if ((x_3890 != 0i)) {
          let x_3895 : vec3<f32> = vs_INTERP7;
          let x_3897 : i32 = u_xlati87;
          let x_3900 : i32 = u_xlati87;
          let x_3904 : vec4<f32> = x_1845.x_AdditionalLightsWorldToLights[((x_3897 + 1i) / 4i)][((x_3900 + 1i) % 4i)];
          u_xlat63 = (vec2<f32>(x_3895.y, x_3895.y) * vec2<f32>(x_3904.x, x_3904.y));
          let x_3907 : i32 = u_xlati87;
          let x_3909 : i32 = u_xlati87;
          let x_3912 : vec4<f32> = x_1845.x_AdditionalLightsWorldToLights[(x_3907 / 4i)][(x_3909 % 4i)];
          let x_3914 : vec3<f32> = vs_INTERP7;
          let x_3917 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_3912.x, x_3912.y) * vec2<f32>(x_3914.x, x_3914.x)) + x_3917);
          let x_3919 : i32 = u_xlati87;
          let x_3922 : i32 = u_xlati87;
          let x_3926 : vec4<f32> = x_1845.x_AdditionalLightsWorldToLights[((x_3919 + 2i) / 4i)][((x_3922 + 2i) % 4i)];
          let x_3928 : vec3<f32> = vs_INTERP7;
          let x_3931 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_3926.x, x_3926.y) * vec2<f32>(x_3928.z, x_3928.z)) + x_3931);
          let x_3933 : vec2<f32> = u_xlat63;
          let x_3934 : i32 = u_xlati87;
          let x_3937 : i32 = u_xlati87;
          let x_3941 : vec4<f32> = x_1845.x_AdditionalLightsWorldToLights[((x_3934 + 3i) / 4i)][((x_3937 + 3i) % 4i)];
          u_xlat63 = (x_3933 + vec2<f32>(x_3941.x, x_3941.y));
          let x_3944 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_3944 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3947 : vec2<f32> = u_xlat63;
          u_xlat63 = fract(x_3947);
          let x_3949 : i32 = u_xlati82;
          let x_3951 : vec4<f32> = x_1845.x_AdditionalLightsCookieAtlasUVRects[x_3949];
          let x_3953 : vec2<f32> = u_xlat63;
          let x_3955 : i32 = u_xlati82;
          let x_3957 : vec4<f32> = x_1845.x_AdditionalLightsCookieAtlasUVRects[x_3955];
          let x_3959 : vec2<f32> = ((vec2<f32>(x_3951.x, x_3951.y) * x_3953) + vec2<f32>(x_3957.z, x_3957.w));
          let x_3960 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3959.x, x_3959.y, x_3960.z, x_3960.w);
        } else {
          let x_3963 : vec3<f32> = vs_INTERP7;
          let x_3965 : i32 = u_xlati87;
          let x_3968 : i32 = u_xlati87;
          let x_3972 : vec4<f32> = x_1845.x_AdditionalLightsWorldToLights[((x_3965 + 1i) / 4i)][((x_3968 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3963.y, x_3963.y, x_3963.y, x_3963.y) * x_3972);
          let x_3974 : i32 = u_xlati87;
          let x_3976 : i32 = u_xlati87;
          let x_3979 : vec4<f32> = x_1845.x_AdditionalLightsWorldToLights[(x_3974 / 4i)][(x_3976 % 4i)];
          let x_3980 : vec3<f32> = vs_INTERP7;
          let x_3983 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3979 * vec4<f32>(x_3980.x, x_3980.x, x_3980.x, x_3980.x)) + x_3983);
          let x_3985 : i32 = u_xlati87;
          let x_3988 : i32 = u_xlati87;
          let x_3992 : vec4<f32> = x_1845.x_AdditionalLightsWorldToLights[((x_3985 + 2i) / 4i)][((x_3988 + 2i) % 4i)];
          let x_3993 : vec3<f32> = vs_INTERP7;
          let x_3996 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3992 * vec4<f32>(x_3993.z, x_3993.z, x_3993.z, x_3993.z)) + x_3996);
          let x_3998 : vec4<f32> = u_xlat12;
          let x_3999 : i32 = u_xlati87;
          let x_4002 : i32 = u_xlati87;
          let x_4006 : vec4<f32> = x_1845.x_AdditionalLightsWorldToLights[((x_3999 + 3i) / 4i)][((x_4002 + 3i) % 4i)];
          u_xlat12 = (x_3998 + x_4006);
          let x_4008 : vec4<f32> = u_xlat12;
          let x_4010 : vec4<f32> = u_xlat12;
          let x_4012 : vec3<f32> = (vec3<f32>(x_4008.x, x_4008.y, x_4008.z) / vec3<f32>(x_4010.w, x_4010.w, x_4010.w));
          let x_4013 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4012.x, x_4012.y, x_4012.z, x_4013.w);
          let x_4015 : vec4<f32> = u_xlat12;
          let x_4017 : vec4<f32> = u_xlat12;
          u_xlat85 = dot(vec3<f32>(x_4015.x, x_4015.y, x_4015.z), vec3<f32>(x_4017.x, x_4017.y, x_4017.z));
          let x_4020 : f32 = u_xlat85;
          u_xlat85 = inverseSqrt(x_4020);
          let x_4022 : f32 = u_xlat85;
          let x_4024 : vec4<f32> = u_xlat12;
          let x_4026 : vec3<f32> = (vec3<f32>(x_4022, x_4022, x_4022) * vec3<f32>(x_4024.x, x_4024.y, x_4024.z));
          let x_4027 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4026.x, x_4026.y, x_4026.z, x_4027.w);
          let x_4029 : vec4<f32> = u_xlat12;
          u_xlat85 = dot(abs(vec3<f32>(x_4029.x, x_4029.y, x_4029.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4033 : f32 = u_xlat85;
          u_xlat85 = max(x_4033, 0.00000099999999747524f);
          let x_4036 : f32 = u_xlat85;
          u_xlat85 = (1.0f / x_4036);
          let x_4038 : f32 = u_xlat85;
          let x_4040 : vec4<f32> = u_xlat12;
          let x_4042 : vec3<f32> = (vec3<f32>(x_4038, x_4038, x_4038) * vec3<f32>(x_4040.z, x_4040.x, x_4040.y));
          let x_4043 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4042.x, x_4042.y, x_4042.z, x_4043.w);
          let x_4046 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4046);
          let x_4050 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4050, 0.0f, 1.0f);
          let x_4054 : vec4<f32> = u_xlat13;
          let x_4056 : vec4<bool> = (vec4<f32>(x_4054.y, x_4054.z, x_4054.y, x_4054.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb63 = vec2<bool>(x_4056.x, x_4056.y);
          let x_4059 : bool = u_xlatb63.x;
          if (x_4059) {
            let x_4064 : f32 = u_xlat13.x;
            x_4060 = x_4064;
          } else {
            let x_4067 : f32 = u_xlat13.x;
            x_4060 = -(x_4067);
          }
          let x_4069 : f32 = x_4060;
          u_xlat63.x = x_4069;
          let x_4072 : bool = u_xlatb63.y;
          if (x_4072) {
            let x_4077 : f32 = u_xlat13.x;
            x_4073 = x_4077;
          } else {
            let x_4080 : f32 = u_xlat13.x;
            x_4073 = -(x_4080);
          }
          let x_4082 : f32 = x_4073;
          u_xlat63.y = x_4082;
          let x_4084 : vec4<f32> = u_xlat12;
          let x_4086 : f32 = u_xlat85;
          let x_4089 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4084.x, x_4084.y) * vec2<f32>(x_4086, x_4086)) + x_4089);
          let x_4091 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4091 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4094 : vec2<f32> = u_xlat63;
          u_xlat63 = clamp(x_4094, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4098 : i32 = u_xlati82;
          let x_4100 : vec4<f32> = x_1845.x_AdditionalLightsCookieAtlasUVRects[x_4098];
          let x_4102 : vec2<f32> = u_xlat63;
          let x_4104 : i32 = u_xlati82;
          let x_4106 : vec4<f32> = x_1845.x_AdditionalLightsCookieAtlasUVRects[x_4104];
          let x_4108 : vec2<f32> = ((vec2<f32>(x_4100.x, x_4100.y) * x_4102) + vec2<f32>(x_4106.z, x_4106.w));
          let x_4109 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4108.x, x_4108.y, x_4109.z, x_4109.w);
        }
      }
      let x_4116 : vec4<f32> = u_xlat11;
      let x_4118 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4116.x, x_4116.y), 0.0f);
      u_xlat11 = x_4118;
      let x_4120 : bool = u_xlatb7.y;
      if (x_4120) {
        let x_4125 : f32 = u_xlat11.w;
        x_4121 = x_4125;
      } else {
        let x_4128 : f32 = u_xlat11.x;
        x_4121 = x_4128;
      }
      let x_4129 : f32 = x_4121;
      u_xlat85 = x_4129;
      let x_4131 : bool = u_xlatb7.x;
      if (x_4131) {
        let x_4135 : vec4<f32> = u_xlat11;
        x_4132 = vec3<f32>(x_4135.x, x_4135.y, x_4135.z);
      } else {
        let x_4138 : f32 = u_xlat85;
        x_4132 = vec3<f32>(x_4138, x_4138, x_4138);
      }
      let x_4140 : vec3<f32> = x_4132;
      let x_4141 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4140.x, x_4140.y, x_4140.z, x_4141.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4147 : vec4<f32> = u_xlat11;
    let x_4149 : i32 = u_xlati82;
    let x_4151 : vec4<f32> = x_2338.x_AdditionalLightsColor[x_4149];
    let x_4153 : vec3<f32> = (vec3<f32>(x_4147.x, x_4147.y, x_4147.z) * vec3<f32>(x_4151.x, x_4151.y, x_4151.z));
    let x_4154 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4153.x, x_4153.y, x_4153.z, x_4154.w);
    let x_4156 : f32 = u_xlat83;
    let x_4157 : f32 = u_xlat59;
    u_xlat82 = (x_4156 * x_4157);
    let x_4159 : vec4<f32> = u_xlat3;
    let x_4161 : vec4<f32> = u_xlat10;
    u_xlat83 = dot(vec3<f32>(x_4159.x, x_4159.y, x_4159.z), vec3<f32>(x_4161.x, x_4161.y, x_4161.z));
    let x_4164 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4164, 0.0f, 1.0f);
    let x_4166 : f32 = u_xlat82;
    let x_4167 : f32 = u_xlat83;
    u_xlat82 = (x_4166 * x_4167);
    let x_4169 : f32 = u_xlat82;
    let x_4171 : vec4<f32> = u_xlat11;
    let x_4173 : vec3<f32> = (vec3<f32>(x_4169, x_4169, x_4169) * vec3<f32>(x_4171.x, x_4171.y, x_4171.z));
    let x_4174 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4173.x, x_4173.y, x_4173.z, x_4174.w);
    let x_4176 : vec4<f32> = u_xlat9;
    let x_4178 : f32 = u_xlat84;
    let x_4181 : vec3<f32> = u_xlat4;
    let x_4182 : vec3<f32> = ((vec3<f32>(x_4176.x, x_4176.y, x_4176.z) * vec3<f32>(x_4178, x_4178, x_4178)) + x_4181);
    let x_4183 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4182.x, x_4182.y, x_4182.z, x_4183.w);
    let x_4185 : vec4<f32> = u_xlat9;
    let x_4187 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_4185.x, x_4185.y, x_4185.z), vec3<f32>(x_4187.x, x_4187.y, x_4187.z));
    let x_4190 : f32 = u_xlat82;
    u_xlat82 = max(x_4190, 1.17549435e-38f);
    let x_4192 : f32 = u_xlat82;
    u_xlat82 = inverseSqrt(x_4192);
    let x_4194 : f32 = u_xlat82;
    let x_4196 : vec4<f32> = u_xlat9;
    let x_4198 : vec3<f32> = (vec3<f32>(x_4194, x_4194, x_4194) * vec3<f32>(x_4196.x, x_4196.y, x_4196.z));
    let x_4199 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4198.x, x_4198.y, x_4198.z, x_4199.w);
    let x_4201 : vec4<f32> = u_xlat3;
    let x_4203 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_4201.x, x_4201.y, x_4201.z), vec3<f32>(x_4203.x, x_4203.y, x_4203.z));
    let x_4206 : f32 = u_xlat82;
    u_xlat82 = clamp(x_4206, 0.0f, 1.0f);
    let x_4208 : vec4<f32> = u_xlat10;
    let x_4210 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_4208.x, x_4208.y, x_4208.z), vec3<f32>(x_4210.x, x_4210.y, x_4210.z));
    let x_4213 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4213, 0.0f, 1.0f);
    let x_4215 : f32 = u_xlat82;
    let x_4216 : f32 = u_xlat82;
    u_xlat82 = (x_4215 * x_4216);
    let x_4218 : f32 = u_xlat82;
    let x_4220 : f32 = u_xlat0.x;
    u_xlat82 = ((x_4218 * x_4220) + 1.00001001358032226562f);
    let x_4223 : f32 = u_xlat83;
    let x_4224 : f32 = u_xlat83;
    u_xlat83 = (x_4223 * x_4224);
    let x_4226 : f32 = u_xlat82;
    let x_4227 : f32 = u_xlat82;
    u_xlat82 = (x_4226 * x_4227);
    let x_4229 : f32 = u_xlat83;
    u_xlat83 = max(x_4229, 0.10000000149011611938f);
    let x_4231 : f32 = u_xlat82;
    let x_4232 : f32 = u_xlat83;
    u_xlat82 = (x_4231 * x_4232);
    let x_4234 : f32 = u_xlat80;
    let x_4235 : f32 = u_xlat82;
    u_xlat82 = (x_4234 * x_4235);
    let x_4238 : f32 = u_xlat1.x;
    let x_4239 : f32 = u_xlat82;
    u_xlat82 = (x_4238 / x_4239);
    let x_4241 : vec3<f32> = u_xlat2;
    let x_4242 : f32 = u_xlat82;
    let x_4245 : vec3<f32> = u_xlat5;
    let x_4246 : vec3<f32> = ((x_4241 * vec3<f32>(x_4242, x_4242, x_4242)) + x_4245);
    let x_4247 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4246.x, x_4246.y, x_4246.z, x_4247.w);
    let x_4249 : vec4<f32> = u_xlat9;
    let x_4251 : vec4<f32> = u_xlat11;
    let x_4254 : vec4<f32> = u_xlat8;
    let x_4256 : vec3<f32> = ((vec3<f32>(x_4249.x, x_4249.y, x_4249.z) * vec3<f32>(x_4251.x, x_4251.y, x_4251.z)) + vec3<f32>(x_4254.x, x_4254.y, x_4254.z));
    let x_4257 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4256.x, x_4256.y, x_4256.z, x_4257.w);

    continuing {
      let x_4259 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4259 + bitcast<u32>(1i));
    }
  }
  let x_4261 : vec3<f32> = u_xlat27;
  let x_4262 : f32 = u_xlat78;
  let x_4265 : vec4<f32> = u_xlat6;
  let x_4267 : vec3<f32> = ((x_4261 * vec3<f32>(x_4262, x_4262, x_4262)) + vec3<f32>(x_4265.x, x_4265.y, x_4265.z));
  let x_4268 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4267.x, x_4267.y, x_4267.z, x_4268.w);
  let x_4272 : vec4<f32> = u_xlat8;
  let x_4274 : vec4<f32> = u_xlat0;
  let x_4276 : vec3<f32> = (vec3<f32>(x_4272.x, x_4272.y, x_4272.z) + vec3<f32>(x_4274.x, x_4274.y, x_4274.z));
  let x_4277 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4276.x, x_4276.y, x_4276.z, x_4277.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_INTERP5_param : vec4<f32>, @location(1) vs_INTERP4_param : vec4<f32>, @location(4) vs_INTERP8_param : vec3<f32>, @location(3) vs_INTERP7_param : vec3<f32>, @location(0) vs_INTERP3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP7 = vs_INTERP7_param;
  vs_INTERP3 = vs_INTERP3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


