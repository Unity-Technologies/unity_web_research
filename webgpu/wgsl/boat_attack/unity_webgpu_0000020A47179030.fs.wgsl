diagnostic(off, derivative_uniformity);

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

var<private> u_xlatb78 : bool;

@group(1) @binding(0) var<uniform> x_75 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> u_xlat79 : f32;

var<private> u_xlat2 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_132 : UnityPerDraw;

var<private> u_xlat78 : f32;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(10) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_188 : UnityPerMaterial;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat31 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_249 : LightShadows;

var<private> u_xlatb79 : bool;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb80 : bool;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat82 : f32;

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

var<private> u_xlatb82 : bool;

var<private> u_xlatb6 : bool;

var<private> u_xlatb3 : bool;

var<private> u_xlatu2 : vec3<u32>;

var<private> u_xlatu54 : u32;

var<private> u_xlatu29 : u32;

var<private> u_xlati54 : i32;

var<private> u_xlati28 : i32;

var<private> u_xlatu28 : u32;

var<private> u_xlati2 : i32;

var<private> u_xlat28 : vec2<f32>;

var<private> u_xlatb28 : vec2<bool>;

var<private> u_xlat54 : f32;

var<private> u_xlatb2 : bool;

var<private> vs_INTERP4 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat81 : f32;

var<private> u_xlat32 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlatb58 : bool;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat65 : vec2<f32>;

var<private> u_xlat86 : f32;

var<private> u_xlat33 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu78 : u32;

var<private> u_xlatu81 : u32;

var<private> u_xlati83 : i32;

var<private> u_xlati81 : i32;

@group(1) @binding(1) var<uniform> x_3602 : AdditionalLights;

var<private> u_xlat83 : f32;

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

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat40 : vec2<f32>;

