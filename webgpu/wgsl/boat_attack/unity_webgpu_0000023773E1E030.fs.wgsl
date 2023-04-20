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
  /* @offset(8) */
  x_AlphaToMaskAvailable : f32,
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
  x_ScreenParams : vec4<f32>,
  /* @offset(112) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(128) */
  unity_FogParams : vec4<f32>,
  /* @offset(144) */
  unity_FogColor : vec4<f32>,
  /* @offset(160) */
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  /* @offset(0) */
  Texture2D_B222E8F_TexelSize : vec4<f32>,
  /* @offset(16) */
  Color_C30C7CA3 : vec4<f32>,
  /* @offset(32) */
  Texture2D_D9BFD5F1_TexelSize : vec4<f32>,
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

var<private> u_xlat0 : vec3<f32>;

var<private> vs_INTERP9 : vec3<f32>;

var<private> u_xlatb26 : vec2<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_83 : UnityPerDraw;

var<private> u_xlat26 : vec3<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlatb0 : bool;

@group(1) @binding(0) var<uniform> x_147 : PGlobals;

var<private> u_xlat4 : vec3<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> u_xlat79 : f32;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(10) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_251 : UnityPerMaterial;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat34 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_355 : LightShadows;

var<private> u_xlatb79 : bool;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb80 : bool;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat29 : f32;

var<private> u_xlat35 : vec3<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat36 : vec2<f32>;

var<private> u_xlat68 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat82 : f32;

var<private> u_xlatb28 : bool;

var<private> u_xlatb54 : bool;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat28 : f32;

var<private> u_xlatu3 : vec3<u32>;

var<private> u_xlatu54 : u32;

var<private> u_xlatu80 : u32;

var<private> u_xlati54 : i32;

var<private> u_xlat54 : f32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat81 : f32;

var<private> u_xlat83 : f32;

var<private> u_xlat32 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlatb58 : bool;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat84 : f32;

var<private> u_xlat65 : vec2<f32>;

var<private> u_xlat86 : f32;

var<private> u_xlat33 : f32;

var<private> u_xlatb2 : bool;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu0 : u32;

var<private> u_xlatu81 : u32;

var<private> u_xlati83 : i32;

var<private> u_xlati81 : i32;

@group(1) @binding(1) var<uniform> x_3658 : AdditionalLights;

var<private> u_xlati84 : i32;

var<private> u_xlatb85 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat87 : f32;

var<private> u_xlat85 : f32;

var<private> u_xlatb84 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat88 : f32;

var<private> u_xlat39 : vec3<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat40 : vec2<f32>;

var<private> u_xlat72 : vec2<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlatb87 : bool;

var<private> u_xlat78 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb81 : bool;

fn int_bitfieldInsert_i1_i1_i1_i1_(base : ptr<function, i32>, insert : ptr<function, i32>, offset_1 : ptr<function, i32>, bits : ptr<function, i32>) -> i32 {
  var mask : u32;
  let x_19 : i32 = *(bits);
  let x_23 : i32 = *(offset_1);
  mask = (~((4294967295u << bitcast<u32>(x_19))) << bitcast<u32>(x_23));
  let x_26 : i32 = *(base);
  let x_28 : u32 = mask;
  let x_31 : i32 = *(insert);
  let x_33 : i32 = *(offset_1);
  let x_36 : u32 = mask;
  return bitcast<i32>(((bitcast<u32>(x_26) & ~(x_28)) | ((bitcast<u32>(x_31) << bitcast<u32>(x_33)) & x_36)));
}

