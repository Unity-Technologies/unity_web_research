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

@group(1) @binding(2) var<uniform> x_270 : UnityPerDraw;

var<private> u_xlat27 : vec3<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> u_xlatb26 : bool;

var<private> vs_INTERP7 : vec3<f32>;

var<private> u_xlat52 : f32;

@group(1) @binding(3) var<uniform> x_422 : LightShadows;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlatb5 : vec4<bool>;

var<private> u_xlatu26 : u32;

var<private> u_xlati26 : i32;

var<private> u_xlat80 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlatb81 : bool;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat81 : f32;

var<private> u_xlatb82 : bool;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat82 : f32;

var<private> u_xlat83 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat35 : vec2<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlatb53 : bool;

var<private> u_xlatb79 : bool;

var<private> u_xlat79 : f32;

@group(1) @binding(4) var<uniform> x_2004 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb8 : vec2<bool>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu81 : u32;

var<private> u_xlati82 : i32;

var<private> u_xlati81 : i32;

@group(1) @binding(1) var<uniform> x_2498 : AdditionalLights;

var<private> u_xlati84 : i32;

var<private> u_xlatb85 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat86 : f32;

var<private> u_xlat85 : f32;

var<private> u_xlatb84 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat87 : f32;

var<private> u_xlat39 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat40 : vec2<f32>;

var<private> u_xlat72 : vec2<f32>;

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

var<private> u_xlatu79 : u32;

