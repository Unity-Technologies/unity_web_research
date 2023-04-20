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

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var samplerSamplerState_Trilinear_Clamp : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(4) var x_MRLL : texture_2d<f32>;

var<private> u_xlat2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_54 : UnityPerMaterial;

var<private> u_xlat51 : f32;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlatb4 : vec3<bool>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(5) var x_BumpMap : texture_2d<f32>;

var<private> u_xlat25 : vec2<f32>;

var<private> u_xlatb26 : vec3<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_270 : UnityPerDraw;

var<private> u_xlat26 : vec3<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> u_xlatb25 : bool;

var<private> vs_INTERP7 : vec3<f32>;

var<private> u_xlat50 : f32;

@group(1) @binding(3) var<uniform> x_422 : LightShadows;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlatb5 : vec4<bool>;

var<private> u_xlatu25 : u32;

var<private> u_xlati25 : i32;

var<private> u_xlat77 : f32;

var<private> u_xlat75 : f32;

var<private> u_xlatb78 : bool;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat78 : f32;

var<private> u_xlatb79 : bool;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat79 : f32;

var<private> u_xlat80 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat65 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlatb51 : bool;

var<private> u_xlatb76 : bool;

var<private> u_xlat76 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu79 : u32;

var<private> u_xlati80 : i32;

var<private> u_xlati79 : i32;

@group(1) @binding(1) var<uniform> x_2359 : AdditionalLights;

var<private> u_xlat82 : f32;

var<private> u_xlati82 : i32;

var<private> u_xlatb83 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat84 : f32;

var<private> u_xlat83 : f32;

var<private> u_xlatb82 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat85 : f32;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat38 : vec2<f32>;

