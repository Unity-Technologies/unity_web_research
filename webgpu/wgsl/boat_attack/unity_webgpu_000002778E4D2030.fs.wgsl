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

@group(0) @binding(3) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(7) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_188 : UnityPerMaterial;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(4) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(8) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat31 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_249 : LightShadows;

var<private> u_xlatb79 : bool;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_LinearClampCompare : sampler_comparison;

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

var<private> u_xlat81 : f32;

var<private> u_xlat32 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlatb58 : bool;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat65 : vec2<f32>;

var<private> u_xlat86 : f32;

var<private> u_xlat33 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu78 : u32;

var<private> u_xlatu81 : u32;

var<private> u_xlati83 : i32;

var<private> u_xlati81 : i32;

@group(1) @binding(1) var<uniform> x_3629 : AdditionalLights;

var<private> u_xlat83 : f32;

var<private> u_xlati84 : i32;

var<private> u_xlatb85 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat87 : f32;

var<private> u_xlat85 : f32;

var<private> u_xlatb84 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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
  var x_3769 : f32;
  var x_3779 : f32;
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
  u_xlat3.w = 1.0f;
  let x_1941 : vec4<f32> = x_132.unity_SHAr;
  let x_1942 : vec4<f32> = u_xlat3;
  u_xlat6.x = dot(x_1941, x_1942);
  let x_1947 : vec4<f32> = x_132.unity_SHAg;
  let x_1948 : vec4<f32> = u_xlat3;
  u_xlat6.y = dot(x_1947, x_1948);
  let x_1953 : vec4<f32> = x_132.unity_SHAb;
  let x_1954 : vec4<f32> = u_xlat3;
  u_xlat6.z = dot(x_1953, x_1954);
  let x_1957 : vec4<f32> = u_xlat3;
  let x_1959 : vec4<f32> = u_xlat3;
  u_xlat7 = (vec4<f32>(x_1957.y, x_1957.z, x_1957.z, x_1957.x) * vec4<f32>(x_1959.x, x_1959.y, x_1959.z, x_1959.z));
  let x_1964 : vec4<f32> = x_132.unity_SHBr;
  let x_1965 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_1964, x_1965);
  let x_1970 : vec4<f32> = x_132.unity_SHBg;
  let x_1971 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_1970, x_1971);
  let x_1975 : vec4<f32> = x_132.unity_SHBb;
  let x_1976 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_1975, x_1976);
  let x_1980 : f32 = u_xlat3.y;
  let x_1982 : f32 = u_xlat3.y;
  u_xlat54 = (x_1980 * x_1982);
  let x_1985 : f32 = u_xlat3.x;
  let x_1987 : f32 = u_xlat3.x;
  let x_1989 : f32 = u_xlat54;
  u_xlat54 = ((x_1985 * x_1987) + -(x_1989));
  let x_1994 : vec4<f32> = x_132.unity_SHC;
  let x_1996 : f32 = u_xlat54;
  let x_1999 : vec4<f32> = u_xlat8;
  u_xlat31 = ((vec3<f32>(x_1994.x, x_1994.y, x_1994.z) * vec3<f32>(x_1996, x_1996, x_1996)) + vec3<f32>(x_1999.x, x_1999.y, x_1999.z));
  let x_2002 : vec3<f32> = u_xlat31;
  let x_2003 : vec4<f32> = u_xlat6;
  u_xlat31 = (x_2002 + vec3<f32>(x_2003.x, x_2003.y, x_2003.z));
  let x_2006 : vec3<f32> = u_xlat31;
  u_xlat31 = max(x_2006, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_2010 : f32 = u_xlat5.x;
  u_xlat5.x = x_2010;
  let x_2013 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_2013, 0.0f, 1.0f);
  let x_2016 : f32 = u_xlat79;
  u_xlat79 = x_2016;
  let x_2017 : f32 = u_xlat79;
  u_xlat79 = clamp(x_2017, 0.0f, 1.0f);
  let x_2019 : vec3<f32> = u_xlat4;
  u_xlat4 = (x_2019 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_2024 : f32 = u_xlat5.x;
  u_xlat54 = (-(x_2024) + 1.0f);
  let x_2028 : f32 = u_xlat54;
  let x_2029 : f32 = u_xlat54;
  u_xlat81 = (x_2028 * x_2029);
  let x_2031 : f32 = u_xlat81;
  u_xlat81 = max(x_2031, 0.0078125f);
  let x_2034 : f32 = u_xlat81;
  let x_2035 : f32 = u_xlat81;
  u_xlat82 = (x_2034 * x_2035);
  let x_2038 : f32 = u_xlat5.x;
  u_xlat5.x = (x_2038 + 0.04000002145767211914f);
  let x_2043 : f32 = u_xlat5.x;
  u_xlat5.x = min(x_2043, 1.0f);
  let x_2046 : f32 = u_xlat81;
  u_xlat6.x = ((x_2046 * 4.0f) + 2.0f);
  let x_2053 : f32 = vs_INTERP6.w;
  u_xlat32 = min(x_2053, 1.0f);
  let x_2055 : bool = u_xlatb78;
  if (x_2055) {
    let x_2059 : f32 = x_249.x_MainLightShadowParams.y;
    u_xlatb78 = (x_2059 == 1.0f);
    let x_2061 : bool = u_xlatb78;
    if (x_2061) {
      let x_2065 : vec4<f32> = vs_INTERP3;
      let x_2068 : vec4<f32> = x_249.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_2065.x, x_2065.y, x_2065.x, x_2065.y) + x_2068);
      let x_2071 : vec4<f32> = u_xlat7;
      let x_2072 : vec2<f32> = vec2<f32>(x_2071.x, x_2071.y);
      let x_2074 : f32 = vs_INTERP3.z;
      txVec30 = vec3<f32>(x_2072.x, x_2072.y, x_2074);
      let x_2081 : vec3<f32> = txVec30;
      let x_2083 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2081.xy, x_2081.z);
      u_xlat8.x = x_2083;
      let x_2086 : vec4<f32> = u_xlat7;
      let x_2087 : vec2<f32> = vec2<f32>(x_2086.z, x_2086.w);
      let x_2089 : f32 = vs_INTERP3.z;
      txVec31 = vec3<f32>(x_2087.x, x_2087.y, x_2089);
      let x_2096 : vec3<f32> = txVec31;
      let x_2098 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2096.xy, x_2096.z);
      u_xlat8.y = x_2098;
      let x_2100 : vec4<f32> = vs_INTERP3;
      let x_2103 : vec4<f32> = x_249.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_2100.x, x_2100.y, x_2100.x, x_2100.y) + x_2103);
      let x_2106 : vec4<f32> = u_xlat7;
      let x_2107 : vec2<f32> = vec2<f32>(x_2106.x, x_2106.y);
      let x_2109 : f32 = vs_INTERP3.z;
      txVec32 = vec3<f32>(x_2107.x, x_2107.y, x_2109);
      let x_2116 : vec3<f32> = txVec32;
      let x_2118 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2116.xy, x_2116.z);
      u_xlat8.z = x_2118;
      let x_2121 : vec4<f32> = u_xlat7;
      let x_2122 : vec2<f32> = vec2<f32>(x_2121.z, x_2121.w);
      let x_2124 : f32 = vs_INTERP3.z;
      txVec33 = vec3<f32>(x_2122.x, x_2122.y, x_2124);
      let x_2131 : vec3<f32> = txVec33;
      let x_2133 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2131.xy, x_2131.z);
      u_xlat8.w = x_2133;
      let x_2135 : vec4<f32> = u_xlat8;
      u_xlat78 = dot(x_2135, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_2140 : f32 = x_249.x_MainLightShadowParams.y;
      u_xlatb58 = (x_2140 == 2.0f);
      let x_2142 : bool = u_xlatb58;
      if (x_2142) {
        let x_2146 : vec4<f32> = vs_INTERP3;
        let x_2149 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        u_xlat58 = ((vec2<f32>(x_2146.x, x_2146.y) * vec2<f32>(x_2149.z, x_2149.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2153 : vec2<f32> = u_xlat58;
        u_xlat58 = floor(x_2153);
        let x_2155 : vec4<f32> = vs_INTERP3;
        let x_2158 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2161 : vec2<f32> = u_xlat58;
        let x_2163 : vec2<f32> = ((vec2<f32>(x_2155.x, x_2155.y) * vec2<f32>(x_2158.z, x_2158.w)) + -(x_2161));
        let x_2164 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2163.x, x_2163.y, x_2164.z, x_2164.w);
        let x_2166 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_2166.x, x_2166.x, x_2166.y, x_2166.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2169 : vec4<f32> = u_xlat8;
        let x_2171 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2169.x, x_2169.x, x_2169.z, x_2169.z) * vec4<f32>(x_2171.x, x_2171.x, x_2171.z, x_2171.z));
        let x_2174 : vec4<f32> = u_xlat9;
        u_xlat59 = (vec2<f32>(x_2174.y, x_2174.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_2177 : vec4<f32> = u_xlat9;
        let x_2180 : vec4<f32> = u_xlat7;
        let x_2183 : vec2<f32> = ((vec2<f32>(x_2177.x, x_2177.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2180.x, x_2180.y)));
        let x_2184 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2183.x, x_2184.y, x_2183.y, x_2184.w);
        let x_2186 : vec4<f32> = u_xlat7;
        let x_2189 : vec2<f32> = (-(vec2<f32>(x_2186.x, x_2186.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2190 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2189.x, x_2189.y, x_2190.z, x_2190.w);
        let x_2192 : vec4<f32> = u_xlat7;
        u_xlat61 = min(vec2<f32>(x_2192.x, x_2192.y), vec2<f32>(0.0f, 0.0f));
        let x_2195 : vec2<f32> = u_xlat61;
        let x_2197 : vec2<f32> = u_xlat61;
        let x_2199 : vec4<f32> = u_xlat9;
        u_xlat61 = ((-(x_2195) * x_2197) + vec2<f32>(x_2199.x, x_2199.y));
        let x_2202 : vec4<f32> = u_xlat7;
        let x_2204 : vec2<f32> = max(vec2<f32>(x_2202.x, x_2202.y), vec2<f32>(0.0f, 0.0f));
        let x_2205 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2204.x, x_2204.y, x_2205.z, x_2205.w);
        let x_2207 : vec4<f32> = u_xlat7;
        let x_2210 : vec4<f32> = u_xlat7;
        let x_2213 : vec4<f32> = u_xlat8;
        let x_2215 : vec2<f32> = ((-(vec2<f32>(x_2207.x, x_2207.y)) * vec2<f32>(x_2210.x, x_2210.y)) + vec2<f32>(x_2213.y, x_2213.w));
        let x_2216 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2215.x, x_2215.y, x_2216.z, x_2216.w);
        let x_2218 : vec2<f32> = u_xlat61;
        u_xlat61 = (x_2218 + vec2<f32>(1.0f, 1.0f));
        let x_2220 : vec4<f32> = u_xlat7;
        let x_2222 : vec2<f32> = (vec2<f32>(x_2220.x, x_2220.y) + vec2<f32>(1.0f, 1.0f));
        let x_2223 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2222.x, x_2222.y, x_2223.z, x_2223.w);
        let x_2225 : vec4<f32> = u_xlat8;
        let x_2227 : vec2<f32> = (vec2<f32>(x_2225.x, x_2225.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2228 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2227.x, x_2227.y, x_2228.z, x_2228.w);
        let x_2230 : vec4<f32> = u_xlat9;
        let x_2232 : vec2<f32> = (vec2<f32>(x_2230.x, x_2230.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2233 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2232.x, x_2232.y, x_2233.z, x_2233.w);
        let x_2235 : vec2<f32> = u_xlat61;
        let x_2236 : vec2<f32> = (x_2235 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2237 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2236.x, x_2236.y, x_2237.z, x_2237.w);
        let x_2239 : vec4<f32> = u_xlat7;
        let x_2241 : vec2<f32> = (vec2<f32>(x_2239.x, x_2239.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2242 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2241.x, x_2241.y, x_2242.z, x_2242.w);
        let x_2244 : vec4<f32> = u_xlat8;
        let x_2246 : vec2<f32> = (vec2<f32>(x_2244.y, x_2244.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2247 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2246.x, x_2246.y, x_2247.z, x_2247.w);
        let x_2250 : f32 = u_xlat9.x;
        u_xlat10.z = x_2250;
        let x_2253 : f32 = u_xlat7.x;
        u_xlat10.w = x_2253;
        let x_2256 : f32 = u_xlat12.x;
        u_xlat11.z = x_2256;
        let x_2259 : f32 = u_xlat59.x;
        u_xlat11.w = x_2259;
        let x_2261 : vec4<f32> = u_xlat10;
        let x_2263 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_2261.z, x_2261.w, x_2261.x, x_2261.z) + vec4<f32>(x_2263.z, x_2263.w, x_2263.x, x_2263.z));
        let x_2267 : f32 = u_xlat10.y;
        u_xlat9.z = x_2267;
        let x_2270 : f32 = u_xlat7.y;
        u_xlat9.w = x_2270;
        let x_2273 : f32 = u_xlat11.y;
        u_xlat12.z = x_2273;
        let x_2276 : f32 = u_xlat59.y;
        u_xlat12.w = x_2276;
        let x_2278 : vec4<f32> = u_xlat9;
        let x_2280 : vec4<f32> = u_xlat12;
        let x_2282 : vec3<f32> = (vec3<f32>(x_2278.z, x_2278.y, x_2278.w) + vec3<f32>(x_2280.z, x_2280.y, x_2280.w));
        let x_2283 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2282.x, x_2282.y, x_2282.z, x_2283.w);
        let x_2285 : vec4<f32> = u_xlat11;
        let x_2287 : vec4<f32> = u_xlat8;
        let x_2289 : vec3<f32> = (vec3<f32>(x_2285.x, x_2285.z, x_2285.w) / vec3<f32>(x_2287.z, x_2287.w, x_2287.y));
        let x_2290 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2289.x, x_2289.y, x_2289.z, x_2290.w);
        let x_2292 : vec4<f32> = u_xlat9;
        let x_2294 : vec3<f32> = (vec3<f32>(x_2292.x, x_2292.y, x_2292.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2295 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2294.x, x_2294.y, x_2294.z, x_2295.w);
        let x_2297 : vec4<f32> = u_xlat12;
        let x_2299 : vec4<f32> = u_xlat7;
        let x_2301 : vec3<f32> = (vec3<f32>(x_2297.z, x_2297.y, x_2297.w) / vec3<f32>(x_2299.x, x_2299.y, x_2299.z));
        let x_2302 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2301.x, x_2301.y, x_2301.z, x_2302.w);
        let x_2304 : vec4<f32> = u_xlat10;
        let x_2306 : vec3<f32> = (vec3<f32>(x_2304.x, x_2304.y, x_2304.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2307 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2306.x, x_2306.y, x_2306.z, x_2307.w);
        let x_2309 : vec4<f32> = u_xlat9;
        let x_2312 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2314 : vec3<f32> = (vec3<f32>(x_2309.y, x_2309.x, x_2309.z) * vec3<f32>(x_2312.x, x_2312.x, x_2312.x));
        let x_2315 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2314.x, x_2314.y, x_2314.z, x_2315.w);
        let x_2317 : vec4<f32> = u_xlat10;
        let x_2320 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2322 : vec3<f32> = (vec3<f32>(x_2317.x, x_2317.y, x_2317.z) * vec3<f32>(x_2320.y, x_2320.y, x_2320.y));
        let x_2323 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2322.x, x_2322.y, x_2322.z, x_2323.w);
        let x_2326 : f32 = u_xlat10.x;
        u_xlat9.w = x_2326;
        let x_2328 : vec2<f32> = u_xlat58;
        let x_2331 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2334 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_2328.x, x_2328.y, x_2328.x, x_2328.y) * vec4<f32>(x_2331.x, x_2331.y, x_2331.x, x_2331.y)) + vec4<f32>(x_2334.y, x_2334.w, x_2334.x, x_2334.w));
        let x_2337 : vec2<f32> = u_xlat58;
        let x_2339 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2342 : vec4<f32> = u_xlat9;
        let x_2344 : vec2<f32> = ((x_2337 * vec2<f32>(x_2339.x, x_2339.y)) + vec2<f32>(x_2342.z, x_2342.w));
        let x_2345 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2344.x, x_2344.y, x_2345.z, x_2345.w);
        let x_2348 : f32 = u_xlat9.y;
        u_xlat10.w = x_2348;
        let x_2350 : vec4<f32> = u_xlat10;
        let x_2351 : vec2<f32> = vec2<f32>(x_2350.y, x_2350.z);
        let x_2352 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2352.x, x_2351.x, x_2352.z, x_2351.y);
        let x_2354 : vec2<f32> = u_xlat58;
        let x_2357 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2360 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_2354.x, x_2354.y, x_2354.x, x_2354.y) * vec4<f32>(x_2357.x, x_2357.y, x_2357.x, x_2357.y)) + vec4<f32>(x_2360.x, x_2360.y, x_2360.z, x_2360.y));
        let x_2363 : vec2<f32> = u_xlat58;
        let x_2366 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2369 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_2363.x, x_2363.y, x_2363.x, x_2363.y) * vec4<f32>(x_2366.x, x_2366.y, x_2366.x, x_2366.y)) + vec4<f32>(x_2369.w, x_2369.y, x_2369.w, x_2369.z));
        let x_2372 : vec2<f32> = u_xlat58;
        let x_2375 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2378 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_2372.x, x_2372.y, x_2372.x, x_2372.y) * vec4<f32>(x_2375.x, x_2375.y, x_2375.x, x_2375.y)) + vec4<f32>(x_2378.x, x_2378.w, x_2378.z, x_2378.w));
        let x_2381 : vec4<f32> = u_xlat7;
        let x_2383 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_2381.x, x_2381.x, x_2381.x, x_2381.y) * vec4<f32>(x_2383.z, x_2383.w, x_2383.y, x_2383.z));
        let x_2386 : vec4<f32> = u_xlat7;
        let x_2388 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_2386.y, x_2386.y, x_2386.z, x_2386.z) * x_2388);
        let x_2391 : f32 = u_xlat7.z;
        let x_2393 : f32 = u_xlat8.y;
        u_xlat58.x = (x_2391 * x_2393);
        let x_2397 : vec4<f32> = u_xlat11;
        let x_2398 : vec2<f32> = vec2<f32>(x_2397.x, x_2397.y);
        let x_2400 : f32 = vs_INTERP3.z;
        txVec34 = vec3<f32>(x_2398.x, x_2398.y, x_2400);
        let x_2407 : vec3<f32> = txVec34;
        let x_2409 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2407.xy, x_2407.z);
        u_xlat84 = x_2409;
        let x_2411 : vec4<f32> = u_xlat11;
        let x_2412 : vec2<f32> = vec2<f32>(x_2411.z, x_2411.w);
        let x_2414 : f32 = vs_INTERP3.z;
        txVec35 = vec3<f32>(x_2412.x, x_2412.y, x_2414);
        let x_2421 : vec3<f32> = txVec35;
        let x_2423 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2421.xy, x_2421.z);
        u_xlat7.x = x_2423;
        let x_2426 : f32 = u_xlat7.x;
        let x_2428 : f32 = u_xlat14.y;
        u_xlat7.x = (x_2426 * x_2428);
        let x_2432 : f32 = u_xlat14.x;
        let x_2433 : f32 = u_xlat84;
        let x_2436 : f32 = u_xlat7.x;
        u_xlat84 = ((x_2432 * x_2433) + x_2436);
        let x_2439 : vec4<f32> = u_xlat12;
        let x_2440 : vec2<f32> = vec2<f32>(x_2439.x, x_2439.y);
        let x_2442 : f32 = vs_INTERP3.z;
        txVec36 = vec3<f32>(x_2440.x, x_2440.y, x_2442);
        let x_2449 : vec3<f32> = txVec36;
        let x_2451 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2449.xy, x_2449.z);
        u_xlat7.x = x_2451;
        let x_2454 : f32 = u_xlat14.z;
        let x_2456 : f32 = u_xlat7.x;
        let x_2458 : f32 = u_xlat84;
        u_xlat84 = ((x_2454 * x_2456) + x_2458);
        let x_2461 : vec4<f32> = u_xlat10;
        let x_2462 : vec2<f32> = vec2<f32>(x_2461.x, x_2461.y);
        let x_2464 : f32 = vs_INTERP3.z;
        txVec37 = vec3<f32>(x_2462.x, x_2462.y, x_2464);
        let x_2471 : vec3<f32> = txVec37;
        let x_2473 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2471.xy, x_2471.z);
        u_xlat7.x = x_2473;
        let x_2476 : f32 = u_xlat14.w;
        let x_2478 : f32 = u_xlat7.x;
        let x_2480 : f32 = u_xlat84;
        u_xlat84 = ((x_2476 * x_2478) + x_2480);
        let x_2483 : vec4<f32> = u_xlat13;
        let x_2484 : vec2<f32> = vec2<f32>(x_2483.x, x_2483.y);
        let x_2486 : f32 = vs_INTERP3.z;
        txVec38 = vec3<f32>(x_2484.x, x_2484.y, x_2486);
        let x_2493 : vec3<f32> = txVec38;
        let x_2495 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2493.xy, x_2493.z);
        u_xlat7.x = x_2495;
        let x_2498 : f32 = u_xlat15.x;
        let x_2500 : f32 = u_xlat7.x;
        let x_2502 : f32 = u_xlat84;
        u_xlat84 = ((x_2498 * x_2500) + x_2502);
        let x_2505 : vec4<f32> = u_xlat13;
        let x_2506 : vec2<f32> = vec2<f32>(x_2505.z, x_2505.w);
        let x_2508 : f32 = vs_INTERP3.z;
        txVec39 = vec3<f32>(x_2506.x, x_2506.y, x_2508);
        let x_2515 : vec3<f32> = txVec39;
        let x_2517 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2515.xy, x_2515.z);
        u_xlat7.x = x_2517;
        let x_2520 : f32 = u_xlat15.y;
        let x_2522 : f32 = u_xlat7.x;
        let x_2524 : f32 = u_xlat84;
        u_xlat84 = ((x_2520 * x_2522) + x_2524);
        let x_2527 : vec4<f32> = u_xlat10;
        let x_2528 : vec2<f32> = vec2<f32>(x_2527.z, x_2527.w);
        let x_2530 : f32 = vs_INTERP3.z;
        txVec40 = vec3<f32>(x_2528.x, x_2528.y, x_2530);
        let x_2537 : vec3<f32> = txVec40;
        let x_2539 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2537.xy, x_2537.z);
        u_xlat7.x = x_2539;
        let x_2542 : f32 = u_xlat15.z;
        let x_2544 : f32 = u_xlat7.x;
        let x_2546 : f32 = u_xlat84;
        u_xlat84 = ((x_2542 * x_2544) + x_2546);
        let x_2549 : vec4<f32> = u_xlat9;
        let x_2550 : vec2<f32> = vec2<f32>(x_2549.x, x_2549.y);
        let x_2552 : f32 = vs_INTERP3.z;
        txVec41 = vec3<f32>(x_2550.x, x_2550.y, x_2552);
        let x_2559 : vec3<f32> = txVec41;
        let x_2561 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2559.xy, x_2559.z);
        u_xlat7.x = x_2561;
        let x_2564 : f32 = u_xlat15.w;
        let x_2566 : f32 = u_xlat7.x;
        let x_2568 : f32 = u_xlat84;
        u_xlat84 = ((x_2564 * x_2566) + x_2568);
        let x_2571 : vec4<f32> = u_xlat9;
        let x_2572 : vec2<f32> = vec2<f32>(x_2571.z, x_2571.w);
        let x_2574 : f32 = vs_INTERP3.z;
        txVec42 = vec3<f32>(x_2572.x, x_2572.y, x_2574);
        let x_2581 : vec3<f32> = txVec42;
        let x_2583 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2581.xy, x_2581.z);
        u_xlat7.x = x_2583;
        let x_2586 : f32 = u_xlat58.x;
        let x_2588 : f32 = u_xlat7.x;
        let x_2590 : f32 = u_xlat84;
        u_xlat78 = ((x_2586 * x_2588) + x_2590);
      } else {
        let x_2593 : vec4<f32> = vs_INTERP3;
        let x_2596 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        u_xlat58 = ((vec2<f32>(x_2593.x, x_2593.y) * vec2<f32>(x_2596.z, x_2596.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2600 : vec2<f32> = u_xlat58;
        u_xlat58 = floor(x_2600);
        let x_2602 : vec4<f32> = vs_INTERP3;
        let x_2605 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2608 : vec2<f32> = u_xlat58;
        let x_2610 : vec2<f32> = ((vec2<f32>(x_2602.x, x_2602.y) * vec2<f32>(x_2605.z, x_2605.w)) + -(x_2608));
        let x_2611 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2610.x, x_2610.y, x_2611.z, x_2611.w);
        let x_2613 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_2613.x, x_2613.x, x_2613.y, x_2613.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2616 : vec4<f32> = u_xlat8;
        let x_2618 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2616.x, x_2616.x, x_2616.z, x_2616.z) * vec4<f32>(x_2618.x, x_2618.x, x_2618.z, x_2618.z));
        let x_2621 : vec4<f32> = u_xlat9;
        let x_2623 : vec2<f32> = (vec2<f32>(x_2621.y, x_2621.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_2624 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2624.x, x_2623.x, x_2624.z, x_2623.y);
        let x_2626 : vec4<f32> = u_xlat9;
        let x_2629 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_2626.x, x_2626.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2629.x, x_2629.y)));
        let x_2633 : vec4<f32> = u_xlat7;
        let x_2636 : vec2<f32> = (-(vec2<f32>(x_2633.x, x_2633.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2637 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2636.x, x_2637.y, x_2636.y, x_2637.w);
        let x_2639 : vec4<f32> = u_xlat7;
        let x_2641 : vec2<f32> = min(vec2<f32>(x_2639.x, x_2639.y), vec2<f32>(0.0f, 0.0f));
        let x_2642 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2641.x, x_2641.y, x_2642.z, x_2642.w);
        let x_2644 : vec4<f32> = u_xlat9;
        let x_2647 : vec4<f32> = u_xlat9;
        let x_2650 : vec4<f32> = u_xlat8;
        let x_2652 : vec2<f32> = ((-(vec2<f32>(x_2644.x, x_2644.y)) * vec2<f32>(x_2647.x, x_2647.y)) + vec2<f32>(x_2650.x, x_2650.z));
        let x_2653 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2652.x, x_2653.y, x_2652.y, x_2653.w);
        let x_2655 : vec4<f32> = u_xlat7;
        let x_2657 : vec2<f32> = max(vec2<f32>(x_2655.x, x_2655.y), vec2<f32>(0.0f, 0.0f));
        let x_2658 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2657.x, x_2657.y, x_2658.z, x_2658.w);
        let x_2660 : vec4<f32> = u_xlat9;
        let x_2663 : vec4<f32> = u_xlat9;
        let x_2666 : vec4<f32> = u_xlat8;
        let x_2668 : vec2<f32> = ((-(vec2<f32>(x_2660.x, x_2660.y)) * vec2<f32>(x_2663.x, x_2663.y)) + vec2<f32>(x_2666.y, x_2666.w));
        let x_2669 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2669.x, x_2668.x, x_2669.z, x_2668.y);
        let x_2671 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_2671 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_2674 : f32 = u_xlat8.y;
        u_xlat9.z = (x_2674 * 0.08163200318813323975f);
        let x_2677 : vec2<f32> = u_xlat59;
        let x_2679 : vec2<f32> = (vec2<f32>(x_2677.y, x_2677.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2680 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2679.x, x_2679.y, x_2680.z, x_2680.w);
        let x_2682 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_2682.x, x_2682.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2686 : f32 = u_xlat8.w;
        u_xlat11.z = (x_2686 * 0.08163200318813323975f);
        let x_2690 : f32 = u_xlat11.y;
        u_xlat9.x = x_2690;
        let x_2692 : vec4<f32> = u_xlat7;
        let x_2695 : vec2<f32> = ((vec2<f32>(x_2692.x, x_2692.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2696 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2696.x, x_2695.x, x_2696.z, x_2695.y);
        let x_2698 : vec4<f32> = u_xlat7;
        let x_2701 : vec2<f32> = ((vec2<f32>(x_2698.x, x_2698.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2702 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2701.x, x_2702.y, x_2701.y, x_2702.w);
        let x_2705 : f32 = u_xlat59.x;
        u_xlat8.y = x_2705;
        let x_2708 : f32 = u_xlat10.y;
        u_xlat8.w = x_2708;
        let x_2710 : vec4<f32> = u_xlat8;
        let x_2711 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2710 + x_2711);
        let x_2713 : vec4<f32> = u_xlat7;
        let x_2716 : vec2<f32> = ((vec2<f32>(x_2713.y, x_2713.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2717 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2717.x, x_2716.x, x_2717.z, x_2716.y);
        let x_2719 : vec4<f32> = u_xlat7;
        let x_2722 : vec2<f32> = ((vec2<f32>(x_2719.y, x_2719.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2723 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2722.x, x_2723.y, x_2722.y, x_2723.w);
        let x_2726 : f32 = u_xlat59.y;
        u_xlat10.y = x_2726;
        let x_2728 : vec4<f32> = u_xlat10;
        let x_2729 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_2728 + x_2729);
        let x_2731 : vec4<f32> = u_xlat8;
        let x_2732 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_2731 / x_2732);
        let x_2734 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_2734 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2736 : vec4<f32> = u_xlat10;
        let x_2737 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_2736 / x_2737);
        let x_2739 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_2739 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2741 : vec4<f32> = u_xlat8;
        let x_2744 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_2741.w, x_2741.x, x_2741.y, x_2741.z) * vec4<f32>(x_2744.x, x_2744.x, x_2744.x, x_2744.x));
        let x_2747 : vec4<f32> = u_xlat10;
        let x_2750 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_2747.x, x_2747.w, x_2747.y, x_2747.z) * vec4<f32>(x_2750.y, x_2750.y, x_2750.y, x_2750.y));
        let x_2753 : vec4<f32> = u_xlat8;
        let x_2754 : vec3<f32> = vec3<f32>(x_2753.y, x_2753.z, x_2753.w);
        let x_2755 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2754.x, x_2755.y, x_2754.y, x_2754.z);
        let x_2758 : f32 = u_xlat10.x;
        u_xlat11.y = x_2758;
        let x_2760 : vec2<f32> = u_xlat58;
        let x_2763 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2766 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_2760.x, x_2760.y, x_2760.x, x_2760.y) * vec4<f32>(x_2763.x, x_2763.y, x_2763.x, x_2763.y)) + vec4<f32>(x_2766.x, x_2766.y, x_2766.z, x_2766.y));
        let x_2769 : vec2<f32> = u_xlat58;
        let x_2771 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2774 : vec4<f32> = u_xlat11;
        let x_2776 : vec2<f32> = ((x_2769 * vec2<f32>(x_2771.x, x_2771.y)) + vec2<f32>(x_2774.w, x_2774.y));
        let x_2777 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2776.x, x_2776.y, x_2777.z, x_2777.w);
        let x_2780 : f32 = u_xlat11.y;
        u_xlat8.y = x_2780;
        let x_2783 : f32 = u_xlat10.z;
        u_xlat11.y = x_2783;
        let x_2785 : vec2<f32> = u_xlat58;
        let x_2788 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2791 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_2785.x, x_2785.y, x_2785.x, x_2785.y) * vec4<f32>(x_2788.x, x_2788.y, x_2788.x, x_2788.y)) + vec4<f32>(x_2791.x, x_2791.y, x_2791.z, x_2791.y));
        let x_2795 : vec2<f32> = u_xlat58;
        let x_2797 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2800 : vec4<f32> = u_xlat11;
        u_xlat65 = ((x_2795 * vec2<f32>(x_2797.x, x_2797.y)) + vec2<f32>(x_2800.w, x_2800.y));
        let x_2804 : f32 = u_xlat11.y;
        u_xlat8.z = x_2804;
        let x_2806 : vec2<f32> = u_xlat58;
        let x_2809 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2812 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_2806.x, x_2806.y, x_2806.x, x_2806.y) * vec4<f32>(x_2809.x, x_2809.y, x_2809.x, x_2809.y)) + vec4<f32>(x_2812.x, x_2812.y, x_2812.x, x_2812.z));
        let x_2816 : f32 = u_xlat10.w;
        u_xlat11.y = x_2816;
        let x_2818 : vec2<f32> = u_xlat58;
        let x_2821 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2824 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_2818.x, x_2818.y, x_2818.x, x_2818.y) * vec4<f32>(x_2821.x, x_2821.y, x_2821.x, x_2821.y)) + vec4<f32>(x_2824.x, x_2824.y, x_2824.z, x_2824.y));
        let x_2827 : vec2<f32> = u_xlat58;
        let x_2829 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2832 : vec4<f32> = u_xlat11;
        let x_2834 : vec2<f32> = ((x_2827 * vec2<f32>(x_2829.x, x_2829.y)) + vec2<f32>(x_2832.w, x_2832.y));
        let x_2835 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_2834.x, x_2834.y, x_2835.z);
        let x_2838 : f32 = u_xlat11.y;
        u_xlat8.w = x_2838;
        let x_2840 : vec2<f32> = u_xlat58;
        let x_2842 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2845 : vec4<f32> = u_xlat8;
        let x_2847 : vec2<f32> = ((x_2840 * vec2<f32>(x_2842.x, x_2842.y)) + vec2<f32>(x_2845.x, x_2845.w));
        let x_2848 : vec4<f32> = u_xlat17;
        u_xlat17 = vec4<f32>(x_2847.x, x_2847.y, x_2848.z, x_2848.w);
        let x_2850 : vec4<f32> = u_xlat11;
        let x_2851 : vec3<f32> = vec3<f32>(x_2850.x, x_2850.z, x_2850.w);
        let x_2852 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2851.x, x_2852.y, x_2851.y, x_2851.z);
        let x_2854 : vec2<f32> = u_xlat58;
        let x_2857 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2860 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_2854.x, x_2854.y, x_2854.x, x_2854.y) * vec4<f32>(x_2857.x, x_2857.y, x_2857.x, x_2857.y)) + vec4<f32>(x_2860.x, x_2860.y, x_2860.z, x_2860.y));
        let x_2863 : vec2<f32> = u_xlat58;
        let x_2865 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2868 : vec4<f32> = u_xlat10;
        u_xlat62 = ((x_2863 * vec2<f32>(x_2865.x, x_2865.y)) + vec2<f32>(x_2868.w, x_2868.y));
        let x_2872 : f32 = u_xlat8.x;
        u_xlat10.x = x_2872;
        let x_2874 : vec2<f32> = u_xlat58;
        let x_2876 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_2879 : vec4<f32> = u_xlat10;
        u_xlat58 = ((x_2874 * vec2<f32>(x_2876.x, x_2876.y)) + vec2<f32>(x_2879.x, x_2879.y));
        let x_2882 : vec4<f32> = u_xlat7;
        let x_2884 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_2882.x, x_2882.x, x_2882.x, x_2882.x) * x_2884);
        let x_2886 : vec4<f32> = u_xlat7;
        let x_2888 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_2886.y, x_2886.y, x_2886.y, x_2886.y) * x_2888);
        let x_2890 : vec4<f32> = u_xlat7;
        let x_2892 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_2890.z, x_2890.z, x_2890.z, x_2890.z) * x_2892);
        let x_2894 : vec4<f32> = u_xlat7;
        let x_2896 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_2894.w, x_2894.w, x_2894.w, x_2894.w) * x_2896);
        let x_2899 : vec4<f32> = u_xlat12;
        let x_2900 : vec2<f32> = vec2<f32>(x_2899.x, x_2899.y);
        let x_2902 : f32 = vs_INTERP3.z;
        txVec43 = vec3<f32>(x_2900.x, x_2900.y, x_2902);
        let x_2909 : vec3<f32> = txVec43;
        let x_2911 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2909.xy, x_2909.z);
        u_xlat8.x = x_2911;
        let x_2914 : vec4<f32> = u_xlat12;
        let x_2915 : vec2<f32> = vec2<f32>(x_2914.z, x_2914.w);
        let x_2917 : f32 = vs_INTERP3.z;
        txVec44 = vec3<f32>(x_2915.x, x_2915.y, x_2917);
        let x_2925 : vec3<f32> = txVec44;
        let x_2927 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2925.xy, x_2925.z);
        u_xlat86 = x_2927;
        let x_2928 : f32 = u_xlat86;
        let x_2930 : f32 = u_xlat18.y;
        u_xlat86 = (x_2928 * x_2930);
        let x_2933 : f32 = u_xlat18.x;
        let x_2935 : f32 = u_xlat8.x;
        let x_2937 : f32 = u_xlat86;
        u_xlat8.x = ((x_2933 * x_2935) + x_2937);
        let x_2941 : vec4<f32> = u_xlat13;
        let x_2942 : vec2<f32> = vec2<f32>(x_2941.x, x_2941.y);
        let x_2944 : f32 = vs_INTERP3.z;
        txVec45 = vec3<f32>(x_2942.x, x_2942.y, x_2944);
        let x_2951 : vec3<f32> = txVec45;
        let x_2953 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2951.xy, x_2951.z);
        u_xlat86 = x_2953;
        let x_2955 : f32 = u_xlat18.z;
        let x_2956 : f32 = u_xlat86;
        let x_2959 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2955 * x_2956) + x_2959);
        let x_2963 : vec4<f32> = u_xlat15;
        let x_2964 : vec2<f32> = vec2<f32>(x_2963.x, x_2963.y);
        let x_2966 : f32 = vs_INTERP3.z;
        txVec46 = vec3<f32>(x_2964.x, x_2964.y, x_2966);
        let x_2973 : vec3<f32> = txVec46;
        let x_2975 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2973.xy, x_2973.z);
        u_xlat86 = x_2975;
        let x_2977 : f32 = u_xlat18.w;
        let x_2978 : f32 = u_xlat86;
        let x_2981 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2977 * x_2978) + x_2981);
        let x_2985 : vec4<f32> = u_xlat14;
        let x_2986 : vec2<f32> = vec2<f32>(x_2985.x, x_2985.y);
        let x_2988 : f32 = vs_INTERP3.z;
        txVec47 = vec3<f32>(x_2986.x, x_2986.y, x_2988);
        let x_2995 : vec3<f32> = txVec47;
        let x_2997 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2995.xy, x_2995.z);
        u_xlat86 = x_2997;
        let x_2999 : f32 = u_xlat19.x;
        let x_3000 : f32 = u_xlat86;
        let x_3003 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2999 * x_3000) + x_3003);
        let x_3007 : vec4<f32> = u_xlat14;
        let x_3008 : vec2<f32> = vec2<f32>(x_3007.z, x_3007.w);
        let x_3010 : f32 = vs_INTERP3.z;
        txVec48 = vec3<f32>(x_3008.x, x_3008.y, x_3010);
        let x_3017 : vec3<f32> = txVec48;
        let x_3019 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3017.xy, x_3017.z);
        u_xlat86 = x_3019;
        let x_3021 : f32 = u_xlat19.y;
        let x_3022 : f32 = u_xlat86;
        let x_3025 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_3021 * x_3022) + x_3025);
        let x_3029 : vec2<f32> = u_xlat65;
        let x_3031 : f32 = vs_INTERP3.z;
        txVec49 = vec3<f32>(x_3029.x, x_3029.y, x_3031);
        let x_3038 : vec3<f32> = txVec49;
        let x_3040 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3038.xy, x_3038.z);
        u_xlat86 = x_3040;
        let x_3042 : f32 = u_xlat19.z;
        let x_3043 : f32 = u_xlat86;
        let x_3046 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_3042 * x_3043) + x_3046);
        let x_3050 : vec4<f32> = u_xlat15;
        let x_3051 : vec2<f32> = vec2<f32>(x_3050.z, x_3050.w);
        let x_3053 : f32 = vs_INTERP3.z;
        txVec50 = vec3<f32>(x_3051.x, x_3051.y, x_3053);
        let x_3060 : vec3<f32> = txVec50;
        let x_3062 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3060.xy, x_3060.z);
        u_xlat86 = x_3062;
        let x_3064 : f32 = u_xlat19.w;
        let x_3065 : f32 = u_xlat86;
        let x_3068 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_3064 * x_3065) + x_3068);
        let x_3072 : vec4<f32> = u_xlat16;
        let x_3073 : vec2<f32> = vec2<f32>(x_3072.x, x_3072.y);
        let x_3075 : f32 = vs_INTERP3.z;
        txVec51 = vec3<f32>(x_3073.x, x_3073.y, x_3075);
        let x_3082 : vec3<f32> = txVec51;
        let x_3084 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3082.xy, x_3082.z);
        u_xlat86 = x_3084;
        let x_3086 : f32 = u_xlat20.x;
        let x_3087 : f32 = u_xlat86;
        let x_3090 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_3086 * x_3087) + x_3090);
        let x_3094 : vec4<f32> = u_xlat16;
        let x_3095 : vec2<f32> = vec2<f32>(x_3094.z, x_3094.w);
        let x_3097 : f32 = vs_INTERP3.z;
        txVec52 = vec3<f32>(x_3095.x, x_3095.y, x_3097);
        let x_3104 : vec3<f32> = txVec52;
        let x_3106 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3104.xy, x_3104.z);
        u_xlat86 = x_3106;
        let x_3108 : f32 = u_xlat20.y;
        let x_3109 : f32 = u_xlat86;
        let x_3112 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_3108 * x_3109) + x_3112);
        let x_3116 : vec3<f32> = u_xlat34;
        let x_3117 : vec2<f32> = vec2<f32>(x_3116.x, x_3116.y);
        let x_3119 : f32 = vs_INTERP3.z;
        txVec53 = vec3<f32>(x_3117.x, x_3117.y, x_3119);
        let x_3126 : vec3<f32> = txVec53;
        let x_3128 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3126.xy, x_3126.z);
        u_xlat34.x = x_3128;
        let x_3131 : f32 = u_xlat20.z;
        let x_3133 : f32 = u_xlat34.x;
        let x_3136 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_3131 * x_3133) + x_3136);
        let x_3140 : vec4<f32> = u_xlat17;
        let x_3141 : vec2<f32> = vec2<f32>(x_3140.x, x_3140.y);
        let x_3143 : f32 = vs_INTERP3.z;
        txVec54 = vec3<f32>(x_3141.x, x_3141.y, x_3143);
        let x_3150 : vec3<f32> = txVec54;
        let x_3152 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3150.xy, x_3150.z);
        u_xlat34.x = x_3152;
        let x_3155 : f32 = u_xlat20.w;
        let x_3157 : f32 = u_xlat34.x;
        let x_3160 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_3155 * x_3157) + x_3160);
        let x_3164 : vec4<f32> = u_xlat11;
        let x_3165 : vec2<f32> = vec2<f32>(x_3164.x, x_3164.y);
        let x_3167 : f32 = vs_INTERP3.z;
        txVec55 = vec3<f32>(x_3165.x, x_3165.y, x_3167);
        let x_3174 : vec3<f32> = txVec55;
        let x_3176 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3174.xy, x_3174.z);
        u_xlat34.x = x_3176;
        let x_3179 : f32 = u_xlat7.x;
        let x_3181 : f32 = u_xlat34.x;
        let x_3184 : f32 = u_xlat8.x;
        u_xlat7.x = ((x_3179 * x_3181) + x_3184);
        let x_3188 : vec4<f32> = u_xlat11;
        let x_3189 : vec2<f32> = vec2<f32>(x_3188.z, x_3188.w);
        let x_3191 : f32 = vs_INTERP3.z;
        txVec56 = vec3<f32>(x_3189.x, x_3189.y, x_3191);
        let x_3198 : vec3<f32> = txVec56;
        let x_3200 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3198.xy, x_3198.z);
        u_xlat8.x = x_3200;
        let x_3203 : f32 = u_xlat7.y;
        let x_3205 : f32 = u_xlat8.x;
        let x_3208 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_3203 * x_3205) + x_3208);
        let x_3212 : vec2<f32> = u_xlat62;
        let x_3214 : f32 = vs_INTERP3.z;
        txVec57 = vec3<f32>(x_3212.x, x_3212.y, x_3214);
        let x_3222 : vec3<f32> = txVec57;
        let x_3224 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3222.xy, x_3222.z);
        u_xlat33 = x_3224;
        let x_3226 : f32 = u_xlat7.z;
        let x_3227 : f32 = u_xlat33;
        let x_3230 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_3226 * x_3227) + x_3230);
        let x_3234 : vec2<f32> = u_xlat58;
        let x_3236 : f32 = vs_INTERP3.z;
        txVec58 = vec3<f32>(x_3234.x, x_3234.y, x_3236);
        let x_3243 : vec3<f32> = txVec58;
        let x_3245 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3243.xy, x_3243.z);
        u_xlat58.x = x_3245;
        let x_3248 : f32 = u_xlat7.w;
        let x_3250 : f32 = u_xlat58.x;
        let x_3253 : f32 = u_xlat7.x;
        u_xlat78 = ((x_3248 * x_3250) + x_3253);
      }
    }
  } else {
    let x_3257 : vec4<f32> = vs_INTERP3;
    let x_3258 : vec2<f32> = vec2<f32>(x_3257.x, x_3257.y);
    let x_3260 : f32 = vs_INTERP3.z;
    txVec59 = vec3<f32>(x_3258.x, x_3258.y, x_3260);
    let x_3267 : vec3<f32> = txVec59;
    let x_3269 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3267.xy, x_3267.z);
    u_xlat78 = x_3269;
  }
  let x_3270 : f32 = u_xlat78;
  let x_3272 : f32 = x_249.x_MainLightShadowParams.x;
  let x_3274 : f32 = u_xlat80;
  u_xlat78 = ((x_3270 * x_3272) + x_3274);
  let x_3277 : f32 = vs_INTERP3.z;
  u_xlatb80 = (0.0f >= x_3277);
  let x_3280 : f32 = vs_INTERP3.z;
  u_xlatb58 = (x_3280 >= 1.0f);
  let x_3282 : bool = u_xlatb80;
  let x_3283 : bool = u_xlatb58;
  u_xlatb80 = (x_3282 | x_3283);
  let x_3285 : bool = u_xlatb80;
  let x_3286 : f32 = u_xlat78;
  u_xlat78 = select(x_3286, 1.0f, x_3285);
  let x_3288 : vec3<f32> = vs_INTERP8;
  let x_3290 : vec3<f32> = x_75.x_WorldSpaceCameraPos;
  let x_3292 : vec3<f32> = (x_3288 + -(x_3290));
  let x_3293 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3292.x, x_3292.y, x_3292.z, x_3293.w);
  let x_3295 : vec4<f32> = u_xlat7;
  let x_3297 : vec4<f32> = u_xlat7;
  u_xlat80 = dot(vec3<f32>(x_3295.x, x_3295.y, x_3295.z), vec3<f32>(x_3297.x, x_3297.y, x_3297.z));
  let x_3300 : f32 = u_xlat80;
  let x_3302 : f32 = x_249.x_MainLightShadowParams.z;
  let x_3305 : f32 = x_249.x_MainLightShadowParams.w;
  u_xlat58.x = ((x_3300 * x_3302) + x_3305);
  let x_3309 : f32 = u_xlat58.x;
  u_xlat58.x = clamp(x_3309, 0.0f, 1.0f);
  let x_3312 : f32 = u_xlat78;
  u_xlat84 = (-(x_3312) + 1.0f);
  let x_3316 : f32 = u_xlat58.x;
  let x_3317 : f32 = u_xlat84;
  let x_3319 : f32 = u_xlat78;
  u_xlat78 = ((x_3316 * x_3317) + x_3319);
  let x_3321 : vec3<f32> = u_xlat1;
  let x_3323 : vec4<f32> = u_xlat3;
  u_xlat58.x = dot(-(x_3321), vec3<f32>(x_3323.x, x_3323.y, x_3323.z));
  let x_3328 : f32 = u_xlat58.x;
  let x_3330 : f32 = u_xlat58.x;
  u_xlat58.x = (x_3328 + x_3330);
  let x_3333 : vec4<f32> = u_xlat3;
  let x_3335 : vec2<f32> = u_xlat58;
  let x_3339 : vec3<f32> = u_xlat1;
  let x_3341 : vec3<f32> = ((vec3<f32>(x_3333.x, x_3333.y, x_3333.z) * -(vec3<f32>(x_3335.x, x_3335.x, x_3335.x))) + -(x_3339));
  let x_3342 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3341.x, x_3341.y, x_3341.z, x_3342.w);
  let x_3344 : vec4<f32> = u_xlat3;
  let x_3346 : vec3<f32> = u_xlat1;
  u_xlat58.x = dot(vec3<f32>(x_3344.x, x_3344.y, x_3344.z), x_3346);
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
  let x_3370 : f32 = u_xlat54;
  u_xlat84 = ((-(x_3370) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_3376 : f32 = u_xlat54;
  let x_3377 : f32 = u_xlat84;
  u_xlat54 = (x_3376 * x_3377);
  let x_3379 : f32 = u_xlat54;
  u_xlat54 = (x_3379 * 6.0f);
  let x_3390 : vec4<f32> = u_xlat7;
  let x_3392 : f32 = u_xlat54;
  let x_3393 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_3390.x, x_3390.y, x_3390.z), x_3392);
  u_xlat7 = x_3393;
  let x_3395 : f32 = u_xlat7.w;
  u_xlat54 = (x_3395 + -1.0f);
  let x_3398 : f32 = x_132.unity_SpecCube0_HDR.w;
  let x_3399 : f32 = u_xlat54;
  u_xlat54 = ((x_3398 * x_3399) + 1.0f);
  let x_3402 : f32 = u_xlat54;
  u_xlat54 = max(x_3402, 0.0f);
  let x_3404 : f32 = u_xlat54;
  u_xlat54 = log2(x_3404);
  let x_3406 : f32 = u_xlat54;
  let x_3408 : f32 = x_132.unity_SpecCube0_HDR.y;
  u_xlat54 = (x_3406 * x_3408);
  let x_3410 : f32 = u_xlat54;
  u_xlat54 = exp2(x_3410);
  let x_3412 : f32 = u_xlat54;
  let x_3414 : f32 = x_132.unity_SpecCube0_HDR.x;
  u_xlat54 = (x_3412 * x_3414);
  let x_3416 : vec4<f32> = u_xlat7;
  let x_3418 : f32 = u_xlat54;
  let x_3420 : vec3<f32> = (vec3<f32>(x_3416.x, x_3416.y, x_3416.z) * vec3<f32>(x_3418, x_3418, x_3418));
  let x_3421 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3420.x, x_3420.y, x_3420.z, x_3421.w);
  let x_3423 : f32 = u_xlat81;
  let x_3425 : f32 = u_xlat81;
  let x_3429 : vec2<f32> = ((vec2<f32>(x_3423, x_3423) * vec2<f32>(x_3425, x_3425)) + vec2<f32>(-1.0f, 1.0f));
  let x_3430 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3429.x, x_3429.y, x_3430.z, x_3430.w);
  let x_3433 : f32 = u_xlat8.y;
  u_xlat54 = (1.0f / x_3433);
  let x_3436 : f32 = u_xlat5.x;
  u_xlat81 = (x_3436 + -0.03999999910593032837f);
  let x_3440 : f32 = u_xlat58.x;
  let x_3441 : f32 = u_xlat81;
  u_xlat81 = ((x_3440 * x_3441) + 0.03999999910593032837f);
  let x_3445 : f32 = u_xlat54;
  let x_3446 : f32 = u_xlat81;
  u_xlat54 = (x_3445 * x_3446);
  let x_3448 : f32 = u_xlat54;
  let x_3450 : vec4<f32> = u_xlat7;
  let x_3452 : vec3<f32> = (vec3<f32>(x_3448, x_3448, x_3448) * vec3<f32>(x_3450.x, x_3450.y, x_3450.z));
  let x_3453 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3452.x, x_3452.y, x_3452.z, x_3453.w);
  let x_3455 : vec3<f32> = u_xlat31;
  let x_3456 : vec3<f32> = u_xlat4;
  let x_3458 : vec4<f32> = u_xlat7;
  let x_3460 : vec3<f32> = ((x_3455 * x_3456) + vec3<f32>(x_3458.x, x_3458.y, x_3458.z));
  let x_3461 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_3460.x, x_3460.y, x_3460.z, x_3461.w);
  let x_3463 : f32 = u_xlat78;
  let x_3465 : f32 = x_132.unity_LightData.z;
  u_xlat78 = (x_3463 * x_3465);
  let x_3467 : vec4<f32> = u_xlat3;
  let x_3470 : vec4<f32> = x_75.x_MainLightPosition;
  u_xlat54 = dot(vec3<f32>(x_3467.x, x_3467.y, x_3467.z), vec3<f32>(x_3470.x, x_3470.y, x_3470.z));
  let x_3473 : f32 = u_xlat54;
  u_xlat54 = clamp(x_3473, 0.0f, 1.0f);
  let x_3475 : f32 = u_xlat78;
  let x_3476 : f32 = u_xlat54;
  u_xlat78 = (x_3475 * x_3476);
  let x_3478 : f32 = u_xlat78;
  let x_3481 : vec4<f32> = x_75.x_MainLightColor;
  let x_3483 : vec3<f32> = (vec3<f32>(x_3478, x_3478, x_3478) * vec3<f32>(x_3481.x, x_3481.y, x_3481.z));
  let x_3484 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3483.x, x_3483.y, x_3483.z, x_3484.w);
  let x_3486 : vec3<f32> = u_xlat1;
  let x_3488 : vec4<f32> = x_75.x_MainLightPosition;
  u_xlat34 = (x_3486 + vec3<f32>(x_3488.x, x_3488.y, x_3488.z));
  let x_3491 : vec3<f32> = u_xlat34;
  let x_3492 : vec3<f32> = u_xlat34;
  u_xlat78 = dot(x_3491, x_3492);
  let x_3494 : f32 = u_xlat78;
  u_xlat78 = max(x_3494, 1.17549435e-38f);
  let x_3497 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_3497);
  let x_3499 : f32 = u_xlat78;
  let x_3501 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_3499, x_3499, x_3499) * x_3501);
  let x_3503 : vec4<f32> = u_xlat3;
  let x_3505 : vec3<f32> = u_xlat34;
  u_xlat78 = dot(vec3<f32>(x_3503.x, x_3503.y, x_3503.z), x_3505);
  let x_3507 : f32 = u_xlat78;
  u_xlat78 = clamp(x_3507, 0.0f, 1.0f);
  let x_3510 : vec4<f32> = x_75.x_MainLightPosition;
  let x_3512 : vec3<f32> = u_xlat34;
  u_xlat54 = dot(vec3<f32>(x_3510.x, x_3510.y, x_3510.z), x_3512);
  let x_3514 : f32 = u_xlat54;
  u_xlat54 = clamp(x_3514, 0.0f, 1.0f);
  let x_3516 : f32 = u_xlat78;
  let x_3517 : f32 = u_xlat78;
  u_xlat78 = (x_3516 * x_3517);
  let x_3519 : f32 = u_xlat78;
  let x_3521 : f32 = u_xlat8.x;
  u_xlat78 = ((x_3519 * x_3521) + 1.00001001358032226562f);
  let x_3525 : f32 = u_xlat54;
  let x_3526 : f32 = u_xlat54;
  u_xlat54 = (x_3525 * x_3526);
  let x_3528 : f32 = u_xlat78;
  let x_3529 : f32 = u_xlat78;
  u_xlat78 = (x_3528 * x_3529);
  let x_3531 : f32 = u_xlat54;
  u_xlat54 = max(x_3531, 0.10000000149011611938f);
  let x_3534 : f32 = u_xlat78;
  let x_3535 : f32 = u_xlat54;
  u_xlat78 = (x_3534 * x_3535);
  let x_3538 : f32 = u_xlat6.x;
  let x_3539 : f32 = u_xlat78;
  u_xlat78 = (x_3538 * x_3539);
  let x_3541 : f32 = u_xlat82;
  let x_3542 : f32 = u_xlat78;
  u_xlat78 = (x_3541 / x_3542);
  let x_3544 : f32 = u_xlat78;
  let x_3548 : vec3<f32> = u_xlat4;
  u_xlat34 = ((vec3<f32>(x_3544, x_3544, x_3544) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_3548);
  let x_3550 : vec4<f32> = u_xlat7;
  let x_3552 : vec3<f32> = u_xlat34;
  let x_3553 : vec3<f32> = (vec3<f32>(x_3550.x, x_3550.y, x_3550.z) * x_3552);
  let x_3554 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3553.x, x_3553.y, x_3553.z, x_3554.w);
  let x_3558 : f32 = x_75.x_AdditionalLightsCount.x;
  let x_3560 : f32 = x_132.unity_LightData.y;
  u_xlat78 = min(x_3558, x_3560);
  let x_3563 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_3563));
  let x_3566 : f32 = u_xlat80;
  let x_3569 : f32 = x_249.x_AdditionalShadowFadeParams.x;
  let x_3572 : f32 = x_249.x_AdditionalShadowFadeParams.y;
  u_xlat54 = ((x_3566 * x_3569) + x_3572);
  let x_3574 : f32 = u_xlat54;
  u_xlat54 = clamp(x_3574, 0.0f, 1.0f);
  u_xlat34.x = 0.0f;
  u_xlat34.y = 0.0f;
  u_xlat34.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_3585 : u32 = u_xlatu_loop_1;
    let x_3586 : u32 = u_xlatu78;
    if ((x_3585 < x_3586)) {
    } else {
      break;
    }
    let x_3589 : u32 = u_xlatu_loop_1;
    u_xlatu81 = (x_3589 >> 2u);
    let x_3592 : u32 = u_xlatu_loop_1;
    u_xlati83 = bitcast<i32>((x_3592 & 3u));
    let x_3595 : u32 = u_xlatu81;
    let x_3598 : vec4<f32> = x_132.unity_LightIndices[bitcast<i32>(x_3595)];
    let x_3608 : i32 = u_xlati83;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_3613 : vec4<u32> = indexable[x_3608];
    u_xlat81 = dot(x_3598, bitcast<vec4<f32>>(x_3613));
    let x_3617 : f32 = u_xlat81;
    u_xlati81 = i32(x_3617);
    let x_3619 : vec3<f32> = vs_INTERP8;
    let x_3630 : i32 = u_xlati81;
    let x_3632 : vec4<f32> = x_3629.x_AdditionalLightsPosition[x_3630];
    let x_3635 : i32 = u_xlati81;
    let x_3637 : vec4<f32> = x_3629.x_AdditionalLightsPosition[x_3635];
    let x_3639 : vec3<f32> = ((-(x_3619) * vec3<f32>(x_3632.w, x_3632.w, x_3632.w)) + vec3<f32>(x_3637.x, x_3637.y, x_3637.z));
    let x_3640 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3639.x, x_3639.y, x_3639.z, x_3640.w);
    let x_3643 : vec4<f32> = u_xlat9;
    let x_3645 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_3643.x, x_3643.y, x_3643.z), vec3<f32>(x_3645.x, x_3645.y, x_3645.z));
    let x_3648 : f32 = u_xlat83;
    u_xlat83 = max(x_3648, 0.00006103515625f);
    let x_3651 : f32 = u_xlat83;
    u_xlat58.x = inverseSqrt(x_3651);
    let x_3654 : vec2<f32> = u_xlat58;
    let x_3656 : vec4<f32> = u_xlat9;
    let x_3658 : vec3<f32> = (vec3<f32>(x_3654.x, x_3654.x, x_3654.x) * vec3<f32>(x_3656.x, x_3656.y, x_3656.z));
    let x_3659 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3658.x, x_3658.y, x_3658.z, x_3659.w);
    let x_3661 : f32 = u_xlat83;
    u_xlat84 = (1.0f / x_3661);
    let x_3663 : f32 = u_xlat83;
    let x_3664 : i32 = u_xlati81;
    let x_3666 : f32 = x_3629.x_AdditionalLightsAttenuation[x_3664].x;
    u_xlat83 = (x_3663 * x_3666);
    let x_3668 : f32 = u_xlat83;
    let x_3670 : f32 = u_xlat83;
    u_xlat83 = ((-(x_3668) * x_3670) + 1.0f);
    let x_3673 : f32 = u_xlat83;
    u_xlat83 = max(x_3673, 0.0f);
    let x_3675 : f32 = u_xlat83;
    let x_3676 : f32 = u_xlat83;
    u_xlat83 = (x_3675 * x_3676);
    let x_3678 : f32 = u_xlat83;
    let x_3679 : f32 = u_xlat84;
    u_xlat83 = (x_3678 * x_3679);
    let x_3681 : i32 = u_xlati81;
    let x_3683 : vec4<f32> = x_3629.x_AdditionalLightsSpotDir[x_3681];
    let x_3685 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_3683.x, x_3683.y, x_3683.z), vec3<f32>(x_3685.x, x_3685.y, x_3685.z));
    let x_3688 : f32 = u_xlat84;
    let x_3689 : i32 = u_xlati81;
    let x_3691 : f32 = x_3629.x_AdditionalLightsAttenuation[x_3689].z;
    let x_3693 : i32 = u_xlati81;
    let x_3695 : f32 = x_3629.x_AdditionalLightsAttenuation[x_3693].w;
    u_xlat84 = ((x_3688 * x_3691) + x_3695);
    let x_3697 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3697, 0.0f, 1.0f);
    let x_3699 : f32 = u_xlat84;
    let x_3700 : f32 = u_xlat84;
    u_xlat84 = (x_3699 * x_3700);
    let x_3702 : f32 = u_xlat83;
    let x_3703 : f32 = u_xlat84;
    u_xlat83 = (x_3702 * x_3703);
    let x_3707 : i32 = u_xlati81;
    let x_3709 : f32 = x_249.x_AdditionalShadowParams[x_3707].w;
    u_xlati84 = i32(x_3709);
    let x_3712 : i32 = u_xlati84;
    u_xlatb85 = (x_3712 >= 0i);
    let x_3714 : bool = u_xlatb85;
    if (x_3714) {
      let x_3718 : i32 = u_xlati81;
      let x_3720 : f32 = x_249.x_AdditionalShadowParams[x_3718].z;
      u_xlatb85 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_3720, x_3720, x_3720, x_3720))));
      let x_3725 : bool = u_xlatb85;
      if (x_3725) {
        let x_3730 : vec4<f32> = u_xlat10;
        let x_3733 : vec4<f32> = u_xlat10;
        let x_3736 : vec4<bool> = (abs(vec4<f32>(x_3730.z, x_3730.z, x_3730.y, x_3730.z)) >= abs(vec4<f32>(x_3733.x, x_3733.y, x_3733.x, x_3733.x)));
        let x_3738 : vec3<bool> = vec3<bool>(x_3736.x, x_3736.y, x_3736.z);
        let x_3739 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3738.x, x_3738.y, x_3738.z, x_3739.w);
        let x_3742 : bool = u_xlatb11.y;
        let x_3744 : bool = u_xlatb11.x;
        u_xlatb85 = (x_3742 & x_3744);
        let x_3746 : vec4<f32> = u_xlat10;
        let x_3749 : vec4<bool> = (-(vec4<f32>(x_3746.z, x_3746.y, x_3746.z, x_3746.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_3750 : vec3<bool> = vec3<bool>(x_3749.x, x_3749.y, x_3749.w);
        let x_3751 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3750.x, x_3750.y, x_3751.z, x_3750.z);
        let x_3754 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_3754);
        let x_3759 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_3759);
        let x_3765 : bool = u_xlatb11.w;
        u_xlat87 = select(0.0f, 1.0f, x_3765);
        let x_3768 : bool = u_xlatb11.z;
        if (x_3768) {
          let x_3773 : f32 = u_xlat11.y;
          x_3769 = x_3773;
        } else {
          let x_3775 : f32 = u_xlat87;
          x_3769 = x_3775;
        }
        let x_3776 : f32 = x_3769;
        u_xlat87 = x_3776;
        let x_3778 : bool = u_xlatb85;
        if (x_3778) {
          let x_3783 : f32 = u_xlat11.x;
          x_3779 = x_3783;
        } else {
          let x_3785 : f32 = u_xlat87;
          x_3779 = x_3785;
        }
        let x_3786 : f32 = x_3779;
        u_xlat85 = x_3786;
        let x_3787 : i32 = u_xlati81;
        let x_3789 : f32 = x_249.x_AdditionalShadowParams[x_3787].w;
        u_xlat87 = trunc(x_3789);
        let x_3791 : f32 = u_xlat85;
        let x_3792 : f32 = u_xlat87;
        u_xlat85 = (x_3791 + x_3792);
        let x_3794 : f32 = u_xlat85;
        u_xlati84 = i32(x_3794);
      }
      let x_3796 : i32 = u_xlati84;
      u_xlati84 = (x_3796 << bitcast<u32>(2i));
      let x_3798 : vec3<f32> = vs_INTERP8;
      let x_3801 : i32 = u_xlati84;
      let x_3804 : i32 = u_xlati84;
      let x_3808 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_3801 + 1i) / 4i)][((x_3804 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_3798.y, x_3798.y, x_3798.y, x_3798.y) * x_3808);
      let x_3810 : i32 = u_xlati84;
      let x_3812 : i32 = u_xlati84;
      let x_3815 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[(x_3810 / 4i)][(x_3812 % 4i)];
      let x_3816 : vec3<f32> = vs_INTERP8;
      let x_3819 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3815 * vec4<f32>(x_3816.x, x_3816.x, x_3816.x, x_3816.x)) + x_3819);
      let x_3821 : i32 = u_xlati84;
      let x_3824 : i32 = u_xlati84;
      let x_3828 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_3821 + 2i) / 4i)][((x_3824 + 2i) % 4i)];
      let x_3829 : vec3<f32> = vs_INTERP8;
      let x_3832 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3828 * vec4<f32>(x_3829.z, x_3829.z, x_3829.z, x_3829.z)) + x_3832);
      let x_3834 : vec4<f32> = u_xlat11;
      let x_3835 : i32 = u_xlati84;
      let x_3838 : i32 = u_xlati84;
      let x_3842 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_3835 + 3i) / 4i)][((x_3838 + 3i) % 4i)];
      u_xlat11 = (x_3834 + x_3842);
      let x_3844 : vec4<f32> = u_xlat11;
      let x_3846 : vec4<f32> = u_xlat11;
      let x_3848 : vec3<f32> = (vec3<f32>(x_3844.x, x_3844.y, x_3844.z) / vec3<f32>(x_3846.w, x_3846.w, x_3846.w));
      let x_3849 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3848.x, x_3848.y, x_3848.z, x_3849.w);
      let x_3852 : i32 = u_xlati81;
      let x_3854 : f32 = x_249.x_AdditionalShadowParams[x_3852].y;
      u_xlatb84 = (0.0f < x_3854);
      let x_3856 : bool = u_xlatb84;
      if (x_3856) {
        let x_3859 : i32 = u_xlati81;
        let x_3861 : f32 = x_249.x_AdditionalShadowParams[x_3859].y;
        u_xlatb84 = (1.0f == x_3861);
        let x_3863 : bool = u_xlatb84;
        if (x_3863) {
          let x_3866 : vec4<f32> = u_xlat11;
          let x_3870 : vec4<f32> = x_249.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_3866.x, x_3866.y, x_3866.x, x_3866.y) + x_3870);
          let x_3873 : vec4<f32> = u_xlat12;
          let x_3874 : vec2<f32> = vec2<f32>(x_3873.x, x_3873.y);
          let x_3876 : f32 = u_xlat11.z;
          txVec60 = vec3<f32>(x_3874.x, x_3874.y, x_3876);
          let x_3884 : vec3<f32> = txVec60;
          let x_3886 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3884.xy, x_3884.z);
          u_xlat13.x = x_3886;
          let x_3889 : vec4<f32> = u_xlat12;
          let x_3890 : vec2<f32> = vec2<f32>(x_3889.z, x_3889.w);
          let x_3892 : f32 = u_xlat11.z;
          txVec61 = vec3<f32>(x_3890.x, x_3890.y, x_3892);
          let x_3899 : vec3<f32> = txVec61;
          let x_3901 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3899.xy, x_3899.z);
          u_xlat13.y = x_3901;
          let x_3903 : vec4<f32> = u_xlat11;
          let x_3906 : vec4<f32> = x_249.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_3903.x, x_3903.y, x_3903.x, x_3903.y) + x_3906);
          let x_3909 : vec4<f32> = u_xlat12;
          let x_3910 : vec2<f32> = vec2<f32>(x_3909.x, x_3909.y);
          let x_3912 : f32 = u_xlat11.z;
          txVec62 = vec3<f32>(x_3910.x, x_3910.y, x_3912);
          let x_3919 : vec3<f32> = txVec62;
          let x_3921 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3919.xy, x_3919.z);
          u_xlat13.z = x_3921;
          let x_3924 : vec4<f32> = u_xlat12;
          let x_3925 : vec2<f32> = vec2<f32>(x_3924.z, x_3924.w);
          let x_3927 : f32 = u_xlat11.z;
          txVec63 = vec3<f32>(x_3925.x, x_3925.y, x_3927);
          let x_3934 : vec3<f32> = txVec63;
          let x_3936 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3934.xy, x_3934.z);
          u_xlat13.w = x_3936;
          let x_3938 : vec4<f32> = u_xlat13;
          u_xlat84 = dot(x_3938, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3941 : i32 = u_xlati81;
          let x_3943 : f32 = x_249.x_AdditionalShadowParams[x_3941].y;
          u_xlatb85 = (2.0f == x_3943);
          let x_3945 : bool = u_xlatb85;
          if (x_3945) {
            let x_3948 : vec4<f32> = u_xlat11;
            let x_3952 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_3955 : vec2<f32> = ((vec2<f32>(x_3948.x, x_3948.y) * vec2<f32>(x_3952.z, x_3952.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3956 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3955.x, x_3955.y, x_3956.z, x_3956.w);
            let x_3958 : vec4<f32> = u_xlat12;
            let x_3960 : vec2<f32> = floor(vec2<f32>(x_3958.x, x_3958.y));
            let x_3961 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3960.x, x_3960.y, x_3961.z, x_3961.w);
            let x_3964 : vec4<f32> = u_xlat11;
            let x_3967 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_3970 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3964.x, x_3964.y) * vec2<f32>(x_3967.z, x_3967.w)) + -(vec2<f32>(x_3970.x, x_3970.y)));
            let x_3974 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3974.x, x_3974.x, x_3974.y, x_3974.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3977 : vec4<f32> = u_xlat13;
            let x_3979 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3977.x, x_3977.x, x_3977.z, x_3977.z) * vec4<f32>(x_3979.x, x_3979.x, x_3979.z, x_3979.z));
            let x_3982 : vec4<f32> = u_xlat14;
            let x_3984 : vec2<f32> = (vec2<f32>(x_3982.y, x_3982.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3985 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3984.x, x_3985.y, x_3984.y, x_3985.w);
            let x_3987 : vec4<f32> = u_xlat14;
            let x_3990 : vec2<f32> = u_xlat64;
            let x_3992 : vec2<f32> = ((vec2<f32>(x_3987.x, x_3987.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3990));
            let x_3993 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3992.x, x_3992.y, x_3993.z, x_3993.w);
            let x_3996 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_3996) + vec2<f32>(1.0f, 1.0f));
            let x_3999 : vec2<f32> = u_xlat64;
            let x_4000 : vec2<f32> = min(x_3999, vec2<f32>(0.0f, 0.0f));
            let x_4001 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4000.x, x_4000.y, x_4001.z, x_4001.w);
            let x_4003 : vec4<f32> = u_xlat15;
            let x_4006 : vec4<f32> = u_xlat15;
            let x_4009 : vec2<f32> = u_xlat66;
            let x_4010 : vec2<f32> = ((-(vec2<f32>(x_4003.x, x_4003.y)) * vec2<f32>(x_4006.x, x_4006.y)) + x_4009);
            let x_4011 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4010.x, x_4010.y, x_4011.z, x_4011.w);
            let x_4013 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_4013, vec2<f32>(0.0f, 0.0f));
            let x_4015 : vec2<f32> = u_xlat64;
            let x_4017 : vec2<f32> = u_xlat64;
            let x_4019 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_4015) * x_4017) + vec2<f32>(x_4019.y, x_4019.w));
            let x_4022 : vec4<f32> = u_xlat15;
            let x_4024 : vec2<f32> = (vec2<f32>(x_4022.x, x_4022.y) + vec2<f32>(1.0f, 1.0f));
            let x_4025 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4024.x, x_4024.y, x_4025.z, x_4025.w);
            let x_4027 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_4027 + vec2<f32>(1.0f, 1.0f));
            let x_4029 : vec4<f32> = u_xlat14;
            let x_4031 : vec2<f32> = (vec2<f32>(x_4029.x, x_4029.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4032 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4031.x, x_4031.y, x_4032.z, x_4032.w);
            let x_4034 : vec2<f32> = u_xlat66;
            let x_4035 : vec2<f32> = (x_4034 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4036 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4035.x, x_4035.y, x_4036.z, x_4036.w);
            let x_4038 : vec4<f32> = u_xlat15;
            let x_4040 : vec2<f32> = (vec2<f32>(x_4038.x, x_4038.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4041 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4040.x, x_4040.y, x_4041.z, x_4041.w);
            let x_4043 : vec2<f32> = u_xlat64;
            let x_4044 : vec2<f32> = (x_4043 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4045 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4044.x, x_4044.y, x_4045.z, x_4045.w);
            let x_4047 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_4047.y, x_4047.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4051 : f32 = u_xlat15.x;
            u_xlat16.z = x_4051;
            let x_4054 : f32 = u_xlat64.x;
            u_xlat16.w = x_4054;
            let x_4057 : f32 = u_xlat17.x;
            u_xlat14.z = x_4057;
            let x_4060 : f32 = u_xlat13.x;
            u_xlat14.w = x_4060;
            let x_4062 : vec4<f32> = u_xlat14;
            let x_4064 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_4062.z, x_4062.w, x_4062.x, x_4062.z) + vec4<f32>(x_4064.z, x_4064.w, x_4064.x, x_4064.z));
            let x_4068 : f32 = u_xlat16.y;
            u_xlat15.z = x_4068;
            let x_4071 : f32 = u_xlat64.y;
            u_xlat15.w = x_4071;
            let x_4074 : f32 = u_xlat14.y;
            u_xlat17.z = x_4074;
            let x_4077 : f32 = u_xlat13.z;
            u_xlat17.w = x_4077;
            let x_4079 : vec4<f32> = u_xlat15;
            let x_4081 : vec4<f32> = u_xlat17;
            let x_4083 : vec3<f32> = (vec3<f32>(x_4079.z, x_4079.y, x_4079.w) + vec3<f32>(x_4081.z, x_4081.y, x_4081.w));
            let x_4084 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4083.x, x_4083.y, x_4083.z, x_4084.w);
            let x_4086 : vec4<f32> = u_xlat14;
            let x_4088 : vec4<f32> = u_xlat18;
            let x_4090 : vec3<f32> = (vec3<f32>(x_4086.x, x_4086.z, x_4086.w) / vec3<f32>(x_4088.z, x_4088.w, x_4088.y));
            let x_4091 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4090.x, x_4090.y, x_4090.z, x_4091.w);
            let x_4093 : vec4<f32> = u_xlat14;
            let x_4095 : vec3<f32> = (vec3<f32>(x_4093.x, x_4093.y, x_4093.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4096 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4095.x, x_4095.y, x_4095.z, x_4096.w);
            let x_4098 : vec4<f32> = u_xlat17;
            let x_4100 : vec4<f32> = u_xlat13;
            let x_4102 : vec3<f32> = (vec3<f32>(x_4098.z, x_4098.y, x_4098.w) / vec3<f32>(x_4100.x, x_4100.y, x_4100.z));
            let x_4103 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4102.x, x_4102.y, x_4102.z, x_4103.w);
            let x_4105 : vec4<f32> = u_xlat15;
            let x_4107 : vec3<f32> = (vec3<f32>(x_4105.x, x_4105.y, x_4105.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4108 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4107.x, x_4107.y, x_4107.z, x_4108.w);
            let x_4110 : vec4<f32> = u_xlat14;
            let x_4113 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4115 : vec3<f32> = (vec3<f32>(x_4110.y, x_4110.x, x_4110.z) * vec3<f32>(x_4113.x, x_4113.x, x_4113.x));
            let x_4116 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4115.x, x_4115.y, x_4115.z, x_4116.w);
            let x_4118 : vec4<f32> = u_xlat15;
            let x_4121 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4123 : vec3<f32> = (vec3<f32>(x_4118.x, x_4118.y, x_4118.z) * vec3<f32>(x_4121.y, x_4121.y, x_4121.y));
            let x_4124 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4123.x, x_4123.y, x_4123.z, x_4124.w);
            let x_4127 : f32 = u_xlat15.x;
            u_xlat14.w = x_4127;
            let x_4129 : vec4<f32> = u_xlat12;
            let x_4132 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4135 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_4129.x, x_4129.y, x_4129.x, x_4129.y) * vec4<f32>(x_4132.x, x_4132.y, x_4132.x, x_4132.y)) + vec4<f32>(x_4135.y, x_4135.w, x_4135.x, x_4135.w));
            let x_4138 : vec4<f32> = u_xlat12;
            let x_4141 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4144 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_4138.x, x_4138.y) * vec2<f32>(x_4141.x, x_4141.y)) + vec2<f32>(x_4144.z, x_4144.w));
            let x_4148 : f32 = u_xlat14.y;
            u_xlat15.w = x_4148;
            let x_4150 : vec4<f32> = u_xlat15;
            let x_4151 : vec2<f32> = vec2<f32>(x_4150.y, x_4150.z);
            let x_4152 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4152.x, x_4151.x, x_4152.z, x_4151.y);
            let x_4154 : vec4<f32> = u_xlat12;
            let x_4157 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4160 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_4154.x, x_4154.y, x_4154.x, x_4154.y) * vec4<f32>(x_4157.x, x_4157.y, x_4157.x, x_4157.y)) + vec4<f32>(x_4160.x, x_4160.y, x_4160.z, x_4160.y));
            let x_4163 : vec4<f32> = u_xlat12;
            let x_4166 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4169 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_4163.x, x_4163.y, x_4163.x, x_4163.y) * vec4<f32>(x_4166.x, x_4166.y, x_4166.x, x_4166.y)) + vec4<f32>(x_4169.w, x_4169.y, x_4169.w, x_4169.z));
            let x_4172 : vec4<f32> = u_xlat12;
            let x_4175 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4178 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_4172.x, x_4172.y, x_4172.x, x_4172.y) * vec4<f32>(x_4175.x, x_4175.y, x_4175.x, x_4175.y)) + vec4<f32>(x_4178.x, x_4178.w, x_4178.z, x_4178.w));
            let x_4181 : vec4<f32> = u_xlat13;
            let x_4183 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_4181.x, x_4181.x, x_4181.x, x_4181.y) * vec4<f32>(x_4183.z, x_4183.w, x_4183.y, x_4183.z));
            let x_4186 : vec4<f32> = u_xlat13;
            let x_4188 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_4186.y, x_4186.y, x_4186.z, x_4186.z) * x_4188);
            let x_4191 : f32 = u_xlat13.z;
            let x_4193 : f32 = u_xlat18.y;
            u_xlat85 = (x_4191 * x_4193);
            let x_4196 : vec4<f32> = u_xlat16;
            let x_4197 : vec2<f32> = vec2<f32>(x_4196.x, x_4196.y);
            let x_4199 : f32 = u_xlat11.z;
            txVec64 = vec3<f32>(x_4197.x, x_4197.y, x_4199);
            let x_4206 : vec3<f32> = txVec64;
            let x_4208 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4206.xy, x_4206.z);
            u_xlat87 = x_4208;
            let x_4210 : vec4<f32> = u_xlat16;
            let x_4211 : vec2<f32> = vec2<f32>(x_4210.z, x_4210.w);
            let x_4213 : f32 = u_xlat11.z;
            txVec65 = vec3<f32>(x_4211.x, x_4211.y, x_4213);
            let x_4221 : vec3<f32> = txVec65;
            let x_4223 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4221.xy, x_4221.z);
            u_xlat88 = x_4223;
            let x_4224 : f32 = u_xlat88;
            let x_4226 : f32 = u_xlat19.y;
            u_xlat88 = (x_4224 * x_4226);
            let x_4229 : f32 = u_xlat19.x;
            let x_4230 : f32 = u_xlat87;
            let x_4232 : f32 = u_xlat88;
            u_xlat87 = ((x_4229 * x_4230) + x_4232);
            let x_4235 : vec2<f32> = u_xlat64;
            let x_4237 : f32 = u_xlat11.z;
            txVec66 = vec3<f32>(x_4235.x, x_4235.y, x_4237);
            let x_4244 : vec3<f32> = txVec66;
            let x_4246 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4244.xy, x_4244.z);
            u_xlat88 = x_4246;
            let x_4248 : f32 = u_xlat19.z;
            let x_4249 : f32 = u_xlat88;
            let x_4251 : f32 = u_xlat87;
            u_xlat87 = ((x_4248 * x_4249) + x_4251);
            let x_4254 : vec4<f32> = u_xlat15;
            let x_4255 : vec2<f32> = vec2<f32>(x_4254.x, x_4254.y);
            let x_4257 : f32 = u_xlat11.z;
            txVec67 = vec3<f32>(x_4255.x, x_4255.y, x_4257);
            let x_4264 : vec3<f32> = txVec67;
            let x_4266 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4264.xy, x_4264.z);
            u_xlat88 = x_4266;
            let x_4268 : f32 = u_xlat19.w;
            let x_4269 : f32 = u_xlat88;
            let x_4271 : f32 = u_xlat87;
            u_xlat87 = ((x_4268 * x_4269) + x_4271);
            let x_4274 : vec4<f32> = u_xlat17;
            let x_4275 : vec2<f32> = vec2<f32>(x_4274.x, x_4274.y);
            let x_4277 : f32 = u_xlat11.z;
            txVec68 = vec3<f32>(x_4275.x, x_4275.y, x_4277);
            let x_4284 : vec3<f32> = txVec68;
            let x_4286 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4284.xy, x_4284.z);
            u_xlat88 = x_4286;
            let x_4288 : f32 = u_xlat20.x;
            let x_4289 : f32 = u_xlat88;
            let x_4291 : f32 = u_xlat87;
            u_xlat87 = ((x_4288 * x_4289) + x_4291);
            let x_4294 : vec4<f32> = u_xlat17;
            let x_4295 : vec2<f32> = vec2<f32>(x_4294.z, x_4294.w);
            let x_4297 : f32 = u_xlat11.z;
            txVec69 = vec3<f32>(x_4295.x, x_4295.y, x_4297);
            let x_4304 : vec3<f32> = txVec69;
            let x_4306 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4304.xy, x_4304.z);
            u_xlat88 = x_4306;
            let x_4308 : f32 = u_xlat20.y;
            let x_4309 : f32 = u_xlat88;
            let x_4311 : f32 = u_xlat87;
            u_xlat87 = ((x_4308 * x_4309) + x_4311);
            let x_4314 : vec4<f32> = u_xlat15;
            let x_4315 : vec2<f32> = vec2<f32>(x_4314.z, x_4314.w);
            let x_4317 : f32 = u_xlat11.z;
            txVec70 = vec3<f32>(x_4315.x, x_4315.y, x_4317);
            let x_4324 : vec3<f32> = txVec70;
            let x_4326 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4324.xy, x_4324.z);
            u_xlat88 = x_4326;
            let x_4328 : f32 = u_xlat20.z;
            let x_4329 : f32 = u_xlat88;
            let x_4331 : f32 = u_xlat87;
            u_xlat87 = ((x_4328 * x_4329) + x_4331);
            let x_4334 : vec4<f32> = u_xlat14;
            let x_4335 : vec2<f32> = vec2<f32>(x_4334.x, x_4334.y);
            let x_4337 : f32 = u_xlat11.z;
            txVec71 = vec3<f32>(x_4335.x, x_4335.y, x_4337);
            let x_4344 : vec3<f32> = txVec71;
            let x_4346 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4344.xy, x_4344.z);
            u_xlat88 = x_4346;
            let x_4348 : f32 = u_xlat20.w;
            let x_4349 : f32 = u_xlat88;
            let x_4351 : f32 = u_xlat87;
            u_xlat87 = ((x_4348 * x_4349) + x_4351);
            let x_4354 : vec4<f32> = u_xlat14;
            let x_4355 : vec2<f32> = vec2<f32>(x_4354.z, x_4354.w);
            let x_4357 : f32 = u_xlat11.z;
            txVec72 = vec3<f32>(x_4355.x, x_4355.y, x_4357);
            let x_4364 : vec3<f32> = txVec72;
            let x_4366 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4364.xy, x_4364.z);
            u_xlat88 = x_4366;
            let x_4367 : f32 = u_xlat85;
            let x_4368 : f32 = u_xlat88;
            let x_4370 : f32 = u_xlat87;
            u_xlat84 = ((x_4367 * x_4368) + x_4370);
          } else {
            let x_4373 : vec4<f32> = u_xlat11;
            let x_4376 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4379 : vec2<f32> = ((vec2<f32>(x_4373.x, x_4373.y) * vec2<f32>(x_4376.z, x_4376.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4380 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4379.x, x_4379.y, x_4380.z, x_4380.w);
            let x_4382 : vec4<f32> = u_xlat12;
            let x_4384 : vec2<f32> = floor(vec2<f32>(x_4382.x, x_4382.y));
            let x_4385 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4384.x, x_4384.y, x_4385.z, x_4385.w);
            let x_4387 : vec4<f32> = u_xlat11;
            let x_4390 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4393 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_4387.x, x_4387.y) * vec2<f32>(x_4390.z, x_4390.w)) + -(vec2<f32>(x_4393.x, x_4393.y)));
            let x_4397 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_4397.x, x_4397.x, x_4397.y, x_4397.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4400 : vec4<f32> = u_xlat13;
            let x_4402 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4400.x, x_4400.x, x_4400.z, x_4400.z) * vec4<f32>(x_4402.x, x_4402.x, x_4402.z, x_4402.z));
            let x_4405 : vec4<f32> = u_xlat14;
            let x_4407 : vec2<f32> = (vec2<f32>(x_4405.y, x_4405.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_4408 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4408.x, x_4407.x, x_4408.z, x_4407.y);
            let x_4410 : vec4<f32> = u_xlat14;
            let x_4413 : vec2<f32> = u_xlat64;
            let x_4415 : vec2<f32> = ((vec2<f32>(x_4410.x, x_4410.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4413));
            let x_4416 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4415.x, x_4416.y, x_4415.y, x_4416.w);
            let x_4418 : vec2<f32> = u_xlat64;
            let x_4420 : vec2<f32> = (-(x_4418) + vec2<f32>(1.0f, 1.0f));
            let x_4421 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4420.x, x_4420.y, x_4421.z, x_4421.w);
            let x_4423 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_4423, vec2<f32>(0.0f, 0.0f));
            let x_4425 : vec2<f32> = u_xlat66;
            let x_4427 : vec2<f32> = u_xlat66;
            let x_4429 : vec4<f32> = u_xlat14;
            let x_4431 : vec2<f32> = ((-(x_4425) * x_4427) + vec2<f32>(x_4429.x, x_4429.y));
            let x_4432 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4431.x, x_4431.y, x_4432.z, x_4432.w);
            let x_4434 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_4434, vec2<f32>(0.0f, 0.0f));
            let x_4437 : vec2<f32> = u_xlat66;
            let x_4439 : vec2<f32> = u_xlat66;
            let x_4441 : vec4<f32> = u_xlat13;
            let x_4443 : vec2<f32> = ((-(x_4437) * x_4439) + vec2<f32>(x_4441.y, x_4441.w));
            let x_4444 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_4443.x, x_4444.y, x_4443.y);
            let x_4446 : vec4<f32> = u_xlat14;
            let x_4448 : vec2<f32> = (vec2<f32>(x_4446.x, x_4446.y) + vec2<f32>(2.0f, 2.0f));
            let x_4449 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4448.x, x_4448.y, x_4449.z, x_4449.w);
            let x_4451 : vec3<f32> = u_xlat39;
            let x_4453 : vec2<f32> = (vec2<f32>(x_4451.x, x_4451.z) + vec2<f32>(2.0f, 2.0f));
            let x_4454 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4454.x, x_4453.x, x_4454.z, x_4453.y);
            let x_4457 : f32 = u_xlat13.y;
            u_xlat16.z = (x_4457 * 0.08163200318813323975f);
            let x_4460 : vec4<f32> = u_xlat13;
            let x_4462 : vec3<f32> = (vec3<f32>(x_4460.z, x_4460.x, x_4460.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_4463 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4462.x, x_4462.y, x_4462.z, x_4463.w);
            let x_4465 : vec4<f32> = u_xlat14;
            let x_4467 : vec2<f32> = (vec2<f32>(x_4465.x, x_4465.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_4468 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4467.x, x_4467.y, x_4468.z, x_4468.w);
            let x_4471 : f32 = u_xlat17.y;
            u_xlat16.x = x_4471;
            let x_4473 : vec2<f32> = u_xlat64;
            let x_4476 : vec2<f32> = ((vec2<f32>(x_4473.x, x_4473.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4477 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4477.x, x_4476.x, x_4477.z, x_4476.y);
            let x_4479 : vec2<f32> = u_xlat64;
            let x_4482 : vec2<f32> = ((vec2<f32>(x_4479.x, x_4479.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4483 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4482.x, x_4483.y, x_4482.y, x_4483.w);
            let x_4486 : f32 = u_xlat13.x;
            u_xlat14.y = x_4486;
            let x_4489 : f32 = u_xlat15.y;
            u_xlat14.w = x_4489;
            let x_4491 : vec4<f32> = u_xlat14;
            let x_4492 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_4491 + x_4492);
            let x_4494 : vec2<f32> = u_xlat64;
            let x_4497 : vec2<f32> = ((vec2<f32>(x_4494.y, x_4494.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4498 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4498.x, x_4497.x, x_4498.z, x_4497.y);
            let x_4500 : vec2<f32> = u_xlat64;
            let x_4503 : vec2<f32> = ((vec2<f32>(x_4500.y, x_4500.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4504 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4503.x, x_4504.y, x_4503.y, x_4504.w);
            let x_4507 : f32 = u_xlat13.y;
            u_xlat15.y = x_4507;
            let x_4509 : vec4<f32> = u_xlat15;
            let x_4510 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_4509 + x_4510);
            let x_4512 : vec4<f32> = u_xlat14;
            let x_4513 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_4512 / x_4513);
            let x_4515 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_4515 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4517 : vec4<f32> = u_xlat15;
            let x_4518 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_4517 / x_4518);
            let x_4520 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_4520 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4522 : vec4<f32> = u_xlat14;
            let x_4525 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_4522.w, x_4522.x, x_4522.y, x_4522.z) * vec4<f32>(x_4525.x, x_4525.x, x_4525.x, x_4525.x));
            let x_4528 : vec4<f32> = u_xlat15;
            let x_4531 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_4528.x, x_4528.w, x_4528.y, x_4528.z) * vec4<f32>(x_4531.y, x_4531.y, x_4531.y, x_4531.y));
            let x_4534 : vec4<f32> = u_xlat14;
            let x_4535 : vec3<f32> = vec3<f32>(x_4534.y, x_4534.z, x_4534.w);
            let x_4536 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4535.x, x_4536.y, x_4535.y, x_4535.z);
            let x_4539 : f32 = u_xlat15.x;
            u_xlat17.y = x_4539;
            let x_4541 : vec4<f32> = u_xlat12;
            let x_4544 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4547 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_4541.x, x_4541.y, x_4541.x, x_4541.y) * vec4<f32>(x_4544.x, x_4544.y, x_4544.x, x_4544.y)) + vec4<f32>(x_4547.x, x_4547.y, x_4547.z, x_4547.y));
            let x_4550 : vec4<f32> = u_xlat12;
            let x_4553 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4556 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_4550.x, x_4550.y) * vec2<f32>(x_4553.x, x_4553.y)) + vec2<f32>(x_4556.w, x_4556.y));
            let x_4560 : f32 = u_xlat17.y;
            u_xlat14.y = x_4560;
            let x_4563 : f32 = u_xlat15.z;
            u_xlat17.y = x_4563;
            let x_4565 : vec4<f32> = u_xlat12;
            let x_4568 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4571 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_4565.x, x_4565.y, x_4565.x, x_4565.y) * vec4<f32>(x_4568.x, x_4568.y, x_4568.x, x_4568.y)) + vec4<f32>(x_4571.x, x_4571.y, x_4571.z, x_4571.y));
            let x_4574 : vec4<f32> = u_xlat12;
            let x_4577 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4580 : vec4<f32> = u_xlat17;
            let x_4582 : vec2<f32> = ((vec2<f32>(x_4574.x, x_4574.y) * vec2<f32>(x_4577.x, x_4577.y)) + vec2<f32>(x_4580.w, x_4580.y));
            let x_4583 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_4582.x, x_4582.y, x_4583.z, x_4583.w);
            let x_4586 : f32 = u_xlat17.y;
            u_xlat14.z = x_4586;
            let x_4589 : vec4<f32> = u_xlat12;
            let x_4592 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4595 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_4589.x, x_4589.y, x_4589.x, x_4589.y) * vec4<f32>(x_4592.x, x_4592.y, x_4592.x, x_4592.y)) + vec4<f32>(x_4595.x, x_4595.y, x_4595.x, x_4595.z));
            let x_4599 : f32 = u_xlat15.w;
            u_xlat17.y = x_4599;
            let x_4602 : vec4<f32> = u_xlat12;
            let x_4605 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4608 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_4602.x, x_4602.y, x_4602.x, x_4602.y) * vec4<f32>(x_4605.x, x_4605.y, x_4605.x, x_4605.y)) + vec4<f32>(x_4608.x, x_4608.y, x_4608.z, x_4608.y));
            let x_4612 : vec4<f32> = u_xlat12;
            let x_4615 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4618 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_4612.x, x_4612.y) * vec2<f32>(x_4615.x, x_4615.y)) + vec2<f32>(x_4618.w, x_4618.y));
            let x_4622 : f32 = u_xlat17.y;
            u_xlat14.w = x_4622;
            let x_4625 : vec4<f32> = u_xlat12;
            let x_4628 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4631 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_4625.x, x_4625.y) * vec2<f32>(x_4628.x, x_4628.y)) + vec2<f32>(x_4631.x, x_4631.w));
            let x_4634 : vec4<f32> = u_xlat17;
            let x_4635 : vec3<f32> = vec3<f32>(x_4634.x, x_4634.z, x_4634.w);
            let x_4636 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4635.x, x_4636.y, x_4635.y, x_4635.z);
            let x_4638 : vec4<f32> = u_xlat12;
            let x_4641 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4644 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_4638.x, x_4638.y, x_4638.x, x_4638.y) * vec4<f32>(x_4641.x, x_4641.y, x_4641.x, x_4641.y)) + vec4<f32>(x_4644.x, x_4644.y, x_4644.z, x_4644.y));
            let x_4647 : vec4<f32> = u_xlat12;
            let x_4650 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4653 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_4647.x, x_4647.y) * vec2<f32>(x_4650.x, x_4650.y)) + vec2<f32>(x_4653.w, x_4653.y));
            let x_4657 : f32 = u_xlat14.x;
            u_xlat15.x = x_4657;
            let x_4659 : vec4<f32> = u_xlat12;
            let x_4662 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_4665 : vec4<f32> = u_xlat15;
            let x_4667 : vec2<f32> = ((vec2<f32>(x_4659.x, x_4659.y) * vec2<f32>(x_4662.x, x_4662.y)) + vec2<f32>(x_4665.x, x_4665.y));
            let x_4668 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4667.x, x_4667.y, x_4668.z, x_4668.w);
            let x_4671 : vec4<f32> = u_xlat13;
            let x_4673 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_4671.x, x_4671.x, x_4671.x, x_4671.x) * x_4673);
            let x_4676 : vec4<f32> = u_xlat13;
            let x_4678 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_4676.y, x_4676.y, x_4676.y, x_4676.y) * x_4678);
            let x_4681 : vec4<f32> = u_xlat13;
            let x_4683 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_4681.z, x_4681.z, x_4681.z, x_4681.z) * x_4683);
            let x_4685 : vec4<f32> = u_xlat13;
            let x_4687 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_4685.w, x_4685.w, x_4685.w, x_4685.w) * x_4687);
            let x_4690 : vec4<f32> = u_xlat18;
            let x_4691 : vec2<f32> = vec2<f32>(x_4690.x, x_4690.y);
            let x_4693 : f32 = u_xlat11.z;
            txVec73 = vec3<f32>(x_4691.x, x_4691.y, x_4693);
            let x_4700 : vec3<f32> = txVec73;
            let x_4702 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4700.xy, x_4700.z);
            u_xlat85 = x_4702;
            let x_4704 : vec4<f32> = u_xlat18;
            let x_4705 : vec2<f32> = vec2<f32>(x_4704.z, x_4704.w);
            let x_4707 : f32 = u_xlat11.z;
            txVec74 = vec3<f32>(x_4705.x, x_4705.y, x_4707);
            let x_4714 : vec3<f32> = txVec74;
            let x_4716 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4714.xy, x_4714.z);
            u_xlat87 = x_4716;
            let x_4717 : f32 = u_xlat87;
            let x_4719 : f32 = u_xlat23.y;
            u_xlat87 = (x_4717 * x_4719);
            let x_4722 : f32 = u_xlat23.x;
            let x_4723 : f32 = u_xlat85;
            let x_4725 : f32 = u_xlat87;
            u_xlat85 = ((x_4722 * x_4723) + x_4725);
            let x_4728 : vec2<f32> = u_xlat64;
            let x_4730 : f32 = u_xlat11.z;
            txVec75 = vec3<f32>(x_4728.x, x_4728.y, x_4730);
            let x_4737 : vec3<f32> = txVec75;
            let x_4739 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4737.xy, x_4737.z);
            u_xlat87 = x_4739;
            let x_4741 : f32 = u_xlat23.z;
            let x_4742 : f32 = u_xlat87;
            let x_4744 : f32 = u_xlat85;
            u_xlat85 = ((x_4741 * x_4742) + x_4744);
            let x_4747 : vec4<f32> = u_xlat21;
            let x_4748 : vec2<f32> = vec2<f32>(x_4747.x, x_4747.y);
            let x_4750 : f32 = u_xlat11.z;
            txVec76 = vec3<f32>(x_4748.x, x_4748.y, x_4750);
            let x_4757 : vec3<f32> = txVec76;
            let x_4759 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4757.xy, x_4757.z);
            u_xlat87 = x_4759;
            let x_4761 : f32 = u_xlat23.w;
            let x_4762 : f32 = u_xlat87;
            let x_4764 : f32 = u_xlat85;
            u_xlat85 = ((x_4761 * x_4762) + x_4764);
            let x_4767 : vec4<f32> = u_xlat19;
            let x_4768 : vec2<f32> = vec2<f32>(x_4767.x, x_4767.y);
            let x_4770 : f32 = u_xlat11.z;
            txVec77 = vec3<f32>(x_4768.x, x_4768.y, x_4770);
            let x_4777 : vec3<f32> = txVec77;
            let x_4779 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4777.xy, x_4777.z);
            u_xlat87 = x_4779;
            let x_4781 : f32 = u_xlat24.x;
            let x_4782 : f32 = u_xlat87;
            let x_4784 : f32 = u_xlat85;
            u_xlat85 = ((x_4781 * x_4782) + x_4784);
            let x_4787 : vec4<f32> = u_xlat19;
            let x_4788 : vec2<f32> = vec2<f32>(x_4787.z, x_4787.w);
            let x_4790 : f32 = u_xlat11.z;
            txVec78 = vec3<f32>(x_4788.x, x_4788.y, x_4790);
            let x_4797 : vec3<f32> = txVec78;
            let x_4799 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4797.xy, x_4797.z);
            u_xlat87 = x_4799;
            let x_4801 : f32 = u_xlat24.y;
            let x_4802 : f32 = u_xlat87;
            let x_4804 : f32 = u_xlat85;
            u_xlat85 = ((x_4801 * x_4802) + x_4804);
            let x_4807 : vec4<f32> = u_xlat20;
            let x_4808 : vec2<f32> = vec2<f32>(x_4807.x, x_4807.y);
            let x_4810 : f32 = u_xlat11.z;
            txVec79 = vec3<f32>(x_4808.x, x_4808.y, x_4810);
            let x_4817 : vec3<f32> = txVec79;
            let x_4819 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4817.xy, x_4817.z);
            u_xlat87 = x_4819;
            let x_4821 : f32 = u_xlat24.z;
            let x_4822 : f32 = u_xlat87;
            let x_4824 : f32 = u_xlat85;
            u_xlat85 = ((x_4821 * x_4822) + x_4824);
            let x_4827 : vec4<f32> = u_xlat21;
            let x_4828 : vec2<f32> = vec2<f32>(x_4827.z, x_4827.w);
            let x_4830 : f32 = u_xlat11.z;
            txVec80 = vec3<f32>(x_4828.x, x_4828.y, x_4830);
            let x_4837 : vec3<f32> = txVec80;
            let x_4839 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4837.xy, x_4837.z);
            u_xlat87 = x_4839;
            let x_4841 : f32 = u_xlat24.w;
            let x_4842 : f32 = u_xlat87;
            let x_4844 : f32 = u_xlat85;
            u_xlat85 = ((x_4841 * x_4842) + x_4844);
            let x_4847 : vec4<f32> = u_xlat22;
            let x_4848 : vec2<f32> = vec2<f32>(x_4847.x, x_4847.y);
            let x_4850 : f32 = u_xlat11.z;
            txVec81 = vec3<f32>(x_4848.x, x_4848.y, x_4850);
            let x_4857 : vec3<f32> = txVec81;
            let x_4859 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4857.xy, x_4857.z);
            u_xlat87 = x_4859;
            let x_4861 : f32 = u_xlat25.x;
            let x_4862 : f32 = u_xlat87;
            let x_4864 : f32 = u_xlat85;
            u_xlat85 = ((x_4861 * x_4862) + x_4864);
            let x_4867 : vec4<f32> = u_xlat22;
            let x_4868 : vec2<f32> = vec2<f32>(x_4867.z, x_4867.w);
            let x_4870 : f32 = u_xlat11.z;
            txVec82 = vec3<f32>(x_4868.x, x_4868.y, x_4870);
            let x_4877 : vec3<f32> = txVec82;
            let x_4879 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4877.xy, x_4877.z);
            u_xlat87 = x_4879;
            let x_4881 : f32 = u_xlat25.y;
            let x_4882 : f32 = u_xlat87;
            let x_4884 : f32 = u_xlat85;
            u_xlat85 = ((x_4881 * x_4882) + x_4884);
            let x_4887 : vec2<f32> = u_xlat40;
            let x_4889 : f32 = u_xlat11.z;
            txVec83 = vec3<f32>(x_4887.x, x_4887.y, x_4889);
            let x_4896 : vec3<f32> = txVec83;
            let x_4898 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4896.xy, x_4896.z);
            u_xlat87 = x_4898;
            let x_4900 : f32 = u_xlat25.z;
            let x_4901 : f32 = u_xlat87;
            let x_4903 : f32 = u_xlat85;
            u_xlat85 = ((x_4900 * x_4901) + x_4903);
            let x_4906 : vec2<f32> = u_xlat72;
            let x_4908 : f32 = u_xlat11.z;
            txVec84 = vec3<f32>(x_4906.x, x_4906.y, x_4908);
            let x_4915 : vec3<f32> = txVec84;
            let x_4917 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4915.xy, x_4915.z);
            u_xlat87 = x_4917;
            let x_4919 : f32 = u_xlat25.w;
            let x_4920 : f32 = u_xlat87;
            let x_4922 : f32 = u_xlat85;
            u_xlat85 = ((x_4919 * x_4920) + x_4922);
            let x_4925 : vec4<f32> = u_xlat17;
            let x_4926 : vec2<f32> = vec2<f32>(x_4925.x, x_4925.y);
            let x_4928 : f32 = u_xlat11.z;
            txVec85 = vec3<f32>(x_4926.x, x_4926.y, x_4928);
            let x_4935 : vec3<f32> = txVec85;
            let x_4937 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4935.xy, x_4935.z);
            u_xlat87 = x_4937;
            let x_4939 : f32 = u_xlat13.x;
            let x_4940 : f32 = u_xlat87;
            let x_4942 : f32 = u_xlat85;
            u_xlat85 = ((x_4939 * x_4940) + x_4942);
            let x_4945 : vec4<f32> = u_xlat17;
            let x_4946 : vec2<f32> = vec2<f32>(x_4945.z, x_4945.w);
            let x_4948 : f32 = u_xlat11.z;
            txVec86 = vec3<f32>(x_4946.x, x_4946.y, x_4948);
            let x_4955 : vec3<f32> = txVec86;
            let x_4957 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4955.xy, x_4955.z);
            u_xlat87 = x_4957;
            let x_4959 : f32 = u_xlat13.y;
            let x_4960 : f32 = u_xlat87;
            let x_4962 : f32 = u_xlat85;
            u_xlat85 = ((x_4959 * x_4960) + x_4962);
            let x_4965 : vec2<f32> = u_xlat67;
            let x_4967 : f32 = u_xlat11.z;
            txVec87 = vec3<f32>(x_4965.x, x_4965.y, x_4967);
            let x_4974 : vec3<f32> = txVec87;
            let x_4976 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4974.xy, x_4974.z);
            u_xlat87 = x_4976;
            let x_4978 : f32 = u_xlat13.z;
            let x_4979 : f32 = u_xlat87;
            let x_4981 : f32 = u_xlat85;
            u_xlat85 = ((x_4978 * x_4979) + x_4981);
            let x_4984 : vec4<f32> = u_xlat12;
            let x_4985 : vec2<f32> = vec2<f32>(x_4984.x, x_4984.y);
            let x_4987 : f32 = u_xlat11.z;
            txVec88 = vec3<f32>(x_4985.x, x_4985.y, x_4987);
            let x_4994 : vec3<f32> = txVec88;
            let x_4996 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4994.xy, x_4994.z);
            u_xlat87 = x_4996;
            let x_4998 : f32 = u_xlat13.w;
            let x_4999 : f32 = u_xlat87;
            let x_5001 : f32 = u_xlat85;
            u_xlat84 = ((x_4998 * x_4999) + x_5001);
          }
        }
      } else {
        let x_5005 : vec4<f32> = u_xlat11;
        let x_5006 : vec2<f32> = vec2<f32>(x_5005.x, x_5005.y);
        let x_5008 : f32 = u_xlat11.z;
        txVec89 = vec3<f32>(x_5006.x, x_5006.y, x_5008);
        let x_5015 : vec3<f32> = txVec89;
        let x_5017 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5015.xy, x_5015.z);
        u_xlat84 = x_5017;
      }
      let x_5018 : i32 = u_xlati81;
      let x_5020 : f32 = x_249.x_AdditionalShadowParams[x_5018].x;
      u_xlat85 = (1.0f + -(x_5020));
      let x_5023 : f32 = u_xlat84;
      let x_5024 : i32 = u_xlati81;
      let x_5026 : f32 = x_249.x_AdditionalShadowParams[x_5024].x;
      let x_5028 : f32 = u_xlat85;
      u_xlat84 = ((x_5023 * x_5026) + x_5028);
      let x_5031 : f32 = u_xlat11.z;
      u_xlatb85 = (0.0f >= x_5031);
      let x_5035 : f32 = u_xlat11.z;
      u_xlatb87 = (x_5035 >= 1.0f);
      let x_5037 : bool = u_xlatb85;
      let x_5038 : bool = u_xlatb87;
      u_xlatb85 = (x_5037 | x_5038);
      let x_5040 : bool = u_xlatb85;
      let x_5041 : f32 = u_xlat84;
      u_xlat84 = select(x_5041, 1.0f, x_5040);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_5044 : f32 = u_xlat84;
    u_xlat85 = (-(x_5044) + 1.0f);
    let x_5047 : f32 = u_xlat54;
    let x_5048 : f32 = u_xlat85;
    let x_5050 : f32 = u_xlat84;
    u_xlat84 = ((x_5047 * x_5048) + x_5050);
    let x_5052 : f32 = u_xlat83;
    let x_5053 : f32 = u_xlat84;
    u_xlat83 = (x_5052 * x_5053);
    let x_5055 : vec4<f32> = u_xlat3;
    let x_5057 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_5055.x, x_5055.y, x_5055.z), vec3<f32>(x_5057.x, x_5057.y, x_5057.z));
    let x_5060 : f32 = u_xlat84;
    u_xlat84 = clamp(x_5060, 0.0f, 1.0f);
    let x_5062 : f32 = u_xlat83;
    let x_5063 : f32 = u_xlat84;
    u_xlat83 = (x_5062 * x_5063);
    let x_5065 : f32 = u_xlat83;
    let x_5067 : i32 = u_xlati81;
    let x_5069 : vec4<f32> = x_3629.x_AdditionalLightsColor[x_5067];
    let x_5071 : vec3<f32> = (vec3<f32>(x_5065, x_5065, x_5065) * vec3<f32>(x_5069.x, x_5069.y, x_5069.z));
    let x_5072 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_5071.x, x_5071.y, x_5071.z, x_5072.w);
    let x_5074 : vec4<f32> = u_xlat9;
    let x_5076 : vec2<f32> = u_xlat58;
    let x_5079 : vec3<f32> = u_xlat1;
    let x_5080 : vec3<f32> = ((vec3<f32>(x_5074.x, x_5074.y, x_5074.z) * vec3<f32>(x_5076.x, x_5076.x, x_5076.x)) + x_5079);
    let x_5081 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5080.x, x_5080.y, x_5080.z, x_5081.w);
    let x_5083 : vec4<f32> = u_xlat9;
    let x_5085 : vec4<f32> = u_xlat9;
    u_xlat81 = dot(vec3<f32>(x_5083.x, x_5083.y, x_5083.z), vec3<f32>(x_5085.x, x_5085.y, x_5085.z));
    let x_5088 : f32 = u_xlat81;
    u_xlat81 = max(x_5088, 1.17549435e-38f);
    let x_5090 : f32 = u_xlat81;
    u_xlat81 = inverseSqrt(x_5090);
    let x_5092 : f32 = u_xlat81;
    let x_5094 : vec4<f32> = u_xlat9;
    let x_5096 : vec3<f32> = (vec3<f32>(x_5092, x_5092, x_5092) * vec3<f32>(x_5094.x, x_5094.y, x_5094.z));
    let x_5097 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5096.x, x_5096.y, x_5096.z, x_5097.w);
    let x_5099 : vec4<f32> = u_xlat3;
    let x_5101 : vec4<f32> = u_xlat9;
    u_xlat81 = dot(vec3<f32>(x_5099.x, x_5099.y, x_5099.z), vec3<f32>(x_5101.x, x_5101.y, x_5101.z));
    let x_5104 : f32 = u_xlat81;
    u_xlat81 = clamp(x_5104, 0.0f, 1.0f);
    let x_5106 : vec4<f32> = u_xlat10;
    let x_5108 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_5106.x, x_5106.y, x_5106.z), vec3<f32>(x_5108.x, x_5108.y, x_5108.z));
    let x_5111 : f32 = u_xlat83;
    u_xlat83 = clamp(x_5111, 0.0f, 1.0f);
    let x_5113 : f32 = u_xlat81;
    let x_5114 : f32 = u_xlat81;
    u_xlat81 = (x_5113 * x_5114);
    let x_5116 : f32 = u_xlat81;
    let x_5118 : f32 = u_xlat8.x;
    u_xlat81 = ((x_5116 * x_5118) + 1.00001001358032226562f);
    let x_5121 : f32 = u_xlat83;
    let x_5122 : f32 = u_xlat83;
    u_xlat83 = (x_5121 * x_5122);
    let x_5124 : f32 = u_xlat81;
    let x_5125 : f32 = u_xlat81;
    u_xlat81 = (x_5124 * x_5125);
    let x_5127 : f32 = u_xlat83;
    u_xlat83 = max(x_5127, 0.10000000149011611938f);
    let x_5129 : f32 = u_xlat81;
    let x_5130 : f32 = u_xlat83;
    u_xlat81 = (x_5129 * x_5130);
    let x_5133 : f32 = u_xlat6.x;
    let x_5134 : f32 = u_xlat81;
    u_xlat81 = (x_5133 * x_5134);
    let x_5136 : f32 = u_xlat82;
    let x_5137 : f32 = u_xlat81;
    u_xlat81 = (x_5136 / x_5137);
    let x_5139 : f32 = u_xlat81;
    let x_5142 : vec3<f32> = u_xlat4;
    let x_5143 : vec3<f32> = ((vec3<f32>(x_5139, x_5139, x_5139) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_5142);
    let x_5144 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5143.x, x_5143.y, x_5143.z, x_5144.w);
    let x_5146 : vec4<f32> = u_xlat9;
    let x_5148 : vec4<f32> = u_xlat11;
    let x_5151 : vec3<f32> = u_xlat34;
    u_xlat34 = ((vec3<f32>(x_5146.x, x_5146.y, x_5146.z) * vec3<f32>(x_5148.x, x_5148.y, x_5148.z)) + x_5151);

    continuing {
      let x_5153 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_5153 + bitcast<u32>(1i));
    }
  }
  let x_5155 : vec4<f32> = u_xlat5;
  let x_5157 : f32 = u_xlat32;
  let x_5160 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec3<f32>(x_5155.x, x_5155.y, x_5155.z) * vec3<f32>(x_5157, x_5157, x_5157)) + vec3<f32>(x_5160.x, x_5160.y, x_5160.z));
  let x_5163 : vec3<f32> = u_xlat34;
  let x_5164 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_5163 + x_5164);
  let x_5166 : vec4<f32> = vs_INTERP6;
  let x_5168 : vec3<f32> = u_xlat0;
  let x_5170 : vec3<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_5166.w, x_5166.w, x_5166.w) * x_5168) + x_5170);
  let x_5173 : f32 = u_xlat28.x;
  let x_5175 : f32 = u_xlat28.x;
  u_xlat78 = (x_5173 * -(x_5175));
  let x_5178 : f32 = u_xlat78;
  u_xlat78 = exp2(x_5178);
  let x_5180 : vec3<f32> = u_xlat0;
  let x_5182 : vec4<f32> = x_75.unity_FogColor;
  u_xlat0 = (x_5180 + -(vec3<f32>(x_5182.x, x_5182.y, x_5182.z)));
  let x_5188 : f32 = u_xlat78;
  let x_5190 : vec3<f32> = u_xlat0;
  let x_5193 : vec4<f32> = x_75.unity_FogColor;
  let x_5195 : vec3<f32> = ((vec3<f32>(x_5188, x_5188, x_5188) * x_5190) + vec3<f32>(x_5193.x, x_5193.y, x_5193.z));
  let x_5196 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_5195.x, x_5195.y, x_5195.z, x_5196.w);
  let x_5198 : bool = u_xlatb2;
  let x_5199 : f32 = u_xlat79;
  SV_Target0.w = select(1.0f, x_5199, x_5198);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(5) vs_INTERP9_param : vec3<f32>, @location(4) vs_INTERP8_param : vec3<f32>, @location(2) vs_INTERP5_param : vec4<f32>, @location(3) vs_INTERP6_param : vec4<f32>, @location(1) vs_INTERP4_param : vec4<f32>, @location(0) vs_INTERP3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP9 = vs_INTERP9_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP6 = vs_INTERP6_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP3 = vs_INTERP3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