var<private> u_xlat72 : vec2<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlatb87 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu80 : u32;

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
  var x_120 : vec3<f32>;
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
  var x_1561 : f32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var x_1696 : f32;
  var x_1727 : f32;
  var x_1774 : f32;
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
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_3742 : f32;
  var x_3752 : f32;
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
  let x_63 : vec3<f32> = u_xlat0;
  let x_65 : vec3<f32> = vs_INTERP9;
  u_xlat0 = (vec3<f32>(x_63.x, x_63.x, x_63.x) * x_65);
  let x_80 : f32 = x_75.unity_OrthoParams.w;
  u_xlatb78 = (x_80 == 0.0f);
  let x_85 : vec3<f32> = vs_INTERP8;
  let x_90 : vec3<f32> = x_75.x_WorldSpaceCameraPos;
  u_xlat1 = (-(x_85) + x_90);
  let x_93 : vec3<f32> = u_xlat1;
  let x_94 : vec3<f32> = u_xlat1;
  u_xlat79 = dot(x_93, x_94);
  let x_96 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_96);
  let x_98 : f32 = u_xlat79;
  let x_100 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_98, x_98, x_98) * x_100);
  let x_107 : f32 = x_75.unity_MatrixV[0i].z;
  u_xlat2.x = x_107;
  let x_111 : f32 = x_75.unity_MatrixV[1i].z;
  u_xlat2.y = x_111;
  let x_116 : f32 = x_75.unity_MatrixV[2i].z;
  u_xlat2.z = x_116;
  let x_118 : bool = u_xlatb78;
  if (x_118) {
    let x_123 : vec3<f32> = u_xlat1;
    x_120 = x_123;
  } else {
    let x_125 : vec3<f32> = u_xlat2;
    x_120 = x_125;
  }
  let x_126 : vec3<f32> = x_120;
  u_xlat1 = x_126;
  let x_127 : vec3<f32> = u_xlat1;
  let x_135 : vec4<f32> = x_132.unity_WorldToObject[1i];
  u_xlat2 = (vec3<f32>(x_127.y, x_127.y, x_127.y) * vec3<f32>(x_135.x, x_135.y, x_135.z));
  let x_139 : vec4<f32> = x_132.unity_WorldToObject[0i];
  let x_141 : vec3<f32> = u_xlat1;
  let x_144 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_139.x, x_139.y, x_139.z) * vec3<f32>(x_141.x, x_141.x, x_141.x)) + x_144);
  let x_147 : vec4<f32> = x_132.unity_WorldToObject[2i];
  let x_149 : vec3<f32> = u_xlat1;
  let x_152 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_147.x, x_147.y, x_147.z) * vec3<f32>(x_149.z, x_149.z, x_149.z)) + x_152);
  let x_155 : vec3<f32> = u_xlat2;
  let x_156 : vec3<f32> = u_xlat2;
  u_xlat78 = dot(x_155, x_156);
  let x_158 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_158);
  let x_160 : f32 = u_xlat78;
  let x_162 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_160, x_160, x_160) * x_162);
  let x_178 : vec4<f32> = vs_INTERP5;
  let x_181 : f32 = x_75.x_GlobalMipBias.x;
  let x_182 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_178.x, x_178.y), x_181);
  u_xlat3 = x_182;
  let x_184 : vec4<f32> = u_xlat3;
  let x_190 : vec4<f32> = x_188.Color_C30C7CA3;
  u_xlat4 = (vec3<f32>(x_184.x, x_184.y, x_184.z) * vec3<f32>(x_190.x, x_190.y, x_190.z));
  let x_199 : vec4<f32> = vs_INTERP5;
  let x_202 : f32 = x_75.x_GlobalMipBias.x;
  let x_203 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_199.x, x_199.y), x_202);
  u_xlat5 = vec4<f32>(x_203.w, x_203.x, x_203.y, x_203.z);
  let x_206 : vec4<f32> = u_xlat5;
  u_xlat6 = ((vec4<f32>(x_206.y, x_206.z, x_206.w, x_206.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_214 : vec4<f32> = u_xlat6;
  let x_215 : vec4<f32> = u_xlat6;
  u_xlat78 = dot(x_214, x_215);
  let x_217 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_217);
  let x_220 : f32 = u_xlat78;
  let x_222 : vec4<f32> = u_xlat6;
  u_xlat31 = (vec3<f32>(x_220, x_220, x_220) * vec3<f32>(x_222.x, x_222.y, x_222.z));
  let x_228 : f32 = vs_INTERP6.y;
  u_xlat78 = (x_228 * 200.0f);
  let x_231 : f32 = u_xlat78;
  u_xlat78 = min(x_231, 1.0f);
  let x_233 : f32 = u_xlat78;
  let x_235 : vec4<f32> = u_xlat3;
  let x_237 : vec3<f32> = (vec3<f32>(x_233, x_233, x_233) * vec3<f32>(x_235.x, x_235.y, x_235.z));
  let x_238 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_237.x, x_237.y, x_237.z, x_238.w);
  let x_240 : vec3<f32> = vs_INTERP8;
  let x_251 : vec4<f32> = x_249.x_MainLightWorldToShadow[0i][1i];
  let x_253 : vec3<f32> = (vec3<f32>(x_240.y, x_240.y, x_240.y) * vec3<f32>(x_251.x, x_251.y, x_251.z));
  let x_254 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_253.x, x_253.y, x_253.z, x_254.w);
  let x_257 : vec4<f32> = x_249.x_MainLightWorldToShadow[0i][0i];
  let x_259 : vec3<f32> = vs_INTERP8;
  let x_262 : vec4<f32> = u_xlat6;
  let x_264 : vec3<f32> = ((vec3<f32>(x_257.x, x_257.y, x_257.z) * vec3<f32>(x_259.x, x_259.x, x_259.x)) + vec3<f32>(x_262.x, x_262.y, x_262.z));
  let x_265 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_264.x, x_264.y, x_264.z, x_265.w);
  let x_268 : vec4<f32> = x_249.x_MainLightWorldToShadow[0i][2i];
  let x_270 : vec3<f32> = vs_INTERP8;
  let x_273 : vec4<f32> = u_xlat6;
  let x_275 : vec3<f32> = ((vec3<f32>(x_268.x, x_268.y, x_268.z) * vec3<f32>(x_270.z, x_270.z, x_270.z)) + vec3<f32>(x_273.x, x_273.y, x_273.z));
  let x_276 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
  let x_278 : vec4<f32> = u_xlat6;
  let x_282 : vec4<f32> = x_249.x_MainLightWorldToShadow[0i][3i];
  let x_284 : vec3<f32> = (vec3<f32>(x_278.x, x_278.y, x_278.z) + vec3<f32>(x_282.x, x_282.y, x_282.z));
  let x_285 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_284.x, x_284.y, x_284.z, x_285.w);
  let x_288 : f32 = x_249.x_MainLightShadowParams.y;
  u_xlatb78 = (0.0f < x_288);
  let x_290 : bool = u_xlatb78;
  if (x_290) {
    let x_295 : f32 = x_249.x_MainLightShadowParams.y;
    u_xlatb79 = (x_295 == 1.0f);
    let x_297 : bool = u_xlatb79;
    if (x_297) {
      let x_301 : vec4<f32> = u_xlat6;
      let x_305 : vec4<f32> = x_249.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_301.x, x_301.y, x_301.x, x_301.y) + x_305);
      let x_308 : vec4<f32> = u_xlat7;
      let x_309 : vec2<f32> = vec2<f32>(x_308.x, x_308.y);
      let x_311 : f32 = u_xlat6.z;
      txVec0 = vec3<f32>(x_309.x, x_309.y, x_311);
      let x_324 : vec3<f32> = txVec0;
      let x_326 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_324.xy, x_324.z);
      u_xlat8.x = x_326;
      let x_329 : vec4<f32> = u_xlat7;
      let x_330 : vec2<f32> = vec2<f32>(x_329.z, x_329.w);
      let x_332 : f32 = u_xlat6.z;
      txVec1 = vec3<f32>(x_330.x, x_330.y, x_332);
      let x_339 : vec3<f32> = txVec1;
      let x_341 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_339.xy, x_339.z);
      u_xlat8.y = x_341;
      let x_343 : vec4<f32> = u_xlat6;
      let x_347 : vec4<f32> = x_249.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_343.x, x_343.y, x_343.x, x_343.y) + x_347);
      let x_350 : vec4<f32> = u_xlat7;
      let x_351 : vec2<f32> = vec2<f32>(x_350.x, x_350.y);
      let x_353 : f32 = u_xlat6.z;
      txVec2 = vec3<f32>(x_351.x, x_351.y, x_353);
      let x_360 : vec3<f32> = txVec2;
      let x_362 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_360.xy, x_360.z);
      u_xlat8.z = x_362;
      let x_365 : vec4<f32> = u_xlat7;
      let x_366 : vec2<f32> = vec2<f32>(x_365.z, x_365.w);
      let x_368 : f32 = u_xlat6.z;
      txVec3 = vec3<f32>(x_366.x, x_366.y, x_368);
      let x_375 : vec3<f32> = txVec3;
      let x_377 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_375.xy, x_375.z);
      u_xlat8.w = x_377;
      let x_379 : vec4<f32> = u_xlat8;
      u_xlat79 = dot(x_379, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_386 : f32 = x_249.x_MainLightShadowParams.y;
      u_xlatb80 = (x_386 == 2.0f);
      let x_388 : bool = u_xlatb80;
      if (x_388) {
        let x_391 : vec4<f32> = u_xlat6;
        let x_395 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_400 : vec2<f32> = ((vec2<f32>(x_391.x, x_391.y) * vec2<f32>(x_395.z, x_395.w)) + vec2<f32>(0.5f, 0.5f));
        let x_401 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_400.x, x_400.y, x_401.z, x_401.w);
        let x_403 : vec4<f32> = u_xlat7;
        let x_405 : vec2<f32> = floor(vec2<f32>(x_403.x, x_403.y));
        let x_406 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_405.x, x_405.y, x_406.z, x_406.w);
        let x_410 : vec4<f32> = u_xlat6;
        let x_413 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_416 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_410.x, x_410.y) * vec2<f32>(x_413.z, x_413.w)) + -(vec2<f32>(x_416.x, x_416.y)));
        let x_420 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_420.x, x_420.x, x_420.y, x_420.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_425 : vec4<f32> = u_xlat8;
        let x_427 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_425.x, x_425.x, x_425.z, x_425.z) * vec4<f32>(x_427.x, x_427.x, x_427.z, x_427.z));
        let x_430 : vec4<f32> = u_xlat9;
        let x_434 : vec2<f32> = (vec2<f32>(x_430.y, x_430.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_435 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_434.x, x_435.y, x_434.y, x_435.w);
        let x_437 : vec4<f32> = u_xlat9;
        let x_440 : vec2<f32> = u_xlat59;
        let x_442 : vec2<f32> = ((vec2<f32>(x_437.x, x_437.z) * vec2<f32>(0.5f, 0.5f)) + -(x_440));
        let x_443 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_442.x, x_442.y, x_443.z, x_443.w);
        let x_446 : vec2<f32> = u_xlat59;
        u_xlat61 = (-(x_446) + vec2<f32>(1.0f, 1.0f));
        let x_451 : vec2<f32> = u_xlat59;
        let x_453 : vec2<f32> = min(x_451, vec2<f32>(0.0f, 0.0f));
        let x_454 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_453.x, x_453.y, x_454.z, x_454.w);
        let x_456 : vec4<f32> = u_xlat10;
        let x_459 : vec4<f32> = u_xlat10;
        let x_462 : vec2<f32> = u_xlat61;
        let x_463 : vec2<f32> = ((-(vec2<f32>(x_456.x, x_456.y)) * vec2<f32>(x_459.x, x_459.y)) + x_462);
        let x_464 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_463.x, x_463.y, x_464.z, x_464.w);
        let x_466 : vec2<f32> = u_xlat59;
        u_xlat59 = max(x_466, vec2<f32>(0.0f, 0.0f));
        let x_468 : vec2<f32> = u_xlat59;
        let x_470 : vec2<f32> = u_xlat59;
        let x_472 : vec4<f32> = u_xlat8;
        u_xlat59 = ((-(x_468) * x_470) + vec2<f32>(x_472.y, x_472.w));
        let x_475 : vec4<f32> = u_xlat10;
        let x_477 : vec2<f32> = (vec2<f32>(x_475.x, x_475.y) + vec2<f32>(1.0f, 1.0f));
        let x_478 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_477.x, x_477.y, x_478.z, x_478.w);
        let x_480 : vec2<f32> = u_xlat59;
        u_xlat59 = (x_480 + vec2<f32>(1.0f, 1.0f));
        let x_483 : vec4<f32> = u_xlat9;
        let x_487 : vec2<f32> = (vec2<f32>(x_483.x, x_483.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_488 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_487.x, x_487.y, x_488.z, x_488.w);
        let x_490 : vec2<f32> = u_xlat61;
        let x_491 : vec2<f32> = (x_490 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_492 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_491.x, x_491.y, x_492.z, x_492.w);
        let x_494 : vec4<f32> = u_xlat10;
        let x_496 : vec2<f32> = (vec2<f32>(x_494.x, x_494.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_497 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_496.x, x_496.y, x_497.z, x_497.w);
        let x_500 : vec2<f32> = u_xlat59;
        let x_501 : vec2<f32> = (x_500 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_502 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_501.x, x_501.y, x_502.z, x_502.w);
        let x_504 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_504.y, x_504.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_508 : f32 = u_xlat10.x;
        u_xlat11.z = x_508;
        let x_511 : f32 = u_xlat59.x;
        u_xlat11.w = x_511;
        let x_514 : f32 = u_xlat12.x;
        u_xlat9.z = x_514;
        let x_517 : f32 = u_xlat8.x;
        u_xlat9.w = x_517;
        let x_520 : vec4<f32> = u_xlat9;
        let x_522 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_520.z, x_520.w, x_520.x, x_520.z) + vec4<f32>(x_522.z, x_522.w, x_522.x, x_522.z));
        let x_526 : f32 = u_xlat11.y;
        u_xlat10.z = x_526;
        let x_529 : f32 = u_xlat59.y;
        u_xlat10.w = x_529;
        let x_532 : f32 = u_xlat9.y;
        u_xlat12.z = x_532;
        let x_535 : f32 = u_xlat8.z;
        u_xlat12.w = x_535;
        let x_537 : vec4<f32> = u_xlat10;
        let x_539 : vec4<f32> = u_xlat12;
        let x_541 : vec3<f32> = (vec3<f32>(x_537.z, x_537.y, x_537.w) + vec3<f32>(x_539.z, x_539.y, x_539.w));
        let x_542 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_541.x, x_541.y, x_541.z, x_542.w);
        let x_544 : vec4<f32> = u_xlat9;
        let x_546 : vec4<f32> = u_xlat13;
        let x_548 : vec3<f32> = (vec3<f32>(x_544.x, x_544.z, x_544.w) / vec3<f32>(x_546.z, x_546.w, x_546.y));
        let x_549 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
        let x_551 : vec4<f32> = u_xlat9;
        let x_557 : vec3<f32> = (vec3<f32>(x_551.x, x_551.y, x_551.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_558 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_557.x, x_557.y, x_557.z, x_558.w);
        let x_560 : vec4<f32> = u_xlat12;
        let x_562 : vec4<f32> = u_xlat8;
        let x_564 : vec3<f32> = (vec3<f32>(x_560.z, x_560.y, x_560.w) / vec3<f32>(x_562.x, x_562.y, x_562.z));
        let x_565 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_564.x, x_564.y, x_564.z, x_565.w);
        let x_567 : vec4<f32> = u_xlat10;
        let x_569 : vec3<f32> = (vec3<f32>(x_567.x, x_567.y, x_567.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_570 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_569.x, x_569.y, x_569.z, x_570.w);
        let x_572 : vec4<f32> = u_xlat9;
        let x_575 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_577 : vec3<f32> = (vec3<f32>(x_572.y, x_572.x, x_572.z) * vec3<f32>(x_575.x, x_575.x, x_575.x));
        let x_578 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_577.x, x_577.y, x_577.z, x_578.w);
        let x_580 : vec4<f32> = u_xlat10;
        let x_583 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_585 : vec3<f32> = (vec3<f32>(x_580.x, x_580.y, x_580.z) * vec3<f32>(x_583.y, x_583.y, x_583.y));
        let x_586 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_585.x, x_585.y, x_585.z, x_586.w);
        let x_589 : f32 = u_xlat10.x;
        u_xlat9.w = x_589;
        let x_591 : vec4<f32> = u_xlat7;
        let x_594 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_597 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_591.x, x_591.y, x_591.x, x_591.y) * vec4<f32>(x_594.x, x_594.y, x_594.x, x_594.y)) + vec4<f32>(x_597.y, x_597.w, x_597.x, x_597.w));
        let x_600 : vec4<f32> = u_xlat7;
        let x_603 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_606 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_600.x, x_600.y) * vec2<f32>(x_603.x, x_603.y)) + vec2<f32>(x_606.z, x_606.w));
        let x_610 : f32 = u_xlat9.y;
        u_xlat10.w = x_610;
        let x_612 : vec4<f32> = u_xlat10;
        let x_613 : vec2<f32> = vec2<f32>(x_612.y, x_612.z);
        let x_614 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_614.x, x_613.x, x_614.z, x_613.y);
        let x_616 : vec4<f32> = u_xlat7;
        let x_619 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_622 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_616.x, x_616.y, x_616.x, x_616.y) * vec4<f32>(x_619.x, x_619.y, x_619.x, x_619.y)) + vec4<f32>(x_622.x, x_622.y, x_622.z, x_622.y));
        let x_625 : vec4<f32> = u_xlat7;
        let x_628 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_631 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_625.x, x_625.y, x_625.x, x_625.y) * vec4<f32>(x_628.x, x_628.y, x_628.x, x_628.y)) + vec4<f32>(x_631.w, x_631.y, x_631.w, x_631.z));
        let x_634 : vec4<f32> = u_xlat7;
        let x_637 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_640 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_634.x, x_634.y, x_634.x, x_634.y) * vec4<f32>(x_637.x, x_637.y, x_637.x, x_637.y)) + vec4<f32>(x_640.x, x_640.w, x_640.z, x_640.w));
        let x_644 : vec4<f32> = u_xlat8;
        let x_646 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_644.x, x_644.x, x_644.x, x_644.y) * vec4<f32>(x_646.z, x_646.w, x_646.y, x_646.z));
        let x_650 : vec4<f32> = u_xlat8;
        let x_652 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_650.y, x_650.y, x_650.z, x_650.z) * x_652);
        let x_656 : f32 = u_xlat8.z;
        let x_658 : f32 = u_xlat13.y;
        u_xlat80 = (x_656 * x_658);
        let x_661 : vec4<f32> = u_xlat11;
        let x_662 : vec2<f32> = vec2<f32>(x_661.x, x_661.y);
        let x_664 : f32 = u_xlat6.z;
        txVec4 = vec3<f32>(x_662.x, x_662.y, x_664);
        let x_672 : vec3<f32> = txVec4;
        let x_674 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_672.xy, x_672.z);
        u_xlat82 = x_674;
        let x_676 : vec4<f32> = u_xlat11;
        let x_677 : vec2<f32> = vec2<f32>(x_676.z, x_676.w);
        let x_679 : f32 = u_xlat6.z;
        txVec5 = vec3<f32>(x_677.x, x_677.y, x_679);
        let x_687 : vec3<f32> = txVec5;
        let x_689 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_687.xy, x_687.z);
        u_xlat84 = x_689;
        let x_690 : f32 = u_xlat84;
        let x_692 : f32 = u_xlat14.y;
        u_xlat84 = (x_690 * x_692);
        let x_695 : f32 = u_xlat14.x;
        let x_696 : f32 = u_xlat82;
        let x_698 : f32 = u_xlat84;
        u_xlat82 = ((x_695 * x_696) + x_698);
        let x_701 : vec2<f32> = u_xlat59;
        let x_703 : f32 = u_xlat6.z;
        txVec6 = vec3<f32>(x_701.x, x_701.y, x_703);
        let x_710 : vec3<f32> = txVec6;
        let x_712 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_710.xy, x_710.z);
        u_xlat84 = x_712;
        let x_714 : f32 = u_xlat14.z;
        let x_715 : f32 = u_xlat84;
        let x_717 : f32 = u_xlat82;
        u_xlat82 = ((x_714 * x_715) + x_717);
        let x_720 : vec4<f32> = u_xlat10;
        let x_721 : vec2<f32> = vec2<f32>(x_720.x, x_720.y);
        let x_723 : f32 = u_xlat6.z;
        txVec7 = vec3<f32>(x_721.x, x_721.y, x_723);
        let x_730 : vec3<f32> = txVec7;
        let x_732 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_730.xy, x_730.z);
        u_xlat84 = x_732;
        let x_734 : f32 = u_xlat14.w;
        let x_735 : f32 = u_xlat84;
        let x_737 : f32 = u_xlat82;
        u_xlat82 = ((x_734 * x_735) + x_737);
        let x_740 : vec4<f32> = u_xlat12;
        let x_741 : vec2<f32> = vec2<f32>(x_740.x, x_740.y);
        let x_743 : f32 = u_xlat6.z;
        txVec8 = vec3<f32>(x_741.x, x_741.y, x_743);
        let x_750 : vec3<f32> = txVec8;
        let x_752 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_750.xy, x_750.z);
        u_xlat84 = x_752;
        let x_754 : f32 = u_xlat15.x;
        let x_755 : f32 = u_xlat84;
        let x_757 : f32 = u_xlat82;
        u_xlat82 = ((x_754 * x_755) + x_757);
        let x_760 : vec4<f32> = u_xlat12;
        let x_761 : vec2<f32> = vec2<f32>(x_760.z, x_760.w);
        let x_763 : f32 = u_xlat6.z;
        txVec9 = vec3<f32>(x_761.x, x_761.y, x_763);
        let x_770 : vec3<f32> = txVec9;
        let x_772 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_770.xy, x_770.z);
        u_xlat84 = x_772;
        let x_774 : f32 = u_xlat15.y;
        let x_775 : f32 = u_xlat84;
        let x_777 : f32 = u_xlat82;
        u_xlat82 = ((x_774 * x_775) + x_777);
        let x_780 : vec4<f32> = u_xlat10;
        let x_781 : vec2<f32> = vec2<f32>(x_780.z, x_780.w);
        let x_783 : f32 = u_xlat6.z;
        txVec10 = vec3<f32>(x_781.x, x_781.y, x_783);
        let x_790 : vec3<f32> = txVec10;
        let x_792 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_790.xy, x_790.z);
        u_xlat84 = x_792;
        let x_794 : f32 = u_xlat15.z;
        let x_795 : f32 = u_xlat84;
        let x_797 : f32 = u_xlat82;
        u_xlat82 = ((x_794 * x_795) + x_797);
        let x_800 : vec4<f32> = u_xlat9;
        let x_801 : vec2<f32> = vec2<f32>(x_800.x, x_800.y);
        let x_803 : f32 = u_xlat6.z;
        txVec11 = vec3<f32>(x_801.x, x_801.y, x_803);
        let x_810 : vec3<f32> = txVec11;
        let x_812 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_810.xy, x_810.z);
        u_xlat84 = x_812;
        let x_814 : f32 = u_xlat15.w;
        let x_815 : f32 = u_xlat84;
        let x_817 : f32 = u_xlat82;
        u_xlat82 = ((x_814 * x_815) + x_817);
        let x_820 : vec4<f32> = u_xlat9;
        let x_821 : vec2<f32> = vec2<f32>(x_820.z, x_820.w);
        let x_823 : f32 = u_xlat6.z;
        txVec12 = vec3<f32>(x_821.x, x_821.y, x_823);
        let x_830 : vec3<f32> = txVec12;
        let x_832 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_830.xy, x_830.z);
        u_xlat84 = x_832;
        let x_833 : f32 = u_xlat80;
        let x_834 : f32 = u_xlat84;
        let x_836 : f32 = u_xlat82;
        u_xlat79 = ((x_833 * x_834) + x_836);
      } else {
        let x_839 : vec4<f32> = u_xlat6;
        let x_842 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_845 : vec2<f32> = ((vec2<f32>(x_839.x, x_839.y) * vec2<f32>(x_842.z, x_842.w)) + vec2<f32>(0.5f, 0.5f));
        let x_846 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_845.x, x_845.y, x_846.z, x_846.w);
        let x_848 : vec4<f32> = u_xlat7;
        let x_850 : vec2<f32> = floor(vec2<f32>(x_848.x, x_848.y));
        let x_851 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_850.x, x_850.y, x_851.z, x_851.w);
        let x_853 : vec4<f32> = u_xlat6;
        let x_856 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_859 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_853.x, x_853.y) * vec2<f32>(x_856.z, x_856.w)) + -(vec2<f32>(x_859.x, x_859.y)));
        let x_863 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_863.x, x_863.x, x_863.y, x_863.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_866 : vec4<f32> = u_xlat8;
        let x_868 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_866.x, x_866.x, x_866.z, x_866.z) * vec4<f32>(x_868.x, x_868.x, x_868.z, x_868.z));
        let x_871 : vec4<f32> = u_xlat9;
        let x_875 : vec2<f32> = (vec2<f32>(x_871.y, x_871.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_876 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_876.x, x_875.x, x_876.z, x_875.y);
        let x_878 : vec4<f32> = u_xlat9;
        let x_881 : vec2<f32> = u_xlat59;
        let x_883 : vec2<f32> = ((vec2<f32>(x_878.x, x_878.z) * vec2<f32>(0.5f, 0.5f)) + -(x_881));
        let x_884 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_883.x, x_884.y, x_883.y, x_884.w);
        let x_886 : vec2<f32> = u_xlat59;
        let x_888 : vec2<f32> = (-(x_886) + vec2<f32>(1.0f, 1.0f));
        let x_889 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_888.x, x_888.y, x_889.z, x_889.w);
        let x_891 : vec2<f32> = u_xlat59;
        u_xlat61 = min(x_891, vec2<f32>(0.0f, 0.0f));
        let x_893 : vec2<f32> = u_xlat61;
        let x_895 : vec2<f32> = u_xlat61;
        let x_897 : vec4<f32> = u_xlat9;
        let x_899 : vec2<f32> = ((-(x_893) * x_895) + vec2<f32>(x_897.x, x_897.y));
        let x_900 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_899.x, x_899.y, x_900.z, x_900.w);
        let x_902 : vec2<f32> = u_xlat59;
        u_xlat61 = max(x_902, vec2<f32>(0.0f, 0.0f));
        let x_905 : vec2<f32> = u_xlat61;
        let x_907 : vec2<f32> = u_xlat61;
        let x_909 : vec4<f32> = u_xlat8;
        let x_911 : vec2<f32> = ((-(x_905) * x_907) + vec2<f32>(x_909.y, x_909.w));
        let x_912 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_911.x, x_912.y, x_911.y);
        let x_914 : vec4<f32> = u_xlat9;
        let x_917 : vec2<f32> = (vec2<f32>(x_914.x, x_914.y) + vec2<f32>(2.0f, 2.0f));
        let x_918 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_917.x, x_917.y, x_918.z, x_918.w);
        let x_920 : vec3<f32> = u_xlat34;
        let x_922 : vec2<f32> = (vec2<f32>(x_920.x, x_920.z) + vec2<f32>(2.0f, 2.0f));
        let x_923 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_923.x, x_922.x, x_923.z, x_922.y);
        let x_926 : f32 = u_xlat8.y;
        u_xlat11.z = (x_926 * 0.08163200318813323975f);
        let x_930 : vec4<f32> = u_xlat8;
        let x_933 : vec3<f32> = (vec3<f32>(x_930.z, x_930.x, x_930.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_934 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_933.x, x_933.y, x_933.z, x_934.w);
        let x_936 : vec4<f32> = u_xlat9;
        let x_939 : vec2<f32> = (vec2<f32>(x_936.x, x_936.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_940 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_939.x, x_939.y, x_940.z, x_940.w);
        let x_943 : f32 = u_xlat12.y;
        u_xlat11.x = x_943;
        let x_945 : vec2<f32> = u_xlat59;
        let x_952 : vec2<f32> = ((vec2<f32>(x_945.x, x_945.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_953 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_953.x, x_952.x, x_953.z, x_952.y);
        let x_955 : vec2<f32> = u_xlat59;
        let x_959 : vec2<f32> = ((vec2<f32>(x_955.x, x_955.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_960 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_959.x, x_960.y, x_959.y, x_960.w);
        let x_963 : f32 = u_xlat8.x;
        u_xlat9.y = x_963;
        let x_966 : f32 = u_xlat10.y;
        u_xlat9.w = x_966;
        let x_968 : vec4<f32> = u_xlat9;
        let x_969 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_968 + x_969);
        let x_971 : vec2<f32> = u_xlat59;
        let x_974 : vec2<f32> = ((vec2<f32>(x_971.y, x_971.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_975 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_975.x, x_974.x, x_975.z, x_974.y);
        let x_977 : vec2<f32> = u_xlat59;
        let x_980 : vec2<f32> = ((vec2<f32>(x_977.y, x_977.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_981 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_980.x, x_981.y, x_980.y, x_981.w);
        let x_984 : f32 = u_xlat8.y;
        u_xlat10.y = x_984;
        let x_986 : vec4<f32> = u_xlat10;
        let x_987 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_986 + x_987);
        let x_989 : vec4<f32> = u_xlat9;
        let x_990 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_989 / x_990);
        let x_992 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_992 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_998 : vec4<f32> = u_xlat10;
        let x_999 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_998 / x_999);
        let x_1001 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1001 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1003 : vec4<f32> = u_xlat9;
        let x_1006 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1003.w, x_1003.x, x_1003.y, x_1003.z) * vec4<f32>(x_1006.x, x_1006.x, x_1006.x, x_1006.x));
        let x_1009 : vec4<f32> = u_xlat10;
        let x_1012 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1009.x, x_1009.w, x_1009.y, x_1009.z) * vec4<f32>(x_1012.y, x_1012.y, x_1012.y, x_1012.y));
        let x_1015 : vec4<f32> = u_xlat9;
        let x_1016 : vec3<f32> = vec3<f32>(x_1015.y, x_1015.z, x_1015.w);
        let x_1017 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1016.x, x_1017.y, x_1016.y, x_1016.z);
        let x_1020 : f32 = u_xlat10.x;
        u_xlat12.y = x_1020;
        let x_1022 : vec4<f32> = u_xlat7;
        let x_1025 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1028 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1022.x, x_1022.y, x_1022.x, x_1022.y) * vec4<f32>(x_1025.x, x_1025.y, x_1025.x, x_1025.y)) + vec4<f32>(x_1028.x, x_1028.y, x_1028.z, x_1028.y));
        let x_1031 : vec4<f32> = u_xlat7;
        let x_1034 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1037 : vec4<f32> = u_xlat12;
        u_xlat59 = ((vec2<f32>(x_1031.x, x_1031.y) * vec2<f32>(x_1034.x, x_1034.y)) + vec2<f32>(x_1037.w, x_1037.y));
        let x_1041 : f32 = u_xlat12.y;
        u_xlat9.y = x_1041;
        let x_1044 : f32 = u_xlat10.z;
        u_xlat12.y = x_1044;
        let x_1046 : vec4<f32> = u_xlat7;
        let x_1049 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1052 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1046.x, x_1046.y, x_1046.x, x_1046.y) * vec4<f32>(x_1049.x, x_1049.y, x_1049.x, x_1049.y)) + vec4<f32>(x_1052.x, x_1052.y, x_1052.z, x_1052.y));
        let x_1055 : vec4<f32> = u_xlat7;
        let x_1058 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1061 : vec4<f32> = u_xlat12;
        let x_1063 : vec2<f32> = ((vec2<f32>(x_1055.x, x_1055.y) * vec2<f32>(x_1058.x, x_1058.y)) + vec2<f32>(x_1061.w, x_1061.y));
        let x_1064 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1063.x, x_1063.y, x_1064.z, x_1064.w);
        let x_1067 : f32 = u_xlat12.y;
        u_xlat9.z = x_1067;
        let x_1070 : vec4<f32> = u_xlat7;
        let x_1073 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1076 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1070.x, x_1070.y, x_1070.x, x_1070.y) * vec4<f32>(x_1073.x, x_1073.y, x_1073.x, x_1073.y)) + vec4<f32>(x_1076.x, x_1076.y, x_1076.x, x_1076.z));
        let x_1080 : f32 = u_xlat10.w;
        u_xlat12.y = x_1080;
        let x_1083 : vec4<f32> = u_xlat7;
        let x_1086 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1089 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1083.x, x_1083.y, x_1083.x, x_1083.y) * vec4<f32>(x_1086.x, x_1086.y, x_1086.x, x_1086.y)) + vec4<f32>(x_1089.x, x_1089.y, x_1089.z, x_1089.y));
        let x_1093 : vec4<f32> = u_xlat7;
        let x_1096 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1099 : vec4<f32> = u_xlat12;
        u_xlat35 = ((vec2<f32>(x_1093.x, x_1093.y) * vec2<f32>(x_1096.x, x_1096.y)) + vec2<f32>(x_1099.w, x_1099.y));
        let x_1103 : f32 = u_xlat12.y;
        u_xlat9.w = x_1103;
        let x_1106 : vec4<f32> = u_xlat7;
        let x_1109 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1112 : vec4<f32> = u_xlat9;
        u_xlat67 = ((vec2<f32>(x_1106.x, x_1106.y) * vec2<f32>(x_1109.x, x_1109.y)) + vec2<f32>(x_1112.x, x_1112.w));
        let x_1115 : vec4<f32> = u_xlat12;
        let x_1116 : vec3<f32> = vec3<f32>(x_1115.x, x_1115.z, x_1115.w);
        let x_1117 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1116.x, x_1117.y, x_1116.y, x_1116.z);
        let x_1119 : vec4<f32> = u_xlat7;
        let x_1122 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1125 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1119.x, x_1119.y, x_1119.x, x_1119.y) * vec4<f32>(x_1122.x, x_1122.y, x_1122.x, x_1122.y)) + vec4<f32>(x_1125.x, x_1125.y, x_1125.z, x_1125.y));
        let x_1129 : vec4<f32> = u_xlat7;
        let x_1132 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1135 : vec4<f32> = u_xlat10;
        u_xlat62 = ((vec2<f32>(x_1129.x, x_1129.y) * vec2<f32>(x_1132.x, x_1132.y)) + vec2<f32>(x_1135.w, x_1135.y));
        let x_1139 : f32 = u_xlat9.x;
        u_xlat10.x = x_1139;
        let x_1141 : vec4<f32> = u_xlat7;
        let x_1144 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1147 : vec4<f32> = u_xlat10;
        let x_1149 : vec2<f32> = ((vec2<f32>(x_1141.x, x_1141.y) * vec2<f32>(x_1144.x, x_1144.y)) + vec2<f32>(x_1147.x, x_1147.y));
        let x_1150 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1149.x, x_1149.y, x_1150.z, x_1150.w);
        let x_1153 : vec4<f32> = u_xlat8;
        let x_1155 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1153.x, x_1153.x, x_1153.x, x_1153.x) * x_1155);
        let x_1158 : vec4<f32> = u_xlat8;
        let x_1160 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1158.y, x_1158.y, x_1158.y, x_1158.y) * x_1160);
        let x_1163 : vec4<f32> = u_xlat8;
        let x_1165 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1163.z, x_1163.z, x_1163.z, x_1163.z) * x_1165);
        let x_1167 : vec4<f32> = u_xlat8;
        let x_1169 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1167.w, x_1167.w, x_1167.w, x_1167.w) * x_1169);
        let x_1172 : vec4<f32> = u_xlat13;
        let x_1173 : vec2<f32> = vec2<f32>(x_1172.x, x_1172.y);
        let x_1175 : f32 = u_xlat6.z;
        txVec13 = vec3<f32>(x_1173.x, x_1173.y, x_1175);
        let x_1182 : vec3<f32> = txVec13;
        let x_1184 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1182.xy, x_1182.z);
        u_xlat80 = x_1184;
        let x_1186 : vec4<f32> = u_xlat13;
        let x_1187 : vec2<f32> = vec2<f32>(x_1186.z, x_1186.w);
        let x_1189 : f32 = u_xlat6.z;
        txVec14 = vec3<f32>(x_1187.x, x_1187.y, x_1189);
        let x_1196 : vec3<f32> = txVec14;
        let x_1198 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1196.xy, x_1196.z);
        u_xlat82 = x_1198;
        let x_1199 : f32 = u_xlat82;
        let x_1201 : f32 = u_xlat18.y;
        u_xlat82 = (x_1199 * x_1201);
        let x_1204 : f32 = u_xlat18.x;
        let x_1205 : f32 = u_xlat80;
        let x_1207 : f32 = u_xlat82;
        u_xlat80 = ((x_1204 * x_1205) + x_1207);
        let x_1210 : vec2<f32> = u_xlat59;
        let x_1212 : f32 = u_xlat6.z;
        txVec15 = vec3<f32>(x_1210.x, x_1210.y, x_1212);
        let x_1219 : vec3<f32> = txVec15;
        let x_1221 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1219.xy, x_1219.z);
        u_xlat82 = x_1221;
        let x_1223 : f32 = u_xlat18.z;
        let x_1224 : f32 = u_xlat82;
        let x_1226 : f32 = u_xlat80;
        u_xlat80 = ((x_1223 * x_1224) + x_1226);
        let x_1229 : vec4<f32> = u_xlat16;
        let x_1230 : vec2<f32> = vec2<f32>(x_1229.x, x_1229.y);
        let x_1232 : f32 = u_xlat6.z;
        txVec16 = vec3<f32>(x_1230.x, x_1230.y, x_1232);
        let x_1239 : vec3<f32> = txVec16;
        let x_1241 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1239.xy, x_1239.z);
        u_xlat82 = x_1241;
        let x_1243 : f32 = u_xlat18.w;
        let x_1244 : f32 = u_xlat82;
        let x_1246 : f32 = u_xlat80;
        u_xlat80 = ((x_1243 * x_1244) + x_1246);
        let x_1249 : vec4<f32> = u_xlat14;
        let x_1250 : vec2<f32> = vec2<f32>(x_1249.x, x_1249.y);
        let x_1252 : f32 = u_xlat6.z;
        txVec17 = vec3<f32>(x_1250.x, x_1250.y, x_1252);
        let x_1259 : vec3<f32> = txVec17;
        let x_1261 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1259.xy, x_1259.z);
        u_xlat82 = x_1261;
        let x_1263 : f32 = u_xlat19.x;
        let x_1264 : f32 = u_xlat82;
        let x_1266 : f32 = u_xlat80;
        u_xlat80 = ((x_1263 * x_1264) + x_1266);
        let x_1269 : vec4<f32> = u_xlat14;
        let x_1270 : vec2<f32> = vec2<f32>(x_1269.z, x_1269.w);
        let x_1272 : f32 = u_xlat6.z;
        txVec18 = vec3<f32>(x_1270.x, x_1270.y, x_1272);
        let x_1279 : vec3<f32> = txVec18;
        let x_1281 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1279.xy, x_1279.z);
        u_xlat82 = x_1281;
        let x_1283 : f32 = u_xlat19.y;
        let x_1284 : f32 = u_xlat82;
        let x_1286 : f32 = u_xlat80;
        u_xlat80 = ((x_1283 * x_1284) + x_1286);
        let x_1289 : vec4<f32> = u_xlat15;
        let x_1290 : vec2<f32> = vec2<f32>(x_1289.x, x_1289.y);
        let x_1292 : f32 = u_xlat6.z;
        txVec19 = vec3<f32>(x_1290.x, x_1290.y, x_1292);
        let x_1299 : vec3<f32> = txVec19;
        let x_1301 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1299.xy, x_1299.z);
        u_xlat82 = x_1301;
        let x_1303 : f32 = u_xlat19.z;
        let x_1304 : f32 = u_xlat82;
        let x_1306 : f32 = u_xlat80;
        u_xlat80 = ((x_1303 * x_1304) + x_1306);
        let x_1309 : vec4<f32> = u_xlat16;
        let x_1310 : vec2<f32> = vec2<f32>(x_1309.z, x_1309.w);
        let x_1312 : f32 = u_xlat6.z;
        txVec20 = vec3<f32>(x_1310.x, x_1310.y, x_1312);
        let x_1319 : vec3<f32> = txVec20;
        let x_1321 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1319.xy, x_1319.z);
        u_xlat82 = x_1321;
        let x_1323 : f32 = u_xlat19.w;
        let x_1324 : f32 = u_xlat82;
        let x_1326 : f32 = u_xlat80;
        u_xlat80 = ((x_1323 * x_1324) + x_1326);
        let x_1329 : vec4<f32> = u_xlat17;
        let x_1330 : vec2<f32> = vec2<f32>(x_1329.x, x_1329.y);
        let x_1332 : f32 = u_xlat6.z;
        txVec21 = vec3<f32>(x_1330.x, x_1330.y, x_1332);
        let x_1339 : vec3<f32> = txVec21;
        let x_1341 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1339.xy, x_1339.z);
        u_xlat82 = x_1341;
        let x_1343 : f32 = u_xlat20.x;
        let x_1344 : f32 = u_xlat82;
        let x_1346 : f32 = u_xlat80;
        u_xlat80 = ((x_1343 * x_1344) + x_1346);
        let x_1349 : vec4<f32> = u_xlat17;
        let x_1350 : vec2<f32> = vec2<f32>(x_1349.z, x_1349.w);
        let x_1352 : f32 = u_xlat6.z;
        txVec22 = vec3<f32>(x_1350.x, x_1350.y, x_1352);
        let x_1359 : vec3<f32> = txVec22;
        let x_1361 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1359.xy, x_1359.z);
        u_xlat82 = x_1361;
        let x_1363 : f32 = u_xlat20.y;
        let x_1364 : f32 = u_xlat82;
        let x_1366 : f32 = u_xlat80;
        u_xlat80 = ((x_1363 * x_1364) + x_1366);
        let x_1369 : vec2<f32> = u_xlat35;
        let x_1371 : f32 = u_xlat6.z;
        txVec23 = vec3<f32>(x_1369.x, x_1369.y, x_1371);
        let x_1378 : vec3<f32> = txVec23;
        let x_1380 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1378.xy, x_1378.z);
        u_xlat82 = x_1380;
        let x_1382 : f32 = u_xlat20.z;
        let x_1383 : f32 = u_xlat82;
        let x_1385 : f32 = u_xlat80;
        u_xlat80 = ((x_1382 * x_1383) + x_1385);
        let x_1388 : vec2<f32> = u_xlat67;
        let x_1390 : f32 = u_xlat6.z;
        txVec24 = vec3<f32>(x_1388.x, x_1388.y, x_1390);
        let x_1397 : vec3<f32> = txVec24;
        let x_1399 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1397.xy, x_1397.z);
        u_xlat82 = x_1399;
        let x_1401 : f32 = u_xlat20.w;
        let x_1402 : f32 = u_xlat82;
        let x_1404 : f32 = u_xlat80;
        u_xlat80 = ((x_1401 * x_1402) + x_1404);
        let x_1407 : vec4<f32> = u_xlat12;
        let x_1408 : vec2<f32> = vec2<f32>(x_1407.x, x_1407.y);
        let x_1410 : f32 = u_xlat6.z;
        txVec25 = vec3<f32>(x_1408.x, x_1408.y, x_1410);
        let x_1417 : vec3<f32> = txVec25;
        let x_1419 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1417.xy, x_1417.z);
        u_xlat82 = x_1419;
        let x_1421 : f32 = u_xlat8.x;
        let x_1422 : f32 = u_xlat82;
        let x_1424 : f32 = u_xlat80;
        u_xlat80 = ((x_1421 * x_1422) + x_1424);
        let x_1427 : vec4<f32> = u_xlat12;
        let x_1428 : vec2<f32> = vec2<f32>(x_1427.z, x_1427.w);
        let x_1430 : f32 = u_xlat6.z;
        txVec26 = vec3<f32>(x_1428.x, x_1428.y, x_1430);
        let x_1437 : vec3<f32> = txVec26;
        let x_1439 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1437.xy, x_1437.z);
        u_xlat82 = x_1439;
        let x_1441 : f32 = u_xlat8.y;
        let x_1442 : f32 = u_xlat82;
        let x_1444 : f32 = u_xlat80;
        u_xlat80 = ((x_1441 * x_1442) + x_1444);
        let x_1447 : vec2<f32> = u_xlat62;
        let x_1449 : f32 = u_xlat6.z;
        txVec27 = vec3<f32>(x_1447.x, x_1447.y, x_1449);
        let x_1456 : vec3<f32> = txVec27;
        let x_1458 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1456.xy, x_1456.z);
        u_xlat82 = x_1458;
        let x_1460 : f32 = u_xlat8.z;
        let x_1461 : f32 = u_xlat82;
        let x_1463 : f32 = u_xlat80;
        u_xlat80 = ((x_1460 * x_1461) + x_1463);
        let x_1466 : vec4<f32> = u_xlat7;
        let x_1467 : vec2<f32> = vec2<f32>(x_1466.x, x_1466.y);
        let x_1469 : f32 = u_xlat6.z;
        txVec28 = vec3<f32>(x_1467.x, x_1467.y, x_1469);
        let x_1476 : vec3<f32> = txVec28;
        let x_1478 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1476.xy, x_1476.z);
        u_xlat82 = x_1478;
        let x_1480 : f32 = u_xlat8.w;
        let x_1481 : f32 = u_xlat82;
        let x_1483 : f32 = u_xlat80;
        u_xlat79 = ((x_1480 * x_1481) + x_1483);
      }
    }
  } else {
    let x_1487 : vec4<f32> = u_xlat6;
    let x_1488 : vec2<f32> = vec2<f32>(x_1487.x, x_1487.y);
    let x_1490 : f32 = u_xlat6.z;
    txVec29 = vec3<f32>(x_1488.x, x_1488.y, x_1490);
    let x_1497 : vec3<f32> = txVec29;
    let x_1499 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1497.xy, x_1497.z);
    u_xlat79 = x_1499;
  }
  let x_1501 : f32 = x_249.x_MainLightShadowParams.x;
  u_xlat80 = (-(x_1501) + 1.0f);
  let x_1504 : f32 = u_xlat79;
  let x_1506 : f32 = x_249.x_MainLightShadowParams.x;
  let x_1508 : f32 = u_xlat80;
  u_xlat79 = ((x_1504 * x_1506) + x_1508);
  let x_1512 : f32 = u_xlat6.z;
  u_xlatb82 = (0.0f >= x_1512);
  let x_1516 : f32 = u_xlat6.z;
  u_xlatb6 = (x_1516 >= 1.0f);
  let x_1518 : bool = u_xlatb82;
  let x_1519 : bool = u_xlatb6;
  u_xlatb82 = (x_1518 | x_1519);
  let x_1521 : bool = u_xlatb82;
  let x_1522 : f32 = u_xlat79;
  u_xlat79 = select(x_1522, 1.0f, x_1521);
  let x_1524 : vec3<f32> = u_xlat0;
  let x_1526 : vec4<f32> = x_75.x_MainLightPosition;
  u_xlat0.x = dot(x_1524, -(vec3<f32>(x_1526.x, x_1526.y, x_1526.z)));
  let x_1532 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1532, 0.0f, 1.0f);
  let x_1535 : f32 = u_xlat79;
  let x_1538 : vec4<f32> = x_75.x_MainLightColor;
  let x_1540 : vec3<f32> = (vec3<f32>(x_1535, x_1535, x_1535) * vec3<f32>(x_1538.x, x_1538.y, x_1538.z));
  let x_1541 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1540.x, x_1540.y, x_1540.z, x_1541.w);
  let x_1543 : vec3<f32> = u_xlat0;
  let x_1545 : vec4<f32> = u_xlat6;
  u_xlat0 = (vec3<f32>(x_1543.x, x_1543.x, x_1543.x) * vec3<f32>(x_1545.x, x_1545.y, x_1545.z));
  let x_1548 : vec3<f32> = u_xlat0;
  let x_1549 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_1548 * vec3<f32>(x_1549.x, x_1549.y, x_1549.z));
  let x_1553 : f32 = x_132.unity_LODFade.x;
  u_xlatb79 = (x_1553 < 0.0f);
  let x_1556 : f32 = x_132.unity_LODFade.x;
  u_xlat3.x = (x_1556 + 1.0f);
  let x_1559 : bool = u_xlatb79;
  if (x_1559) {
    let x_1565 : f32 = u_xlat3.x;
    x_1561 = x_1565;
  } else {
    let x_1568 : f32 = x_132.unity_LODFade.x;
    x_1561 = x_1568;
  }
  let x_1569 : f32 = x_1561;
  u_xlat79 = x_1569;
  let x_1571 : f32 = u_xlat79;
  u_xlatb3 = (0.5f >= x_1571);
  let x_1573 : vec3<f32> = u_xlat2;
  let x_1576 : vec4<f32> = x_75.x_ScreenParams;
  u_xlat2 = (abs(x_1573) * vec3<f32>(x_1576.x, x_1576.y, x_1576.x));
  let x_1582 : vec3<f32> = u_xlat2;
  u_xlatu2 = vec3<u32>(x_1582);
  let x_1587 : u32 = u_xlatu2.z;
  u_xlatu54 = (x_1587 * 1025u);
  let x_1591 : u32 = u_xlatu54;
  u_xlatu29 = (x_1591 >> 6u);
  let x_1596 : u32 = u_xlatu54;
  let x_1597 : u32 = u_xlatu29;
  u_xlati54 = bitcast<i32>((x_1596 ^ x_1597));
  let x_1600 : i32 = u_xlati54;
  u_xlatu54 = (bitcast<u32>(x_1600) * 9u);
  let x_1604 : u32 = u_xlatu54;
  u_xlatu29 = (x_1604 >> 11u);
  let x_1607 : u32 = u_xlatu54;
  let x_1608 : u32 = u_xlatu29;
  u_xlati54 = bitcast<i32>((x_1607 ^ x_1608));
  let x_1611 : i32 = u_xlati54;
  u_xlati54 = (x_1611 * 32769i);
  let x_1615 : i32 = u_xlati54;
  let x_1618 : u32 = u_xlatu2.y;
  u_xlati28 = bitcast<i32>((bitcast<u32>(x_1615) ^ x_1618));
  let x_1622 : i32 = u_xlati28;
  u_xlatu28 = (bitcast<u32>(x_1622) * 1025u);
  let x_1625 : u32 = u_xlatu28;
  u_xlatu54 = (x_1625 >> 6u);
  let x_1627 : u32 = u_xlatu54;
  let x_1628 : u32 = u_xlatu28;
  u_xlati28 = bitcast<i32>((x_1627 ^ x_1628));
  let x_1631 : i32 = u_xlati28;
  u_xlatu28 = (bitcast<u32>(x_1631) * 9u);
  let x_1634 : u32 = u_xlatu28;
  u_xlatu54 = (x_1634 >> 11u);
  let x_1636 : u32 = u_xlatu54;
  let x_1637 : u32 = u_xlatu28;
  u_xlati28 = bitcast<i32>((x_1636 ^ x_1637));
  let x_1640 : i32 = u_xlati28;
  u_xlati28 = (x_1640 * 32769i);
  let x_1643 : i32 = u_xlati28;
  let x_1646 : u32 = u_xlatu2.x;
  u_xlati2 = bitcast<i32>((bitcast<u32>(x_1643) ^ x_1646));
  let x_1649 : i32 = u_xlati2;
  u_xlatu2.x = (bitcast<u32>(x_1649) * 1025u);
  let x_1654 : u32 = u_xlatu2.x;
  u_xlatu28 = (x_1654 >> 6u);
  let x_1656 : u32 = u_xlatu28;
  let x_1658 : u32 = u_xlatu2.x;
  u_xlati2 = bitcast<i32>((x_1656 ^ x_1658));
  let x_1661 : i32 = u_xlati2;
  u_xlatu2.x = (bitcast<u32>(x_1661) * 9u);
  let x_1666 : u32 = u_xlatu2.x;
  u_xlatu28 = (x_1666 >> 11u);
  let x_1668 : u32 = u_xlatu28;
  let x_1670 : u32 = u_xlatu2.x;
  u_xlati2 = bitcast<i32>((x_1668 ^ x_1670));
  let x_1673 : i32 = u_xlati2;
  u_xlati2 = (x_1673 * 32769i);
  param = 1065353216i;
  let x_1679 : i32 = u_xlati2;
  param_1 = x_1679;
  param_2 = 0i;
  param_3 = 23i;
  let x_1682 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat2.x = bitcast<f32>(x_1682);
  let x_1686 : f32 = u_xlat2.x;
  u_xlat2.x = (x_1686 + -1.0f);
  let x_1691 : f32 = u_xlat2.x;
  u_xlat28.x = (-(x_1691) + 1.0f);
  let x_1695 : bool = u_xlatb3;
  if (x_1695) {
    let x_1700 : f32 = u_xlat2.x;
    x_1696 = x_1700;
  } else {
    let x_1703 : f32 = u_xlat28.x;
    x_1696 = x_1703;
  }
  let x_1704 : f32 = x_1696;
  u_xlat2.x = x_1704;
  let x_1706 : f32 = u_xlat79;
  let x_1709 : f32 = u_xlat2.x;
  u_xlat79 = ((x_1706 * 2.0f) + -(x_1709));
  let x_1712 : f32 = u_xlat79;
  let x_1714 : f32 = u_xlat3.w;
  u_xlat2.x = (x_1712 * x_1714);
  let x_1721 : f32 = u_xlat2.x;
  u_xlatb28.x = (x_1721 >= 0.40000000596046447754f);
  let x_1726 : bool = u_xlatb28.x;
  if (x_1726) {
    let x_1731 : f32 = u_xlat2.x;
    x_1727 = x_1731;
  } else {
    x_1727 = 0.0f;
  }
  let x_1733 : f32 = x_1727;
  u_xlat28.x = x_1733;
  let x_1736 : f32 = u_xlat3.w;
  let x_1737 : f32 = u_xlat79;
  u_xlat79 = ((x_1736 * x_1737) + -0.40000000596046447754f);
  let x_1743 : f32 = u_xlat2.x;
  u_xlat54 = dpdxCoarse(x_1743);
  let x_1746 : f32 = u_xlat2.x;
  u_xlat2.x = dpdyCoarse(x_1746);
  let x_1750 : f32 = u_xlat2.x;
  let x_1752 : f32 = u_xlat54;
  u_xlat2.x = (abs(x_1750) + abs(x_1752));
  let x_1757 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_1757, 0.00009999999747378752f);
  let x_1761 : f32 = u_xlat79;
  let x_1763 : f32 = u_xlat2.x;
  u_xlat79 = (x_1761 / x_1763);
  let x_1765 : f32 = u_xlat79;
  u_xlat79 = (x_1765 + 0.5f);
  let x_1767 : f32 = u_xlat79;
  u_xlat79 = clamp(x_1767, 0.0f, 1.0f);
  let x_1771 : f32 = x_75.x_AlphaToMaskAvailable;
  u_xlatb2 = !((x_1771 == 0.0f));
  let x_1773 : bool = u_xlatb2;
  if (x_1773) {
    let x_1777 : f32 = u_xlat79;
    x_1774 = x_1777;
  } else {
    let x_1780 : f32 = u_xlat28.x;
    x_1774 = x_1780;
  }
  let x_1781 : f32 = x_1774;
  u_xlat79 = x_1781;
  let x_1782 : f32 = u_xlat79;
  u_xlat28.x = (x_1782 + -0.00009999999747378752f);
  let x_1787 : f32 = u_xlat28.x;
  u_xlatb28.x = (x_1787 < 0.0f);
  let x_1791 : bool = u_xlatb28.x;
  if (((select(0i, 1i, x_1791) * -1i) != 0i)) {
    discard;
  }
  let x_1801 : f32 = vs_INTERP4.w;
  u_xlatb28.x = (0.0f < x_1801);
  let x_1805 : f32 = x_132.unity_WorldTransformParams.w;
  u_xlatb28.y = (x_1805 >= 0.0f);
  let x_1809 : bool = u_xlatb28.x;
  u_xlat28.x = select(-1.0f, 1.0f, x_1809);
  let x_1813 : bool = u_xlatb28.y;
  u_xlat28.y = select(-1.0f, 1.0f, x_1813);
  let x_1817 : f32 = u_xlat28.y;
  let x_1819 : f32 = u_xlat28.x;
  u_xlat28.x = (x_1817 * x_1819);
  let x_1822 : vec4<f32> = vs_INTERP4;
  let x_1824 : vec3<f32> = vs_INTERP9;
  let x_1826 : vec3<f32> = (vec3<f32>(x_1822.y, x_1822.z, x_1822.x) * vec3<f32>(x_1824.z, x_1824.x, x_1824.y));
  let x_1827 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1826.x, x_1826.y, x_1826.z, x_1827.w);
  let x_1829 : vec3<f32> = vs_INTERP9;
  let x_1831 : vec4<f32> = vs_INTERP4;
  let x_1834 : vec4<f32> = u_xlat3;
  let x_1837 : vec3<f32> = ((vec3<f32>(x_1829.y, x_1829.z, x_1829.x) * vec3<f32>(x_1831.z, x_1831.x, x_1831.y)) + -(vec3<f32>(x_1834.x, x_1834.y, x_1834.z)));
  let x_1838 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1837.x, x_1837.y, x_1837.z, x_1838.w);
  let x_1840 : vec2<f32> = u_xlat28;
  let x_1842 : vec4<f32> = u_xlat3;
  let x_1844 : vec3<f32> = (vec3<f32>(x_1840.x, x_1840.x, x_1840.x) * vec3<f32>(x_1842.x, x_1842.y, x_1842.z));
  let x_1845 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1844.x, x_1844.y, x_1844.z, x_1845.w);
  let x_1847 : vec4<f32> = u_xlat3;
  let x_1849 : vec3<f32> = u_xlat31;
  let x_1851 : vec3<f32> = (vec3<f32>(x_1847.x, x_1847.y, x_1847.z) * vec3<f32>(x_1849.y, x_1849.y, x_1849.y));
  let x_1852 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1851.x, x_1851.y, x_1851.z, x_1852.w);
  let x_1854 : vec3<f32> = u_xlat31;
  let x_1856 : vec4<f32> = vs_INTERP4;
  let x_1859 : vec4<f32> = u_xlat3;
  let x_1861 : vec3<f32> = ((vec3<f32>(x_1854.x, x_1854.x, x_1854.x) * vec3<f32>(x_1856.x, x_1856.y, x_1856.z)) + vec3<f32>(x_1859.x, x_1859.y, x_1859.z));
  let x_1862 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1861.x, x_1861.y, x_1861.z, x_1862.w);
  let x_1864 : vec3<f32> = u_xlat31;
  let x_1866 : vec3<f32> = vs_INTERP9;
  let x_1868 : vec4<f32> = u_xlat3;
  let x_1870 : vec3<f32> = ((vec3<f32>(x_1864.z, x_1864.z, x_1864.z) * x_1866) + vec3<f32>(x_1868.x, x_1868.y, x_1868.z));
  let x_1871 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1870.x, x_1870.y, x_1870.z, x_1871.w);
  let x_1873 : vec4<f32> = u_xlat3;
  let x_1875 : vec4<f32> = u_xlat3;
  u_xlat28.x = dot(vec3<f32>(x_1873.x, x_1873.y, x_1873.z), vec3<f32>(x_1875.x, x_1875.y, x_1875.z));
  let x_1880 : f32 = u_xlat28.x;
  u_xlat28.x = inverseSqrt(x_1880);
  let x_1883 : vec2<f32> = u_xlat28;
  let x_1885 : vec4<f32> = u_xlat3;
  let x_1887 : vec3<f32> = (vec3<f32>(x_1883.x, x_1883.x, x_1883.x) * vec3<f32>(x_1885.x, x_1885.y, x_1885.z));
  let x_1888 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1887.x, x_1887.y, x_1887.z, x_1888.w);
  let x_1891 : f32 = vs_INTERP8.y;
  let x_1893 : f32 = x_75.unity_MatrixV[1i].z;
  u_xlat28.x = (x_1891 * x_1893);
  let x_1897 : f32 = x_75.unity_MatrixV[0i].z;
  let x_1899 : f32 = vs_INTERP8.x;
  let x_1902 : f32 = u_xlat28.x;
  u_xlat28.x = ((x_1897 * x_1899) + x_1902);
  let x_1906 : f32 = x_75.unity_MatrixV[2i].z;
  let x_1908 : f32 = vs_INTERP8.z;
  let x_1911 : f32 = u_xlat28.x;
  u_xlat28.x = ((x_1906 * x_1908) + x_1911);
  let x_1915 : f32 = u_xlat28.x;
  let x_1917 : f32 = x_75.unity_MatrixV[3i].z;
  u_xlat28.x = (x_1915 + x_1917);
  let x_1921 : f32 = u_xlat28.x;
  let x_1924 : f32 = x_75.x_ProjectionParams.y;
  u_xlat28.x = (-(x_1921) + -(x_1924));
  let x_1929 : f32 = u_xlat28.x;
  u_xlat28.x = max(x_1929, 0.0f);
  let x_1933 : f32 = u_xlat28.x;
  let x_1935 : f32 = x_75.unity_FogParams.x;
  u_xlat28.x = (x_1933 * x_1935);
  let x_1945 : vec2<f32> = vs_INTERP0;
  let x_1947 : f32 = x_75.x_GlobalMipBias.x;
  let x_1948 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_1945, x_1947);
  u_xlat6 = x_1948;
  let x_1953 : vec2<f32> = vs_INTERP0;
  let x_1955 : f32 = x_75.x_GlobalMipBias.x;
  let x_1956 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_1953, x_1955);
  u_xlat31 = vec3<f32>(x_1956.x, x_1956.y, x_1956.z);
  let x_1958 : vec4<f32> = u_xlat6;
  let x_1961 : vec3<f32> = (vec3<f32>(x_1958.x, x_1958.y, x_1958.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_1962 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1961.x, x_1961.y, x_1961.z, x_1962.w);
  let x_1964 : vec4<f32> = u_xlat3;
  let x_1966 : vec4<f32> = u_xlat6;
  u_xlat54 = dot(vec3<f32>(x_1964.x, x_1964.y, x_1964.z), vec3<f32>(x_1966.x, x_1966.y, x_1966.z));
  let x_1969 : f32 = u_xlat54;
  u_xlat54 = (x_1969 + 0.5f);
  let x_1971 : f32 = u_xlat54;
  let x_1973 : vec3<f32> = u_xlat31;
  u_xlat31 = (vec3<f32>(x_1971, x_1971, x_1971) * x_1973);
  let x_1976 : f32 = u_xlat6.w;
  u_xlat54 = max(x_1976, 0.00009999999747378752f);
  let x_1978 : vec3<f32> = u_xlat31;
  let x_1979 : f32 = u_xlat54;
  u_xlat31 = (x_1978 / vec3<f32>(x_1979, x_1979, x_1979));
  let x_1983 : f32 = u_xlat5.x;
  u_xlat5.x = x_1983;
  let x_1986 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_1986, 0.0f, 1.0f);
  let x_1989 : f32 = u_xlat79;
  u_xlat79 = x_1989;
  let x_1990 : f32 = u_xlat79;
  u_xlat79 = clamp(x_1990, 0.0f, 1.0f);
  let x_1992 : vec3<f32> = u_xlat4;
  u_xlat4 = (x_1992 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_1997 : f32 = u_xlat5.x;
  u_xlat54 = (-(x_1997) + 1.0f);
  let x_2001 : f32 = u_xlat54;
  let x_2002 : f32 = u_xlat54;
  u_xlat81 = (x_2001 * x_2002);
  let x_2004 : f32 = u_xlat81;
  u_xlat81 = max(x_2004, 0.0078125f);
  let x_2007 : f32 = u_xlat81;
  let x_2008 : f32 = u_xlat81;
  u_xlat82 = (x_2007 * x_2008);
  let x_2011 : f32 = u_xlat5.x;
  u_xlat5.x = (x_2011 + 0.04000002145767211914f);
  let x_2016 : f32 = u_xlat5.x;
  u_xlat5.x = min(x_2016, 1.0f);
  let x_2019 : f32 = u_xlat81;
  u_xlat6.x = ((x_2019 * 4.0f) + 2.0f);
  let x_2026 : f32 = vs_INTERP6.w;
  u_xlat32 = min(x_2026, 1.0f);
  let x_2028 : bool = u_xlatb78;
  if (x_2028) {
    let x_2032 : f32 = x_249.x_MainLightShadowParams.y;
    u_xlatb78 = (x_2032 == 1.0f);
    let x_2034 : bool = u_xlatb78;
    if (x_2034) {
      let x_2038 : vec4<f32> = vs_INTERP3;
      let x_2041 : vec4<f32> = x_249.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_2038.x, x_2038.y, x_2038.x, x_2038.y) + x_2041);
      let x_2044 : vec4<f32> = u_xlat7;
      let x_2045 : vec2<f32> = vec2<f32>(x_2044.x, x_2044.y);
      let x_2047 : f32 = vs_INTERP3.z;
      txVec30 = vec3<f32>(x_2045.x, x_2045.y, x_2047);
      let x_2054 : vec3<f32> = txVec30;
      let x_2056 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2054.xy, x_2054.z);
      u_xlat8.x = x_2056;
      let x_2059 : vec4<f32> = u_xlat7;
      let x_2060 : vec2<f32> = vec2<f32>(x_2059.z, x_2059.w);
      let x_2062 : f32 = vs_INTERP3.z;
      txVec31 = vec3<f32>(x_2060.x, x_2060.y, x_2062);
      let x_2069 : vec3<f32> = txVec31;
      let x_2071 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2069.xy, x_2069.z);
      u_xlat8.y = x_2071;
      let x_2073 : vec4<f32> = vs_INTERP3;
      let x_2076 : vec4<f32> = x_249.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_2073.x, x_2073.y, x_2073.x, x_2073.y) + x_2076);
      let x_2079 : vec4<f32> = u_xlat7;
      let x_2080 : vec2<f32> = vec2<f32>(x_2079.x, x_2079.y);
      let x_2082 : f32 = vs_INTERP3.z;
      txVec32 = vec3<f32>(x_2080.x, x_2080.y, x_2082);
      let x_2089 : vec3<f32> = txVec32;
      let x_2091 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2089.xy, x_2089.z);
      u_xlat8.z = x_2091;
      let x_2094 : vec4<f32> = u_xlat7;
      let x_2095 : vec2<f32> = vec2<f32>(x_2094.z, x_2094.w);
      let x_2097 : f32 = vs_INTERP3.z;
      txVec33 = vec3<f32>(x_2095.x, x_2095.y, x_2097);
      let x_2104 : vec3<f32> = txVec33;
      let x_2106 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2104.xy, x_2104.z);
      u_xlat8.w = x_2106;
      let x_2108 : vec4<f32> = u_xlat8;
      u_xlat78 = dot(x_2108, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_2113 : f32 = x_249.x_MainLightShadowParams.y;
      u_xlatb58 = (x_2113 == 2.0f);
      let x_2115 : bool = u_xlatb58;
      if (x_2115) {
        let x_2119 : vec4<f32> = vs_INTERP3;
        let x_2122 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        u_xlat58 = ((vec2<f32>(x_2119.x, x_2119.y) * vec2<f32>(x_2122.z, x_2122.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2126 : vec2<f32> = u_xlat58;
        u_xlat58 = floor(x_2126);
        let x_2128 : vec4<f32> = vs_INTERP3;
        let x_2131 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2134 : vec2<f32> = u_xlat58;
        let x_2136 : vec2<f32> = ((vec2<f32>(x_2128.x, x_2128.y) * vec2<f32>(x_2131.z, x_2131.w)) + -(x_2134));
        let x_2137 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2136.x, x_2136.y, x_2137.z, x_2137.w);
        let x_2139 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_2139.x, x_2139.x, x_2139.y, x_2139.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2142 : vec4<f32> = u_xlat8;
        let x_2144 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2142.x, x_2142.x, x_2142.z, x_2142.z) * vec4<f32>(x_2144.x, x_2144.x, x_2144.z, x_2144.z));
        let x_2147 : vec4<f32> = u_xlat9;
        u_xlat59 = (vec2<f32>(x_2147.y, x_2147.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_2150 : vec4<f32> = u_xlat9;
        let x_2153 : vec4<f32> = u_xlat7;
        let x_2156 : vec2<f32> = ((vec2<f32>(x_2150.x, x_2150.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2153.x, x_2153.y)));
        let x_2157 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2156.x, x_2157.y, x_2156.y, x_2157.w);
        let x_2159 : vec4<f32> = u_xlat7;
        let x_2162 : vec2<f32> = (-(vec2<f32>(x_2159.x, x_2159.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2163 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2162.x, x_2162.y, x_2163.z, x_2163.w);
        let x_2165 : vec4<f32> = u_xlat7;
        u_xlat61 = min(vec2<f32>(x_2165.x, x_2165.y), vec2<f32>(0.0f, 0.0f));
        let x_2168 : vec2<f32> = u_xlat61;
        let x_2170 : vec2<f32> = u_xlat61;
        let x_2172 : vec4<f32> = u_xlat9;
        u_xlat61 = ((-(x_2168) * x_2170) + vec2<f32>(x_2172.x, x_2172.y));
        let x_2175 : vec4<f32> = u_xlat7;
        let x_2177 : vec2<f32> = max(vec2<f32>(x_2175.x, x_2175.y), vec2<f32>(0.0f, 0.0f));
        let x_2178 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2177.x, x_2177.y, x_2178.z, x_2178.w);
        let x_2180 : vec4<f32> = u_xlat7;
        let x_2183 : vec4<f32> = u_xlat7;
        let x_2186 : vec4<f32> = u_xlat8;
        let x_2188 : vec2<f32> = ((-(vec2<f32>(x_2180.x, x_2180.y)) * vec2<f32>(x_2183.x, x_2183.y)) + vec2<f32>(x_2186.y, x_2186.w));
        let x_2189 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2188.x, x_2188.y, x_2189.z, x_2189.w);
        let x_2191 : vec2<f32> = u_xlat61;
        u_xlat61 = (x_2191 + vec2<f32>(1.0f, 1.0f));
        let x_2193 : vec4<f32> = u_xlat7;
        let x_2195 : vec2<f32> = (vec2<f32>(x_2193.x, x_2193.y) + vec2<f32>(1.0f, 1.0f));
        let x_2196 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2195.x, x_2195.y, x_2196.z, x_2196.w);
        let x_2198 : vec4<f32> = u_xlat8;
        let x_2200 : vec2<f32> = (vec2<f32>(x_2198.x, x_2198.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2201 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2200.x, x_2200.y, x_2201.z, x_2201.w);
        let x_2203 : vec4<f32> = u_xlat9;
        let x_2205 : vec2<f32> = (vec2<f32>(x_2203.x, x_2203.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2206 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2205.x, x_2205.y, x_2206.z, x_2206.w);
        let x_2208 : vec2<f32> = u_xlat61;
        let x_2209 : vec2<f32> = (x_2208 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2210 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2209.x, x_2209.y, x_2210.z, x_2210.w);
        let x_2212 : vec4<f32> = u_xlat7;
        let x_2214 : vec2<f32> = (vec2<f32>(x_2212.x, x_2212.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2215 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2214.x, x_2214.y, x_2215.z, x_2215.w);
        let x_2217 : vec4<f32> = u_xlat8;
        let x_2219 : vec2<f32> = (vec2<f32>(x_2217.y, x_2217.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2220 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2219.x, x_2219.y, x_2220.z, x_2220.w);
        let x_2223 : f32 = u_xlat9.x;
        u_xlat10.z = x_2223;
        let x_2226 : f32 = u_xlat7.x;
        u_xlat10.w = x_2226;
        let x_2229 : f32 = u_xlat12.x;
        u_xlat11.z = x_2229;
        let x_2232 : f32 = u_xlat59.x;
        u_xlat11.w = x_2232;
        let x_2234 : vec4<f32> = u_xlat10;
        let x_2236 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_2234.z, x_2234.w, x_2234.x, x_2234.z) + vec4<f32>(x_2236.z, x_2236.w, x_2236.x, x_2236.z));
        let x_2240 : f32 = u_xlat10.y;
        u_xlat9.z = x_2240;
        let x_2243 : f32 = u_xlat7.y;
        u_xlat9.w = x_2243;
        let x_2246 : f32 = u_xlat11.y;
        u_xlat12.z = x_2246;
        let x_2249 : f32 = u_xlat59.y;
        u_xlat12.w = x_2249;
        let x_2251 : vec4<f32> = u_xlat9;
        let x_2253 : vec4<f32> = u_xlat12;
        let x_2255 : vec3<f32> = (vec3<f32>(x_2251.z, x_2251.y, x_2251.w) + vec3<f32>(x_2253.z, x_2253.y, x_2253.w));
        let x_2256 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2255.x, x_2255.y, x_2255.z, x_2256.w);
        let x_2258 : vec4<f32> = u_xlat11;
        let x_2260 : vec4<f32> = u_xlat8;
        let x_2262 : vec3<f32> = (vec3<f32>(x_2258.x, x_2258.z, x_2258.w) / vec3<f32>(x_2260.z, x_2260.w, x_2260.y));
        let x_2263 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2262.x, x_2262.y, x_2262.z, x_2263.w);
        let x_2265 : vec4<f32> = u_xlat9;
        let x_2267 : vec3<f32> = (vec3<f32>(x_2265.x, x_2265.y, x_2265.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2268 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2267.x, x_2267.y, x_2267.z, x_2268.w);
        let x_2270 : vec4<f32> = u_xlat12;
        let x_2272 : vec4<f32> = u_xlat7;
        let x_2274 : vec3<f32> = (vec3<f32>(x_2270.z, x_2270.y, x_2270.w) / vec3<f32>(x_2272.x, x_2272.y, x_2272.z));
        let x_2275 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2274.x, x_2274.y, x_2274.z, x_2275.w);
        let x_2277 : vec4<f32> = u_xlat10;
        let x_2279 : vec3<f32> = (vec3<f32>(x_2277.x, x_2277.y, x_2277.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2280 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2279.x, x_2279.y, x_2279.z, x_2280.w);
        let x_2282 : vec4<f32> = u_xlat9;
        let x_2285 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2287 : vec3<f32> = (vec3<f32>(x_2282.y, x_2282.x, x_2282.z) * vec3<f32>(x_2285.x, x_2285.x, x_2285.x));
        let x_2288 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2287.x, x_2287.y, x_2287.z, x_2288.w);
        let x_2290 : vec4<f32> = u_xlat10;
        let x_2293 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2295 : vec3<f32> = (vec3<f32>(x_2290.x, x_2290.y, x_2290.z) * vec3<f32>(x_2293.y, x_2293.y, x_2293.y));
        let x_2296 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2295.x, x_2295.y, x_2295.z, x_2296.w);
        let x_2299 : f32 = u_xlat10.x;
        u_xlat9.w = x_2299;
        let x_2301 : vec2<f32> = u_xlat58;
        let x_2304 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2307 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_2301.x, x_2301.y, x_2301.x, x_2301.y) * vec4<f32>(x_2304.x, x_2304.y, x_2304.x, x_2304.y)) + vec4<f32>(x_2307.y, x_2307.w, x_2307.x, x_2307.w));
        let x_2310 : vec2<f32> = u_xlat58;
        let x_2312 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2315 : vec4<f32> = u_xlat9;
        let x_2317 : vec2<f32> = ((x_2310 * vec2<f32>(x_2312.x, x_2312.y)) + vec2<f32>(x_2315.z, x_2315.w));
        let x_2318 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2317.x, x_2317.y, x_2318.z, x_2318.w);
        let x_2321 : f32 = u_xlat9.y;
        u_xlat10.w = x_2321;
        let x_2323 : vec4<f32> = u_xlat10;
        let x_2324 : vec2<f32> = vec2<f32>(x_2323.y, x_2323.z);
        let x_2325 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2325.x, x_2324.x, x_2325.z, x_2324.y);
        let x_2327 : vec2<f32> = u_xlat58;
        let x_2330 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2333 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_2327.x, x_2327.y, x_2327.x, x_2327.y) * vec4<f32>(x_2330.x, x_2330.y, x_2330.x, x_2330.y)) + vec4<f32>(x_2333.x, x_2333.y, x_2333.z, x_2333.y));
        let x_2336 : vec2<f32> = u_xlat58;
        let x_2339 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2342 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_2336.x, x_2336.y, x_2336.x, x_2336.y) * vec4<f32>(x_2339.x, x_2339.y, x_2339.x, x_2339.y)) + vec4<f32>(x_2342.w, x_2342.y, x_2342.w, x_2342.z));
        let x_2345 : vec2<f32> = u_xlat58;
        let x_2348 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2351 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_2345.x, x_2345.y, x_2345.x, x_2345.y) * vec4<f32>(x_2348.x, x_2348.y, x_2348.x, x_2348.y)) + vec4<f32>(x_2351.x, x_2351.w, x_2351.z, x_2351.w));
        let x_2354 : vec4<f32> = u_xlat7;
        let x_2356 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_2354.x, x_2354.x, x_2354.x, x_2354.y) * vec4<f32>(x_2356.z, x_2356.w, x_2356.y, x_2356.z));
        let x_2359 : vec4<f32> = u_xlat7;
        let x_2361 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_2359.y, x_2359.y, x_2359.z, x_2359.z) * x_2361);
        let x_2364 : f32 = u_xlat7.z;
        let x_2366 : f32 = u_xlat8.y;
        u_xlat58.x = (x_2364 * x_2366);
        let x_2370 : vec4<f32> = u_xlat11;
        let x_2371 : vec2<f32> = vec2<f32>(x_2370.x, x_2370.y);
        let x_2373 : f32 = vs_INTERP3.z;
        txVec34 = vec3<f32>(x_2371.x, x_2371.y, x_2373);
        let x_2380 : vec3<f32> = txVec34;
        let x_2382 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2380.xy, x_2380.z);
        u_xlat84 = x_2382;
        let x_2384 : vec4<f32> = u_xlat11;
        let x_2385 : vec2<f32> = vec2<f32>(x_2384.z, x_2384.w);
        let x_2387 : f32 = vs_INTERP3.z;
        txVec35 = vec3<f32>(x_2385.x, x_2385.y, x_2387);
        let x_2394 : vec3<f32> = txVec35;
        let x_2396 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2394.xy, x_2394.z);
        u_xlat7.x = x_2396;
        let x_2399 : f32 = u_xlat7.x;
        let x_2401 : f32 = u_xlat14.y;
        u_xlat7.x = (x_2399 * x_2401);
        let x_2405 : f32 = u_xlat14.x;
        let x_2406 : f32 = u_xlat84;
        let x_2409 : f32 = u_xlat7.x;
        u_xlat84 = ((x_2405 * x_2406) + x_2409);
        let x_2412 : vec4<f32> = u_xlat12;
        let x_2413 : vec2<f32> = vec2<f32>(x_2412.x, x_2412.y);
        let x_2415 : f32 = vs_INTERP3.z;
        txVec36 = vec3<f32>(x_2413.x, x_2413.y, x_2415);
        let x_2422 : vec3<f32> = txVec36;
        let x_2424 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2422.xy, x_2422.z);
        u_xlat7.x = x_2424;
        let x_2427 : f32 = u_xlat14.z;
        let x_2429 : f32 = u_xlat7.x;
        let x_2431 : f32 = u_xlat84;
        u_xlat84 = ((x_2427 * x_2429) + x_2431);
        let x_2434 : vec4<f32> = u_xlat10;
        let x_2435 : vec2<f32> = vec2<f32>(x_2434.x, x_2434.y);
        let x_2437 : f32 = vs_INTERP3.z;
        txVec37 = vec3<f32>(x_2435.x, x_2435.y, x_2437);
        let x_2444 : vec3<f32> = txVec37;
        let x_2446 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2444.xy, x_2444.z);
        u_xlat7.x = x_2446;
        let x_2449 : f32 = u_xlat14.w;
        let x_2451 : f32 = u_xlat7.x;
        let x_2453 : f32 = u_xlat84;
        u_xlat84 = ((x_2449 * x_2451) + x_2453);
        let x_2456 : vec4<f32> = u_xlat13;
        let x_2457 : vec2<f32> = vec2<f32>(x_2456.x, x_2456.y);
        let x_2459 : f32 = vs_INTERP3.z;
        txVec38 = vec3<f32>(x_2457.x, x_2457.y, x_2459);
        let x_2466 : vec3<f32> = txVec38;
        let x_2468 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2466.xy, x_2466.z);
        u_xlat7.x = x_2468;
        let x_2471 : f32 = u_xlat15.x;
        let x_2473 : f32 = u_xlat7.x;
        let x_2475 : f32 = u_xlat84;
        u_xlat84 = ((x_2471 * x_2473) + x_2475);
        let x_2478 : vec4<f32> = u_xlat13;
        let x_2479 : vec2<f32> = vec2<f32>(x_2478.z, x_2478.w);
        let x_2481 : f32 = vs_INTERP3.z;
        txVec39 = vec3<f32>(x_2479.x, x_2479.y, x_2481);
        let x_2488 : vec3<f32> = txVec39;
        let x_2490 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2488.xy, x_2488.z);
        u_xlat7.x = x_2490;
        let x_2493 : f32 = u_xlat15.y;
        let x_2495 : f32 = u_xlat7.x;
        let x_2497 : f32 = u_xlat84;
        u_xlat84 = ((x_2493 * x_2495) + x_2497);
        let x_2500 : vec4<f32> = u_xlat10;
        let x_2501 : vec2<f32> = vec2<f32>(x_2500.z, x_2500.w);
        let x_2503 : f32 = vs_INTERP3.z;
        txVec40 = vec3<f32>(x_2501.x, x_2501.y, x_2503);
        let x_2510 : vec3<f32> = txVec40;
        let x_2512 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2510.xy, x_2510.z);
        u_xlat7.x = x_2512;
        let x_2515 : f32 = u_xlat15.z;
        let x_2517 : f32 = u_xlat7.x;
        let x_2519 : f32 = u_xlat84;
        u_xlat84 = ((x_2515 * x_2517) + x_2519);
        let x_2522 : vec4<f32> = u_xlat9;
        let x_2523 : vec2<f32> = vec2<f32>(x_2522.x, x_2522.y);
        let x_2525 : f32 = vs_INTERP3.z;
        txVec41 = vec3<f32>(x_2523.x, x_2523.y, x_2525);
        let x_2532 : vec3<f32> = txVec41;
        let x_2534 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2532.xy, x_2532.z);
        u_xlat7.x = x_2534;
        let x_2537 : f32 = u_xlat15.w;
        let x_2539 : f32 = u_xlat7.x;
        let x_2541 : f32 = u_xlat84;
        u_xlat84 = ((x_2537 * x_2539) + x_2541);
        let x_2544 : vec4<f32> = u_xlat9;
        let x_2545 : vec2<f32> = vec2<f32>(x_2544.z, x_2544.w);
        let x_2547 : f32 = vs_INTERP3.z;
        txVec42 = vec3<f32>(x_2545.x, x_2545.y, x_2547);
        let x_2554 : vec3<f32> = txVec42;
        let x_2556 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2554.xy, x_2554.z);
        u_xlat7.x = x_2556;
        let x_2559 : f32 = u_xlat58.x;
        let x_2561 : f32 = u_xlat7.x;
        let x_2563 : f32 = u_xlat84;
        u_xlat78 = ((x_2559 * x_2561) + x_2563);
      } else {
        let x_2566 : vec4<f32> = vs_INTERP3;
        let x_2569 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        u_xlat58 = ((vec2<f32>(x_2566.x, x_2566.y) * vec2<f32>(x_2569.z, x_2569.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2573 : vec2<f32> = u_xlat58;
        u_xlat58 = floor(x_2573);
        let x_2575 : vec4<f32> = vs_INTERP3;
        let x_2578 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2581 : vec2<f32> = u_xlat58;
        let x_2583 : vec2<f32> = ((vec2<f32>(x_2575.x, x_2575.y) * vec2<f32>(x_2578.z, x_2578.w)) + -(x_2581));
        let x_2584 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2583.x, x_2583.y, x_2584.z, x_2584.w);
        let x_2586 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_2586.x, x_2586.x, x_2586.y, x_2586.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2589 : vec4<f32> = u_xlat8;
        let x_2591 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2589.x, x_2589.x, x_2589.z, x_2589.z) * vec4<f32>(x_2591.x, x_2591.x, x_2591.z, x_2591.z));
        let x_2594 : vec4<f32> = u_xlat9;
        let x_2596 : vec2<f32> = (vec2<f32>(x_2594.y, x_2594.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_2597 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2597.x, x_2596.x, x_2597.z, x_2596.y);
        let x_2599 : vec4<f32> = u_xlat9;
        let x_2602 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_2599.x, x_2599.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2602.x, x_2602.y)));
        let x_2606 : vec4<f32> = u_xlat7;
        let x_2609 : vec2<f32> = (-(vec2<f32>(x_2606.x, x_2606.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2610 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2609.x, x_2610.y, x_2609.y, x_2610.w);
        let x_2612 : vec4<f32> = u_xlat7;
        let x_2614 : vec2<f32> = min(vec2<f32>(x_2612.x, x_2612.y), vec2<f32>(0.0f, 0.0f));
        let x_2615 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2614.x, x_2614.y, x_2615.z, x_2615.w);
        let x_2617 : vec4<f32> = u_xlat9;
        let x_2620 : vec4<f32> = u_xlat9;
        let x_2623 : vec4<f32> = u_xlat8;
        let x_2625 : vec2<f32> = ((-(vec2<f32>(x_2617.x, x_2617.y)) * vec2<f32>(x_2620.x, x_2620.y)) + vec2<f32>(x_2623.x, x_2623.z));
        let x_2626 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2625.x, x_2626.y, x_2625.y, x_2626.w);
        let x_2628 : vec4<f32> = u_xlat7;
        let x_2630 : vec2<f32> = max(vec2<f32>(x_2628.x, x_2628.y), vec2<f32>(0.0f, 0.0f));
        let x_2631 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2630.x, x_2630.y, x_2631.z, x_2631.w);
        let x_2633 : vec4<f32> = u_xlat9;
        let x_2636 : vec4<f32> = u_xlat9;
        let x_2639 : vec4<f32> = u_xlat8;
        let x_2641 : vec2<f32> = ((-(vec2<f32>(x_2633.x, x_2633.y)) * vec2<f32>(x_2636.x, x_2636.y)) + vec2<f32>(x_2639.y, x_2639.w));
        let x_2642 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2642.x, x_2641.x, x_2642.z, x_2641.y);
        let x_2644 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_2644 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_2647 : f32 = u_xlat8.y;
        u_xlat9.z = (x_2647 * 0.08163200318813323975f);
        let x_2650 : vec2<f32> = u_xlat59;
        let x_2652 : vec2<f32> = (vec2<f32>(x_2650.y, x_2650.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2653 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2652.x, x_2652.y, x_2653.z, x_2653.w);
        let x_2655 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_2655.x, x_2655.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2659 : f32 = u_xlat8.w;
        u_xlat11.z = (x_2659 * 0.08163200318813323975f);
        let x_2663 : f32 = u_xlat11.y;
        u_xlat9.x = x_2663;
        let x_2665 : vec4<f32> = u_xlat7;
        let x_2668 : vec2<f32> = ((vec2<f32>(x_2665.x, x_2665.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2669 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2669.x, x_2668.x, x_2669.z, x_2668.y);
        let x_2671 : vec4<f32> = u_xlat7;
        let x_2674 : vec2<f32> = ((vec2<f32>(x_2671.x, x_2671.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2675 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2674.x, x_2675.y, x_2674.y, x_2675.w);
        let x_2678 : f32 = u_xlat59.x;
        u_xlat8.y = x_2678;
        let x_2681 : f32 = u_xlat10.y;
        u_xlat8.w = x_2681;
        let x_2683 : vec4<f32> = u_xlat8;
        let x_2684 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2683 + x_2684);
        let x_2686 : vec4<f32> = u_xlat7;
        let x_2689 : vec2<f32> = ((vec2<f32>(x_2686.y, x_2686.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2690 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2690.x, x_2689.x, x_2690.z, x_2689.y);
        let x_2692 : vec4<f32> = u_xlat7;
        let x_2695 : vec2<f32> = ((vec2<f32>(x_2692.y, x_2692.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2696 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2695.x, x_2696.y, x_2695.y, x_2696.w);
        let x_2699 : f32 = u_xlat59.y;
        u_xlat10.y = x_2699;
        let x_2701 : vec4<f32> = u_xlat10;
        let x_2702 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_2701 + x_2702);
        let x_2704 : vec4<f32> = u_xlat8;
        let x_2705 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_2704 / x_2705);
        let x_2707 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_2707 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2709 : vec4<f32> = u_xlat10;
        let x_2710 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_2709 / x_2710);
        let x_2712 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_2712 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2714 : vec4<f32> = u_xlat8;
        let x_2717 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_2714.w, x_2714.x, x_2714.y, x_2714.z) * vec4<f32>(x_2717.x, x_2717.x, x_2717.x, x_2717.x));
        let x_2720 : vec4<f32> = u_xlat10;
        let x_2723 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_2720.x, x_2720.w, x_2720.y, x_2720.z) * vec4<f32>(x_2723.y, x_2723.y, x_2723.y, x_2723.y));
        let x_2726 : vec4<f32> = u_xlat8;
        let x_2727 : vec3<f32> = vec3<f32>(x_2726.y, x_2726.z, x_2726.w);
        let x_2728 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2727.x, x_2728.y, x_2727.y, x_2727.z);
        let x_2731 : f32 = u_xlat10.x;
        u_xlat11.y = x_2731;
        let x_2733 : vec2<f32> = u_xlat58;
        let x_2736 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2739 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_2733.x, x_2733.y, x_2733.x, x_2733.y) * vec4<f32>(x_2736.x, x_2736.y, x_2736.x, x_2736.y)) + vec4<f32>(x_2739.x, x_2739.y, x_2739.z, x_2739.y));
        let x_2742 : vec2<f32> = u_xlat58;
        let x_2744 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2747 : vec4<f32> = u_xlat11;
        let x_2749 : vec2<f32> = ((x_2742 * vec2<f32>(x_2744.x, x_2744.y)) + vec2<f32>(x_2747.w, x_2747.y));
        let x_2750 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2749.x, x_2749.y, x_2750.z, x_2750.w);
        let x_2753 : f32 = u_xlat11.y;
        u_xlat8.y = x_2753;
        let x_2756 : f32 = u_xlat10.z;
        u_xlat11.y = x_2756;
        let x_2758 : vec2<f32> = u_xlat58;
        let x_2761 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2764 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_2758.x, x_2758.y, x_2758.x, x_2758.y) * vec4<f32>(x_2761.x, x_2761.y, x_2761.x, x_2761.y)) + vec4<f32>(x_2764.x, x_2764.y, x_2764.z, x_2764.y));
        let x_2768 : vec2<f32> = u_xlat58;
        let x_2770 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2773 : vec4<f32> = u_xlat11;
        u_xlat65 = ((x_2768 * vec2<f32>(x_2770.x, x_2770.y)) + vec2<f32>(x_2773.w, x_2773.y));
        let x_2777 : f32 = u_xlat11.y;
        u_xlat8.z = x_2777;
        let x_2779 : vec2<f32> = u_xlat58;
        let x_2782 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2785 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_2779.x, x_2779.y, x_2779.x, x_2779.y) * vec4<f32>(x_2782.x, x_2782.y, x_2782.x, x_2782.y)) + vec4<f32>(x_2785.x, x_2785.y, x_2785.x, x_2785.z));
        let x_2789 : f32 = u_xlat10.w;
        u_xlat11.y = x_2789;
        let x_2791 : vec2<f32> = u_xlat58;
        let x_2794 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2797 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_2791.x, x_2791.y, x_2791.x, x_2791.y) * vec4<f32>(x_2794.x, x_2794.y, x_2794.x, x_2794.y)) + vec4<f32>(x_2797.x, x_2797.y, x_2797.z, x_2797.y));
        let x_2800 : vec2<f32> = u_xlat58;
        let x_2802 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2805 : vec4<f32> = u_xlat11;
        let x_2807 : vec2<f32> = ((x_2800 * vec2<f32>(x_2802.x, x_2802.y)) + vec2<f32>(x_2805.w, x_2805.y));
        let x_2808 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_2807.x, x_2807.y, x_2808.z);
        let x_2811 : f32 = u_xlat11.y;
        u_xlat8.w = x_2811;
        let x_2813 : vec2<f32> = u_xlat58;
        let x_2815 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2818 : vec4<f32> = u_xlat8;
        let x_2820 : vec2<f32> = ((x_2813 * vec2<f32>(x_2815.x, x_2815.y)) + vec2<f32>(x_2818.x, x_2818.w));
        let x_2821 : vec4<f32> = u_xlat17;
        u_xlat17 = vec4<f32>(x_2820.x, x_2820.y, x_2821.z, x_2821.w);
        let x_2823 : vec4<f32> = u_xlat11;
        let x_2824 : vec3<f32> = vec3<f32>(x_2823.x, x_2823.z, x_2823.w);
        let x_2825 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2824.x, x_2825.y, x_2824.y, x_2824.z);
        let x_2827 : vec2<f32> = u_xlat58;
        let x_2830 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2833 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_2827.x, x_2827.y, x_2827.x, x_2827.y) * vec4<f32>(x_2830.x, x_2830.y, x_2830.x, x_2830.y)) + vec4<f32>(x_2833.x, x_2833.y, x_2833.z, x_2833.y));
        let x_2836 : vec2<f32> = u_xlat58;
        let x_2838 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2841 : vec4<f32> = u_xlat10;
        u_xlat62 = ((x_2836 * vec2<f32>(x_2838.x, x_2838.y)) + vec2<f32>(x_2841.w, x_2841.y));
        let x_2845 : f32 = u_xlat8.x;
        u_xlat10.x = x_2845;
        let x_2847 : vec2<f32> = u_xlat58;
        let x_2849 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2852 : vec4<f32> = u_xlat10;
        u_xlat58 = ((x_2847 * vec2<f32>(x_2849.x, x_2849.y)) + vec2<f32>(x_2852.x, x_2852.y));
        let x_2855 : vec4<f32> = u_xlat7;
        let x_2857 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_2855.x, x_2855.x, x_2855.x, x_2855.x) * x_2857);
        let x_2859 : vec4<f32> = u_xlat7;
        let x_2861 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_2859.y, x_2859.y, x_2859.y, x_2859.y) * x_2861);
        let x_2863 : vec4<f32> = u_xlat7;
        let x_2865 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_2863.z, x_2863.z, x_2863.z, x_2863.z) * x_2865);
        let x_2867 : vec4<f32> = u_xlat7;
        let x_2869 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_2867.w, x_2867.w, x_2867.w, x_2867.w) * x_2869);
        let x_2872 : vec4<f32> = u_xlat12;
        let x_2873 : vec2<f32> = vec2<f32>(x_2872.x, x_2872.y);
        let x_2875 : f32 = vs_INTERP3.z;
        txVec43 = vec3<f32>(x_2873.x, x_2873.y, x_2875);
        let x_2882 : vec3<f32> = txVec43;
        let x_2884 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2882.xy, x_2882.z);
        u_xlat8.x = x_2884;
        let x_2887 : vec4<f32> = u_xlat12;
        let x_2888 : vec2<f32> = vec2<f32>(x_2887.z, x_2887.w);
        let x_2890 : f32 = vs_INTERP3.z;
        txVec44 = vec3<f32>(x_2888.x, x_2888.y, x_2890);
        let x_2898 : vec3<f32> = txVec44;
        let x_2900 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2898.xy, x_2898.z);
        u_xlat86 = x_2900;
        let x_2901 : f32 = u_xlat86;
        let x_2903 : f32 = u_xlat18.y;
        u_xlat86 = (x_2901 * x_2903);
        let x_2906 : f32 = u_xlat18.x;
        let x_2908 : f32 = u_xlat8.x;
        let x_2910 : f32 = u_xlat86;
        u_xlat8.x = ((x_2906 * x_2908) + x_2910);
        let x_2914 : vec4<f32> = u_xlat13;
        let x_2915 : vec2<f32> = vec2<f32>(x_2914.x, x_2914.y);
        let x_2917 : f32 = vs_INTERP3.z;
        txVec45 = vec3<f32>(x_2915.x, x_2915.y, x_2917);
        let x_2924 : vec3<f32> = txVec45;
        let x_2926 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2924.xy, x_2924.z);
        u_xlat86 = x_2926;
        let x_2928 : f32 = u_xlat18.z;
        let x_2929 : f32 = u_xlat86;
        let x_2932 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2928 * x_2929) + x_2932);
        let x_2936 : vec4<f32> = u_xlat15;
        let x_2937 : vec2<f32> = vec2<f32>(x_2936.x, x_2936.y);
        let x_2939 : f32 = vs_INTERP3.z;
        txVec46 = vec3<f32>(x_2937.x, x_2937.y, x_2939);
        let x_2946 : vec3<f32> = txVec46;
        let x_2948 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2946.xy, x_2946.z);
        u_xlat86 = x_2948;
        let x_2950 : f32 = u_xlat18.w;
        let x_2951 : f32 = u_xlat86;
        let x_2954 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2950 * x_2951) + x_2954);
        let x_2958 : vec4<f32> = u_xlat14;
        let x_2959 : vec2<f32> = vec2<f32>(x_2958.x, x_2958.y);
        let x_2961 : f32 = vs_INTERP3.z;
        txVec47 = vec3<f32>(x_2959.x, x_2959.y, x_2961);
        let x_2968 : vec3<f32> = txVec47;
        let x_2970 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2968.xy, x_2968.z);
        u_xlat86 = x_2970;
        let x_2972 : f32 = u_xlat19.x;
        let x_2973 : f32 = u_xlat86;
        let x_2976 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2972 * x_2973) + x_2976);
        let x_2980 : vec4<f32> = u_xlat14;
        let x_2981 : vec2<f32> = vec2<f32>(x_2980.z, x_2980.w);
        let x_2983 : f32 = vs_INTERP3.z;
        txVec48 = vec3<f32>(x_2981.x, x_2981.y, x_2983);
        let x_2990 : vec3<f32> = txVec48;
        let x_2992 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2990.xy, x_2990.z);
        u_xlat86 = x_2992;
        let x_2994 : f32 = u_xlat19.y;
        let x_2995 : f32 = u_xlat86;
        let x_2998 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2994 * x_2995) + x_2998);
        let x_3002 : vec2<f32> = u_xlat65;
        let x_3004 : f32 = vs_INTERP3.z;
        txVec49 = vec3<f32>(x_3002.x, x_3002.y, x_3004);
        let x_3011 : vec3<f32> = txVec49;
        let x_3013 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3011.xy, x_3011.z);
        u_xlat86 = x_3013;
        let x_3015 : f32 = u_xlat19.z;
        let x_3016 : f32 = u_xlat86;
        let x_3019 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_3015 * x_3016) + x_3019);
        let x_3023 : vec4<f32> = u_xlat15;
        let x_3024 : vec2<f32> = vec2<f32>(x_3023.z, x_3023.w);
        let x_3026 : f32 = vs_INTERP3.z;
        txVec50 = vec3<f32>(x_3024.x, x_3024.y, x_3026);
        let x_3033 : vec3<f32> = txVec50;
        let x_3035 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3033.xy, x_3033.z);
        u_xlat86 = x_3035;
        let x_3037 : f32 = u_xlat19.w;
        let x_3038 : f32 = u_xlat86;
        let x_3041 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_3037 * x_3038) + x_3041);
        let x_3045 : vec4<f32> = u_xlat16;
        let x_3046 : vec2<f32> = vec2<f32>(x_3045.x, x_3045.y);
        let x_3048 : f32 = vs_INTERP3.z;
        txVec51 = vec3<f32>(x_3046.x, x_3046.y, x_3048);
        let x_3055 : vec3<f32> = txVec51;
        let x_3057 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3055.xy, x_3055.z);
        u_xlat86 = x_3057;
        let x_3059 : f32 = u_xlat20.x;
        let x_3060 : f32 = u_xlat86;
        let x_3063 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_3059 * x_3060) + x_3063);
        let x_3067 : vec4<f32> = u_xlat16;
        let x_3068 : vec2<f32> = vec2<f32>(x_3067.z, x_3067.w);
        let x_3070 : f32 = vs_INTERP3.z;
        txVec52 = vec3<f32>(x_3068.x, x_3068.y, x_3070);
        let x_3077 : vec3<f32> = txVec52;
        let x_3079 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3077.xy, x_3077.z);
        u_xlat86 = x_3079;
        let x_3081 : f32 = u_xlat20.y;
        let x_3082 : f32 = u_xlat86;
        let x_3085 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_3081 * x_3082) + x_3085);
        let x_3089 : vec3<f32> = u_xlat34;
        let x_3090 : vec2<f32> = vec2<f32>(x_3089.x, x_3089.y);
        let x_3092 : f32 = vs_INTERP3.z;
        txVec53 = vec3<f32>(x_3090.x, x_3090.y, x_3092);
        let x_3099 : vec3<f32> = txVec53;
        let x_3101 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3099.xy, x_3099.z);
        u_xlat34.x = x_3101;
        let x_3104 : f32 = u_xlat20.z;
        let x_3106 : f32 = u_xlat34.x;
        let x_3109 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_3104 * x_3106) + x_3109);
        let x_3113 : vec4<f32> = u_xlat17;
        let x_3114 : vec2<f32> = vec2<f32>(x_3113.x, x_3113.y);
        let x_3116 : f32 = vs_INTERP3.z;
        txVec54 = vec3<f32>(x_3114.x, x_3114.y, x_3116);
        let x_3123 : vec3<f32> = txVec54;
        let x_3125 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3123.xy, x_3123.z);
        u_xlat34.x = x_3125;
        let x_3128 : f32 = u_xlat20.w;
        let x_3130 : f32 = u_xlat34.x;
        let x_3133 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_3128 * x_3130) + x_3133);
        let x_3137 : vec4<f32> = u_xlat11;
        let x_3138 : vec2<f32> = vec2<f32>(x_3137.x, x_3137.y);
        let x_3140 : f32 = vs_INTERP3.z;
        txVec55 = vec3<f32>(x_3138.x, x_3138.y, x_3140);
        let x_3147 : vec3<f32> = txVec55;
        let x_3149 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3147.xy, x_3147.z);
        u_xlat34.x = x_3149;
        let x_3152 : f32 = u_xlat7.x;
        let x_3154 : f32 = u_xlat34.x;
        let x_3157 : f32 = u_xlat8.x;
        u_xlat7.x = ((x_3152 * x_3154) + x_3157);
        let x_3161 : vec4<f32> = u_xlat11;
        let x_3162 : vec2<f32> = vec2<f32>(x_3161.z, x_3161.w);
        let x_3164 : f32 = vs_INTERP3.z;
        txVec56 = vec3<f32>(x_3162.x, x_3162.y, x_3164);
        let x_3171 : vec3<f32> = txVec56;
        let x_3173 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3171.xy, x_3171.z);
        u_xlat8.x = x_3173;
        let x_3176 : f32 = u_xlat7.y;
        let x_3178 : f32 = u_xlat8.x;
        let x_3181 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_3176 * x_3178) + x_3181);
        let x_3185 : vec2<f32> = u_xlat62;
        let x_3187 : f32 = vs_INTERP3.z;
        txVec57 = vec3<f32>(x_3185.x, x_3185.y, x_3187);
        let x_3195 : vec3<f32> = txVec57;
        let x_3197 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3195.xy, x_3195.z);
        u_xlat33 = x_3197;
        let x_3199 : f32 = u_xlat7.z;
        let x_3200 : f32 = u_xlat33;
        let x_3203 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_3199 * x_3200) + x_3203);
        let x_3207 : vec2<f32> = u_xlat58;
        let x_3209 : f32 = vs_INTERP3.z;
        txVec58 = vec3<f32>(x_3207.x, x_3207.y, x_3209);
        let x_3216 : vec3<f32> = txVec58;
        let x_3218 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3216.xy, x_3216.z);
        u_xlat58.x = x_3218;
        let x_3221 : f32 = u_xlat7.w;
        let x_3223 : f32 = u_xlat58.x;
        let x_3226 : f32 = u_xlat7.x;
        u_xlat78 = ((x_3221 * x_3223) + x_3226);
      }
    }
  } else {
    let x_3230 : vec4<f32> = vs_INTERP3;
    let x_3231 : vec2<f32> = vec2<f32>(x_3230.x, x_3230.y);
    let x_3233 : f32 = vs_INTERP3.z;
    txVec59 = vec3<f32>(x_3231.x, x_3231.y, x_3233);
    let x_3240 : vec3<f32> = txVec59;
    let x_3242 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3240.xy, x_3240.z);
    u_xlat78 = x_3242;
  }
  let x_3243 : f32 = u_xlat78;
  let x_3245 : f32 = x_249.x_MainLightShadowParams.x;
  let x_3247 : f32 = u_xlat80;
  u_xlat78 = ((x_3243 * x_3245) + x_3247);
  let x_3250 : f32 = vs_INTERP3.z;
  u_xlatb80 = (0.0f >= x_3250);
  let x_3253 : f32 = vs_INTERP3.z;
  u_xlatb58 = (x_3253 >= 1.0f);
  let x_3255 : bool = u_xlatb80;
  let x_3256 : bool = u_xlatb58;
  u_xlatb80 = (x_3255 | x_3256);
  let x_3258 : bool = u_xlatb80;
  let x_3259 : f32 = u_xlat78;
  u_xlat78 = select(x_3259, 1.0f, x_3258);
  let x_3261 : vec3<f32> = vs_INTERP8;
  let x_3263 : vec3<f32> = x_75.x_WorldSpaceCameraPos;
  let x_3265 : vec3<f32> = (x_3261 + -(x_3263));
  let x_3266 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3265.x, x_3265.y, x_3265.z, x_3266.w);
  let x_3268 : vec4<f32> = u_xlat7;
  let x_3270 : vec4<f32> = u_xlat7;
  u_xlat80 = dot(vec3<f32>(x_3268.x, x_3268.y, x_3268.z), vec3<f32>(x_3270.x, x_3270.y, x_3270.z));
  let x_3273 : f32 = u_xlat80;
  let x_3275 : f32 = x_249.x_MainLightShadowParams.z;
  let x_3278 : f32 = x_249.x_MainLightShadowParams.w;
  u_xlat58.x = ((x_3273 * x_3275) + x_3278);
  let x_3282 : f32 = u_xlat58.x;
  u_xlat58.x = clamp(x_3282, 0.0f, 1.0f);
  let x_3285 : f32 = u_xlat78;
  u_xlat84 = (-(x_3285) + 1.0f);
  let x_3289 : f32 = u_xlat58.x;
  let x_3290 : f32 = u_xlat84;
  let x_3292 : f32 = u_xlat78;
  u_xlat78 = ((x_3289 * x_3290) + x_3292);
  let x_3294 : vec3<f32> = u_xlat1;
  let x_3296 : vec4<f32> = u_xlat3;
  u_xlat58.x = dot(-(x_3294), vec3<f32>(x_3296.x, x_3296.y, x_3296.z));
  let x_3301 : f32 = u_xlat58.x;
  let x_3303 : f32 = u_xlat58.x;
  u_xlat58.x = (x_3301 + x_3303);
  let x_3306 : vec4<f32> = u_xlat3;
  let x_3308 : vec2<f32> = u_xlat58;
  let x_3312 : vec3<f32> = u_xlat1;
  let x_3314 : vec3<f32> = ((vec3<f32>(x_3306.x, x_3306.y, x_3306.z) * -(vec3<f32>(x_3308.x, x_3308.x, x_3308.x))) + -(x_3312));
  let x_3315 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3314.x, x_3314.y, x_3314.z, x_3315.w);
  let x_3317 : vec4<f32> = u_xlat3;
  let x_3319 : vec3<f32> = u_xlat1;
  u_xlat58.x = dot(vec3<f32>(x_3317.x, x_3317.y, x_3317.z), x_3319);
  let x_3323 : f32 = u_xlat58.x;
  u_xlat58.x = clamp(x_3323, 0.0f, 1.0f);
  let x_3327 : f32 = u_xlat58.x;
  u_xlat58.x = (-(x_3327) + 1.0f);
  let x_3332 : f32 = u_xlat58.x;
  let x_3334 : f32 = u_xlat58.x;
  u_xlat58.x = (x_3332 * x_3334);
  let x_3338 : f32 = u_xlat58.x;
  let x_3340 : f32 = u_xlat58.x;
  u_xlat58.x = (x_3338 * x_3340);
  let x_3343 : f32 = u_xlat54;
  u_xlat84 = ((-(x_3343) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_3349 : f32 = u_xlat54;
  let x_3350 : f32 = u_xlat84;
  u_xlat54 = (x_3349 * x_3350);
  let x_3352 : f32 = u_xlat54;
  u_xlat54 = (x_3352 * 6.0f);
  let x_3363 : vec4<f32> = u_xlat7;
  let x_3365 : f32 = u_xlat54;
  let x_3366 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_3363.x, x_3363.y, x_3363.z), x_3365);
  u_xlat7 = x_3366;
  let x_3368 : f32 = u_xlat7.w;
  u_xlat54 = (x_3368 + -1.0f);
  let x_3371 : f32 = x_132.unity_SpecCube0_HDR.w;
  let x_3372 : f32 = u_xlat54;
  u_xlat54 = ((x_3371 * x_3372) + 1.0f);
  let x_3375 : f32 = u_xlat54;
  u_xlat54 = max(x_3375, 0.0f);
  let x_3377 : f32 = u_xlat54;
  u_xlat54 = log2(x_3377);
  let x_3379 : f32 = u_xlat54;
  let x_3381 : f32 = x_132.unity_SpecCube0_HDR.y;
  u_xlat54 = (x_3379 * x_3381);
  let x_3383 : f32 = u_xlat54;
  u_xlat54 = exp2(x_3383);
  let x_3385 : f32 = u_xlat54;
  let x_3387 : f32 = x_132.unity_SpecCube0_HDR.x;
  u_xlat54 = (x_3385 * x_3387);
  let x_3389 : vec4<f32> = u_xlat7;
  let x_3391 : f32 = u_xlat54;
  let x_3393 : vec3<f32> = (vec3<f32>(x_3389.x, x_3389.y, x_3389.z) * vec3<f32>(x_3391, x_3391, x_3391));
  let x_3394 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3393.x, x_3393.y, x_3393.z, x_3394.w);
  let x_3396 : f32 = u_xlat81;
  let x_3398 : f32 = u_xlat81;
  let x_3402 : vec2<f32> = ((vec2<f32>(x_3396, x_3396) * vec2<f32>(x_3398, x_3398)) + vec2<f32>(-1.0f, 1.0f));
  let x_3403 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3402.x, x_3402.y, x_3403.z, x_3403.w);
  let x_3406 : f32 = u_xlat8.y;
  u_xlat54 = (1.0f / x_3406);
  let x_3409 : f32 = u_xlat5.x;
  u_xlat81 = (x_3409 + -0.03999999910593032837f);
  let x_3413 : f32 = u_xlat58.x;
  let x_3414 : f32 = u_xlat81;
  u_xlat81 = ((x_3413 * x_3414) + 0.03999999910593032837f);
  let x_3418 : f32 = u_xlat54;
  let x_3419 : f32 = u_xlat81;
  u_xlat54 = (x_3418 * x_3419);
  let x_3421 : f32 = u_xlat54;
  let x_3423 : vec4<f32> = u_xlat7;
  let x_3425 : vec3<f32> = (vec3<f32>(x_3421, x_3421, x_3421) * vec3<f32>(x_3423.x, x_3423.y, x_3423.z));
  let x_3426 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3425.x, x_3425.y, x_3425.z, x_3426.w);
  let x_3428 : vec3<f32> = u_xlat31;
  let x_3429 : vec3<f32> = u_xlat4;
  let x_3431 : vec4<f32> = u_xlat7;
  let x_3433 : vec3<f32> = ((x_3428 * x_3429) + vec3<f32>(x_3431.x, x_3431.y, x_3431.z));
  let x_3434 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_3433.x, x_3433.y, x_3433.z, x_3434.w);
  let x_3436 : f32 = u_xlat78;
  let x_3438 : f32 = x_132.unity_LightData.z;
  u_xlat78 = (x_3436 * x_3438);
  let x_3440 : vec4<f32> = u_xlat3;
  let x_3443 : vec4<f32> = x_75.x_MainLightPosition;
  u_xlat54 = dot(vec3<f32>(x_3440.x, x_3440.y, x_3440.z), vec3<f32>(x_3443.x, x_3443.y, x_3443.z));
  let x_3446 : f32 = u_xlat54;
  u_xlat54 = clamp(x_3446, 0.0f, 1.0f);
  let x_3448 : f32 = u_xlat78;
  let x_3449 : f32 = u_xlat54;
  u_xlat78 = (x_3448 * x_3449);
  let x_3451 : f32 = u_xlat78;
  let x_3454 : vec4<f32> = x_75.x_MainLightColor;
  let x_3456 : vec3<f32> = (vec3<f32>(x_3451, x_3451, x_3451) * vec3<f32>(x_3454.x, x_3454.y, x_3454.z));
  let x_3457 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3456.x, x_3456.y, x_3456.z, x_3457.w);
  let x_3459 : vec3<f32> = u_xlat1;
  let x_3461 : vec4<f32> = x_75.x_MainLightPosition;
  u_xlat34 = (x_3459 + vec3<f32>(x_3461.x, x_3461.y, x_3461.z));
  let x_3464 : vec3<f32> = u_xlat34;
  let x_3465 : vec3<f32> = u_xlat34;
  u_xlat78 = dot(x_3464, x_3465);
  let x_3467 : f32 = u_xlat78;
  u_xlat78 = max(x_3467, 1.17549435e-38f);
  let x_3470 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_3470);
  let x_3472 : f32 = u_xlat78;
  let x_3474 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_3472, x_3472, x_3472) * x_3474);
  let x_3476 : vec4<f32> = u_xlat3;
  let x_3478 : vec3<f32> = u_xlat34;
  u_xlat78 = dot(vec3<f32>(x_3476.x, x_3476.y, x_3476.z), x_3478);
  let x_3480 : f32 = u_xlat78;
  u_xlat78 = clamp(x_3480, 0.0f, 1.0f);
  let x_3483 : vec4<f32> = x_75.x_MainLightPosition;
  let x_3485 : vec3<f32> = u_xlat34;
  u_xlat54 = dot(vec3<f32>(x_3483.x, x_3483.y, x_3483.z), x_3485);
  let x_3487 : f32 = u_xlat54;
  u_xlat54 = clamp(x_3487, 0.0f, 1.0f);
  let x_3489 : f32 = u_xlat78;
  let x_3490 : f32 = u_xlat78;
  u_xlat78 = (x_3489 * x_3490);
  let x_3492 : f32 = u_xlat78;
  let x_3494 : f32 = u_xlat8.x;
  u_xlat78 = ((x_3492 * x_3494) + 1.00001001358032226562f);
  let x_3498 : f32 = u_xlat54;
  let x_3499 : f32 = u_xlat54;
  u_xlat54 = (x_3498 * x_3499);
  let x_3501 : f32 = u_xlat78;
  let x_3502 : f32 = u_xlat78;
  u_xlat78 = (x_3501 * x_3502);
  let x_3504 : f32 = u_xlat54;
  u_xlat54 = max(x_3504, 0.10000000149011611938f);
  let x_3507 : f32 = u_xlat78;
  let x_3508 : f32 = u_xlat54;
  u_xlat78 = (x_3507 * x_3508);
  let x_3511 : f32 = u_xlat6.x;
  let x_3512 : f32 = u_xlat78;
  u_xlat78 = (x_3511 * x_3512);
  let x_3514 : f32 = u_xlat82;
  let x_3515 : f32 = u_xlat78;
  u_xlat78 = (x_3514 / x_3515);
  let x_3517 : f32 = u_xlat78;
  let x_3521 : vec3<f32> = u_xlat4;
  u_xlat34 = ((vec3<f32>(x_3517, x_3517, x_3517) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_3521);
  let x_3523 : vec4<f32> = u_xlat7;
  let x_3525 : vec3<f32> = u_xlat34;
  let x_3526 : vec3<f32> = (vec3<f32>(x_3523.x, x_3523.y, x_3523.z) * x_3525);
  let x_3527 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3526.x, x_3526.y, x_3526.z, x_3527.w);
  let x_3531 : f32 = x_75.x_AdditionalLightsCount.x;
  let x_3533 : f32 = x_132.unity_LightData.y;
  u_xlat78 = min(x_3531, x_3533);
  let x_3536 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_3536));
  let x_3539 : f32 = u_xlat80;
  let x_3542 : f32 = x_249.x_AdditionalShadowFadeParams.x;
  let x_3545 : f32 = x_249.x_AdditionalShadowFadeParams.y;
  u_xlat54 = ((x_3539 * x_3542) + x_3545);
  let x_3547 : f32 = u_xlat54;
  u_xlat54 = clamp(x_3547, 0.0f, 1.0f);
  u_xlat34.x = 0.0f;
  u_xlat34.y = 0.0f;
  u_xlat34.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_3558 : u32 = u_xlatu_loop_1;
    let x_3559 : u32 = u_xlatu78;
    if ((x_3558 < x_3559)) {
    } else {
      break;
    }
    let x_3562 : u32 = u_xlatu_loop_1;
    u_xlatu81 = (x_3562 >> 2u);
    let x_3565 : u32 = u_xlatu_loop_1;
    u_xlati83 = bitcast<i32>((x_3565 & 3u));
    let x_3568 : u32 = u_xlatu81;
    let x_3571 : vec4<f32> = x_132.unity_LightIndices[bitcast<i32>(x_3568)];
    let x_3581 : i32 = u_xlati83;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_3586 : vec4<u32> = indexable[x_3581];
    u_xlat81 = dot(x_3571, bitcast<vec4<f32>>(x_3586));
    let x_3590 : f32 = u_xlat81;
    u_xlati81 = i32(x_3590);
    let x_3592 : vec3<f32> = vs_INTERP8;
    let x_3603 : i32 = u_xlati81;
    let x_3605 : vec4<f32> = x_3602.x_AdditionalLightsPosition[x_3603];
    let x_3608 : i32 = u_xlati81;
    let x_3610 : vec4<f32> = x_3602.x_AdditionalLightsPosition[x_3608];
    let x_3612 : vec3<f32> = ((-(x_3592) * vec3<f32>(x_3605.w, x_3605.w, x_3605.w)) + vec3<f32>(x_3610.x, x_3610.y, x_3610.z));
    let x_3613 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3612.x, x_3612.y, x_3612.z, x_3613.w);
    let x_3616 : vec4<f32> = u_xlat9;
    let x_3618 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_3616.x, x_3616.y, x_3616.z), vec3<f32>(x_3618.x, x_3618.y, x_3618.z));
    let x_3621 : f32 = u_xlat83;
    u_xlat83 = max(x_3621, 0.00006103515625f);
    let x_3624 : f32 = u_xlat83;
    u_xlat58.x = inverseSqrt(x_3624);
    let x_3627 : vec2<f32> = u_xlat58;
    let x_3629 : vec4<f32> = u_xlat9;
    let x_3631 : vec3<f32> = (vec3<f32>(x_3627.x, x_3627.x, x_3627.x) * vec3<f32>(x_3629.x, x_3629.y, x_3629.z));
    let x_3632 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3631.x, x_3631.y, x_3631.z, x_3632.w);
    let x_3634 : f32 = u_xlat83;
    u_xlat84 = (1.0f / x_3634);
    let x_3636 : f32 = u_xlat83;
    let x_3637 : i32 = u_xlati81;
    let x_3639 : f32 = x_3602.x_AdditionalLightsAttenuation[x_3637].x;
    u_xlat83 = (x_3636 * x_3639);
    let x_3641 : f32 = u_xlat83;
    let x_3643 : f32 = u_xlat83;
    u_xlat83 = ((-(x_3641) * x_3643) + 1.0f);
    let x_3646 : f32 = u_xlat83;
    u_xlat83 = max(x_3646, 0.0f);
    let x_3648 : f32 = u_xlat83;
    let x_3649 : f32 = u_xlat83;
    u_xlat83 = (x_3648 * x_3649);
    let x_3651 : f32 = u_xlat83;
    let x_3652 : f32 = u_xlat84;
    u_xlat83 = (x_3651 * x_3652);
    let x_3654 : i32 = u_xlati81;
    let x_3656 : vec4<f32> = x_3602.x_AdditionalLightsSpotDir[x_3654];
    let x_3658 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_3656.x, x_3656.y, x_3656.z), vec3<f32>(x_3658.x, x_3658.y, x_3658.z));
    let x_3661 : f32 = u_xlat84;
    let x_3662 : i32 = u_xlati81;
    let x_3664 : f32 = x_3602.x_AdditionalLightsAttenuation[x_3662].z;
    let x_3666 : i32 = u_xlati81;
    let x_3668 : f32 = x_3602.x_AdditionalLightsAttenuation[x_3666].w;
    u_xlat84 = ((x_3661 * x_3664) + x_3668);
    let x_3670 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3670, 0.0f, 1.0f);
    let x_3672 : f32 = u_xlat84;
    let x_3673 : f32 = u_xlat84;
    u_xlat84 = (x_3672 * x_3673);
    let x_3675 : f32 = u_xlat83;
    let x_3676 : f32 = u_xlat84;
    u_xlat83 = (x_3675 * x_3676);
    let x_3680 : i32 = u_xlati81;
    let x_3682 : f32 = x_249.x_AdditionalShadowParams[x_3680].w;
    u_xlati84 = i32(x_3682);
    let x_3685 : i32 = u_xlati84;
    u_xlatb85 = (x_3685 >= 0i);
    let x_3687 : bool = u_xlatb85;
    if (x_3687) {
      let x_3691 : i32 = u_xlati81;
      let x_3693 : f32 = x_249.x_AdditionalShadowParams[x_3691].z;
      u_xlatb85 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_3693, x_3693, x_3693, x_3693))));
      let x_3698 : bool = u_xlatb85;
      if (x_3698) {
        let x_3703 : vec4<f32> = u_xlat10;
        let x_3706 : vec4<f32> = u_xlat10;
        let x_3709 : vec4<bool> = (abs(vec4<f32>(x_3703.z, x_3703.z, x_3703.y, x_3703.z)) >= abs(vec4<f32>(x_3706.x, x_3706.y, x_3706.x, x_3706.x)));
        let x_3711 : vec3<bool> = vec3<bool>(x_3709.x, x_3709.y, x_3709.z);
        let x_3712 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3711.x, x_3711.y, x_3711.z, x_3712.w);
        let x_3715 : bool = u_xlatb11.y;
        let x_3717 : bool = u_xlatb11.x;
        u_xlatb85 = (x_3715 & x_3717);
        let x_3719 : vec4<f32> = u_xlat10;
        let x_3722 : vec4<bool> = (-(vec4<f32>(x_3719.z, x_3719.y, x_3719.z, x_3719.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_3723 : vec3<bool> = vec3<bool>(x_3722.x, x_3722.y, x_3722.w);
        let x_3724 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3723.x, x_3723.y, x_3724.z, x_3723.z);
        let x_3727 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_3727);
        let x_3732 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_3732);
        let x_3738 : bool = u_xlatb11.w;
        u_xlat87 = select(0.0f, 1.0f, x_3738);
        let x_3741 : bool = u_xlatb11.z;
        if (x_3741) {
          let x_3746 : f32 = u_xlat11.y;
          x_3742 = x_3746;
        } else {
          let x_3748 : f32 = u_xlat87;
          x_3742 = x_3748;
        }
        let x_3749 : f32 = x_3742;
        u_xlat87 = x_3749;
        let x_3751 : bool = u_xlatb85;
        if (x_3751) {
          let x_3756 : f32 = u_xlat11.x;
          x_3752 = x_3756;
        } else {
          let x_3758 : f32 = u_xlat87;
          x_3752 = x_3758;
        }
        let x_3759 : f32 = x_3752;
        u_xlat85 = x_3759;
        let x_3760 : i32 = u_xlati81;
        let x_3762 : f32 = x_249.x_AdditionalShadowParams[x_3760].w;
        u_xlat87 = trunc(x_3762);
        let x_3764 : f32 = u_xlat85;
        let x_3765 : f32 = u_xlat87;
        u_xlat85 = (x_3764 + x_3765);
        let x_3767 : f32 = u_xlat85;
        u_xlati84 = i32(x_3767);
      }
      let x_3769 : i32 = u_xlati84;
      u_xlati84 = (x_3769 << bitcast<u32>(2i));
      let x_3771 : vec3<f32> = vs_INTERP8;
      let x_3774 : i32 = u_xlati84;
      let x_3777 : i32 = u_xlati84;
      let x_3781 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_3774 + 1i) / 4i)][((x_3777 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_3771.y, x_3771.y, x_3771.y, x_3771.y) * x_3781);
      let x_3783 : i32 = u_xlati84;
      let x_3785 : i32 = u_xlati84;
      let x_3788 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[(x_3783 / 4i)][(x_3785 % 4i)];
      let x_3789 : vec3<f32> = vs_INTERP8;
      let x_3792 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3788 * vec4<f32>(x_3789.x, x_3789.x, x_3789.x, x_3789.x)) + x_3792);
      let x_3794 : i32 = u_xlati84;
      let x_3797 : i32 = u_xlati84;
      let x_3801 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_3794 + 2i) / 4i)][((x_3797 + 2i) % 4i)];
      let x_3802 : vec3<f32> = vs_INTERP8;
      let x_3805 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3801 * vec4<f32>(x_3802.z, x_3802.z, x_3802.z, x_3802.z)) + x_3805);
      let x_3807 : vec4<f32> = u_xlat11;
      let x_3808 : i32 = u_xlati84;
      let x_3811 : i32 = u_xlati84;
      let x_3815 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_3808 + 3i) / 4i)][((x_3811 + 3i) % 4i)];
      u_xlat11 = (x_3807 + x_3815);
      let x_3817 : vec4<f32> = u_xlat11;
      let x_3819 : vec4<f32> = u_xlat11;
      let x_3821 : vec3<f32> = (vec3<f32>(x_3817.x, x_3817.y, x_3817.z) / vec3<f32>(x_3819.w, x_3819.w, x_3819.w));
      let x_3822 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3821.x, x_3821.y, x_3821.z, x_3822.w);
      let x_3825 : i32 = u_xlati81;
      let x_3827 : f32 = x_249.x_AdditionalShadowParams[x_3825].y;
      u_xlatb84 = (0.0f < x_3827);
      let x_3829 : bool = u_xlatb84;
      if (x_3829) {
        let x_3832 : i32 = u_xlati81;
        let x_3834 : f32 = x_249.x_AdditionalShadowParams[x_3832].y;
        u_xlatb84 = (1.0f == x_3834);
        let x_3836 : bool = u_xlatb84;
        if (x_3836) {
          let x_3839 : vec4<f32> = u_xlat11;
          let x_3843 : vec4<f32> = x_249.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_3839.x, x_3839.y, x_3839.x, x_3839.y) + x_3843);
          let x_3846 : vec4<f32> = u_xlat12;
          let x_3847 : vec2<f32> = vec2<f32>(x_3846.x, x_3846.y);
          let x_3849 : f32 = u_xlat11.z;
          txVec60 = vec3<f32>(x_3847.x, x_3847.y, x_3849);
          let x_3857 : vec3<f32> = txVec60;
          let x_3859 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3857.xy, x_3857.z);
          u_xlat13.x = x_3859;
          let x_3862 : vec4<f32> = u_xlat12;
          let x_3863 : vec2<f32> = vec2<f32>(x_3862.z, x_3862.w);
          let x_3865 : f32 = u_xlat11.z;
          txVec61 = vec3<f32>(x_3863.x, x_3863.y, x_3865);
          let x_3872 : vec3<f32> = txVec61;
          let x_3874 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3872.xy, x_3872.z);
          u_xlat13.y = x_3874;
          let x_3876 : vec4<f32> = u_xlat11;
          let x_3879 : vec4<f32> = x_249.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_3876.x, x_3876.y, x_3876.x, x_3876.y) + x_3879);
          let x_3882 : vec4<f32> = u_xlat12;
          let x_3883 : vec2<f32> = vec2<f32>(x_3882.x, x_3882.y);
          let x_3885 : f32 = u_xlat11.z;
          txVec62 = vec3<f32>(x_3883.x, x_3883.y, x_3885);
          let x_3892 : vec3<f32> = txVec62;
          let x_3894 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3892.xy, x_3892.z);
          u_xlat13.z = x_3894;
          let x_3897 : vec4<f32> = u_xlat12;
          let x_3898 : vec2<f32> = vec2<f32>(x_3897.z, x_3897.w);
          let x_3900 : f32 = u_xlat11.z;
          txVec63 = vec3<f32>(x_3898.x, x_3898.y, x_3900);
          let x_3907 : vec3<f32> = txVec63;
          let x_3909 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3907.xy, x_3907.z);
          u_xlat13.w = x_3909;
          let x_3911 : vec4<f32> = u_xlat13;
          u_xlat84 = dot(x_3911, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3914 : i32 = u_xlati81;
          let x_3916 : f32 = x_249.x_AdditionalShadowParams[x_3914].y;
          u_xlatb85 = (2.0f == x_3916);
          let x_3918 : bool = u_xlatb85;
          if (x_3918) {
            let x_3921 : vec4<f32> = u_xlat11;
            let x_3925 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_3928 : vec2<f32> = ((vec2<f32>(x_3921.x, x_3921.y) * vec2<f32>(x_3925.z, x_3925.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3929 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3928.x, x_3928.y, x_3929.z, x_3929.w);
            let x_3931 : vec4<f32> = u_xlat12;
            let x_3933 : vec2<f32> = floor(vec2<f32>(x_3931.x, x_3931.y));
            let x_3934 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3933.x, x_3933.y, x_3934.z, x_3934.w);
            let x_3937 : vec4<f32> = u_xlat11;
            let x_3940 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_3943 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3937.x, x_3937.y) * vec2<f32>(x_3940.z, x_3940.w)) + -(vec2<f32>(x_3943.x, x_3943.y)));
            let x_3947 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3947.x, x_3947.x, x_3947.y, x_3947.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3950 : vec4<f32> = u_xlat13;
            let x_3952 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3950.x, x_3950.x, x_3950.z, x_3950.z) * vec4<f32>(x_3952.x, x_3952.x, x_3952.z, x_3952.z));
            let x_3955 : vec4<f32> = u_xlat14;
            let x_3957 : vec2<f32> = (vec2<f32>(x_3955.y, x_3955.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3958 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3957.x, x_3958.y, x_3957.y, x_3958.w);
            let x_3960 : vec4<f32> = u_xlat14;
            let x_3963 : vec2<f32> = u_xlat64;
            let x_3965 : vec2<f32> = ((vec2<f32>(x_3960.x, x_3960.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3963));
            let x_3966 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3965.x, x_3965.y, x_3966.z, x_3966.w);
            let x_3969 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_3969) + vec2<f32>(1.0f, 1.0f));
            let x_3972 : vec2<f32> = u_xlat64;
            let x_3973 : vec2<f32> = min(x_3972, vec2<f32>(0.0f, 0.0f));
            let x_3974 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3973.x, x_3973.y, x_3974.z, x_3974.w);
            let x_3976 : vec4<f32> = u_xlat15;
            let x_3979 : vec4<f32> = u_xlat15;
            let x_3982 : vec2<f32> = u_xlat66;
            let x_3983 : vec2<f32> = ((-(vec2<f32>(x_3976.x, x_3976.y)) * vec2<f32>(x_3979.x, x_3979.y)) + x_3982);
            let x_3984 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3983.x, x_3983.y, x_3984.z, x_3984.w);
            let x_3986 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_3986, vec2<f32>(0.0f, 0.0f));
            let x_3988 : vec2<f32> = u_xlat64;
            let x_3990 : vec2<f32> = u_xlat64;
            let x_3992 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_3988) * x_3990) + vec2<f32>(x_3992.y, x_3992.w));
            let x_3995 : vec4<f32> = u_xlat15;
            let x_3997 : vec2<f32> = (vec2<f32>(x_3995.x, x_3995.y) + vec2<f32>(1.0f, 1.0f));
            let x_3998 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3997.x, x_3997.y, x_3998.z, x_3998.w);
            let x_4000 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_4000 + vec2<f32>(1.0f, 1.0f));
            let x_4002 : vec4<f32> = u_xlat14;
            let x_4004 : vec2<f32> = (vec2<f32>(x_4002.x, x_4002.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4005 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4004.x, x_4004.y, x_4005.z, x_4005.w);
            let x_4007 : vec2<f32> = u_xlat66;
            let x_4008 : vec2<f32> = (x_4007 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4009 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4008.x, x_4008.y, x_4009.z, x_4009.w);
            let x_4011 : vec4<f32> = u_xlat15;
            let x_4013 : vec2<f32> = (vec2<f32>(x_4011.x, x_4011.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4014 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4013.x, x_4013.y, x_4014.z, x_4014.w);
            let x_4016 : vec2<f32> = u_xlat64;
            let x_4017 : vec2<f32> = (x_4016 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4018 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4017.x, x_4017.y, x_4018.z, x_4018.w);
            let x_4020 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_4020.y, x_4020.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4024 : f32 = u_xlat15.x;
            u_xlat16.z = x_4024;
            let x_4027 : f32 = u_xlat64.x;
            u_xlat16.w = x_4027;
            let x_4030 : f32 = u_xlat17.x;
            u_xlat14.z = x_4030;
            let x_4033 : f32 = u_xlat13.x;
            u_xlat14.w = x_4033;
            let x_4035 : vec4<f32> = u_xlat14;
            let x_4037 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_4035.z, x_4035.w, x_4035.x, x_4035.z) + vec4<f32>(x_4037.z, x_4037.w, x_4037.x, x_4037.z));
            let x_4041 : f32 = u_xlat16.y;
            u_xlat15.z = x_4041;
            let x_4044 : f32 = u_xlat64.y;
            u_xlat15.w = x_4044;
            let x_4047 : f32 = u_xlat14.y;
            u_xlat17.z = x_4047;
            let x_4050 : f32 = u_xlat13.z;
            u_xlat17.w = x_4050;
            let x_4052 : vec4<f32> = u_xlat15;
            let x_4054 : vec4<f32> = u_xlat17;
            let x_4056 : vec3<f32> = (vec3<f32>(x_4052.z, x_4052.y, x_4052.w) + vec3<f32>(x_4054.z, x_4054.y, x_4054.w));
            let x_4057 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4056.x, x_4056.y, x_4056.z, x_4057.w);
            let x_4059 : vec4<f32> = u_xlat14;
            let x_4061 : vec4<f32> = u_xlat18;
            let x_4063 : vec3<f32> = (vec3<f32>(x_4059.x, x_4059.z, x_4059.w) / vec3<f32>(x_4061.z, x_4061.w, x_4061.y));
            let x_4064 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4063.x, x_4063.y, x_4063.z, x_4064.w);
            let x_4066 : vec4<f32> = u_xlat14;
            let x_4068 : vec3<f32> = (vec3<f32>(x_4066.x, x_4066.y, x_4066.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4069 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4068.x, x_4068.y, x_4068.z, x_4069.w);
            let x_4071 : vec4<f32> = u_xlat17;
            let x_4073 : vec4<f32> = u_xlat13;
            let x_4075 : vec3<f32> = (vec3<f32>(x_4071.z, x_4071.y, x_4071.w) / vec3<f32>(x_4073.x, x_4073.y, x_4073.z));
            let x_4076 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4075.x, x_4075.y, x_4075.z, x_4076.w);
            let x_4078 : vec4<f32> = u_xlat15;
            let x_4080 : vec3<f32> = (vec3<f32>(x_4078.x, x_4078.y, x_4078.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4081 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4080.x, x_4080.y, x_4080.z, x_4081.w);
            let x_4083 : vec4<f32> = u_xlat14;
            let x_4086 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4088 : vec3<f32> = (vec3<f32>(x_4083.y, x_4083.x, x_4083.z) * vec3<f32>(x_4086.x, x_4086.x, x_4086.x));
            let x_4089 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4088.x, x_4088.y, x_4088.z, x_4089.w);
            let x_4091 : vec4<f32> = u_xlat15;
            let x_4094 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4096 : vec3<f32> = (vec3<f32>(x_4091.x, x_4091.y, x_4091.z) * vec3<f32>(x_4094.y, x_4094.y, x_4094.y));
            let x_4097 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4096.x, x_4096.y, x_4096.z, x_4097.w);
            let x_4100 : f32 = u_xlat15.x;
            u_xlat14.w = x_4100;
            let x_4102 : vec4<f32> = u_xlat12;
            let x_4105 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4108 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_4102.x, x_4102.y, x_4102.x, x_4102.y) * vec4<f32>(x_4105.x, x_4105.y, x_4105.x, x_4105.y)) + vec4<f32>(x_4108.y, x_4108.w, x_4108.x, x_4108.w));
            let x_4111 : vec4<f32> = u_xlat12;
            let x_4114 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4117 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_4111.x, x_4111.y) * vec2<f32>(x_4114.x, x_4114.y)) + vec2<f32>(x_4117.z, x_4117.w));
            let x_4121 : f32 = u_xlat14.y;
            u_xlat15.w = x_4121;
            let x_4123 : vec4<f32> = u_xlat15;
            let x_4124 : vec2<f32> = vec2<f32>(x_4123.y, x_4123.z);
            let x_4125 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4125.x, x_4124.x, x_4125.z, x_4124.y);
            let x_4127 : vec4<f32> = u_xlat12;
            let x_4130 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4133 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_4127.x, x_4127.y, x_4127.x, x_4127.y) * vec4<f32>(x_4130.x, x_4130.y, x_4130.x, x_4130.y)) + vec4<f32>(x_4133.x, x_4133.y, x_4133.z, x_4133.y));
            let x_4136 : vec4<f32> = u_xlat12;
            let x_4139 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4142 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_4136.x, x_4136.y, x_4136.x, x_4136.y) * vec4<f32>(x_4139.x, x_4139.y, x_4139.x, x_4139.y)) + vec4<f32>(x_4142.w, x_4142.y, x_4142.w, x_4142.z));
            let x_4145 : vec4<f32> = u_xlat12;
            let x_4148 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4151 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_4145.x, x_4145.y, x_4145.x, x_4145.y) * vec4<f32>(x_4148.x, x_4148.y, x_4148.x, x_4148.y)) + vec4<f32>(x_4151.x, x_4151.w, x_4151.z, x_4151.w));
            let x_4154 : vec4<f32> = u_xlat13;
            let x_4156 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_4154.x, x_4154.x, x_4154.x, x_4154.y) * vec4<f32>(x_4156.z, x_4156.w, x_4156.y, x_4156.z));
            let x_4159 : vec4<f32> = u_xlat13;
            let x_4161 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_4159.y, x_4159.y, x_4159.z, x_4159.z) * x_4161);
            let x_4164 : f32 = u_xlat13.z;
            let x_4166 : f32 = u_xlat18.y;
            u_xlat85 = (x_4164 * x_4166);
            let x_4169 : vec4<f32> = u_xlat16;
            let x_4170 : vec2<f32> = vec2<f32>(x_4169.x, x_4169.y);
            let x_4172 : f32 = u_xlat11.z;
            txVec64 = vec3<f32>(x_4170.x, x_4170.y, x_4172);
            let x_4179 : vec3<f32> = txVec64;
            let x_4181 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4179.xy, x_4179.z);
            u_xlat87 = x_4181;
            let x_4183 : vec4<f32> = u_xlat16;
            let x_4184 : vec2<f32> = vec2<f32>(x_4183.z, x_4183.w);
            let x_4186 : f32 = u_xlat11.z;
            txVec65 = vec3<f32>(x_4184.x, x_4184.y, x_4186);
            let x_4194 : vec3<f32> = txVec65;
            let x_4196 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4194.xy, x_4194.z);
            u_xlat88 = x_4196;
            let x_4197 : f32 = u_xlat88;
            let x_4199 : f32 = u_xlat19.y;
            u_xlat88 = (x_4197 * x_4199);
            let x_4202 : f32 = u_xlat19.x;
            let x_4203 : f32 = u_xlat87;
            let x_4205 : f32 = u_xlat88;
            u_xlat87 = ((x_4202 * x_4203) + x_4205);
            let x_4208 : vec2<f32> = u_xlat64;
            let x_4210 : f32 = u_xlat11.z;
            txVec66 = vec3<f32>(x_4208.x, x_4208.y, x_4210);
            let x_4217 : vec3<f32> = txVec66;
            let x_4219 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4217.xy, x_4217.z);
            u_xlat88 = x_4219;
            let x_4221 : f32 = u_xlat19.z;
            let x_4222 : f32 = u_xlat88;
            let x_4224 : f32 = u_xlat87;
            u_xlat87 = ((x_4221 * x_4222) + x_4224);
            let x_4227 : vec4<f32> = u_xlat15;
            let x_4228 : vec2<f32> = vec2<f32>(x_4227.x, x_4227.y);
            let x_4230 : f32 = u_xlat11.z;
            txVec67 = vec3<f32>(x_4228.x, x_4228.y, x_4230);
            let x_4237 : vec3<f32> = txVec67;
            let x_4239 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4237.xy, x_4237.z);
            u_xlat88 = x_4239;
            let x_4241 : f32 = u_xlat19.w;
            let x_4242 : f32 = u_xlat88;
            let x_4244 : f32 = u_xlat87;
            u_xlat87 = ((x_4241 * x_4242) + x_4244);
            let x_4247 : vec4<f32> = u_xlat17;
            let x_4248 : vec2<f32> = vec2<f32>(x_4247.x, x_4247.y);
            let x_4250 : f32 = u_xlat11.z;
            txVec68 = vec3<f32>(x_4248.x, x_4248.y, x_4250);
            let x_4257 : vec3<f32> = txVec68;
            let x_4259 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4257.xy, x_4257.z);
            u_xlat88 = x_4259;
            let x_4261 : f32 = u_xlat20.x;
            let x_4262 : f32 = u_xlat88;
            let x_4264 : f32 = u_xlat87;
            u_xlat87 = ((x_4261 * x_4262) + x_4264);
            let x_4267 : vec4<f32> = u_xlat17;
            let x_4268 : vec2<f32> = vec2<f32>(x_4267.z, x_4267.w);
            let x_4270 : f32 = u_xlat11.z;
            txVec69 = vec3<f32>(x_4268.x, x_4268.y, x_4270);
            let x_4277 : vec3<f32> = txVec69;
            let x_4279 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4277.xy, x_4277.z);
            u_xlat88 = x_4279;
            let x_4281 : f32 = u_xlat20.y;
            let x_4282 : f32 = u_xlat88;
            let x_4284 : f32 = u_xlat87;
            u_xlat87 = ((x_4281 * x_4282) + x_4284);
            let x_4287 : vec4<f32> = u_xlat15;
            let x_4288 : vec2<f32> = vec2<f32>(x_4287.z, x_4287.w);
            let x_4290 : f32 = u_xlat11.z;
            txVec70 = vec3<f32>(x_4288.x, x_4288.y, x_4290);
            let x_4297 : vec3<f32> = txVec70;
            let x_4299 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4297.xy, x_4297.z);
            u_xlat88 = x_4299;
            let x_4301 : f32 = u_xlat20.z;
            let x_4302 : f32 = u_xlat88;
            let x_4304 : f32 = u_xlat87;
            u_xlat87 = ((x_4301 * x_4302) + x_4304);
            let x_4307 : vec4<f32> = u_xlat14;
            let x_4308 : vec2<f32> = vec2<f32>(x_4307.x, x_4307.y);
            let x_4310 : f32 = u_xlat11.z;
            txVec71 = vec3<f32>(x_4308.x, x_4308.y, x_4310);
            let x_4317 : vec3<f32> = txVec71;
            let x_4319 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4317.xy, x_4317.z);
            u_xlat88 = x_4319;
            let x_4321 : f32 = u_xlat20.w;
            let x_4322 : f32 = u_xlat88;
            let x_4324 : f32 = u_xlat87;
            u_xlat87 = ((x_4321 * x_4322) + x_4324);
            let x_4327 : vec4<f32> = u_xlat14;
            let x_4328 : vec2<f32> = vec2<f32>(x_4327.z, x_4327.w);
            let x_4330 : f32 = u_xlat11.z;
            txVec72 = vec3<f32>(x_4328.x, x_4328.y, x_4330);
            let x_4337 : vec3<f32> = txVec72;
            let x_4339 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4337.xy, x_4337.z);
            u_xlat88 = x_4339;
            let x_4340 : f32 = u_xlat85;
            let x_4341 : f32 = u_xlat88;
            let x_4343 : f32 = u_xlat87;
            u_xlat84 = ((x_4340 * x_4341) + x_4343);
          } else {
            let x_4346 : vec4<f32> = u_xlat11;
            let x_4349 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4352 : vec2<f32> = ((vec2<f32>(x_4346.x, x_4346.y) * vec2<f32>(x_4349.z, x_4349.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4353 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4352.x, x_4352.y, x_4353.z, x_4353.w);
            let x_4355 : vec4<f32> = u_xlat12;
            let x_4357 : vec2<f32> = floor(vec2<f32>(x_4355.x, x_4355.y));
            let x_4358 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4357.x, x_4357.y, x_4358.z, x_4358.w);
            let x_4360 : vec4<f32> = u_xlat11;
            let x_4363 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4366 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_4360.x, x_4360.y) * vec2<f32>(x_4363.z, x_4363.w)) + -(vec2<f32>(x_4366.x, x_4366.y)));
            let x_4370 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_4370.x, x_4370.x, x_4370.y, x_4370.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4373 : vec4<f32> = u_xlat13;
            let x_4375 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4373.x, x_4373.x, x_4373.z, x_4373.z) * vec4<f32>(x_4375.x, x_4375.x, x_4375.z, x_4375.z));
            let x_4378 : vec4<f32> = u_xlat14;
            let x_4380 : vec2<f32> = (vec2<f32>(x_4378.y, x_4378.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_4381 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4381.x, x_4380.x, x_4381.z, x_4380.y);
            let x_4383 : vec4<f32> = u_xlat14;
            let x_4386 : vec2<f32> = u_xlat64;
            let x_4388 : vec2<f32> = ((vec2<f32>(x_4383.x, x_4383.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4386));
            let x_4389 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4388.x, x_4389.y, x_4388.y, x_4389.w);
            let x_4391 : vec2<f32> = u_xlat64;
            let x_4393 : vec2<f32> = (-(x_4391) + vec2<f32>(1.0f, 1.0f));
            let x_4394 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4393.x, x_4393.y, x_4394.z, x_4394.w);
            let x_4396 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_4396, vec2<f32>(0.0f, 0.0f));
            let x_4398 : vec2<f32> = u_xlat66;
            let x_4400 : vec2<f32> = u_xlat66;
            let x_4402 : vec4<f32> = u_xlat14;
            let x_4404 : vec2<f32> = ((-(x_4398) * x_4400) + vec2<f32>(x_4402.x, x_4402.y));
            let x_4405 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4404.x, x_4404.y, x_4405.z, x_4405.w);
            let x_4407 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_4407, vec2<f32>(0.0f, 0.0f));
            let x_4410 : vec2<f32> = u_xlat66;
            let x_4412 : vec2<f32> = u_xlat66;
            let x_4414 : vec4<f32> = u_xlat13;
            let x_4416 : vec2<f32> = ((-(x_4410) * x_4412) + vec2<f32>(x_4414.y, x_4414.w));
            let x_4417 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_4416.x, x_4417.y, x_4416.y);
            let x_4419 : vec4<f32> = u_xlat14;
            let x_4421 : vec2<f32> = (vec2<f32>(x_4419.x, x_4419.y) + vec2<f32>(2.0f, 2.0f));
            let x_4422 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4421.x, x_4421.y, x_4422.z, x_4422.w);
            let x_4424 : vec3<f32> = u_xlat39;
            let x_4426 : vec2<f32> = (vec2<f32>(x_4424.x, x_4424.z) + vec2<f32>(2.0f, 2.0f));
            let x_4427 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4427.x, x_4426.x, x_4427.z, x_4426.y);
            let x_4430 : f32 = u_xlat13.y;
            u_xlat16.z = (x_4430 * 0.08163200318813323975f);
            let x_4433 : vec4<f32> = u_xlat13;
            let x_4435 : vec3<f32> = (vec3<f32>(x_4433.z, x_4433.x, x_4433.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_4436 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4435.x, x_4435.y, x_4435.z, x_4436.w);
            let x_4438 : vec4<f32> = u_xlat14;
            let x_4440 : vec2<f32> = (vec2<f32>(x_4438.x, x_4438.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_4441 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4440.x, x_4440.y, x_4441.z, x_4441.w);
            let x_4444 : f32 = u_xlat17.y;
            u_xlat16.x = x_4444;
            let x_4446 : vec2<f32> = u_xlat64;
            let x_4449 : vec2<f32> = ((vec2<f32>(x_4446.x, x_4446.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4450 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4450.x, x_4449.x, x_4450.z, x_4449.y);
            let x_4452 : vec2<f32> = u_xlat64;
            let x_4455 : vec2<f32> = ((vec2<f32>(x_4452.x, x_4452.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4456 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4455.x, x_4456.y, x_4455.y, x_4456.w);
            let x_4459 : f32 = u_xlat13.x;
            u_xlat14.y = x_4459;
            let x_4462 : f32 = u_xlat15.y;
            u_xlat14.w = x_4462;
            let x_4464 : vec4<f32> = u_xlat14;
            let x_4465 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_4464 + x_4465);
            let x_4467 : vec2<f32> = u_xlat64;
            let x_4470 : vec2<f32> = ((vec2<f32>(x_4467.y, x_4467.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4471 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4471.x, x_4470.x, x_4471.z, x_4470.y);
            let x_4473 : vec2<f32> = u_xlat64;
            let x_4476 : vec2<f32> = ((vec2<f32>(x_4473.y, x_4473.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4477 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4476.x, x_4477.y, x_4476.y, x_4477.w);
            let x_4480 : f32 = u_xlat13.y;
            u_xlat15.y = x_4480;
            let x_4482 : vec4<f32> = u_xlat15;
            let x_4483 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_4482 + x_4483);
            let x_4485 : vec4<f32> = u_xlat14;
            let x_4486 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_4485 / x_4486);
            let x_4488 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_4488 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4490 : vec4<f32> = u_xlat15;
            let x_4491 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_4490 / x_4491);
            let x_4493 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_4493 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4495 : vec4<f32> = u_xlat14;
            let x_4498 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_4495.w, x_4495.x, x_4495.y, x_4495.z) * vec4<f32>(x_4498.x, x_4498.x, x_4498.x, x_4498.x));
            let x_4501 : vec4<f32> = u_xlat15;
            let x_4504 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_4501.x, x_4501.w, x_4501.y, x_4501.z) * vec4<f32>(x_4504.y, x_4504.y, x_4504.y, x_4504.y));
            let x_4507 : vec4<f32> = u_xlat14;
            let x_4508 : vec3<f32> = vec3<f32>(x_4507.y, x_4507.z, x_4507.w);
            let x_4509 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4508.x, x_4509.y, x_4508.y, x_4508.z);
            let x_4512 : f32 = u_xlat15.x;
            u_xlat17.y = x_4512;
            let x_4514 : vec4<f32> = u_xlat12;
            let x_4517 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4520 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_4514.x, x_4514.y, x_4514.x, x_4514.y) * vec4<f32>(x_4517.x, x_4517.y, x_4517.x, x_4517.y)) + vec4<f32>(x_4520.x, x_4520.y, x_4520.z, x_4520.y));
            let x_4523 : vec4<f32> = u_xlat12;
            let x_4526 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4529 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_4523.x, x_4523.y) * vec2<f32>(x_4526.x, x_4526.y)) + vec2<f32>(x_4529.w, x_4529.y));
            let x_4533 : f32 = u_xlat17.y;
            u_xlat14.y = x_4533;
            let x_4536 : f32 = u_xlat15.z;
            u_xlat17.y = x_4536;
            let x_4538 : vec4<f32> = u_xlat12;
            let x_4541 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4544 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_4538.x, x_4538.y, x_4538.x, x_4538.y) * vec4<f32>(x_4541.x, x_4541.y, x_4541.x, x_4541.y)) + vec4<f32>(x_4544.x, x_4544.y, x_4544.z, x_4544.y));
            let x_4547 : vec4<f32> = u_xlat12;
            let x_4550 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4553 : vec4<f32> = u_xlat17;
            let x_4555 : vec2<f32> = ((vec2<f32>(x_4547.x, x_4547.y) * vec2<f32>(x_4550.x, x_4550.y)) + vec2<f32>(x_4553.w, x_4553.y));
            let x_4556 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_4555.x, x_4555.y, x_4556.z, x_4556.w);
            let x_4559 : f32 = u_xlat17.y;
            u_xlat14.z = x_4559;
            let x_4562 : vec4<f32> = u_xlat12;
            let x_4565 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4568 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_4562.x, x_4562.y, x_4562.x, x_4562.y) * vec4<f32>(x_4565.x, x_4565.y, x_4565.x, x_4565.y)) + vec4<f32>(x_4568.x, x_4568.y, x_4568.x, x_4568.z));
            let x_4572 : f32 = u_xlat15.w;
            u_xlat17.y = x_4572;
            let x_4575 : vec4<f32> = u_xlat12;
            let x_4578 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4581 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_4575.x, x_4575.y, x_4575.x, x_4575.y) * vec4<f32>(x_4578.x, x_4578.y, x_4578.x, x_4578.y)) + vec4<f32>(x_4581.x, x_4581.y, x_4581.z, x_4581.y));
            let x_4585 : vec4<f32> = u_xlat12;
            let x_4588 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4591 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_4585.x, x_4585.y) * vec2<f32>(x_4588.x, x_4588.y)) + vec2<f32>(x_4591.w, x_4591.y));
            let x_4595 : f32 = u_xlat17.y;
            u_xlat14.w = x_4595;
            let x_4598 : vec4<f32> = u_xlat12;
            let x_4601 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4604 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_4598.x, x_4598.y) * vec2<f32>(x_4601.x, x_4601.y)) + vec2<f32>(x_4604.x, x_4604.w));
            let x_4607 : vec4<f32> = u_xlat17;
            let x_4608 : vec3<f32> = vec3<f32>(x_4607.x, x_4607.z, x_4607.w);
            let x_4609 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4608.x, x_4609.y, x_4608.y, x_4608.z);
            let x_4611 : vec4<f32> = u_xlat12;
            let x_4614 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4617 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_4611.x, x_4611.y, x_4611.x, x_4611.y) * vec4<f32>(x_4614.x, x_4614.y, x_4614.x, x_4614.y)) + vec4<f32>(x_4617.x, x_4617.y, x_4617.z, x_4617.y));
            let x_4620 : vec4<f32> = u_xlat12;
            let x_4623 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4626 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_4620.x, x_4620.y) * vec2<f32>(x_4623.x, x_4623.y)) + vec2<f32>(x_4626.w, x_4626.y));
            let x_4630 : f32 = u_xlat14.x;
            u_xlat15.x = x_4630;
            let x_4632 : vec4<f32> = u_xlat12;
            let x_4635 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4638 : vec4<f32> = u_xlat15;
            let x_4640 : vec2<f32> = ((vec2<f32>(x_4632.x, x_4632.y) * vec2<f32>(x_4635.x, x_4635.y)) + vec2<f32>(x_4638.x, x_4638.y));
            let x_4641 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4640.x, x_4640.y, x_4641.z, x_4641.w);
            let x_4644 : vec4<f32> = u_xlat13;
            let x_4646 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_4644.x, x_4644.x, x_4644.x, x_4644.x) * x_4646);
            let x_4649 : vec4<f32> = u_xlat13;
            let x_4651 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_4649.y, x_4649.y, x_4649.y, x_4649.y) * x_4651);
            let x_4654 : vec4<f32> = u_xlat13;
            let x_4656 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_4654.z, x_4654.z, x_4654.z, x_4654.z) * x_4656);
            let x_4658 : vec4<f32> = u_xlat13;
            let x_4660 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_4658.w, x_4658.w, x_4658.w, x_4658.w) * x_4660);
            let x_4663 : vec4<f32> = u_xlat18;
            let x_4664 : vec2<f32> = vec2<f32>(x_4663.x, x_4663.y);
            let x_4666 : f32 = u_xlat11.z;
            txVec73 = vec3<f32>(x_4664.x, x_4664.y, x_4666);
            let x_4673 : vec3<f32> = txVec73;
            let x_4675 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4673.xy, x_4673.z);
            u_xlat85 = x_4675;
            let x_4677 : vec4<f32> = u_xlat18;
            let x_4678 : vec2<f32> = vec2<f32>(x_4677.z, x_4677.w);
            let x_4680 : f32 = u_xlat11.z;
            txVec74 = vec3<f32>(x_4678.x, x_4678.y, x_4680);
            let x_4687 : vec3<f32> = txVec74;
            let x_4689 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4687.xy, x_4687.z);
            u_xlat87 = x_4689;
            let x_4690 : f32 = u_xlat87;
            let x_4692 : f32 = u_xlat23.y;
            u_xlat87 = (x_4690 * x_4692);
            let x_4695 : f32 = u_xlat23.x;
            let x_4696 : f32 = u_xlat85;
            let x_4698 : f32 = u_xlat87;
            u_xlat85 = ((x_4695 * x_4696) + x_4698);
            let x_4701 : vec2<f32> = u_xlat64;
            let x_4703 : f32 = u_xlat11.z;
            txVec75 = vec3<f32>(x_4701.x, x_4701.y, x_4703);
            let x_4710 : vec3<f32> = txVec75;
            let x_4712 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4710.xy, x_4710.z);
            u_xlat87 = x_4712;
            let x_4714 : f32 = u_xlat23.z;
            let x_4715 : f32 = u_xlat87;
            let x_4717 : f32 = u_xlat85;
            u_xlat85 = ((x_4714 * x_4715) + x_4717);
            let x_4720 : vec4<f32> = u_xlat21;
            let x_4721 : vec2<f32> = vec2<f32>(x_4720.x, x_4720.y);
            let x_4723 : f32 = u_xlat11.z;
            txVec76 = vec3<f32>(x_4721.x, x_4721.y, x_4723);
            let x_4730 : vec3<f32> = txVec76;
            let x_4732 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4730.xy, x_4730.z);
            u_xlat87 = x_4732;
            let x_4734 : f32 = u_xlat23.w;
            let x_4735 : f32 = u_xlat87;
            let x_4737 : f32 = u_xlat85;
            u_xlat85 = ((x_4734 * x_4735) + x_4737);
            let x_4740 : vec4<f32> = u_xlat19;
            let x_4741 : vec2<f32> = vec2<f32>(x_4740.x, x_4740.y);
            let x_4743 : f32 = u_xlat11.z;
            txVec77 = vec3<f32>(x_4741.x, x_4741.y, x_4743);
            let x_4750 : vec3<f32> = txVec77;
            let x_4752 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4750.xy, x_4750.z);
            u_xlat87 = x_4752;
            let x_4754 : f32 = u_xlat24.x;
            let x_4755 : f32 = u_xlat87;
            let x_4757 : f32 = u_xlat85;
            u_xlat85 = ((x_4754 * x_4755) + x_4757);
            let x_4760 : vec4<f32> = u_xlat19;
            let x_4761 : vec2<f32> = vec2<f32>(x_4760.z, x_4760.w);
            let x_4763 : f32 = u_xlat11.z;
            txVec78 = vec3<f32>(x_4761.x, x_4761.y, x_4763);
            let x_4770 : vec3<f32> = txVec78;
            let x_4772 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4770.xy, x_4770.z);
            u_xlat87 = x_4772;
            let x_4774 : f32 = u_xlat24.y;
            let x_4775 : f32 = u_xlat87;
            let x_4777 : f32 = u_xlat85;
            u_xlat85 = ((x_4774 * x_4775) + x_4777);
            let x_4780 : vec4<f32> = u_xlat20;
            let x_4781 : vec2<f32> = vec2<f32>(x_4780.x, x_4780.y);
            let x_4783 : f32 = u_xlat11.z;
            txVec79 = vec3<f32>(x_4781.x, x_4781.y, x_4783);
            let x_4790 : vec3<f32> = txVec79;
            let x_4792 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4790.xy, x_4790.z);
            u_xlat87 = x_4792;
            let x_4794 : f32 = u_xlat24.z;
            let x_4795 : f32 = u_xlat87;
            let x_4797 : f32 = u_xlat85;
            u_xlat85 = ((x_4794 * x_4795) + x_4797);
            let x_4800 : vec4<f32> = u_xlat21;
            let x_4801 : vec2<f32> = vec2<f32>(x_4800.z, x_4800.w);
            let x_4803 : f32 = u_xlat11.z;
            txVec80 = vec3<f32>(x_4801.x, x_4801.y, x_4803);
            let x_4810 : vec3<f32> = txVec80;
            let x_4812 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4810.xy, x_4810.z);
            u_xlat87 = x_4812;
            let x_4814 : f32 = u_xlat24.w;
            let x_4815 : f32 = u_xlat87;
            let x_4817 : f32 = u_xlat85;
            u_xlat85 = ((x_4814 * x_4815) + x_4817);
            let x_4820 : vec4<f32> = u_xlat22;
            let x_4821 : vec2<f32> = vec2<f32>(x_4820.x, x_4820.y);
            let x_4823 : f32 = u_xlat11.z;
            txVec81 = vec3<f32>(x_4821.x, x_4821.y, x_4823);
            let x_4830 : vec3<f32> = txVec81;
            let x_4832 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4830.xy, x_4830.z);
            u_xlat87 = x_4832;
            let x_4834 : f32 = u_xlat25.x;
            let x_4835 : f32 = u_xlat87;
            let x_4837 : f32 = u_xlat85;
            u_xlat85 = ((x_4834 * x_4835) + x_4837);
            let x_4840 : vec4<f32> = u_xlat22;
            let x_4841 : vec2<f32> = vec2<f32>(x_4840.z, x_4840.w);
            let x_4843 : f32 = u_xlat11.z;
            txVec82 = vec3<f32>(x_4841.x, x_4841.y, x_4843);
            let x_4850 : vec3<f32> = txVec82;
            let x_4852 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4850.xy, x_4850.z);
            u_xlat87 = x_4852;
            let x_4854 : f32 = u_xlat25.y;
            let x_4855 : f32 = u_xlat87;
            let x_4857 : f32 = u_xlat85;
            u_xlat85 = ((x_4854 * x_4855) + x_4857);
            let x_4860 : vec2<f32> = u_xlat40;
            let x_4862 : f32 = u_xlat11.z;
            txVec83 = vec3<f32>(x_4860.x, x_4860.y, x_4862);
            let x_4869 : vec3<f32> = txVec83;
            let x_4871 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4869.xy, x_4869.z);
            u_xlat87 = x_4871;
            let x_4873 : f32 = u_xlat25.z;
            let x_4874 : f32 = u_xlat87;
            let x_4876 : f32 = u_xlat85;
            u_xlat85 = ((x_4873 * x_4874) + x_4876);
            let x_4879 : vec2<f32> = u_xlat72;
            let x_4881 : f32 = u_xlat11.z;
            txVec84 = vec3<f32>(x_4879.x, x_4879.y, x_4881);
            let x_4888 : vec3<f32> = txVec84;
            let x_4890 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4888.xy, x_4888.z);
            u_xlat87 = x_4890;
            let x_4892 : f32 = u_xlat25.w;
            let x_4893 : f32 = u_xlat87;
            let x_4895 : f32 = u_xlat85;
            u_xlat85 = ((x_4892 * x_4893) + x_4895);
            let x_4898 : vec4<f32> = u_xlat17;
            let x_4899 : vec2<f32> = vec2<f32>(x_4898.x, x_4898.y);
            let x_4901 : f32 = u_xlat11.z;
            txVec85 = vec3<f32>(x_4899.x, x_4899.y, x_4901);
            let x_4908 : vec3<f32> = txVec85;
            let x_4910 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4908.xy, x_4908.z);
            u_xlat87 = x_4910;
            let x_4912 : f32 = u_xlat13.x;
            let x_4913 : f32 = u_xlat87;
            let x_4915 : f32 = u_xlat85;
            u_xlat85 = ((x_4912 * x_4913) + x_4915);
            let x_4918 : vec4<f32> = u_xlat17;
            let x_4919 : vec2<f32> = vec2<f32>(x_4918.z, x_4918.w);
            let x_4921 : f32 = u_xlat11.z;
            txVec86 = vec3<f32>(x_4919.x, x_4919.y, x_4921);
            let x_4928 : vec3<f32> = txVec86;
            let x_4930 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4928.xy, x_4928.z);
            u_xlat87 = x_4930;
            let x_4932 : f32 = u_xlat13.y;
            let x_4933 : f32 = u_xlat87;
            let x_4935 : f32 = u_xlat85;
            u_xlat85 = ((x_4932 * x_4933) + x_4935);
            let x_4938 : vec2<f32> = u_xlat67;
            let x_4940 : f32 = u_xlat11.z;
            txVec87 = vec3<f32>(x_4938.x, x_4938.y, x_4940);
            let x_4947 : vec3<f32> = txVec87;
            let x_4949 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4947.xy, x_4947.z);
            u_xlat87 = x_4949;
            let x_4951 : f32 = u_xlat13.z;
            let x_4952 : f32 = u_xlat87;
            let x_4954 : f32 = u_xlat85;
            u_xlat85 = ((x_4951 * x_4952) + x_4954);
            let x_4957 : vec4<f32> = u_xlat12;
            let x_4958 : vec2<f32> = vec2<f32>(x_4957.x, x_4957.y);
            let x_4960 : f32 = u_xlat11.z;
            txVec88 = vec3<f32>(x_4958.x, x_4958.y, x_4960);
            let x_4967 : vec3<f32> = txVec88;
            let x_4969 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4967.xy, x_4967.z);
            u_xlat87 = x_4969;
            let x_4971 : f32 = u_xlat13.w;
            let x_4972 : f32 = u_xlat87;
            let x_4974 : f32 = u_xlat85;
            u_xlat84 = ((x_4971 * x_4972) + x_4974);
          }
        }
      } else {
        let x_4978 : vec4<f32> = u_xlat11;
        let x_4979 : vec2<f32> = vec2<f32>(x_4978.x, x_4978.y);
        let x_4981 : f32 = u_xlat11.z;
        txVec89 = vec3<f32>(x_4979.x, x_4979.y, x_4981);
        let x_4988 : vec3<f32> = txVec89;
        let x_4990 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4988.xy, x_4988.z);
        u_xlat84 = x_4990;
      }
      let x_4991 : i32 = u_xlati81;
      let x_4993 : f32 = x_249.x_AdditionalShadowParams[x_4991].x;
      u_xlat85 = (1.0f + -(x_4993));
      let x_4996 : f32 = u_xlat84;
      let x_4997 : i32 = u_xlati81;
      let x_4999 : f32 = x_249.x_AdditionalShadowParams[x_4997].x;
      let x_5001 : f32 = u_xlat85;
      u_xlat84 = ((x_4996 * x_4999) + x_5001);
      let x_5004 : f32 = u_xlat11.z;
      u_xlatb85 = (0.0f >= x_5004);
      let x_5008 : f32 = u_xlat11.z;
      u_xlatb87 = (x_5008 >= 1.0f);
      let x_5010 : bool = u_xlatb85;
      let x_5011 : bool = u_xlatb87;
      u_xlatb85 = (x_5010 | x_5011);
      let x_5013 : bool = u_xlatb85;
      let x_5014 : f32 = u_xlat84;
      u_xlat84 = select(x_5014, 1.0f, x_5013);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_5017 : f32 = u_xlat84;
    u_xlat85 = (-(x_5017) + 1.0f);
    let x_5020 : f32 = u_xlat54;
    let x_5021 : f32 = u_xlat85;
    let x_5023 : f32 = u_xlat84;
    u_xlat84 = ((x_5020 * x_5021) + x_5023);
    let x_5025 : f32 = u_xlat83;
    let x_5026 : f32 = u_xlat84;
    u_xlat83 = (x_5025 * x_5026);
    let x_5028 : vec4<f32> = u_xlat3;
    let x_5030 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_5028.x, x_5028.y, x_5028.z), vec3<f32>(x_5030.x, x_5030.y, x_5030.z));
    let x_5033 : f32 = u_xlat84;
    u_xlat84 = clamp(x_5033, 0.0f, 1.0f);
    let x_5035 : f32 = u_xlat83;
    let x_5036 : f32 = u_xlat84;
    u_xlat83 = (x_5035 * x_5036);
    let x_5038 : f32 = u_xlat83;
    let x_5040 : i32 = u_xlati81;
    let x_5042 : vec4<f32> = x_3602.x_AdditionalLightsColor[x_5040];
    let x_5044 : vec3<f32> = (vec3<f32>(x_5038, x_5038, x_5038) * vec3<f32>(x_5042.x, x_5042.y, x_5042.z));
    let x_5045 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_5044.x, x_5044.y, x_5044.z, x_5045.w);
    let x_5047 : vec4<f32> = u_xlat9;
    let x_5049 : vec2<f32> = u_xlat58;
    let x_5052 : vec3<f32> = u_xlat1;
    let x_5053 : vec3<f32> = ((vec3<f32>(x_5047.x, x_5047.y, x_5047.z) * vec3<f32>(x_5049.x, x_5049.x, x_5049.x)) + x_5052);
    let x_5054 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5053.x, x_5053.y, x_5053.z, x_5054.w);
    let x_5056 : vec4<f32> = u_xlat9;
    let x_5058 : vec4<f32> = u_xlat9;
    u_xlat81 = dot(vec3<f32>(x_5056.x, x_5056.y, x_5056.z), vec3<f32>(x_5058.x, x_5058.y, x_5058.z));
    let x_5061 : f32 = u_xlat81;
    u_xlat81 = max(x_5061, 1.17549435e-38f);
    let x_5063 : f32 = u_xlat81;
    u_xlat81 = inverseSqrt(x_5063);
    let x_5065 : f32 = u_xlat81;
    let x_5067 : vec4<f32> = u_xlat9;
    let x_5069 : vec3<f32> = (vec3<f32>(x_5065, x_5065, x_5065) * vec3<f32>(x_5067.x, x_5067.y, x_5067.z));
    let x_5070 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5069.x, x_5069.y, x_5069.z, x_5070.w);
    let x_5072 : vec4<f32> = u_xlat3;
    let x_5074 : vec4<f32> = u_xlat9;
    u_xlat81 = dot(vec3<f32>(x_5072.x, x_5072.y, x_5072.z), vec3<f32>(x_5074.x, x_5074.y, x_5074.z));
    let x_5077 : f32 = u_xlat81;
    u_xlat81 = clamp(x_5077, 0.0f, 1.0f);
    let x_5079 : vec4<f32> = u_xlat10;
    let x_5081 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_5079.x, x_5079.y, x_5079.z), vec3<f32>(x_5081.x, x_5081.y, x_5081.z));
    let x_5084 : f32 = u_xlat83;
    u_xlat83 = clamp(x_5084, 0.0f, 1.0f);
    let x_5086 : f32 = u_xlat81;
    let x_5087 : f32 = u_xlat81;
    u_xlat81 = (x_5086 * x_5087);
    let x_5089 : f32 = u_xlat81;
    let x_5091 : f32 = u_xlat8.x;
    u_xlat81 = ((x_5089 * x_5091) + 1.00001001358032226562f);
    let x_5094 : f32 = u_xlat83;
    let x_5095 : f32 = u_xlat83;
    u_xlat83 = (x_5094 * x_5095);
    let x_5097 : f32 = u_xlat81;
    let x_5098 : f32 = u_xlat81;
    u_xlat81 = (x_5097 * x_5098);
    let x_5100 : f32 = u_xlat83;
    u_xlat83 = max(x_5100, 0.10000000149011611938f);
    let x_5102 : f32 = u_xlat81;
    let x_5103 : f32 = u_xlat83;
    u_xlat81 = (x_5102 * x_5103);
    let x_5106 : f32 = u_xlat6.x;
    let x_5107 : f32 = u_xlat81;
    u_xlat81 = (x_5106 * x_5107);
    let x_5109 : f32 = u_xlat82;
    let x_5110 : f32 = u_xlat81;
    u_xlat81 = (x_5109 / x_5110);
    let x_5112 : f32 = u_xlat81;
    let x_5115 : vec3<f32> = u_xlat4;
    let x_5116 : vec3<f32> = ((vec3<f32>(x_5112, x_5112, x_5112) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_5115);
    let x_5117 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5116.x, x_5116.y, x_5116.z, x_5117.w);
    let x_5119 : vec4<f32> = u_xlat9;
    let x_5121 : vec4<f32> = u_xlat11;
    let x_5124 : vec3<f32> = u_xlat34;
    u_xlat34 = ((vec3<f32>(x_5119.x, x_5119.y, x_5119.z) * vec3<f32>(x_5121.x, x_5121.y, x_5121.z)) + x_5124);

    continuing {
      let x_5126 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_5126 + bitcast<u32>(1i));
    }
  }
  let x_5128 : vec4<f32> = u_xlat5;
  let x_5130 : f32 = u_xlat32;
  let x_5133 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec3<f32>(x_5128.x, x_5128.y, x_5128.z) * vec3<f32>(x_5130, x_5130, x_5130)) + vec3<f32>(x_5133.x, x_5133.y, x_5133.z));
  let x_5136 : vec3<f32> = u_xlat34;
  let x_5137 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_5136 + x_5137);
  let x_5139 : vec4<f32> = vs_INTERP6;
  let x_5141 : vec3<f32> = u_xlat0;
  let x_5143 : vec3<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_5139.w, x_5139.w, x_5139.w) * x_5141) + x_5143);
  let x_5146 : f32 = u_xlat28.x;
  let x_5148 : f32 = u_xlat28.x;
  u_xlat78 = (x_5146 * -(x_5148));
  let x_5151 : f32 = u_xlat78;
  u_xlat78 = exp2(x_5151);
  let x_5153 : vec3<f32> = u_xlat0;
  let x_5155 : vec4<f32> = x_75.unity_FogColor;
  u_xlat0 = (x_5153 + -(vec3<f32>(x_5155.x, x_5155.y, x_5155.z)));
  let x_5161 : f32 = u_xlat78;
  let x_5163 : vec3<f32> = u_xlat0;
  let x_5166 : vec4<f32> = x_75.unity_FogColor;
  let x_5168 : vec3<f32> = ((vec3<f32>(x_5161, x_5161, x_5161) * x_5163) + vec3<f32>(x_5166.x, x_5166.y, x_5166.z));
  let x_5169 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_5168.x, x_5168.y, x_5168.z, x_5169.w);
  let x_5171 : bool = u_xlatb2;
  let x_5172 : f32 = u_xlat79;
  SV_Target0.w = select(1.0f, x_5172, x_5171);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(6) vs_INTERP9_param : vec3<f32>, @location(5) vs_INTERP8_param : vec3<f32>, @location(3) vs_INTERP5_param : vec4<f32>, @location(4) vs_INTERP6_param : vec4<f32>, @location(2) vs_INTERP4_param : vec4<f32>, @location(0) vs_INTERP0_param : vec2<f32>, @location(1) vs_INTERP3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP9 = vs_INTERP9_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP6 = vs_INTERP6_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