var<private> u_xlat69 : vec2<f32>;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlatb84 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu78 : u32;

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
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2494 : f32;
  var x_2504 : f32;
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
  u_xlat51 = (x_74 + x_77);
  let x_79 : f32 = u_xlat51;
  u_xlat51 = clamp(x_79, 0.0f, 1.0f);
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
  let x_172 : f32 = u_xlat51;
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
  u_xlat25 = ((vec2<f32>(x_220.x, x_220.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_228 : vec2<f32> = u_xlat25;
  let x_229 : vec2<f32> = u_xlat25;
  u_xlat51 = dot(x_228, x_229);
  let x_231 : f32 = u_xlat51;
  u_xlat51 = min(x_231, 1.0f);
  let x_233 : f32 = u_xlat51;
  u_xlat51 = (-(x_233) + 1.0f);
  let x_236 : f32 = u_xlat51;
  u_xlat51 = sqrt(x_236);
  let x_238 : f32 = u_xlat51;
  u_xlat51 = max(x_238, 0.0000000000000001f);
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
  u_xlatb26.x = (0.0f < x_264);
  let x_272 : f32 = x_270.unity_WorldTransformParams.w;
  u_xlatb26.z = (x_272 >= 0.0f);
  let x_277 : bool = u_xlatb26.x;
  u_xlat26.x = select(-1.0f, 1.0f, x_277);
  let x_281 : bool = u_xlatb26.z;
  u_xlat26.z = select(-1.0f, 1.0f, x_281);
  let x_285 : f32 = u_xlat26.z;
  let x_287 : f32 = u_xlat26.x;
  u_xlat26.x = (x_285 * x_287);
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
  let x_310 : vec3<f32> = u_xlat26;
  let x_312 : vec4<f32> = u_xlat3;
  let x_314 : vec3<f32> = (vec3<f32>(x_310.x, x_310.x, x_310.x) * vec3<f32>(x_312.x, x_312.y, x_312.z));
  let x_315 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
  let x_317 : vec2<f32> = u_xlat25;
  let x_319 : vec4<f32> = u_xlat3;
  let x_321 : vec3<f32> = (vec3<f32>(x_317.y, x_317.y, x_317.y) * vec3<f32>(x_319.x, x_319.y, x_319.z));
  let x_322 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_324 : vec2<f32> = u_xlat25;
  let x_326 : vec4<f32> = vs_INTERP4;
  let x_329 : vec4<f32> = u_xlat3;
  let x_331 : vec3<f32> = ((vec3<f32>(x_324.x, x_324.x, x_324.x) * vec3<f32>(x_326.x, x_326.y, x_326.z)) + vec3<f32>(x_329.x, x_329.y, x_329.z));
  let x_332 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_334 : f32 = u_xlat51;
  let x_336 : vec3<f32> = vs_INTERP8;
  let x_338 : vec4<f32> = u_xlat3;
  u_xlat26 = ((vec3<f32>(x_334, x_334, x_334) * x_336) + vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : vec3<f32> = u_xlat26;
  let x_342 : vec3<f32> = u_xlat26;
  u_xlat25.x = dot(x_341, x_342);
  let x_346 : f32 = u_xlat25.x;
  u_xlat25.x = inverseSqrt(x_346);
  let x_349 : vec2<f32> = u_xlat25;
  let x_351 : vec3<f32> = u_xlat26;
  let x_352 : vec3<f32> = (vec3<f32>(x_349.x, x_349.x, x_349.x) * x_351);
  let x_353 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_358 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb25 = (x_358 == 0.0f);
  let x_361 : vec3<f32> = vs_INTERP7;
  let x_365 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat26 = (-(x_361) + x_365);
  let x_368 : vec3<f32> = u_xlat26;
  let x_369 : vec3<f32> = u_xlat26;
  u_xlat50 = dot(x_368, x_369);
  let x_371 : f32 = u_xlat50;
  u_xlat50 = inverseSqrt(x_371);
  let x_373 : f32 = u_xlat50;
  let x_375 : vec3<f32> = u_xlat26;
  u_xlat26 = (vec3<f32>(x_373, x_373, x_373) * x_375);
  let x_377 : bool = u_xlatb25;
  if (x_377) {
    let x_383 : f32 = u_xlat26.x;
    x_379 = x_383;
  } else {
    let x_387 : f32 = x_29.unity_MatrixV[0i].z;
    x_379 = x_387;
  }
  let x_388 : f32 = x_379;
  u_xlat4.x = x_388;
  let x_390 : bool = u_xlatb25;
  if (x_390) {
    let x_395 : f32 = u_xlat26.y;
    x_391 = x_395;
  } else {
    let x_399 : f32 = x_29.unity_MatrixV[1i].z;
    x_391 = x_399;
  }
  let x_400 : f32 = x_391;
  u_xlat4.y = x_400;
  let x_402 : bool = u_xlatb25;
  if (x_402) {
    let x_407 : f32 = u_xlat26.z;
    x_403 = x_407;
  } else {
    let x_411 : f32 = x_29.unity_MatrixV[2i].z;
    x_403 = x_411;
  }
  let x_412 : f32 = x_403;
  u_xlat4.z = x_412;
  let x_414 : vec3<f32> = vs_INTERP7;
  let x_424 : vec4<f32> = x_422.x_CascadeShadowSplitSpheres0;
  u_xlat26 = (x_414 + -(vec3<f32>(x_424.x, x_424.y, x_424.z)));
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
  let x_453 : vec3<f32> = u_xlat26;
  let x_454 : vec3<f32> = u_xlat26;
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
  u_xlat26.x = select(-0.0f, -1.0f, x_496);
  let x_501 : bool = u_xlatb5.y;
  u_xlat26.y = select(-0.0f, -1.0f, x_501);
  let x_505 : bool = u_xlatb5.z;
  u_xlat26.z = select(-0.0f, -1.0f, x_505);
  let x_508 : vec3<f32> = u_xlat26;
  let x_509 : vec4<f32> = u_xlat6;
  u_xlat26 = (x_508 + vec3<f32>(x_509.y, x_509.z, x_509.w));
  let x_512 : vec3<f32> = u_xlat26;
  let x_514 : vec3<f32> = max(x_512, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_515 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_515.x, x_514.x, x_514.y, x_514.z);
  let x_517 : vec4<f32> = u_xlat6;
  u_xlat25.x = dot(x_517, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_524 : f32 = u_xlat25.x;
  u_xlat25.x = (-(x_524) + 4.0f);
  let x_531 : f32 = u_xlat25.x;
  u_xlatu25 = u32(x_531);
  let x_535 : u32 = u_xlatu25;
  u_xlati25 = (bitcast<i32>(x_535) << bitcast<u32>(2i));
  let x_538 : vec3<f32> = vs_INTERP7;
  let x_540 : i32 = u_xlati25;
  let x_543 : i32 = u_xlati25;
  let x_547 : vec4<f32> = x_422.x_MainLightWorldToShadow[((x_540 + 1i) / 4i)][((x_543 + 1i) % 4i)];
  u_xlat26 = (vec3<f32>(x_538.y, x_538.y, x_538.y) * vec3<f32>(x_547.x, x_547.y, x_547.z));
  let x_550 : i32 = u_xlati25;
  let x_552 : i32 = u_xlati25;
  let x_555 : vec4<f32> = x_422.x_MainLightWorldToShadow[(x_550 / 4i)][(x_552 % 4i)];
  let x_557 : vec3<f32> = vs_INTERP7;
  let x_560 : vec3<f32> = u_xlat26;
  u_xlat26 = ((vec3<f32>(x_555.x, x_555.y, x_555.z) * vec3<f32>(x_557.x, x_557.x, x_557.x)) + x_560);
  let x_562 : i32 = u_xlati25;
  let x_565 : i32 = u_xlati25;
  let x_569 : vec4<f32> = x_422.x_MainLightWorldToShadow[((x_562 + 2i) / 4i)][((x_565 + 2i) % 4i)];
  let x_571 : vec3<f32> = vs_INTERP7;
  let x_574 : vec3<f32> = u_xlat26;
  u_xlat26 = ((vec3<f32>(x_569.x, x_569.y, x_569.z) * vec3<f32>(x_571.z, x_571.z, x_571.z)) + x_574);
  let x_576 : vec3<f32> = u_xlat26;
  let x_577 : i32 = u_xlati25;
  let x_580 : i32 = u_xlati25;
  let x_584 : vec4<f32> = x_422.x_MainLightWorldToShadow[((x_577 + 3i) / 4i)][((x_580 + 3i) % 4i)];
  u_xlat26 = (x_576 + vec3<f32>(x_584.x, x_584.y, x_584.z));
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
  u_xlat25.x = (x_630 * x_632);
  let x_636 : f32 = u_xlat3.x;
  let x_638 : f32 = u_xlat3.x;
  let x_641 : f32 = u_xlat25.x;
  u_xlat25.x = ((x_636 * x_638) + -(x_641));
  let x_647 : vec4<f32> = x_270.unity_SHC;
  let x_649 : vec2<f32> = u_xlat25;
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
  u_xlat25.x = ((-(x_664) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_671 : f32 = u_xlat25.x;
  u_xlat50 = (-(x_671) + 1.0f);
  let x_674 : vec2<f32> = u_xlat25;
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
  u_xlat25.x = (x_697 * x_699);
  let x_704 : f32 = u_xlat25.x;
  let x_706 : f32 = u_xlat25.x;
  u_xlat77 = (x_704 * x_706);
  let x_708 : f32 = u_xlat50;
  let x_710 : f32 = u_xlat1.x;
  u_xlat50 = (x_708 + x_710);
  let x_712 : f32 = u_xlat50;
  u_xlat50 = min(x_712, 1.0f);
  let x_715 : f32 = u_xlat25.x;
  u_xlat1.x = ((x_715 * 4.0f) + 2.0f);
  let x_721 : f32 = u_xlat0.w;
  u_xlat75 = min(x_721, 1.0f);
  let x_726 : f32 = x_422.x_MainLightShadowParams.y;
  u_xlatb78 = (0.0f < x_726);
  let x_728 : bool = u_xlatb78;
  if (x_728) {
    let x_732 : f32 = x_422.x_MainLightShadowParams.y;
    u_xlatb78 = (x_732 == 1.0f);
    let x_734 : bool = u_xlatb78;
    if (x_734) {
      let x_737 : vec3<f32> = u_xlat26;
      let x_740 : vec4<f32> = x_422.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_737.x, x_737.y, x_737.x, x_737.y) + x_740);
      let x_744 : vec4<f32> = u_xlat7;
      let x_745 : vec2<f32> = vec2<f32>(x_744.x, x_744.y);
      let x_747 : f32 = u_xlat26.z;
      txVec0 = vec3<f32>(x_745.x, x_745.y, x_747);
      let x_759 : vec3<f32> = txVec0;
      let x_761 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_759.xy, x_759.z);
      u_xlat8.x = x_761;
      let x_764 : vec4<f32> = u_xlat7;
      let x_765 : vec2<f32> = vec2<f32>(x_764.z, x_764.w);
      let x_767 : f32 = u_xlat26.z;
      txVec1 = vec3<f32>(x_765.x, x_765.y, x_767);
      let x_774 : vec3<f32> = txVec1;
      let x_776 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_774.xy, x_774.z);
      u_xlat8.y = x_776;
      let x_778 : vec3<f32> = u_xlat26;
      let x_782 : vec4<f32> = x_422.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_778.x, x_778.y, x_778.x, x_778.y) + x_782);
      let x_785 : vec4<f32> = u_xlat7;
      let x_786 : vec2<f32> = vec2<f32>(x_785.x, x_785.y);
      let x_788 : f32 = u_xlat26.z;
      txVec2 = vec3<f32>(x_786.x, x_786.y, x_788);
      let x_795 : vec3<f32> = txVec2;
      let x_797 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_795.xy, x_795.z);
      u_xlat8.z = x_797;
      let x_800 : vec4<f32> = u_xlat7;
      let x_801 : vec2<f32> = vec2<f32>(x_800.z, x_800.w);
      let x_803 : f32 = u_xlat26.z;
      txVec3 = vec3<f32>(x_801.x, x_801.y, x_803);
      let x_810 : vec3<f32> = txVec3;
      let x_812 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_810.xy, x_810.z);
      u_xlat8.w = x_812;
      let x_815 : vec4<f32> = u_xlat8;
      u_xlat78 = dot(x_815, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_822 : f32 = x_422.x_MainLightShadowParams.y;
      u_xlatb79 = (x_822 == 2.0f);
      let x_824 : bool = u_xlatb79;
      if (x_824) {
        let x_827 : vec3<f32> = u_xlat26;
        let x_831 : vec4<f32> = x_422.x_MainLightShadowmapSize;
        let x_835 : vec2<f32> = ((vec2<f32>(x_827.x, x_827.y) * vec2<f32>(x_831.z, x_831.w)) + vec2<f32>(0.5f, 0.5f));
        let x_836 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_835.x, x_835.y, x_836.z, x_836.w);
        let x_838 : vec4<f32> = u_xlat7;
        let x_840 : vec2<f32> = floor(vec2<f32>(x_838.x, x_838.y));
        let x_841 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_840.x, x_840.y, x_841.z, x_841.w);
        let x_844 : vec3<f32> = u_xlat26;
        let x_847 : vec4<f32> = x_422.x_MainLightShadowmapSize;
        let x_850 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_844.x, x_844.y) * vec2<f32>(x_847.z, x_847.w)) + -(vec2<f32>(x_850.x, x_850.y)));
        let x_854 : vec2<f32> = u_xlat57;
        u_xlat8 = (vec4<f32>(x_854.x, x_854.x, x_854.y, x_854.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_859 : vec4<f32> = u_xlat8;
        let x_861 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_859.x, x_859.x, x_859.z, x_859.z) * vec4<f32>(x_861.x, x_861.x, x_861.z, x_861.z));
        let x_864 : vec4<f32> = u_xlat9;
        let x_868 : vec2<f32> = (vec2<f32>(x_864.y, x_864.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_869 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_868.x, x_869.y, x_868.y, x_869.w);
        let x_871 : vec4<f32> = u_xlat9;
        let x_874 : vec2<f32> = u_xlat57;
        let x_876 : vec2<f32> = ((vec2<f32>(x_871.x, x_871.z) * vec2<f32>(0.5f, 0.5f)) + -(x_874));
        let x_877 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_876.x, x_876.y, x_877.z, x_877.w);
        let x_880 : vec2<f32> = u_xlat57;
        u_xlat59 = (-(x_880) + vec2<f32>(1.0f, 1.0f));
        let x_885 : vec2<f32> = u_xlat57;
        let x_887 : vec2<f32> = min(x_885, vec2<f32>(0.0f, 0.0f));
        let x_888 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_887.x, x_887.y, x_888.z, x_888.w);
        let x_890 : vec4<f32> = u_xlat10;
        let x_893 : vec4<f32> = u_xlat10;
        let x_896 : vec2<f32> = u_xlat59;
        let x_897 : vec2<f32> = ((-(vec2<f32>(x_890.x, x_890.y)) * vec2<f32>(x_893.x, x_893.y)) + x_896);
        let x_898 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_897.x, x_897.y, x_898.z, x_898.w);
        let x_900 : vec2<f32> = u_xlat57;
        u_xlat57 = max(x_900, vec2<f32>(0.0f, 0.0f));
        let x_902 : vec2<f32> = u_xlat57;
        let x_904 : vec2<f32> = u_xlat57;
        let x_906 : vec4<f32> = u_xlat8;
        u_xlat57 = ((-(x_902) * x_904) + vec2<f32>(x_906.y, x_906.w));
        let x_909 : vec4<f32> = u_xlat10;
        let x_911 : vec2<f32> = (vec2<f32>(x_909.x, x_909.y) + vec2<f32>(1.0f, 1.0f));
        let x_912 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_911.x, x_911.y, x_912.z, x_912.w);
        let x_914 : vec2<f32> = u_xlat57;
        u_xlat57 = (x_914 + vec2<f32>(1.0f, 1.0f));
        let x_917 : vec4<f32> = u_xlat9;
        let x_921 : vec2<f32> = (vec2<f32>(x_917.x, x_917.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_922 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_921.x, x_921.y, x_922.z, x_922.w);
        let x_924 : vec2<f32> = u_xlat59;
        let x_925 : vec2<f32> = (x_924 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_926 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_925.x, x_925.y, x_926.z, x_926.w);
        let x_928 : vec4<f32> = u_xlat10;
        let x_930 : vec2<f32> = (vec2<f32>(x_928.x, x_928.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_931 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_930.x, x_930.y, x_931.z, x_931.w);
        let x_934 : vec2<f32> = u_xlat57;
        let x_935 : vec2<f32> = (x_934 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_936 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_935.x, x_935.y, x_936.z, x_936.w);
        let x_938 : vec4<f32> = u_xlat8;
        u_xlat57 = (vec2<f32>(x_938.y, x_938.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_942 : f32 = u_xlat10.x;
        u_xlat11.z = x_942;
        let x_945 : f32 = u_xlat57.x;
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
        let x_963 : f32 = u_xlat57.y;
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
        u_xlat57 = ((vec2<f32>(x_1034.x, x_1034.y) * vec2<f32>(x_1037.x, x_1037.y)) + vec2<f32>(x_1040.z, x_1040.w));
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
        u_xlat79 = (x_1090 * x_1092);
        let x_1095 : vec4<f32> = u_xlat11;
        let x_1096 : vec2<f32> = vec2<f32>(x_1095.x, x_1095.y);
        let x_1098 : f32 = u_xlat26.z;
        txVec4 = vec3<f32>(x_1096.x, x_1096.y, x_1098);
        let x_1106 : vec3<f32> = txVec4;
        let x_1108 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1106.xy, x_1106.z);
        u_xlat80 = x_1108;
        let x_1110 : vec4<f32> = u_xlat11;
        let x_1111 : vec2<f32> = vec2<f32>(x_1110.z, x_1110.w);
        let x_1113 : f32 = u_xlat26.z;
        txVec5 = vec3<f32>(x_1111.x, x_1111.y, x_1113);
        let x_1121 : vec3<f32> = txVec5;
        let x_1123 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1121.xy, x_1121.z);
        u_xlat81 = x_1123;
        let x_1124 : f32 = u_xlat81;
        let x_1126 : f32 = u_xlat14.y;
        u_xlat81 = (x_1124 * x_1126);
        let x_1129 : f32 = u_xlat14.x;
        let x_1130 : f32 = u_xlat80;
        let x_1132 : f32 = u_xlat81;
        u_xlat80 = ((x_1129 * x_1130) + x_1132);
        let x_1135 : vec2<f32> = u_xlat57;
        let x_1137 : f32 = u_xlat26.z;
        txVec6 = vec3<f32>(x_1135.x, x_1135.y, x_1137);
        let x_1144 : vec3<f32> = txVec6;
        let x_1146 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1144.xy, x_1144.z);
        u_xlat81 = x_1146;
        let x_1148 : f32 = u_xlat14.z;
        let x_1149 : f32 = u_xlat81;
        let x_1151 : f32 = u_xlat80;
        u_xlat80 = ((x_1148 * x_1149) + x_1151);
        let x_1154 : vec4<f32> = u_xlat10;
        let x_1155 : vec2<f32> = vec2<f32>(x_1154.x, x_1154.y);
        let x_1157 : f32 = u_xlat26.z;
        txVec7 = vec3<f32>(x_1155.x, x_1155.y, x_1157);
        let x_1164 : vec3<f32> = txVec7;
        let x_1166 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1164.xy, x_1164.z);
        u_xlat81 = x_1166;
        let x_1168 : f32 = u_xlat14.w;
        let x_1169 : f32 = u_xlat81;
        let x_1171 : f32 = u_xlat80;
        u_xlat80 = ((x_1168 * x_1169) + x_1171);
        let x_1174 : vec4<f32> = u_xlat12;
        let x_1175 : vec2<f32> = vec2<f32>(x_1174.x, x_1174.y);
        let x_1177 : f32 = u_xlat26.z;
        txVec8 = vec3<f32>(x_1175.x, x_1175.y, x_1177);
        let x_1184 : vec3<f32> = txVec8;
        let x_1186 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1184.xy, x_1184.z);
        u_xlat81 = x_1186;
        let x_1188 : f32 = u_xlat15.x;
        let x_1189 : f32 = u_xlat81;
        let x_1191 : f32 = u_xlat80;
        u_xlat80 = ((x_1188 * x_1189) + x_1191);
        let x_1194 : vec4<f32> = u_xlat12;
        let x_1195 : vec2<f32> = vec2<f32>(x_1194.z, x_1194.w);
        let x_1197 : f32 = u_xlat26.z;
        txVec9 = vec3<f32>(x_1195.x, x_1195.y, x_1197);
        let x_1204 : vec3<f32> = txVec9;
        let x_1206 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1204.xy, x_1204.z);
        u_xlat81 = x_1206;
        let x_1208 : f32 = u_xlat15.y;
        let x_1209 : f32 = u_xlat81;
        let x_1211 : f32 = u_xlat80;
        u_xlat80 = ((x_1208 * x_1209) + x_1211);
        let x_1214 : vec4<f32> = u_xlat10;
        let x_1215 : vec2<f32> = vec2<f32>(x_1214.z, x_1214.w);
        let x_1217 : f32 = u_xlat26.z;
        txVec10 = vec3<f32>(x_1215.x, x_1215.y, x_1217);
        let x_1224 : vec3<f32> = txVec10;
        let x_1226 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1224.xy, x_1224.z);
        u_xlat81 = x_1226;
        let x_1228 : f32 = u_xlat15.z;
        let x_1229 : f32 = u_xlat81;
        let x_1231 : f32 = u_xlat80;
        u_xlat80 = ((x_1228 * x_1229) + x_1231);
        let x_1234 : vec4<f32> = u_xlat9;
        let x_1235 : vec2<f32> = vec2<f32>(x_1234.x, x_1234.y);
        let x_1237 : f32 = u_xlat26.z;
        txVec11 = vec3<f32>(x_1235.x, x_1235.y, x_1237);
        let x_1244 : vec3<f32> = txVec11;
        let x_1246 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1244.xy, x_1244.z);
        u_xlat81 = x_1246;
        let x_1248 : f32 = u_xlat15.w;
        let x_1249 : f32 = u_xlat81;
        let x_1251 : f32 = u_xlat80;
        u_xlat80 = ((x_1248 * x_1249) + x_1251);
        let x_1254 : vec4<f32> = u_xlat9;
        let x_1255 : vec2<f32> = vec2<f32>(x_1254.z, x_1254.w);
        let x_1257 : f32 = u_xlat26.z;
        txVec12 = vec3<f32>(x_1255.x, x_1255.y, x_1257);
        let x_1264 : vec3<f32> = txVec12;
        let x_1266 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1264.xy, x_1264.z);
        u_xlat81 = x_1266;
        let x_1267 : f32 = u_xlat79;
        let x_1268 : f32 = u_xlat81;
        let x_1270 : f32 = u_xlat80;
        u_xlat78 = ((x_1267 * x_1268) + x_1270);
      } else {
        let x_1273 : vec3<f32> = u_xlat26;
        let x_1276 : vec4<f32> = x_422.x_MainLightShadowmapSize;
        let x_1279 : vec2<f32> = ((vec2<f32>(x_1273.x, x_1273.y) * vec2<f32>(x_1276.z, x_1276.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1280 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1279.x, x_1279.y, x_1280.z, x_1280.w);
        let x_1282 : vec4<f32> = u_xlat7;
        let x_1284 : vec2<f32> = floor(vec2<f32>(x_1282.x, x_1282.y));
        let x_1285 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1284.x, x_1284.y, x_1285.z, x_1285.w);
        let x_1287 : vec3<f32> = u_xlat26;
        let x_1290 : vec4<f32> = x_422.x_MainLightShadowmapSize;
        let x_1293 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_1287.x, x_1287.y) * vec2<f32>(x_1290.z, x_1290.w)) + -(vec2<f32>(x_1293.x, x_1293.y)));
        let x_1297 : vec2<f32> = u_xlat57;
        u_xlat8 = (vec4<f32>(x_1297.x, x_1297.x, x_1297.y, x_1297.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1300 : vec4<f32> = u_xlat8;
        let x_1302 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1300.x, x_1300.x, x_1300.z, x_1300.z) * vec4<f32>(x_1302.x, x_1302.x, x_1302.z, x_1302.z));
        let x_1305 : vec4<f32> = u_xlat9;
        let x_1309 : vec2<f32> = (vec2<f32>(x_1305.y, x_1305.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1310 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1310.x, x_1309.x, x_1310.z, x_1309.y);
        let x_1312 : vec4<f32> = u_xlat9;
        let x_1315 : vec2<f32> = u_xlat57;
        let x_1317 : vec2<f32> = ((vec2<f32>(x_1312.x, x_1312.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1315));
        let x_1318 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1317.x, x_1318.y, x_1317.y, x_1318.w);
        let x_1320 : vec2<f32> = u_xlat57;
        let x_1322 : vec2<f32> = (-(x_1320) + vec2<f32>(1.0f, 1.0f));
        let x_1323 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1322.x, x_1322.y, x_1323.z, x_1323.w);
        let x_1325 : vec2<f32> = u_xlat57;
        u_xlat59 = min(x_1325, vec2<f32>(0.0f, 0.0f));
        let x_1327 : vec2<f32> = u_xlat59;
        let x_1329 : vec2<f32> = u_xlat59;
        let x_1331 : vec4<f32> = u_xlat9;
        let x_1333 : vec2<f32> = ((-(x_1327) * x_1329) + vec2<f32>(x_1331.x, x_1331.y));
        let x_1334 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1333.x, x_1333.y, x_1334.z, x_1334.w);
        let x_1336 : vec2<f32> = u_xlat57;
        u_xlat59 = max(x_1336, vec2<f32>(0.0f, 0.0f));
        let x_1339 : vec2<f32> = u_xlat59;
        let x_1341 : vec2<f32> = u_xlat59;
        let x_1343 : vec4<f32> = u_xlat8;
        let x_1345 : vec2<f32> = ((-(x_1339) * x_1341) + vec2<f32>(x_1343.y, x_1343.w));
        let x_1346 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1345.x, x_1346.y, x_1345.y);
        let x_1348 : vec4<f32> = u_xlat9;
        let x_1350 : vec2<f32> = (vec2<f32>(x_1348.x, x_1348.y) + vec2<f32>(2.0f, 2.0f));
        let x_1351 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1350.x, x_1350.y, x_1351.z, x_1351.w);
        let x_1353 : vec3<f32> = u_xlat33;
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
        let x_1378 : vec2<f32> = u_xlat57;
        let x_1385 : vec2<f32> = ((vec2<f32>(x_1378.x, x_1378.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1386 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1386.x, x_1385.x, x_1386.z, x_1385.y);
        let x_1388 : vec2<f32> = u_xlat57;
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
        let x_1404 : vec2<f32> = u_xlat57;
        let x_1407 : vec2<f32> = ((vec2<f32>(x_1404.y, x_1404.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1408 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1408.x, x_1407.x, x_1408.z, x_1407.y);
        let x_1410 : vec2<f32> = u_xlat57;
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
        u_xlat57 = ((vec2<f32>(x_1464.x, x_1464.y) * vec2<f32>(x_1467.x, x_1467.y)) + vec2<f32>(x_1470.w, x_1470.y));
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
        u_xlat34 = ((vec2<f32>(x_1526.x, x_1526.y) * vec2<f32>(x_1529.x, x_1529.y)) + vec2<f32>(x_1532.w, x_1532.y));
        let x_1536 : f32 = u_xlat12.y;
        u_xlat9.w = x_1536;
        let x_1539 : vec4<f32> = u_xlat7;
        let x_1542 : vec4<f32> = x_422.x_MainLightShadowmapSize;
        let x_1545 : vec4<f32> = u_xlat9;
        u_xlat65 = ((vec2<f32>(x_1539.x, x_1539.y) * vec2<f32>(x_1542.x, x_1542.y)) + vec2<f32>(x_1545.x, x_1545.w));
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
        u_xlat60 = ((vec2<f32>(x_1562.x, x_1562.y) * vec2<f32>(x_1565.x, x_1565.y)) + vec2<f32>(x_1568.w, x_1568.y));
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
        let x_1608 : f32 = u_xlat26.z;
        txVec13 = vec3<f32>(x_1606.x, x_1606.y, x_1608);
        let x_1615 : vec3<f32> = txVec13;
        let x_1617 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1615.xy, x_1615.z);
        u_xlat79 = x_1617;
        let x_1619 : vec4<f32> = u_xlat13;
        let x_1620 : vec2<f32> = vec2<f32>(x_1619.z, x_1619.w);
        let x_1622 : f32 = u_xlat26.z;
        txVec14 = vec3<f32>(x_1620.x, x_1620.y, x_1622);
        let x_1629 : vec3<f32> = txVec14;
        let x_1631 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1629.xy, x_1629.z);
        u_xlat80 = x_1631;
        let x_1632 : f32 = u_xlat80;
        let x_1634 : f32 = u_xlat18.y;
        u_xlat80 = (x_1632 * x_1634);
        let x_1637 : f32 = u_xlat18.x;
        let x_1638 : f32 = u_xlat79;
        let x_1640 : f32 = u_xlat80;
        u_xlat79 = ((x_1637 * x_1638) + x_1640);
        let x_1643 : vec2<f32> = u_xlat57;
        let x_1645 : f32 = u_xlat26.z;
        txVec15 = vec3<f32>(x_1643.x, x_1643.y, x_1645);
        let x_1652 : vec3<f32> = txVec15;
        let x_1654 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1652.xy, x_1652.z);
        u_xlat80 = x_1654;
        let x_1656 : f32 = u_xlat18.z;
        let x_1657 : f32 = u_xlat80;
        let x_1659 : f32 = u_xlat79;
        u_xlat79 = ((x_1656 * x_1657) + x_1659);
        let x_1662 : vec4<f32> = u_xlat16;
        let x_1663 : vec2<f32> = vec2<f32>(x_1662.x, x_1662.y);
        let x_1665 : f32 = u_xlat26.z;
        txVec16 = vec3<f32>(x_1663.x, x_1663.y, x_1665);
        let x_1672 : vec3<f32> = txVec16;
        let x_1674 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1672.xy, x_1672.z);
        u_xlat80 = x_1674;
        let x_1676 : f32 = u_xlat18.w;
        let x_1677 : f32 = u_xlat80;
        let x_1679 : f32 = u_xlat79;
        u_xlat79 = ((x_1676 * x_1677) + x_1679);
        let x_1682 : vec4<f32> = u_xlat14;
        let x_1683 : vec2<f32> = vec2<f32>(x_1682.x, x_1682.y);
        let x_1685 : f32 = u_xlat26.z;
        txVec17 = vec3<f32>(x_1683.x, x_1683.y, x_1685);
        let x_1692 : vec3<f32> = txVec17;
        let x_1694 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1692.xy, x_1692.z);
        u_xlat80 = x_1694;
        let x_1696 : f32 = u_xlat19.x;
        let x_1697 : f32 = u_xlat80;
        let x_1699 : f32 = u_xlat79;
        u_xlat79 = ((x_1696 * x_1697) + x_1699);
        let x_1702 : vec4<f32> = u_xlat14;
        let x_1703 : vec2<f32> = vec2<f32>(x_1702.z, x_1702.w);
        let x_1705 : f32 = u_xlat26.z;
        txVec18 = vec3<f32>(x_1703.x, x_1703.y, x_1705);
        let x_1712 : vec3<f32> = txVec18;
        let x_1714 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1712.xy, x_1712.z);
        u_xlat80 = x_1714;
        let x_1716 : f32 = u_xlat19.y;
        let x_1717 : f32 = u_xlat80;
        let x_1719 : f32 = u_xlat79;
        u_xlat79 = ((x_1716 * x_1717) + x_1719);
        let x_1722 : vec4<f32> = u_xlat15;
        let x_1723 : vec2<f32> = vec2<f32>(x_1722.x, x_1722.y);
        let x_1725 : f32 = u_xlat26.z;
        txVec19 = vec3<f32>(x_1723.x, x_1723.y, x_1725);
        let x_1732 : vec3<f32> = txVec19;
        let x_1734 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1732.xy, x_1732.z);
        u_xlat80 = x_1734;
        let x_1736 : f32 = u_xlat19.z;
        let x_1737 : f32 = u_xlat80;
        let x_1739 : f32 = u_xlat79;
        u_xlat79 = ((x_1736 * x_1737) + x_1739);
        let x_1742 : vec4<f32> = u_xlat16;
        let x_1743 : vec2<f32> = vec2<f32>(x_1742.z, x_1742.w);
        let x_1745 : f32 = u_xlat26.z;
        txVec20 = vec3<f32>(x_1743.x, x_1743.y, x_1745);
        let x_1752 : vec3<f32> = txVec20;
        let x_1754 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1752.xy, x_1752.z);
        u_xlat80 = x_1754;
        let x_1756 : f32 = u_xlat19.w;
        let x_1757 : f32 = u_xlat80;
        let x_1759 : f32 = u_xlat79;
        u_xlat79 = ((x_1756 * x_1757) + x_1759);
        let x_1762 : vec4<f32> = u_xlat17;
        let x_1763 : vec2<f32> = vec2<f32>(x_1762.x, x_1762.y);
        let x_1765 : f32 = u_xlat26.z;
        txVec21 = vec3<f32>(x_1763.x, x_1763.y, x_1765);
        let x_1772 : vec3<f32> = txVec21;
        let x_1774 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1772.xy, x_1772.z);
        u_xlat80 = x_1774;
        let x_1776 : f32 = u_xlat20.x;
        let x_1777 : f32 = u_xlat80;
        let x_1779 : f32 = u_xlat79;
        u_xlat79 = ((x_1776 * x_1777) + x_1779);
        let x_1782 : vec4<f32> = u_xlat17;
        let x_1783 : vec2<f32> = vec2<f32>(x_1782.z, x_1782.w);
        let x_1785 : f32 = u_xlat26.z;
        txVec22 = vec3<f32>(x_1783.x, x_1783.y, x_1785);
        let x_1792 : vec3<f32> = txVec22;
        let x_1794 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1792.xy, x_1792.z);
        u_xlat80 = x_1794;
        let x_1796 : f32 = u_xlat20.y;
        let x_1797 : f32 = u_xlat80;
        let x_1799 : f32 = u_xlat79;
        u_xlat79 = ((x_1796 * x_1797) + x_1799);
        let x_1802 : vec2<f32> = u_xlat34;
        let x_1804 : f32 = u_xlat26.z;
        txVec23 = vec3<f32>(x_1802.x, x_1802.y, x_1804);
        let x_1811 : vec3<f32> = txVec23;
        let x_1813 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1811.xy, x_1811.z);
        u_xlat80 = x_1813;
        let x_1815 : f32 = u_xlat20.z;
        let x_1816 : f32 = u_xlat80;
        let x_1818 : f32 = u_xlat79;
        u_xlat79 = ((x_1815 * x_1816) + x_1818);
        let x_1821 : vec2<f32> = u_xlat65;
        let x_1823 : f32 = u_xlat26.z;
        txVec24 = vec3<f32>(x_1821.x, x_1821.y, x_1823);
        let x_1830 : vec3<f32> = txVec24;
        let x_1832 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1830.xy, x_1830.z);
        u_xlat80 = x_1832;
        let x_1834 : f32 = u_xlat20.w;
        let x_1835 : f32 = u_xlat80;
        let x_1837 : f32 = u_xlat79;
        u_xlat79 = ((x_1834 * x_1835) + x_1837);
        let x_1840 : vec4<f32> = u_xlat12;
        let x_1841 : vec2<f32> = vec2<f32>(x_1840.x, x_1840.y);
        let x_1843 : f32 = u_xlat26.z;
        txVec25 = vec3<f32>(x_1841.x, x_1841.y, x_1843);
        let x_1850 : vec3<f32> = txVec25;
        let x_1852 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1850.xy, x_1850.z);
        u_xlat80 = x_1852;
        let x_1854 : f32 = u_xlat8.x;
        let x_1855 : f32 = u_xlat80;
        let x_1857 : f32 = u_xlat79;
        u_xlat79 = ((x_1854 * x_1855) + x_1857);
        let x_1860 : vec4<f32> = u_xlat12;
        let x_1861 : vec2<f32> = vec2<f32>(x_1860.z, x_1860.w);
        let x_1863 : f32 = u_xlat26.z;
        txVec26 = vec3<f32>(x_1861.x, x_1861.y, x_1863);
        let x_1870 : vec3<f32> = txVec26;
        let x_1872 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1870.xy, x_1870.z);
        u_xlat80 = x_1872;
        let x_1874 : f32 = u_xlat8.y;
        let x_1875 : f32 = u_xlat80;
        let x_1877 : f32 = u_xlat79;
        u_xlat79 = ((x_1874 * x_1875) + x_1877);
        let x_1880 : vec2<f32> = u_xlat60;
        let x_1882 : f32 = u_xlat26.z;
        txVec27 = vec3<f32>(x_1880.x, x_1880.y, x_1882);
        let x_1889 : vec3<f32> = txVec27;
        let x_1891 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1889.xy, x_1889.z);
        u_xlat80 = x_1891;
        let x_1893 : f32 = u_xlat8.z;
        let x_1894 : f32 = u_xlat80;
        let x_1896 : f32 = u_xlat79;
        u_xlat79 = ((x_1893 * x_1894) + x_1896);
        let x_1899 : vec4<f32> = u_xlat7;
        let x_1900 : vec2<f32> = vec2<f32>(x_1899.x, x_1899.y);
        let x_1902 : f32 = u_xlat26.z;
        txVec28 = vec3<f32>(x_1900.x, x_1900.y, x_1902);
        let x_1909 : vec3<f32> = txVec28;
        let x_1911 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1909.xy, x_1909.z);
        u_xlat80 = x_1911;
        let x_1913 : f32 = u_xlat8.w;
        let x_1914 : f32 = u_xlat80;
        let x_1916 : f32 = u_xlat79;
        u_xlat78 = ((x_1913 * x_1914) + x_1916);
      }
    }
  } else {
    let x_1920 : vec3<f32> = u_xlat26;
    let x_1921 : vec2<f32> = vec2<f32>(x_1920.x, x_1920.y);
    let x_1923 : f32 = u_xlat26.z;
    txVec29 = vec3<f32>(x_1921.x, x_1921.y, x_1923);
    let x_1930 : vec3<f32> = txVec29;
    let x_1932 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1930.xy, x_1930.z);
    u_xlat78 = x_1932;
  }
  let x_1934 : f32 = x_422.x_MainLightShadowParams.x;
  u_xlat26.x = (-(x_1934) + 1.0f);
  let x_1938 : f32 = u_xlat78;
  let x_1940 : f32 = x_422.x_MainLightShadowParams.x;
  let x_1943 : f32 = u_xlat26.x;
  u_xlat26.x = ((x_1938 * x_1940) + x_1943);
  let x_1948 : f32 = u_xlat26.z;
  u_xlatb51 = (0.0f >= x_1948);
  let x_1952 : f32 = u_xlat26.z;
  u_xlatb76 = (x_1952 >= 1.0f);
  let x_1954 : bool = u_xlatb76;
  let x_1955 : bool = u_xlatb51;
  u_xlatb51 = (x_1954 | x_1955);
  let x_1957 : bool = u_xlatb51;
  if (x_1957) {
    x_1958 = 1.0f;
  } else {
    let x_1963 : f32 = u_xlat26.x;
    x_1958 = x_1963;
  }
  let x_1964 : f32 = x_1958;
  u_xlat26.x = x_1964;
  let x_1966 : vec3<f32> = vs_INTERP7;
  let x_1968 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_1970 : vec3<f32> = (x_1966 + -(x_1968));
  let x_1971 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1970.x, x_1970.y, x_1970.z, x_1971.w);
  let x_1973 : vec4<f32> = u_xlat7;
  let x_1975 : vec4<f32> = u_xlat7;
  u_xlat51 = dot(vec3<f32>(x_1973.x, x_1973.y, x_1973.z), vec3<f32>(x_1975.x, x_1975.y, x_1975.z));
  let x_1979 : f32 = u_xlat51;
  let x_1981 : f32 = x_422.x_MainLightShadowParams.z;
  let x_1984 : f32 = x_422.x_MainLightShadowParams.w;
  u_xlat76 = ((x_1979 * x_1981) + x_1984);
  let x_1986 : f32 = u_xlat76;
  u_xlat76 = clamp(x_1986, 0.0f, 1.0f);
  let x_1989 : f32 = u_xlat26.x;
  u_xlat78 = (-(x_1989) + 1.0f);
  let x_1992 : f32 = u_xlat76;
  let x_1993 : f32 = u_xlat78;
  let x_1996 : f32 = u_xlat26.x;
  u_xlat26.x = ((x_1992 * x_1993) + x_1996);
  let x_1999 : vec3<f32> = u_xlat4;
  let x_2001 : vec4<f32> = u_xlat3;
  u_xlat76 = dot(-(x_1999), vec3<f32>(x_2001.x, x_2001.y, x_2001.z));
  let x_2004 : f32 = u_xlat76;
  let x_2005 : f32 = u_xlat76;
  u_xlat76 = (x_2004 + x_2005);
  let x_2007 : vec4<f32> = u_xlat3;
  let x_2009 : f32 = u_xlat76;
  let x_2013 : vec3<f32> = u_xlat4;
  let x_2015 : vec3<f32> = ((vec3<f32>(x_2007.x, x_2007.y, x_2007.z) * -(vec3<f32>(x_2009, x_2009, x_2009))) + -(x_2013));
  let x_2016 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2015.x, x_2015.y, x_2015.z, x_2016.w);
  let x_2018 : vec4<f32> = u_xlat3;
  let x_2020 : vec3<f32> = u_xlat4;
  u_xlat76 = dot(vec3<f32>(x_2018.x, x_2018.y, x_2018.z), x_2020);
  let x_2022 : f32 = u_xlat76;
  u_xlat76 = clamp(x_2022, 0.0f, 1.0f);
  let x_2024 : f32 = u_xlat76;
  u_xlat76 = (-(x_2024) + 1.0f);
  let x_2027 : f32 = u_xlat76;
  let x_2028 : f32 = u_xlat76;
  u_xlat76 = (x_2027 * x_2028);
  let x_2030 : f32 = u_xlat76;
  let x_2031 : f32 = u_xlat76;
  u_xlat76 = (x_2030 * x_2031);
  let x_2034 : f32 = u_xlat0.x;
  u_xlat78 = ((-(x_2034) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2041 : f32 = u_xlat0.x;
  let x_2042 : f32 = u_xlat78;
  u_xlat0.x = (x_2041 * x_2042);
  let x_2046 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2046 * 6.0f);
  let x_2058 : vec4<f32> = u_xlat7;
  let x_2061 : f32 = u_xlat0.x;
  let x_2062 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2058.x, x_2058.y, x_2058.z), x_2061);
  u_xlat7 = x_2062;
  let x_2064 : f32 = u_xlat7.w;
  u_xlat0.x = (x_2064 + -1.0f);
  let x_2068 : f32 = x_270.unity_SpecCube0_HDR.w;
  let x_2070 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2068 * x_2070) + 1.0f);
  let x_2075 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2075, 0.0f);
  let x_2079 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2079);
  let x_2083 : f32 = u_xlat0.x;
  let x_2085 : f32 = x_270.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2083 * x_2085);
  let x_2089 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2089);
  let x_2093 : f32 = u_xlat0.x;
  let x_2095 : f32 = x_270.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2093 * x_2095);
  let x_2098 : vec4<f32> = u_xlat7;
  let x_2100 : vec4<f32> = u_xlat0;
  let x_2102 : vec3<f32> = (vec3<f32>(x_2098.x, x_2098.y, x_2098.z) * vec3<f32>(x_2100.x, x_2100.x, x_2100.x));
  let x_2103 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2102.x, x_2102.y, x_2102.z, x_2103.w);
  let x_2105 : vec2<f32> = u_xlat25;
  let x_2107 : vec2<f32> = u_xlat25;
  let x_2111 : vec2<f32> = ((vec2<f32>(x_2105.x, x_2105.x) * vec2<f32>(x_2107.x, x_2107.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2112 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2111.x, x_2111.y, x_2112.z, x_2112.w);
  let x_2115 : f32 = u_xlat0.y;
  u_xlat25.x = (1.0f / x_2115);
  let x_2118 : vec3<f32> = u_xlat2;
  let x_2120 : f32 = u_xlat50;
  let x_2122 : vec3<f32> = (-(x_2118) + vec3<f32>(x_2120, x_2120, x_2120));
  let x_2123 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2122.x, x_2122.y, x_2122.z, x_2123.w);
  let x_2125 : f32 = u_xlat76;
  let x_2127 : vec4<f32> = u_xlat8;
  let x_2130 : vec3<f32> = u_xlat2;
  let x_2131 : vec3<f32> = ((vec3<f32>(x_2125, x_2125, x_2125) * vec3<f32>(x_2127.x, x_2127.y, x_2127.z)) + x_2130);
  let x_2132 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2131.x, x_2131.y, x_2131.z, x_2132.w);
  let x_2134 : vec2<f32> = u_xlat25;
  let x_2136 : vec4<f32> = u_xlat8;
  let x_2138 : vec3<f32> = (vec3<f32>(x_2134.x, x_2134.x, x_2134.x) * vec3<f32>(x_2136.x, x_2136.y, x_2136.z));
  let x_2139 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2138.x, x_2138.y, x_2138.z, x_2139.w);
  let x_2141 : vec4<f32> = u_xlat7;
  let x_2143 : vec4<f32> = u_xlat8;
  let x_2145 : vec3<f32> = (vec3<f32>(x_2141.x, x_2141.y, x_2141.z) * vec3<f32>(x_2143.x, x_2143.y, x_2143.z));
  let x_2146 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2145.x, x_2145.y, x_2145.z, x_2146.w);
  let x_2148 : vec3<f32> = u_xlat5;
  let x_2149 : vec4<f32> = u_xlat6;
  let x_2152 : vec4<f32> = u_xlat7;
  u_xlat5 = ((x_2148 * vec3<f32>(x_2149.x, x_2149.y, x_2149.z)) + vec3<f32>(x_2152.x, x_2152.y, x_2152.z));
  let x_2156 : f32 = u_xlat26.x;
  let x_2158 : f32 = x_270.unity_LightData.z;
  u_xlat25.x = (x_2156 * x_2158);
  let x_2161 : vec4<f32> = u_xlat3;
  let x_2164 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat50 = dot(vec3<f32>(x_2161.x, x_2161.y, x_2161.z), vec3<f32>(x_2164.x, x_2164.y, x_2164.z));
  let x_2167 : f32 = u_xlat50;
  u_xlat50 = clamp(x_2167, 0.0f, 1.0f);
  let x_2169 : f32 = u_xlat50;
  let x_2171 : f32 = u_xlat25.x;
  u_xlat25.x = (x_2169 * x_2171);
  let x_2174 : vec2<f32> = u_xlat25;
  let x_2177 : vec4<f32> = x_29.x_MainLightColor;
  let x_2179 : vec3<f32> = (vec3<f32>(x_2174.x, x_2174.x, x_2174.x) * vec3<f32>(x_2177.x, x_2177.y, x_2177.z));
  let x_2180 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2179.x, x_2179.y, x_2179.z, x_2180.w);
  let x_2182 : vec3<f32> = u_xlat4;
  let x_2184 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2186 : vec3<f32> = (x_2182 + vec3<f32>(x_2184.x, x_2184.y, x_2184.z));
  let x_2187 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2186.x, x_2186.y, x_2186.z, x_2187.w);
  let x_2189 : vec4<f32> = u_xlat8;
  let x_2191 : vec4<f32> = u_xlat8;
  u_xlat25.x = dot(vec3<f32>(x_2189.x, x_2189.y, x_2189.z), vec3<f32>(x_2191.x, x_2191.y, x_2191.z));
  let x_2196 : f32 = u_xlat25.x;
  u_xlat25.x = max(x_2196, 1.17549435e-38f);
  let x_2201 : f32 = u_xlat25.x;
  u_xlat25.x = inverseSqrt(x_2201);
  let x_2204 : vec2<f32> = u_xlat25;
  let x_2206 : vec4<f32> = u_xlat8;
  let x_2208 : vec3<f32> = (vec3<f32>(x_2204.x, x_2204.x, x_2204.x) * vec3<f32>(x_2206.x, x_2206.y, x_2206.z));
  let x_2209 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2208.x, x_2208.y, x_2208.z, x_2209.w);
  let x_2211 : vec4<f32> = u_xlat3;
  let x_2213 : vec4<f32> = u_xlat8;
  u_xlat25.x = dot(vec3<f32>(x_2211.x, x_2211.y, x_2211.z), vec3<f32>(x_2213.x, x_2213.y, x_2213.z));
  let x_2218 : f32 = u_xlat25.x;
  u_xlat25.x = clamp(x_2218, 0.0f, 1.0f);
  let x_2222 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2224 : vec4<f32> = u_xlat8;
  u_xlat25.y = dot(vec3<f32>(x_2222.x, x_2222.y, x_2222.z), vec3<f32>(x_2224.x, x_2224.y, x_2224.z));
  let x_2229 : f32 = u_xlat25.y;
  u_xlat25.y = clamp(x_2229, 0.0f, 1.0f);
  let x_2232 : vec2<f32> = u_xlat25;
  let x_2233 : vec2<f32> = u_xlat25;
  u_xlat25 = (x_2232 * x_2233);
  let x_2236 : f32 = u_xlat25.x;
  let x_2238 : f32 = u_xlat0.x;
  u_xlat25.x = ((x_2236 * x_2238) + 1.00001001358032226562f);
  let x_2244 : f32 = u_xlat25.x;
  let x_2246 : f32 = u_xlat25.x;
  u_xlat25.x = (x_2244 * x_2246);
  let x_2250 : f32 = u_xlat25.y;
  u_xlat50 = max(x_2250, 0.10000000149011611938f);
  let x_2253 : f32 = u_xlat50;
  let x_2255 : f32 = u_xlat25.x;
  u_xlat25.x = (x_2253 * x_2255);
  let x_2259 : f32 = u_xlat1.x;
  let x_2261 : f32 = u_xlat25.x;
  u_xlat25.x = (x_2259 * x_2261);
  let x_2264 : f32 = u_xlat77;
  let x_2266 : f32 = u_xlat25.x;
  u_xlat25.x = (x_2264 / x_2266);
  let x_2269 : vec3<f32> = u_xlat2;
  let x_2270 : vec2<f32> = u_xlat25;
  let x_2273 : vec4<f32> = u_xlat6;
  let x_2275 : vec3<f32> = ((x_2269 * vec3<f32>(x_2270.x, x_2270.x, x_2270.x)) + vec3<f32>(x_2273.x, x_2273.y, x_2273.z));
  let x_2276 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2275.x, x_2275.y, x_2275.z, x_2276.w);
  let x_2278 : vec4<f32> = u_xlat7;
  let x_2280 : vec4<f32> = u_xlat8;
  let x_2282 : vec3<f32> = (vec3<f32>(x_2278.x, x_2278.y, x_2278.z) * vec3<f32>(x_2280.x, x_2280.y, x_2280.z));
  let x_2283 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2282.x, x_2282.y, x_2282.z, x_2283.w);
  let x_2286 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2288 : f32 = x_270.unity_LightData.y;
  u_xlat25.x = min(x_2286, x_2288);
  let x_2292 : f32 = u_xlat25.x;
  u_xlatu25 = bitcast<u32>(i32(x_2292));
  let x_2295 : f32 = u_xlat51;
  let x_2298 : f32 = x_422.x_AdditionalShadowFadeParams.x;
  let x_2301 : f32 = x_422.x_AdditionalShadowFadeParams.y;
  u_xlat50 = ((x_2295 * x_2298) + x_2301);
  let x_2303 : f32 = u_xlat50;
  u_xlat50 = clamp(x_2303, 0.0f, 1.0f);
  u_xlat26.x = 0.0f;
  u_xlat26.y = 0.0f;
  u_xlat26.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2315 : u32 = u_xlatu_loop_1;
    let x_2316 : u32 = u_xlatu25;
    if ((x_2315 < x_2316)) {
    } else {
      break;
    }
    let x_2319 : u32 = u_xlatu_loop_1;
    u_xlatu79 = (x_2319 >> 2u);
    let x_2322 : u32 = u_xlatu_loop_1;
    u_xlati80 = bitcast<i32>((x_2322 & 3u));
    let x_2325 : u32 = u_xlatu79;
    let x_2328 : vec4<f32> = x_270.unity_LightIndices[bitcast<i32>(x_2325)];
    let x_2338 : i32 = u_xlati80;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2343 : vec4<u32> = indexable[x_2338];
    u_xlat79 = dot(x_2328, bitcast<vec4<f32>>(x_2343));
    let x_2347 : f32 = u_xlat79;
    u_xlati79 = i32(x_2347);
    let x_2349 : vec3<f32> = vs_INTERP7;
    let x_2360 : i32 = u_xlati79;
    let x_2362 : vec4<f32> = x_2359.x_AdditionalLightsPosition[x_2360];
    let x_2365 : i32 = u_xlati79;
    let x_2367 : vec4<f32> = x_2359.x_AdditionalLightsPosition[x_2365];
    let x_2369 : vec3<f32> = ((-(x_2349) * vec3<f32>(x_2362.w, x_2362.w, x_2362.w)) + vec3<f32>(x_2367.x, x_2367.y, x_2367.z));
    let x_2370 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2369.x, x_2369.y, x_2369.z, x_2370.w);
    let x_2372 : vec4<f32> = u_xlat8;
    let x_2374 : vec4<f32> = u_xlat8;
    u_xlat80 = dot(vec3<f32>(x_2372.x, x_2372.y, x_2372.z), vec3<f32>(x_2374.x, x_2374.y, x_2374.z));
    let x_2377 : f32 = u_xlat80;
    u_xlat80 = max(x_2377, 0.00006103515625f);
    let x_2380 : f32 = u_xlat80;
    u_xlat81 = inverseSqrt(x_2380);
    let x_2382 : f32 = u_xlat81;
    let x_2384 : vec4<f32> = u_xlat8;
    let x_2386 : vec3<f32> = (vec3<f32>(x_2382, x_2382, x_2382) * vec3<f32>(x_2384.x, x_2384.y, x_2384.z));
    let x_2387 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2386.x, x_2386.y, x_2386.z, x_2387.w);
    let x_2390 : f32 = u_xlat80;
    u_xlat82 = (1.0f / x_2390);
    let x_2392 : f32 = u_xlat80;
    let x_2393 : i32 = u_xlati79;
    let x_2395 : f32 = x_2359.x_AdditionalLightsAttenuation[x_2393].x;
    u_xlat80 = (x_2392 * x_2395);
    let x_2397 : f32 = u_xlat80;
    let x_2399 : f32 = u_xlat80;
    u_xlat80 = ((-(x_2397) * x_2399) + 1.0f);
    let x_2402 : f32 = u_xlat80;
    u_xlat80 = max(x_2402, 0.0f);
    let x_2404 : f32 = u_xlat80;
    let x_2405 : f32 = u_xlat80;
    u_xlat80 = (x_2404 * x_2405);
    let x_2407 : f32 = u_xlat80;
    let x_2408 : f32 = u_xlat82;
    u_xlat80 = (x_2407 * x_2408);
    let x_2410 : i32 = u_xlati79;
    let x_2412 : vec4<f32> = x_2359.x_AdditionalLightsSpotDir[x_2410];
    let x_2414 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_2412.x, x_2412.y, x_2412.z), vec3<f32>(x_2414.x, x_2414.y, x_2414.z));
    let x_2417 : f32 = u_xlat82;
    let x_2418 : i32 = u_xlati79;
    let x_2420 : f32 = x_2359.x_AdditionalLightsAttenuation[x_2418].z;
    let x_2422 : i32 = u_xlati79;
    let x_2424 : f32 = x_2359.x_AdditionalLightsAttenuation[x_2422].w;
    u_xlat82 = ((x_2417 * x_2420) + x_2424);
    let x_2426 : f32 = u_xlat82;
    u_xlat82 = clamp(x_2426, 0.0f, 1.0f);
    let x_2428 : f32 = u_xlat82;
    let x_2429 : f32 = u_xlat82;
    u_xlat82 = (x_2428 * x_2429);
    let x_2431 : f32 = u_xlat80;
    let x_2432 : f32 = u_xlat82;
    u_xlat80 = (x_2431 * x_2432);
    let x_2436 : i32 = u_xlati79;
    let x_2438 : f32 = x_422.x_AdditionalShadowParams[x_2436].w;
    u_xlati82 = i32(x_2438);
    let x_2441 : i32 = u_xlati82;
    u_xlatb83 = (x_2441 >= 0i);
    let x_2443 : bool = u_xlatb83;
    if (x_2443) {
      let x_2447 : i32 = u_xlati79;
      let x_2449 : f32 = x_422.x_AdditionalShadowParams[x_2447].z;
      u_xlatb83 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2449, x_2449, x_2449, x_2449))));
      let x_2453 : bool = u_xlatb83;
      if (x_2453) {
        let x_2457 : vec4<f32> = u_xlat9;
        let x_2460 : vec4<f32> = u_xlat9;
        let x_2463 : vec4<bool> = (abs(vec4<f32>(x_2457.z, x_2457.z, x_2457.y, x_2457.z)) >= abs(vec4<f32>(x_2460.x, x_2460.y, x_2460.x, x_2460.x)));
        let x_2464 : vec3<bool> = vec3<bool>(x_2463.x, x_2463.y, x_2463.z);
        let x_2465 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2464.x, x_2464.y, x_2464.z, x_2465.w);
        let x_2468 : bool = u_xlatb10.y;
        let x_2470 : bool = u_xlatb10.x;
        u_xlatb83 = (x_2468 & x_2470);
        let x_2472 : vec4<f32> = u_xlat9;
        let x_2475 : vec4<bool> = (-(vec4<f32>(x_2472.z, x_2472.y, x_2472.z, x_2472.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2476 : vec3<bool> = vec3<bool>(x_2475.x, x_2475.y, x_2475.w);
        let x_2477 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2476.x, x_2476.y, x_2477.z, x_2476.z);
        let x_2480 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_2480);
        let x_2485 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_2485);
        let x_2490 : bool = u_xlatb10.w;
        u_xlat84 = select(0.0f, 1.0f, x_2490);
        let x_2493 : bool = u_xlatb10.z;
        if (x_2493) {
          let x_2498 : f32 = u_xlat10.y;
          x_2494 = x_2498;
        } else {
          let x_2500 : f32 = u_xlat84;
          x_2494 = x_2500;
        }
        let x_2501 : f32 = x_2494;
        u_xlat84 = x_2501;
        let x_2503 : bool = u_xlatb83;
        if (x_2503) {
          let x_2508 : f32 = u_xlat10.x;
          x_2504 = x_2508;
        } else {
          let x_2510 : f32 = u_xlat84;
          x_2504 = x_2510;
        }
        let x_2511 : f32 = x_2504;
        u_xlat83 = x_2511;
        let x_2512 : i32 = u_xlati79;
        let x_2514 : f32 = x_422.x_AdditionalShadowParams[x_2512].w;
        u_xlat84 = trunc(x_2514);
        let x_2516 : f32 = u_xlat83;
        let x_2517 : f32 = u_xlat84;
        u_xlat83 = (x_2516 + x_2517);
        let x_2519 : f32 = u_xlat83;
        u_xlati82 = i32(x_2519);
      }
      let x_2521 : i32 = u_xlati82;
      u_xlati82 = (x_2521 << bitcast<u32>(2i));
      let x_2523 : vec3<f32> = vs_INTERP7;
      let x_2526 : i32 = u_xlati82;
      let x_2529 : i32 = u_xlati82;
      let x_2533 : vec4<f32> = x_422.x_AdditionalLightsWorldToShadow[((x_2526 + 1i) / 4i)][((x_2529 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2523.y, x_2523.y, x_2523.y, x_2523.y) * x_2533);
      let x_2535 : i32 = u_xlati82;
      let x_2537 : i32 = u_xlati82;
      let x_2540 : vec4<f32> = x_422.x_AdditionalLightsWorldToShadow[(x_2535 / 4i)][(x_2537 % 4i)];
      let x_2541 : vec3<f32> = vs_INTERP7;
      let x_2544 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2540 * vec4<f32>(x_2541.x, x_2541.x, x_2541.x, x_2541.x)) + x_2544);
      let x_2546 : i32 = u_xlati82;
      let x_2549 : i32 = u_xlati82;
      let x_2553 : vec4<f32> = x_422.x_AdditionalLightsWorldToShadow[((x_2546 + 2i) / 4i)][((x_2549 + 2i) % 4i)];
      let x_2554 : vec3<f32> = vs_INTERP7;
      let x_2557 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2553 * vec4<f32>(x_2554.z, x_2554.z, x_2554.z, x_2554.z)) + x_2557);
      let x_2559 : vec4<f32> = u_xlat10;
      let x_2560 : i32 = u_xlati82;
      let x_2563 : i32 = u_xlati82;
      let x_2567 : vec4<f32> = x_422.x_AdditionalLightsWorldToShadow[((x_2560 + 3i) / 4i)][((x_2563 + 3i) % 4i)];
      u_xlat10 = (x_2559 + x_2567);
      let x_2569 : vec4<f32> = u_xlat10;
      let x_2571 : vec4<f32> = u_xlat10;
      let x_2573 : vec3<f32> = (vec3<f32>(x_2569.x, x_2569.y, x_2569.z) / vec3<f32>(x_2571.w, x_2571.w, x_2571.w));
      let x_2574 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2573.x, x_2573.y, x_2573.z, x_2574.w);
      let x_2577 : i32 = u_xlati79;
      let x_2579 : f32 = x_422.x_AdditionalShadowParams[x_2577].y;
      u_xlatb82 = (0.0f < x_2579);
      let x_2581 : bool = u_xlatb82;
      if (x_2581) {
        let x_2584 : i32 = u_xlati79;
        let x_2586 : f32 = x_422.x_AdditionalShadowParams[x_2584].y;
        u_xlatb82 = (1.0f == x_2586);
        let x_2588 : bool = u_xlatb82;
        if (x_2588) {
          let x_2591 : vec4<f32> = u_xlat10;
          let x_2595 : vec4<f32> = x_422.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2591.x, x_2591.y, x_2591.x, x_2591.y) + x_2595);
          let x_2598 : vec4<f32> = u_xlat11;
          let x_2599 : vec2<f32> = vec2<f32>(x_2598.x, x_2598.y);
          let x_2601 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2599.x, x_2599.y, x_2601);
          let x_2609 : vec3<f32> = txVec30;
          let x_2611 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2609.xy, x_2609.z);
          u_xlat12.x = x_2611;
          let x_2614 : vec4<f32> = u_xlat11;
          let x_2615 : vec2<f32> = vec2<f32>(x_2614.z, x_2614.w);
          let x_2617 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2615.x, x_2615.y, x_2617);
          let x_2624 : vec3<f32> = txVec31;
          let x_2626 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2624.xy, x_2624.z);
          u_xlat12.y = x_2626;
          let x_2628 : vec4<f32> = u_xlat10;
          let x_2632 : vec4<f32> = x_422.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2628.x, x_2628.y, x_2628.x, x_2628.y) + x_2632);
          let x_2635 : vec4<f32> = u_xlat11;
          let x_2636 : vec2<f32> = vec2<f32>(x_2635.x, x_2635.y);
          let x_2638 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2636.x, x_2636.y, x_2638);
          let x_2645 : vec3<f32> = txVec32;
          let x_2647 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2645.xy, x_2645.z);
          u_xlat12.z = x_2647;
          let x_2650 : vec4<f32> = u_xlat11;
          let x_2651 : vec2<f32> = vec2<f32>(x_2650.z, x_2650.w);
          let x_2653 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2651.x, x_2651.y, x_2653);
          let x_2660 : vec3<f32> = txVec33;
          let x_2662 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2660.xy, x_2660.z);
          u_xlat12.w = x_2662;
          let x_2664 : vec4<f32> = u_xlat12;
          u_xlat82 = dot(x_2664, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2667 : i32 = u_xlati79;
          let x_2669 : f32 = x_422.x_AdditionalShadowParams[x_2667].y;
          u_xlatb83 = (2.0f == x_2669);
          let x_2671 : bool = u_xlatb83;
          if (x_2671) {
            let x_2674 : vec4<f32> = u_xlat10;
            let x_2678 : vec4<f32> = x_422.x_AdditionalShadowmapSize;
            let x_2681 : vec2<f32> = ((vec2<f32>(x_2674.x, x_2674.y) * vec2<f32>(x_2678.z, x_2678.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2682 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2681.x, x_2681.y, x_2682.z, x_2682.w);
            let x_2684 : vec4<f32> = u_xlat11;
            let x_2686 : vec2<f32> = floor(vec2<f32>(x_2684.x, x_2684.y));
            let x_2687 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2686.x, x_2686.y, x_2687.z, x_2687.w);
            let x_2690 : vec4<f32> = u_xlat10;
            let x_2693 : vec4<f32> = x_422.x_AdditionalShadowmapSize;
            let x_2696 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2690.x, x_2690.y) * vec2<f32>(x_2693.z, x_2693.w)) + -(vec2<f32>(x_2696.x, x_2696.y)));
            let x_2700 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2700.x, x_2700.x, x_2700.y, x_2700.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2703 : vec4<f32> = u_xlat12;
            let x_2705 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2703.x, x_2703.x, x_2703.z, x_2703.z) * vec4<f32>(x_2705.x, x_2705.x, x_2705.z, x_2705.z));
            let x_2708 : vec4<f32> = u_xlat13;
            let x_2710 : vec2<f32> = (vec2<f32>(x_2708.y, x_2708.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2711 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2710.x, x_2711.y, x_2710.y, x_2711.w);
            let x_2713 : vec4<f32> = u_xlat13;
            let x_2716 : vec2<f32> = u_xlat61;
            let x_2718 : vec2<f32> = ((vec2<f32>(x_2713.x, x_2713.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2716));
            let x_2719 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2718.x, x_2718.y, x_2719.z, x_2719.w);
            let x_2722 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2722) + vec2<f32>(1.0f, 1.0f));
            let x_2725 : vec2<f32> = u_xlat61;
            let x_2726 : vec2<f32> = min(x_2725, vec2<f32>(0.0f, 0.0f));
            let x_2727 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2726.x, x_2726.y, x_2727.z, x_2727.w);
            let x_2729 : vec4<f32> = u_xlat14;
            let x_2732 : vec4<f32> = u_xlat14;
            let x_2735 : vec2<f32> = u_xlat63;
            let x_2736 : vec2<f32> = ((-(vec2<f32>(x_2729.x, x_2729.y)) * vec2<f32>(x_2732.x, x_2732.y)) + x_2735);
            let x_2737 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2736.x, x_2736.y, x_2737.z, x_2737.w);
            let x_2739 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2739, vec2<f32>(0.0f, 0.0f));
            let x_2741 : vec2<f32> = u_xlat61;
            let x_2743 : vec2<f32> = u_xlat61;
            let x_2745 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2741) * x_2743) + vec2<f32>(x_2745.y, x_2745.w));
            let x_2748 : vec4<f32> = u_xlat14;
            let x_2750 : vec2<f32> = (vec2<f32>(x_2748.x, x_2748.y) + vec2<f32>(1.0f, 1.0f));
            let x_2751 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2750.x, x_2750.y, x_2751.z, x_2751.w);
            let x_2753 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2753 + vec2<f32>(1.0f, 1.0f));
            let x_2755 : vec4<f32> = u_xlat13;
            let x_2757 : vec2<f32> = (vec2<f32>(x_2755.x, x_2755.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2758 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2757.x, x_2757.y, x_2758.z, x_2758.w);
            let x_2760 : vec2<f32> = u_xlat63;
            let x_2761 : vec2<f32> = (x_2760 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2762 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2761.x, x_2761.y, x_2762.z, x_2762.w);
            let x_2764 : vec4<f32> = u_xlat14;
            let x_2766 : vec2<f32> = (vec2<f32>(x_2764.x, x_2764.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2767 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2766.x, x_2766.y, x_2767.z, x_2767.w);
            let x_2769 : vec2<f32> = u_xlat61;
            let x_2770 : vec2<f32> = (x_2769 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2771 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2770.x, x_2770.y, x_2771.z, x_2771.w);
            let x_2773 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2773.y, x_2773.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2777 : f32 = u_xlat14.x;
            u_xlat15.z = x_2777;
            let x_2780 : f32 = u_xlat61.x;
            u_xlat15.w = x_2780;
            let x_2783 : f32 = u_xlat16.x;
            u_xlat13.z = x_2783;
            let x_2786 : f32 = u_xlat12.x;
            u_xlat13.w = x_2786;
            let x_2788 : vec4<f32> = u_xlat13;
            let x_2790 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2788.z, x_2788.w, x_2788.x, x_2788.z) + vec4<f32>(x_2790.z, x_2790.w, x_2790.x, x_2790.z));
            let x_2794 : f32 = u_xlat15.y;
            u_xlat14.z = x_2794;
            let x_2797 : f32 = u_xlat61.y;
            u_xlat14.w = x_2797;
            let x_2800 : f32 = u_xlat13.y;
            u_xlat16.z = x_2800;
            let x_2803 : f32 = u_xlat12.z;
            u_xlat16.w = x_2803;
            let x_2805 : vec4<f32> = u_xlat14;
            let x_2807 : vec4<f32> = u_xlat16;
            let x_2809 : vec3<f32> = (vec3<f32>(x_2805.z, x_2805.y, x_2805.w) + vec3<f32>(x_2807.z, x_2807.y, x_2807.w));
            let x_2810 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2809.x, x_2809.y, x_2809.z, x_2810.w);
            let x_2812 : vec4<f32> = u_xlat13;
            let x_2814 : vec4<f32> = u_xlat17;
            let x_2816 : vec3<f32> = (vec3<f32>(x_2812.x, x_2812.z, x_2812.w) / vec3<f32>(x_2814.z, x_2814.w, x_2814.y));
            let x_2817 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2816.x, x_2816.y, x_2816.z, x_2817.w);
            let x_2819 : vec4<f32> = u_xlat13;
            let x_2821 : vec3<f32> = (vec3<f32>(x_2819.x, x_2819.y, x_2819.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2822 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2821.x, x_2821.y, x_2821.z, x_2822.w);
            let x_2824 : vec4<f32> = u_xlat16;
            let x_2826 : vec4<f32> = u_xlat12;
            let x_2828 : vec3<f32> = (vec3<f32>(x_2824.z, x_2824.y, x_2824.w) / vec3<f32>(x_2826.x, x_2826.y, x_2826.z));
            let x_2829 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2828.x, x_2828.y, x_2828.z, x_2829.w);
            let x_2831 : vec4<f32> = u_xlat14;
            let x_2833 : vec3<f32> = (vec3<f32>(x_2831.x, x_2831.y, x_2831.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2834 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2833.x, x_2833.y, x_2833.z, x_2834.w);
            let x_2836 : vec4<f32> = u_xlat13;
            let x_2839 : vec4<f32> = x_422.x_AdditionalShadowmapSize;
            let x_2841 : vec3<f32> = (vec3<f32>(x_2836.y, x_2836.x, x_2836.z) * vec3<f32>(x_2839.x, x_2839.x, x_2839.x));
            let x_2842 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2841.x, x_2841.y, x_2841.z, x_2842.w);
            let x_2844 : vec4<f32> = u_xlat14;
            let x_2847 : vec4<f32> = x_422.x_AdditionalShadowmapSize;
            let x_2849 : vec3<f32> = (vec3<f32>(x_2844.x, x_2844.y, x_2844.z) * vec3<f32>(x_2847.y, x_2847.y, x_2847.y));
            let x_2850 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2849.x, x_2849.y, x_2849.z, x_2850.w);
            let x_2853 : f32 = u_xlat14.x;
            u_xlat13.w = x_2853;
            let x_2855 : vec4<f32> = u_xlat11;
            let x_2858 : vec4<f32> = x_422.x_AdditionalShadowmapSize;
            let x_2861 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2855.x, x_2855.y, x_2855.x, x_2855.y) * vec4<f32>(x_2858.x, x_2858.y, x_2858.x, x_2858.y)) + vec4<f32>(x_2861.y, x_2861.w, x_2861.x, x_2861.w));
            let x_2864 : vec4<f32> = u_xlat11;
            let x_2867 : vec4<f32> = x_422.x_AdditionalShadowmapSize;
            let x_2870 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2864.x, x_2864.y) * vec2<f32>(x_2867.x, x_2867.y)) + vec2<f32>(x_2870.z, x_2870.w));
            let x_2874 : f32 = u_xlat13.y;
            u_xlat14.w = x_2874;
            let x_2876 : vec4<f32> = u_xlat14;
            let x_2877 : vec2<f32> = vec2<f32>(x_2876.y, x_2876.z);
            let x_2878 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2878.x, x_2877.x, x_2878.z, x_2877.y);
            let x_2880 : vec4<f32> = u_xlat11;
            let x_2883 : vec4<f32> = x_422.x_AdditionalShadowmapSize;
            let x_2886 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2880.x, x_2880.y, x_2880.x, x_2880.y) * vec4<f32>(x_2883.x, x_2883.y, x_2883.x, x_2883.y)) + vec4<f32>(x_2886.x, x_2886.y, x_2886.z, x_2886.y));
            let x_2889 : vec4<f32> = u_xlat11;
            let x_2892 : vec4<f32> = x_422.x_AdditionalShadowmapSize;
            let x_2895 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2889.x, x_2889.y, x_2889.x, x_2889.y) * vec4<f32>(x_2892.x, x_2892.y, x_2892.x, x_2892.y)) + vec4<f32>(x_2895.w, x_2895.y, x_2895.w, x_2895.z));
            let x_2898 : vec4<f32> = u_xlat11;
            let x_2901 : vec4<f32> = x_422.x_AdditionalShadowmapSize;
            let x_2904 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2898.x, x_2898.y, x_2898.x, x_2898.y) * vec4<f32>(x_2901.x, x_2901.y, x_2901.x, x_2901.y)) + vec4<f32>(x_2904.x, x_2904.w, x_2904.z, x_2904.w));
            let x_2907 : vec4<f32> = u_xlat12;
            let x_2909 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_2907.x, x_2907.x, x_2907.x, x_2907.y) * vec4<f32>(x_2909.z, x_2909.w, x_2909.y, x_2909.z));
            let x_2912 : vec4<f32> = u_xlat12;
            let x_2914 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_2912.y, x_2912.y, x_2912.z, x_2912.z) * x_2914);
            let x_2917 : f32 = u_xlat12.z;
            let x_2919 : f32 = u_xlat17.y;
            u_xlat83 = (x_2917 * x_2919);
            let x_2922 : vec4<f32> = u_xlat15;
            let x_2923 : vec2<f32> = vec2<f32>(x_2922.x, x_2922.y);
            let x_2925 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_2923.x, x_2923.y, x_2925);
            let x_2932 : vec3<f32> = txVec34;
            let x_2934 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2932.xy, x_2932.z);
            u_xlat84 = x_2934;
            let x_2936 : vec4<f32> = u_xlat15;
            let x_2937 : vec2<f32> = vec2<f32>(x_2936.z, x_2936.w);
            let x_2939 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_2937.x, x_2937.y, x_2939);
            let x_2947 : vec3<f32> = txVec35;
            let x_2949 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2947.xy, x_2947.z);
            u_xlat85 = x_2949;
            let x_2950 : f32 = u_xlat85;
            let x_2952 : f32 = u_xlat18.y;
            u_xlat85 = (x_2950 * x_2952);
            let x_2955 : f32 = u_xlat18.x;
            let x_2956 : f32 = u_xlat84;
            let x_2958 : f32 = u_xlat85;
            u_xlat84 = ((x_2955 * x_2956) + x_2958);
            let x_2961 : vec2<f32> = u_xlat61;
            let x_2963 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_2961.x, x_2961.y, x_2963);
            let x_2970 : vec3<f32> = txVec36;
            let x_2972 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2970.xy, x_2970.z);
            u_xlat85 = x_2972;
            let x_2974 : f32 = u_xlat18.z;
            let x_2975 : f32 = u_xlat85;
            let x_2977 : f32 = u_xlat84;
            u_xlat84 = ((x_2974 * x_2975) + x_2977);
            let x_2980 : vec4<f32> = u_xlat14;
            let x_2981 : vec2<f32> = vec2<f32>(x_2980.x, x_2980.y);
            let x_2983 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_2981.x, x_2981.y, x_2983);
            let x_2990 : vec3<f32> = txVec37;
            let x_2992 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2990.xy, x_2990.z);
            u_xlat85 = x_2992;
            let x_2994 : f32 = u_xlat18.w;
            let x_2995 : f32 = u_xlat85;
            let x_2997 : f32 = u_xlat84;
            u_xlat84 = ((x_2994 * x_2995) + x_2997);
            let x_3000 : vec4<f32> = u_xlat16;
            let x_3001 : vec2<f32> = vec2<f32>(x_3000.x, x_3000.y);
            let x_3003 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_3001.x, x_3001.y, x_3003);
            let x_3010 : vec3<f32> = txVec38;
            let x_3012 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3010.xy, x_3010.z);
            u_xlat85 = x_3012;
            let x_3014 : f32 = u_xlat19.x;
            let x_3015 : f32 = u_xlat85;
            let x_3017 : f32 = u_xlat84;
            u_xlat84 = ((x_3014 * x_3015) + x_3017);
            let x_3020 : vec4<f32> = u_xlat16;
            let x_3021 : vec2<f32> = vec2<f32>(x_3020.z, x_3020.w);
            let x_3023 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_3021.x, x_3021.y, x_3023);
            let x_3030 : vec3<f32> = txVec39;
            let x_3032 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3030.xy, x_3030.z);
            u_xlat85 = x_3032;
            let x_3034 : f32 = u_xlat19.y;
            let x_3035 : f32 = u_xlat85;
            let x_3037 : f32 = u_xlat84;
            u_xlat84 = ((x_3034 * x_3035) + x_3037);
            let x_3040 : vec4<f32> = u_xlat14;
            let x_3041 : vec2<f32> = vec2<f32>(x_3040.z, x_3040.w);
            let x_3043 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_3041.x, x_3041.y, x_3043);
            let x_3050 : vec3<f32> = txVec40;
            let x_3052 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3050.xy, x_3050.z);
            u_xlat85 = x_3052;
            let x_3054 : f32 = u_xlat19.z;
            let x_3055 : f32 = u_xlat85;
            let x_3057 : f32 = u_xlat84;
            u_xlat84 = ((x_3054 * x_3055) + x_3057);
            let x_3060 : vec4<f32> = u_xlat13;
            let x_3061 : vec2<f32> = vec2<f32>(x_3060.x, x_3060.y);
            let x_3063 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_3061.x, x_3061.y, x_3063);
            let x_3070 : vec3<f32> = txVec41;
            let x_3072 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3070.xy, x_3070.z);
            u_xlat85 = x_3072;
            let x_3074 : f32 = u_xlat19.w;
            let x_3075 : f32 = u_xlat85;
            let x_3077 : f32 = u_xlat84;
            u_xlat84 = ((x_3074 * x_3075) + x_3077);
            let x_3080 : vec4<f32> = u_xlat13;
            let x_3081 : vec2<f32> = vec2<f32>(x_3080.z, x_3080.w);
            let x_3083 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_3081.x, x_3081.y, x_3083);
            let x_3090 : vec3<f32> = txVec42;
            let x_3092 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3090.xy, x_3090.z);
            u_xlat85 = x_3092;
            let x_3093 : f32 = u_xlat83;
            let x_3094 : f32 = u_xlat85;
            let x_3096 : f32 = u_xlat84;
            u_xlat82 = ((x_3093 * x_3094) + x_3096);
          } else {
            let x_3099 : vec4<f32> = u_xlat10;
            let x_3102 : vec4<f32> = x_422.x_AdditionalShadowmapSize;
            let x_3105 : vec2<f32> = ((vec2<f32>(x_3099.x, x_3099.y) * vec2<f32>(x_3102.z, x_3102.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3106 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3105.x, x_3105.y, x_3106.z, x_3106.w);
            let x_3108 : vec4<f32> = u_xlat11;
            let x_3110 : vec2<f32> = floor(vec2<f32>(x_3108.x, x_3108.y));
            let x_3111 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3110.x, x_3110.y, x_3111.z, x_3111.w);
            let x_3113 : vec4<f32> = u_xlat10;
            let x_3116 : vec4<f32> = x_422.x_AdditionalShadowmapSize;
            let x_3119 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3113.x, x_3113.y) * vec2<f32>(x_3116.z, x_3116.w)) + -(vec2<f32>(x_3119.x, x_3119.y)));
            let x_3123 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3123.x, x_3123.x, x_3123.y, x_3123.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3126 : vec4<f32> = u_xlat12;
            let x_3128 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3126.x, x_3126.x, x_3126.z, x_3126.z) * vec4<f32>(x_3128.x, x_3128.x, x_3128.z, x_3128.z));
            let x_3131 : vec4<f32> = u_xlat13;
            let x_3133 : vec2<f32> = (vec2<f32>(x_3131.y, x_3131.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3134 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3134.x, x_3133.x, x_3134.z, x_3133.y);
            let x_3136 : vec4<f32> = u_xlat13;
            let x_3139 : vec2<f32> = u_xlat61;
            let x_3141 : vec2<f32> = ((vec2<f32>(x_3136.x, x_3136.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3139));
            let x_3142 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3141.x, x_3142.y, x_3141.y, x_3142.w);
            let x_3144 : vec2<f32> = u_xlat61;
            let x_3146 : vec2<f32> = (-(x_3144) + vec2<f32>(1.0f, 1.0f));
            let x_3147 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3146.x, x_3146.y, x_3147.z, x_3147.w);
            let x_3149 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3149, vec2<f32>(0.0f, 0.0f));
            let x_3151 : vec2<f32> = u_xlat63;
            let x_3153 : vec2<f32> = u_xlat63;
            let x_3155 : vec4<f32> = u_xlat13;
            let x_3157 : vec2<f32> = ((-(x_3151) * x_3153) + vec2<f32>(x_3155.x, x_3155.y));
            let x_3158 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3157.x, x_3157.y, x_3158.z, x_3158.w);
            let x_3160 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3160, vec2<f32>(0.0f, 0.0f));
            let x_3163 : vec2<f32> = u_xlat63;
            let x_3165 : vec2<f32> = u_xlat63;
            let x_3167 : vec4<f32> = u_xlat12;
            let x_3169 : vec2<f32> = ((-(x_3163) * x_3165) + vec2<f32>(x_3167.y, x_3167.w));
            let x_3170 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3169.x, x_3170.y, x_3169.y);
            let x_3172 : vec4<f32> = u_xlat13;
            let x_3174 : vec2<f32> = (vec2<f32>(x_3172.x, x_3172.y) + vec2<f32>(2.0f, 2.0f));
            let x_3175 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3174.x, x_3174.y, x_3175.z, x_3175.w);
            let x_3177 : vec3<f32> = u_xlat37;
            let x_3179 : vec2<f32> = (vec2<f32>(x_3177.x, x_3177.z) + vec2<f32>(2.0f, 2.0f));
            let x_3180 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3180.x, x_3179.x, x_3180.z, x_3179.y);
            let x_3183 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3183 * 0.08163200318813323975f);
            let x_3186 : vec4<f32> = u_xlat12;
            let x_3188 : vec3<f32> = (vec3<f32>(x_3186.z, x_3186.x, x_3186.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3189 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3188.x, x_3188.y, x_3188.z, x_3189.w);
            let x_3191 : vec4<f32> = u_xlat13;
            let x_3193 : vec2<f32> = (vec2<f32>(x_3191.x, x_3191.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3194 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3193.x, x_3193.y, x_3194.z, x_3194.w);
            let x_3197 : f32 = u_xlat16.y;
            u_xlat15.x = x_3197;
            let x_3199 : vec2<f32> = u_xlat61;
            let x_3202 : vec2<f32> = ((vec2<f32>(x_3199.x, x_3199.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3203 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3203.x, x_3202.x, x_3203.z, x_3202.y);
            let x_3205 : vec2<f32> = u_xlat61;
            let x_3208 : vec2<f32> = ((vec2<f32>(x_3205.x, x_3205.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3209 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3208.x, x_3209.y, x_3208.y, x_3209.w);
            let x_3212 : f32 = u_xlat12.x;
            u_xlat13.y = x_3212;
            let x_3215 : f32 = u_xlat14.y;
            u_xlat13.w = x_3215;
            let x_3217 : vec4<f32> = u_xlat13;
            let x_3218 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3217 + x_3218);
            let x_3220 : vec2<f32> = u_xlat61;
            let x_3223 : vec2<f32> = ((vec2<f32>(x_3220.y, x_3220.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3224 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3224.x, x_3223.x, x_3224.z, x_3223.y);
            let x_3226 : vec2<f32> = u_xlat61;
            let x_3229 : vec2<f32> = ((vec2<f32>(x_3226.y, x_3226.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3230 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3229.x, x_3230.y, x_3229.y, x_3230.w);
            let x_3233 : f32 = u_xlat12.y;
            u_xlat14.y = x_3233;
            let x_3235 : vec4<f32> = u_xlat14;
            let x_3236 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3235 + x_3236);
            let x_3238 : vec4<f32> = u_xlat13;
            let x_3239 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3238 / x_3239);
            let x_3241 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3241 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3243 : vec4<f32> = u_xlat14;
            let x_3244 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3243 / x_3244);
            let x_3246 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3246 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3248 : vec4<f32> = u_xlat13;
            let x_3251 : vec4<f32> = x_422.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3248.w, x_3248.x, x_3248.y, x_3248.z) * vec4<f32>(x_3251.x, x_3251.x, x_3251.x, x_3251.x));
            let x_3254 : vec4<f32> = u_xlat14;
            let x_3257 : vec4<f32> = x_422.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3254.x, x_3254.w, x_3254.y, x_3254.z) * vec4<f32>(x_3257.y, x_3257.y, x_3257.y, x_3257.y));
            let x_3260 : vec4<f32> = u_xlat13;
            let x_3261 : vec3<f32> = vec3<f32>(x_3260.y, x_3260.z, x_3260.w);
            let x_3262 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3261.x, x_3262.y, x_3261.y, x_3261.z);
            let x_3265 : f32 = u_xlat14.x;
            u_xlat16.y = x_3265;
            let x_3267 : vec4<f32> = u_xlat11;
            let x_3270 : vec4<f32> = x_422.x_AdditionalShadowmapSize;
            let x_3273 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3267.x, x_3267.y, x_3267.x, x_3267.y) * vec4<f32>(x_3270.x, x_3270.y, x_3270.x, x_3270.y)) + vec4<f32>(x_3273.x, x_3273.y, x_3273.z, x_3273.y));
            let x_3276 : vec4<f32> = u_xlat11;
            let x_3279 : vec4<f32> = x_422.x_AdditionalShadowmapSize;
            let x_3282 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3276.x, x_3276.y) * vec2<f32>(x_3279.x, x_3279.y)) + vec2<f32>(x_3282.w, x_3282.y));
            let x_3286 : f32 = u_xlat16.y;
            u_xlat13.y = x_3286;
            let x_3289 : f32 = u_xlat14.z;
            u_xlat16.y = x_3289;
            let x_3291 : vec4<f32> = u_xlat11;
            let x_3294 : vec4<f32> = x_422.x_AdditionalShadowmapSize;
            let x_3297 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3291.x, x_3291.y, x_3291.x, x_3291.y) * vec4<f32>(x_3294.x, x_3294.y, x_3294.x, x_3294.y)) + vec4<f32>(x_3297.x, x_3297.y, x_3297.z, x_3297.y));
            let x_3300 : vec4<f32> = u_xlat11;
            let x_3303 : vec4<f32> = x_422.x_AdditionalShadowmapSize;
            let x_3306 : vec4<f32> = u_xlat16;
            let x_3308 : vec2<f32> = ((vec2<f32>(x_3300.x, x_3300.y) * vec2<f32>(x_3303.x, x_3303.y)) + vec2<f32>(x_3306.w, x_3306.y));
            let x_3309 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3308.x, x_3308.y, x_3309.z, x_3309.w);
            let x_3312 : f32 = u_xlat16.y;
            u_xlat13.z = x_3312;
            let x_3314 : vec4<f32> = u_xlat11;
            let x_3317 : vec4<f32> = x_422.x_AdditionalShadowmapSize;
            let x_3320 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3314.x, x_3314.y, x_3314.x, x_3314.y) * vec4<f32>(x_3317.x, x_3317.y, x_3317.x, x_3317.y)) + vec4<f32>(x_3320.x, x_3320.y, x_3320.x, x_3320.z));
            let x_3324 : f32 = u_xlat14.w;
            u_xlat16.y = x_3324;
            let x_3327 : vec4<f32> = u_xlat11;
            let x_3330 : vec4<f32> = x_422.x_AdditionalShadowmapSize;
            let x_3333 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3327.x, x_3327.y, x_3327.x, x_3327.y) * vec4<f32>(x_3330.x, x_3330.y, x_3330.x, x_3330.y)) + vec4<f32>(x_3333.x, x_3333.y, x_3333.z, x_3333.y));
            let x_3337 : vec4<f32> = u_xlat11;
            let x_3340 : vec4<f32> = x_422.x_AdditionalShadowmapSize;
            let x_3343 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3337.x, x_3337.y) * vec2<f32>(x_3340.x, x_3340.y)) + vec2<f32>(x_3343.w, x_3343.y));
            let x_3347 : f32 = u_xlat16.y;
            u_xlat13.w = x_3347;
            let x_3350 : vec4<f32> = u_xlat11;
            let x_3353 : vec4<f32> = x_422.x_AdditionalShadowmapSize;
            let x_3356 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3350.x, x_3350.y) * vec2<f32>(x_3353.x, x_3353.y)) + vec2<f32>(x_3356.x, x_3356.w));
            let x_3359 : vec4<f32> = u_xlat16;
            let x_3360 : vec3<f32> = vec3<f32>(x_3359.x, x_3359.z, x_3359.w);
            let x_3361 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3360.x, x_3361.y, x_3360.y, x_3360.z);
            let x_3363 : vec4<f32> = u_xlat11;
            let x_3366 : vec4<f32> = x_422.x_AdditionalShadowmapSize;
            let x_3369 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3363.x, x_3363.y, x_3363.x, x_3363.y) * vec4<f32>(x_3366.x, x_3366.y, x_3366.x, x_3366.y)) + vec4<f32>(x_3369.x, x_3369.y, x_3369.z, x_3369.y));
            let x_3373 : vec4<f32> = u_xlat11;
            let x_3376 : vec4<f32> = x_422.x_AdditionalShadowmapSize;
            let x_3379 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3373.x, x_3373.y) * vec2<f32>(x_3376.x, x_3376.y)) + vec2<f32>(x_3379.w, x_3379.y));
            let x_3383 : f32 = u_xlat13.x;
            u_xlat14.x = x_3383;
            let x_3385 : vec4<f32> = u_xlat11;
            let x_3388 : vec4<f32> = x_422.x_AdditionalShadowmapSize;
            let x_3391 : vec4<f32> = u_xlat14;
            let x_3393 : vec2<f32> = ((vec2<f32>(x_3385.x, x_3385.y) * vec2<f32>(x_3388.x, x_3388.y)) + vec2<f32>(x_3391.x, x_3391.y));
            let x_3394 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3393.x, x_3393.y, x_3394.z, x_3394.w);
            let x_3397 : vec4<f32> = u_xlat12;
            let x_3399 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3397.x, x_3397.x, x_3397.x, x_3397.x) * x_3399);
            let x_3402 : vec4<f32> = u_xlat12;
            let x_3404 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3402.y, x_3402.y, x_3402.y, x_3402.y) * x_3404);
            let x_3407 : vec4<f32> = u_xlat12;
            let x_3409 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3407.z, x_3407.z, x_3407.z, x_3407.z) * x_3409);
            let x_3411 : vec4<f32> = u_xlat12;
            let x_3413 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3411.w, x_3411.w, x_3411.w, x_3411.w) * x_3413);
            let x_3416 : vec4<f32> = u_xlat17;
            let x_3417 : vec2<f32> = vec2<f32>(x_3416.x, x_3416.y);
            let x_3419 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3417.x, x_3417.y, x_3419);
            let x_3426 : vec3<f32> = txVec43;
            let x_3428 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3426.xy, x_3426.z);
            u_xlat83 = x_3428;
            let x_3430 : vec4<f32> = u_xlat17;
            let x_3431 : vec2<f32> = vec2<f32>(x_3430.z, x_3430.w);
            let x_3433 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3431.x, x_3431.y, x_3433);
            let x_3440 : vec3<f32> = txVec44;
            let x_3442 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3440.xy, x_3440.z);
            u_xlat84 = x_3442;
            let x_3443 : f32 = u_xlat84;
            let x_3445 : f32 = u_xlat22.y;
            u_xlat84 = (x_3443 * x_3445);
            let x_3448 : f32 = u_xlat22.x;
            let x_3449 : f32 = u_xlat83;
            let x_3451 : f32 = u_xlat84;
            u_xlat83 = ((x_3448 * x_3449) + x_3451);
            let x_3454 : vec2<f32> = u_xlat61;
            let x_3456 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3454.x, x_3454.y, x_3456);
            let x_3463 : vec3<f32> = txVec45;
            let x_3465 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3463.xy, x_3463.z);
            u_xlat84 = x_3465;
            let x_3467 : f32 = u_xlat22.z;
            let x_3468 : f32 = u_xlat84;
            let x_3470 : f32 = u_xlat83;
            u_xlat83 = ((x_3467 * x_3468) + x_3470);
            let x_3473 : vec4<f32> = u_xlat20;
            let x_3474 : vec2<f32> = vec2<f32>(x_3473.x, x_3473.y);
            let x_3476 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3474.x, x_3474.y, x_3476);
            let x_3483 : vec3<f32> = txVec46;
            let x_3485 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3483.xy, x_3483.z);
            u_xlat84 = x_3485;
            let x_3487 : f32 = u_xlat22.w;
            let x_3488 : f32 = u_xlat84;
            let x_3490 : f32 = u_xlat83;
            u_xlat83 = ((x_3487 * x_3488) + x_3490);
            let x_3493 : vec4<f32> = u_xlat18;
            let x_3494 : vec2<f32> = vec2<f32>(x_3493.x, x_3493.y);
            let x_3496 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3494.x, x_3494.y, x_3496);
            let x_3503 : vec3<f32> = txVec47;
            let x_3505 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3503.xy, x_3503.z);
            u_xlat84 = x_3505;
            let x_3507 : f32 = u_xlat23.x;
            let x_3508 : f32 = u_xlat84;
            let x_3510 : f32 = u_xlat83;
            u_xlat83 = ((x_3507 * x_3508) + x_3510);
            let x_3513 : vec4<f32> = u_xlat18;
            let x_3514 : vec2<f32> = vec2<f32>(x_3513.z, x_3513.w);
            let x_3516 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3514.x, x_3514.y, x_3516);
            let x_3523 : vec3<f32> = txVec48;
            let x_3525 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3523.xy, x_3523.z);
            u_xlat84 = x_3525;
            let x_3527 : f32 = u_xlat23.y;
            let x_3528 : f32 = u_xlat84;
            let x_3530 : f32 = u_xlat83;
            u_xlat83 = ((x_3527 * x_3528) + x_3530);
            let x_3533 : vec4<f32> = u_xlat19;
            let x_3534 : vec2<f32> = vec2<f32>(x_3533.x, x_3533.y);
            let x_3536 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3534.x, x_3534.y, x_3536);
            let x_3543 : vec3<f32> = txVec49;
            let x_3545 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3543.xy, x_3543.z);
            u_xlat84 = x_3545;
            let x_3547 : f32 = u_xlat23.z;
            let x_3548 : f32 = u_xlat84;
            let x_3550 : f32 = u_xlat83;
            u_xlat83 = ((x_3547 * x_3548) + x_3550);
            let x_3553 : vec4<f32> = u_xlat20;
            let x_3554 : vec2<f32> = vec2<f32>(x_3553.z, x_3553.w);
            let x_3556 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3554.x, x_3554.y, x_3556);
            let x_3563 : vec3<f32> = txVec50;
            let x_3565 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3563.xy, x_3563.z);
            u_xlat84 = x_3565;
            let x_3567 : f32 = u_xlat23.w;
            let x_3568 : f32 = u_xlat84;
            let x_3570 : f32 = u_xlat83;
            u_xlat83 = ((x_3567 * x_3568) + x_3570);
            let x_3573 : vec4<f32> = u_xlat21;
            let x_3574 : vec2<f32> = vec2<f32>(x_3573.x, x_3573.y);
            let x_3576 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3574.x, x_3574.y, x_3576);
            let x_3583 : vec3<f32> = txVec51;
            let x_3585 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3583.xy, x_3583.z);
            u_xlat84 = x_3585;
            let x_3587 : f32 = u_xlat24.x;
            let x_3588 : f32 = u_xlat84;
            let x_3590 : f32 = u_xlat83;
            u_xlat83 = ((x_3587 * x_3588) + x_3590);
            let x_3593 : vec4<f32> = u_xlat21;
            let x_3594 : vec2<f32> = vec2<f32>(x_3593.z, x_3593.w);
            let x_3596 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3594.x, x_3594.y, x_3596);
            let x_3603 : vec3<f32> = txVec52;
            let x_3605 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3603.xy, x_3603.z);
            u_xlat84 = x_3605;
            let x_3607 : f32 = u_xlat24.y;
            let x_3608 : f32 = u_xlat84;
            let x_3610 : f32 = u_xlat83;
            u_xlat83 = ((x_3607 * x_3608) + x_3610);
            let x_3613 : vec2<f32> = u_xlat38;
            let x_3615 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3613.x, x_3613.y, x_3615);
            let x_3622 : vec3<f32> = txVec53;
            let x_3624 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3622.xy, x_3622.z);
            u_xlat84 = x_3624;
            let x_3626 : f32 = u_xlat24.z;
            let x_3627 : f32 = u_xlat84;
            let x_3629 : f32 = u_xlat83;
            u_xlat83 = ((x_3626 * x_3627) + x_3629);
            let x_3632 : vec2<f32> = u_xlat69;
            let x_3634 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3632.x, x_3632.y, x_3634);
            let x_3641 : vec3<f32> = txVec54;
            let x_3643 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3641.xy, x_3641.z);
            u_xlat84 = x_3643;
            let x_3645 : f32 = u_xlat24.w;
            let x_3646 : f32 = u_xlat84;
            let x_3648 : f32 = u_xlat83;
            u_xlat83 = ((x_3645 * x_3646) + x_3648);
            let x_3651 : vec4<f32> = u_xlat16;
            let x_3652 : vec2<f32> = vec2<f32>(x_3651.x, x_3651.y);
            let x_3654 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3652.x, x_3652.y, x_3654);
            let x_3661 : vec3<f32> = txVec55;
            let x_3663 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3661.xy, x_3661.z);
            u_xlat84 = x_3663;
            let x_3665 : f32 = u_xlat12.x;
            let x_3666 : f32 = u_xlat84;
            let x_3668 : f32 = u_xlat83;
            u_xlat83 = ((x_3665 * x_3666) + x_3668);
            let x_3671 : vec4<f32> = u_xlat16;
            let x_3672 : vec2<f32> = vec2<f32>(x_3671.z, x_3671.w);
            let x_3674 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3672.x, x_3672.y, x_3674);
            let x_3681 : vec3<f32> = txVec56;
            let x_3683 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3681.xy, x_3681.z);
            u_xlat84 = x_3683;
            let x_3685 : f32 = u_xlat12.y;
            let x_3686 : f32 = u_xlat84;
            let x_3688 : f32 = u_xlat83;
            u_xlat83 = ((x_3685 * x_3686) + x_3688);
            let x_3691 : vec2<f32> = u_xlat64;
            let x_3693 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3691.x, x_3691.y, x_3693);
            let x_3700 : vec3<f32> = txVec57;
            let x_3702 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3700.xy, x_3700.z);
            u_xlat84 = x_3702;
            let x_3704 : f32 = u_xlat12.z;
            let x_3705 : f32 = u_xlat84;
            let x_3707 : f32 = u_xlat83;
            u_xlat83 = ((x_3704 * x_3705) + x_3707);
            let x_3710 : vec4<f32> = u_xlat11;
            let x_3711 : vec2<f32> = vec2<f32>(x_3710.x, x_3710.y);
            let x_3713 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3711.x, x_3711.y, x_3713);
            let x_3720 : vec3<f32> = txVec58;
            let x_3722 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3720.xy, x_3720.z);
            u_xlat84 = x_3722;
            let x_3724 : f32 = u_xlat12.w;
            let x_3725 : f32 = u_xlat84;
            let x_3727 : f32 = u_xlat83;
            u_xlat82 = ((x_3724 * x_3725) + x_3727);
          }
        }
      } else {
        let x_3731 : vec4<f32> = u_xlat10;
        let x_3732 : vec2<f32> = vec2<f32>(x_3731.x, x_3731.y);
        let x_3734 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3732.x, x_3732.y, x_3734);
        let x_3741 : vec3<f32> = txVec59;
        let x_3743 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3741.xy, x_3741.z);
        u_xlat82 = x_3743;
      }
      let x_3744 : i32 = u_xlati79;
      let x_3746 : f32 = x_422.x_AdditionalShadowParams[x_3744].x;
      u_xlat83 = (1.0f + -(x_3746));
      let x_3749 : f32 = u_xlat82;
      let x_3750 : i32 = u_xlati79;
      let x_3752 : f32 = x_422.x_AdditionalShadowParams[x_3750].x;
      let x_3754 : f32 = u_xlat83;
      u_xlat82 = ((x_3749 * x_3752) + x_3754);
      let x_3757 : f32 = u_xlat10.z;
      u_xlatb83 = (0.0f >= x_3757);
      let x_3761 : f32 = u_xlat10.z;
      u_xlatb84 = (x_3761 >= 1.0f);
      let x_3763 : bool = u_xlatb83;
      let x_3764 : bool = u_xlatb84;
      u_xlatb83 = (x_3763 | x_3764);
      let x_3766 : bool = u_xlatb83;
      let x_3767 : f32 = u_xlat82;
      u_xlat82 = select(x_3767, 1.0f, x_3766);
    } else {
      u_xlat82 = 1.0f;
    }
    let x_3770 : f32 = u_xlat82;
    u_xlat83 = (-(x_3770) + 1.0f);
    let x_3773 : f32 = u_xlat50;
    let x_3774 : f32 = u_xlat83;
    let x_3776 : f32 = u_xlat82;
    u_xlat82 = ((x_3773 * x_3774) + x_3776);
    let x_3778 : f32 = u_xlat80;
    let x_3779 : f32 = u_xlat82;
    u_xlat80 = (x_3778 * x_3779);
    let x_3781 : vec4<f32> = u_xlat3;
    let x_3783 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_3781.x, x_3781.y, x_3781.z), vec3<f32>(x_3783.x, x_3783.y, x_3783.z));
    let x_3786 : f32 = u_xlat82;
    u_xlat82 = clamp(x_3786, 0.0f, 1.0f);
    let x_3788 : f32 = u_xlat80;
    let x_3789 : f32 = u_xlat82;
    u_xlat80 = (x_3788 * x_3789);
    let x_3791 : f32 = u_xlat80;
    let x_3793 : i32 = u_xlati79;
    let x_3795 : vec4<f32> = x_2359.x_AdditionalLightsColor[x_3793];
    let x_3797 : vec3<f32> = (vec3<f32>(x_3791, x_3791, x_3791) * vec3<f32>(x_3795.x, x_3795.y, x_3795.z));
    let x_3798 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3797.x, x_3797.y, x_3797.z, x_3798.w);
    let x_3800 : vec4<f32> = u_xlat8;
    let x_3802 : f32 = u_xlat81;
    let x_3805 : vec3<f32> = u_xlat4;
    let x_3806 : vec3<f32> = ((vec3<f32>(x_3800.x, x_3800.y, x_3800.z) * vec3<f32>(x_3802, x_3802, x_3802)) + x_3805);
    let x_3807 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3806.x, x_3806.y, x_3806.z, x_3807.w);
    let x_3809 : vec4<f32> = u_xlat8;
    let x_3811 : vec4<f32> = u_xlat8;
    u_xlat79 = dot(vec3<f32>(x_3809.x, x_3809.y, x_3809.z), vec3<f32>(x_3811.x, x_3811.y, x_3811.z));
    let x_3814 : f32 = u_xlat79;
    u_xlat79 = max(x_3814, 1.17549435e-38f);
    let x_3816 : f32 = u_xlat79;
    u_xlat79 = inverseSqrt(x_3816);
    let x_3818 : f32 = u_xlat79;
    let x_3820 : vec4<f32> = u_xlat8;
    let x_3822 : vec3<f32> = (vec3<f32>(x_3818, x_3818, x_3818) * vec3<f32>(x_3820.x, x_3820.y, x_3820.z));
    let x_3823 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3822.x, x_3822.y, x_3822.z, x_3823.w);
    let x_3825 : vec4<f32> = u_xlat3;
    let x_3827 : vec4<f32> = u_xlat8;
    u_xlat79 = dot(vec3<f32>(x_3825.x, x_3825.y, x_3825.z), vec3<f32>(x_3827.x, x_3827.y, x_3827.z));
    let x_3830 : f32 = u_xlat79;
    u_xlat79 = clamp(x_3830, 0.0f, 1.0f);
    let x_3832 : vec4<f32> = u_xlat9;
    let x_3834 : vec4<f32> = u_xlat8;
    u_xlat80 = dot(vec3<f32>(x_3832.x, x_3832.y, x_3832.z), vec3<f32>(x_3834.x, x_3834.y, x_3834.z));
    let x_3837 : f32 = u_xlat80;
    u_xlat80 = clamp(x_3837, 0.0f, 1.0f);
    let x_3839 : f32 = u_xlat79;
    let x_3840 : f32 = u_xlat79;
    u_xlat79 = (x_3839 * x_3840);
    let x_3842 : f32 = u_xlat79;
    let x_3844 : f32 = u_xlat0.x;
    u_xlat79 = ((x_3842 * x_3844) + 1.00001001358032226562f);
    let x_3847 : f32 = u_xlat80;
    let x_3848 : f32 = u_xlat80;
    u_xlat80 = (x_3847 * x_3848);
    let x_3850 : f32 = u_xlat79;
    let x_3851 : f32 = u_xlat79;
    u_xlat79 = (x_3850 * x_3851);
    let x_3853 : f32 = u_xlat80;
    u_xlat80 = max(x_3853, 0.10000000149011611938f);
    let x_3855 : f32 = u_xlat79;
    let x_3856 : f32 = u_xlat80;
    u_xlat79 = (x_3855 * x_3856);
    let x_3859 : f32 = u_xlat1.x;
    let x_3860 : f32 = u_xlat79;
    u_xlat79 = (x_3859 * x_3860);
    let x_3862 : f32 = u_xlat77;
    let x_3863 : f32 = u_xlat79;
    u_xlat79 = (x_3862 / x_3863);
    let x_3865 : vec3<f32> = u_xlat2;
    let x_3866 : f32 = u_xlat79;
    let x_3869 : vec4<f32> = u_xlat6;
    let x_3871 : vec3<f32> = ((x_3865 * vec3<f32>(x_3866, x_3866, x_3866)) + vec3<f32>(x_3869.x, x_3869.y, x_3869.z));
    let x_3872 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3871.x, x_3871.y, x_3871.z, x_3872.w);
    let x_3874 : vec4<f32> = u_xlat8;
    let x_3876 : vec4<f32> = u_xlat10;
    let x_3879 : vec3<f32> = u_xlat26;
    u_xlat26 = ((vec3<f32>(x_3874.x, x_3874.y, x_3874.z) * vec3<f32>(x_3876.x, x_3876.y, x_3876.z)) + x_3879);

    continuing {
      let x_3881 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3881 + bitcast<u32>(1i));
    }
  }
  let x_3883 : vec3<f32> = u_xlat5;
  let x_3884 : f32 = u_xlat75;
  let x_3887 : vec4<f32> = u_xlat7;
  let x_3889 : vec3<f32> = ((x_3883 * vec3<f32>(x_3884, x_3884, x_3884)) + vec3<f32>(x_3887.x, x_3887.y, x_3887.z));
  let x_3890 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3889.x, x_3889.y, x_3889.z, x_3890.w);
  let x_3894 : vec3<f32> = u_xlat26;
  let x_3895 : vec4<f32> = u_xlat0;
  let x_3897 : vec3<f32> = (x_3894 + vec3<f32>(x_3895.x, x_3895.y, x_3895.z));
  let x_3898 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3897.x, x_3897.y, x_3897.z, x_3898.w);
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