fn main_1() {
  var x_379 : f32;
  var x_391 : f32;
  var x_403 : f32;
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
  var x_1958 : f32;
  var x_2087 : f32;
  var x_2098 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2632 : f32;
  var x_2642 : f32;
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
  var x_4216 : f32;
  var x_4229 : f32;
  var x_4277 : f32;
  var x_4288 : vec3<f32>;
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
  let x_112 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_110.x, x_110.y, x_110.z) * x_112);
  let x_114 : vec3<f32> = u_xlat2;
  let x_115 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_114 + x_115);
  let x_123 : vec4<f32> = u_xlat0;
  let x_126 : vec4<bool> = (vec4<f32>(0.5f, 0.5f, 0.5f, 0.0f) >= vec4<f32>(x_123.x, x_123.y, x_123.z, x_123.x));
  u_xlatb4 = vec3<bool>(x_126.x, x_126.y, x_126.z);
  let x_131 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_131);
  let x_136 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_136);
  let x_140 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_140);
  let x_144 : bool = u_xlatb4.x;
  u_xlat4.x = select(1.0f, 0.0f, x_144);
  let x_148 : bool = u_xlatb4.y;
  u_xlat4.y = select(1.0f, 0.0f, x_148);
  let x_152 : bool = u_xlatb4.z;
  u_xlat4.z = select(1.0f, 0.0f, x_152);
  let x_155 : vec4<f32> = u_xlat3;
  let x_157 : vec3<f32> = u_xlat4;
  let x_158 : vec3<f32> = (vec3<f32>(x_155.x, x_155.y, x_155.z) * x_157);
  let x_159 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_158.x, x_158.y, x_158.z, x_159.w);
  let x_161 : vec3<f32> = u_xlat2;
  let x_162 : vec3<f32> = u_xlat5;
  let x_164 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_161 * x_162) + vec3<f32>(x_164.x, x_164.y, x_164.z));
  let x_167 : vec4<f32> = u_xlat0;
  let x_170 : vec3<f32> = u_xlat2;
  u_xlat2 = (-(vec3<f32>(x_167.x, x_167.y, x_167.z)) + x_170);
  let x_172 : f32 = u_xlat53;
  let x_174 : vec3<f32> = u_xlat2;
  let x_176 : vec4<f32> = u_xlat0;
  u_xlat2 = ((vec3<f32>(x_172, x_172, x_172) * x_174) + vec3<f32>(x_176.x, x_176.y, x_176.z));
  let x_180 : f32 = u_xlat0.x;
  u_xlat0.x = (x_180 + -0.15000000596046447754f);
  let x_185 : f32 = u_xlat0.x;
  u_xlat0.x = ceil(x_185);
  let x_189 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_189) + 1.0f);
  let x_193 : vec4<f32> = u_xlat0;
  let x_198 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_193.x, x_193.x, x_193.x) * vec3<f32>(0.40000000596046447754f, 0.40000000596046447754f, 0.40000000596046447754f)) + x_198);
  let x_204 : vec4<f32> = vs_INTERP5;
  let x_207 : f32 = x_29.x_GlobalMipBias.x;
  let x_208 : vec4<f32> = textureSampleBias(x_BumpMap, samplerSamplerState_Trilinear_Clamp, vec2<f32>(x_204.x, x_204.y), x_207);
  let x_209 : vec3<f32> = vec3<f32>(x_208.x, x_208.y, x_208.w);
  let x_210 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_209.x, x_209.y, x_209.z, x_210.w);
  let x_213 : f32 = u_xlat3.x;
  let x_215 : f32 = u_xlat3.z;
  u_xlat3.x = (x_213 * x_215);
  let x_220 : vec4<f32> = u_xlat3;
  u_xlat26 = ((vec2<f32>(x_220.x, x_220.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_228 : vec2<f32> = u_xlat26;
  let x_229 : vec2<f32> = u_xlat26;
  u_xlat53 = dot(x_228, x_229);
  let x_231 : f32 = u_xlat53;
  u_xlat53 = min(x_231, 1.0f);
  let x_233 : f32 = u_xlat53;
  u_xlat53 = (-(x_233) + 1.0f);
  let x_236 : f32 = u_xlat53;
  u_xlat53 = sqrt(x_236);
  let x_238 : f32 = u_xlat53;
  u_xlat53 = max(x_238, 0.0000000000000001f);
  let x_242 : f32 = u_xlat1.x;
  let x_244 : f32 = u_xlat0.x;
  u_xlat0.x = (x_242 + x_244);
  let x_248 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_248, 0.0f, 1.0f);
  let x_252 : f32 = u_xlat1.y;
  u_xlat1.x = max(x_252, 0.0f);
  let x_256 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_256, 0.85000002384185791016f);
  let x_264 : f32 = vs_INTERP4.w;
  u_xlatb27.x = (0.0f < x_264);
  let x_272 : f32 = x_270.unity_WorldTransformParams.w;
  u_xlatb27.z = (x_272 >= 0.0f);
  let x_277 : bool = u_xlatb27.x;
  u_xlat27.x = select(-1.0f, 1.0f, x_277);
  let x_281 : bool = u_xlatb27.z;
  u_xlat27.z = select(-1.0f, 1.0f, x_281);
  let x_285 : f32 = u_xlat27.z;
  let x_287 : f32 = u_xlat27.x;
  u_xlat27.x = (x_285 * x_287);
  let x_290 : vec4<f32> = vs_INTERP4;
  let x_294 : vec3<f32> = vs_INTERP8;
  let x_296 : vec3<f32> = (vec3<f32>(x_290.y, x_290.z, x_290.x) * vec3<f32>(x_294.z, x_294.x, x_294.y));
  let x_297 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_296.x, x_296.y, x_296.z, x_297.w);
  let x_299 : vec3<f32> = vs_INTERP8;
  let x_301 : vec4<f32> = vs_INTERP4;
  let x_304 : vec4<f32> = u_xlat3;
  let x_307 : vec3<f32> = ((vec3<f32>(x_299.y, x_299.z, x_299.x) * vec3<f32>(x_301.z, x_301.x, x_301.y)) + -(vec3<f32>(x_304.x, x_304.y, x_304.z)));
  let x_308 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_307.x, x_307.y, x_307.z, x_308.w);
  let x_310 : vec3<f32> = u_xlat27;
  let x_312 : vec4<f32> = u_xlat3;
  let x_314 : vec3<f32> = (vec3<f32>(x_310.x, x_310.x, x_310.x) * vec3<f32>(x_312.x, x_312.y, x_312.z));
  let x_315 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
  let x_317 : vec2<f32> = u_xlat26;
  let x_319 : vec4<f32> = u_xlat3;
  let x_321 : vec3<f32> = (vec3<f32>(x_317.y, x_317.y, x_317.y) * vec3<f32>(x_319.x, x_319.y, x_319.z));
  let x_322 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_324 : vec2<f32> = u_xlat26;
  let x_326 : vec4<f32> = vs_INTERP4;
  let x_329 : vec4<f32> = u_xlat3;
  let x_331 : vec3<f32> = ((vec3<f32>(x_324.x, x_324.x, x_324.x) * vec3<f32>(x_326.x, x_326.y, x_326.z)) + vec3<f32>(x_329.x, x_329.y, x_329.z));
  let x_332 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_334 : f32 = u_xlat53;
  let x_336 : vec3<f32> = vs_INTERP8;
  let x_338 : vec4<f32> = u_xlat3;
  u_xlat27 = ((vec3<f32>(x_334, x_334, x_334) * x_336) + vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : vec3<f32> = u_xlat27;
  let x_342 : vec3<f32> = u_xlat27;
  u_xlat26.x = dot(x_341, x_342);
  let x_346 : f32 = u_xlat26.x;
  u_xlat26.x = inverseSqrt(x_346);
  let x_349 : vec2<f32> = u_xlat26;
  let x_351 : vec3<f32> = u_xlat27;
  let x_352 : vec3<f32> = (vec3<f32>(x_349.x, x_349.x, x_349.x) * x_351);
  let x_353 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_358 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb26 = (x_358 == 0.0f);
  let x_361 : vec3<f32> = vs_INTERP7;
  let x_365 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat27 = (-(x_361) + x_365);
  let x_368 : vec3<f32> = u_xlat27;
  let x_369 : vec3<f32> = u_xlat27;
  u_xlat52 = dot(x_368, x_369);
  let x_371 : f32 = u_xlat52;
  u_xlat52 = inverseSqrt(x_371);
  let x_373 : f32 = u_xlat52;
  let x_375 : vec3<f32> = u_xlat27;
  u_xlat27 = (vec3<f32>(x_373, x_373, x_373) * x_375);
  let x_377 : bool = u_xlatb26;
  if (x_377) {
    let x_383 : f32 = u_xlat27.x;
    x_379 = x_383;
  } else {
    let x_387 : f32 = x_29.unity_MatrixV[0i].z;
    x_379 = x_387;
  }
  let x_388 : f32 = x_379;
  u_xlat4.x = x_388;
  let x_390 : bool = u_xlatb26;
  if (x_390) {
    let x_395 : f32 = u_xlat27.y;
    x_391 = x_395;
  } else {
    let x_399 : f32 = x_29.unity_MatrixV[1i].z;
    x_391 = x_399;
  }
  let x_400 : f32 = x_391;
  u_xlat4.y = x_400;
  let x_402 : bool = u_xlatb26;
  if (x_402) {
    let x_407 : f32 = u_xlat27.z;
    x_403 = x_407;
  } else {
    let x_411 : f32 = x_29.unity_MatrixV[2i].z;
    x_403 = x_411;
  }
  let x_412 : f32 = x_403;
  u_xlat4.z = x_412;
  let x_414 : vec3<f32> = vs_INTERP7;
  let x_424 : vec4<f32> = x_422.x_CascadeShadowSplitSpheres0;
  u_xlat27 = (x_414 + -(vec3<f32>(x_424.x, x_424.y, x_424.z)));
  let x_428 : vec3<f32> = vs_INTERP7;
  let x_430 : vec4<f32> = x_422.x_CascadeShadowSplitSpheres1;
  u_xlat5 = (x_428 + -(vec3<f32>(x_430.x, x_430.y, x_430.z)));
  let x_435 : vec3<f32> = vs_INTERP7;
  let x_437 : vec4<f32> = x_422.x_CascadeShadowSplitSpheres2;
  let x_440 : vec3<f32> = (x_435 + -(vec3<f32>(x_437.x, x_437.y, x_437.z)));
  let x_441 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_440.x, x_440.y, x_440.z, x_441.w);
  let x_444 : vec3<f32> = vs_INTERP7;
  let x_446 : vec4<f32> = x_422.x_CascadeShadowSplitSpheres3;
  let x_449 : vec3<f32> = (x_444 + -(vec3<f32>(x_446.x, x_446.y, x_446.z)));
  let x_450 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_449.x, x_449.y, x_449.z, x_450.w);
  let x_453 : vec3<f32> = u_xlat27;
  let x_454 : vec3<f32> = u_xlat27;
  u_xlat8.x = dot(x_453, x_454);
  let x_457 : vec3<f32> = u_xlat5;
  let x_458 : vec3<f32> = u_xlat5;
  u_xlat8.y = dot(x_457, x_458);
  let x_461 : vec4<f32> = u_xlat6;
  let x_463 : vec4<f32> = u_xlat6;
  u_xlat8.z = dot(vec3<f32>(x_461.x, x_461.y, x_461.z), vec3<f32>(x_463.x, x_463.y, x_463.z));
  let x_467 : vec4<f32> = u_xlat7;
  let x_469 : vec4<f32> = u_xlat7;
  u_xlat8.w = dot(vec3<f32>(x_467.x, x_467.y, x_467.z), vec3<f32>(x_469.x, x_469.y, x_469.z));
  let x_475 : vec4<f32> = u_xlat8;
  let x_477 : vec4<f32> = x_422.x_CascadeShadowSplitSphereRadii;
  u_xlatb5 = (x_475 < x_477);
  let x_480 : bool = u_xlatb5.x;
  u_xlat6.x = select(0.0f, 1.0f, x_480);
  let x_484 : bool = u_xlatb5.y;
  u_xlat6.y = select(0.0f, 1.0f, x_484);
  let x_488 : bool = u_xlatb5.z;
  u_xlat6.z = select(0.0f, 1.0f, x_488);
  let x_492 : bool = u_xlatb5.w;
  u_xlat6.w = select(0.0f, 1.0f, x_492);
  let x_496 : bool = u_xlatb5.x;
  u_xlat27.x = select(-0.0f, -1.0f, x_496);
  let x_501 : bool = u_xlatb5.y;
  u_xlat27.y = select(-0.0f, -1.0f, x_501);
  let x_505 : bool = u_xlatb5.z;
  u_xlat27.z = select(-0.0f, -1.0f, x_505);
  let x_508 : vec3<f32> = u_xlat27;
  let x_509 : vec4<f32> = u_xlat6;
  u_xlat27 = (x_508 + vec3<f32>(x_509.y, x_509.z, x_509.w));
  let x_512 : vec3<f32> = u_xlat27;
  let x_514 : vec3<f32> = max(x_512, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_515 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_515.x, x_514.x, x_514.y, x_514.z);
  let x_517 : vec4<f32> = u_xlat6;
  u_xlat26.x = dot(x_517, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_524 : f32 = u_xlat26.x;
  u_xlat26.x = (-(x_524) + 4.0f);
  let x_531 : f32 = u_xlat26.x;
  u_xlatu26 = u32(x_531);
  let x_535 : u32 = u_xlatu26;
  u_xlati26 = (bitcast<i32>(x_535) << bitcast<u32>(2i));
  let x_538 : vec3<f32> = vs_INTERP7;
  let x_540 : i32 = u_xlati26;
  let x_543 : i32 = u_xlati26;
  let x_547 : vec4<f32> = x_422.x_MainLightWorldToShadow[((x_540 + 1i) / 4i)][((x_543 + 1i) % 4i)];
  u_xlat27 = (vec3<f32>(x_538.y, x_538.y, x_538.y) * vec3<f32>(x_547.x, x_547.y, x_547.z));
  let x_550 : i32 = u_xlati26;
  let x_552 : i32 = u_xlati26;
  let x_555 : vec4<f32> = x_422.x_MainLightWorldToShadow[(x_550 / 4i)][(x_552 % 4i)];
  let x_557 : vec3<f32> = vs_INTERP7;
  let x_560 : vec3<f32> = u_xlat27;
  u_xlat27 = ((vec3<f32>(x_555.x, x_555.y, x_555.z) * vec3<f32>(x_557.x, x_557.x, x_557.x)) + x_560);
  let x_562 : i32 = u_xlati26;
  let x_565 : i32 = u_xlati26;
  let x_569 : vec4<f32> = x_422.x_MainLightWorldToShadow[((x_562 + 2i) / 4i)][((x_565 + 2i) % 4i)];
  let x_571 : vec3<f32> = vs_INTERP7;
  let x_574 : vec3<f32> = u_xlat27;
  u_xlat27 = ((vec3<f32>(x_569.x, x_569.y, x_569.z) * vec3<f32>(x_571.z, x_571.z, x_571.z)) + x_574);
  let x_576 : vec3<f32> = u_xlat27;
  let x_577 : i32 = u_xlati26;
  let x_580 : i32 = u_xlati26;
  let x_584 : vec4<f32> = x_422.x_MainLightWorldToShadow[((x_577 + 3i) / 4i)][((x_580 + 3i) % 4i)];
  u_xlat27 = (x_576 + vec3<f32>(x_584.x, x_584.y, x_584.z));
  u_xlat3.w = 1.0f;
  let x_590 : vec4<f32> = x_270.unity_SHAr;
  let x_591 : vec4<f32> = u_xlat3;
  u_xlat5.x = dot(x_590, x_591);
  let x_596 : vec4<f32> = x_270.unity_SHAg;
  let x_597 : vec4<f32> = u_xlat3;
  u_xlat5.y = dot(x_596, x_597);
  let x_602 : vec4<f32> = x_270.unity_SHAb;
  let x_603 : vec4<f32> = u_xlat3;
  u_xlat5.z = dot(x_602, x_603);
  let x_606 : vec4<f32> = u_xlat3;
  let x_608 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec4<f32>(x_606.y, x_606.z, x_606.z, x_606.x) * vec4<f32>(x_608.x, x_608.y, x_608.z, x_608.z));
  let x_613 : vec4<f32> = x_270.unity_SHBr;
  let x_614 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_613, x_614);
  let x_619 : vec4<f32> = x_270.unity_SHBg;
  let x_620 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_619, x_620);
  let x_625 : vec4<f32> = x_270.unity_SHBb;
  let x_626 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_625, x_626);
  let x_630 : f32 = u_xlat3.y;
  let x_632 : f32 = u_xlat3.y;
  u_xlat26.x = (x_630 * x_632);
  let x_636 : f32 = u_xlat3.x;
  let x_638 : f32 = u_xlat3.x;
  let x_641 : f32 = u_xlat26.x;
  u_xlat26.x = ((x_636 * x_638) + -(x_641));
  let x_647 : vec4<f32> = x_270.unity_SHC;
  let x_649 : vec2<f32> = u_xlat26;
  let x_652 : vec4<f32> = u_xlat7;
  let x_654 : vec3<f32> = ((vec3<f32>(x_647.x, x_647.y, x_647.z) * vec3<f32>(x_649.x, x_649.x, x_649.x)) + vec3<f32>(x_652.x, x_652.y, x_652.z));
  let x_655 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_654.x, x_654.y, x_654.z, x_655.w);
  let x_657 : vec3<f32> = u_xlat5;
  let x_658 : vec4<f32> = u_xlat6;
  u_xlat5 = (x_657 + vec3<f32>(x_658.x, x_658.y, x_658.z));
  let x_661 : vec3<f32> = u_xlat5;
  u_xlat5 = max(x_661, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_664 : f32 = u_xlat0.x;
  u_xlat26.x = ((-(x_664) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_671 : f32 = u_xlat26.x;
  u_xlat52 = (-(x_671) + 1.0f);
  let x_674 : vec2<f32> = u_xlat26;
  let x_676 : vec3<f32> = u_xlat2;
  let x_677 : vec3<f32> = (vec3<f32>(x_674.x, x_674.x, x_674.x) * x_676);
  let x_678 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_677.x, x_677.y, x_677.z, x_678.w);
  let x_680 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_680 + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_684 : vec4<f32> = u_xlat0;
  let x_686 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_684.x, x_684.x, x_684.x) * x_686) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_692 : f32 = u_xlat1.x;
  u_xlat0.x = (-(x_692) + 1.0f);
  let x_697 : f32 = u_xlat0.x;
  let x_699 : f32 = u_xlat0.x;
  u_xlat26.x = (x_697 * x_699);
  let x_704 : f32 = u_xlat26.x;
  let x_706 : f32 = u_xlat26.x;
  u_xlat80 = (x_704 * x_706);
  let x_708 : f32 = u_xlat52;
  let x_710 : f32 = u_xlat1.x;
  u_xlat52 = (x_708 + x_710);
  let x_712 : f32 = u_xlat52;
  u_xlat52 = min(x_712, 1.0f);
  let x_715 : f32 = u_xlat26.x;
  u_xlat1.x = ((x_715 * 4.0f) + 2.0f);
  let x_721 : f32 = u_xlat0.w;
  u_xlat78 = min(x_721, 1.0f);
  let x_726 : f32 = x_422.x_MainLightShadowParams.y;
  u_xlatb81 = (0.0f < x_726);
  let x_728 : bool = u_xlatb81;
  if (x_728) {
    let x_732 : f32 = x_422.x_MainLightShadowParams.y;
    u_xlatb81 = (x_732 == 1.0f);
    let x_734 : bool = u_xlatb81;
    if (x_734) {
      let x_737 : vec3<f32> = u_xlat27;
      let x_740 : vec4<f32> = x_422.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_737.x, x_737.y, x_737.x, x_737.y) + x_740);
      let x_744 : vec4<f32> = u_xlat7;
      let x_745 : vec2<f32> = vec2<f32>(x_744.x, x_744.y);
      let x_747 : f32 = u_xlat27.z;
      txVec0 = vec3<f32>(x_745.x, x_745.y, x_747);
      let x_759 : vec3<f32> = txVec0;
      let x_761 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_759.xy, x_759.z);
      u_xlat8.x = x_761;
      let x_764 : vec4<f32> = u_xlat7;
      let x_765 : vec2<f32> = vec2<f32>(x_764.z, x_764.w);
      let x_767 : f32 = u_xlat27.z;
      txVec1 = vec3<f32>(x_765.x, x_765.y, x_767);
      let x_774 : vec3<f32> = txVec1;
      let x_776 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_774.xy, x_774.z);
      u_xlat8.y = x_776;
      let x_778 : vec3<f32> = u_xlat27;
      let x_782 : vec4<f32> = x_422.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_778.x, x_778.y, x_778.x, x_778.y) + x_782);
      let x_785 : vec4<f32> = u_xlat7;
      let x_786 : vec2<f32> = vec2<f32>(x_785.x, x_785.y);
      let x_788 : f32 = u_xlat27.z;
      txVec2 = vec3<f32>(x_786.x, x_786.y, x_788);
      let x_795 : vec3<f32> = txVec2;
      let x_797 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_795.xy, x_795.z);
      u_xlat8.z = x_797;
      let x_800 : vec4<f32> = u_xlat7;
      let x_801 : vec2<f32> = vec2<f32>(x_800.z, x_800.w);
      let x_803 : f32 = u_xlat27.z;
      txVec3 = vec3<f32>(x_801.x, x_801.y, x_803);
      let x_810 : vec3<f32> = txVec3;
      let x_812 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_810.xy, x_810.z);
      u_xlat8.w = x_812;
      let x_815 : vec4<f32> = u_xlat8;
      u_xlat81 = dot(x_815, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_822 : f32 = x_422.x_MainLightShadowParams.y;
      u_xlatb82 = (x_822 == 2.0f);
      let x_824 : bool = u_xlatb82;
      if (x_824) {
        let x_827 : vec3<f32> = u_xlat27;
        let x_831 : vec4<f32> = x_422.x_MainLightShadowmapSize;
        let x_835 : vec2<f32> = ((vec2<f32>(x_827.x, x_827.y) * vec2<f32>(x_831.z, x_831.w)) + vec2<f32>(0.5f, 0.5f));
        let x_836 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_835.x, x_835.y, x_836.z, x_836.w);
        let x_838 : vec4<f32> = u_xlat7;
        let x_840 : vec2<f32> = floor(vec2<f32>(x_838.x, x_838.y));
        let x_841 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_840.x, x_840.y, x_841.z, x_841.w);
        let x_844 : vec3<f32> = u_xlat27;
        let x_847 : vec4<f32> = x_422.x_MainLightShadowmapSize;
        let x_850 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_844.x, x_844.y) * vec2<f32>(x_847.z, x_847.w)) + -(vec2<f32>(x_850.x, x_850.y)));
        let x_854 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_854.x, x_854.x, x_854.y, x_854.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_859 : vec4<f32> = u_xlat8;
        let x_861 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_859.x, x_859.x, x_859.z, x_859.z) * vec4<f32>(x_861.x, x_861.x, x_861.z, x_861.z));
        let x_864 : vec4<f32> = u_xlat9;
        let x_868 : vec2<f32> = (vec2<f32>(x_864.y, x_864.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_869 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_868.x, x_869.y, x_868.y, x_869.w);
        let x_871 : vec4<f32> = u_xlat9;
        let x_874 : vec2<f32> = u_xlat59;
        let x_876 : vec2<f32> = ((vec2<f32>(x_871.x, x_871.z) * vec2<f32>(0.5f, 0.5f)) + -(x_874));
        let x_877 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_876.x, x_876.y, x_877.z, x_877.w);
        let x_880 : vec2<f32> = u_xlat59;
        u_xlat61 = (-(x_880) + vec2<f32>(1.0f, 1.0f));
        let x_885 : vec2<f32> = u_xlat59;
        let x_887 : vec2<f32> = min(x_885, vec2<f32>(0.0f, 0.0f));
        let x_888 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_887.x, x_887.y, x_888.z, x_888.w);
        let x_890 : vec4<f32> = u_xlat10;
        let x_893 : vec4<f32> = u_xlat10;
        let x_896 : vec2<f32> = u_xlat61;
        let x_897 : vec2<f32> = ((-(vec2<f32>(x_890.x, x_890.y)) * vec2<f32>(x_893.x, x_893.y)) + x_896);
        let x_898 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_897.x, x_897.y, x_898.z, x_898.w);
        let x_900 : vec2<f32> = u_xlat59;
        u_xlat59 = max(x_900, vec2<f32>(0.0f, 0.0f));
        let x_902 : vec2<f32> = u_xlat59;
        let x_904 : vec2<f32> = u_xlat59;
        let x_906 : vec4<f32> = u_xlat8;
        u_xlat59 = ((-(x_902) * x_904) + vec2<f32>(x_906.y, x_906.w));
        let x_909 : vec4<f32> = u_xlat10;
        let x_911 : vec2<f32> = (vec2<f32>(x_909.x, x_909.y) + vec2<f32>(1.0f, 1.0f));
        let x_912 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_911.x, x_911.y, x_912.z, x_912.w);
        let x_914 : vec2<f32> = u_xlat59;
        u_xlat59 = (x_914 + vec2<f32>(1.0f, 1.0f));
        let x_917 : vec4<f32> = u_xlat9;
        let x_921 : vec2<f32> = (vec2<f32>(x_917.x, x_917.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_922 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_921.x, x_921.y, x_922.z, x_922.w);
        let x_924 : vec2<f32> = u_xlat61;
        let x_925 : vec2<f32> = (x_924 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_926 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_925.x, x_925.y, x_926.z, x_926.w);
        let x_928 : vec4<f32> = u_xlat10;
        let x_930 : vec2<f32> = (vec2<f32>(x_928.x, x_928.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_931 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_930.x, x_930.y, x_931.z, x_931.w);
        let x_934 : vec2<f32> = u_xlat59;
        let x_935 : vec2<f32> = (x_934 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_936 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_935.x, x_935.y, x_936.z, x_936.w);
        let x_938 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_938.y, x_938.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_942 : f32 = u_xlat10.x;
        u_xlat11.z = x_942;
        let x_945 : f32 = u_xlat59.x;
        u_xlat11.w = x_945;
        let x_948 : f32 = u_xlat12.x;
        u_xlat9.z = x_948;
        let x_951 : f32 = u_xlat8.x;
        u_xlat9.w = x_951;
        let x_954 : vec4<f32> = u_xlat9;
        let x_956 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_954.z, x_954.w, x_954.x, x_954.z) + vec4<f32>(x_956.z, x_956.w, x_956.x, x_956.z));
        let x_960 : f32 = u_xlat11.y;
        u_xlat10.z = x_960;
        let x_963 : f32 = u_xlat59.y;
        u_xlat10.w = x_963;
        let x_966 : f32 = u_xlat9.y;
        u_xlat12.z = x_966;
        let x_969 : f32 = u_xlat8.z;
        u_xlat12.w = x_969;
        let x_971 : vec4<f32> = u_xlat10;
        let x_973 : vec4<f32> = u_xlat12;
        let x_975 : vec3<f32> = (vec3<f32>(x_971.z, x_971.y, x_971.w) + vec3<f32>(x_973.z, x_973.y, x_973.w));
        let x_976 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_975.x, x_975.y, x_975.z, x_976.w);
        let x_978 : vec4<f32> = u_xlat9;
        let x_980 : vec4<f32> = u_xlat13;
        let x_982 : vec3<f32> = (vec3<f32>(x_978.x, x_978.z, x_978.w) / vec3<f32>(x_980.z, x_980.w, x_980.y));
        let x_983 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_982.x, x_982.y, x_982.z, x_983.w);
        let x_985 : vec4<f32> = u_xlat9;
        let x_991 : vec3<f32> = (vec3<f32>(x_985.x, x_985.y, x_985.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_992 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_991.x, x_991.y, x_991.z, x_992.w);
        let x_994 : vec4<f32> = u_xlat12;
        let x_996 : vec4<f32> = u_xlat8;
        let x_998 : vec3<f32> = (vec3<f32>(x_994.z, x_994.y, x_994.w) / vec3<f32>(x_996.x, x_996.y, x_996.z));
        let x_999 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_998.x, x_998.y, x_998.z, x_999.w);
        let x_1001 : vec4<f32> = u_xlat10;
        let x_1003 : vec3<f32> = (vec3<f32>(x_1001.x, x_1001.y, x_1001.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1004 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1003.x, x_1003.y, x_1003.z, x_1004.w);
        let x_1006 : vec4<f32> = u_xlat9;
        let x_1009 : vec4<f32> = x_422.x_MainLightShadowmapSize;
        let x_1011 : vec3<f32> = (vec3<f32>(x_1006.y, x_1006.x, x_1006.z) * vec3<f32>(x_1009.x, x_1009.x, x_1009.x));
        let x_1012 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1011.x, x_1011.y, x_1011.z, x_1012.w);
        let x_1014 : vec4<f32> = u_xlat10;
        let x_1017 : vec4<f32> = x_422.x_MainLightShadowmapSize;
        let x_1019 : vec3<f32> = (vec3<f32>(x_1014.x, x_1014.y, x_1014.z) * vec3<f32>(x_1017.y, x_1017.y, x_1017.y));
        let x_1020 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1019.x, x_1019.y, x_1019.z, x_1020.w);
        let x_1023 : f32 = u_xlat10.x;
        u_xlat9.w = x_1023;
        let x_1025 : vec4<f32> = u_xlat7;
        let x_1028 : vec4<f32> = x_422.x_MainLightShadowmapSize;
        let x_1031 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1025.x, x_1025.y, x_1025.x, x_1025.y) * vec4<f32>(x_1028.x, x_1028.y, x_1028.x, x_1028.y)) + vec4<f32>(x_1031.y, x_1031.w, x_1031.x, x_1031.w));
        let x_1034 : vec4<f32> = u_xlat7;
        let x_1037 : vec4<f32> = x_422.x_MainLightShadowmapSize;
        let x_1040 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_1034.x, x_1034.y) * vec2<f32>(x_1037.x, x_1037.y)) + vec2<f32>(x_1040.z, x_1040.w));
        let x_1044 : f32 = u_xlat9.y;
        u_xlat10.w = x_1044;
        let x_1046 : vec4<f32> = u_xlat10;
        let x_1047 : vec2<f32> = vec2<f32>(x_1046.y, x_1046.z);
        let x_1048 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1048.x, x_1047.x, x_1048.z, x_1047.y);
        let x_1050 : vec4<f32> = u_xlat7;
        let x_1053 : vec4<f32> = x_422.x_MainLightShadowmapSize;
        let x_1056 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1050.x, x_1050.y, x_1050.x, x_1050.y) * vec4<f32>(x_1053.x, x_1053.y, x_1053.x, x_1053.y)) + vec4<f32>(x_1056.x, x_1056.y, x_1056.z, x_1056.y));
        let x_1059 : vec4<f32> = u_xlat7;
        let x_1062 : vec4<f32> = x_422.x_MainLightShadowmapSize;
        let x_1065 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1059.x, x_1059.y, x_1059.x, x_1059.y) * vec4<f32>(x_1062.x, x_1062.y, x_1062.x, x_1062.y)) + vec4<f32>(x_1065.w, x_1065.y, x_1065.w, x_1065.z));
        let x_1068 : vec4<f32> = u_xlat7;
        let x_1071 : vec4<f32> = x_422.x_MainLightShadowmapSize;
        let x_1074 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1068.x, x_1068.y, x_1068.x, x_1068.y) * vec4<f32>(x_1071.x, x_1071.y, x_1071.x, x_1071.y)) + vec4<f32>(x_1074.x, x_1074.w, x_1074.z, x_1074.w));
        let x_1078 : vec4<f32> = u_xlat8;
        let x_1080 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1078.x, x_1078.x, x_1078.x, x_1078.y) * vec4<f32>(x_1080.z, x_1080.w, x_1080.y, x_1080.z));
        let x_1084 : vec4<f32> = u_xlat8;
        let x_1086 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1084.y, x_1084.y, x_1084.z, x_1084.z) * x_1086);
        let x_1090 : f32 = u_xlat8.z;
        let x_1092 : f32 = u_xlat13.y;
        u_xlat82 = (x_1090 * x_1092);
        let x_1095 : vec4<f32> = u_xlat11;
        let x_1096 : vec2<f32> = vec2<f32>(x_1095.x, x_1095.y);
        let x_1098 : f32 = u_xlat27.z;
        txVec4 = vec3<f32>(x_1096.x, x_1096.y, x_1098);
        let x_1106 : vec3<f32> = txVec4;
        let x_1108 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1106.xy, x_1106.z);
        u_xlat83 = x_1108;
        let x_1110 : vec4<f32> = u_xlat11;
        let x_1111 : vec2<f32> = vec2<f32>(x_1110.z, x_1110.w);
        let x_1113 : f32 = u_xlat27.z;
        txVec5 = vec3<f32>(x_1111.x, x_1111.y, x_1113);
        let x_1121 : vec3<f32> = txVec5;
        let x_1123 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1121.xy, x_1121.z);
        u_xlat84 = x_1123;
        let x_1124 : f32 = u_xlat84;
        let x_1126 : f32 = u_xlat14.y;
        u_xlat84 = (x_1124 * x_1126);
        let x_1129 : f32 = u_xlat14.x;
        let x_1130 : f32 = u_xlat83;
        let x_1132 : f32 = u_xlat84;
        u_xlat83 = ((x_1129 * x_1130) + x_1132);
        let x_1135 : vec2<f32> = u_xlat59;
        let x_1137 : f32 = u_xlat27.z;
        txVec6 = vec3<f32>(x_1135.x, x_1135.y, x_1137);
        let x_1144 : vec3<f32> = txVec6;
        let x_1146 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1144.xy, x_1144.z);
        u_xlat84 = x_1146;
        let x_1148 : f32 = u_xlat14.z;
        let x_1149 : f32 = u_xlat84;
        let x_1151 : f32 = u_xlat83;
        u_xlat83 = ((x_1148 * x_1149) + x_1151);
        let x_1154 : vec4<f32> = u_xlat10;
        let x_1155 : vec2<f32> = vec2<f32>(x_1154.x, x_1154.y);
        let x_1157 : f32 = u_xlat27.z;
        txVec7 = vec3<f32>(x_1155.x, x_1155.y, x_1157);
        let x_1164 : vec3<f32> = txVec7;
        let x_1166 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1164.xy, x_1164.z);
        u_xlat84 = x_1166;
        let x_1168 : f32 = u_xlat14.w;
        let x_1169 : f32 = u_xlat84;
        let x_1171 : f32 = u_xlat83;
        u_xlat83 = ((x_1168 * x_1169) + x_1171);
        let x_1174 : vec4<f32> = u_xlat12;
        let x_1175 : vec2<f32> = vec2<f32>(x_1174.x, x_1174.y);
        let x_1177 : f32 = u_xlat27.z;
        txVec8 = vec3<f32>(x_1175.x, x_1175.y, x_1177);
        let x_1184 : vec3<f32> = txVec8;
        let x_1186 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1184.xy, x_1184.z);
        u_xlat84 = x_1186;
        let x_1188 : f32 = u_xlat15.x;
        let x_1189 : f32 = u_xlat84;
        let x_1191 : f32 = u_xlat83;
        u_xlat83 = ((x_1188 * x_1189) + x_1191);
        let x_1194 : vec4<f32> = u_xlat12;
        let x_1195 : vec2<f32> = vec2<f32>(x_1194.z, x_1194.w);
        let x_1197 : f32 = u_xlat27.z;
        txVec9 = vec3<f32>(x_1195.x, x_1195.y, x_1197);
        let x_1204 : vec3<f32> = txVec9;
        let x_1206 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1204.xy, x_1204.z);
        u_xlat84 = x_1206;
        let x_1208 : f32 = u_xlat15.y;
        let x_1209 : f32 = u_xlat84;
        let x_1211 : f32 = u_xlat83;
        u_xlat83 = ((x_1208 * x_1209) + x_1211);
        let x_1214 : vec4<f32> = u_xlat10;
        let x_1215 : vec2<f32> = vec2<f32>(x_1214.z, x_1214.w);
        let x_1217 : f32 = u_xlat27.z;
        txVec10 = vec3<f32>(x_1215.x, x_1215.y, x_1217);
        let x_1224 : vec3<f32> = txVec10;
        let x_1226 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1224.xy, x_1224.z);
        u_xlat84 = x_1226;
        let x_1228 : f32 = u_xlat15.z;
        let x_1229 : f32 = u_xlat84;
        let x_1231 : f32 = u_xlat83;
        u_xlat83 = ((x_1228 * x_1229) + x_1231);
        let x_1234 : vec4<f32> = u_xlat9;
        let x_1235 : vec2<f32> = vec2<f32>(x_1234.x, x_1234.y);
        let x_1237 : f32 = u_xlat27.z;
        txVec11 = vec3<f32>(x_1235.x, x_1235.y, x_1237);
        let x_1244 : vec3<f32> = txVec11;
        let x_1246 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1244.xy, x_1244.z);
        u_xlat84 = x_1246;
        let x_1248 : f32 = u_xlat15.w;
        let x_1249 : f32 = u_xlat84;
        let x_1251 : f32 = u_xlat83;
        u_xlat83 = ((x_1248 * x_1249) + x_1251);
        let x_1254 : vec4<f32> = u_xlat9;
        let x_1255 : vec2<f32> = vec2<f32>(x_1254.z, x_1254.w);
        let x_1257 : f32 = u_xlat27.z;
        txVec12 = vec3<f32>(x_1255.x, x_1255.y, x_1257);
        let x_1264 : vec3<f32> = txVec12;
        let x_1266 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1264.xy, x_1264.z);
        u_xlat84 = x_1266;
        let x_1267 : f32 = u_xlat82;
        let x_1268 : f32 = u_xlat84;
        let x_1270 : f32 = u_xlat83;
        u_xlat81 = ((x_1267 * x_1268) + x_1270);
      } else {
        let x_1273 : vec3<f32> = u_xlat27;
        let x_1276 : vec4<f32> = x_422.x_MainLightShadowmapSize;
        let x_1279 : vec2<f32> = ((vec2<f32>(x_1273.x, x_1273.y) * vec2<f32>(x_1276.z, x_1276.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1280 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1279.x, x_1279.y, x_1280.z, x_1280.w);
        let x_1282 : vec4<f32> = u_xlat7;
        let x_1284 : vec2<f32> = floor(vec2<f32>(x_1282.x, x_1282.y));
        let x_1285 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1284.x, x_1284.y, x_1285.z, x_1285.w);
        let x_1287 : vec3<f32> = u_xlat27;
        let x_1290 : vec4<f32> = x_422.x_MainLightShadowmapSize;
        let x_1293 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1287.x, x_1287.y) * vec2<f32>(x_1290.z, x_1290.w)) + -(vec2<f32>(x_1293.x, x_1293.y)));
        let x_1297 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_1297.x, x_1297.x, x_1297.y, x_1297.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1300 : vec4<f32> = u_xlat8;
        let x_1302 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1300.x, x_1300.x, x_1300.z, x_1300.z) * vec4<f32>(x_1302.x, x_1302.x, x_1302.z, x_1302.z));
        let x_1305 : vec4<f32> = u_xlat9;
        let x_1309 : vec2<f32> = (vec2<f32>(x_1305.y, x_1305.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1310 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1310.x, x_1309.x, x_1310.z, x_1309.y);
        let x_1312 : vec4<f32> = u_xlat9;
        let x_1315 : vec2<f32> = u_xlat59;
        let x_1317 : vec2<f32> = ((vec2<f32>(x_1312.x, x_1312.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1315));
        let x_1318 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1317.x, x_1318.y, x_1317.y, x_1318.w);
        let x_1320 : vec2<f32> = u_xlat59;
        let x_1322 : vec2<f32> = (-(x_1320) + vec2<f32>(1.0f, 1.0f));
        let x_1323 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1322.x, x_1322.y, x_1323.z, x_1323.w);
        let x_1325 : vec2<f32> = u_xlat59;
        u_xlat61 = min(x_1325, vec2<f32>(0.0f, 0.0f));
        let x_1327 : vec2<f32> = u_xlat61;
        let x_1329 : vec2<f32> = u_xlat61;
        let x_1331 : vec4<f32> = u_xlat9;
        let x_1333 : vec2<f32> = ((-(x_1327) * x_1329) + vec2<f32>(x_1331.x, x_1331.y));
        let x_1334 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1333.x, x_1333.y, x_1334.z, x_1334.w);
        let x_1336 : vec2<f32> = u_xlat59;
        u_xlat61 = max(x_1336, vec2<f32>(0.0f, 0.0f));
        let x_1339 : vec2<f32> = u_xlat61;
        let x_1341 : vec2<f32> = u_xlat61;
        let x_1343 : vec4<f32> = u_xlat8;
        let x_1345 : vec2<f32> = ((-(x_1339) * x_1341) + vec2<f32>(x_1343.y, x_1343.w));
        let x_1346 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_1345.x, x_1346.y, x_1345.y);
        let x_1348 : vec4<f32> = u_xlat9;
        let x_1350 : vec2<f32> = (vec2<f32>(x_1348.x, x_1348.y) + vec2<f32>(2.0f, 2.0f));
        let x_1351 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1350.x, x_1350.y, x_1351.z, x_1351.w);
        let x_1353 : vec3<f32> = u_xlat34;
        let x_1355 : vec2<f32> = (vec2<f32>(x_1353.x, x_1353.z) + vec2<f32>(2.0f, 2.0f));
        let x_1356 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1356.x, x_1355.x, x_1356.z, x_1355.y);
        let x_1359 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1359 * 0.08163200318813323975f);
        let x_1363 : vec4<f32> = u_xlat8;
        let x_1366 : vec3<f32> = (vec3<f32>(x_1363.z, x_1363.x, x_1363.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1367 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1366.x, x_1366.y, x_1366.z, x_1367.w);
        let x_1369 : vec4<f32> = u_xlat9;
        let x_1372 : vec2<f32> = (vec2<f32>(x_1369.x, x_1369.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1373 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1372.x, x_1372.y, x_1373.z, x_1373.w);
        let x_1376 : f32 = u_xlat12.y;
        u_xlat11.x = x_1376;
        let x_1378 : vec2<f32> = u_xlat59;
        let x_1385 : vec2<f32> = ((vec2<f32>(x_1378.x, x_1378.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1386 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1386.x, x_1385.x, x_1386.z, x_1385.y);
        let x_1388 : vec2<f32> = u_xlat59;
        let x_1392 : vec2<f32> = ((vec2<f32>(x_1388.x, x_1388.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1393 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1392.x, x_1393.y, x_1392.y, x_1393.w);
        let x_1396 : f32 = u_xlat8.x;
        u_xlat9.y = x_1396;
        let x_1399 : f32 = u_xlat10.y;
        u_xlat9.w = x_1399;
        let x_1401 : vec4<f32> = u_xlat9;
        let x_1402 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1401 + x_1402);
        let x_1404 : vec2<f32> = u_xlat59;
        let x_1407 : vec2<f32> = ((vec2<f32>(x_1404.y, x_1404.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1408 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1408.x, x_1407.x, x_1408.z, x_1407.y);
        let x_1410 : vec2<f32> = u_xlat59;
        let x_1413 : vec2<f32> = ((vec2<f32>(x_1410.y, x_1410.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1414 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1413.x, x_1414.y, x_1413.y, x_1414.w);
        let x_1417 : f32 = u_xlat8.y;
        u_xlat10.y = x_1417;
        let x_1419 : vec4<f32> = u_xlat10;
        let x_1420 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1419 + x_1420);
        let x_1422 : vec4<f32> = u_xlat9;
        let x_1423 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1422 / x_1423);
        let x_1425 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1425 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1431 : vec4<f32> = u_xlat10;
        let x_1432 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1431 / x_1432);
        let x_1434 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1434 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1436 : vec4<f32> = u_xlat9;
        let x_1439 : vec4<f32> = x_422.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1436.w, x_1436.x, x_1436.y, x_1436.z) * vec4<f32>(x_1439.x, x_1439.x, x_1439.x, x_1439.x));
        let x_1442 : vec4<f32> = u_xlat10;
        let x_1445 : vec4<f32> = x_422.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1442.x, x_1442.w, x_1442.y, x_1442.z) * vec4<f32>(x_1445.y, x_1445.y, x_1445.y, x_1445.y));
        let x_1448 : vec4<f32> = u_xlat9;
        let x_1449 : vec3<f32> = vec3<f32>(x_1448.y, x_1448.z, x_1448.w);
        let x_1450 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1449.x, x_1450.y, x_1449.y, x_1449.z);
        let x_1453 : f32 = u_xlat10.x;
        u_xlat12.y = x_1453;
        let x_1455 : vec4<f32> = u_xlat7;
        let x_1458 : vec4<f32> = x_422.x_MainLightShadowmapSize;
        let x_1461 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1455.x, x_1455.y, x_1455.x, x_1455.y) * vec4<f32>(x_1458.x, x_1458.y, x_1458.x, x_1458.y)) + vec4<f32>(x_1461.x, x_1461.y, x_1461.z, x_1461.y));
        let x_1464 : vec4<f32> = u_xlat7;
        let x_1467 : vec4<f32> = x_422.x_MainLightShadowmapSize;
        let x_1470 : vec4<f32> = u_xlat12;
        u_xlat59 = ((vec2<f32>(x_1464.x, x_1464.y) * vec2<f32>(x_1467.x, x_1467.y)) + vec2<f32>(x_1470.w, x_1470.y));
        let x_1474 : f32 = u_xlat12.y;
        u_xlat9.y = x_1474;
        let x_1477 : f32 = u_xlat10.z;
        u_xlat12.y = x_1477;
        let x_1479 : vec4<f32> = u_xlat7;
        let x_1482 : vec4<f32> = x_422.x_MainLightShadowmapSize;
        let x_1485 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1479.x, x_1479.y, x_1479.x, x_1479.y) * vec4<f32>(x_1482.x, x_1482.y, x_1482.x, x_1482.y)) + vec4<f32>(x_1485.x, x_1485.y, x_1485.z, x_1485.y));
        let x_1488 : vec4<f32> = u_xlat7;
        let x_1491 : vec4<f32> = x_422.x_MainLightShadowmapSize;
        let x_1494 : vec4<f32> = u_xlat12;
        let x_1496 : vec2<f32> = ((vec2<f32>(x_1488.x, x_1488.y) * vec2<f32>(x_1491.x, x_1491.y)) + vec2<f32>(x_1494.w, x_1494.y));
        let x_1497 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1496.x, x_1496.y, x_1497.z, x_1497.w);
        let x_1500 : f32 = u_xlat12.y;
        u_xlat9.z = x_1500;
        let x_1503 : vec4<f32> = u_xlat7;
        let x_1506 : vec4<f32> = x_422.x_MainLightShadowmapSize;
        let x_1509 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1503.x, x_1503.y, x_1503.x, x_1503.y) * vec4<f32>(x_1506.x, x_1506.y, x_1506.x, x_1506.y)) + vec4<f32>(x_1509.x, x_1509.y, x_1509.x, x_1509.z));
        let x_1513 : f32 = u_xlat10.w;
        u_xlat12.y = x_1513;
        let x_1516 : vec4<f32> = u_xlat7;
        let x_1519 : vec4<f32> = x_422.x_MainLightShadowmapSize;
        let x_1522 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1516.x, x_1516.y, x_1516.x, x_1516.y) * vec4<f32>(x_1519.x, x_1519.y, x_1519.x, x_1519.y)) + vec4<f32>(x_1522.x, x_1522.y, x_1522.z, x_1522.y));
        let x_1526 : vec4<f32> = u_xlat7;
        let x_1529 : vec4<f32> = x_422.x_MainLightShadowmapSize;
        let x_1532 : vec4<f32> = u_xlat12;
        u_xlat35 = ((vec2<f32>(x_1526.x, x_1526.y) * vec2<f32>(x_1529.x, x_1529.y)) + vec2<f32>(x_1532.w, x_1532.y));
        let x_1536 : f32 = u_xlat12.y;
        u_xlat9.w = x_1536;
        let x_1539 : vec4<f32> = u_xlat7;
        let x_1542 : vec4<f32> = x_422.x_MainLightShadowmapSize;
        let x_1545 : vec4<f32> = u_xlat9;
        u_xlat67 = ((vec2<f32>(x_1539.x, x_1539.y) * vec2<f32>(x_1542.x, x_1542.y)) + vec2<f32>(x_1545.x, x_1545.w));
        let x_1548 : vec4<f32> = u_xlat12;
        let x_1549 : vec3<f32> = vec3<f32>(x_1548.x, x_1548.z, x_1548.w);
        let x_1550 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1549.x, x_1550.y, x_1549.y, x_1549.z);
        let x_1552 : vec4<f32> = u_xlat7;
        let x_1555 : vec4<f32> = x_422.x_MainLightShadowmapSize;
        let x_1558 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1552.x, x_1552.y, x_1552.x, x_1552.y) * vec4<f32>(x_1555.x, x_1555.y, x_1555.x, x_1555.y)) + vec4<f32>(x_1558.x, x_1558.y, x_1558.z, x_1558.y));
        let x_1562 : vec4<f32> = u_xlat7;
        let x_1565 : vec4<f32> = x_422.x_MainLightShadowmapSize;
        let x_1568 : vec4<f32> = u_xlat10;
        u_xlat62 = ((vec2<f32>(x_1562.x, x_1562.y) * vec2<f32>(x_1565.x, x_1565.y)) + vec2<f32>(x_1568.w, x_1568.y));
        let x_1572 : f32 = u_xlat9.x;
        u_xlat10.x = x_1572;
        let x_1574 : vec4<f32> = u_xlat7;
        let x_1577 : vec4<f32> = x_422.x_MainLightShadowmapSize;
        let x_1580 : vec4<f32> = u_xlat10;
        let x_1582 : vec2<f32> = ((vec2<f32>(x_1574.x, x_1574.y) * vec2<f32>(x_1577.x, x_1577.y)) + vec2<f32>(x_1580.x, x_1580.y));
        let x_1583 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1582.x, x_1582.y, x_1583.z, x_1583.w);
        let x_1586 : vec4<f32> = u_xlat8;
        let x_1588 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1586.x, x_1586.x, x_1586.x, x_1586.x) * x_1588);
        let x_1591 : vec4<f32> = u_xlat8;
        let x_1593 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1591.y, x_1591.y, x_1591.y, x_1591.y) * x_1593);
        let x_1596 : vec4<f32> = u_xlat8;
        let x_1598 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1596.z, x_1596.z, x_1596.z, x_1596.z) * x_1598);
        let x_1600 : vec4<f32> = u_xlat8;
        let x_1602 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1600.w, x_1600.w, x_1600.w, x_1600.w) * x_1602);
        let x_1605 : vec4<f32> = u_xlat13;
        let x_1606 : vec2<f32> = vec2<f32>(x_1605.x, x_1605.y);
        let x_1608 : f32 = u_xlat27.z;
        txVec13 = vec3<f32>(x_1606.x, x_1606.y, x_1608);
        let x_1615 : vec3<f32> = txVec13;
        let x_1617 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1615.xy, x_1615.z);
        u_xlat82 = x_1617;
        let x_1619 : vec4<f32> = u_xlat13;
        let x_1620 : vec2<f32> = vec2<f32>(x_1619.z, x_1619.w);
        let x_1622 : f32 = u_xlat27.z;
        txVec14 = vec3<f32>(x_1620.x, x_1620.y, x_1622);
        let x_1629 : vec3<f32> = txVec14;
        let x_1631 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1629.xy, x_1629.z);
        u_xlat83 = x_1631;
        let x_1632 : f32 = u_xlat83;
        let x_1634 : f32 = u_xlat18.y;
        u_xlat83 = (x_1632 * x_1634);
        let x_1637 : f32 = u_xlat18.x;
        let x_1638 : f32 = u_xlat82;
        let x_1640 : f32 = u_xlat83;
        u_xlat82 = ((x_1637 * x_1638) + x_1640);
        let x_1643 : vec2<f32> = u_xlat59;
        let x_1645 : f32 = u_xlat27.z;
        txVec15 = vec3<f32>(x_1643.x, x_1643.y, x_1645);
        let x_1652 : vec3<f32> = txVec15;
        let x_1654 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1652.xy, x_1652.z);
        u_xlat83 = x_1654;
        let x_1656 : f32 = u_xlat18.z;
        let x_1657 : f32 = u_xlat83;
        let x_1659 : f32 = u_xlat82;
        u_xlat82 = ((x_1656 * x_1657) + x_1659);
        let x_1662 : vec4<f32> = u_xlat16;
        let x_1663 : vec2<f32> = vec2<f32>(x_1662.x, x_1662.y);
        let x_1665 : f32 = u_xlat27.z;
        txVec16 = vec3<f32>(x_1663.x, x_1663.y, x_1665);
        let x_1672 : vec3<f32> = txVec16;
        let x_1674 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1672.xy, x_1672.z);
        u_xlat83 = x_1674;
        let x_1676 : f32 = u_xlat18.w;
        let x_1677 : f32 = u_xlat83;
        let x_1679 : f32 = u_xlat82;
        u_xlat82 = ((x_1676 * x_1677) + x_1679);
        let x_1682 : vec4<f32> = u_xlat14;
        let x_1683 : vec2<f32> = vec2<f32>(x_1682.x, x_1682.y);
        let x_1685 : f32 = u_xlat27.z;
        txVec17 = vec3<f32>(x_1683.x, x_1683.y, x_1685);
        let x_1692 : vec3<f32> = txVec17;
        let x_1694 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1692.xy, x_1692.z);
        u_xlat83 = x_1694;
        let x_1696 : f32 = u_xlat19.x;
        let x_1697 : f32 = u_xlat83;
        let x_1699 : f32 = u_xlat82;
        u_xlat82 = ((x_1696 * x_1697) + x_1699);
        let x_1702 : vec4<f32> = u_xlat14;
        let x_1703 : vec2<f32> = vec2<f32>(x_1702.z, x_1702.w);
        let x_1705 : f32 = u_xlat27.z;
        txVec18 = vec3<f32>(x_1703.x, x_1703.y, x_1705);
        let x_1712 : vec3<f32> = txVec18;
        let x_1714 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1712.xy, x_1712.z);
        u_xlat83 = x_1714;
        let x_1716 : f32 = u_xlat19.y;
        let x_1717 : f32 = u_xlat83;
        let x_1719 : f32 = u_xlat82;
        u_xlat82 = ((x_1716 * x_1717) + x_1719);
        let x_1722 : vec4<f32> = u_xlat15;
        let x_1723 : vec2<f32> = vec2<f32>(x_1722.x, x_1722.y);
        let x_1725 : f32 = u_xlat27.z;
        txVec19 = vec3<f32>(x_1723.x, x_1723.y, x_1725);
        let x_1732 : vec3<f32> = txVec19;
        let x_1734 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1732.xy, x_1732.z);
        u_xlat83 = x_1734;
        let x_1736 : f32 = u_xlat19.z;
        let x_1737 : f32 = u_xlat83;
        let x_1739 : f32 = u_xlat82;
        u_xlat82 = ((x_1736 * x_1737) + x_1739);
        let x_1742 : vec4<f32> = u_xlat16;
        let x_1743 : vec2<f32> = vec2<f32>(x_1742.z, x_1742.w);
        let x_1745 : f32 = u_xlat27.z;
        txVec20 = vec3<f32>(x_1743.x, x_1743.y, x_1745);
        let x_1752 : vec3<f32> = txVec20;
        let x_1754 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1752.xy, x_1752.z);
        u_xlat83 = x_1754;
        let x_1756 : f32 = u_xlat19.w;
        let x_1757 : f32 = u_xlat83;
        let x_1759 : f32 = u_xlat82;
        u_xlat82 = ((x_1756 * x_1757) + x_1759);
        let x_1762 : vec4<f32> = u_xlat17;
        let x_1763 : vec2<f32> = vec2<f32>(x_1762.x, x_1762.y);
        let x_1765 : f32 = u_xlat27.z;
        txVec21 = vec3<f32>(x_1763.x, x_1763.y, x_1765);
        let x_1772 : vec3<f32> = txVec21;
        let x_1774 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1772.xy, x_1772.z);
        u_xlat83 = x_1774;
        let x_1776 : f32 = u_xlat20.x;
        let x_1777 : f32 = u_xlat83;
        let x_1779 : f32 = u_xlat82;
        u_xlat82 = ((x_1776 * x_1777) + x_1779);
        let x_1782 : vec4<f32> = u_xlat17;
        let x_1783 : vec2<f32> = vec2<f32>(x_1782.z, x_1782.w);
        let x_1785 : f32 = u_xlat27.z;
        txVec22 = vec3<f32>(x_1783.x, x_1783.y, x_1785);
        let x_1792 : vec3<f32> = txVec22;
        let x_1794 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1792.xy, x_1792.z);
        u_xlat83 = x_1794;
        let x_1796 : f32 = u_xlat20.y;
        let x_1797 : f32 = u_xlat83;
        let x_1799 : f32 = u_xlat82;
        u_xlat82 = ((x_1796 * x_1797) + x_1799);
        let x_1802 : vec2<f32> = u_xlat35;
        let x_1804 : f32 = u_xlat27.z;
        txVec23 = vec3<f32>(x_1802.x, x_1802.y, x_1804);
        let x_1811 : vec3<f32> = txVec23;
        let x_1813 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1811.xy, x_1811.z);
        u_xlat83 = x_1813;
        let x_1815 : f32 = u_xlat20.z;
        let x_1816 : f32 = u_xlat83;
        let x_1818 : f32 = u_xlat82;
        u_xlat82 = ((x_1815 * x_1816) + x_1818);
        let x_1821 : vec2<f32> = u_xlat67;
        let x_1823 : f32 = u_xlat27.z;
        txVec24 = vec3<f32>(x_1821.x, x_1821.y, x_1823);
        let x_1830 : vec3<f32> = txVec24;
        let x_1832 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1830.xy, x_1830.z);
        u_xlat83 = x_1832;
        let x_1834 : f32 = u_xlat20.w;
        let x_1835 : f32 = u_xlat83;
        let x_1837 : f32 = u_xlat82;
        u_xlat82 = ((x_1834 * x_1835) + x_1837);
        let x_1840 : vec4<f32> = u_xlat12;
        let x_1841 : vec2<f32> = vec2<f32>(x_1840.x, x_1840.y);
        let x_1843 : f32 = u_xlat27.z;
        txVec25 = vec3<f32>(x_1841.x, x_1841.y, x_1843);
        let x_1850 : vec3<f32> = txVec25;
        let x_1852 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1850.xy, x_1850.z);
        u_xlat83 = x_1852;
        let x_1854 : f32 = u_xlat8.x;
        let x_1855 : f32 = u_xlat83;
        let x_1857 : f32 = u_xlat82;
        u_xlat82 = ((x_1854 * x_1855) + x_1857);
        let x_1860 : vec4<f32> = u_xlat12;
        let x_1861 : vec2<f32> = vec2<f32>(x_1860.z, x_1860.w);
        let x_1863 : f32 = u_xlat27.z;
        txVec26 = vec3<f32>(x_1861.x, x_1861.y, x_1863);
        let x_1870 : vec3<f32> = txVec26;
        let x_1872 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1870.xy, x_1870.z);
        u_xlat83 = x_1872;
        let x_1874 : f32 = u_xlat8.y;
        let x_1875 : f32 = u_xlat83;
        let x_1877 : f32 = u_xlat82;
        u_xlat82 = ((x_1874 * x_1875) + x_1877);
        let x_1880 : vec2<f32> = u_xlat62;
        let x_1882 : f32 = u_xlat27.z;
        txVec27 = vec3<f32>(x_1880.x, x_1880.y, x_1882);
        let x_1889 : vec3<f32> = txVec27;
        let x_1891 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1889.xy, x_1889.z);
        u_xlat83 = x_1891;
        let x_1893 : f32 = u_xlat8.z;
        let x_1894 : f32 = u_xlat83;
        let x_1896 : f32 = u_xlat82;
        u_xlat82 = ((x_1893 * x_1894) + x_1896);
        let x_1899 : vec4<f32> = u_xlat7;
        let x_1900 : vec2<f32> = vec2<f32>(x_1899.x, x_1899.y);
        let x_1902 : f32 = u_xlat27.z;
        txVec28 = vec3<f32>(x_1900.x, x_1900.y, x_1902);
        let x_1909 : vec3<f32> = txVec28;
        let x_1911 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1909.xy, x_1909.z);
        u_xlat83 = x_1911;
        let x_1913 : f32 = u_xlat8.w;
        let x_1914 : f32 = u_xlat83;
        let x_1916 : f32 = u_xlat82;
        u_xlat81 = ((x_1913 * x_1914) + x_1916);
      }
    }
  } else {
    let x_1920 : vec3<f32> = u_xlat27;
    let x_1921 : vec2<f32> = vec2<f32>(x_1920.x, x_1920.y);
    let x_1923 : f32 = u_xlat27.z;
    txVec29 = vec3<f32>(x_1921.x, x_1921.y, x_1923);
    let x_1930 : vec3<f32> = txVec29;
    let x_1932 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1930.xy, x_1930.z);
    u_xlat81 = x_1932;
  }
  let x_1934 : f32 = x_422.x_MainLightShadowParams.x;
  u_xlat27.x = (-(x_1934) + 1.0f);
  let x_1938 : f32 = u_xlat81;
  let x_1940 : f32 = x_422.x_MainLightShadowParams.x;
  let x_1943 : f32 = u_xlat27.x;
  u_xlat27.x = ((x_1938 * x_1940) + x_1943);
  let x_1948 : f32 = u_xlat27.z;
  u_xlatb53 = (0.0f >= x_1948);
  let x_1952 : f32 = u_xlat27.z;
  u_xlatb79 = (x_1952 >= 1.0f);
  let x_1954 : bool = u_xlatb79;
  let x_1955 : bool = u_xlatb53;
  u_xlatb53 = (x_1954 | x_1955);
  let x_1957 : bool = u_xlatb53;
  if (x_1957) {
    x_1958 = 1.0f;
  } else {
    let x_1963 : f32 = u_xlat27.x;
    x_1958 = x_1963;
  }
  let x_1964 : f32 = x_1958;
  u_xlat27.x = x_1964;
  let x_1966 : vec3<f32> = vs_INTERP7;
  let x_1968 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_1970 : vec3<f32> = (x_1966 + -(x_1968));
  let x_1971 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1970.x, x_1970.y, x_1970.z, x_1971.w);
  let x_1973 : vec4<f32> = u_xlat7;
  let x_1975 : vec4<f32> = u_xlat7;
  u_xlat53 = dot(vec3<f32>(x_1973.x, x_1973.y, x_1973.z), vec3<f32>(x_1975.x, x_1975.y, x_1975.z));
  let x_1979 : f32 = u_xlat53;
  let x_1981 : f32 = x_422.x_MainLightShadowParams.z;
  let x_1984 : f32 = x_422.x_MainLightShadowParams.w;
  u_xlat79 = ((x_1979 * x_1981) + x_1984);
  let x_1986 : f32 = u_xlat79;
  u_xlat79 = clamp(x_1986, 0.0f, 1.0f);
  let x_1989 : f32 = u_xlat27.x;
  u_xlat81 = (-(x_1989) + 1.0f);
  let x_1992 : f32 = u_xlat79;
  let x_1993 : f32 = u_xlat81;
  let x_1996 : f32 = u_xlat27.x;
  u_xlat27.x = ((x_1992 * x_1993) + x_1996);
  let x_2006 : f32 = x_2004.x_MainLightCookieTextureFormat;
  u_xlatb79 = !((x_2006 == -1.0f));
  let x_2008 : bool = u_xlatb79;
  if (x_2008) {
    let x_2011 : vec3<f32> = vs_INTERP7;
    let x_2014 : vec4<f32> = x_2004.x_MainLightWorldToLight[1i];
    let x_2016 : vec2<f32> = (vec2<f32>(x_2011.y, x_2011.y) * vec2<f32>(x_2014.x, x_2014.y));
    let x_2017 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2016.x, x_2016.y, x_2017.z, x_2017.w);
    let x_2020 : vec4<f32> = x_2004.x_MainLightWorldToLight[0i];
    let x_2022 : vec3<f32> = vs_INTERP7;
    let x_2025 : vec4<f32> = u_xlat7;
    let x_2027 : vec2<f32> = ((vec2<f32>(x_2020.x, x_2020.y) * vec2<f32>(x_2022.x, x_2022.x)) + vec2<f32>(x_2025.x, x_2025.y));
    let x_2028 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2027.x, x_2027.y, x_2028.z, x_2028.w);
    let x_2031 : vec4<f32> = x_2004.x_MainLightWorldToLight[2i];
    let x_2033 : vec3<f32> = vs_INTERP7;
    let x_2036 : vec4<f32> = u_xlat7;
    let x_2038 : vec2<f32> = ((vec2<f32>(x_2031.x, x_2031.y) * vec2<f32>(x_2033.z, x_2033.z)) + vec2<f32>(x_2036.x, x_2036.y));
    let x_2039 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2038.x, x_2038.y, x_2039.z, x_2039.w);
    let x_2041 : vec4<f32> = u_xlat7;
    let x_2044 : vec4<f32> = x_2004.x_MainLightWorldToLight[3i];
    let x_2046 : vec2<f32> = (vec2<f32>(x_2041.x, x_2041.y) + vec2<f32>(x_2044.x, x_2044.y));
    let x_2047 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2046.x, x_2046.y, x_2047.z, x_2047.w);
    let x_2049 : vec4<f32> = u_xlat7;
    let x_2052 : vec2<f32> = ((vec2<f32>(x_2049.x, x_2049.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2053 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2052.x, x_2052.y, x_2053.z, x_2053.w);
    let x_2060 : vec4<f32> = u_xlat7;
    let x_2063 : f32 = x_29.x_GlobalMipBias.x;
    let x_2064 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2060.x, x_2060.y), x_2063);
    u_xlat7 = x_2064;
    let x_2069 : f32 = x_2004.x_MainLightCookieTextureFormat;
    let x_2071 : f32 = x_2004.x_MainLightCookieTextureFormat;
    let x_2073 : f32 = x_2004.x_MainLightCookieTextureFormat;
    let x_2075 : f32 = x_2004.x_MainLightCookieTextureFormat;
    let x_2076 : vec4<f32> = vec4<f32>(x_2069, x_2071, x_2073, x_2075);
    let x_2083 : vec4<bool> = (vec4<f32>(x_2076.x, x_2076.y, x_2076.z, x_2076.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb8 = vec2<bool>(x_2083.x, x_2083.y);
    let x_2086 : bool = u_xlatb8.y;
    if (x_2086) {
      let x_2091 : f32 = u_xlat7.w;
      x_2087 = x_2091;
    } else {
      let x_2094 : f32 = u_xlat7.x;
      x_2087 = x_2094;
    }
    let x_2095 : f32 = x_2087;
    u_xlat79 = x_2095;
    let x_2097 : bool = u_xlatb8.x;
    if (x_2097) {
      let x_2101 : vec4<f32> = u_xlat7;
      x_2098 = vec3<f32>(x_2101.x, x_2101.y, x_2101.z);
    } else {
      let x_2104 : f32 = u_xlat79;
      x_2098 = vec3<f32>(x_2104, x_2104, x_2104);
    }
    let x_2106 : vec3<f32> = x_2098;
    let x_2107 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2106.x, x_2106.y, x_2106.z, x_2107.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_2113 : vec4<f32> = u_xlat7;
  let x_2116 : vec4<f32> = x_29.x_MainLightColor;
  let x_2118 : vec3<f32> = (vec3<f32>(x_2113.x, x_2113.y, x_2113.z) * vec3<f32>(x_2116.x, x_2116.y, x_2116.z));
  let x_2119 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2118.x, x_2118.y, x_2118.z, x_2119.w);
  let x_2121 : vec3<f32> = u_xlat4;
  let x_2123 : vec4<f32> = u_xlat3;
  u_xlat79 = dot(-(x_2121), vec3<f32>(x_2123.x, x_2123.y, x_2123.z));
  let x_2126 : f32 = u_xlat79;
  let x_2127 : f32 = u_xlat79;
  u_xlat79 = (x_2126 + x_2127);
  let x_2129 : vec4<f32> = u_xlat3;
  let x_2131 : f32 = u_xlat79;
  let x_2135 : vec3<f32> = u_xlat4;
  let x_2137 : vec3<f32> = ((vec3<f32>(x_2129.x, x_2129.y, x_2129.z) * -(vec3<f32>(x_2131, x_2131, x_2131))) + -(x_2135));
  let x_2138 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2137.x, x_2137.y, x_2137.z, x_2138.w);
  let x_2140 : vec4<f32> = u_xlat3;
  let x_2142 : vec3<f32> = u_xlat4;
  u_xlat79 = dot(vec3<f32>(x_2140.x, x_2140.y, x_2140.z), x_2142);
  let x_2144 : f32 = u_xlat79;
  u_xlat79 = clamp(x_2144, 0.0f, 1.0f);
  let x_2146 : f32 = u_xlat79;
  u_xlat79 = (-(x_2146) + 1.0f);
  let x_2149 : f32 = u_xlat79;
  let x_2150 : f32 = u_xlat79;
  u_xlat79 = (x_2149 * x_2150);
  let x_2152 : f32 = u_xlat79;
  let x_2153 : f32 = u_xlat79;
  u_xlat79 = (x_2152 * x_2153);
  let x_2156 : f32 = u_xlat0.x;
  u_xlat81 = ((-(x_2156) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2163 : f32 = u_xlat0.x;
  let x_2164 : f32 = u_xlat81;
  u_xlat0.x = (x_2163 * x_2164);
  let x_2168 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2168 * 6.0f);
  let x_2180 : vec4<f32> = u_xlat8;
  let x_2183 : f32 = u_xlat0.x;
  let x_2184 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2180.x, x_2180.y, x_2180.z), x_2183);
  u_xlat8 = x_2184;
  let x_2186 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2186 + -1.0f);
  let x_2190 : f32 = x_270.unity_SpecCube0_HDR.w;
  let x_2192 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2190 * x_2192) + 1.0f);
  let x_2197 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2197, 0.0f);
  let x_2201 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2201);
  let x_2205 : f32 = u_xlat0.x;
  let x_2207 : f32 = x_270.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2205 * x_2207);
  let x_2211 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2211);
  let x_2215 : f32 = u_xlat0.x;
  let x_2217 : f32 = x_270.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2215 * x_2217);
  let x_2220 : vec4<f32> = u_xlat8;
  let x_2222 : vec4<f32> = u_xlat0;
  let x_2224 : vec3<f32> = (vec3<f32>(x_2220.x, x_2220.y, x_2220.z) * vec3<f32>(x_2222.x, x_2222.x, x_2222.x));
  let x_2225 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2224.x, x_2224.y, x_2224.z, x_2225.w);
  let x_2227 : vec2<f32> = u_xlat26;
  let x_2229 : vec2<f32> = u_xlat26;
  let x_2233 : vec2<f32> = ((vec2<f32>(x_2227.x, x_2227.x) * vec2<f32>(x_2229.x, x_2229.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2234 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2233.x, x_2233.y, x_2234.z, x_2234.w);
  let x_2237 : f32 = u_xlat0.y;
  u_xlat26.x = (1.0f / x_2237);
  let x_2240 : vec3<f32> = u_xlat2;
  let x_2242 : f32 = u_xlat52;
  let x_2244 : vec3<f32> = (-(x_2240) + vec3<f32>(x_2242, x_2242, x_2242));
  let x_2245 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2244.x, x_2244.y, x_2244.z, x_2245.w);
  let x_2247 : f32 = u_xlat79;
  let x_2249 : vec4<f32> = u_xlat9;
  let x_2252 : vec3<f32> = u_xlat2;
  let x_2253 : vec3<f32> = ((vec3<f32>(x_2247, x_2247, x_2247) * vec3<f32>(x_2249.x, x_2249.y, x_2249.z)) + x_2252);
  let x_2254 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2253.x, x_2253.y, x_2253.z, x_2254.w);
  let x_2256 : vec2<f32> = u_xlat26;
  let x_2258 : vec4<f32> = u_xlat9;
  let x_2260 : vec3<f32> = (vec3<f32>(x_2256.x, x_2256.x, x_2256.x) * vec3<f32>(x_2258.x, x_2258.y, x_2258.z));
  let x_2261 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2260.x, x_2260.y, x_2260.z, x_2261.w);
  let x_2263 : vec4<f32> = u_xlat8;
  let x_2265 : vec4<f32> = u_xlat9;
  let x_2267 : vec3<f32> = (vec3<f32>(x_2263.x, x_2263.y, x_2263.z) * vec3<f32>(x_2265.x, x_2265.y, x_2265.z));
  let x_2268 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2267.x, x_2267.y, x_2267.z, x_2268.w);
  let x_2270 : vec3<f32> = u_xlat5;
  let x_2271 : vec4<f32> = u_xlat6;
  let x_2274 : vec4<f32> = u_xlat8;
  u_xlat5 = ((x_2270 * vec3<f32>(x_2271.x, x_2271.y, x_2271.z)) + vec3<f32>(x_2274.x, x_2274.y, x_2274.z));
  let x_2278 : f32 = u_xlat27.x;
  let x_2280 : f32 = x_270.unity_LightData.z;
  u_xlat26.x = (x_2278 * x_2280);
  let x_2283 : vec4<f32> = u_xlat3;
  let x_2286 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat52 = dot(vec3<f32>(x_2283.x, x_2283.y, x_2283.z), vec3<f32>(x_2286.x, x_2286.y, x_2286.z));
  let x_2289 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2289, 0.0f, 1.0f);
  let x_2291 : f32 = u_xlat52;
  let x_2293 : f32 = u_xlat26.x;
  u_xlat26.x = (x_2291 * x_2293);
  let x_2296 : vec2<f32> = u_xlat26;
  let x_2298 : vec4<f32> = u_xlat7;
  let x_2300 : vec3<f32> = (vec3<f32>(x_2296.x, x_2296.x, x_2296.x) * vec3<f32>(x_2298.x, x_2298.y, x_2298.z));
  let x_2301 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2300.x, x_2300.y, x_2300.z, x_2301.w);
  let x_2303 : vec3<f32> = u_xlat4;
  let x_2305 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2307 : vec3<f32> = (x_2303 + vec3<f32>(x_2305.x, x_2305.y, x_2305.z));
  let x_2308 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2307.x, x_2307.y, x_2307.z, x_2308.w);
  let x_2310 : vec4<f32> = u_xlat8;
  let x_2312 : vec4<f32> = u_xlat8;
  u_xlat26.x = dot(vec3<f32>(x_2310.x, x_2310.y, x_2310.z), vec3<f32>(x_2312.x, x_2312.y, x_2312.z));
  let x_2317 : f32 = u_xlat26.x;
  u_xlat26.x = max(x_2317, 1.17549435e-38f);
  let x_2322 : f32 = u_xlat26.x;
  u_xlat26.x = inverseSqrt(x_2322);
  let x_2325 : vec2<f32> = u_xlat26;
  let x_2327 : vec4<f32> = u_xlat8;
  let x_2329 : vec3<f32> = (vec3<f32>(x_2325.x, x_2325.x, x_2325.x) * vec3<f32>(x_2327.x, x_2327.y, x_2327.z));
  let x_2330 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2329.x, x_2329.y, x_2329.z, x_2330.w);
  let x_2332 : vec4<f32> = u_xlat3;
  let x_2334 : vec4<f32> = u_xlat8;
  u_xlat26.x = dot(vec3<f32>(x_2332.x, x_2332.y, x_2332.z), vec3<f32>(x_2334.x, x_2334.y, x_2334.z));
  let x_2339 : f32 = u_xlat26.x;
  u_xlat26.x = clamp(x_2339, 0.0f, 1.0f);
  let x_2343 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2345 : vec4<f32> = u_xlat8;
  u_xlat26.y = dot(vec3<f32>(x_2343.x, x_2343.y, x_2343.z), vec3<f32>(x_2345.x, x_2345.y, x_2345.z));
  let x_2350 : f32 = u_xlat26.y;
  u_xlat26.y = clamp(x_2350, 0.0f, 1.0f);
  let x_2353 : vec2<f32> = u_xlat26;
  let x_2354 : vec2<f32> = u_xlat26;
  u_xlat26 = (x_2353 * x_2354);
  let x_2357 : f32 = u_xlat26.x;
  let x_2359 : f32 = u_xlat0.x;
  u_xlat26.x = ((x_2357 * x_2359) + 1.00001001358032226562f);
  let x_2365 : f32 = u_xlat26.x;
  let x_2367 : f32 = u_xlat26.x;
  u_xlat26.x = (x_2365 * x_2367);
  let x_2371 : f32 = u_xlat26.y;
  u_xlat52 = max(x_2371, 0.10000000149011611938f);
  let x_2374 : f32 = u_xlat52;
  let x_2376 : f32 = u_xlat26.x;
  u_xlat26.x = (x_2374 * x_2376);
  let x_2380 : f32 = u_xlat1.x;
  let x_2382 : f32 = u_xlat26.x;
  u_xlat26.x = (x_2380 * x_2382);
  let x_2385 : f32 = u_xlat80;
  let x_2387 : f32 = u_xlat26.x;
  u_xlat26.x = (x_2385 / x_2387);
  let x_2390 : vec3<f32> = u_xlat2;
  let x_2391 : vec2<f32> = u_xlat26;
  let x_2394 : vec4<f32> = u_xlat6;
  let x_2396 : vec3<f32> = ((x_2390 * vec3<f32>(x_2391.x, x_2391.x, x_2391.x)) + vec3<f32>(x_2394.x, x_2394.y, x_2394.z));
  let x_2397 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2396.x, x_2396.y, x_2396.z, x_2397.w);
  let x_2399 : vec4<f32> = u_xlat7;
  let x_2401 : vec4<f32> = u_xlat8;
  let x_2403 : vec3<f32> = (vec3<f32>(x_2399.x, x_2399.y, x_2399.z) * vec3<f32>(x_2401.x, x_2401.y, x_2401.z));
  let x_2404 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2403.x, x_2403.y, x_2403.z, x_2404.w);
  let x_2407 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2409 : f32 = x_270.unity_LightData.y;
  u_xlat26.x = min(x_2407, x_2409);
  let x_2413 : f32 = u_xlat26.x;
  u_xlatu26 = bitcast<u32>(i32(x_2413));
  let x_2416 : f32 = u_xlat53;
  let x_2419 : f32 = x_422.x_AdditionalShadowFadeParams.x;
  let x_2422 : f32 = x_422.x_AdditionalShadowFadeParams.y;
  u_xlat52 = ((x_2416 * x_2419) + x_2422);
  let x_2424 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2424, 0.0f, 1.0f);
  let x_2427 : f32 = x_2004.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2429 : f32 = x_2004.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2431 : f32 = x_2004.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2433 : f32 = x_2004.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2434 : vec4<f32> = vec4<f32>(x_2427, x_2429, x_2431, x_2433);
  let x_2440 : vec4<bool> = (vec4<f32>(x_2434.x, x_2434.y, x_2434.z, x_2434.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  let x_2441 : vec2<bool> = vec2<bool>(x_2440.x, x_2440.y);
  let x_2442 : vec3<bool> = u_xlatb27;
  u_xlatb27 = vec3<bool>(x_2441.x, x_2441.y, x_2442.z);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2454 : u32 = u_xlatu_loop_1;
    let x_2455 : u32 = u_xlatu26;
    if ((x_2454 < x_2455)) {
    } else {
      break;
    }
    let x_2458 : u32 = u_xlatu_loop_1;
    u_xlatu81 = (x_2458 >> 2u);
    let x_2461 : u32 = u_xlatu_loop_1;
    u_xlati82 = bitcast<i32>((x_2461 & 3u));
    let x_2464 : u32 = u_xlatu81;
    let x_2467 : vec4<f32> = x_270.unity_LightIndices[bitcast<i32>(x_2464)];
    let x_2477 : i32 = u_xlati82;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2482 : vec4<u32> = indexable[x_2477];
    u_xlat81 = dot(x_2467, bitcast<vec4<f32>>(x_2482));
    let x_2486 : f32 = u_xlat81;
    u_xlati81 = i32(x_2486);
    let x_2488 : vec3<f32> = vs_INTERP7;
    let x_2499 : i32 = u_xlati81;
    let x_2501 : vec4<f32> = x_2498.x_AdditionalLightsPosition[x_2499];
    let x_2504 : i32 = u_xlati81;
    let x_2506 : vec4<f32> = x_2498.x_AdditionalLightsPosition[x_2504];
    let x_2508 : vec3<f32> = ((-(x_2488) * vec3<f32>(x_2501.w, x_2501.w, x_2501.w)) + vec3<f32>(x_2506.x, x_2506.y, x_2506.z));
    let x_2509 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2508.x, x_2508.y, x_2508.z, x_2509.w);
    let x_2511 : vec4<f32> = u_xlat9;
    let x_2513 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_2511.x, x_2511.y, x_2511.z), vec3<f32>(x_2513.x, x_2513.y, x_2513.z));
    let x_2516 : f32 = u_xlat82;
    u_xlat82 = max(x_2516, 0.00006103515625f);
    let x_2519 : f32 = u_xlat82;
    u_xlat83 = inverseSqrt(x_2519);
    let x_2521 : f32 = u_xlat83;
    let x_2523 : vec4<f32> = u_xlat9;
    let x_2525 : vec3<f32> = (vec3<f32>(x_2521, x_2521, x_2521) * vec3<f32>(x_2523.x, x_2523.y, x_2523.z));
    let x_2526 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2525.x, x_2525.y, x_2525.z, x_2526.w);
    let x_2528 : f32 = u_xlat82;
    u_xlat84 = (1.0f / x_2528);
    let x_2530 : f32 = u_xlat82;
    let x_2531 : i32 = u_xlati81;
    let x_2533 : f32 = x_2498.x_AdditionalLightsAttenuation[x_2531].x;
    u_xlat82 = (x_2530 * x_2533);
    let x_2535 : f32 = u_xlat82;
    let x_2537 : f32 = u_xlat82;
    u_xlat82 = ((-(x_2535) * x_2537) + 1.0f);
    let x_2540 : f32 = u_xlat82;
    u_xlat82 = max(x_2540, 0.0f);
    let x_2542 : f32 = u_xlat82;
    let x_2543 : f32 = u_xlat82;
    u_xlat82 = (x_2542 * x_2543);
    let x_2545 : f32 = u_xlat82;
    let x_2546 : f32 = u_xlat84;
    u_xlat82 = (x_2545 * x_2546);
    let x_2548 : i32 = u_xlati81;
    let x_2550 : vec4<f32> = x_2498.x_AdditionalLightsSpotDir[x_2548];
    let x_2552 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_2550.x, x_2550.y, x_2550.z), vec3<f32>(x_2552.x, x_2552.y, x_2552.z));
    let x_2555 : f32 = u_xlat84;
    let x_2556 : i32 = u_xlati81;
    let x_2558 : f32 = x_2498.x_AdditionalLightsAttenuation[x_2556].z;
    let x_2560 : i32 = u_xlati81;
    let x_2562 : f32 = x_2498.x_AdditionalLightsAttenuation[x_2560].w;
    u_xlat84 = ((x_2555 * x_2558) + x_2562);
    let x_2564 : f32 = u_xlat84;
    u_xlat84 = clamp(x_2564, 0.0f, 1.0f);
    let x_2566 : f32 = u_xlat84;
    let x_2567 : f32 = u_xlat84;
    u_xlat84 = (x_2566 * x_2567);
    let x_2569 : f32 = u_xlat82;
    let x_2570 : f32 = u_xlat84;
    u_xlat82 = (x_2569 * x_2570);
    let x_2574 : i32 = u_xlati81;
    let x_2576 : f32 = x_422.x_AdditionalShadowParams[x_2574].w;
    u_xlati84 = i32(x_2576);
    let x_2579 : i32 = u_xlati84;
    u_xlatb85 = (x_2579 >= 0i);
    let x_2581 : bool = u_xlatb85;
    if (x_2581) {
      let x_2585 : i32 = u_xlati81;
      let x_2587 : f32 = x_422.x_AdditionalShadowParams[x_2585].z;
      u_xlatb85 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2587, x_2587, x_2587, x_2587))));
      let x_2591 : bool = u_xlatb85;
      if (x_2591) {
        let x_2595 : vec4<f32> = u_xlat10;
        let x_2598 : vec4<f32> = u_xlat10;
        let x_2601 : vec4<bool> = (abs(vec4<f32>(x_2595.z, x_2595.z, x_2595.y, x_2595.z)) >= abs(vec4<f32>(x_2598.x, x_2598.y, x_2598.x, x_2598.x)));
        let x_2602 : vec3<bool> = vec3<bool>(x_2601.x, x_2601.y, x_2601.z);
        let x_2603 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2602.x, x_2602.y, x_2602.z, x_2603.w);
        let x_2606 : bool = u_xlatb11.y;
        let x_2608 : bool = u_xlatb11.x;
        u_xlatb85 = (x_2606 & x_2608);
        let x_2610 : vec4<f32> = u_xlat10;
        let x_2613 : vec4<bool> = (-(vec4<f32>(x_2610.z, x_2610.y, x_2610.z, x_2610.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2614 : vec3<bool> = vec3<bool>(x_2613.x, x_2613.y, x_2613.w);
        let x_2615 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2614.x, x_2614.y, x_2615.z, x_2614.z);
        let x_2618 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2618);
        let x_2623 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2623);
        let x_2628 : bool = u_xlatb11.w;
        u_xlat86 = select(0.0f, 1.0f, x_2628);
        let x_2631 : bool = u_xlatb11.z;
        if (x_2631) {
          let x_2636 : f32 = u_xlat11.y;
          x_2632 = x_2636;
        } else {
          let x_2638 : f32 = u_xlat86;
          x_2632 = x_2638;
        }
        let x_2639 : f32 = x_2632;
        u_xlat86 = x_2639;
        let x_2641 : bool = u_xlatb85;
        if (x_2641) {
          let x_2646 : f32 = u_xlat11.x;
          x_2642 = x_2646;
        } else {
          let x_2648 : f32 = u_xlat86;
          x_2642 = x_2648;
        }
        let x_2649 : f32 = x_2642;
        u_xlat85 = x_2649;
        let x_2650 : i32 = u_xlati81;
        let x_2652 : f32 = x_422.x_AdditionalShadowParams[x_2650].w;
        u_xlat86 = trunc(x_2652);
        let x_2654 : f32 = u_xlat85;
        let x_2655 : f32 = u_xlat86;
        u_xlat85 = (x_2654 + x_2655);
        let x_2657 : f32 = u_xlat85;
        u_xlati84 = i32(x_2657);
      }
      let x_2659 : i32 = u_xlati84;
      u_xlati84 = (x_2659 << bitcast<u32>(2i));
      let x_2661 : vec3<f32> = vs_INTERP7;
      let x_2664 : i32 = u_xlati84;
      let x_2667 : i32 = u_xlati84;
      let x_2671 : vec4<f32> = x_422.x_AdditionalLightsWorldToShadow[((x_2664 + 1i) / 4i)][((x_2667 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2661.y, x_2661.y, x_2661.y, x_2661.y) * x_2671);
      let x_2673 : i32 = u_xlati84;
      let x_2675 : i32 = u_xlati84;
      let x_2678 : vec4<f32> = x_422.x_AdditionalLightsWorldToShadow[(x_2673 / 4i)][(x_2675 % 4i)];
      let x_2679 : vec3<f32> = vs_INTERP7;
      let x_2682 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2678 * vec4<f32>(x_2679.x, x_2679.x, x_2679.x, x_2679.x)) + x_2682);
      let x_2684 : i32 = u_xlati84;
      let x_2687 : i32 = u_xlati84;
      let x_2691 : vec4<f32> = x_422.x_AdditionalLightsWorldToShadow[((x_2684 + 2i) / 4i)][((x_2687 + 2i) % 4i)];
      let x_2692 : vec3<f32> = vs_INTERP7;
      let x_2695 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2691 * vec4<f32>(x_2692.z, x_2692.z, x_2692.z, x_2692.z)) + x_2695);
      let x_2697 : vec4<f32> = u_xlat11;
      let x_2698 : i32 = u_xlati84;
      let x_2701 : i32 = u_xlati84;
      let x_2705 : vec4<f32> = x_422.x_AdditionalLightsWorldToShadow[((x_2698 + 3i) / 4i)][((x_2701 + 3i) % 4i)];
      u_xlat11 = (x_2697 + x_2705);
      let x_2707 : vec4<f32> = u_xlat11;
      let x_2709 : vec4<f32> = u_xlat11;
      let x_2711 : vec3<f32> = (vec3<f32>(x_2707.x, x_2707.y, x_2707.z) / vec3<f32>(x_2709.w, x_2709.w, x_2709.w));
      let x_2712 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2711.x, x_2711.y, x_2711.z, x_2712.w);
      let x_2715 : i32 = u_xlati81;
      let x_2717 : f32 = x_422.x_AdditionalShadowParams[x_2715].y;
      u_xlatb84 = (0.0f < x_2717);
      let x_2719 : bool = u_xlatb84;
      if (x_2719) {
        let x_2722 : i32 = u_xlati81;
        let x_2724 : f32 = x_422.x_AdditionalShadowParams[x_2722].y;
        u_xlatb84 = (1.0f == x_2724);
        let x_2726 : bool = u_xlatb84;
        if (x_2726) {
          let x_2729 : vec4<f32> = u_xlat11;
          let x_2733 : vec4<f32> = x_422.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2729.x, x_2729.y, x_2729.x, x_2729.y) + x_2733);
          let x_2736 : vec4<f32> = u_xlat12;
          let x_2737 : vec2<f32> = vec2<f32>(x_2736.x, x_2736.y);
          let x_2739 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2737.x, x_2737.y, x_2739);
          let x_2747 : vec3<f32> = txVec30;
          let x_2749 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2747.xy, x_2747.z);
          u_xlat13.x = x_2749;
          let x_2752 : vec4<f32> = u_xlat12;
          let x_2753 : vec2<f32> = vec2<f32>(x_2752.z, x_2752.w);
          let x_2755 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2753.x, x_2753.y, x_2755);
          let x_2762 : vec3<f32> = txVec31;
          let x_2764 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2762.xy, x_2762.z);
          u_xlat13.y = x_2764;
          let x_2766 : vec4<f32> = u_xlat11;
          let x_2770 : vec4<f32> = x_422.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2766.x, x_2766.y, x_2766.x, x_2766.y) + x_2770);
          let x_2773 : vec4<f32> = u_xlat12;
          let x_2774 : vec2<f32> = vec2<f32>(x_2773.x, x_2773.y);
          let x_2776 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2774.x, x_2774.y, x_2776);
          let x_2783 : vec3<f32> = txVec32;
          let x_2785 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2783.xy, x_2783.z);
          u_xlat13.z = x_2785;
          let x_2788 : vec4<f32> = u_xlat12;
          let x_2789 : vec2<f32> = vec2<f32>(x_2788.z, x_2788.w);
          let x_2791 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2789.x, x_2789.y, x_2791);
          let x_2798 : vec3<f32> = txVec33;
          let x_2800 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2798.xy, x_2798.z);
          u_xlat13.w = x_2800;
          let x_2802 : vec4<f32> = u_xlat13;
          u_xlat84 = dot(x_2802, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2805 : i32 = u_xlati81;
          let x_2807 : f32 = x_422.x_AdditionalShadowParams[x_2805].y;
          u_xlatb85 = (2.0f == x_2807);
          let x_2809 : bool = u_xlatb85;
          if (x_2809) {
            let x_2812 : vec4<f32> = u_xlat11;
            let x_2816 : vec4<f32> = x_422.x_AdditionalShadowmapSize;
            let x_2819 : vec2<f32> = ((vec2<f32>(x_2812.x, x_2812.y) * vec2<f32>(x_2816.z, x_2816.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2820 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2819.x, x_2819.y, x_2820.z, x_2820.w);
            let x_2822 : vec4<f32> = u_xlat12;
            let x_2824 : vec2<f32> = floor(vec2<f32>(x_2822.x, x_2822.y));
            let x_2825 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2824.x, x_2824.y, x_2825.z, x_2825.w);
            let x_2828 : vec4<f32> = u_xlat11;
            let x_2831 : vec4<f32> = x_422.x_AdditionalShadowmapSize;
            let x_2834 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2828.x, x_2828.y) * vec2<f32>(x_2831.z, x_2831.w)) + -(vec2<f32>(x_2834.x, x_2834.y)));
            let x_2838 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2838.x, x_2838.x, x_2838.y, x_2838.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2841 : vec4<f32> = u_xlat13;
            let x_2843 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2841.x, x_2841.x, x_2841.z, x_2841.z) * vec4<f32>(x_2843.x, x_2843.x, x_2843.z, x_2843.z));
            let x_2846 : vec4<f32> = u_xlat14;
            let x_2848 : vec2<f32> = (vec2<f32>(x_2846.y, x_2846.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2849 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2848.x, x_2849.y, x_2848.y, x_2849.w);
            let x_2851 : vec4<f32> = u_xlat14;
            let x_2854 : vec2<f32> = u_xlat64;
            let x_2856 : vec2<f32> = ((vec2<f32>(x_2851.x, x_2851.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2854));
            let x_2857 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2856.x, x_2856.y, x_2857.z, x_2857.w);
            let x_2860 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2860) + vec2<f32>(1.0f, 1.0f));
            let x_2863 : vec2<f32> = u_xlat64;
            let x_2864 : vec2<f32> = min(x_2863, vec2<f32>(0.0f, 0.0f));
            let x_2865 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2864.x, x_2864.y, x_2865.z, x_2865.w);
            let x_2867 : vec4<f32> = u_xlat15;
            let x_2870 : vec4<f32> = u_xlat15;
            let x_2873 : vec2<f32> = u_xlat66;
            let x_2874 : vec2<f32> = ((-(vec2<f32>(x_2867.x, x_2867.y)) * vec2<f32>(x_2870.x, x_2870.y)) + x_2873);
            let x_2875 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2874.x, x_2874.y, x_2875.z, x_2875.w);
            let x_2877 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2877, vec2<f32>(0.0f, 0.0f));
            let x_2879 : vec2<f32> = u_xlat64;
            let x_2881 : vec2<f32> = u_xlat64;
            let x_2883 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2879) * x_2881) + vec2<f32>(x_2883.y, x_2883.w));
            let x_2886 : vec4<f32> = u_xlat15;
            let x_2888 : vec2<f32> = (vec2<f32>(x_2886.x, x_2886.y) + vec2<f32>(1.0f, 1.0f));
            let x_2889 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2888.x, x_2888.y, x_2889.z, x_2889.w);
            let x_2891 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2891 + vec2<f32>(1.0f, 1.0f));
            let x_2893 : vec4<f32> = u_xlat14;
            let x_2895 : vec2<f32> = (vec2<f32>(x_2893.x, x_2893.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2896 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2895.x, x_2895.y, x_2896.z, x_2896.w);
            let x_2898 : vec2<f32> = u_xlat66;
            let x_2899 : vec2<f32> = (x_2898 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2900 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2899.x, x_2899.y, x_2900.z, x_2900.w);
            let x_2902 : vec4<f32> = u_xlat15;
            let x_2904 : vec2<f32> = (vec2<f32>(x_2902.x, x_2902.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2905 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2904.x, x_2904.y, x_2905.z, x_2905.w);
            let x_2907 : vec2<f32> = u_xlat64;
            let x_2908 : vec2<f32> = (x_2907 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2909 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2908.x, x_2908.y, x_2909.z, x_2909.w);
            let x_2911 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2911.y, x_2911.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2915 : f32 = u_xlat15.x;
            u_xlat16.z = x_2915;
            let x_2918 : f32 = u_xlat64.x;
            u_xlat16.w = x_2918;
            let x_2921 : f32 = u_xlat17.x;
            u_xlat14.z = x_2921;
            let x_2924 : f32 = u_xlat13.x;
            u_xlat14.w = x_2924;
            let x_2926 : vec4<f32> = u_xlat14;
            let x_2928 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2926.z, x_2926.w, x_2926.x, x_2926.z) + vec4<f32>(x_2928.z, x_2928.w, x_2928.x, x_2928.z));
            let x_2932 : f32 = u_xlat16.y;
            u_xlat15.z = x_2932;
            let x_2935 : f32 = u_xlat64.y;
            u_xlat15.w = x_2935;
            let x_2938 : f32 = u_xlat14.y;
            u_xlat17.z = x_2938;
            let x_2941 : f32 = u_xlat13.z;
            u_xlat17.w = x_2941;
            let x_2943 : vec4<f32> = u_xlat15;
            let x_2945 : vec4<f32> = u_xlat17;
            let x_2947 : vec3<f32> = (vec3<f32>(x_2943.z, x_2943.y, x_2943.w) + vec3<f32>(x_2945.z, x_2945.y, x_2945.w));
            let x_2948 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2947.x, x_2947.y, x_2947.z, x_2948.w);
            let x_2950 : vec4<f32> = u_xlat14;
            let x_2952 : vec4<f32> = u_xlat18;
            let x_2954 : vec3<f32> = (vec3<f32>(x_2950.x, x_2950.z, x_2950.w) / vec3<f32>(x_2952.z, x_2952.w, x_2952.y));
            let x_2955 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2954.x, x_2954.y, x_2954.z, x_2955.w);
            let x_2957 : vec4<f32> = u_xlat14;
            let x_2959 : vec3<f32> = (vec3<f32>(x_2957.x, x_2957.y, x_2957.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2960 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2959.x, x_2959.y, x_2959.z, x_2960.w);
            let x_2962 : vec4<f32> = u_xlat17;
            let x_2964 : vec4<f32> = u_xlat13;
            let x_2966 : vec3<f32> = (vec3<f32>(x_2962.z, x_2962.y, x_2962.w) / vec3<f32>(x_2964.x, x_2964.y, x_2964.z));
            let x_2967 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2966.x, x_2966.y, x_2966.z, x_2967.w);
            let x_2969 : vec4<f32> = u_xlat15;
            let x_2971 : vec3<f32> = (vec3<f32>(x_2969.x, x_2969.y, x_2969.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2972 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2971.x, x_2971.y, x_2971.z, x_2972.w);
            let x_2974 : vec4<f32> = u_xlat14;
            let x_2977 : vec4<f32> = x_422.x_AdditionalShadowmapSize;
            let x_2979 : vec3<f32> = (vec3<f32>(x_2974.y, x_2974.x, x_2974.z) * vec3<f32>(x_2977.x, x_2977.x, x_2977.x));
            let x_2980 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2979.x, x_2979.y, x_2979.z, x_2980.w);
            let x_2982 : vec4<f32> = u_xlat15;
            let x_2985 : vec4<f32> = x_422.x_AdditionalShadowmapSize;
            let x_2987 : vec3<f32> = (vec3<f32>(x_2982.x, x_2982.y, x_2982.z) * vec3<f32>(x_2985.y, x_2985.y, x_2985.y));
            let x_2988 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2987.x, x_2987.y, x_2987.z, x_2988.w);
            let x_2991 : f32 = u_xlat15.x;
            u_xlat14.w = x_2991;
            let x_2993 : vec4<f32> = u_xlat12;
            let x_2996 : vec4<f32> = x_422.x_AdditionalShadowmapSize;
            let x_2999 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2993.x, x_2993.y, x_2993.x, x_2993.y) * vec4<f32>(x_2996.x, x_2996.y, x_2996.x, x_2996.y)) + vec4<f32>(x_2999.y, x_2999.w, x_2999.x, x_2999.w));
            let x_3002 : vec4<f32> = u_xlat12;
            let x_3005 : vec4<f32> = x_422.x_AdditionalShadowmapSize;
            let x_3008 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3002.x, x_3002.y) * vec2<f32>(x_3005.x, x_3005.y)) + vec2<f32>(x_3008.z, x_3008.w));
            let x_3012 : f32 = u_xlat14.y;
            u_xlat15.w = x_3012;
            let x_3014 : vec4<f32> = u_xlat15;
            let x_3015 : vec2<f32> = vec2<f32>(x_3014.y, x_3014.z);
            let x_3016 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3016.x, x_3015.x, x_3016.z, x_3015.y);
            let x_3018 : vec4<f32> = u_xlat12;
            let x_3021 : vec4<f32> = x_422.x_AdditionalShadowmapSize;
            let x_3024 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_3018.x, x_3018.y, x_3018.x, x_3018.y) * vec4<f32>(x_3021.x, x_3021.y, x_3021.x, x_3021.y)) + vec4<f32>(x_3024.x, x_3024.y, x_3024.z, x_3024.y));
            let x_3027 : vec4<f32> = u_xlat12;
            let x_3030 : vec4<f32> = x_422.x_AdditionalShadowmapSize;
            let x_3033 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_3027.x, x_3027.y, x_3027.x, x_3027.y) * vec4<f32>(x_3030.x, x_3030.y, x_3030.x, x_3030.y)) + vec4<f32>(x_3033.w, x_3033.y, x_3033.w, x_3033.z));
            let x_3036 : vec4<f32> = u_xlat12;
            let x_3039 : vec4<f32> = x_422.x_AdditionalShadowmapSize;
            let x_3042 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3036.x, x_3036.y, x_3036.x, x_3036.y) * vec4<f32>(x_3039.x, x_3039.y, x_3039.x, x_3039.y)) + vec4<f32>(x_3042.x, x_3042.w, x_3042.z, x_3042.w));
            let x_3045 : vec4<f32> = u_xlat13;
            let x_3047 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_3045.x, x_3045.x, x_3045.x, x_3045.y) * vec4<f32>(x_3047.z, x_3047.w, x_3047.y, x_3047.z));
            let x_3050 : vec4<f32> = u_xlat13;
            let x_3052 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_3050.y, x_3050.y, x_3050.z, x_3050.z) * x_3052);
            let x_3055 : f32 = u_xlat13.z;
            let x_3057 : f32 = u_xlat18.y;
            u_xlat85 = (x_3055 * x_3057);
            let x_3060 : vec4<f32> = u_xlat16;
            let x_3061 : vec2<f32> = vec2<f32>(x_3060.x, x_3060.y);
            let x_3063 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_3061.x, x_3061.y, x_3063);
            let x_3070 : vec3<f32> = txVec34;
            let x_3072 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3070.xy, x_3070.z);
            u_xlat86 = x_3072;
            let x_3074 : vec4<f32> = u_xlat16;
            let x_3075 : vec2<f32> = vec2<f32>(x_3074.z, x_3074.w);
            let x_3077 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_3075.x, x_3075.y, x_3077);
            let x_3085 : vec3<f32> = txVec35;
            let x_3087 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3085.xy, x_3085.z);
            u_xlat87 = x_3087;
            let x_3088 : f32 = u_xlat87;
            let x_3090 : f32 = u_xlat19.y;
            u_xlat87 = (x_3088 * x_3090);
            let x_3093 : f32 = u_xlat19.x;
            let x_3094 : f32 = u_xlat86;
            let x_3096 : f32 = u_xlat87;
            u_xlat86 = ((x_3093 * x_3094) + x_3096);
            let x_3099 : vec2<f32> = u_xlat64;
            let x_3101 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_3099.x, x_3099.y, x_3101);
            let x_3108 : vec3<f32> = txVec36;
            let x_3110 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3108.xy, x_3108.z);
            u_xlat87 = x_3110;
            let x_3112 : f32 = u_xlat19.z;
            let x_3113 : f32 = u_xlat87;
            let x_3115 : f32 = u_xlat86;
            u_xlat86 = ((x_3112 * x_3113) + x_3115);
            let x_3118 : vec4<f32> = u_xlat15;
            let x_3119 : vec2<f32> = vec2<f32>(x_3118.x, x_3118.y);
            let x_3121 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3119.x, x_3119.y, x_3121);
            let x_3128 : vec3<f32> = txVec37;
            let x_3130 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3128.xy, x_3128.z);
            u_xlat87 = x_3130;
            let x_3132 : f32 = u_xlat19.w;
            let x_3133 : f32 = u_xlat87;
            let x_3135 : f32 = u_xlat86;
            u_xlat86 = ((x_3132 * x_3133) + x_3135);
            let x_3138 : vec4<f32> = u_xlat17;
            let x_3139 : vec2<f32> = vec2<f32>(x_3138.x, x_3138.y);
            let x_3141 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3139.x, x_3139.y, x_3141);
            let x_3148 : vec3<f32> = txVec38;
            let x_3150 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3148.xy, x_3148.z);
            u_xlat87 = x_3150;
            let x_3152 : f32 = u_xlat20.x;
            let x_3153 : f32 = u_xlat87;
            let x_3155 : f32 = u_xlat86;
            u_xlat86 = ((x_3152 * x_3153) + x_3155);
            let x_3158 : vec4<f32> = u_xlat17;
            let x_3159 : vec2<f32> = vec2<f32>(x_3158.z, x_3158.w);
            let x_3161 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3159.x, x_3159.y, x_3161);
            let x_3168 : vec3<f32> = txVec39;
            let x_3170 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3168.xy, x_3168.z);
            u_xlat87 = x_3170;
            let x_3172 : f32 = u_xlat20.y;
            let x_3173 : f32 = u_xlat87;
            let x_3175 : f32 = u_xlat86;
            u_xlat86 = ((x_3172 * x_3173) + x_3175);
            let x_3178 : vec4<f32> = u_xlat15;
            let x_3179 : vec2<f32> = vec2<f32>(x_3178.z, x_3178.w);
            let x_3181 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3179.x, x_3179.y, x_3181);
            let x_3188 : vec3<f32> = txVec40;
            let x_3190 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3188.xy, x_3188.z);
            u_xlat87 = x_3190;
            let x_3192 : f32 = u_xlat20.z;
            let x_3193 : f32 = u_xlat87;
            let x_3195 : f32 = u_xlat86;
            u_xlat86 = ((x_3192 * x_3193) + x_3195);
            let x_3198 : vec4<f32> = u_xlat14;
            let x_3199 : vec2<f32> = vec2<f32>(x_3198.x, x_3198.y);
            let x_3201 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3199.x, x_3199.y, x_3201);
            let x_3208 : vec3<f32> = txVec41;
            let x_3210 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3208.xy, x_3208.z);
            u_xlat87 = x_3210;
            let x_3212 : f32 = u_xlat20.w;
            let x_3213 : f32 = u_xlat87;
            let x_3215 : f32 = u_xlat86;
            u_xlat86 = ((x_3212 * x_3213) + x_3215);
            let x_3218 : vec4<f32> = u_xlat14;
            let x_3219 : vec2<f32> = vec2<f32>(x_3218.z, x_3218.w);
            let x_3221 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3219.x, x_3219.y, x_3221);
            let x_3228 : vec3<f32> = txVec42;
            let x_3230 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3228.xy, x_3228.z);
            u_xlat87 = x_3230;
            let x_3231 : f32 = u_xlat85;
            let x_3232 : f32 = u_xlat87;
            let x_3234 : f32 = u_xlat86;
            u_xlat84 = ((x_3231 * x_3232) + x_3234);
          } else {
            let x_3237 : vec4<f32> = u_xlat11;
            let x_3240 : vec4<f32> = x_422.x_AdditionalShadowmapSize;
            let x_3243 : vec2<f32> = ((vec2<f32>(x_3237.x, x_3237.y) * vec2<f32>(x_3240.z, x_3240.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3244 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3243.x, x_3243.y, x_3244.z, x_3244.w);
            let x_3246 : vec4<f32> = u_xlat12;
            let x_3248 : vec2<f32> = floor(vec2<f32>(x_3246.x, x_3246.y));
            let x_3249 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3248.x, x_3248.y, x_3249.z, x_3249.w);
            let x_3251 : vec4<f32> = u_xlat11;
            let x_3254 : vec4<f32> = x_422.x_AdditionalShadowmapSize;
            let x_3257 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3251.x, x_3251.y) * vec2<f32>(x_3254.z, x_3254.w)) + -(vec2<f32>(x_3257.x, x_3257.y)));
            let x_3261 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3261.x, x_3261.x, x_3261.y, x_3261.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3264 : vec4<f32> = u_xlat13;
            let x_3266 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3264.x, x_3264.x, x_3264.z, x_3264.z) * vec4<f32>(x_3266.x, x_3266.x, x_3266.z, x_3266.z));
            let x_3269 : vec4<f32> = u_xlat14;
            let x_3271 : vec2<f32> = (vec2<f32>(x_3269.y, x_3269.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3272 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3272.x, x_3271.x, x_3272.z, x_3271.y);
            let x_3274 : vec4<f32> = u_xlat14;
            let x_3277 : vec2<f32> = u_xlat64;
            let x_3279 : vec2<f32> = ((vec2<f32>(x_3274.x, x_3274.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3277));
            let x_3280 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3279.x, x_3280.y, x_3279.y, x_3280.w);
            let x_3282 : vec2<f32> = u_xlat64;
            let x_3284 : vec2<f32> = (-(x_3282) + vec2<f32>(1.0f, 1.0f));
            let x_3285 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3284.x, x_3284.y, x_3285.z, x_3285.w);
            let x_3287 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3287, vec2<f32>(0.0f, 0.0f));
            let x_3289 : vec2<f32> = u_xlat66;
            let x_3291 : vec2<f32> = u_xlat66;
            let x_3293 : vec4<f32> = u_xlat14;
            let x_3295 : vec2<f32> = ((-(x_3289) * x_3291) + vec2<f32>(x_3293.x, x_3293.y));
            let x_3296 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3295.x, x_3295.y, x_3296.z, x_3296.w);
            let x_3298 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3298, vec2<f32>(0.0f, 0.0f));
            let x_3301 : vec2<f32> = u_xlat66;
            let x_3303 : vec2<f32> = u_xlat66;
            let x_3305 : vec4<f32> = u_xlat13;
            let x_3307 : vec2<f32> = ((-(x_3301) * x_3303) + vec2<f32>(x_3305.y, x_3305.w));
            let x_3308 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3307.x, x_3308.y, x_3307.y);
            let x_3310 : vec4<f32> = u_xlat14;
            let x_3312 : vec2<f32> = (vec2<f32>(x_3310.x, x_3310.y) + vec2<f32>(2.0f, 2.0f));
            let x_3313 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3312.x, x_3312.y, x_3313.z, x_3313.w);
            let x_3315 : vec3<f32> = u_xlat39;
            let x_3317 : vec2<f32> = (vec2<f32>(x_3315.x, x_3315.z) + vec2<f32>(2.0f, 2.0f));
            let x_3318 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3318.x, x_3317.x, x_3318.z, x_3317.y);
            let x_3321 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3321 * 0.08163200318813323975f);
            let x_3324 : vec4<f32> = u_xlat13;
            let x_3326 : vec3<f32> = (vec3<f32>(x_3324.z, x_3324.x, x_3324.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3327 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3326.x, x_3326.y, x_3326.z, x_3327.w);
            let x_3329 : vec4<f32> = u_xlat14;
            let x_3331 : vec2<f32> = (vec2<f32>(x_3329.x, x_3329.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3332 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3331.x, x_3331.y, x_3332.z, x_3332.w);
            let x_3335 : f32 = u_xlat17.y;
            u_xlat16.x = x_3335;
            let x_3337 : vec2<f32> = u_xlat64;
            let x_3340 : vec2<f32> = ((vec2<f32>(x_3337.x, x_3337.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3341 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3341.x, x_3340.x, x_3341.z, x_3340.y);
            let x_3343 : vec2<f32> = u_xlat64;
            let x_3346 : vec2<f32> = ((vec2<f32>(x_3343.x, x_3343.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3347 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3346.x, x_3347.y, x_3346.y, x_3347.w);
            let x_3350 : f32 = u_xlat13.x;
            u_xlat14.y = x_3350;
            let x_3353 : f32 = u_xlat15.y;
            u_xlat14.w = x_3353;
            let x_3355 : vec4<f32> = u_xlat14;
            let x_3356 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3355 + x_3356);
            let x_3358 : vec2<f32> = u_xlat64;
            let x_3361 : vec2<f32> = ((vec2<f32>(x_3358.y, x_3358.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3362 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3362.x, x_3361.x, x_3362.z, x_3361.y);
            let x_3364 : vec2<f32> = u_xlat64;
            let x_3367 : vec2<f32> = ((vec2<f32>(x_3364.y, x_3364.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3368 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3367.x, x_3368.y, x_3367.y, x_3368.w);
            let x_3371 : f32 = u_xlat13.y;
            u_xlat15.y = x_3371;
            let x_3373 : vec4<f32> = u_xlat15;
            let x_3374 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3373 + x_3374);
            let x_3376 : vec4<f32> = u_xlat14;
            let x_3377 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3376 / x_3377);
            let x_3379 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3379 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3381 : vec4<f32> = u_xlat15;
            let x_3382 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3381 / x_3382);
            let x_3384 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3384 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3386 : vec4<f32> = u_xlat14;
            let x_3389 : vec4<f32> = x_422.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3386.w, x_3386.x, x_3386.y, x_3386.z) * vec4<f32>(x_3389.x, x_3389.x, x_3389.x, x_3389.x));
            let x_3392 : vec4<f32> = u_xlat15;
            let x_3395 : vec4<f32> = x_422.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3392.x, x_3392.w, x_3392.y, x_3392.z) * vec4<f32>(x_3395.y, x_3395.y, x_3395.y, x_3395.y));
            let x_3398 : vec4<f32> = u_xlat14;
            let x_3399 : vec3<f32> = vec3<f32>(x_3398.y, x_3398.z, x_3398.w);
            let x_3400 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3399.x, x_3400.y, x_3399.y, x_3399.z);
            let x_3403 : f32 = u_xlat15.x;
            u_xlat17.y = x_3403;
            let x_3405 : vec4<f32> = u_xlat12;
            let x_3408 : vec4<f32> = x_422.x_AdditionalShadowmapSize;
            let x_3411 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3405.x, x_3405.y, x_3405.x, x_3405.y) * vec4<f32>(x_3408.x, x_3408.y, x_3408.x, x_3408.y)) + vec4<f32>(x_3411.x, x_3411.y, x_3411.z, x_3411.y));
            let x_3414 : vec4<f32> = u_xlat12;
            let x_3417 : vec4<f32> = x_422.x_AdditionalShadowmapSize;
            let x_3420 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3414.x, x_3414.y) * vec2<f32>(x_3417.x, x_3417.y)) + vec2<f32>(x_3420.w, x_3420.y));
            let x_3424 : f32 = u_xlat17.y;
            u_xlat14.y = x_3424;
            let x_3427 : f32 = u_xlat15.z;
            u_xlat17.y = x_3427;
            let x_3429 : vec4<f32> = u_xlat12;
            let x_3432 : vec4<f32> = x_422.x_AdditionalShadowmapSize;
            let x_3435 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3429.x, x_3429.y, x_3429.x, x_3429.y) * vec4<f32>(x_3432.x, x_3432.y, x_3432.x, x_3432.y)) + vec4<f32>(x_3435.x, x_3435.y, x_3435.z, x_3435.y));
            let x_3438 : vec4<f32> = u_xlat12;
            let x_3441 : vec4<f32> = x_422.x_AdditionalShadowmapSize;
            let x_3444 : vec4<f32> = u_xlat17;
            let x_3446 : vec2<f32> = ((vec2<f32>(x_3438.x, x_3438.y) * vec2<f32>(x_3441.x, x_3441.y)) + vec2<f32>(x_3444.w, x_3444.y));
            let x_3447 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3446.x, x_3446.y, x_3447.z, x_3447.w);
            let x_3450 : f32 = u_xlat17.y;
            u_xlat14.z = x_3450;
            let x_3453 : vec4<f32> = u_xlat12;
            let x_3456 : vec4<f32> = x_422.x_AdditionalShadowmapSize;
            let x_3459 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3453.x, x_3453.y, x_3453.x, x_3453.y) * vec4<f32>(x_3456.x, x_3456.y, x_3456.x, x_3456.y)) + vec4<f32>(x_3459.x, x_3459.y, x_3459.x, x_3459.z));
            let x_3463 : f32 = u_xlat15.w;
            u_xlat17.y = x_3463;
            let x_3466 : vec4<f32> = u_xlat12;
            let x_3469 : vec4<f32> = x_422.x_AdditionalShadowmapSize;
            let x_3472 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3466.x, x_3466.y, x_3466.x, x_3466.y) * vec4<f32>(x_3469.x, x_3469.y, x_3469.x, x_3469.y)) + vec4<f32>(x_3472.x, x_3472.y, x_3472.z, x_3472.y));
            let x_3476 : vec4<f32> = u_xlat12;
            let x_3479 : vec4<f32> = x_422.x_AdditionalShadowmapSize;
            let x_3482 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3476.x, x_3476.y) * vec2<f32>(x_3479.x, x_3479.y)) + vec2<f32>(x_3482.w, x_3482.y));
            let x_3486 : f32 = u_xlat17.y;
            u_xlat14.w = x_3486;
            let x_3489 : vec4<f32> = u_xlat12;
            let x_3492 : vec4<f32> = x_422.x_AdditionalShadowmapSize;
            let x_3495 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3489.x, x_3489.y) * vec2<f32>(x_3492.x, x_3492.y)) + vec2<f32>(x_3495.x, x_3495.w));
            let x_3498 : vec4<f32> = u_xlat17;
            let x_3499 : vec3<f32> = vec3<f32>(x_3498.x, x_3498.z, x_3498.w);
            let x_3500 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3499.x, x_3500.y, x_3499.y, x_3499.z);
            let x_3502 : vec4<f32> = u_xlat12;
            let x_3505 : vec4<f32> = x_422.x_AdditionalShadowmapSize;
            let x_3508 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3502.x, x_3502.y, x_3502.x, x_3502.y) * vec4<f32>(x_3505.x, x_3505.y, x_3505.x, x_3505.y)) + vec4<f32>(x_3508.x, x_3508.y, x_3508.z, x_3508.y));
            let x_3511 : vec4<f32> = u_xlat12;
            let x_3514 : vec4<f32> = x_422.x_AdditionalShadowmapSize;
            let x_3517 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3511.x, x_3511.y) * vec2<f32>(x_3514.x, x_3514.y)) + vec2<f32>(x_3517.w, x_3517.y));
            let x_3521 : f32 = u_xlat14.x;
            u_xlat15.x = x_3521;
            let x_3523 : vec4<f32> = u_xlat12;
            let x_3526 : vec4<f32> = x_422.x_AdditionalShadowmapSize;
            let x_3529 : vec4<f32> = u_xlat15;
            let x_3531 : vec2<f32> = ((vec2<f32>(x_3523.x, x_3523.y) * vec2<f32>(x_3526.x, x_3526.y)) + vec2<f32>(x_3529.x, x_3529.y));
            let x_3532 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3531.x, x_3531.y, x_3532.z, x_3532.w);
            let x_3535 : vec4<f32> = u_xlat13;
            let x_3537 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3535.x, x_3535.x, x_3535.x, x_3535.x) * x_3537);
            let x_3540 : vec4<f32> = u_xlat13;
            let x_3542 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3540.y, x_3540.y, x_3540.y, x_3540.y) * x_3542);
            let x_3545 : vec4<f32> = u_xlat13;
            let x_3547 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3545.z, x_3545.z, x_3545.z, x_3545.z) * x_3547);
            let x_3549 : vec4<f32> = u_xlat13;
            let x_3551 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3549.w, x_3549.w, x_3549.w, x_3549.w) * x_3551);
            let x_3554 : vec4<f32> = u_xlat18;
            let x_3555 : vec2<f32> = vec2<f32>(x_3554.x, x_3554.y);
            let x_3557 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3555.x, x_3555.y, x_3557);
            let x_3564 : vec3<f32> = txVec43;
            let x_3566 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3564.xy, x_3564.z);
            u_xlat85 = x_3566;
            let x_3568 : vec4<f32> = u_xlat18;
            let x_3569 : vec2<f32> = vec2<f32>(x_3568.z, x_3568.w);
            let x_3571 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3569.x, x_3569.y, x_3571);
            let x_3578 : vec3<f32> = txVec44;
            let x_3580 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3578.xy, x_3578.z);
            u_xlat86 = x_3580;
            let x_3581 : f32 = u_xlat86;
            let x_3583 : f32 = u_xlat23.y;
            u_xlat86 = (x_3581 * x_3583);
            let x_3586 : f32 = u_xlat23.x;
            let x_3587 : f32 = u_xlat85;
            let x_3589 : f32 = u_xlat86;
            u_xlat85 = ((x_3586 * x_3587) + x_3589);
            let x_3592 : vec2<f32> = u_xlat64;
            let x_3594 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3592.x, x_3592.y, x_3594);
            let x_3601 : vec3<f32> = txVec45;
            let x_3603 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3601.xy, x_3601.z);
            u_xlat86 = x_3603;
            let x_3605 : f32 = u_xlat23.z;
            let x_3606 : f32 = u_xlat86;
            let x_3608 : f32 = u_xlat85;
            u_xlat85 = ((x_3605 * x_3606) + x_3608);
            let x_3611 : vec4<f32> = u_xlat21;
            let x_3612 : vec2<f32> = vec2<f32>(x_3611.x, x_3611.y);
            let x_3614 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3612.x, x_3612.y, x_3614);
            let x_3621 : vec3<f32> = txVec46;
            let x_3623 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3621.xy, x_3621.z);
            u_xlat86 = x_3623;
            let x_3625 : f32 = u_xlat23.w;
            let x_3626 : f32 = u_xlat86;
            let x_3628 : f32 = u_xlat85;
            u_xlat85 = ((x_3625 * x_3626) + x_3628);
            let x_3631 : vec4<f32> = u_xlat19;
            let x_3632 : vec2<f32> = vec2<f32>(x_3631.x, x_3631.y);
            let x_3634 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3632.x, x_3632.y, x_3634);
            let x_3641 : vec3<f32> = txVec47;
            let x_3643 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3641.xy, x_3641.z);
            u_xlat86 = x_3643;
            let x_3645 : f32 = u_xlat24.x;
            let x_3646 : f32 = u_xlat86;
            let x_3648 : f32 = u_xlat85;
            u_xlat85 = ((x_3645 * x_3646) + x_3648);
            let x_3651 : vec4<f32> = u_xlat19;
            let x_3652 : vec2<f32> = vec2<f32>(x_3651.z, x_3651.w);
            let x_3654 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3652.x, x_3652.y, x_3654);
            let x_3661 : vec3<f32> = txVec48;
            let x_3663 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3661.xy, x_3661.z);
            u_xlat86 = x_3663;
            let x_3665 : f32 = u_xlat24.y;
            let x_3666 : f32 = u_xlat86;
            let x_3668 : f32 = u_xlat85;
            u_xlat85 = ((x_3665 * x_3666) + x_3668);
            let x_3671 : vec4<f32> = u_xlat20;
            let x_3672 : vec2<f32> = vec2<f32>(x_3671.x, x_3671.y);
            let x_3674 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3672.x, x_3672.y, x_3674);
            let x_3681 : vec3<f32> = txVec49;
            let x_3683 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3681.xy, x_3681.z);
            u_xlat86 = x_3683;
            let x_3685 : f32 = u_xlat24.z;
            let x_3686 : f32 = u_xlat86;
            let x_3688 : f32 = u_xlat85;
            u_xlat85 = ((x_3685 * x_3686) + x_3688);
            let x_3691 : vec4<f32> = u_xlat21;
            let x_3692 : vec2<f32> = vec2<f32>(x_3691.z, x_3691.w);
            let x_3694 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3692.x, x_3692.y, x_3694);
            let x_3701 : vec3<f32> = txVec50;
            let x_3703 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3701.xy, x_3701.z);
            u_xlat86 = x_3703;
            let x_3705 : f32 = u_xlat24.w;
            let x_3706 : f32 = u_xlat86;
            let x_3708 : f32 = u_xlat85;
            u_xlat85 = ((x_3705 * x_3706) + x_3708);
            let x_3711 : vec4<f32> = u_xlat22;
            let x_3712 : vec2<f32> = vec2<f32>(x_3711.x, x_3711.y);
            let x_3714 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3712.x, x_3712.y, x_3714);
            let x_3721 : vec3<f32> = txVec51;
            let x_3723 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3721.xy, x_3721.z);
            u_xlat86 = x_3723;
            let x_3725 : f32 = u_xlat25.x;
            let x_3726 : f32 = u_xlat86;
            let x_3728 : f32 = u_xlat85;
            u_xlat85 = ((x_3725 * x_3726) + x_3728);
            let x_3731 : vec4<f32> = u_xlat22;
            let x_3732 : vec2<f32> = vec2<f32>(x_3731.z, x_3731.w);
            let x_3734 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3732.x, x_3732.y, x_3734);
            let x_3741 : vec3<f32> = txVec52;
            let x_3743 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3741.xy, x_3741.z);
            u_xlat86 = x_3743;
            let x_3745 : f32 = u_xlat25.y;
            let x_3746 : f32 = u_xlat86;
            let x_3748 : f32 = u_xlat85;
            u_xlat85 = ((x_3745 * x_3746) + x_3748);
            let x_3751 : vec2<f32> = u_xlat40;
            let x_3753 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3751.x, x_3751.y, x_3753);
            let x_3760 : vec3<f32> = txVec53;
            let x_3762 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3760.xy, x_3760.z);
            u_xlat86 = x_3762;
            let x_3764 : f32 = u_xlat25.z;
            let x_3765 : f32 = u_xlat86;
            let x_3767 : f32 = u_xlat85;
            u_xlat85 = ((x_3764 * x_3765) + x_3767);
            let x_3770 : vec2<f32> = u_xlat72;
            let x_3772 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3770.x, x_3770.y, x_3772);
            let x_3779 : vec3<f32> = txVec54;
            let x_3781 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3779.xy, x_3779.z);
            u_xlat86 = x_3781;
            let x_3783 : f32 = u_xlat25.w;
            let x_3784 : f32 = u_xlat86;
            let x_3786 : f32 = u_xlat85;
            u_xlat85 = ((x_3783 * x_3784) + x_3786);
            let x_3789 : vec4<f32> = u_xlat17;
            let x_3790 : vec2<f32> = vec2<f32>(x_3789.x, x_3789.y);
            let x_3792 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3790.x, x_3790.y, x_3792);
            let x_3799 : vec3<f32> = txVec55;
            let x_3801 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3799.xy, x_3799.z);
            u_xlat86 = x_3801;
            let x_3803 : f32 = u_xlat13.x;
            let x_3804 : f32 = u_xlat86;
            let x_3806 : f32 = u_xlat85;
            u_xlat85 = ((x_3803 * x_3804) + x_3806);
            let x_3809 : vec4<f32> = u_xlat17;
            let x_3810 : vec2<f32> = vec2<f32>(x_3809.z, x_3809.w);
            let x_3812 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3810.x, x_3810.y, x_3812);
            let x_3819 : vec3<f32> = txVec56;
            let x_3821 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3819.xy, x_3819.z);
            u_xlat86 = x_3821;
            let x_3823 : f32 = u_xlat13.y;
            let x_3824 : f32 = u_xlat86;
            let x_3826 : f32 = u_xlat85;
            u_xlat85 = ((x_3823 * x_3824) + x_3826);
            let x_3829 : vec2<f32> = u_xlat67;
            let x_3831 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3829.x, x_3829.y, x_3831);
            let x_3838 : vec3<f32> = txVec57;
            let x_3840 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3838.xy, x_3838.z);
            u_xlat86 = x_3840;
            let x_3842 : f32 = u_xlat13.z;
            let x_3843 : f32 = u_xlat86;
            let x_3845 : f32 = u_xlat85;
            u_xlat85 = ((x_3842 * x_3843) + x_3845);
            let x_3848 : vec4<f32> = u_xlat12;
            let x_3849 : vec2<f32> = vec2<f32>(x_3848.x, x_3848.y);
            let x_3851 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3849.x, x_3849.y, x_3851);
            let x_3858 : vec3<f32> = txVec58;
            let x_3860 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3858.xy, x_3858.z);
            u_xlat86 = x_3860;
            let x_3862 : f32 = u_xlat13.w;
            let x_3863 : f32 = u_xlat86;
            let x_3865 : f32 = u_xlat85;
            u_xlat84 = ((x_3862 * x_3863) + x_3865);
          }
        }
      } else {
        let x_3869 : vec4<f32> = u_xlat11;
        let x_3870 : vec2<f32> = vec2<f32>(x_3869.x, x_3869.y);
        let x_3872 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3870.x, x_3870.y, x_3872);
        let x_3879 : vec3<f32> = txVec59;
        let x_3881 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3879.xy, x_3879.z);
        u_xlat84 = x_3881;
      }
      let x_3882 : i32 = u_xlati81;
      let x_3884 : f32 = x_422.x_AdditionalShadowParams[x_3882].x;
      u_xlat85 = (1.0f + -(x_3884));
      let x_3887 : f32 = u_xlat84;
      let x_3888 : i32 = u_xlati81;
      let x_3890 : f32 = x_422.x_AdditionalShadowParams[x_3888].x;
      let x_3892 : f32 = u_xlat85;
      u_xlat84 = ((x_3887 * x_3890) + x_3892);
      let x_3895 : f32 = u_xlat11.z;
      u_xlatb85 = (0.0f >= x_3895);
      let x_3899 : f32 = u_xlat11.z;
      u_xlatb86 = (x_3899 >= 1.0f);
      let x_3901 : bool = u_xlatb85;
      let x_3902 : bool = u_xlatb86;
      u_xlatb85 = (x_3901 | x_3902);
      let x_3904 : bool = u_xlatb85;
      let x_3905 : f32 = u_xlat84;
      u_xlat84 = select(x_3905, 1.0f, x_3904);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_3908 : f32 = u_xlat84;
    u_xlat85 = (-(x_3908) + 1.0f);
    let x_3911 : f32 = u_xlat52;
    let x_3912 : f32 = u_xlat85;
    let x_3914 : f32 = u_xlat84;
    u_xlat84 = ((x_3911 * x_3912) + x_3914);
    let x_3917 : i32 = u_xlati81;
    u_xlati85 = (1i << bitcast<u32>((x_3917 & 31i)));
    let x_3921 : i32 = u_xlati85;
    let x_3924 : f32 = x_2004.x_AdditionalLightsCookieEnableBits;
    u_xlati85 = bitcast<i32>((bitcast<u32>(x_3921) & bitcast<u32>(x_3924)));
    let x_3928 : i32 = u_xlati85;
    if ((x_3928 != 0i)) {
      let x_3932 : i32 = u_xlati81;
      let x_3934 : f32 = x_2004.x_AdditionalLightsLightTypes[x_3932].el;
      u_xlati85 = i32(x_3934);
      let x_3937 : i32 = u_xlati85;
      u_xlati86 = select(1i, 0i, (x_3937 != 0i));
      let x_3941 : i32 = u_xlati81;
      u_xlati87 = (x_3941 << bitcast<u32>(2i));
      let x_3943 : i32 = u_xlati86;
      if ((x_3943 != 0i)) {
        let x_3947 : vec3<f32> = vs_INTERP7;
        let x_3949 : i32 = u_xlati87;
        let x_3952 : i32 = u_xlati87;
        let x_3956 : vec4<f32> = x_2004.x_AdditionalLightsWorldToLights[((x_3949 + 1i) / 4i)][((x_3952 + 1i) % 4i)];
        let x_3958 : vec3<f32> = (vec3<f32>(x_3947.y, x_3947.y, x_3947.y) * vec3<f32>(x_3956.x, x_3956.y, x_3956.w));
        let x_3959 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3958.x, x_3958.y, x_3958.z, x_3959.w);
        let x_3961 : i32 = u_xlati87;
        let x_3963 : i32 = u_xlati87;
        let x_3966 : vec4<f32> = x_2004.x_AdditionalLightsWorldToLights[(x_3961 / 4i)][(x_3963 % 4i)];
        let x_3968 : vec3<f32> = vs_INTERP7;
        let x_3971 : vec4<f32> = u_xlat11;
        let x_3973 : vec3<f32> = ((vec3<f32>(x_3966.x, x_3966.y, x_3966.w) * vec3<f32>(x_3968.x, x_3968.x, x_3968.x)) + vec3<f32>(x_3971.x, x_3971.y, x_3971.z));
        let x_3974 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3973.x, x_3973.y, x_3973.z, x_3974.w);
        let x_3976 : i32 = u_xlati87;
        let x_3979 : i32 = u_xlati87;
        let x_3983 : vec4<f32> = x_2004.x_AdditionalLightsWorldToLights[((x_3976 + 2i) / 4i)][((x_3979 + 2i) % 4i)];
        let x_3985 : vec3<f32> = vs_INTERP7;
        let x_3988 : vec4<f32> = u_xlat11;
        let x_3990 : vec3<f32> = ((vec3<f32>(x_3983.x, x_3983.y, x_3983.w) * vec3<f32>(x_3985.z, x_3985.z, x_3985.z)) + vec3<f32>(x_3988.x, x_3988.y, x_3988.z));
        let x_3991 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3990.x, x_3990.y, x_3990.z, x_3991.w);
        let x_3993 : vec4<f32> = u_xlat11;
        let x_3995 : i32 = u_xlati87;
        let x_3998 : i32 = u_xlati87;
        let x_4002 : vec4<f32> = x_2004.x_AdditionalLightsWorldToLights[((x_3995 + 3i) / 4i)][((x_3998 + 3i) % 4i)];
        let x_4004 : vec3<f32> = (vec3<f32>(x_3993.x, x_3993.y, x_3993.z) + vec3<f32>(x_4002.x, x_4002.y, x_4002.w));
        let x_4005 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4004.x, x_4004.y, x_4004.z, x_4005.w);
        let x_4007 : vec4<f32> = u_xlat11;
        let x_4009 : vec4<f32> = u_xlat11;
        let x_4011 : vec2<f32> = (vec2<f32>(x_4007.x, x_4007.y) / vec2<f32>(x_4009.z, x_4009.z));
        let x_4012 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4011.x, x_4011.y, x_4012.z, x_4012.w);
        let x_4014 : vec4<f32> = u_xlat11;
        let x_4017 : vec2<f32> = ((vec2<f32>(x_4014.x, x_4014.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_4018 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4017.x, x_4017.y, x_4018.z, x_4018.w);
        let x_4020 : vec4<f32> = u_xlat11;
        let x_4024 : vec2<f32> = clamp(vec2<f32>(x_4020.x, x_4020.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_4025 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4024.x, x_4024.y, x_4025.z, x_4025.w);
        let x_4027 : i32 = u_xlati81;
        let x_4029 : vec4<f32> = x_2004.x_AdditionalLightsCookieAtlasUVRects[x_4027];
        let x_4031 : vec4<f32> = u_xlat11;
        let x_4034 : i32 = u_xlati81;
        let x_4036 : vec4<f32> = x_2004.x_AdditionalLightsCookieAtlasUVRects[x_4034];
        let x_4038 : vec2<f32> = ((vec2<f32>(x_4029.x, x_4029.y) * vec2<f32>(x_4031.x, x_4031.y)) + vec2<f32>(x_4036.z, x_4036.w));
        let x_4039 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4038.x, x_4038.y, x_4039.z, x_4039.w);
      } else {
        let x_4042 : i32 = u_xlati85;
        u_xlatb85 = (x_4042 == 1i);
        let x_4044 : bool = u_xlatb85;
        u_xlati85 = select(0i, 1i, x_4044);
        let x_4046 : i32 = u_xlati85;
        if ((x_4046 != 0i)) {
          let x_4051 : vec3<f32> = vs_INTERP7;
          let x_4053 : i32 = u_xlati87;
          let x_4056 : i32 = u_xlati87;
          let x_4060 : vec4<f32> = x_2004.x_AdditionalLightsWorldToLights[((x_4053 + 1i) / 4i)][((x_4056 + 1i) % 4i)];
          u_xlat63 = (vec2<f32>(x_4051.y, x_4051.y) * vec2<f32>(x_4060.x, x_4060.y));
          let x_4063 : i32 = u_xlati87;
          let x_4065 : i32 = u_xlati87;
          let x_4068 : vec4<f32> = x_2004.x_AdditionalLightsWorldToLights[(x_4063 / 4i)][(x_4065 % 4i)];
          let x_4070 : vec3<f32> = vs_INTERP7;
          let x_4073 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4068.x, x_4068.y) * vec2<f32>(x_4070.x, x_4070.x)) + x_4073);
          let x_4075 : i32 = u_xlati87;
          let x_4078 : i32 = u_xlati87;
          let x_4082 : vec4<f32> = x_2004.x_AdditionalLightsWorldToLights[((x_4075 + 2i) / 4i)][((x_4078 + 2i) % 4i)];
          let x_4084 : vec3<f32> = vs_INTERP7;
          let x_4087 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4082.x, x_4082.y) * vec2<f32>(x_4084.z, x_4084.z)) + x_4087);
          let x_4089 : vec2<f32> = u_xlat63;
          let x_4090 : i32 = u_xlati87;
          let x_4093 : i32 = u_xlati87;
          let x_4097 : vec4<f32> = x_2004.x_AdditionalLightsWorldToLights[((x_4090 + 3i) / 4i)][((x_4093 + 3i) % 4i)];
          u_xlat63 = (x_4089 + vec2<f32>(x_4097.x, x_4097.y));
          let x_4100 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4100 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4103 : vec2<f32> = u_xlat63;
          u_xlat63 = fract(x_4103);
          let x_4105 : i32 = u_xlati81;
          let x_4107 : vec4<f32> = x_2004.x_AdditionalLightsCookieAtlasUVRects[x_4105];
          let x_4109 : vec2<f32> = u_xlat63;
          let x_4111 : i32 = u_xlati81;
          let x_4113 : vec4<f32> = x_2004.x_AdditionalLightsCookieAtlasUVRects[x_4111];
          let x_4115 : vec2<f32> = ((vec2<f32>(x_4107.x, x_4107.y) * x_4109) + vec2<f32>(x_4113.z, x_4113.w));
          let x_4116 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4115.x, x_4115.y, x_4116.z, x_4116.w);
        } else {
          let x_4119 : vec3<f32> = vs_INTERP7;
          let x_4121 : i32 = u_xlati87;
          let x_4124 : i32 = u_xlati87;
          let x_4128 : vec4<f32> = x_2004.x_AdditionalLightsWorldToLights[((x_4121 + 1i) / 4i)][((x_4124 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4119.y, x_4119.y, x_4119.y, x_4119.y) * x_4128);
          let x_4130 : i32 = u_xlati87;
          let x_4132 : i32 = u_xlati87;
          let x_4135 : vec4<f32> = x_2004.x_AdditionalLightsWorldToLights[(x_4130 / 4i)][(x_4132 % 4i)];
          let x_4136 : vec3<f32> = vs_INTERP7;
          let x_4139 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4135 * vec4<f32>(x_4136.x, x_4136.x, x_4136.x, x_4136.x)) + x_4139);
          let x_4141 : i32 = u_xlati87;
          let x_4144 : i32 = u_xlati87;
          let x_4148 : vec4<f32> = x_2004.x_AdditionalLightsWorldToLights[((x_4141 + 2i) / 4i)][((x_4144 + 2i) % 4i)];
          let x_4149 : vec3<f32> = vs_INTERP7;
          let x_4152 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4148 * vec4<f32>(x_4149.z, x_4149.z, x_4149.z, x_4149.z)) + x_4152);
          let x_4154 : vec4<f32> = u_xlat12;
          let x_4155 : i32 = u_xlati87;
          let x_4158 : i32 = u_xlati87;
          let x_4162 : vec4<f32> = x_2004.x_AdditionalLightsWorldToLights[((x_4155 + 3i) / 4i)][((x_4158 + 3i) % 4i)];
          u_xlat12 = (x_4154 + x_4162);
          let x_4164 : vec4<f32> = u_xlat12;
          let x_4166 : vec4<f32> = u_xlat12;
          let x_4168 : vec3<f32> = (vec3<f32>(x_4164.x, x_4164.y, x_4164.z) / vec3<f32>(x_4166.w, x_4166.w, x_4166.w));
          let x_4169 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4168.x, x_4168.y, x_4168.z, x_4169.w);
          let x_4171 : vec4<f32> = u_xlat12;
          let x_4173 : vec4<f32> = u_xlat12;
          u_xlat85 = dot(vec3<f32>(x_4171.x, x_4171.y, x_4171.z), vec3<f32>(x_4173.x, x_4173.y, x_4173.z));
          let x_4176 : f32 = u_xlat85;
          u_xlat85 = inverseSqrt(x_4176);
          let x_4178 : f32 = u_xlat85;
          let x_4180 : vec4<f32> = u_xlat12;
          let x_4182 : vec3<f32> = (vec3<f32>(x_4178, x_4178, x_4178) * vec3<f32>(x_4180.x, x_4180.y, x_4180.z));
          let x_4183 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4182.x, x_4182.y, x_4182.z, x_4183.w);
          let x_4185 : vec4<f32> = u_xlat12;
          u_xlat85 = dot(abs(vec3<f32>(x_4185.x, x_4185.y, x_4185.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4189 : f32 = u_xlat85;
          u_xlat85 = max(x_4189, 0.00000099999999747524f);
          let x_4192 : f32 = u_xlat85;
          u_xlat85 = (1.0f / x_4192);
          let x_4194 : f32 = u_xlat85;
          let x_4196 : vec4<f32> = u_xlat12;
          let x_4198 : vec3<f32> = (vec3<f32>(x_4194, x_4194, x_4194) * vec3<f32>(x_4196.z, x_4196.x, x_4196.y));
          let x_4199 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4198.x, x_4198.y, x_4198.z, x_4199.w);
          let x_4202 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4202);
          let x_4206 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4206, 0.0f, 1.0f);
          let x_4210 : vec4<f32> = u_xlat13;
          let x_4212 : vec4<bool> = (vec4<f32>(x_4210.y, x_4210.z, x_4210.y, x_4210.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb63 = vec2<bool>(x_4212.x, x_4212.y);
          let x_4215 : bool = u_xlatb63.x;
          if (x_4215) {
            let x_4220 : f32 = u_xlat13.x;
            x_4216 = x_4220;
          } else {
            let x_4223 : f32 = u_xlat13.x;
            x_4216 = -(x_4223);
          }
          let x_4225 : f32 = x_4216;
          u_xlat63.x = x_4225;
          let x_4228 : bool = u_xlatb63.y;
          if (x_4228) {
            let x_4233 : f32 = u_xlat13.x;
            x_4229 = x_4233;
          } else {
            let x_4236 : f32 = u_xlat13.x;
            x_4229 = -(x_4236);
          }
          let x_4238 : f32 = x_4229;
          u_xlat63.y = x_4238;
          let x_4240 : vec4<f32> = u_xlat12;
          let x_4242 : f32 = u_xlat85;
          let x_4245 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4240.x, x_4240.y) * vec2<f32>(x_4242, x_4242)) + x_4245);
          let x_4247 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4247 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4250 : vec2<f32> = u_xlat63;
          u_xlat63 = clamp(x_4250, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4254 : i32 = u_xlati81;
          let x_4256 : vec4<f32> = x_2004.x_AdditionalLightsCookieAtlasUVRects[x_4254];
          let x_4258 : vec2<f32> = u_xlat63;
          let x_4260 : i32 = u_xlati81;
          let x_4262 : vec4<f32> = x_2004.x_AdditionalLightsCookieAtlasUVRects[x_4260];
          let x_4264 : vec2<f32> = ((vec2<f32>(x_4256.x, x_4256.y) * x_4258) + vec2<f32>(x_4262.z, x_4262.w));
          let x_4265 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4264.x, x_4264.y, x_4265.z, x_4265.w);
        }
      }
      let x_4272 : vec4<f32> = u_xlat11;
      let x_4274 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4272.x, x_4272.y), 0.0f);
      u_xlat11 = x_4274;
      let x_4276 : bool = u_xlatb27.y;
      if (x_4276) {
        let x_4281 : f32 = u_xlat11.w;
        x_4277 = x_4281;
      } else {
        let x_4284 : f32 = u_xlat11.x;
        x_4277 = x_4284;
      }
      let x_4285 : f32 = x_4277;
      u_xlat85 = x_4285;
      let x_4287 : bool = u_xlatb27.x;
      if (x_4287) {
        let x_4291 : vec4<f32> = u_xlat11;
        x_4288 = vec3<f32>(x_4291.x, x_4291.y, x_4291.z);
      } else {
        let x_4294 : f32 = u_xlat85;
        x_4288 = vec3<f32>(x_4294, x_4294, x_4294);
      }
      let x_4296 : vec3<f32> = x_4288;
      let x_4297 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4296.x, x_4296.y, x_4296.z, x_4297.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4303 : vec4<f32> = u_xlat11;
    let x_4305 : i32 = u_xlati81;
    let x_4307 : vec4<f32> = x_2498.x_AdditionalLightsColor[x_4305];
    let x_4309 : vec3<f32> = (vec3<f32>(x_4303.x, x_4303.y, x_4303.z) * vec3<f32>(x_4307.x, x_4307.y, x_4307.z));
    let x_4310 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4309.x, x_4309.y, x_4309.z, x_4310.w);
    let x_4312 : f32 = u_xlat82;
    let x_4313 : f32 = u_xlat84;
    u_xlat81 = (x_4312 * x_4313);
    let x_4315 : vec4<f32> = u_xlat3;
    let x_4317 : vec4<f32> = u_xlat10;
    u_xlat82 = dot(vec3<f32>(x_4315.x, x_4315.y, x_4315.z), vec3<f32>(x_4317.x, x_4317.y, x_4317.z));
    let x_4320 : f32 = u_xlat82;
    u_xlat82 = clamp(x_4320, 0.0f, 1.0f);
    let x_4322 : f32 = u_xlat81;
    let x_4323 : f32 = u_xlat82;
    u_xlat81 = (x_4322 * x_4323);
    let x_4325 : f32 = u_xlat81;
    let x_4327 : vec4<f32> = u_xlat11;
    let x_4329 : vec3<f32> = (vec3<f32>(x_4325, x_4325, x_4325) * vec3<f32>(x_4327.x, x_4327.y, x_4327.z));
    let x_4330 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4329.x, x_4329.y, x_4329.z, x_4330.w);
    let x_4332 : vec4<f32> = u_xlat9;
    let x_4334 : f32 = u_xlat83;
    let x_4337 : vec3<f32> = u_xlat4;
    let x_4338 : vec3<f32> = ((vec3<f32>(x_4332.x, x_4332.y, x_4332.z) * vec3<f32>(x_4334, x_4334, x_4334)) + x_4337);
    let x_4339 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4338.x, x_4338.y, x_4338.z, x_4339.w);
    let x_4341 : vec4<f32> = u_xlat9;
    let x_4343 : vec4<f32> = u_xlat9;
    u_xlat81 = dot(vec3<f32>(x_4341.x, x_4341.y, x_4341.z), vec3<f32>(x_4343.x, x_4343.y, x_4343.z));
    let x_4346 : f32 = u_xlat81;
    u_xlat81 = max(x_4346, 1.17549435e-38f);
    let x_4348 : f32 = u_xlat81;
    u_xlat81 = inverseSqrt(x_4348);
    let x_4350 : f32 = u_xlat81;
    let x_4352 : vec4<f32> = u_xlat9;
    let x_4354 : vec3<f32> = (vec3<f32>(x_4350, x_4350, x_4350) * vec3<f32>(x_4352.x, x_4352.y, x_4352.z));
    let x_4355 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4354.x, x_4354.y, x_4354.z, x_4355.w);
    let x_4357 : vec4<f32> = u_xlat3;
    let x_4359 : vec4<f32> = u_xlat9;
    u_xlat81 = dot(vec3<f32>(x_4357.x, x_4357.y, x_4357.z), vec3<f32>(x_4359.x, x_4359.y, x_4359.z));
    let x_4362 : f32 = u_xlat81;
    u_xlat81 = clamp(x_4362, 0.0f, 1.0f);
    let x_4364 : vec4<f32> = u_xlat10;
    let x_4366 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_4364.x, x_4364.y, x_4364.z), vec3<f32>(x_4366.x, x_4366.y, x_4366.z));
    let x_4369 : f32 = u_xlat82;
    u_xlat82 = clamp(x_4369, 0.0f, 1.0f);
    let x_4371 : f32 = u_xlat81;
    let x_4372 : f32 = u_xlat81;
    u_xlat81 = (x_4371 * x_4372);
    let x_4374 : f32 = u_xlat81;
    let x_4376 : f32 = u_xlat0.x;
    u_xlat81 = ((x_4374 * x_4376) + 1.00001001358032226562f);
    let x_4379 : f32 = u_xlat82;
    let x_4380 : f32 = u_xlat82;
    u_xlat82 = (x_4379 * x_4380);
    let x_4382 : f32 = u_xlat81;
    let x_4383 : f32 = u_xlat81;
    u_xlat81 = (x_4382 * x_4383);
    let x_4385 : f32 = u_xlat82;
    u_xlat82 = max(x_4385, 0.10000000149011611938f);
    let x_4387 : f32 = u_xlat81;
    let x_4388 : f32 = u_xlat82;
    u_xlat81 = (x_4387 * x_4388);
    let x_4391 : f32 = u_xlat1.x;
    let x_4392 : f32 = u_xlat81;
    u_xlat81 = (x_4391 * x_4392);
    let x_4394 : f32 = u_xlat80;
    let x_4395 : f32 = u_xlat81;
    u_xlat81 = (x_4394 / x_4395);
    let x_4397 : vec3<f32> = u_xlat2;
    let x_4398 : f32 = u_xlat81;
    let x_4401 : vec4<f32> = u_xlat6;
    let x_4403 : vec3<f32> = ((x_4397 * vec3<f32>(x_4398, x_4398, x_4398)) + vec3<f32>(x_4401.x, x_4401.y, x_4401.z));
    let x_4404 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4403.x, x_4403.y, x_4403.z, x_4404.w);
    let x_4406 : vec4<f32> = u_xlat9;
    let x_4408 : vec4<f32> = u_xlat11;
    let x_4411 : vec4<f32> = u_xlat8;
    let x_4413 : vec3<f32> = ((vec3<f32>(x_4406.x, x_4406.y, x_4406.z) * vec3<f32>(x_4408.x, x_4408.y, x_4408.z)) + vec3<f32>(x_4411.x, x_4411.y, x_4411.z));
    let x_4414 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4413.x, x_4413.y, x_4413.z, x_4414.w);

    continuing {
      let x_4416 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4416 + bitcast<u32>(1i));
    }
  }
  let x_4418 : vec3<f32> = u_xlat5;
  let x_4419 : f32 = u_xlat78;
  let x_4422 : vec4<f32> = u_xlat7;
  let x_4424 : vec3<f32> = ((x_4418 * vec3<f32>(x_4419, x_4419, x_4419)) + vec3<f32>(x_4422.x, x_4422.y, x_4422.z));
  let x_4425 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4424.x, x_4424.y, x_4424.z, x_4425.w);
  let x_4429 : vec4<f32> = u_xlat8;
  let x_4431 : vec4<f32> = u_xlat0;
  let x_4433 : vec3<f32> = (vec3<f32>(x_4429.x, x_4429.y, x_4429.z) + vec3<f32>(x_4431.x, x_4431.y, x_4431.z));
  let x_4434 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4433.x, x_4433.y, x_4433.z, x_4434.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_INTERP5_param : vec4<f32>, @location(0) vs_INTERP4_param : vec4<f32>, @location(3) vs_INTERP8_param : vec3<f32>, @location(2) vs_INTERP7_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP7 = vs_INTERP7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