fn main_1() {
  var x_187 : vec3<f32>;
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
  var x_1697 : f32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
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
  var x_3278 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_3797 : f32;
  var x_3807 : f32;
  var txVec60 : vec3<f32>;
  var txVec61 : vec3<f32>;
  var txVec62 : vec3<f32>;
  var txVec63 : vec3<f32>;
  var txVec64 : vec3<f32>;
  var txVec65 : vec3<f32>;
  var txVec66 : vec3<f32>;
  var txVec67 : vec3<f32>;
  var txVec68 : vec3<f32>;
  var txVec69 : vec3<f32>;
  var txVec70 : vec3<f32>;
  var txVec71 : vec3<f32>;
  var txVec72 : vec3<f32>;
  var txVec73 : vec3<f32>;
  var txVec74 : vec3<f32>;
  var txVec75 : vec3<f32>;
  var txVec76 : vec3<f32>;
  var txVec77 : vec3<f32>;
  var txVec78 : vec3<f32>;
  var txVec79 : vec3<f32>;
  var txVec80 : vec3<f32>;
  var txVec81 : vec3<f32>;
  var txVec82 : vec3<f32>;
  var txVec83 : vec3<f32>;
  var txVec84 : vec3<f32>;
  var txVec85 : vec3<f32>;
  var txVec86 : vec3<f32>;
  var txVec87 : vec3<f32>;
  var txVec88 : vec3<f32>;
  var txVec89 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_48 : vec3<f32> = vs_INTERP9;
  let x_49 : vec3<f32> = vs_INTERP9;
  u_xlat0.x = dot(x_48, x_49);
  let x_55 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_55);
  let x_60 : f32 = u_xlat0.x;
  u_xlat0.x = (1.0f / x_60);
  let x_74 : f32 = vs_INTERP4.w;
  u_xlatb26.x = (0.0f < x_74);
  let x_87 : f32 = x_83.unity_WorldTransformParams.w;
  u_xlatb26.y = (x_87 >= 0.0f);
  let x_93 : bool = u_xlatb26.x;
  u_xlat26.x = select(-1.0f, 1.0f, x_93);
  let x_98 : bool = u_xlatb26.y;
  u_xlat26.y = select(-1.0f, 1.0f, x_98);
  let x_102 : f32 = u_xlat26.y;
  let x_104 : f32 = u_xlat26.x;
  u_xlat26.x = (x_102 * x_104);
  let x_108 : vec4<f32> = vs_INTERP4;
  let x_110 : vec3<f32> = vs_INTERP9;
  u_xlat1 = (vec3<f32>(x_108.y, x_108.z, x_108.x) * vec3<f32>(x_110.z, x_110.x, x_110.y));
  let x_113 : vec3<f32> = vs_INTERP9;
  let x_115 : vec4<f32> = vs_INTERP4;
  let x_118 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_113.y, x_113.z, x_113.x) * vec3<f32>(x_115.z, x_115.x, x_115.y)) + -(x_118));
  let x_121 : vec3<f32> = u_xlat26;
  let x_123 : vec3<f32> = u_xlat1;
  u_xlat26 = (vec3<f32>(x_121.x, x_121.x, x_121.x) * x_123);
  let x_125 : vec3<f32> = u_xlat0;
  let x_127 : vec3<f32> = vs_INTERP9;
  u_xlat1 = (vec3<f32>(x_125.x, x_125.x, x_125.x) * x_127);
  let x_130 : vec3<f32> = u_xlat0;
  let x_132 : vec4<f32> = vs_INTERP4;
  u_xlat2 = (vec3<f32>(x_130.x, x_130.x, x_130.x) * vec3<f32>(x_132.x, x_132.y, x_132.z));
  let x_137 : vec3<f32> = u_xlat26;
  let x_138 : vec3<f32> = u_xlat0;
  let x_140 : vec3<f32> = (x_137 * vec3<f32>(x_138.x, x_138.x, x_138.x));
  let x_141 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_140.x, x_140.y, x_140.z, x_141.w);
  let x_150 : f32 = x_147.unity_OrthoParams.w;
  u_xlatb0 = (x_150 == 0.0f);
  let x_154 : vec3<f32> = vs_INTERP8;
  let x_159 : vec3<f32> = x_147.x_WorldSpaceCameraPos;
  u_xlat4 = (-(x_154) + x_159);
  let x_162 : vec3<f32> = u_xlat4;
  let x_163 : vec3<f32> = u_xlat4;
  u_xlat79 = dot(x_162, x_163);
  let x_165 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_165);
  let x_167 : f32 = u_xlat79;
  let x_169 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_167, x_167, x_167) * x_169);
  let x_175 : f32 = x_147.unity_MatrixV[0i].z;
  u_xlat5.x = x_175;
  let x_179 : f32 = x_147.unity_MatrixV[1i].z;
  u_xlat5.y = x_179;
  let x_183 : f32 = x_147.unity_MatrixV[2i].z;
  u_xlat5.z = x_183;
  let x_185 : bool = u_xlatb0;
  if (x_185) {
    let x_190 : vec3<f32> = u_xlat4;
    x_187 = x_190;
  } else {
    let x_192 : vec3<f32> = u_xlat5;
    x_187 = x_192;
  }
  let x_193 : vec3<f32> = x_187;
  u_xlat4 = x_193;
  let x_194 : vec3<f32> = u_xlat4;
  let x_198 : vec4<f32> = x_83.unity_WorldToObject[1i];
  u_xlat5 = (vec3<f32>(x_194.y, x_194.y, x_194.y) * vec3<f32>(x_198.x, x_198.y, x_198.z));
  let x_202 : vec4<f32> = x_83.unity_WorldToObject[0i];
  let x_204 : vec3<f32> = u_xlat4;
  let x_207 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_202.x, x_202.y, x_202.z) * vec3<f32>(x_204.x, x_204.x, x_204.x)) + x_207);
  let x_210 : vec4<f32> = x_83.unity_WorldToObject[2i];
  let x_212 : vec3<f32> = u_xlat4;
  let x_215 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_210.x, x_210.y, x_210.z) * vec3<f32>(x_212.z, x_212.z, x_212.z)) + x_215);
  let x_217 : vec3<f32> = u_xlat5;
  let x_218 : vec3<f32> = u_xlat5;
  u_xlat0.x = dot(x_217, x_218);
  let x_222 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_222);
  let x_225 : vec3<f32> = u_xlat0;
  let x_227 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_225.x, x_225.x, x_225.x) * x_227);
  let x_241 : vec4<f32> = vs_INTERP5;
  let x_244 : f32 = x_147.x_GlobalMipBias.x;
  let x_245 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_241.x, x_241.y), x_244);
  u_xlat6 = x_245;
  let x_247 : vec4<f32> = u_xlat6;
  let x_253 : vec4<f32> = x_251.Color_C30C7CA3;
  let x_255 : vec3<f32> = (vec3<f32>(x_247.x, x_247.y, x_247.z) * vec3<f32>(x_253.x, x_253.y, x_253.z));
  let x_256 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
  let x_264 : vec4<f32> = vs_INTERP5;
  let x_267 : f32 = x_147.x_GlobalMipBias.x;
  let x_268 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_264.x, x_264.y), x_267);
  u_xlat8 = vec4<f32>(x_268.w, x_268.x, x_268.y, x_268.z);
  let x_271 : vec4<f32> = u_xlat8;
  u_xlat9 = ((vec4<f32>(x_271.y, x_271.z, x_271.w, x_271.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_278 : vec4<f32> = u_xlat9;
  let x_279 : vec4<f32> = u_xlat9;
  u_xlat0.x = dot(x_278, x_279);
  let x_283 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_283);
  let x_287 : vec3<f32> = u_xlat0;
  let x_289 : vec4<f32> = u_xlat9;
  u_xlat34 = (vec3<f32>(x_287.x, x_287.x, x_287.x) * vec3<f32>(x_289.x, x_289.y, x_289.z));
  let x_294 : f32 = vs_INTERP6.y;
  u_xlat0.x = (x_294 * 200.0f);
  let x_299 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_299, 1.0f);
  let x_302 : vec3<f32> = u_xlat0;
  let x_304 : vec4<f32> = u_xlat6;
  let x_306 : vec3<f32> = (vec3<f32>(x_302.x, x_302.x, x_302.x) * vec3<f32>(x_304.x, x_304.y, x_304.z));
  let x_307 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_306.x, x_306.y, x_306.z, x_307.w);
  let x_309 : vec4<f32> = u_xlat3;
  let x_311 : vec3<f32> = u_xlat34;
  let x_313 : vec3<f32> = (vec3<f32>(x_309.x, x_309.y, x_309.z) * vec3<f32>(x_311.y, x_311.y, x_311.y));
  let x_314 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
  let x_316 : vec3<f32> = u_xlat34;
  let x_318 : vec3<f32> = u_xlat2;
  let x_320 : vec4<f32> = u_xlat3;
  u_xlat2 = ((vec3<f32>(x_316.x, x_316.x, x_316.x) * x_318) + vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_323 : vec3<f32> = u_xlat34;
  let x_325 : vec3<f32> = u_xlat1;
  let x_327 : vec3<f32> = u_xlat2;
  u_xlat1 = ((vec3<f32>(x_323.z, x_323.z, x_323.z) * x_325) + x_327);
  let x_329 : vec3<f32> = u_xlat1;
  let x_330 : vec3<f32> = u_xlat1;
  u_xlat0.x = dot(x_329, x_330);
  let x_334 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_334, 1.17549435e-38f);
  let x_339 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_339);
  let x_342 : vec3<f32> = u_xlat0;
  let x_344 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_342.x, x_342.x, x_342.x) * x_344);
  let x_346 : vec3<f32> = vs_INTERP8;
  let x_357 : vec4<f32> = x_355.x_MainLightWorldToShadow[0i][1i];
  u_xlat2 = (vec3<f32>(x_346.y, x_346.y, x_346.y) * vec3<f32>(x_357.x, x_357.y, x_357.z));
  let x_361 : vec4<f32> = x_355.x_MainLightWorldToShadow[0i][0i];
  let x_363 : vec3<f32> = vs_INTERP8;
  let x_366 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_361.x, x_361.y, x_361.z) * vec3<f32>(x_363.x, x_363.x, x_363.x)) + x_366);
  let x_369 : vec4<f32> = x_355.x_MainLightWorldToShadow[0i][2i];
  let x_371 : vec3<f32> = vs_INTERP8;
  let x_374 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_369.x, x_369.y, x_369.z) * vec3<f32>(x_371.z, x_371.z, x_371.z)) + x_374);
  let x_376 : vec3<f32> = u_xlat2;
  let x_378 : vec4<f32> = x_355.x_MainLightWorldToShadow[0i][3i];
  u_xlat2 = (x_376 + vec3<f32>(x_378.x, x_378.y, x_378.z));
  let x_382 : f32 = x_355.x_MainLightShadowParams.y;
  u_xlatb0 = (0.0f < x_382);
  let x_384 : bool = u_xlatb0;
  if (x_384) {
    let x_389 : f32 = x_355.x_MainLightShadowParams.y;
    u_xlatb79 = (x_389 == 1.0f);
    let x_391 : bool = u_xlatb79;
    if (x_391) {
      let x_394 : vec3<f32> = u_xlat2;
      let x_398 : vec4<f32> = x_355.x_MainLightShadowOffset0;
      u_xlat3 = (vec4<f32>(x_394.x, x_394.y, x_394.x, x_394.y) + x_398);
      let x_401 : vec4<f32> = u_xlat3;
      let x_402 : vec2<f32> = vec2<f32>(x_401.x, x_401.y);
      let x_404 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_402.x, x_402.y, x_404);
      let x_416 : vec3<f32> = txVec0;
      let x_418 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_416.xy, x_416.z);
      u_xlat9.x = x_418;
      let x_421 : vec4<f32> = u_xlat3;
      let x_422 : vec2<f32> = vec2<f32>(x_421.z, x_421.w);
      let x_424 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_422.x, x_422.y, x_424);
      let x_431 : vec3<f32> = txVec1;
      let x_433 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_431.xy, x_431.z);
      u_xlat9.y = x_433;
      let x_435 : vec3<f32> = u_xlat2;
      let x_439 : vec4<f32> = x_355.x_MainLightShadowOffset1;
      u_xlat3 = (vec4<f32>(x_435.x, x_435.y, x_435.x, x_435.y) + x_439);
      let x_442 : vec4<f32> = u_xlat3;
      let x_443 : vec2<f32> = vec2<f32>(x_442.x, x_442.y);
      let x_445 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_443.x, x_443.y, x_445);
      let x_452 : vec3<f32> = txVec2;
      let x_454 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_452.xy, x_452.z);
      u_xlat9.z = x_454;
      let x_457 : vec4<f32> = u_xlat3;
      let x_458 : vec2<f32> = vec2<f32>(x_457.z, x_457.w);
      let x_460 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_458.x, x_458.y, x_460);
      let x_467 : vec3<f32> = txVec3;
      let x_469 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_467.xy, x_467.z);
      u_xlat9.w = x_469;
      let x_471 : vec4<f32> = u_xlat9;
      u_xlat79 = dot(x_471, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_478 : f32 = x_355.x_MainLightShadowParams.y;
      u_xlatb80 = (x_478 == 2.0f);
      let x_480 : bool = u_xlatb80;
      if (x_480) {
        let x_483 : vec3<f32> = u_xlat2;
        let x_487 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_492 : vec2<f32> = ((vec2<f32>(x_483.x, x_483.y) * vec2<f32>(x_487.z, x_487.w)) + vec2<f32>(0.5f, 0.5f));
        let x_493 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_492.x, x_492.y, x_493.z, x_493.w);
        let x_495 : vec4<f32> = u_xlat3;
        let x_497 : vec2<f32> = floor(vec2<f32>(x_495.x, x_495.y));
        let x_498 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_497.x, x_497.y, x_498.z, x_498.w);
        let x_502 : vec3<f32> = u_xlat2;
        let x_505 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_508 : vec4<f32> = u_xlat3;
        u_xlat55 = ((vec2<f32>(x_502.x, x_502.y) * vec2<f32>(x_505.z, x_505.w)) + -(vec2<f32>(x_508.x, x_508.y)));
        let x_512 : vec2<f32> = u_xlat55;
        u_xlat9 = (vec4<f32>(x_512.x, x_512.x, x_512.y, x_512.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_517 : vec4<f32> = u_xlat9;
        let x_519 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_517.x, x_517.x, x_517.z, x_517.z) * vec4<f32>(x_519.x, x_519.x, x_519.z, x_519.z));
        let x_522 : vec4<f32> = u_xlat10;
        let x_526 : vec2<f32> = (vec2<f32>(x_522.y, x_522.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_527 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_526.x, x_527.y, x_526.y, x_527.w);
        let x_529 : vec4<f32> = u_xlat10;
        let x_532 : vec2<f32> = u_xlat55;
        let x_534 : vec2<f32> = ((vec2<f32>(x_529.x, x_529.z) * vec2<f32>(0.5f, 0.5f)) + -(x_532));
        let x_535 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_534.x, x_534.y, x_535.z, x_535.w);
        let x_538 : vec2<f32> = u_xlat55;
        u_xlat62 = (-(x_538) + vec2<f32>(1.0f, 1.0f));
        let x_543 : vec2<f32> = u_xlat55;
        let x_545 : vec2<f32> = min(x_543, vec2<f32>(0.0f, 0.0f));
        let x_546 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_545.x, x_545.y, x_546.z, x_546.w);
        let x_548 : vec4<f32> = u_xlat11;
        let x_551 : vec4<f32> = u_xlat11;
        let x_554 : vec2<f32> = u_xlat62;
        let x_555 : vec2<f32> = ((-(vec2<f32>(x_548.x, x_548.y)) * vec2<f32>(x_551.x, x_551.y)) + x_554);
        let x_556 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_555.x, x_555.y, x_556.z, x_556.w);
        let x_558 : vec2<f32> = u_xlat55;
        u_xlat55 = max(x_558, vec2<f32>(0.0f, 0.0f));
        let x_560 : vec2<f32> = u_xlat55;
        let x_562 : vec2<f32> = u_xlat55;
        let x_564 : vec4<f32> = u_xlat9;
        u_xlat55 = ((-(x_560) * x_562) + vec2<f32>(x_564.y, x_564.w));
        let x_567 : vec4<f32> = u_xlat11;
        let x_569 : vec2<f32> = (vec2<f32>(x_567.x, x_567.y) + vec2<f32>(1.0f, 1.0f));
        let x_570 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_569.x, x_569.y, x_570.z, x_570.w);
        let x_572 : vec2<f32> = u_xlat55;
        u_xlat55 = (x_572 + vec2<f32>(1.0f, 1.0f));
        let x_575 : vec4<f32> = u_xlat10;
        let x_579 : vec2<f32> = (vec2<f32>(x_575.x, x_575.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_580 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_579.x, x_579.y, x_580.z, x_580.w);
        let x_582 : vec2<f32> = u_xlat62;
        let x_583 : vec2<f32> = (x_582 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_584 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_583.x, x_583.y, x_584.z, x_584.w);
        let x_586 : vec4<f32> = u_xlat11;
        let x_588 : vec2<f32> = (vec2<f32>(x_586.x, x_586.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_589 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_588.x, x_588.y, x_589.z, x_589.w);
        let x_592 : vec2<f32> = u_xlat55;
        let x_593 : vec2<f32> = (x_592 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_594 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_593.x, x_593.y, x_594.z, x_594.w);
        let x_596 : vec4<f32> = u_xlat9;
        u_xlat55 = (vec2<f32>(x_596.y, x_596.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_600 : f32 = u_xlat11.x;
        u_xlat12.z = x_600;
        let x_603 : f32 = u_xlat55.x;
        u_xlat12.w = x_603;
        let x_606 : f32 = u_xlat13.x;
        u_xlat10.z = x_606;
        let x_609 : f32 = u_xlat9.x;
        u_xlat10.w = x_609;
        let x_612 : vec4<f32> = u_xlat10;
        let x_614 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_612.z, x_612.w, x_612.x, x_612.z) + vec4<f32>(x_614.z, x_614.w, x_614.x, x_614.z));
        let x_618 : f32 = u_xlat12.y;
        u_xlat11.z = x_618;
        let x_621 : f32 = u_xlat55.y;
        u_xlat11.w = x_621;
        let x_624 : f32 = u_xlat10.y;
        u_xlat13.z = x_624;
        let x_627 : f32 = u_xlat9.z;
        u_xlat13.w = x_627;
        let x_629 : vec4<f32> = u_xlat11;
        let x_631 : vec4<f32> = u_xlat13;
        let x_633 : vec3<f32> = (vec3<f32>(x_629.z, x_629.y, x_629.w) + vec3<f32>(x_631.z, x_631.y, x_631.w));
        let x_634 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_633.x, x_633.y, x_633.z, x_634.w);
        let x_636 : vec4<f32> = u_xlat10;
        let x_638 : vec4<f32> = u_xlat14;
        let x_640 : vec3<f32> = (vec3<f32>(x_636.x, x_636.z, x_636.w) / vec3<f32>(x_638.z, x_638.w, x_638.y));
        let x_641 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_640.x, x_640.y, x_640.z, x_641.w);
        let x_643 : vec4<f32> = u_xlat10;
        let x_649 : vec3<f32> = (vec3<f32>(x_643.x, x_643.y, x_643.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_650 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_649.x, x_649.y, x_649.z, x_650.w);
        let x_652 : vec4<f32> = u_xlat13;
        let x_654 : vec4<f32> = u_xlat9;
        let x_656 : vec3<f32> = (vec3<f32>(x_652.z, x_652.y, x_652.w) / vec3<f32>(x_654.x, x_654.y, x_654.z));
        let x_657 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_656.x, x_656.y, x_656.z, x_657.w);
        let x_659 : vec4<f32> = u_xlat11;
        let x_661 : vec3<f32> = (vec3<f32>(x_659.x, x_659.y, x_659.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_662 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_661.x, x_661.y, x_661.z, x_662.w);
        let x_664 : vec4<f32> = u_xlat10;
        let x_667 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_669 : vec3<f32> = (vec3<f32>(x_664.y, x_664.x, x_664.z) * vec3<f32>(x_667.x, x_667.x, x_667.x));
        let x_670 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_669.x, x_669.y, x_669.z, x_670.w);
        let x_672 : vec4<f32> = u_xlat11;
        let x_675 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_677 : vec3<f32> = (vec3<f32>(x_672.x, x_672.y, x_672.z) * vec3<f32>(x_675.y, x_675.y, x_675.y));
        let x_678 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_677.x, x_677.y, x_677.z, x_678.w);
        let x_681 : f32 = u_xlat11.x;
        u_xlat10.w = x_681;
        let x_683 : vec4<f32> = u_xlat3;
        let x_686 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_689 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_683.x, x_683.y, x_683.x, x_683.y) * vec4<f32>(x_686.x, x_686.y, x_686.x, x_686.y)) + vec4<f32>(x_689.y, x_689.w, x_689.x, x_689.w));
        let x_692 : vec4<f32> = u_xlat3;
        let x_695 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_698 : vec4<f32> = u_xlat10;
        u_xlat55 = ((vec2<f32>(x_692.x, x_692.y) * vec2<f32>(x_695.x, x_695.y)) + vec2<f32>(x_698.z, x_698.w));
        let x_702 : f32 = u_xlat10.y;
        u_xlat11.w = x_702;
        let x_704 : vec4<f32> = u_xlat11;
        let x_705 : vec2<f32> = vec2<f32>(x_704.y, x_704.z);
        let x_706 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_706.x, x_705.x, x_706.z, x_705.y);
        let x_708 : vec4<f32> = u_xlat3;
        let x_711 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_714 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_708.x, x_708.y, x_708.x, x_708.y) * vec4<f32>(x_711.x, x_711.y, x_711.x, x_711.y)) + vec4<f32>(x_714.x, x_714.y, x_714.z, x_714.y));
        let x_717 : vec4<f32> = u_xlat3;
        let x_720 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_723 : vec4<f32> = u_xlat11;
        u_xlat11 = ((vec4<f32>(x_717.x, x_717.y, x_717.x, x_717.y) * vec4<f32>(x_720.x, x_720.y, x_720.x, x_720.y)) + vec4<f32>(x_723.w, x_723.y, x_723.w, x_723.z));
        let x_726 : vec4<f32> = u_xlat3;
        let x_729 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_732 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_726.x, x_726.y, x_726.x, x_726.y) * vec4<f32>(x_729.x, x_729.y, x_729.x, x_729.y)) + vec4<f32>(x_732.x, x_732.w, x_732.z, x_732.w));
        let x_736 : vec4<f32> = u_xlat9;
        let x_738 : vec4<f32> = u_xlat14;
        u_xlat15 = (vec4<f32>(x_736.x, x_736.x, x_736.x, x_736.y) * vec4<f32>(x_738.z, x_738.w, x_738.y, x_738.z));
        let x_742 : vec4<f32> = u_xlat9;
        let x_744 : vec4<f32> = u_xlat14;
        u_xlat16 = (vec4<f32>(x_742.y, x_742.y, x_742.z, x_742.z) * x_744);
        let x_748 : f32 = u_xlat9.z;
        let x_750 : f32 = u_xlat14.y;
        u_xlat80 = (x_748 * x_750);
        let x_753 : vec4<f32> = u_xlat12;
        let x_754 : vec2<f32> = vec2<f32>(x_753.x, x_753.y);
        let x_756 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_754.x, x_754.y, x_756);
        let x_763 : vec3<f32> = txVec4;
        let x_765 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_763.xy, x_763.z);
        u_xlat3.x = x_765;
        let x_768 : vec4<f32> = u_xlat12;
        let x_769 : vec2<f32> = vec2<f32>(x_768.z, x_768.w);
        let x_771 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_769.x, x_769.y, x_771);
        let x_779 : vec3<f32> = txVec5;
        let x_781 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_779.xy, x_779.z);
        u_xlat29 = x_781;
        let x_782 : f32 = u_xlat29;
        let x_784 : f32 = u_xlat15.y;
        u_xlat29 = (x_782 * x_784);
        let x_787 : f32 = u_xlat15.x;
        let x_789 : f32 = u_xlat3.x;
        let x_791 : f32 = u_xlat29;
        u_xlat3.x = ((x_787 * x_789) + x_791);
        let x_795 : vec2<f32> = u_xlat55;
        let x_797 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_795.x, x_795.y, x_797);
        let x_804 : vec3<f32> = txVec6;
        let x_806 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_804.xy, x_804.z);
        u_xlat29 = x_806;
        let x_808 : f32 = u_xlat15.z;
        let x_809 : f32 = u_xlat29;
        let x_812 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_808 * x_809) + x_812);
        let x_816 : vec4<f32> = u_xlat11;
        let x_817 : vec2<f32> = vec2<f32>(x_816.x, x_816.y);
        let x_819 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_817.x, x_817.y, x_819);
        let x_826 : vec3<f32> = txVec7;
        let x_828 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_826.xy, x_826.z);
        u_xlat29 = x_828;
        let x_830 : f32 = u_xlat15.w;
        let x_831 : f32 = u_xlat29;
        let x_834 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_830 * x_831) + x_834);
        let x_838 : vec4<f32> = u_xlat13;
        let x_839 : vec2<f32> = vec2<f32>(x_838.x, x_838.y);
        let x_841 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_839.x, x_839.y, x_841);
        let x_848 : vec3<f32> = txVec8;
        let x_850 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_848.xy, x_848.z);
        u_xlat29 = x_850;
        let x_852 : f32 = u_xlat16.x;
        let x_853 : f32 = u_xlat29;
        let x_856 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_852 * x_853) + x_856);
        let x_860 : vec4<f32> = u_xlat13;
        let x_861 : vec2<f32> = vec2<f32>(x_860.z, x_860.w);
        let x_863 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_861.x, x_861.y, x_863);
        let x_870 : vec3<f32> = txVec9;
        let x_872 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_870.xy, x_870.z);
        u_xlat29 = x_872;
        let x_874 : f32 = u_xlat16.y;
        let x_875 : f32 = u_xlat29;
        let x_878 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_874 * x_875) + x_878);
        let x_882 : vec4<f32> = u_xlat11;
        let x_883 : vec2<f32> = vec2<f32>(x_882.z, x_882.w);
        let x_885 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_883.x, x_883.y, x_885);
        let x_892 : vec3<f32> = txVec10;
        let x_894 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_892.xy, x_892.z);
        u_xlat29 = x_894;
        let x_896 : f32 = u_xlat16.z;
        let x_897 : f32 = u_xlat29;
        let x_900 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_896 * x_897) + x_900);
        let x_904 : vec4<f32> = u_xlat10;
        let x_905 : vec2<f32> = vec2<f32>(x_904.x, x_904.y);
        let x_907 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_905.x, x_905.y, x_907);
        let x_914 : vec3<f32> = txVec11;
        let x_916 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_914.xy, x_914.z);
        u_xlat29 = x_916;
        let x_918 : f32 = u_xlat16.w;
        let x_919 : f32 = u_xlat29;
        let x_922 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_918 * x_919) + x_922);
        let x_926 : vec4<f32> = u_xlat10;
        let x_927 : vec2<f32> = vec2<f32>(x_926.z, x_926.w);
        let x_929 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_927.x, x_927.y, x_929);
        let x_936 : vec3<f32> = txVec12;
        let x_938 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_936.xy, x_936.z);
        u_xlat29 = x_938;
        let x_939 : f32 = u_xlat80;
        let x_940 : f32 = u_xlat29;
        let x_943 : f32 = u_xlat3.x;
        u_xlat79 = ((x_939 * x_940) + x_943);
      } else {
        let x_946 : vec3<f32> = u_xlat2;
        let x_949 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_952 : vec2<f32> = ((vec2<f32>(x_946.x, x_946.y) * vec2<f32>(x_949.z, x_949.w)) + vec2<f32>(0.5f, 0.5f));
        let x_953 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_952.x, x_952.y, x_953.z, x_953.w);
        let x_955 : vec4<f32> = u_xlat3;
        let x_957 : vec2<f32> = floor(vec2<f32>(x_955.x, x_955.y));
        let x_958 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_957.x, x_957.y, x_958.z, x_958.w);
        let x_960 : vec3<f32> = u_xlat2;
        let x_963 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_966 : vec4<f32> = u_xlat3;
        u_xlat55 = ((vec2<f32>(x_960.x, x_960.y) * vec2<f32>(x_963.z, x_963.w)) + -(vec2<f32>(x_966.x, x_966.y)));
        let x_970 : vec2<f32> = u_xlat55;
        u_xlat9 = (vec4<f32>(x_970.x, x_970.x, x_970.y, x_970.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_973 : vec4<f32> = u_xlat9;
        let x_975 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_973.x, x_973.x, x_973.z, x_973.z) * vec4<f32>(x_975.x, x_975.x, x_975.z, x_975.z));
        let x_978 : vec4<f32> = u_xlat10;
        let x_982 : vec2<f32> = (vec2<f32>(x_978.y, x_978.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_983 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_983.x, x_982.x, x_983.z, x_982.y);
        let x_985 : vec4<f32> = u_xlat10;
        let x_988 : vec2<f32> = u_xlat55;
        let x_990 : vec2<f32> = ((vec2<f32>(x_985.x, x_985.z) * vec2<f32>(0.5f, 0.5f)) + -(x_988));
        let x_991 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_990.x, x_991.y, x_990.y, x_991.w);
        let x_993 : vec2<f32> = u_xlat55;
        let x_995 : vec2<f32> = (-(x_993) + vec2<f32>(1.0f, 1.0f));
        let x_996 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_995.x, x_995.y, x_996.z, x_996.w);
        let x_998 : vec2<f32> = u_xlat55;
        u_xlat62 = min(x_998, vec2<f32>(0.0f, 0.0f));
        let x_1000 : vec2<f32> = u_xlat62;
        let x_1002 : vec2<f32> = u_xlat62;
        let x_1004 : vec4<f32> = u_xlat10;
        let x_1006 : vec2<f32> = ((-(x_1000) * x_1002) + vec2<f32>(x_1004.x, x_1004.y));
        let x_1007 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1006.x, x_1006.y, x_1007.z, x_1007.w);
        let x_1009 : vec2<f32> = u_xlat55;
        u_xlat62 = max(x_1009, vec2<f32>(0.0f, 0.0f));
        let x_1012 : vec2<f32> = u_xlat62;
        let x_1014 : vec2<f32> = u_xlat62;
        let x_1016 : vec4<f32> = u_xlat9;
        let x_1018 : vec2<f32> = ((-(x_1012) * x_1014) + vec2<f32>(x_1016.y, x_1016.w));
        let x_1019 : vec3<f32> = u_xlat35;
        u_xlat35 = vec3<f32>(x_1018.x, x_1019.y, x_1018.y);
        let x_1021 : vec4<f32> = u_xlat10;
        let x_1024 : vec2<f32> = (vec2<f32>(x_1021.x, x_1021.y) + vec2<f32>(2.0f, 2.0f));
        let x_1025 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1024.x, x_1024.y, x_1025.z, x_1025.w);
        let x_1027 : vec3<f32> = u_xlat35;
        let x_1029 : vec2<f32> = (vec2<f32>(x_1027.x, x_1027.z) + vec2<f32>(2.0f, 2.0f));
        let x_1030 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1030.x, x_1029.x, x_1030.z, x_1029.y);
        let x_1033 : f32 = u_xlat9.y;
        u_xlat12.z = (x_1033 * 0.08163200318813323975f);
        let x_1037 : vec4<f32> = u_xlat9;
        let x_1040 : vec3<f32> = (vec3<f32>(x_1037.z, x_1037.x, x_1037.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1041 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1040.x, x_1040.y, x_1040.z, x_1041.w);
        let x_1043 : vec4<f32> = u_xlat10;
        let x_1046 : vec2<f32> = (vec2<f32>(x_1043.x, x_1043.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1047 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1046.x, x_1046.y, x_1047.z, x_1047.w);
        let x_1050 : f32 = u_xlat13.y;
        u_xlat12.x = x_1050;
        let x_1052 : vec2<f32> = u_xlat55;
        let x_1059 : vec2<f32> = ((vec2<f32>(x_1052.x, x_1052.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1060 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1060.x, x_1059.x, x_1060.z, x_1059.y);
        let x_1062 : vec2<f32> = u_xlat55;
        let x_1066 : vec2<f32> = ((vec2<f32>(x_1062.x, x_1062.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1067 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1066.x, x_1067.y, x_1066.y, x_1067.w);
        let x_1070 : f32 = u_xlat9.x;
        u_xlat10.y = x_1070;
        let x_1073 : f32 = u_xlat11.y;
        u_xlat10.w = x_1073;
        let x_1075 : vec4<f32> = u_xlat10;
        let x_1076 : vec4<f32> = u_xlat12;
        u_xlat12 = (x_1075 + x_1076);
        let x_1078 : vec2<f32> = u_xlat55;
        let x_1081 : vec2<f32> = ((vec2<f32>(x_1078.y, x_1078.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1082 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1082.x, x_1081.x, x_1082.z, x_1081.y);
        let x_1084 : vec2<f32> = u_xlat55;
        let x_1087 : vec2<f32> = ((vec2<f32>(x_1084.y, x_1084.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1088 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1087.x, x_1088.y, x_1087.y, x_1088.w);
        let x_1091 : f32 = u_xlat9.y;
        u_xlat11.y = x_1091;
        let x_1093 : vec4<f32> = u_xlat11;
        let x_1094 : vec4<f32> = u_xlat13;
        u_xlat9 = (x_1093 + x_1094);
        let x_1096 : vec4<f32> = u_xlat10;
        let x_1097 : vec4<f32> = u_xlat12;
        u_xlat10 = (x_1096 / x_1097);
        let x_1099 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1099 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1105 : vec4<f32> = u_xlat11;
        let x_1106 : vec4<f32> = u_xlat9;
        u_xlat11 = (x_1105 / x_1106);
        let x_1108 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1108 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1110 : vec4<f32> = u_xlat10;
        let x_1113 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1110.w, x_1110.x, x_1110.y, x_1110.z) * vec4<f32>(x_1113.x, x_1113.x, x_1113.x, x_1113.x));
        let x_1116 : vec4<f32> = u_xlat11;
        let x_1119 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        u_xlat11 = (vec4<f32>(x_1116.x, x_1116.w, x_1116.y, x_1116.z) * vec4<f32>(x_1119.y, x_1119.y, x_1119.y, x_1119.y));
        let x_1122 : vec4<f32> = u_xlat10;
        let x_1123 : vec3<f32> = vec3<f32>(x_1122.y, x_1122.z, x_1122.w);
        let x_1124 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1123.x, x_1124.y, x_1123.y, x_1123.z);
        let x_1127 : f32 = u_xlat11.x;
        u_xlat13.y = x_1127;
        let x_1129 : vec4<f32> = u_xlat3;
        let x_1132 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_1135 : vec4<f32> = u_xlat13;
        u_xlat14 = ((vec4<f32>(x_1129.x, x_1129.y, x_1129.x, x_1129.y) * vec4<f32>(x_1132.x, x_1132.y, x_1132.x, x_1132.y)) + vec4<f32>(x_1135.x, x_1135.y, x_1135.z, x_1135.y));
        let x_1138 : vec4<f32> = u_xlat3;
        let x_1141 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_1144 : vec4<f32> = u_xlat13;
        u_xlat55 = ((vec2<f32>(x_1138.x, x_1138.y) * vec2<f32>(x_1141.x, x_1141.y)) + vec2<f32>(x_1144.w, x_1144.y));
        let x_1148 : f32 = u_xlat13.y;
        u_xlat10.y = x_1148;
        let x_1151 : f32 = u_xlat11.z;
        u_xlat13.y = x_1151;
        let x_1153 : vec4<f32> = u_xlat3;
        let x_1156 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_1159 : vec4<f32> = u_xlat13;
        u_xlat15 = ((vec4<f32>(x_1153.x, x_1153.y, x_1153.x, x_1153.y) * vec4<f32>(x_1156.x, x_1156.y, x_1156.x, x_1156.y)) + vec4<f32>(x_1159.x, x_1159.y, x_1159.z, x_1159.y));
        let x_1162 : vec4<f32> = u_xlat3;
        let x_1165 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_1168 : vec4<f32> = u_xlat13;
        let x_1170 : vec2<f32> = ((vec2<f32>(x_1162.x, x_1162.y) * vec2<f32>(x_1165.x, x_1165.y)) + vec2<f32>(x_1168.w, x_1168.y));
        let x_1171 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1170.x, x_1170.y, x_1171.z, x_1171.w);
        let x_1174 : f32 = u_xlat13.y;
        u_xlat10.z = x_1174;
        let x_1177 : vec4<f32> = u_xlat3;
        let x_1180 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_1183 : vec4<f32> = u_xlat10;
        u_xlat17 = ((vec4<f32>(x_1177.x, x_1177.y, x_1177.x, x_1177.y) * vec4<f32>(x_1180.x, x_1180.y, x_1180.x, x_1180.y)) + vec4<f32>(x_1183.x, x_1183.y, x_1183.x, x_1183.z));
        let x_1187 : f32 = u_xlat11.w;
        u_xlat13.y = x_1187;
        let x_1190 : vec4<f32> = u_xlat3;
        let x_1193 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_1196 : vec4<f32> = u_xlat13;
        u_xlat18 = ((vec4<f32>(x_1190.x, x_1190.y, x_1190.x, x_1190.y) * vec4<f32>(x_1193.x, x_1193.y, x_1193.x, x_1193.y)) + vec4<f32>(x_1196.x, x_1196.y, x_1196.z, x_1196.y));
        let x_1200 : vec4<f32> = u_xlat3;
        let x_1203 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_1206 : vec4<f32> = u_xlat13;
        u_xlat36 = ((vec2<f32>(x_1200.x, x_1200.y) * vec2<f32>(x_1203.x, x_1203.y)) + vec2<f32>(x_1206.w, x_1206.y));
        let x_1210 : f32 = u_xlat13.y;
        u_xlat10.w = x_1210;
        let x_1213 : vec4<f32> = u_xlat3;
        let x_1216 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_1219 : vec4<f32> = u_xlat10;
        u_xlat68 = ((vec2<f32>(x_1213.x, x_1213.y) * vec2<f32>(x_1216.x, x_1216.y)) + vec2<f32>(x_1219.x, x_1219.w));
        let x_1222 : vec4<f32> = u_xlat13;
        let x_1223 : vec3<f32> = vec3<f32>(x_1222.x, x_1222.z, x_1222.w);
        let x_1224 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1223.x, x_1224.y, x_1223.y, x_1223.z);
        let x_1226 : vec4<f32> = u_xlat3;
        let x_1229 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_1232 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1226.x, x_1226.y, x_1226.x, x_1226.y) * vec4<f32>(x_1229.x, x_1229.y, x_1229.x, x_1229.y)) + vec4<f32>(x_1232.x, x_1232.y, x_1232.z, x_1232.y));
        let x_1236 : vec4<f32> = u_xlat3;
        let x_1239 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_1242 : vec4<f32> = u_xlat11;
        u_xlat63 = ((vec2<f32>(x_1236.x, x_1236.y) * vec2<f32>(x_1239.x, x_1239.y)) + vec2<f32>(x_1242.w, x_1242.y));
        let x_1246 : f32 = u_xlat10.x;
        u_xlat11.x = x_1246;
        let x_1248 : vec4<f32> = u_xlat3;
        let x_1251 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_1254 : vec4<f32> = u_xlat11;
        let x_1256 : vec2<f32> = ((vec2<f32>(x_1248.x, x_1248.y) * vec2<f32>(x_1251.x, x_1251.y)) + vec2<f32>(x_1254.x, x_1254.y));
        let x_1257 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_1256.x, x_1256.y, x_1257.z, x_1257.w);
        let x_1260 : vec4<f32> = u_xlat9;
        let x_1262 : vec4<f32> = u_xlat12;
        u_xlat19 = (vec4<f32>(x_1260.x, x_1260.x, x_1260.x, x_1260.x) * x_1262);
        let x_1265 : vec4<f32> = u_xlat9;
        let x_1267 : vec4<f32> = u_xlat12;
        u_xlat20 = (vec4<f32>(x_1265.y, x_1265.y, x_1265.y, x_1265.y) * x_1267);
        let x_1270 : vec4<f32> = u_xlat9;
        let x_1272 : vec4<f32> = u_xlat12;
        u_xlat21 = (vec4<f32>(x_1270.z, x_1270.z, x_1270.z, x_1270.z) * x_1272);
        let x_1274 : vec4<f32> = u_xlat9;
        let x_1276 : vec4<f32> = u_xlat12;
        u_xlat9 = (vec4<f32>(x_1274.w, x_1274.w, x_1274.w, x_1274.w) * x_1276);
        let x_1279 : vec4<f32> = u_xlat14;
        let x_1280 : vec2<f32> = vec2<f32>(x_1279.x, x_1279.y);
        let x_1282 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_1280.x, x_1280.y, x_1282);
        let x_1289 : vec3<f32> = txVec13;
        let x_1291 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1289.xy, x_1289.z);
        u_xlat80 = x_1291;
        let x_1293 : vec4<f32> = u_xlat14;
        let x_1294 : vec2<f32> = vec2<f32>(x_1293.z, x_1293.w);
        let x_1296 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_1294.x, x_1294.y, x_1296);
        let x_1304 : vec3<f32> = txVec14;
        let x_1306 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1304.xy, x_1304.z);
        u_xlat82 = x_1306;
        let x_1307 : f32 = u_xlat82;
        let x_1309 : f32 = u_xlat19.y;
        u_xlat82 = (x_1307 * x_1309);
        let x_1312 : f32 = u_xlat19.x;
        let x_1313 : f32 = u_xlat80;
        let x_1315 : f32 = u_xlat82;
        u_xlat80 = ((x_1312 * x_1313) + x_1315);
        let x_1318 : vec2<f32> = u_xlat55;
        let x_1320 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_1318.x, x_1318.y, x_1320);
        let x_1327 : vec3<f32> = txVec15;
        let x_1329 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1327.xy, x_1327.z);
        u_xlat55.x = x_1329;
        let x_1332 : f32 = u_xlat19.z;
        let x_1334 : f32 = u_xlat55.x;
        let x_1336 : f32 = u_xlat80;
        u_xlat80 = ((x_1332 * x_1334) + x_1336);
        let x_1339 : vec4<f32> = u_xlat17;
        let x_1340 : vec2<f32> = vec2<f32>(x_1339.x, x_1339.y);
        let x_1342 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_1340.x, x_1340.y, x_1342);
        let x_1349 : vec3<f32> = txVec16;
        let x_1351 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1349.xy, x_1349.z);
        u_xlat55.x = x_1351;
        let x_1354 : f32 = u_xlat19.w;
        let x_1356 : f32 = u_xlat55.x;
        let x_1358 : f32 = u_xlat80;
        u_xlat80 = ((x_1354 * x_1356) + x_1358);
        let x_1361 : vec4<f32> = u_xlat15;
        let x_1362 : vec2<f32> = vec2<f32>(x_1361.x, x_1361.y);
        let x_1364 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_1362.x, x_1362.y, x_1364);
        let x_1371 : vec3<f32> = txVec17;
        let x_1373 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1371.xy, x_1371.z);
        u_xlat55.x = x_1373;
        let x_1376 : f32 = u_xlat20.x;
        let x_1378 : f32 = u_xlat55.x;
        let x_1380 : f32 = u_xlat80;
        u_xlat80 = ((x_1376 * x_1378) + x_1380);
        let x_1383 : vec4<f32> = u_xlat15;
        let x_1384 : vec2<f32> = vec2<f32>(x_1383.z, x_1383.w);
        let x_1386 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_1384.x, x_1384.y, x_1386);
        let x_1393 : vec3<f32> = txVec18;
        let x_1395 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1393.xy, x_1393.z);
        u_xlat55.x = x_1395;
        let x_1398 : f32 = u_xlat20.y;
        let x_1400 : f32 = u_xlat55.x;
        let x_1402 : f32 = u_xlat80;
        u_xlat80 = ((x_1398 * x_1400) + x_1402);
        let x_1405 : vec4<f32> = u_xlat16;
        let x_1406 : vec2<f32> = vec2<f32>(x_1405.x, x_1405.y);
        let x_1408 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_1406.x, x_1406.y, x_1408);
        let x_1415 : vec3<f32> = txVec19;
        let x_1417 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1415.xy, x_1415.z);
        u_xlat55.x = x_1417;
        let x_1420 : f32 = u_xlat20.z;
        let x_1422 : f32 = u_xlat55.x;
        let x_1424 : f32 = u_xlat80;
        u_xlat80 = ((x_1420 * x_1422) + x_1424);
        let x_1427 : vec4<f32> = u_xlat17;
        let x_1428 : vec2<f32> = vec2<f32>(x_1427.z, x_1427.w);
        let x_1430 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_1428.x, x_1428.y, x_1430);
        let x_1437 : vec3<f32> = txVec20;
        let x_1439 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1437.xy, x_1437.z);
        u_xlat55.x = x_1439;
        let x_1442 : f32 = u_xlat20.w;
        let x_1444 : f32 = u_xlat55.x;
        let x_1446 : f32 = u_xlat80;
        u_xlat80 = ((x_1442 * x_1444) + x_1446);
        let x_1449 : vec4<f32> = u_xlat18;
        let x_1450 : vec2<f32> = vec2<f32>(x_1449.x, x_1449.y);
        let x_1452 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_1450.x, x_1450.y, x_1452);
        let x_1459 : vec3<f32> = txVec21;
        let x_1461 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1459.xy, x_1459.z);
        u_xlat55.x = x_1461;
        let x_1464 : f32 = u_xlat21.x;
        let x_1466 : f32 = u_xlat55.x;
        let x_1468 : f32 = u_xlat80;
        u_xlat80 = ((x_1464 * x_1466) + x_1468);
        let x_1471 : vec4<f32> = u_xlat18;
        let x_1472 : vec2<f32> = vec2<f32>(x_1471.z, x_1471.w);
        let x_1474 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_1472.x, x_1472.y, x_1474);
        let x_1481 : vec3<f32> = txVec22;
        let x_1483 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1481.xy, x_1481.z);
        u_xlat55.x = x_1483;
        let x_1486 : f32 = u_xlat21.y;
        let x_1488 : f32 = u_xlat55.x;
        let x_1490 : f32 = u_xlat80;
        u_xlat80 = ((x_1486 * x_1488) + x_1490);
        let x_1493 : vec2<f32> = u_xlat36;
        let x_1495 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_1493.x, x_1493.y, x_1495);
        let x_1502 : vec3<f32> = txVec23;
        let x_1504 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1502.xy, x_1502.z);
        u_xlat55.x = x_1504;
        let x_1507 : f32 = u_xlat21.z;
        let x_1509 : f32 = u_xlat55.x;
        let x_1511 : f32 = u_xlat80;
        u_xlat80 = ((x_1507 * x_1509) + x_1511);
        let x_1514 : vec2<f32> = u_xlat68;
        let x_1516 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_1514.x, x_1514.y, x_1516);
        let x_1523 : vec3<f32> = txVec24;
        let x_1525 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1523.xy, x_1523.z);
        u_xlat55.x = x_1525;
        let x_1528 : f32 = u_xlat21.w;
        let x_1530 : f32 = u_xlat55.x;
        let x_1532 : f32 = u_xlat80;
        u_xlat80 = ((x_1528 * x_1530) + x_1532);
        let x_1535 : vec4<f32> = u_xlat13;
        let x_1536 : vec2<f32> = vec2<f32>(x_1535.x, x_1535.y);
        let x_1538 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_1536.x, x_1536.y, x_1538);
        let x_1545 : vec3<f32> = txVec25;
        let x_1547 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1545.xy, x_1545.z);
        u_xlat55.x = x_1547;
        let x_1550 : f32 = u_xlat9.x;
        let x_1552 : f32 = u_xlat55.x;
        let x_1554 : f32 = u_xlat80;
        u_xlat80 = ((x_1550 * x_1552) + x_1554);
        let x_1557 : vec4<f32> = u_xlat13;
        let x_1558 : vec2<f32> = vec2<f32>(x_1557.z, x_1557.w);
        let x_1560 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_1558.x, x_1558.y, x_1560);
        let x_1567 : vec3<f32> = txVec26;
        let x_1569 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1567.xy, x_1567.z);
        u_xlat55.x = x_1569;
        let x_1572 : f32 = u_xlat9.y;
        let x_1574 : f32 = u_xlat55.x;
        let x_1576 : f32 = u_xlat80;
        u_xlat80 = ((x_1572 * x_1574) + x_1576);
        let x_1579 : vec2<f32> = u_xlat63;
        let x_1581 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_1579.x, x_1579.y, x_1581);
        let x_1588 : vec3<f32> = txVec27;
        let x_1590 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1588.xy, x_1588.z);
        u_xlat55.x = x_1590;
        let x_1593 : f32 = u_xlat9.z;
        let x_1595 : f32 = u_xlat55.x;
        let x_1597 : f32 = u_xlat80;
        u_xlat80 = ((x_1593 * x_1595) + x_1597);
        let x_1600 : vec4<f32> = u_xlat3;
        let x_1601 : vec2<f32> = vec2<f32>(x_1600.x, x_1600.y);
        let x_1603 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_1601.x, x_1601.y, x_1603);
        let x_1610 : vec3<f32> = txVec28;
        let x_1612 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1610.xy, x_1610.z);
        u_xlat3.x = x_1612;
        let x_1615 : f32 = u_xlat9.w;
        let x_1617 : f32 = u_xlat3.x;
        let x_1619 : f32 = u_xlat80;
        u_xlat79 = ((x_1615 * x_1617) + x_1619);
      }
    }
  } else {
    let x_1623 : vec3<f32> = u_xlat2;
    let x_1624 : vec2<f32> = vec2<f32>(x_1623.x, x_1623.y);
    let x_1626 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_1624.x, x_1624.y, x_1626);
    let x_1633 : vec3<f32> = txVec29;
    let x_1635 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1633.xy, x_1633.z);
    u_xlat79 = x_1635;
  }
  let x_1637 : f32 = x_355.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_1637) + 1.0f);
  let x_1641 : f32 = u_xlat79;
  let x_1643 : f32 = x_355.x_MainLightShadowParams.x;
  let x_1646 : f32 = u_xlat2.x;
  u_xlat79 = ((x_1641 * x_1643) + x_1646);
  let x_1650 : f32 = u_xlat2.z;
  u_xlatb28 = (0.0f >= x_1650);
  let x_1654 : f32 = u_xlat2.z;
  u_xlatb54 = (x_1654 >= 1.0f);
  let x_1656 : bool = u_xlatb54;
  let x_1657 : bool = u_xlatb28;
  u_xlatb28 = (x_1656 | x_1657);
  let x_1659 : bool = u_xlatb28;
  let x_1660 : f32 = u_xlat79;
  u_xlat79 = select(x_1660, 1.0f, x_1659);
  let x_1662 : vec3<f32> = u_xlat1;
  let x_1664 : vec4<f32> = x_147.x_MainLightPosition;
  u_xlat1.x = dot(x_1662, -(vec3<f32>(x_1664.x, x_1664.y, x_1664.z)));
  let x_1670 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1670, 0.0f, 1.0f);
  let x_1674 : f32 = u_xlat79;
  let x_1677 : vec4<f32> = x_147.x_MainLightColor;
  u_xlat27 = (vec3<f32>(x_1674, x_1674, x_1674) * vec3<f32>(x_1677.x, x_1677.y, x_1677.z));
  let x_1680 : vec3<f32> = u_xlat27;
  let x_1681 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_1680 * vec3<f32>(x_1681.x, x_1681.x, x_1681.x));
  let x_1684 : vec3<f32> = u_xlat1;
  let x_1685 : vec4<f32> = u_xlat6;
  u_xlat1 = (x_1684 * vec3<f32>(x_1685.x, x_1685.y, x_1685.z));
  let x_1689 : f32 = x_83.unity_LODFade.x;
  u_xlatb79 = (x_1689 < 0.0f);
  let x_1693 : f32 = x_83.unity_LODFade.x;
  u_xlat28 = (x_1693 + 1.0f);
  let x_1695 : bool = u_xlatb79;
  if (x_1695) {
    let x_1700 : f32 = u_xlat28;
    x_1697 = x_1700;
  } else {
    let x_1703 : f32 = x_83.unity_LODFade.x;
    x_1697 = x_1703;
  }
  let x_1704 : f32 = x_1697;
  u_xlat79 = x_1704;
  let x_1705 : f32 = u_xlat79;
  u_xlatb28 = (0.5f >= x_1705);
  let x_1707 : vec3<f32> = u_xlat5;
  let x_1710 : vec4<f32> = x_147.x_ScreenParams;
  let x_1712 : vec3<f32> = (abs(x_1707) * vec3<f32>(x_1710.x, x_1710.y, x_1710.x));
  let x_1713 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1712.x, x_1712.y, x_1712.z, x_1713.w);
  let x_1718 : vec4<f32> = u_xlat3;
  u_xlatu3 = vec3<u32>(vec3<f32>(x_1718.x, x_1718.y, x_1718.z));
  let x_1724 : u32 = u_xlatu3.z;
  u_xlatu54 = (x_1724 * 1025u);
  let x_1728 : u32 = u_xlatu54;
  u_xlatu80 = (x_1728 >> 6u);
  let x_1733 : u32 = u_xlatu80;
  let x_1734 : u32 = u_xlatu54;
  u_xlati54 = bitcast<i32>((x_1733 ^ x_1734));
  let x_1737 : i32 = u_xlati54;
  u_xlatu54 = (bitcast<u32>(x_1737) * 9u);
  let x_1741 : u32 = u_xlatu54;
  u_xlatu80 = (x_1741 >> 11u);
  let x_1744 : u32 = u_xlatu80;
  let x_1745 : u32 = u_xlatu54;
  u_xlati54 = bitcast<i32>((x_1744 ^ x_1745));
  let x_1748 : i32 = u_xlati54;
  u_xlati54 = (x_1748 * 32769i);
  let x_1751 : i32 = u_xlati54;
  let x_1754 : u32 = u_xlatu3.y;
  u_xlati54 = bitcast<i32>((bitcast<u32>(x_1751) ^ x_1754));
  let x_1757 : i32 = u_xlati54;
  u_xlatu54 = (bitcast<u32>(x_1757) * 1025u);
  let x_1760 : u32 = u_xlatu54;
  u_xlatu80 = (x_1760 >> 6u);
  let x_1762 : u32 = u_xlatu80;
  let x_1763 : u32 = u_xlatu54;
  u_xlati54 = bitcast<i32>((x_1762 ^ x_1763));
  let x_1766 : i32 = u_xlati54;
  u_xlatu54 = (bitcast<u32>(x_1766) * 9u);
  let x_1769 : u32 = u_xlatu54;
  u_xlatu80 = (x_1769 >> 11u);
  let x_1771 : u32 = u_xlatu80;
  let x_1772 : u32 = u_xlatu54;
  u_xlati54 = bitcast<i32>((x_1771 ^ x_1772));
  let x_1775 : i32 = u_xlati54;
  u_xlati54 = (x_1775 * 32769i);
  let x_1777 : i32 = u_xlati54;
  let x_1780 : u32 = u_xlatu3.x;
  u_xlati54 = bitcast<i32>((bitcast<u32>(x_1777) ^ x_1780));
  let x_1783 : i32 = u_xlati54;
  u_xlatu54 = (bitcast<u32>(x_1783) * 1025u);
  let x_1786 : u32 = u_xlatu54;
  u_xlatu80 = (x_1786 >> 6u);
  let x_1788 : u32 = u_xlatu80;
  let x_1789 : u32 = u_xlatu54;
  u_xlati54 = bitcast<i32>((x_1788 ^ x_1789));
  let x_1792 : i32 = u_xlati54;
  u_xlatu54 = (bitcast<u32>(x_1792) * 9u);
  let x_1795 : u32 = u_xlatu54;
  u_xlatu80 = (x_1795 >> 11u);
  let x_1797 : u32 = u_xlatu80;
  let x_1798 : u32 = u_xlatu54;
  u_xlati54 = bitcast<i32>((x_1797 ^ x_1798));
  let x_1801 : i32 = u_xlati54;
  u_xlati54 = (x_1801 * 32769i);
  param = 1065353216i;
  let x_1808 : i32 = u_xlati54;
  param_1 = x_1808;
  param_2 = 0i;
  param_3 = 23i;
  let x_1811 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat54 = bitcast<f32>(x_1811);
  let x_1813 : f32 = u_xlat54;
  u_xlat54 = (x_1813 + -1.0f);
  let x_1815 : f32 = u_xlat54;
  u_xlat80 = (-(x_1815) + 1.0f);
  let x_1818 : bool = u_xlatb28;
  let x_1819 : f32 = u_xlat54;
  let x_1820 : f32 = u_xlat80;
  u_xlat28 = select(x_1820, x_1819, x_1818);
  let x_1822 : f32 = u_xlat79;
  let x_1824 : f32 = u_xlat28;
  u_xlat79 = ((x_1822 * 2.0f) + -(x_1824));
  let x_1827 : f32 = u_xlat79;
  let x_1829 : f32 = u_xlat6.w;
  u_xlat28 = (x_1827 * x_1829);
  let x_1831 : f32 = u_xlat28;
  u_xlatb54 = (x_1831 >= 0.40000000596046447754f);
  let x_1834 : bool = u_xlatb54;
  let x_1835 : f32 = u_xlat28;
  u_xlat54 = select(0.0f, x_1835, x_1834);
  let x_1838 : f32 = u_xlat6.w;
  let x_1839 : f32 = u_xlat79;
  u_xlat79 = ((x_1838 * x_1839) + -0.40000000596046447754f);
  let x_1843 : f32 = u_xlat28;
  u_xlat80 = dpdxCoarse(x_1843);
  let x_1845 : f32 = u_xlat28;
  u_xlat28 = dpdyCoarse(x_1845);
  let x_1847 : f32 = u_xlat28;
  let x_1849 : f32 = u_xlat80;
  u_xlat28 = (abs(x_1847) + abs(x_1849));
  let x_1852 : f32 = u_xlat28;
  u_xlat28 = max(x_1852, 0.00009999999747378752f);
  let x_1855 : f32 = u_xlat79;
  let x_1856 : f32 = u_xlat28;
  u_xlat79 = (x_1855 / x_1856);
  let x_1858 : f32 = u_xlat79;
  u_xlat79 = (x_1858 + 0.5f);
  let x_1860 : f32 = u_xlat79;
  u_xlat79 = clamp(x_1860, 0.0f, 1.0f);
  let x_1863 : f32 = x_147.x_AlphaToMaskAvailable;
  u_xlatb28 = !((x_1863 == 0.0f));
  let x_1865 : bool = u_xlatb28;
  let x_1866 : f32 = u_xlat79;
  let x_1867 : f32 = u_xlat54;
  u_xlat79 = select(x_1867, x_1866, x_1865);
  let x_1869 : f32 = u_xlat79;
  u_xlat54 = (x_1869 + -0.00009999999747378752f);
  let x_1872 : f32 = u_xlat54;
  u_xlatb54 = (x_1872 < 0.0f);
  let x_1874 : bool = u_xlatb54;
  if (((select(0i, 1i, x_1874) * -1i) != 0i)) {
    discard;
  }
  let x_1882 : vec3<f32> = u_xlat26;
  let x_1883 : vec3<f32> = u_xlat34;
  u_xlat26 = (x_1882 * vec3<f32>(x_1883.y, x_1883.y, x_1883.y));
  let x_1886 : vec3<f32> = u_xlat34;
  let x_1888 : vec4<f32> = vs_INTERP4;
  let x_1891 : vec3<f32> = u_xlat26;
  u_xlat26 = ((vec3<f32>(x_1886.x, x_1886.x, x_1886.x) * vec3<f32>(x_1888.x, x_1888.y, x_1888.z)) + x_1891);
  let x_1893 : vec3<f32> = u_xlat34;
  let x_1895 : vec3<f32> = vs_INTERP9;
  let x_1897 : vec3<f32> = u_xlat26;
  u_xlat26 = ((vec3<f32>(x_1893.z, x_1893.z, x_1893.z) * x_1895) + x_1897);
  let x_1899 : vec3<f32> = u_xlat26;
  let x_1900 : vec3<f32> = u_xlat26;
  u_xlat54 = dot(x_1899, x_1900);
  let x_1902 : f32 = u_xlat54;
  u_xlat54 = inverseSqrt(x_1902);
  let x_1904 : vec3<f32> = u_xlat26;
  let x_1905 : f32 = u_xlat54;
  u_xlat26 = (x_1904 * vec3<f32>(x_1905, x_1905, x_1905));
  let x_1909 : f32 = vs_INTERP8.y;
  let x_1911 : f32 = x_147.unity_MatrixV[1i].z;
  u_xlat54 = (x_1909 * x_1911);
  let x_1914 : f32 = x_147.unity_MatrixV[0i].z;
  let x_1916 : f32 = vs_INTERP8.x;
  let x_1918 : f32 = u_xlat54;
  u_xlat54 = ((x_1914 * x_1916) + x_1918);
  let x_1921 : f32 = x_147.unity_MatrixV[2i].z;
  let x_1923 : f32 = vs_INTERP8.z;
  let x_1925 : f32 = u_xlat54;
  u_xlat54 = ((x_1921 * x_1923) + x_1925);
  let x_1927 : f32 = u_xlat54;
  let x_1929 : f32 = x_147.unity_MatrixV[3i].z;
  u_xlat54 = (x_1927 + x_1929);
  let x_1931 : f32 = u_xlat54;
  let x_1934 : f32 = x_147.x_ProjectionParams.y;
  u_xlat54 = (-(x_1931) + -(x_1934));
  let x_1937 : f32 = u_xlat54;
  u_xlat54 = max(x_1937, 0.0f);
  let x_1939 : f32 = u_xlat54;
  let x_1941 : f32 = x_147.unity_FogParams.x;
  u_xlat54 = (x_1939 * x_1941);
  let x_1950 : vec2<f32> = vs_INTERP0;
  let x_1952 : f32 = x_147.x_GlobalMipBias.x;
  let x_1953 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_1950, x_1952);
  u_xlat3 = x_1953;
  let x_1958 : vec2<f32> = vs_INTERP0;
  let x_1960 : f32 = x_147.x_GlobalMipBias.x;
  let x_1961 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_1958, x_1960);
  u_xlat5 = vec3<f32>(x_1961.x, x_1961.y, x_1961.z);
  let x_1963 : vec4<f32> = u_xlat3;
  let x_1966 : vec3<f32> = (vec3<f32>(x_1963.x, x_1963.y, x_1963.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_1967 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1966.x, x_1966.y, x_1966.z, x_1967.w);
  let x_1969 : vec3<f32> = u_xlat26;
  let x_1970 : vec4<f32> = u_xlat3;
  u_xlat80 = dot(x_1969, vec3<f32>(x_1970.x, x_1970.y, x_1970.z));
  let x_1973 : f32 = u_xlat80;
  u_xlat80 = (x_1973 + 0.5f);
  let x_1975 : f32 = u_xlat80;
  let x_1977 : vec3<f32> = u_xlat5;
  let x_1978 : vec3<f32> = (vec3<f32>(x_1975, x_1975, x_1975) * x_1977);
  let x_1979 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1978.x, x_1978.y, x_1978.z, x_1979.w);
  let x_1982 : f32 = u_xlat3.w;
  u_xlat80 = max(x_1982, 0.00009999999747378752f);
  let x_1984 : vec4<f32> = u_xlat3;
  let x_1986 : f32 = u_xlat80;
  let x_1988 : vec3<f32> = (vec3<f32>(x_1984.x, x_1984.y, x_1984.z) / vec3<f32>(x_1986, x_1986, x_1986));
  let x_1989 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1988.x, x_1988.y, x_1988.z, x_1989.w);
  let x_1992 : f32 = u_xlat8.x;
  u_xlat8.x = x_1992;
  let x_1995 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_1995, 0.0f, 1.0f);
  let x_1998 : f32 = u_xlat79;
  u_xlat79 = x_1998;
  let x_1999 : f32 = u_xlat79;
  u_xlat79 = clamp(x_1999, 0.0f, 1.0f);
  let x_2001 : vec4<f32> = u_xlat7;
  u_xlat5 = (vec3<f32>(x_2001.x, x_2001.y, x_2001.z) * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_2007 : f32 = u_xlat8.x;
  u_xlat80 = (-(x_2007) + 1.0f);
  let x_2011 : f32 = u_xlat80;
  let x_2012 : f32 = u_xlat80;
  u_xlat81 = (x_2011 * x_2012);
  let x_2014 : f32 = u_xlat81;
  u_xlat81 = max(x_2014, 0.0078125f);
  let x_2017 : f32 = u_xlat81;
  let x_2018 : f32 = u_xlat81;
  u_xlat82 = (x_2017 * x_2018);
  let x_2022 : f32 = u_xlat8.x;
  u_xlat83 = (x_2022 + 0.04000002145767211914f);
  let x_2025 : f32 = u_xlat83;
  u_xlat83 = min(x_2025, 1.0f);
  let x_2027 : f32 = u_xlat81;
  u_xlat6.x = ((x_2027 * 4.0f) + 2.0f);
  let x_2034 : f32 = vs_INTERP6.w;
  u_xlat32 = min(x_2034, 1.0f);
  let x_2036 : bool = u_xlatb0;
  if (x_2036) {
    let x_2040 : f32 = x_355.x_MainLightShadowParams.y;
    u_xlatb0 = (x_2040 == 1.0f);
    let x_2042 : bool = u_xlatb0;
    if (x_2042) {
      let x_2046 : vec4<f32> = vs_INTERP3;
      let x_2049 : vec4<f32> = x_355.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_2046.x, x_2046.y, x_2046.x, x_2046.y) + x_2049);
      let x_2052 : vec4<f32> = u_xlat7;
      let x_2053 : vec2<f32> = vec2<f32>(x_2052.x, x_2052.y);
      let x_2055 : f32 = vs_INTERP3.z;
      txVec30 = vec3<f32>(x_2053.x, x_2053.y, x_2055);
      let x_2062 : vec3<f32> = txVec30;
      let x_2064 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2062.xy, x_2062.z);
      u_xlat8.x = x_2064;
      let x_2067 : vec4<f32> = u_xlat7;
      let x_2068 : vec2<f32> = vec2<f32>(x_2067.z, x_2067.w);
      let x_2070 : f32 = vs_INTERP3.z;
      txVec31 = vec3<f32>(x_2068.x, x_2068.y, x_2070);
      let x_2077 : vec3<f32> = txVec31;
      let x_2079 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2077.xy, x_2077.z);
      u_xlat8.y = x_2079;
      let x_2081 : vec4<f32> = vs_INTERP3;
      let x_2084 : vec4<f32> = x_355.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_2081.x, x_2081.y, x_2081.x, x_2081.y) + x_2084);
      let x_2087 : vec4<f32> = u_xlat7;
      let x_2088 : vec2<f32> = vec2<f32>(x_2087.x, x_2087.y);
      let x_2090 : f32 = vs_INTERP3.z;
      txVec32 = vec3<f32>(x_2088.x, x_2088.y, x_2090);
      let x_2097 : vec3<f32> = txVec32;
      let x_2099 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2097.xy, x_2097.z);
      u_xlat8.z = x_2099;
      let x_2102 : vec4<f32> = u_xlat7;
      let x_2103 : vec2<f32> = vec2<f32>(x_2102.z, x_2102.w);
      let x_2105 : f32 = vs_INTERP3.z;
      txVec33 = vec3<f32>(x_2103.x, x_2103.y, x_2105);
      let x_2112 : vec3<f32> = txVec33;
      let x_2114 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2112.xy, x_2112.z);
      u_xlat8.w = x_2114;
      let x_2116 : vec4<f32> = u_xlat8;
      u_xlat0.x = dot(x_2116, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_2122 : f32 = x_355.x_MainLightShadowParams.y;
      u_xlatb58 = (x_2122 == 2.0f);
      let x_2124 : bool = u_xlatb58;
      if (x_2124) {
        let x_2128 : vec4<f32> = vs_INTERP3;
        let x_2131 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        u_xlat58 = ((vec2<f32>(x_2128.x, x_2128.y) * vec2<f32>(x_2131.z, x_2131.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2135 : vec2<f32> = u_xlat58;
        u_xlat58 = floor(x_2135);
        let x_2137 : vec4<f32> = vs_INTERP3;
        let x_2140 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2143 : vec2<f32> = u_xlat58;
        let x_2145 : vec2<f32> = ((vec2<f32>(x_2137.x, x_2137.y) * vec2<f32>(x_2140.z, x_2140.w)) + -(x_2143));
        let x_2146 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2145.x, x_2145.y, x_2146.z, x_2146.w);
        let x_2148 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_2148.x, x_2148.x, x_2148.y, x_2148.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2151 : vec4<f32> = u_xlat8;
        let x_2153 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2151.x, x_2151.x, x_2151.z, x_2151.z) * vec4<f32>(x_2153.x, x_2153.x, x_2153.z, x_2153.z));
        let x_2157 : vec4<f32> = u_xlat9;
        u_xlat59 = (vec2<f32>(x_2157.y, x_2157.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_2160 : vec4<f32> = u_xlat9;
        let x_2163 : vec4<f32> = u_xlat7;
        let x_2166 : vec2<f32> = ((vec2<f32>(x_2160.x, x_2160.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2163.x, x_2163.y)));
        let x_2167 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2166.x, x_2167.y, x_2166.y, x_2167.w);
        let x_2169 : vec4<f32> = u_xlat7;
        let x_2172 : vec2<f32> = (-(vec2<f32>(x_2169.x, x_2169.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2173 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2172.x, x_2172.y, x_2173.z, x_2173.w);
        let x_2176 : vec4<f32> = u_xlat7;
        u_xlat61 = min(vec2<f32>(x_2176.x, x_2176.y), vec2<f32>(0.0f, 0.0f));
        let x_2179 : vec2<f32> = u_xlat61;
        let x_2181 : vec2<f32> = u_xlat61;
        let x_2183 : vec4<f32> = u_xlat9;
        u_xlat61 = ((-(x_2179) * x_2181) + vec2<f32>(x_2183.x, x_2183.y));
        let x_2186 : vec4<f32> = u_xlat7;
        let x_2188 : vec2<f32> = max(vec2<f32>(x_2186.x, x_2186.y), vec2<f32>(0.0f, 0.0f));
        let x_2189 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2188.x, x_2188.y, x_2189.z, x_2189.w);
        let x_2191 : vec4<f32> = u_xlat7;
        let x_2194 : vec4<f32> = u_xlat7;
        let x_2197 : vec4<f32> = u_xlat8;
        let x_2199 : vec2<f32> = ((-(vec2<f32>(x_2191.x, x_2191.y)) * vec2<f32>(x_2194.x, x_2194.y)) + vec2<f32>(x_2197.y, x_2197.w));
        let x_2200 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2199.x, x_2199.y, x_2200.z, x_2200.w);
        let x_2202 : vec2<f32> = u_xlat61;
        u_xlat61 = (x_2202 + vec2<f32>(1.0f, 1.0f));
        let x_2204 : vec4<f32> = u_xlat7;
        let x_2206 : vec2<f32> = (vec2<f32>(x_2204.x, x_2204.y) + vec2<f32>(1.0f, 1.0f));
        let x_2207 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2206.x, x_2206.y, x_2207.z, x_2207.w);
        let x_2209 : vec4<f32> = u_xlat8;
        let x_2211 : vec2<f32> = (vec2<f32>(x_2209.x, x_2209.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2212 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2211.x, x_2211.y, x_2212.z, x_2212.w);
        let x_2214 : vec4<f32> = u_xlat9;
        let x_2216 : vec2<f32> = (vec2<f32>(x_2214.x, x_2214.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2217 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2216.x, x_2216.y, x_2217.z, x_2217.w);
        let x_2219 : vec2<f32> = u_xlat61;
        let x_2220 : vec2<f32> = (x_2219 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2221 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2220.x, x_2220.y, x_2221.z, x_2221.w);
        let x_2223 : vec4<f32> = u_xlat7;
        let x_2225 : vec2<f32> = (vec2<f32>(x_2223.x, x_2223.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2226 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2225.x, x_2225.y, x_2226.z, x_2226.w);
        let x_2228 : vec4<f32> = u_xlat8;
        let x_2230 : vec2<f32> = (vec2<f32>(x_2228.y, x_2228.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2231 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2230.x, x_2230.y, x_2231.z, x_2231.w);
        let x_2234 : f32 = u_xlat9.x;
        u_xlat10.z = x_2234;
        let x_2237 : f32 = u_xlat7.x;
        u_xlat10.w = x_2237;
        let x_2240 : f32 = u_xlat12.x;
        u_xlat11.z = x_2240;
        let x_2243 : f32 = u_xlat59.x;
        u_xlat11.w = x_2243;
        let x_2245 : vec4<f32> = u_xlat10;
        let x_2247 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_2245.z, x_2245.w, x_2245.x, x_2245.z) + vec4<f32>(x_2247.z, x_2247.w, x_2247.x, x_2247.z));
        let x_2251 : f32 = u_xlat10.y;
        u_xlat9.z = x_2251;
        let x_2254 : f32 = u_xlat7.y;
        u_xlat9.w = x_2254;
        let x_2257 : f32 = u_xlat11.y;
        u_xlat12.z = x_2257;
        let x_2260 : f32 = u_xlat59.y;
        u_xlat12.w = x_2260;
        let x_2262 : vec4<f32> = u_xlat9;
        let x_2264 : vec4<f32> = u_xlat12;
        let x_2266 : vec3<f32> = (vec3<f32>(x_2262.z, x_2262.y, x_2262.w) + vec3<f32>(x_2264.z, x_2264.y, x_2264.w));
        let x_2267 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2266.x, x_2266.y, x_2266.z, x_2267.w);
        let x_2269 : vec4<f32> = u_xlat11;
        let x_2271 : vec4<f32> = u_xlat8;
        let x_2273 : vec3<f32> = (vec3<f32>(x_2269.x, x_2269.z, x_2269.w) / vec3<f32>(x_2271.z, x_2271.w, x_2271.y));
        let x_2274 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2273.x, x_2273.y, x_2273.z, x_2274.w);
        let x_2276 : vec4<f32> = u_xlat9;
        let x_2278 : vec3<f32> = (vec3<f32>(x_2276.x, x_2276.y, x_2276.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2279 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2278.x, x_2278.y, x_2278.z, x_2279.w);
        let x_2281 : vec4<f32> = u_xlat12;
        let x_2283 : vec4<f32> = u_xlat7;
        let x_2285 : vec3<f32> = (vec3<f32>(x_2281.z, x_2281.y, x_2281.w) / vec3<f32>(x_2283.x, x_2283.y, x_2283.z));
        let x_2286 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2285.x, x_2285.y, x_2285.z, x_2286.w);
        let x_2288 : vec4<f32> = u_xlat10;
        let x_2290 : vec3<f32> = (vec3<f32>(x_2288.x, x_2288.y, x_2288.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2291 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2290.x, x_2290.y, x_2290.z, x_2291.w);
        let x_2293 : vec4<f32> = u_xlat9;
        let x_2296 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2298 : vec3<f32> = (vec3<f32>(x_2293.y, x_2293.x, x_2293.z) * vec3<f32>(x_2296.x, x_2296.x, x_2296.x));
        let x_2299 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2298.x, x_2298.y, x_2298.z, x_2299.w);
        let x_2301 : vec4<f32> = u_xlat10;
        let x_2304 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2306 : vec3<f32> = (vec3<f32>(x_2301.x, x_2301.y, x_2301.z) * vec3<f32>(x_2304.y, x_2304.y, x_2304.y));
        let x_2307 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2306.x, x_2306.y, x_2306.z, x_2307.w);
        let x_2310 : f32 = u_xlat10.x;
        u_xlat9.w = x_2310;
        let x_2312 : vec2<f32> = u_xlat58;
        let x_2315 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2318 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_2312.x, x_2312.y, x_2312.x, x_2312.y) * vec4<f32>(x_2315.x, x_2315.y, x_2315.x, x_2315.y)) + vec4<f32>(x_2318.y, x_2318.w, x_2318.x, x_2318.w));
        let x_2321 : vec2<f32> = u_xlat58;
        let x_2323 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2326 : vec4<f32> = u_xlat9;
        let x_2328 : vec2<f32> = ((x_2321 * vec2<f32>(x_2323.x, x_2323.y)) + vec2<f32>(x_2326.z, x_2326.w));
        let x_2329 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2328.x, x_2328.y, x_2329.z, x_2329.w);
        let x_2332 : f32 = u_xlat9.y;
        u_xlat10.w = x_2332;
        let x_2334 : vec4<f32> = u_xlat10;
        let x_2335 : vec2<f32> = vec2<f32>(x_2334.y, x_2334.z);
        let x_2336 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2336.x, x_2335.x, x_2336.z, x_2335.y);
        let x_2338 : vec2<f32> = u_xlat58;
        let x_2341 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2344 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_2338.x, x_2338.y, x_2338.x, x_2338.y) * vec4<f32>(x_2341.x, x_2341.y, x_2341.x, x_2341.y)) + vec4<f32>(x_2344.x, x_2344.y, x_2344.z, x_2344.y));
        let x_2347 : vec2<f32> = u_xlat58;
        let x_2350 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2353 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_2347.x, x_2347.y, x_2347.x, x_2347.y) * vec4<f32>(x_2350.x, x_2350.y, x_2350.x, x_2350.y)) + vec4<f32>(x_2353.w, x_2353.y, x_2353.w, x_2353.z));
        let x_2356 : vec2<f32> = u_xlat58;
        let x_2359 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2362 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_2356.x, x_2356.y, x_2356.x, x_2356.y) * vec4<f32>(x_2359.x, x_2359.y, x_2359.x, x_2359.y)) + vec4<f32>(x_2362.x, x_2362.w, x_2362.z, x_2362.w));
        let x_2365 : vec4<f32> = u_xlat7;
        let x_2367 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_2365.x, x_2365.x, x_2365.x, x_2365.y) * vec4<f32>(x_2367.z, x_2367.w, x_2367.y, x_2367.z));
        let x_2370 : vec4<f32> = u_xlat7;
        let x_2372 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_2370.y, x_2370.y, x_2370.z, x_2370.z) * x_2372);
        let x_2375 : f32 = u_xlat7.z;
        let x_2377 : f32 = u_xlat8.y;
        u_xlat58.x = (x_2375 * x_2377);
        let x_2381 : vec4<f32> = u_xlat11;
        let x_2382 : vec2<f32> = vec2<f32>(x_2381.x, x_2381.y);
        let x_2384 : f32 = vs_INTERP3.z;
        txVec34 = vec3<f32>(x_2382.x, x_2382.y, x_2384);
        let x_2392 : vec3<f32> = txVec34;
        let x_2394 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2392.xy, x_2392.z);
        u_xlat84 = x_2394;
        let x_2396 : vec4<f32> = u_xlat11;
        let x_2397 : vec2<f32> = vec2<f32>(x_2396.z, x_2396.w);
        let x_2399 : f32 = vs_INTERP3.z;
        txVec35 = vec3<f32>(x_2397.x, x_2397.y, x_2399);
        let x_2406 : vec3<f32> = txVec35;
        let x_2408 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2406.xy, x_2406.z);
        u_xlat7.x = x_2408;
        let x_2411 : f32 = u_xlat7.x;
        let x_2413 : f32 = u_xlat14.y;
        u_xlat7.x = (x_2411 * x_2413);
        let x_2417 : f32 = u_xlat14.x;
        let x_2418 : f32 = u_xlat84;
        let x_2421 : f32 = u_xlat7.x;
        u_xlat84 = ((x_2417 * x_2418) + x_2421);
        let x_2424 : vec4<f32> = u_xlat12;
        let x_2425 : vec2<f32> = vec2<f32>(x_2424.x, x_2424.y);
        let x_2427 : f32 = vs_INTERP3.z;
        txVec36 = vec3<f32>(x_2425.x, x_2425.y, x_2427);
        let x_2434 : vec3<f32> = txVec36;
        let x_2436 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2434.xy, x_2434.z);
        u_xlat7.x = x_2436;
        let x_2439 : f32 = u_xlat14.z;
        let x_2441 : f32 = u_xlat7.x;
        let x_2443 : f32 = u_xlat84;
        u_xlat84 = ((x_2439 * x_2441) + x_2443);
        let x_2446 : vec4<f32> = u_xlat10;
        let x_2447 : vec2<f32> = vec2<f32>(x_2446.x, x_2446.y);
        let x_2449 : f32 = vs_INTERP3.z;
        txVec37 = vec3<f32>(x_2447.x, x_2447.y, x_2449);
        let x_2456 : vec3<f32> = txVec37;
        let x_2458 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2456.xy, x_2456.z);
        u_xlat7.x = x_2458;
        let x_2461 : f32 = u_xlat14.w;
        let x_2463 : f32 = u_xlat7.x;
        let x_2465 : f32 = u_xlat84;
        u_xlat84 = ((x_2461 * x_2463) + x_2465);
        let x_2468 : vec4<f32> = u_xlat13;
        let x_2469 : vec2<f32> = vec2<f32>(x_2468.x, x_2468.y);
        let x_2471 : f32 = vs_INTERP3.z;
        txVec38 = vec3<f32>(x_2469.x, x_2469.y, x_2471);
        let x_2478 : vec3<f32> = txVec38;
        let x_2480 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2478.xy, x_2478.z);
        u_xlat7.x = x_2480;
        let x_2483 : f32 = u_xlat15.x;
        let x_2485 : f32 = u_xlat7.x;
        let x_2487 : f32 = u_xlat84;
        u_xlat84 = ((x_2483 * x_2485) + x_2487);
        let x_2490 : vec4<f32> = u_xlat13;
        let x_2491 : vec2<f32> = vec2<f32>(x_2490.z, x_2490.w);
        let x_2493 : f32 = vs_INTERP3.z;
        txVec39 = vec3<f32>(x_2491.x, x_2491.y, x_2493);
        let x_2500 : vec3<f32> = txVec39;
        let x_2502 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2500.xy, x_2500.z);
        u_xlat7.x = x_2502;
        let x_2505 : f32 = u_xlat15.y;
        let x_2507 : f32 = u_xlat7.x;
        let x_2509 : f32 = u_xlat84;
        u_xlat84 = ((x_2505 * x_2507) + x_2509);
        let x_2512 : vec4<f32> = u_xlat10;
        let x_2513 : vec2<f32> = vec2<f32>(x_2512.z, x_2512.w);
        let x_2515 : f32 = vs_INTERP3.z;
        txVec40 = vec3<f32>(x_2513.x, x_2513.y, x_2515);
        let x_2522 : vec3<f32> = txVec40;
        let x_2524 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2522.xy, x_2522.z);
        u_xlat7.x = x_2524;
        let x_2527 : f32 = u_xlat15.z;
        let x_2529 : f32 = u_xlat7.x;
        let x_2531 : f32 = u_xlat84;
        u_xlat84 = ((x_2527 * x_2529) + x_2531);
        let x_2534 : vec4<f32> = u_xlat9;
        let x_2535 : vec2<f32> = vec2<f32>(x_2534.x, x_2534.y);
        let x_2537 : f32 = vs_INTERP3.z;
        txVec41 = vec3<f32>(x_2535.x, x_2535.y, x_2537);
        let x_2544 : vec3<f32> = txVec41;
        let x_2546 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2544.xy, x_2544.z);
        u_xlat7.x = x_2546;
        let x_2549 : f32 = u_xlat15.w;
        let x_2551 : f32 = u_xlat7.x;
        let x_2553 : f32 = u_xlat84;
        u_xlat84 = ((x_2549 * x_2551) + x_2553);
        let x_2556 : vec4<f32> = u_xlat9;
        let x_2557 : vec2<f32> = vec2<f32>(x_2556.z, x_2556.w);
        let x_2559 : f32 = vs_INTERP3.z;
        txVec42 = vec3<f32>(x_2557.x, x_2557.y, x_2559);
        let x_2566 : vec3<f32> = txVec42;
        let x_2568 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2566.xy, x_2566.z);
        u_xlat7.x = x_2568;
        let x_2571 : f32 = u_xlat58.x;
        let x_2573 : f32 = u_xlat7.x;
        let x_2575 : f32 = u_xlat84;
        u_xlat0.x = ((x_2571 * x_2573) + x_2575);
      } else {
        let x_2579 : vec4<f32> = vs_INTERP3;
        let x_2582 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        u_xlat58 = ((vec2<f32>(x_2579.x, x_2579.y) * vec2<f32>(x_2582.z, x_2582.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2586 : vec2<f32> = u_xlat58;
        u_xlat58 = floor(x_2586);
        let x_2588 : vec4<f32> = vs_INTERP3;
        let x_2591 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2594 : vec2<f32> = u_xlat58;
        let x_2596 : vec2<f32> = ((vec2<f32>(x_2588.x, x_2588.y) * vec2<f32>(x_2591.z, x_2591.w)) + -(x_2594));
        let x_2597 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2596.x, x_2596.y, x_2597.z, x_2597.w);
        let x_2599 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_2599.x, x_2599.x, x_2599.y, x_2599.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2602 : vec4<f32> = u_xlat8;
        let x_2604 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2602.x, x_2602.x, x_2602.z, x_2602.z) * vec4<f32>(x_2604.x, x_2604.x, x_2604.z, x_2604.z));
        let x_2607 : vec4<f32> = u_xlat9;
        let x_2609 : vec2<f32> = (vec2<f32>(x_2607.y, x_2607.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_2610 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2610.x, x_2609.x, x_2610.z, x_2609.y);
        let x_2612 : vec4<f32> = u_xlat9;
        let x_2615 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_2612.x, x_2612.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2615.x, x_2615.y)));
        let x_2619 : vec4<f32> = u_xlat7;
        let x_2622 : vec2<f32> = (-(vec2<f32>(x_2619.x, x_2619.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2623 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2622.x, x_2623.y, x_2622.y, x_2623.w);
        let x_2625 : vec4<f32> = u_xlat7;
        let x_2627 : vec2<f32> = min(vec2<f32>(x_2625.x, x_2625.y), vec2<f32>(0.0f, 0.0f));
        let x_2628 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2627.x, x_2627.y, x_2628.z, x_2628.w);
        let x_2630 : vec4<f32> = u_xlat9;
        let x_2633 : vec4<f32> = u_xlat9;
        let x_2636 : vec4<f32> = u_xlat8;
        let x_2638 : vec2<f32> = ((-(vec2<f32>(x_2630.x, x_2630.y)) * vec2<f32>(x_2633.x, x_2633.y)) + vec2<f32>(x_2636.x, x_2636.z));
        let x_2639 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2638.x, x_2639.y, x_2638.y, x_2639.w);
        let x_2641 : vec4<f32> = u_xlat7;
        let x_2643 : vec2<f32> = max(vec2<f32>(x_2641.x, x_2641.y), vec2<f32>(0.0f, 0.0f));
        let x_2644 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2643.x, x_2643.y, x_2644.z, x_2644.w);
        let x_2646 : vec4<f32> = u_xlat9;
        let x_2649 : vec4<f32> = u_xlat9;
        let x_2652 : vec4<f32> = u_xlat8;
        let x_2654 : vec2<f32> = ((-(vec2<f32>(x_2646.x, x_2646.y)) * vec2<f32>(x_2649.x, x_2649.y)) + vec2<f32>(x_2652.y, x_2652.w));
        let x_2655 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2655.x, x_2654.x, x_2655.z, x_2654.y);
        let x_2657 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_2657 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_2660 : f32 = u_xlat8.y;
        u_xlat9.z = (x_2660 * 0.08163200318813323975f);
        let x_2663 : vec2<f32> = u_xlat59;
        let x_2665 : vec2<f32> = (vec2<f32>(x_2663.y, x_2663.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2666 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2665.x, x_2665.y, x_2666.z, x_2666.w);
        let x_2668 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_2668.x, x_2668.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2672 : f32 = u_xlat8.w;
        u_xlat11.z = (x_2672 * 0.08163200318813323975f);
        let x_2676 : f32 = u_xlat11.y;
        u_xlat9.x = x_2676;
        let x_2678 : vec4<f32> = u_xlat7;
        let x_2681 : vec2<f32> = ((vec2<f32>(x_2678.x, x_2678.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2682 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2682.x, x_2681.x, x_2682.z, x_2681.y);
        let x_2684 : vec4<f32> = u_xlat7;
        let x_2687 : vec2<f32> = ((vec2<f32>(x_2684.x, x_2684.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2688 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2687.x, x_2688.y, x_2687.y, x_2688.w);
        let x_2691 : f32 = u_xlat59.x;
        u_xlat8.y = x_2691;
        let x_2694 : f32 = u_xlat10.y;
        u_xlat8.w = x_2694;
        let x_2696 : vec4<f32> = u_xlat8;
        let x_2697 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2696 + x_2697);
        let x_2699 : vec4<f32> = u_xlat7;
        let x_2702 : vec2<f32> = ((vec2<f32>(x_2699.y, x_2699.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2703 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2703.x, x_2702.x, x_2703.z, x_2702.y);
        let x_2705 : vec4<f32> = u_xlat7;
        let x_2708 : vec2<f32> = ((vec2<f32>(x_2705.y, x_2705.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2709 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2708.x, x_2709.y, x_2708.y, x_2709.w);
        let x_2712 : f32 = u_xlat59.y;
        u_xlat10.y = x_2712;
        let x_2714 : vec4<f32> = u_xlat10;
        let x_2715 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_2714 + x_2715);
        let x_2717 : vec4<f32> = u_xlat8;
        let x_2718 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_2717 / x_2718);
        let x_2720 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_2720 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2722 : vec4<f32> = u_xlat10;
        let x_2723 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_2722 / x_2723);
        let x_2725 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_2725 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2727 : vec4<f32> = u_xlat8;
        let x_2730 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_2727.w, x_2727.x, x_2727.y, x_2727.z) * vec4<f32>(x_2730.x, x_2730.x, x_2730.x, x_2730.x));
        let x_2733 : vec4<f32> = u_xlat10;
        let x_2736 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_2733.x, x_2733.w, x_2733.y, x_2733.z) * vec4<f32>(x_2736.y, x_2736.y, x_2736.y, x_2736.y));
        let x_2739 : vec4<f32> = u_xlat8;
        let x_2740 : vec3<f32> = vec3<f32>(x_2739.y, x_2739.z, x_2739.w);
        let x_2741 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2740.x, x_2741.y, x_2740.y, x_2740.z);
        let x_2744 : f32 = u_xlat10.x;
        u_xlat11.y = x_2744;
        let x_2746 : vec2<f32> = u_xlat58;
        let x_2749 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2752 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_2746.x, x_2746.y, x_2746.x, x_2746.y) * vec4<f32>(x_2749.x, x_2749.y, x_2749.x, x_2749.y)) + vec4<f32>(x_2752.x, x_2752.y, x_2752.z, x_2752.y));
        let x_2755 : vec2<f32> = u_xlat58;
        let x_2757 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2760 : vec4<f32> = u_xlat11;
        let x_2762 : vec2<f32> = ((x_2755 * vec2<f32>(x_2757.x, x_2757.y)) + vec2<f32>(x_2760.w, x_2760.y));
        let x_2763 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2762.x, x_2762.y, x_2763.z, x_2763.w);
        let x_2766 : f32 = u_xlat11.y;
        u_xlat8.y = x_2766;
        let x_2769 : f32 = u_xlat10.z;
        u_xlat11.y = x_2769;
        let x_2771 : vec2<f32> = u_xlat58;
        let x_2774 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2777 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_2771.x, x_2771.y, x_2771.x, x_2771.y) * vec4<f32>(x_2774.x, x_2774.y, x_2774.x, x_2774.y)) + vec4<f32>(x_2777.x, x_2777.y, x_2777.z, x_2777.y));
        let x_2781 : vec2<f32> = u_xlat58;
        let x_2783 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2786 : vec4<f32> = u_xlat11;
        u_xlat65 = ((x_2781 * vec2<f32>(x_2783.x, x_2783.y)) + vec2<f32>(x_2786.w, x_2786.y));
        let x_2790 : f32 = u_xlat11.y;
        u_xlat8.z = x_2790;
        let x_2792 : vec2<f32> = u_xlat58;
        let x_2795 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2798 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_2792.x, x_2792.y, x_2792.x, x_2792.y) * vec4<f32>(x_2795.x, x_2795.y, x_2795.x, x_2795.y)) + vec4<f32>(x_2798.x, x_2798.y, x_2798.x, x_2798.z));
        let x_2802 : f32 = u_xlat10.w;
        u_xlat11.y = x_2802;
        let x_2804 : vec2<f32> = u_xlat58;
        let x_2807 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2810 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_2804.x, x_2804.y, x_2804.x, x_2804.y) * vec4<f32>(x_2807.x, x_2807.y, x_2807.x, x_2807.y)) + vec4<f32>(x_2810.x, x_2810.y, x_2810.z, x_2810.y));
        let x_2813 : vec2<f32> = u_xlat58;
        let x_2815 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2818 : vec4<f32> = u_xlat11;
        let x_2820 : vec2<f32> = ((x_2813 * vec2<f32>(x_2815.x, x_2815.y)) + vec2<f32>(x_2818.w, x_2818.y));
        let x_2821 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_2820.x, x_2820.y, x_2821.z);
        let x_2824 : f32 = u_xlat11.y;
        u_xlat8.w = x_2824;
        let x_2826 : vec2<f32> = u_xlat58;
        let x_2828 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2831 : vec4<f32> = u_xlat8;
        let x_2833 : vec2<f32> = ((x_2826 * vec2<f32>(x_2828.x, x_2828.y)) + vec2<f32>(x_2831.x, x_2831.w));
        let x_2834 : vec4<f32> = u_xlat17;
        u_xlat17 = vec4<f32>(x_2833.x, x_2833.y, x_2834.z, x_2834.w);
        let x_2836 : vec4<f32> = u_xlat11;
        let x_2837 : vec3<f32> = vec3<f32>(x_2836.x, x_2836.z, x_2836.w);
        let x_2838 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2837.x, x_2838.y, x_2837.y, x_2837.z);
        let x_2840 : vec2<f32> = u_xlat58;
        let x_2843 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2846 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_2840.x, x_2840.y, x_2840.x, x_2840.y) * vec4<f32>(x_2843.x, x_2843.y, x_2843.x, x_2843.y)) + vec4<f32>(x_2846.x, x_2846.y, x_2846.z, x_2846.y));
        let x_2849 : vec2<f32> = u_xlat58;
        let x_2851 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2854 : vec4<f32> = u_xlat10;
        u_xlat62 = ((x_2849 * vec2<f32>(x_2851.x, x_2851.y)) + vec2<f32>(x_2854.w, x_2854.y));
        let x_2858 : f32 = u_xlat8.x;
        u_xlat10.x = x_2858;
        let x_2860 : vec2<f32> = u_xlat58;
        let x_2862 : vec4<f32> = x_355.x_MainLightShadowmapSize;
        let x_2865 : vec4<f32> = u_xlat10;
        u_xlat58 = ((x_2860 * vec2<f32>(x_2862.x, x_2862.y)) + vec2<f32>(x_2865.x, x_2865.y));
        let x_2868 : vec4<f32> = u_xlat7;
        let x_2870 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_2868.x, x_2868.x, x_2868.x, x_2868.x) * x_2870);
        let x_2872 : vec4<f32> = u_xlat7;
        let x_2874 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_2872.y, x_2872.y, x_2872.y, x_2872.y) * x_2874);
        let x_2876 : vec4<f32> = u_xlat7;
        let x_2878 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_2876.z, x_2876.z, x_2876.z, x_2876.z) * x_2878);
        let x_2880 : vec4<f32> = u_xlat7;
        let x_2882 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_2880.w, x_2880.w, x_2880.w, x_2880.w) * x_2882);
        let x_2885 : vec4<f32> = u_xlat12;
        let x_2886 : vec2<f32> = vec2<f32>(x_2885.x, x_2885.y);
        let x_2888 : f32 = vs_INTERP3.z;
        txVec43 = vec3<f32>(x_2886.x, x_2886.y, x_2888);
        let x_2895 : vec3<f32> = txVec43;
        let x_2897 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2895.xy, x_2895.z);
        u_xlat8.x = x_2897;
        let x_2900 : vec4<f32> = u_xlat12;
        let x_2901 : vec2<f32> = vec2<f32>(x_2900.z, x_2900.w);
        let x_2903 : f32 = vs_INTERP3.z;
        txVec44 = vec3<f32>(x_2901.x, x_2901.y, x_2903);
        let x_2911 : vec3<f32> = txVec44;
        let x_2913 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2911.xy, x_2911.z);
        u_xlat86 = x_2913;
        let x_2914 : f32 = u_xlat86;
        let x_2916 : f32 = u_xlat18.y;
        u_xlat86 = (x_2914 * x_2916);
        let x_2919 : f32 = u_xlat18.x;
        let x_2921 : f32 = u_xlat8.x;
        let x_2923 : f32 = u_xlat86;
        u_xlat8.x = ((x_2919 * x_2921) + x_2923);
        let x_2927 : vec4<f32> = u_xlat13;
        let x_2928 : vec2<f32> = vec2<f32>(x_2927.x, x_2927.y);
        let x_2930 : f32 = vs_INTERP3.z;
        txVec45 = vec3<f32>(x_2928.x, x_2928.y, x_2930);
        let x_2937 : vec3<f32> = txVec45;
        let x_2939 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2937.xy, x_2937.z);
        u_xlat86 = x_2939;
        let x_2941 : f32 = u_xlat18.z;
        let x_2942 : f32 = u_xlat86;
        let x_2945 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2941 * x_2942) + x_2945);
        let x_2949 : vec4<f32> = u_xlat15;
        let x_2950 : vec2<f32> = vec2<f32>(x_2949.x, x_2949.y);
        let x_2952 : f32 = vs_INTERP3.z;
        txVec46 = vec3<f32>(x_2950.x, x_2950.y, x_2952);
        let x_2959 : vec3<f32> = txVec46;
        let x_2961 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2959.xy, x_2959.z);
        u_xlat86 = x_2961;
        let x_2963 : f32 = u_xlat18.w;
        let x_2964 : f32 = u_xlat86;
        let x_2967 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2963 * x_2964) + x_2967);
        let x_2971 : vec4<f32> = u_xlat14;
        let x_2972 : vec2<f32> = vec2<f32>(x_2971.x, x_2971.y);
        let x_2974 : f32 = vs_INTERP3.z;
        txVec47 = vec3<f32>(x_2972.x, x_2972.y, x_2974);
        let x_2981 : vec3<f32> = txVec47;
        let x_2983 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2981.xy, x_2981.z);
        u_xlat86 = x_2983;
        let x_2985 : f32 = u_xlat19.x;
        let x_2986 : f32 = u_xlat86;
        let x_2989 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2985 * x_2986) + x_2989);
        let x_2993 : vec4<f32> = u_xlat14;
        let x_2994 : vec2<f32> = vec2<f32>(x_2993.z, x_2993.w);
        let x_2996 : f32 = vs_INTERP3.z;
        txVec48 = vec3<f32>(x_2994.x, x_2994.y, x_2996);
        let x_3003 : vec3<f32> = txVec48;
        let x_3005 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3003.xy, x_3003.z);
        u_xlat86 = x_3005;
        let x_3007 : f32 = u_xlat19.y;
        let x_3008 : f32 = u_xlat86;
        let x_3011 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_3007 * x_3008) + x_3011);
        let x_3015 : vec2<f32> = u_xlat65;
        let x_3017 : f32 = vs_INTERP3.z;
        txVec49 = vec3<f32>(x_3015.x, x_3015.y, x_3017);
        let x_3024 : vec3<f32> = txVec49;
        let x_3026 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3024.xy, x_3024.z);
        u_xlat86 = x_3026;
        let x_3028 : f32 = u_xlat19.z;
        let x_3029 : f32 = u_xlat86;
        let x_3032 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_3028 * x_3029) + x_3032);
        let x_3036 : vec4<f32> = u_xlat15;
        let x_3037 : vec2<f32> = vec2<f32>(x_3036.z, x_3036.w);
        let x_3039 : f32 = vs_INTERP3.z;
        txVec50 = vec3<f32>(x_3037.x, x_3037.y, x_3039);
        let x_3046 : vec3<f32> = txVec50;
        let x_3048 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3046.xy, x_3046.z);
        u_xlat86 = x_3048;
        let x_3050 : f32 = u_xlat19.w;
        let x_3051 : f32 = u_xlat86;
        let x_3054 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_3050 * x_3051) + x_3054);
        let x_3058 : vec4<f32> = u_xlat16;
        let x_3059 : vec2<f32> = vec2<f32>(x_3058.x, x_3058.y);
        let x_3061 : f32 = vs_INTERP3.z;
        txVec51 = vec3<f32>(x_3059.x, x_3059.y, x_3061);
        let x_3068 : vec3<f32> = txVec51;
        let x_3070 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3068.xy, x_3068.z);
        u_xlat86 = x_3070;
        let x_3072 : f32 = u_xlat20.x;
        let x_3073 : f32 = u_xlat86;
        let x_3076 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_3072 * x_3073) + x_3076);
        let x_3080 : vec4<f32> = u_xlat16;
        let x_3081 : vec2<f32> = vec2<f32>(x_3080.z, x_3080.w);
        let x_3083 : f32 = vs_INTERP3.z;
        txVec52 = vec3<f32>(x_3081.x, x_3081.y, x_3083);
        let x_3090 : vec3<f32> = txVec52;
        let x_3092 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3090.xy, x_3090.z);
        u_xlat86 = x_3092;
        let x_3094 : f32 = u_xlat20.y;
        let x_3095 : f32 = u_xlat86;
        let x_3098 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_3094 * x_3095) + x_3098);
        let x_3102 : vec3<f32> = u_xlat34;
        let x_3103 : vec2<f32> = vec2<f32>(x_3102.x, x_3102.y);
        let x_3105 : f32 = vs_INTERP3.z;
        txVec53 = vec3<f32>(x_3103.x, x_3103.y, x_3105);
        let x_3112 : vec3<f32> = txVec53;
        let x_3114 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3112.xy, x_3112.z);
        u_xlat34.x = x_3114;
        let x_3117 : f32 = u_xlat20.z;
        let x_3119 : f32 = u_xlat34.x;
        let x_3122 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_3117 * x_3119) + x_3122);
        let x_3126 : vec4<f32> = u_xlat17;
        let x_3127 : vec2<f32> = vec2<f32>(x_3126.x, x_3126.y);
        let x_3129 : f32 = vs_INTERP3.z;
        txVec54 = vec3<f32>(x_3127.x, x_3127.y, x_3129);
        let x_3136 : vec3<f32> = txVec54;
        let x_3138 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3136.xy, x_3136.z);
        u_xlat34.x = x_3138;
        let x_3141 : f32 = u_xlat20.w;
        let x_3143 : f32 = u_xlat34.x;
        let x_3146 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_3141 * x_3143) + x_3146);
        let x_3150 : vec4<f32> = u_xlat11;
        let x_3151 : vec2<f32> = vec2<f32>(x_3150.x, x_3150.y);
        let x_3153 : f32 = vs_INTERP3.z;
        txVec55 = vec3<f32>(x_3151.x, x_3151.y, x_3153);
        let x_3160 : vec3<f32> = txVec55;
        let x_3162 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3160.xy, x_3160.z);
        u_xlat34.x = x_3162;
        let x_3165 : f32 = u_xlat7.x;
        let x_3167 : f32 = u_xlat34.x;
        let x_3170 : f32 = u_xlat8.x;
        u_xlat7.x = ((x_3165 * x_3167) + x_3170);
        let x_3174 : vec4<f32> = u_xlat11;
        let x_3175 : vec2<f32> = vec2<f32>(x_3174.z, x_3174.w);
        let x_3177 : f32 = vs_INTERP3.z;
        txVec56 = vec3<f32>(x_3175.x, x_3175.y, x_3177);
        let x_3184 : vec3<f32> = txVec56;
        let x_3186 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3184.xy, x_3184.z);
        u_xlat8.x = x_3186;
        let x_3189 : f32 = u_xlat7.y;
        let x_3191 : f32 = u_xlat8.x;
        let x_3194 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_3189 * x_3191) + x_3194);
        let x_3198 : vec2<f32> = u_xlat62;
        let x_3200 : f32 = vs_INTERP3.z;
        txVec57 = vec3<f32>(x_3198.x, x_3198.y, x_3200);
        let x_3208 : vec3<f32> = txVec57;
        let x_3210 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3208.xy, x_3208.z);
        u_xlat33 = x_3210;
        let x_3212 : f32 = u_xlat7.z;
        let x_3213 : f32 = u_xlat33;
        let x_3216 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_3212 * x_3213) + x_3216);
        let x_3220 : vec2<f32> = u_xlat58;
        let x_3222 : f32 = vs_INTERP3.z;
        txVec58 = vec3<f32>(x_3220.x, x_3220.y, x_3222);
        let x_3229 : vec3<f32> = txVec58;
        let x_3231 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3229.xy, x_3229.z);
        u_xlat58.x = x_3231;
        let x_3234 : f32 = u_xlat7.w;
        let x_3236 : f32 = u_xlat58.x;
        let x_3239 : f32 = u_xlat7.x;
        u_xlat0.x = ((x_3234 * x_3236) + x_3239);
      }
    }
  } else {
    let x_3244 : vec4<f32> = vs_INTERP3;
    let x_3245 : vec2<f32> = vec2<f32>(x_3244.x, x_3244.y);
    let x_3247 : f32 = vs_INTERP3.z;
    txVec59 = vec3<f32>(x_3245.x, x_3245.y, x_3247);
    let x_3254 : vec3<f32> = txVec59;
    let x_3256 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3254.xy, x_3254.z);
    u_xlat0.x = x_3256;
  }
  let x_3259 : f32 = u_xlat0.x;
  let x_3261 : f32 = x_355.x_MainLightShadowParams.x;
  let x_3264 : f32 = u_xlat2.x;
  u_xlat0.x = ((x_3259 * x_3261) + x_3264);
  let x_3269 : f32 = vs_INTERP3.z;
  u_xlatb2 = (0.0f >= x_3269);
  let x_3272 : f32 = vs_INTERP3.z;
  u_xlatb58 = (x_3272 >= 1.0f);
  let x_3274 : bool = u_xlatb2;
  let x_3275 : bool = u_xlatb58;
  u_xlatb2 = (x_3274 | x_3275);
  let x_3277 : bool = u_xlatb2;
  if (x_3277) {
    x_3278 = 1.0f;
  } else {
    let x_3283 : f32 = u_xlat0.x;
    x_3278 = x_3283;
  }
  let x_3284 : f32 = x_3278;
  u_xlat0.x = x_3284;
  let x_3286 : vec3<f32> = vs_INTERP8;
  let x_3288 : vec3<f32> = x_147.x_WorldSpaceCameraPos;
  let x_3290 : vec3<f32> = (x_3286 + -(x_3288));
  let x_3291 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3290.x, x_3290.y, x_3290.z, x_3291.w);
  let x_3293 : vec4<f32> = u_xlat7;
  let x_3295 : vec4<f32> = u_xlat7;
  u_xlat2.x = dot(vec3<f32>(x_3293.x, x_3293.y, x_3293.z), vec3<f32>(x_3295.x, x_3295.y, x_3295.z));
  let x_3300 : f32 = u_xlat2.x;
  let x_3302 : f32 = x_355.x_MainLightShadowParams.z;
  let x_3305 : f32 = x_355.x_MainLightShadowParams.w;
  u_xlat58.x = ((x_3300 * x_3302) + x_3305);
  let x_3309 : f32 = u_xlat58.x;
  u_xlat58.x = clamp(x_3309, 0.0f, 1.0f);
  let x_3313 : f32 = u_xlat0.x;
  u_xlat84 = (-(x_3313) + 1.0f);
  let x_3317 : f32 = u_xlat58.x;
  let x_3318 : f32 = u_xlat84;
  let x_3321 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_3317 * x_3318) + x_3321);
  let x_3324 : vec3<f32> = u_xlat4;
  let x_3326 : vec3<f32> = u_xlat26;
  u_xlat58.x = dot(-(x_3324), x_3326);
  let x_3330 : f32 = u_xlat58.x;
  let x_3332 : f32 = u_xlat58.x;
  u_xlat58.x = (x_3330 + x_3332);
  let x_3335 : vec3<f32> = u_xlat26;
  let x_3336 : vec2<f32> = u_xlat58;
  let x_3340 : vec3<f32> = u_xlat4;
  let x_3342 : vec3<f32> = ((x_3335 * -(vec3<f32>(x_3336.x, x_3336.x, x_3336.x))) + -(x_3340));
  let x_3343 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3342.x, x_3342.y, x_3342.z, x_3343.w);
  let x_3345 : vec3<f32> = u_xlat26;
  let x_3346 : vec3<f32> = u_xlat4;
  u_xlat58.x = dot(x_3345, x_3346);
  let x_3350 : f32 = u_xlat58.x;
  u_xlat58.x = clamp(x_3350, 0.0f, 1.0f);
  let x_3354 : f32 = u_xlat58.x;
  u_xlat58.x = (-(x_3354) + 1.0f);
  let x_3359 : f32 = u_xlat58.x;
  let x_3361 : f32 = u_xlat58.x;
  u_xlat58.x = (x_3359 * x_3361);
  let x_3365 : f32 = u_xlat58.x;
  let x_3367 : f32 = u_xlat58.x;
  u_xlat58.x = (x_3365 * x_3367);
  let x_3370 : f32 = u_xlat80;
  u_xlat84 = ((-(x_3370) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_3376 : f32 = u_xlat80;
  let x_3377 : f32 = u_xlat84;
  u_xlat80 = (x_3376 * x_3377);
  let x_3379 : f32 = u_xlat80;
  u_xlat80 = (x_3379 * 6.0f);
  let x_3390 : vec4<f32> = u_xlat7;
  let x_3392 : f32 = u_xlat80;
  let x_3393 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_3390.x, x_3390.y, x_3390.z), x_3392);
  u_xlat7 = x_3393;
  let x_3395 : f32 = u_xlat7.w;
  u_xlat80 = (x_3395 + -1.0f);
  let x_3398 : f32 = x_83.unity_SpecCube0_HDR.w;
  let x_3399 : f32 = u_xlat80;
  u_xlat80 = ((x_3398 * x_3399) + 1.0f);
  let x_3402 : f32 = u_xlat80;
  u_xlat80 = max(x_3402, 0.0f);
  let x_3404 : f32 = u_xlat80;
  u_xlat80 = log2(x_3404);
  let x_3406 : f32 = u_xlat80;
  let x_3408 : f32 = x_83.unity_SpecCube0_HDR.y;
  u_xlat80 = (x_3406 * x_3408);
  let x_3410 : f32 = u_xlat80;
  u_xlat80 = exp2(x_3410);
  let x_3412 : f32 = u_xlat80;
  let x_3414 : f32 = x_83.unity_SpecCube0_HDR.x;
  u_xlat80 = (x_3412 * x_3414);
  let x_3416 : vec4<f32> = u_xlat7;
  let x_3418 : f32 = u_xlat80;
  let x_3420 : vec3<f32> = (vec3<f32>(x_3416.x, x_3416.y, x_3416.z) * vec3<f32>(x_3418, x_3418, x_3418));
  let x_3421 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3420.x, x_3420.y, x_3420.z, x_3421.w);
  let x_3423 : f32 = u_xlat81;
  let x_3425 : f32 = u_xlat81;
  let x_3429 : vec2<f32> = ((vec2<f32>(x_3423, x_3423) * vec2<f32>(x_3425, x_3425)) + vec2<f32>(-1.0f, 1.0f));
  let x_3430 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3429.x, x_3429.y, x_3430.z, x_3430.w);
  let x_3433 : f32 = u_xlat8.y;
  u_xlat80 = (1.0f / x_3433);
  let x_3435 : f32 = u_xlat83;
  u_xlat81 = (x_3435 + -0.03999999910593032837f);
  let x_3439 : f32 = u_xlat58.x;
  let x_3440 : f32 = u_xlat81;
  u_xlat81 = ((x_3439 * x_3440) + 0.03999999910593032837f);
  let x_3444 : f32 = u_xlat80;
  let x_3445 : f32 = u_xlat81;
  u_xlat80 = (x_3444 * x_3445);
  let x_3447 : f32 = u_xlat80;
  let x_3449 : vec4<f32> = u_xlat7;
  let x_3451 : vec3<f32> = (vec3<f32>(x_3447, x_3447, x_3447) * vec3<f32>(x_3449.x, x_3449.y, x_3449.z));
  let x_3452 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3451.x, x_3451.y, x_3451.z, x_3452.w);
  let x_3454 : vec4<f32> = u_xlat3;
  let x_3456 : vec3<f32> = u_xlat5;
  let x_3458 : vec4<f32> = u_xlat7;
  let x_3460 : vec3<f32> = ((vec3<f32>(x_3454.x, x_3454.y, x_3454.z) * x_3456) + vec3<f32>(x_3458.x, x_3458.y, x_3458.z));
  let x_3461 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_3460.x, x_3460.y, x_3460.z, x_3461.w);
  let x_3464 : f32 = u_xlat0.x;
  let x_3466 : f32 = x_83.unity_LightData.z;
  u_xlat0.x = (x_3464 * x_3466);
  let x_3469 : vec3<f32> = u_xlat26;
  let x_3471 : vec4<f32> = x_147.x_MainLightPosition;
  u_xlat80 = dot(x_3469, vec3<f32>(x_3471.x, x_3471.y, x_3471.z));
  let x_3474 : f32 = u_xlat80;
  u_xlat80 = clamp(x_3474, 0.0f, 1.0f);
  let x_3477 : f32 = u_xlat0.x;
  let x_3478 : f32 = u_xlat80;
  u_xlat0.x = (x_3477 * x_3478);
  let x_3481 : vec3<f32> = u_xlat0;
  let x_3484 : vec4<f32> = x_147.x_MainLightColor;
  let x_3486 : vec3<f32> = (vec3<f32>(x_3481.x, x_3481.x, x_3481.x) * vec3<f32>(x_3484.x, x_3484.y, x_3484.z));
  let x_3487 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3486.x, x_3486.y, x_3486.z, x_3487.w);
  let x_3489 : vec3<f32> = u_xlat4;
  let x_3491 : vec4<f32> = x_147.x_MainLightPosition;
  u_xlat34 = (x_3489 + vec3<f32>(x_3491.x, x_3491.y, x_3491.z));
  let x_3494 : vec3<f32> = u_xlat34;
  let x_3495 : vec3<f32> = u_xlat34;
  u_xlat0.x = dot(x_3494, x_3495);
  let x_3499 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_3499, 1.17549435e-38f);
  let x_3503 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_3503);
  let x_3506 : vec3<f32> = u_xlat0;
  let x_3508 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_3506.x, x_3506.x, x_3506.x) * x_3508);
  let x_3510 : vec3<f32> = u_xlat26;
  let x_3511 : vec3<f32> = u_xlat34;
  u_xlat0.x = dot(x_3510, x_3511);
  let x_3515 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_3515, 0.0f, 1.0f);
  let x_3519 : vec4<f32> = x_147.x_MainLightPosition;
  let x_3521 : vec3<f32> = u_xlat34;
  u_xlat80 = dot(vec3<f32>(x_3519.x, x_3519.y, x_3519.z), x_3521);
  let x_3523 : f32 = u_xlat80;
  u_xlat80 = clamp(x_3523, 0.0f, 1.0f);
  let x_3526 : f32 = u_xlat0.x;
  let x_3528 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3526 * x_3528);
  let x_3532 : f32 = u_xlat0.x;
  let x_3534 : f32 = u_xlat8.x;
  u_xlat0.x = ((x_3532 * x_3534) + 1.00001001358032226562f);
  let x_3539 : f32 = u_xlat80;
  let x_3540 : f32 = u_xlat80;
  u_xlat80 = (x_3539 * x_3540);
  let x_3543 : f32 = u_xlat0.x;
  let x_3545 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3543 * x_3545);
  let x_3548 : f32 = u_xlat80;
  u_xlat80 = max(x_3548, 0.10000000149011611938f);
  let x_3552 : f32 = u_xlat0.x;
  let x_3553 : f32 = u_xlat80;
  u_xlat0.x = (x_3552 * x_3553);
  let x_3557 : f32 = u_xlat6.x;
  let x_3559 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3557 * x_3559);
  let x_3562 : f32 = u_xlat82;
  let x_3564 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3562 / x_3564);
  let x_3567 : vec3<f32> = u_xlat0;
  let x_3571 : vec3<f32> = u_xlat5;
  u_xlat34 = ((vec3<f32>(x_3567.x, x_3567.x, x_3567.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_3571);
  let x_3573 : vec4<f32> = u_xlat7;
  let x_3575 : vec3<f32> = u_xlat34;
  let x_3576 : vec3<f32> = (vec3<f32>(x_3573.x, x_3573.y, x_3573.z) * x_3575);
  let x_3577 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3576.x, x_3576.y, x_3576.z, x_3577.w);
  let x_3581 : f32 = x_147.x_AdditionalLightsCount.x;
  let x_3583 : f32 = x_83.unity_LightData.y;
  u_xlat0.x = min(x_3581, x_3583);
  let x_3588 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_3588));
  let x_3592 : f32 = u_xlat2.x;
  let x_3595 : f32 = x_355.x_AdditionalShadowFadeParams.x;
  let x_3598 : f32 = x_355.x_AdditionalShadowFadeParams.y;
  u_xlat2.x = ((x_3592 * x_3595) + x_3598);
  let x_3602 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_3602, 0.0f, 1.0f);
  u_xlat34.x = 0.0f;
  u_xlat34.y = 0.0f;
  u_xlat34.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_3614 : u32 = u_xlatu_loop_1;
    let x_3615 : u32 = u_xlatu0;
    if ((x_3614 < x_3615)) {
    } else {
      break;
    }
    let x_3618 : u32 = u_xlatu_loop_1;
    u_xlatu81 = (x_3618 >> 2u);
    let x_3621 : u32 = u_xlatu_loop_1;
    u_xlati83 = bitcast<i32>((x_3621 & 3u));
    let x_3624 : u32 = u_xlatu81;
    let x_3627 : vec4<f32> = x_83.unity_LightIndices[bitcast<i32>(x_3624)];
    let x_3637 : i32 = u_xlati83;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_3642 : vec4<u32> = indexable[x_3637];
    u_xlat81 = dot(x_3627, bitcast<vec4<f32>>(x_3642));
    let x_3646 : f32 = u_xlat81;
    u_xlati81 = i32(x_3646);
    let x_3648 : vec3<f32> = vs_INTERP8;
    let x_3659 : i32 = u_xlati81;
    let x_3661 : vec4<f32> = x_3658.x_AdditionalLightsPosition[x_3659];
    let x_3664 : i32 = u_xlati81;
    let x_3666 : vec4<f32> = x_3658.x_AdditionalLightsPosition[x_3664];
    let x_3668 : vec3<f32> = ((-(x_3648) * vec3<f32>(x_3661.w, x_3661.w, x_3661.w)) + vec3<f32>(x_3666.x, x_3666.y, x_3666.z));
    let x_3669 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3668.x, x_3668.y, x_3668.z, x_3669.w);
    let x_3671 : vec4<f32> = u_xlat9;
    let x_3673 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_3671.x, x_3671.y, x_3671.z), vec3<f32>(x_3673.x, x_3673.y, x_3673.z));
    let x_3676 : f32 = u_xlat83;
    u_xlat83 = max(x_3676, 0.00006103515625f);
    let x_3679 : f32 = u_xlat83;
    u_xlat58.x = inverseSqrt(x_3679);
    let x_3682 : vec2<f32> = u_xlat58;
    let x_3684 : vec4<f32> = u_xlat9;
    let x_3686 : vec3<f32> = (vec3<f32>(x_3682.x, x_3682.x, x_3682.x) * vec3<f32>(x_3684.x, x_3684.y, x_3684.z));
    let x_3687 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3686.x, x_3686.y, x_3686.z, x_3687.w);
    let x_3689 : f32 = u_xlat83;
    u_xlat84 = (1.0f / x_3689);
    let x_3691 : f32 = u_xlat83;
    let x_3692 : i32 = u_xlati81;
    let x_3694 : f32 = x_3658.x_AdditionalLightsAttenuation[x_3692].x;
    u_xlat83 = (x_3691 * x_3694);
    let x_3696 : f32 = u_xlat83;
    let x_3698 : f32 = u_xlat83;
    u_xlat83 = ((-(x_3696) * x_3698) + 1.0f);
    let x_3701 : f32 = u_xlat83;
    u_xlat83 = max(x_3701, 0.0f);
    let x_3703 : f32 = u_xlat83;
    let x_3704 : f32 = u_xlat83;
    u_xlat83 = (x_3703 * x_3704);
    let x_3706 : f32 = u_xlat83;
    let x_3707 : f32 = u_xlat84;
    u_xlat83 = (x_3706 * x_3707);
    let x_3709 : i32 = u_xlati81;
    let x_3711 : vec4<f32> = x_3658.x_AdditionalLightsSpotDir[x_3709];
    let x_3713 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_3711.x, x_3711.y, x_3711.z), vec3<f32>(x_3713.x, x_3713.y, x_3713.z));
    let x_3716 : f32 = u_xlat84;
    let x_3717 : i32 = u_xlati81;
    let x_3719 : f32 = x_3658.x_AdditionalLightsAttenuation[x_3717].z;
    let x_3721 : i32 = u_xlati81;
    let x_3723 : f32 = x_3658.x_AdditionalLightsAttenuation[x_3721].w;
    u_xlat84 = ((x_3716 * x_3719) + x_3723);
    let x_3725 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3725, 0.0f, 1.0f);
    let x_3727 : f32 = u_xlat84;
    let x_3728 : f32 = u_xlat84;
    u_xlat84 = (x_3727 * x_3728);
    let x_3730 : f32 = u_xlat83;
    let x_3731 : f32 = u_xlat84;
    u_xlat83 = (x_3730 * x_3731);
    let x_3735 : i32 = u_xlati81;
    let x_3737 : f32 = x_355.x_AdditionalShadowParams[x_3735].w;
    u_xlati84 = i32(x_3737);
    let x_3740 : i32 = u_xlati84;
    u_xlatb85 = (x_3740 >= 0i);
    let x_3742 : bool = u_xlatb85;
    if (x_3742) {
      let x_3746 : i32 = u_xlati81;
      let x_3748 : f32 = x_355.x_AdditionalShadowParams[x_3746].z;
      u_xlatb85 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_3748, x_3748, x_3748, x_3748))));
      let x_3753 : bool = u_xlatb85;
      if (x_3753) {
        let x_3758 : vec4<f32> = u_xlat10;
        let x_3761 : vec4<f32> = u_xlat10;
        let x_3764 : vec4<bool> = (abs(vec4<f32>(x_3758.z, x_3758.z, x_3758.y, x_3758.z)) >= abs(vec4<f32>(x_3761.x, x_3761.y, x_3761.x, x_3761.x)));
        let x_3766 : vec3<bool> = vec3<bool>(x_3764.x, x_3764.y, x_3764.z);
        let x_3767 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3766.x, x_3766.y, x_3766.z, x_3767.w);
        let x_3770 : bool = u_xlatb11.y;
        let x_3772 : bool = u_xlatb11.x;
        u_xlatb85 = (x_3770 & x_3772);
        let x_3774 : vec4<f32> = u_xlat10;
        let x_3777 : vec4<bool> = (-(vec4<f32>(x_3774.z, x_3774.y, x_3774.z, x_3774.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_3778 : vec3<bool> = vec3<bool>(x_3777.x, x_3777.y, x_3777.w);
        let x_3779 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3778.x, x_3778.y, x_3779.z, x_3778.z);
        let x_3782 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_3782);
        let x_3787 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_3787);
        let x_3793 : bool = u_xlatb11.w;
        u_xlat87 = select(0.0f, 1.0f, x_3793);
        let x_3796 : bool = u_xlatb11.z;
        if (x_3796) {
          let x_3801 : f32 = u_xlat11.y;
          x_3797 = x_3801;
        } else {
          let x_3803 : f32 = u_xlat87;
          x_3797 = x_3803;
        }
        let x_3804 : f32 = x_3797;
        u_xlat87 = x_3804;
        let x_3806 : bool = u_xlatb85;
        if (x_3806) {
          let x_3811 : f32 = u_xlat11.x;
          x_3807 = x_3811;
        } else {
          let x_3813 : f32 = u_xlat87;
          x_3807 = x_3813;
        }
        let x_3814 : f32 = x_3807;
        u_xlat85 = x_3814;
        let x_3815 : i32 = u_xlati81;
        let x_3817 : f32 = x_355.x_AdditionalShadowParams[x_3815].w;
        u_xlat87 = trunc(x_3817);
        let x_3819 : f32 = u_xlat85;
        let x_3820 : f32 = u_xlat87;
        u_xlat85 = (x_3819 + x_3820);
        let x_3822 : f32 = u_xlat85;
        u_xlati84 = i32(x_3822);
      }
      let x_3824 : i32 = u_xlati84;
      u_xlati84 = (x_3824 << bitcast<u32>(2i));
      let x_3826 : vec3<f32> = vs_INTERP8;
      let x_3829 : i32 = u_xlati84;
      let x_3832 : i32 = u_xlati84;
      let x_3836 : vec4<f32> = x_355.x_AdditionalLightsWorldToShadow[((x_3829 + 1i) / 4i)][((x_3832 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_3826.y, x_3826.y, x_3826.y, x_3826.y) * x_3836);
      let x_3838 : i32 = u_xlati84;
      let x_3840 : i32 = u_xlati84;
      let x_3843 : vec4<f32> = x_355.x_AdditionalLightsWorldToShadow[(x_3838 / 4i)][(x_3840 % 4i)];
      let x_3844 : vec3<f32> = vs_INTERP8;
      let x_3847 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3843 * vec4<f32>(x_3844.x, x_3844.x, x_3844.x, x_3844.x)) + x_3847);
      let x_3849 : i32 = u_xlati84;
      let x_3852 : i32 = u_xlati84;
      let x_3856 : vec4<f32> = x_355.x_AdditionalLightsWorldToShadow[((x_3849 + 2i) / 4i)][((x_3852 + 2i) % 4i)];
      let x_3857 : vec3<f32> = vs_INTERP8;
      let x_3860 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3856 * vec4<f32>(x_3857.z, x_3857.z, x_3857.z, x_3857.z)) + x_3860);
      let x_3862 : vec4<f32> = u_xlat11;
      let x_3863 : i32 = u_xlati84;
      let x_3866 : i32 = u_xlati84;
      let x_3870 : vec4<f32> = x_355.x_AdditionalLightsWorldToShadow[((x_3863 + 3i) / 4i)][((x_3866 + 3i) % 4i)];
      u_xlat11 = (x_3862 + x_3870);
      let x_3872 : vec4<f32> = u_xlat11;
      let x_3874 : vec4<f32> = u_xlat11;
      let x_3876 : vec3<f32> = (vec3<f32>(x_3872.x, x_3872.y, x_3872.z) / vec3<f32>(x_3874.w, x_3874.w, x_3874.w));
      let x_3877 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3876.x, x_3876.y, x_3876.z, x_3877.w);
      let x_3880 : i32 = u_xlati81;
      let x_3882 : f32 = x_355.x_AdditionalShadowParams[x_3880].y;
      u_xlatb84 = (0.0f < x_3882);
      let x_3884 : bool = u_xlatb84;
      if (x_3884) {
        let x_3887 : i32 = u_xlati81;
        let x_3889 : f32 = x_355.x_AdditionalShadowParams[x_3887].y;
        u_xlatb84 = (1.0f == x_3889);
        let x_3891 : bool = u_xlatb84;
        if (x_3891) {
          let x_3894 : vec4<f32> = u_xlat11;
          let x_3898 : vec4<f32> = x_355.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_3894.x, x_3894.y, x_3894.x, x_3894.y) + x_3898);
          let x_3901 : vec4<f32> = u_xlat12;
          let x_3902 : vec2<f32> = vec2<f32>(x_3901.x, x_3901.y);
          let x_3904 : f32 = u_xlat11.z;
          txVec60 = vec3<f32>(x_3902.x, x_3902.y, x_3904);
          let x_3912 : vec3<f32> = txVec60;
          let x_3914 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3912.xy, x_3912.z);
          u_xlat13.x = x_3914;
          let x_3917 : vec4<f32> = u_xlat12;
          let x_3918 : vec2<f32> = vec2<f32>(x_3917.z, x_3917.w);
          let x_3920 : f32 = u_xlat11.z;
          txVec61 = vec3<f32>(x_3918.x, x_3918.y, x_3920);
          let x_3927 : vec3<f32> = txVec61;
          let x_3929 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3927.xy, x_3927.z);
          u_xlat13.y = x_3929;
          let x_3931 : vec4<f32> = u_xlat11;
          let x_3934 : vec4<f32> = x_355.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_3931.x, x_3931.y, x_3931.x, x_3931.y) + x_3934);
          let x_3937 : vec4<f32> = u_xlat12;
          let x_3938 : vec2<f32> = vec2<f32>(x_3937.x, x_3937.y);
          let x_3940 : f32 = u_xlat11.z;
          txVec62 = vec3<f32>(x_3938.x, x_3938.y, x_3940);
          let x_3947 : vec3<f32> = txVec62;
          let x_3949 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3947.xy, x_3947.z);
          u_xlat13.z = x_3949;
          let x_3952 : vec4<f32> = u_xlat12;
          let x_3953 : vec2<f32> = vec2<f32>(x_3952.z, x_3952.w);
          let x_3955 : f32 = u_xlat11.z;
          txVec63 = vec3<f32>(x_3953.x, x_3953.y, x_3955);
          let x_3962 : vec3<f32> = txVec63;
          let x_3964 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3962.xy, x_3962.z);
          u_xlat13.w = x_3964;
          let x_3966 : vec4<f32> = u_xlat13;
          u_xlat84 = dot(x_3966, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3969 : i32 = u_xlati81;
          let x_3971 : f32 = x_355.x_AdditionalShadowParams[x_3969].y;
          u_xlatb85 = (2.0f == x_3971);
          let x_3973 : bool = u_xlatb85;
          if (x_3973) {
            let x_3976 : vec4<f32> = u_xlat11;
            let x_3980 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_3983 : vec2<f32> = ((vec2<f32>(x_3976.x, x_3976.y) * vec2<f32>(x_3980.z, x_3980.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3984 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3983.x, x_3983.y, x_3984.z, x_3984.w);
            let x_3986 : vec4<f32> = u_xlat12;
            let x_3988 : vec2<f32> = floor(vec2<f32>(x_3986.x, x_3986.y));
            let x_3989 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3988.x, x_3988.y, x_3989.z, x_3989.w);
            let x_3992 : vec4<f32> = u_xlat11;
            let x_3995 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_3998 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3992.x, x_3992.y) * vec2<f32>(x_3995.z, x_3995.w)) + -(vec2<f32>(x_3998.x, x_3998.y)));
            let x_4002 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_4002.x, x_4002.x, x_4002.y, x_4002.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4005 : vec4<f32> = u_xlat13;
            let x_4007 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4005.x, x_4005.x, x_4005.z, x_4005.z) * vec4<f32>(x_4007.x, x_4007.x, x_4007.z, x_4007.z));
            let x_4010 : vec4<f32> = u_xlat14;
            let x_4012 : vec2<f32> = (vec2<f32>(x_4010.y, x_4010.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_4013 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4012.x, x_4013.y, x_4012.y, x_4013.w);
            let x_4015 : vec4<f32> = u_xlat14;
            let x_4018 : vec2<f32> = u_xlat64;
            let x_4020 : vec2<f32> = ((vec2<f32>(x_4015.x, x_4015.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4018));
            let x_4021 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4020.x, x_4020.y, x_4021.z, x_4021.w);
            let x_4024 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_4024) + vec2<f32>(1.0f, 1.0f));
            let x_4027 : vec2<f32> = u_xlat64;
            let x_4028 : vec2<f32> = min(x_4027, vec2<f32>(0.0f, 0.0f));
            let x_4029 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4028.x, x_4028.y, x_4029.z, x_4029.w);
            let x_4031 : vec4<f32> = u_xlat15;
            let x_4034 : vec4<f32> = u_xlat15;
            let x_4037 : vec2<f32> = u_xlat66;
            let x_4038 : vec2<f32> = ((-(vec2<f32>(x_4031.x, x_4031.y)) * vec2<f32>(x_4034.x, x_4034.y)) + x_4037);
            let x_4039 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4038.x, x_4038.y, x_4039.z, x_4039.w);
            let x_4041 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_4041, vec2<f32>(0.0f, 0.0f));
            let x_4043 : vec2<f32> = u_xlat64;
            let x_4045 : vec2<f32> = u_xlat64;
            let x_4047 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_4043) * x_4045) + vec2<f32>(x_4047.y, x_4047.w));
            let x_4050 : vec4<f32> = u_xlat15;
            let x_4052 : vec2<f32> = (vec2<f32>(x_4050.x, x_4050.y) + vec2<f32>(1.0f, 1.0f));
            let x_4053 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4052.x, x_4052.y, x_4053.z, x_4053.w);
            let x_4055 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_4055 + vec2<f32>(1.0f, 1.0f));
            let x_4057 : vec4<f32> = u_xlat14;
            let x_4059 : vec2<f32> = (vec2<f32>(x_4057.x, x_4057.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4060 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4059.x, x_4059.y, x_4060.z, x_4060.w);
            let x_4062 : vec2<f32> = u_xlat66;
            let x_4063 : vec2<f32> = (x_4062 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4064 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4063.x, x_4063.y, x_4064.z, x_4064.w);
            let x_4066 : vec4<f32> = u_xlat15;
            let x_4068 : vec2<f32> = (vec2<f32>(x_4066.x, x_4066.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4069 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4068.x, x_4068.y, x_4069.z, x_4069.w);
            let x_4071 : vec2<f32> = u_xlat64;
            let x_4072 : vec2<f32> = (x_4071 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4073 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4072.x, x_4072.y, x_4073.z, x_4073.w);
            let x_4075 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_4075.y, x_4075.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4079 : f32 = u_xlat15.x;
            u_xlat16.z = x_4079;
            let x_4082 : f32 = u_xlat64.x;
            u_xlat16.w = x_4082;
            let x_4085 : f32 = u_xlat17.x;
            u_xlat14.z = x_4085;
            let x_4088 : f32 = u_xlat13.x;
            u_xlat14.w = x_4088;
            let x_4090 : vec4<f32> = u_xlat14;
            let x_4092 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_4090.z, x_4090.w, x_4090.x, x_4090.z) + vec4<f32>(x_4092.z, x_4092.w, x_4092.x, x_4092.z));
            let x_4096 : f32 = u_xlat16.y;
            u_xlat15.z = x_4096;
            let x_4099 : f32 = u_xlat64.y;
            u_xlat15.w = x_4099;
            let x_4102 : f32 = u_xlat14.y;
            u_xlat17.z = x_4102;
            let x_4105 : f32 = u_xlat13.z;
            u_xlat17.w = x_4105;
            let x_4107 : vec4<f32> = u_xlat15;
            let x_4109 : vec4<f32> = u_xlat17;
            let x_4111 : vec3<f32> = (vec3<f32>(x_4107.z, x_4107.y, x_4107.w) + vec3<f32>(x_4109.z, x_4109.y, x_4109.w));
            let x_4112 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4111.x, x_4111.y, x_4111.z, x_4112.w);
            let x_4114 : vec4<f32> = u_xlat14;
            let x_4116 : vec4<f32> = u_xlat18;
            let x_4118 : vec3<f32> = (vec3<f32>(x_4114.x, x_4114.z, x_4114.w) / vec3<f32>(x_4116.z, x_4116.w, x_4116.y));
            let x_4119 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4118.x, x_4118.y, x_4118.z, x_4119.w);
            let x_4121 : vec4<f32> = u_xlat14;
            let x_4123 : vec3<f32> = (vec3<f32>(x_4121.x, x_4121.y, x_4121.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4124 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4123.x, x_4123.y, x_4123.z, x_4124.w);
            let x_4126 : vec4<f32> = u_xlat17;
            let x_4128 : vec4<f32> = u_xlat13;
            let x_4130 : vec3<f32> = (vec3<f32>(x_4126.z, x_4126.y, x_4126.w) / vec3<f32>(x_4128.x, x_4128.y, x_4128.z));
            let x_4131 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4130.x, x_4130.y, x_4130.z, x_4131.w);
            let x_4133 : vec4<f32> = u_xlat15;
            let x_4135 : vec3<f32> = (vec3<f32>(x_4133.x, x_4133.y, x_4133.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4136 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4135.x, x_4135.y, x_4135.z, x_4136.w);
            let x_4138 : vec4<f32> = u_xlat14;
            let x_4141 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4143 : vec3<f32> = (vec3<f32>(x_4138.y, x_4138.x, x_4138.z) * vec3<f32>(x_4141.x, x_4141.x, x_4141.x));
            let x_4144 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4143.x, x_4143.y, x_4143.z, x_4144.w);
            let x_4146 : vec4<f32> = u_xlat15;
            let x_4149 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4151 : vec3<f32> = (vec3<f32>(x_4146.x, x_4146.y, x_4146.z) * vec3<f32>(x_4149.y, x_4149.y, x_4149.y));
            let x_4152 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4151.x, x_4151.y, x_4151.z, x_4152.w);
            let x_4155 : f32 = u_xlat15.x;
            u_xlat14.w = x_4155;
            let x_4157 : vec4<f32> = u_xlat12;
            let x_4160 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4163 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_4157.x, x_4157.y, x_4157.x, x_4157.y) * vec4<f32>(x_4160.x, x_4160.y, x_4160.x, x_4160.y)) + vec4<f32>(x_4163.y, x_4163.w, x_4163.x, x_4163.w));
            let x_4166 : vec4<f32> = u_xlat12;
            let x_4169 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4172 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_4166.x, x_4166.y) * vec2<f32>(x_4169.x, x_4169.y)) + vec2<f32>(x_4172.z, x_4172.w));
            let x_4176 : f32 = u_xlat14.y;
            u_xlat15.w = x_4176;
            let x_4178 : vec4<f32> = u_xlat15;
            let x_4179 : vec2<f32> = vec2<f32>(x_4178.y, x_4178.z);
            let x_4180 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4180.x, x_4179.x, x_4180.z, x_4179.y);
            let x_4182 : vec4<f32> = u_xlat12;
            let x_4185 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4188 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_4182.x, x_4182.y, x_4182.x, x_4182.y) * vec4<f32>(x_4185.x, x_4185.y, x_4185.x, x_4185.y)) + vec4<f32>(x_4188.x, x_4188.y, x_4188.z, x_4188.y));
            let x_4191 : vec4<f32> = u_xlat12;
            let x_4194 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4197 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_4191.x, x_4191.y, x_4191.x, x_4191.y) * vec4<f32>(x_4194.x, x_4194.y, x_4194.x, x_4194.y)) + vec4<f32>(x_4197.w, x_4197.y, x_4197.w, x_4197.z));
            let x_4200 : vec4<f32> = u_xlat12;
            let x_4203 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4206 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_4200.x, x_4200.y, x_4200.x, x_4200.y) * vec4<f32>(x_4203.x, x_4203.y, x_4203.x, x_4203.y)) + vec4<f32>(x_4206.x, x_4206.w, x_4206.z, x_4206.w));
            let x_4209 : vec4<f32> = u_xlat13;
            let x_4211 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_4209.x, x_4209.x, x_4209.x, x_4209.y) * vec4<f32>(x_4211.z, x_4211.w, x_4211.y, x_4211.z));
            let x_4214 : vec4<f32> = u_xlat13;
            let x_4216 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_4214.y, x_4214.y, x_4214.z, x_4214.z) * x_4216);
            let x_4219 : f32 = u_xlat13.z;
            let x_4221 : f32 = u_xlat18.y;
            u_xlat85 = (x_4219 * x_4221);
            let x_4224 : vec4<f32> = u_xlat16;
            let x_4225 : vec2<f32> = vec2<f32>(x_4224.x, x_4224.y);
            let x_4227 : f32 = u_xlat11.z;
            txVec64 = vec3<f32>(x_4225.x, x_4225.y, x_4227);
            let x_4234 : vec3<f32> = txVec64;
            let x_4236 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4234.xy, x_4234.z);
            u_xlat87 = x_4236;
            let x_4238 : vec4<f32> = u_xlat16;
            let x_4239 : vec2<f32> = vec2<f32>(x_4238.z, x_4238.w);
            let x_4241 : f32 = u_xlat11.z;
            txVec65 = vec3<f32>(x_4239.x, x_4239.y, x_4241);
            let x_4249 : vec3<f32> = txVec65;
            let x_4251 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4249.xy, x_4249.z);
            u_xlat88 = x_4251;
            let x_4252 : f32 = u_xlat88;
            let x_4254 : f32 = u_xlat19.y;
            u_xlat88 = (x_4252 * x_4254);
            let x_4257 : f32 = u_xlat19.x;
            let x_4258 : f32 = u_xlat87;
            let x_4260 : f32 = u_xlat88;
            u_xlat87 = ((x_4257 * x_4258) + x_4260);
            let x_4263 : vec2<f32> = u_xlat64;
            let x_4265 : f32 = u_xlat11.z;
            txVec66 = vec3<f32>(x_4263.x, x_4263.y, x_4265);
            let x_4272 : vec3<f32> = txVec66;
            let x_4274 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4272.xy, x_4272.z);
            u_xlat88 = x_4274;
            let x_4276 : f32 = u_xlat19.z;
            let x_4277 : f32 = u_xlat88;
            let x_4279 : f32 = u_xlat87;
            u_xlat87 = ((x_4276 * x_4277) + x_4279);
            let x_4282 : vec4<f32> = u_xlat15;
            let x_4283 : vec2<f32> = vec2<f32>(x_4282.x, x_4282.y);
            let x_4285 : f32 = u_xlat11.z;
            txVec67 = vec3<f32>(x_4283.x, x_4283.y, x_4285);
            let x_4292 : vec3<f32> = txVec67;
            let x_4294 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4292.xy, x_4292.z);
            u_xlat88 = x_4294;
            let x_4296 : f32 = u_xlat19.w;
            let x_4297 : f32 = u_xlat88;
            let x_4299 : f32 = u_xlat87;
            u_xlat87 = ((x_4296 * x_4297) + x_4299);
            let x_4302 : vec4<f32> = u_xlat17;
            let x_4303 : vec2<f32> = vec2<f32>(x_4302.x, x_4302.y);
            let x_4305 : f32 = u_xlat11.z;
            txVec68 = vec3<f32>(x_4303.x, x_4303.y, x_4305);
            let x_4312 : vec3<f32> = txVec68;
            let x_4314 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4312.xy, x_4312.z);
            u_xlat88 = x_4314;
            let x_4316 : f32 = u_xlat20.x;
            let x_4317 : f32 = u_xlat88;
            let x_4319 : f32 = u_xlat87;
            u_xlat87 = ((x_4316 * x_4317) + x_4319);
            let x_4322 : vec4<f32> = u_xlat17;
            let x_4323 : vec2<f32> = vec2<f32>(x_4322.z, x_4322.w);
            let x_4325 : f32 = u_xlat11.z;
            txVec69 = vec3<f32>(x_4323.x, x_4323.y, x_4325);
            let x_4332 : vec3<f32> = txVec69;
            let x_4334 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4332.xy, x_4332.z);
            u_xlat88 = x_4334;
            let x_4336 : f32 = u_xlat20.y;
            let x_4337 : f32 = u_xlat88;
            let x_4339 : f32 = u_xlat87;
            u_xlat87 = ((x_4336 * x_4337) + x_4339);
            let x_4342 : vec4<f32> = u_xlat15;
            let x_4343 : vec2<f32> = vec2<f32>(x_4342.z, x_4342.w);
            let x_4345 : f32 = u_xlat11.z;
            txVec70 = vec3<f32>(x_4343.x, x_4343.y, x_4345);
            let x_4352 : vec3<f32> = txVec70;
            let x_4354 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4352.xy, x_4352.z);
            u_xlat88 = x_4354;
            let x_4356 : f32 = u_xlat20.z;
            let x_4357 : f32 = u_xlat88;
            let x_4359 : f32 = u_xlat87;
            u_xlat87 = ((x_4356 * x_4357) + x_4359);
            let x_4362 : vec4<f32> = u_xlat14;
            let x_4363 : vec2<f32> = vec2<f32>(x_4362.x, x_4362.y);
            let x_4365 : f32 = u_xlat11.z;
            txVec71 = vec3<f32>(x_4363.x, x_4363.y, x_4365);
            let x_4372 : vec3<f32> = txVec71;
            let x_4374 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4372.xy, x_4372.z);
            u_xlat88 = x_4374;
            let x_4376 : f32 = u_xlat20.w;
            let x_4377 : f32 = u_xlat88;
            let x_4379 : f32 = u_xlat87;
            u_xlat87 = ((x_4376 * x_4377) + x_4379);
            let x_4382 : vec4<f32> = u_xlat14;
            let x_4383 : vec2<f32> = vec2<f32>(x_4382.z, x_4382.w);
            let x_4385 : f32 = u_xlat11.z;
            txVec72 = vec3<f32>(x_4383.x, x_4383.y, x_4385);
            let x_4392 : vec3<f32> = txVec72;
            let x_4394 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4392.xy, x_4392.z);
            u_xlat88 = x_4394;
            let x_4395 : f32 = u_xlat85;
            let x_4396 : f32 = u_xlat88;
            let x_4398 : f32 = u_xlat87;
            u_xlat84 = ((x_4395 * x_4396) + x_4398);
          } else {
            let x_4401 : vec4<f32> = u_xlat11;
            let x_4404 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4407 : vec2<f32> = ((vec2<f32>(x_4401.x, x_4401.y) * vec2<f32>(x_4404.z, x_4404.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4408 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4407.x, x_4407.y, x_4408.z, x_4408.w);
            let x_4410 : vec4<f32> = u_xlat12;
            let x_4412 : vec2<f32> = floor(vec2<f32>(x_4410.x, x_4410.y));
            let x_4413 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4412.x, x_4412.y, x_4413.z, x_4413.w);
            let x_4415 : vec4<f32> = u_xlat11;
            let x_4418 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4421 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_4415.x, x_4415.y) * vec2<f32>(x_4418.z, x_4418.w)) + -(vec2<f32>(x_4421.x, x_4421.y)));
            let x_4425 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_4425.x, x_4425.x, x_4425.y, x_4425.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4428 : vec4<f32> = u_xlat13;
            let x_4430 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4428.x, x_4428.x, x_4428.z, x_4428.z) * vec4<f32>(x_4430.x, x_4430.x, x_4430.z, x_4430.z));
            let x_4433 : vec4<f32> = u_xlat14;
            let x_4435 : vec2<f32> = (vec2<f32>(x_4433.y, x_4433.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_4436 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4436.x, x_4435.x, x_4436.z, x_4435.y);
            let x_4438 : vec4<f32> = u_xlat14;
            let x_4441 : vec2<f32> = u_xlat64;
            let x_4443 : vec2<f32> = ((vec2<f32>(x_4438.x, x_4438.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4441));
            let x_4444 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4443.x, x_4444.y, x_4443.y, x_4444.w);
            let x_4446 : vec2<f32> = u_xlat64;
            let x_4448 : vec2<f32> = (-(x_4446) + vec2<f32>(1.0f, 1.0f));
            let x_4449 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4448.x, x_4448.y, x_4449.z, x_4449.w);
            let x_4451 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_4451, vec2<f32>(0.0f, 0.0f));
            let x_4453 : vec2<f32> = u_xlat66;
            let x_4455 : vec2<f32> = u_xlat66;
            let x_4457 : vec4<f32> = u_xlat14;
            let x_4459 : vec2<f32> = ((-(x_4453) * x_4455) + vec2<f32>(x_4457.x, x_4457.y));
            let x_4460 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4459.x, x_4459.y, x_4460.z, x_4460.w);
            let x_4462 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_4462, vec2<f32>(0.0f, 0.0f));
            let x_4465 : vec2<f32> = u_xlat66;
            let x_4467 : vec2<f32> = u_xlat66;
            let x_4469 : vec4<f32> = u_xlat13;
            let x_4471 : vec2<f32> = ((-(x_4465) * x_4467) + vec2<f32>(x_4469.y, x_4469.w));
            let x_4472 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_4471.x, x_4472.y, x_4471.y);
            let x_4474 : vec4<f32> = u_xlat14;
            let x_4476 : vec2<f32> = (vec2<f32>(x_4474.x, x_4474.y) + vec2<f32>(2.0f, 2.0f));
            let x_4477 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4476.x, x_4476.y, x_4477.z, x_4477.w);
            let x_4479 : vec3<f32> = u_xlat39;
            let x_4481 : vec2<f32> = (vec2<f32>(x_4479.x, x_4479.z) + vec2<f32>(2.0f, 2.0f));
            let x_4482 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4482.x, x_4481.x, x_4482.z, x_4481.y);
            let x_4485 : f32 = u_xlat13.y;
            u_xlat16.z = (x_4485 * 0.08163200318813323975f);
            let x_4488 : vec4<f32> = u_xlat13;
            let x_4490 : vec3<f32> = (vec3<f32>(x_4488.z, x_4488.x, x_4488.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_4491 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4490.x, x_4490.y, x_4490.z, x_4491.w);
            let x_4493 : vec4<f32> = u_xlat14;
            let x_4495 : vec2<f32> = (vec2<f32>(x_4493.x, x_4493.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_4496 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4495.x, x_4495.y, x_4496.z, x_4496.w);
            let x_4499 : f32 = u_xlat17.y;
            u_xlat16.x = x_4499;
            let x_4501 : vec2<f32> = u_xlat64;
            let x_4504 : vec2<f32> = ((vec2<f32>(x_4501.x, x_4501.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4505 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4505.x, x_4504.x, x_4505.z, x_4504.y);
            let x_4507 : vec2<f32> = u_xlat64;
            let x_4510 : vec2<f32> = ((vec2<f32>(x_4507.x, x_4507.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4511 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4510.x, x_4511.y, x_4510.y, x_4511.w);
            let x_4514 : f32 = u_xlat13.x;
            u_xlat14.y = x_4514;
            let x_4517 : f32 = u_xlat15.y;
            u_xlat14.w = x_4517;
            let x_4519 : vec4<f32> = u_xlat14;
            let x_4520 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_4519 + x_4520);
            let x_4522 : vec2<f32> = u_xlat64;
            let x_4525 : vec2<f32> = ((vec2<f32>(x_4522.y, x_4522.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4526 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4526.x, x_4525.x, x_4526.z, x_4525.y);
            let x_4528 : vec2<f32> = u_xlat64;
            let x_4531 : vec2<f32> = ((vec2<f32>(x_4528.y, x_4528.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4532 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4531.x, x_4532.y, x_4531.y, x_4532.w);
            let x_4535 : f32 = u_xlat13.y;
            u_xlat15.y = x_4535;
            let x_4537 : vec4<f32> = u_xlat15;
            let x_4538 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_4537 + x_4538);
            let x_4540 : vec4<f32> = u_xlat14;
            let x_4541 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_4540 / x_4541);
            let x_4543 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_4543 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4545 : vec4<f32> = u_xlat15;
            let x_4546 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_4545 / x_4546);
            let x_4548 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_4548 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4550 : vec4<f32> = u_xlat14;
            let x_4553 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_4550.w, x_4550.x, x_4550.y, x_4550.z) * vec4<f32>(x_4553.x, x_4553.x, x_4553.x, x_4553.x));
            let x_4556 : vec4<f32> = u_xlat15;
            let x_4559 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_4556.x, x_4556.w, x_4556.y, x_4556.z) * vec4<f32>(x_4559.y, x_4559.y, x_4559.y, x_4559.y));
            let x_4562 : vec4<f32> = u_xlat14;
            let x_4563 : vec3<f32> = vec3<f32>(x_4562.y, x_4562.z, x_4562.w);
            let x_4564 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4563.x, x_4564.y, x_4563.y, x_4563.z);
            let x_4567 : f32 = u_xlat15.x;
            u_xlat17.y = x_4567;
            let x_4569 : vec4<f32> = u_xlat12;
            let x_4572 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4575 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_4569.x, x_4569.y, x_4569.x, x_4569.y) * vec4<f32>(x_4572.x, x_4572.y, x_4572.x, x_4572.y)) + vec4<f32>(x_4575.x, x_4575.y, x_4575.z, x_4575.y));
            let x_4578 : vec4<f32> = u_xlat12;
            let x_4581 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4584 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_4578.x, x_4578.y) * vec2<f32>(x_4581.x, x_4581.y)) + vec2<f32>(x_4584.w, x_4584.y));
            let x_4588 : f32 = u_xlat17.y;
            u_xlat14.y = x_4588;
            let x_4591 : f32 = u_xlat15.z;
            u_xlat17.y = x_4591;
            let x_4593 : vec4<f32> = u_xlat12;
            let x_4596 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4599 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_4593.x, x_4593.y, x_4593.x, x_4593.y) * vec4<f32>(x_4596.x, x_4596.y, x_4596.x, x_4596.y)) + vec4<f32>(x_4599.x, x_4599.y, x_4599.z, x_4599.y));
            let x_4602 : vec4<f32> = u_xlat12;
            let x_4605 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4608 : vec4<f32> = u_xlat17;
            let x_4610 : vec2<f32> = ((vec2<f32>(x_4602.x, x_4602.y) * vec2<f32>(x_4605.x, x_4605.y)) + vec2<f32>(x_4608.w, x_4608.y));
            let x_4611 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_4610.x, x_4610.y, x_4611.z, x_4611.w);
            let x_4614 : f32 = u_xlat17.y;
            u_xlat14.z = x_4614;
            let x_4616 : vec4<f32> = u_xlat12;
            let x_4619 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4622 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_4616.x, x_4616.y, x_4616.x, x_4616.y) * vec4<f32>(x_4619.x, x_4619.y, x_4619.x, x_4619.y)) + vec4<f32>(x_4622.x, x_4622.y, x_4622.x, x_4622.z));
            let x_4626 : f32 = u_xlat15.w;
            u_xlat17.y = x_4626;
            let x_4629 : vec4<f32> = u_xlat12;
            let x_4632 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4635 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_4629.x, x_4629.y, x_4629.x, x_4629.y) * vec4<f32>(x_4632.x, x_4632.y, x_4632.x, x_4632.y)) + vec4<f32>(x_4635.x, x_4635.y, x_4635.z, x_4635.y));
            let x_4639 : vec4<f32> = u_xlat12;
            let x_4642 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4645 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_4639.x, x_4639.y) * vec2<f32>(x_4642.x, x_4642.y)) + vec2<f32>(x_4645.w, x_4645.y));
            let x_4649 : f32 = u_xlat17.y;
            u_xlat14.w = x_4649;
            let x_4652 : vec4<f32> = u_xlat12;
            let x_4655 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4658 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_4652.x, x_4652.y) * vec2<f32>(x_4655.x, x_4655.y)) + vec2<f32>(x_4658.x, x_4658.w));
            let x_4661 : vec4<f32> = u_xlat17;
            let x_4662 : vec3<f32> = vec3<f32>(x_4661.x, x_4661.z, x_4661.w);
            let x_4663 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4662.x, x_4663.y, x_4662.y, x_4662.z);
            let x_4665 : vec4<f32> = u_xlat12;
            let x_4668 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4671 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_4665.x, x_4665.y, x_4665.x, x_4665.y) * vec4<f32>(x_4668.x, x_4668.y, x_4668.x, x_4668.y)) + vec4<f32>(x_4671.x, x_4671.y, x_4671.z, x_4671.y));
            let x_4675 : vec4<f32> = u_xlat12;
            let x_4678 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4681 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_4675.x, x_4675.y) * vec2<f32>(x_4678.x, x_4678.y)) + vec2<f32>(x_4681.w, x_4681.y));
            let x_4685 : f32 = u_xlat14.x;
            u_xlat15.x = x_4685;
            let x_4687 : vec4<f32> = u_xlat12;
            let x_4690 : vec4<f32> = x_355.x_AdditionalShadowmapSize;
            let x_4693 : vec4<f32> = u_xlat15;
            let x_4695 : vec2<f32> = ((vec2<f32>(x_4687.x, x_4687.y) * vec2<f32>(x_4690.x, x_4690.y)) + vec2<f32>(x_4693.x, x_4693.y));
            let x_4696 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4695.x, x_4695.y, x_4696.z, x_4696.w);
            let x_4699 : vec4<f32> = u_xlat13;
            let x_4701 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_4699.x, x_4699.x, x_4699.x, x_4699.x) * x_4701);
            let x_4704 : vec4<f32> = u_xlat13;
            let x_4706 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_4704.y, x_4704.y, x_4704.y, x_4704.y) * x_4706);
            let x_4709 : vec4<f32> = u_xlat13;
            let x_4711 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_4709.z, x_4709.z, x_4709.z, x_4709.z) * x_4711);
            let x_4713 : vec4<f32> = u_xlat13;
            let x_4715 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_4713.w, x_4713.w, x_4713.w, x_4713.w) * x_4715);
            let x_4718 : vec4<f32> = u_xlat18;
            let x_4719 : vec2<f32> = vec2<f32>(x_4718.x, x_4718.y);
            let x_4721 : f32 = u_xlat11.z;
            txVec73 = vec3<f32>(x_4719.x, x_4719.y, x_4721);
            let x_4728 : vec3<f32> = txVec73;
            let x_4730 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4728.xy, x_4728.z);
            u_xlat85 = x_4730;
            let x_4732 : vec4<f32> = u_xlat18;
            let x_4733 : vec2<f32> = vec2<f32>(x_4732.z, x_4732.w);
            let x_4735 : f32 = u_xlat11.z;
            txVec74 = vec3<f32>(x_4733.x, x_4733.y, x_4735);
            let x_4742 : vec3<f32> = txVec74;
            let x_4744 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4742.xy, x_4742.z);
            u_xlat87 = x_4744;
            let x_4745 : f32 = u_xlat87;
            let x_4747 : f32 = u_xlat23.y;
            u_xlat87 = (x_4745 * x_4747);
            let x_4750 : f32 = u_xlat23.x;
            let x_4751 : f32 = u_xlat85;
            let x_4753 : f32 = u_xlat87;
            u_xlat85 = ((x_4750 * x_4751) + x_4753);
            let x_4756 : vec2<f32> = u_xlat64;
            let x_4758 : f32 = u_xlat11.z;
            txVec75 = vec3<f32>(x_4756.x, x_4756.y, x_4758);
            let x_4765 : vec3<f32> = txVec75;
            let x_4767 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4765.xy, x_4765.z);
            u_xlat87 = x_4767;
            let x_4769 : f32 = u_xlat23.z;
            let x_4770 : f32 = u_xlat87;
            let x_4772 : f32 = u_xlat85;
            u_xlat85 = ((x_4769 * x_4770) + x_4772);
            let x_4775 : vec4<f32> = u_xlat21;
            let x_4776 : vec2<f32> = vec2<f32>(x_4775.x, x_4775.y);
            let x_4778 : f32 = u_xlat11.z;
            txVec76 = vec3<f32>(x_4776.x, x_4776.y, x_4778);
            let x_4785 : vec3<f32> = txVec76;
            let x_4787 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4785.xy, x_4785.z);
            u_xlat87 = x_4787;
            let x_4789 : f32 = u_xlat23.w;
            let x_4790 : f32 = u_xlat87;
            let x_4792 : f32 = u_xlat85;
            u_xlat85 = ((x_4789 * x_4790) + x_4792);
            let x_4795 : vec4<f32> = u_xlat19;
            let x_4796 : vec2<f32> = vec2<f32>(x_4795.x, x_4795.y);
            let x_4798 : f32 = u_xlat11.z;
            txVec77 = vec3<f32>(x_4796.x, x_4796.y, x_4798);
            let x_4805 : vec3<f32> = txVec77;
            let x_4807 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4805.xy, x_4805.z);
            u_xlat87 = x_4807;
            let x_4809 : f32 = u_xlat24.x;
            let x_4810 : f32 = u_xlat87;
            let x_4812 : f32 = u_xlat85;
            u_xlat85 = ((x_4809 * x_4810) + x_4812);
            let x_4815 : vec4<f32> = u_xlat19;
            let x_4816 : vec2<f32> = vec2<f32>(x_4815.z, x_4815.w);
            let x_4818 : f32 = u_xlat11.z;
            txVec78 = vec3<f32>(x_4816.x, x_4816.y, x_4818);
            let x_4825 : vec3<f32> = txVec78;
            let x_4827 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4825.xy, x_4825.z);
            u_xlat87 = x_4827;
            let x_4829 : f32 = u_xlat24.y;
            let x_4830 : f32 = u_xlat87;
            let x_4832 : f32 = u_xlat85;
            u_xlat85 = ((x_4829 * x_4830) + x_4832);
            let x_4835 : vec4<f32> = u_xlat20;
            let x_4836 : vec2<f32> = vec2<f32>(x_4835.x, x_4835.y);
            let x_4838 : f32 = u_xlat11.z;
            txVec79 = vec3<f32>(x_4836.x, x_4836.y, x_4838);
            let x_4845 : vec3<f32> = txVec79;
            let x_4847 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4845.xy, x_4845.z);
            u_xlat87 = x_4847;
            let x_4849 : f32 = u_xlat24.z;
            let x_4850 : f32 = u_xlat87;
            let x_4852 : f32 = u_xlat85;
            u_xlat85 = ((x_4849 * x_4850) + x_4852);
            let x_4855 : vec4<f32> = u_xlat21;
            let x_4856 : vec2<f32> = vec2<f32>(x_4855.z, x_4855.w);
            let x_4858 : f32 = u_xlat11.z;
            txVec80 = vec3<f32>(x_4856.x, x_4856.y, x_4858);
            let x_4865 : vec3<f32> = txVec80;
            let x_4867 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4865.xy, x_4865.z);
            u_xlat87 = x_4867;
            let x_4869 : f32 = u_xlat24.w;
            let x_4870 : f32 = u_xlat87;
            let x_4872 : f32 = u_xlat85;
            u_xlat85 = ((x_4869 * x_4870) + x_4872);
            let x_4875 : vec4<f32> = u_xlat22;
            let x_4876 : vec2<f32> = vec2<f32>(x_4875.x, x_4875.y);
            let x_4878 : f32 = u_xlat11.z;
            txVec81 = vec3<f32>(x_4876.x, x_4876.y, x_4878);
            let x_4885 : vec3<f32> = txVec81;
            let x_4887 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4885.xy, x_4885.z);
            u_xlat87 = x_4887;
            let x_4889 : f32 = u_xlat25.x;
            let x_4890 : f32 = u_xlat87;
            let x_4892 : f32 = u_xlat85;
            u_xlat85 = ((x_4889 * x_4890) + x_4892);
            let x_4895 : vec4<f32> = u_xlat22;
            let x_4896 : vec2<f32> = vec2<f32>(x_4895.z, x_4895.w);
            let x_4898 : f32 = u_xlat11.z;
            txVec82 = vec3<f32>(x_4896.x, x_4896.y, x_4898);
            let x_4905 : vec3<f32> = txVec82;
            let x_4907 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4905.xy, x_4905.z);
            u_xlat87 = x_4907;
            let x_4909 : f32 = u_xlat25.y;
            let x_4910 : f32 = u_xlat87;
            let x_4912 : f32 = u_xlat85;
            u_xlat85 = ((x_4909 * x_4910) + x_4912);
            let x_4915 : vec2<f32> = u_xlat40;
            let x_4917 : f32 = u_xlat11.z;
            txVec83 = vec3<f32>(x_4915.x, x_4915.y, x_4917);
            let x_4924 : vec3<f32> = txVec83;
            let x_4926 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4924.xy, x_4924.z);
            u_xlat87 = x_4926;
            let x_4928 : f32 = u_xlat25.z;
            let x_4929 : f32 = u_xlat87;
            let x_4931 : f32 = u_xlat85;
            u_xlat85 = ((x_4928 * x_4929) + x_4931);
            let x_4934 : vec2<f32> = u_xlat72;
            let x_4936 : f32 = u_xlat11.z;
            txVec84 = vec3<f32>(x_4934.x, x_4934.y, x_4936);
            let x_4943 : vec3<f32> = txVec84;
            let x_4945 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4943.xy, x_4943.z);
            u_xlat87 = x_4945;
            let x_4947 : f32 = u_xlat25.w;
            let x_4948 : f32 = u_xlat87;
            let x_4950 : f32 = u_xlat85;
            u_xlat85 = ((x_4947 * x_4948) + x_4950);
            let x_4953 : vec4<f32> = u_xlat17;
            let x_4954 : vec2<f32> = vec2<f32>(x_4953.x, x_4953.y);
            let x_4956 : f32 = u_xlat11.z;
            txVec85 = vec3<f32>(x_4954.x, x_4954.y, x_4956);
            let x_4963 : vec3<f32> = txVec85;
            let x_4965 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4963.xy, x_4963.z);
            u_xlat87 = x_4965;
            let x_4967 : f32 = u_xlat13.x;
            let x_4968 : f32 = u_xlat87;
            let x_4970 : f32 = u_xlat85;
            u_xlat85 = ((x_4967 * x_4968) + x_4970);
            let x_4973 : vec4<f32> = u_xlat17;
            let x_4974 : vec2<f32> = vec2<f32>(x_4973.z, x_4973.w);
            let x_4976 : f32 = u_xlat11.z;
            txVec86 = vec3<f32>(x_4974.x, x_4974.y, x_4976);
            let x_4983 : vec3<f32> = txVec86;
            let x_4985 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4983.xy, x_4983.z);
            u_xlat87 = x_4985;
            let x_4987 : f32 = u_xlat13.y;
            let x_4988 : f32 = u_xlat87;
            let x_4990 : f32 = u_xlat85;
            u_xlat85 = ((x_4987 * x_4988) + x_4990);
            let x_4993 : vec2<f32> = u_xlat67;
            let x_4995 : f32 = u_xlat11.z;
            txVec87 = vec3<f32>(x_4993.x, x_4993.y, x_4995);
            let x_5002 : vec3<f32> = txVec87;
            let x_5004 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5002.xy, x_5002.z);
            u_xlat87 = x_5004;
            let x_5006 : f32 = u_xlat13.z;
            let x_5007 : f32 = u_xlat87;
            let x_5009 : f32 = u_xlat85;
            u_xlat85 = ((x_5006 * x_5007) + x_5009);
            let x_5012 : vec4<f32> = u_xlat12;
            let x_5013 : vec2<f32> = vec2<f32>(x_5012.x, x_5012.y);
            let x_5015 : f32 = u_xlat11.z;
            txVec88 = vec3<f32>(x_5013.x, x_5013.y, x_5015);
            let x_5022 : vec3<f32> = txVec88;
            let x_5024 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5022.xy, x_5022.z);
            u_xlat87 = x_5024;
            let x_5026 : f32 = u_xlat13.w;
            let x_5027 : f32 = u_xlat87;
            let x_5029 : f32 = u_xlat85;
            u_xlat84 = ((x_5026 * x_5027) + x_5029);
          }
        }
      } else {
        let x_5033 : vec4<f32> = u_xlat11;
        let x_5034 : vec2<f32> = vec2<f32>(x_5033.x, x_5033.y);
        let x_5036 : f32 = u_xlat11.z;
        txVec89 = vec3<f32>(x_5034.x, x_5034.y, x_5036);
        let x_5043 : vec3<f32> = txVec89;
        let x_5045 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5043.xy, x_5043.z);
        u_xlat84 = x_5045;
      }
      let x_5046 : i32 = u_xlati81;
      let x_5048 : f32 = x_355.x_AdditionalShadowParams[x_5046].x;
      u_xlat85 = (1.0f + -(x_5048));
      let x_5051 : f32 = u_xlat84;
      let x_5052 : i32 = u_xlati81;
      let x_5054 : f32 = x_355.x_AdditionalShadowParams[x_5052].x;
      let x_5056 : f32 = u_xlat85;
      u_xlat84 = ((x_5051 * x_5054) + x_5056);
      let x_5059 : f32 = u_xlat11.z;
      u_xlatb85 = (0.0f >= x_5059);
      let x_5063 : f32 = u_xlat11.z;
      u_xlatb87 = (x_5063 >= 1.0f);
      let x_5065 : bool = u_xlatb85;
      let x_5066 : bool = u_xlatb87;
      u_xlatb85 = (x_5065 | x_5066);
      let x_5068 : bool = u_xlatb85;
      let x_5069 : f32 = u_xlat84;
      u_xlat84 = select(x_5069, 1.0f, x_5068);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_5072 : f32 = u_xlat84;
    u_xlat85 = (-(x_5072) + 1.0f);
    let x_5076 : f32 = u_xlat2.x;
    let x_5077 : f32 = u_xlat85;
    let x_5079 : f32 = u_xlat84;
    u_xlat84 = ((x_5076 * x_5077) + x_5079);
    let x_5081 : f32 = u_xlat83;
    let x_5082 : f32 = u_xlat84;
    u_xlat83 = (x_5081 * x_5082);
    let x_5084 : vec3<f32> = u_xlat26;
    let x_5085 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(x_5084, vec3<f32>(x_5085.x, x_5085.y, x_5085.z));
    let x_5088 : f32 = u_xlat84;
    u_xlat84 = clamp(x_5088, 0.0f, 1.0f);
    let x_5090 : f32 = u_xlat83;
    let x_5091 : f32 = u_xlat84;
    u_xlat83 = (x_5090 * x_5091);
    let x_5093 : f32 = u_xlat83;
    let x_5095 : i32 = u_xlati81;
    let x_5097 : vec4<f32> = x_3658.x_AdditionalLightsColor[x_5095];
    let x_5099 : vec3<f32> = (vec3<f32>(x_5093, x_5093, x_5093) * vec3<f32>(x_5097.x, x_5097.y, x_5097.z));
    let x_5100 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_5099.x, x_5099.y, x_5099.z, x_5100.w);
    let x_5102 : vec4<f32> = u_xlat9;
    let x_5104 : vec2<f32> = u_xlat58;
    let x_5107 : vec3<f32> = u_xlat4;
    let x_5108 : vec3<f32> = ((vec3<f32>(x_5102.x, x_5102.y, x_5102.z) * vec3<f32>(x_5104.x, x_5104.x, x_5104.x)) + x_5107);
    let x_5109 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5108.x, x_5108.y, x_5108.z, x_5109.w);
    let x_5111 : vec4<f32> = u_xlat9;
    let x_5113 : vec4<f32> = u_xlat9;
    u_xlat81 = dot(vec3<f32>(x_5111.x, x_5111.y, x_5111.z), vec3<f32>(x_5113.x, x_5113.y, x_5113.z));
    let x_5116 : f32 = u_xlat81;
    u_xlat81 = max(x_5116, 1.17549435e-38f);
    let x_5118 : f32 = u_xlat81;
    u_xlat81 = inverseSqrt(x_5118);
    let x_5120 : f32 = u_xlat81;
    let x_5122 : vec4<f32> = u_xlat9;
    let x_5124 : vec3<f32> = (vec3<f32>(x_5120, x_5120, x_5120) * vec3<f32>(x_5122.x, x_5122.y, x_5122.z));
    let x_5125 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5124.x, x_5124.y, x_5124.z, x_5125.w);
    let x_5127 : vec3<f32> = u_xlat26;
    let x_5128 : vec4<f32> = u_xlat9;
    u_xlat81 = dot(x_5127, vec3<f32>(x_5128.x, x_5128.y, x_5128.z));
    let x_5131 : f32 = u_xlat81;
    u_xlat81 = clamp(x_5131, 0.0f, 1.0f);
    let x_5133 : vec4<f32> = u_xlat10;
    let x_5135 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_5133.x, x_5133.y, x_5133.z), vec3<f32>(x_5135.x, x_5135.y, x_5135.z));
    let x_5138 : f32 = u_xlat83;
    u_xlat83 = clamp(x_5138, 0.0f, 1.0f);
    let x_5140 : f32 = u_xlat81;
    let x_5141 : f32 = u_xlat81;
    u_xlat81 = (x_5140 * x_5141);
    let x_5143 : f32 = u_xlat81;
    let x_5145 : f32 = u_xlat8.x;
    u_xlat81 = ((x_5143 * x_5145) + 1.00001001358032226562f);
    let x_5148 : f32 = u_xlat83;
    let x_5149 : f32 = u_xlat83;
    u_xlat83 = (x_5148 * x_5149);
    let x_5151 : f32 = u_xlat81;
    let x_5152 : f32 = u_xlat81;
    u_xlat81 = (x_5151 * x_5152);
    let x_5154 : f32 = u_xlat83;
    u_xlat83 = max(x_5154, 0.10000000149011611938f);
    let x_5156 : f32 = u_xlat81;
    let x_5157 : f32 = u_xlat83;
    u_xlat81 = (x_5156 * x_5157);
    let x_5160 : f32 = u_xlat6.x;
    let x_5161 : f32 = u_xlat81;
    u_xlat81 = (x_5160 * x_5161);
    let x_5163 : f32 = u_xlat82;
    let x_5164 : f32 = u_xlat81;
    u_xlat81 = (x_5163 / x_5164);
    let x_5166 : f32 = u_xlat81;
    let x_5169 : vec3<f32> = u_xlat5;
    let x_5170 : vec3<f32> = ((vec3<f32>(x_5166, x_5166, x_5166) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_5169);
    let x_5171 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5170.x, x_5170.y, x_5170.z, x_5171.w);
    let x_5173 : vec4<f32> = u_xlat9;
    let x_5175 : vec4<f32> = u_xlat11;
    let x_5178 : vec3<f32> = u_xlat34;
    u_xlat34 = ((vec3<f32>(x_5173.x, x_5173.y, x_5173.z) * vec3<f32>(x_5175.x, x_5175.y, x_5175.z)) + x_5178);

    continuing {
      let x_5180 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_5180 + bitcast<u32>(1i));
    }
  }
  let x_5182 : vec4<f32> = u_xlat3;
  let x_5184 : f32 = u_xlat32;
  let x_5187 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_5182.x, x_5182.y, x_5182.z) * vec3<f32>(x_5184, x_5184, x_5184)) + vec3<f32>(x_5187.x, x_5187.y, x_5187.z));
  let x_5190 : vec3<f32> = u_xlat34;
  let x_5191 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_5190 + x_5191);
  let x_5193 : vec4<f32> = vs_INTERP6;
  let x_5195 : vec3<f32> = u_xlat1;
  let x_5197 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_5193.w, x_5193.w, x_5193.w) * x_5195) + x_5197);
  let x_5200 : f32 = u_xlat54;
  let x_5201 : f32 = u_xlat54;
  u_xlat78 = (x_5200 * -(x_5201));
  let x_5204 : f32 = u_xlat78;
  u_xlat78 = exp2(x_5204);
  let x_5206 : vec3<f32> = u_xlat0;
  let x_5208 : vec4<f32> = x_147.unity_FogColor;
  u_xlat0 = (x_5206 + -(vec3<f32>(x_5208.x, x_5208.y, x_5208.z)));
  let x_5214 : f32 = u_xlat78;
  let x_5216 : vec3<f32> = u_xlat0;
  let x_5219 : vec4<f32> = x_147.unity_FogColor;
  let x_5221 : vec3<f32> = ((vec3<f32>(x_5214, x_5214, x_5214) * x_5216) + vec3<f32>(x_5219.x, x_5219.y, x_5219.z));
  let x_5222 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_5221.x, x_5221.y, x_5221.z, x_5222.w);
  let x_5224 : bool = u_xlatb28;
  let x_5225 : f32 = u_xlat79;
  SV_Target0.w = select(1.0f, x_5225, x_5224);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(6) vs_INTERP9_param : vec3<f32>, @location(2) vs_INTERP4_param : vec4<f32>, @location(5) vs_INTERP8_param : vec3<f32>, @location(3) vs_INTERP5_param : vec4<f32>, @location(4) vs_INTERP6_param : vec4<f32>, @location(0) vs_INTERP0_param : vec2<f32>, @location(1) vs_INTERP3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP9 = vs_INTERP9_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP6 = vs_INTERP6_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


