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
  x_ScreenParams : vec4<f32>,
  /* @offset(96) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(112) */
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

var<private> u_xlatb25 : vec2<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_83 : UnityPerDraw;

var<private> u_xlat25 : vec3<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlatb0 : bool;

@group(1) @binding(0) var<uniform> x_147 : PGlobals;

var<private> u_xlat4 : vec3<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> u_xlat76 : f32;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(3) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(7) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_267 : UnityPerMaterial;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(4) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(8) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat33 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_371 : LightShadows;

var<private> u_xlatb76 : bool;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb77 : bool;

var<private> u_xlat53 : vec2<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat77 : f32;

var<private> u_xlat28 : f32;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat35 : vec3<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat79 : f32;

var<private> u_xlatb27 : bool;

var<private> u_xlatb52 : bool;

var<private> u_xlat26 : vec3<f32>;

var<private> u_xlat27 : f32;

var<private> u_xlatu3 : vec3<u32>;

var<private> u_xlatu52 : u32;

var<private> u_xlatu77 : u32;

var<private> u_xlati52 : i32;

var<private> u_xlat52 : vec2<f32>;

var<private> u_xlat78 : f32;

var<private> u_xlat80 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlatb31 : bool;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat56 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlatb2 : bool;

var<private> u_xlat32 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu0 : u32;

var<private> u_xlatu79 : u32;

var<private> u_xlati82 : i32;

var<private> u_xlati79 : i32;

@group(1) @binding(1) var<uniform> x_3698 : AdditionalLights;

var<private> u_xlat82 : f32;

var<private> u_xlat83 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlati84 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlatb84 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb85 : bool;

var<private> u_xlat85 : f32;

var<private> u_xlat36 : f32;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat38 : vec2<f32>;

var<private> u_xlat69 : vec2<f32>;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlatb35 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb79 : bool;

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
  var x_174 : f32;
  var x_187 : f32;
  var x_199 : f32;
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
  var x_1715 : f32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var x_1841 : f32;
  var x_1894 : f32;
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
  var x_3305 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_3840 : f32;
  var x_3852 : f32;
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
  u_xlatb25.x = (0.0f < x_74);
  let x_87 : f32 = x_83.unity_WorldTransformParams.w;
  u_xlatb25.y = (x_87 >= 0.0f);
  let x_93 : bool = u_xlatb25.x;
  u_xlat25.x = select(-1.0f, 1.0f, x_93);
  let x_98 : bool = u_xlatb25.y;
  u_xlat25.y = select(-1.0f, 1.0f, x_98);
  let x_102 : f32 = u_xlat25.y;
  let x_104 : f32 = u_xlat25.x;
  u_xlat25.x = (x_102 * x_104);
  let x_108 : vec4<f32> = vs_INTERP4;
  let x_110 : vec3<f32> = vs_INTERP9;
  u_xlat1 = (vec3<f32>(x_108.y, x_108.z, x_108.x) * vec3<f32>(x_110.z, x_110.x, x_110.y));
  let x_113 : vec3<f32> = vs_INTERP9;
  let x_115 : vec4<f32> = vs_INTERP4;
  let x_118 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_113.y, x_113.z, x_113.x) * vec3<f32>(x_115.z, x_115.x, x_115.y)) + -(x_118));
  let x_121 : vec3<f32> = u_xlat25;
  let x_123 : vec3<f32> = u_xlat1;
  u_xlat25 = (vec3<f32>(x_121.x, x_121.x, x_121.x) * x_123);
  let x_125 : vec3<f32> = u_xlat0;
  let x_127 : vec3<f32> = vs_INTERP9;
  u_xlat1 = (vec3<f32>(x_125.x, x_125.x, x_125.x) * x_127);
  let x_130 : vec3<f32> = u_xlat0;
  let x_132 : vec4<f32> = vs_INTERP4;
  u_xlat2 = (vec3<f32>(x_130.x, x_130.x, x_130.x) * vec3<f32>(x_132.x, x_132.y, x_132.z));
  let x_137 : vec3<f32> = u_xlat25;
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
  u_xlat76 = dot(x_162, x_163);
  let x_165 : f32 = u_xlat76;
  u_xlat76 = inverseSqrt(x_165);
  let x_167 : f32 = u_xlat76;
  let x_169 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_167, x_167, x_167) * x_169);
  let x_172 : bool = u_xlatb0;
  if (x_172) {
    let x_178 : f32 = u_xlat4.x;
    x_174 = x_178;
  } else {
    let x_183 : f32 = x_147.unity_MatrixV[0i].z;
    x_174 = x_183;
  }
  let x_184 : f32 = x_174;
  u_xlat5.x = x_184;
  let x_186 : bool = u_xlatb0;
  if (x_186) {
    let x_191 : f32 = u_xlat4.y;
    x_187 = x_191;
  } else {
    let x_195 : f32 = x_147.unity_MatrixV[1i].z;
    x_187 = x_195;
  }
  let x_196 : f32 = x_187;
  u_xlat5.y = x_196;
  let x_198 : bool = u_xlatb0;
  if (x_198) {
    let x_203 : f32 = u_xlat4.z;
    x_199 = x_203;
  } else {
    let x_207 : f32 = x_147.unity_MatrixV[2i].z;
    x_199 = x_207;
  }
  let x_208 : f32 = x_199;
  u_xlat5.z = x_208;
  let x_210 : vec3<f32> = u_xlat5;
  let x_214 : vec4<f32> = x_83.unity_WorldToObject[1i];
  u_xlat4 = (vec3<f32>(x_210.y, x_210.y, x_210.y) * vec3<f32>(x_214.x, x_214.y, x_214.z));
  let x_218 : vec4<f32> = x_83.unity_WorldToObject[0i];
  let x_220 : vec3<f32> = u_xlat5;
  let x_223 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_218.x, x_218.y, x_218.z) * vec3<f32>(x_220.x, x_220.x, x_220.x)) + x_223);
  let x_226 : vec4<f32> = x_83.unity_WorldToObject[2i];
  let x_228 : vec3<f32> = u_xlat5;
  let x_231 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_226.x, x_226.y, x_226.z) * vec3<f32>(x_228.z, x_228.z, x_228.z)) + x_231);
  let x_233 : vec3<f32> = u_xlat4;
  let x_234 : vec3<f32> = u_xlat4;
  u_xlat0.x = dot(x_233, x_234);
  let x_238 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_238);
  let x_241 : vec3<f32> = u_xlat0;
  let x_243 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_241.x, x_241.x, x_241.x) * x_243);
  let x_257 : vec4<f32> = vs_INTERP5;
  let x_260 : f32 = x_147.x_GlobalMipBias.x;
  let x_261 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_257.x, x_257.y), x_260);
  u_xlat6 = x_261;
  let x_263 : vec4<f32> = u_xlat6;
  let x_269 : vec4<f32> = x_267.Color_C30C7CA3;
  let x_271 : vec3<f32> = (vec3<f32>(x_263.x, x_263.y, x_263.z) * vec3<f32>(x_269.x, x_269.y, x_269.z));
  let x_272 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_271.x, x_271.y, x_271.z, x_272.w);
  let x_280 : vec4<f32> = vs_INTERP5;
  let x_283 : f32 = x_147.x_GlobalMipBias.x;
  let x_284 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_280.x, x_280.y), x_283);
  u_xlat8 = vec4<f32>(x_284.w, x_284.x, x_284.y, x_284.z);
  let x_287 : vec4<f32> = u_xlat8;
  u_xlat9 = ((vec4<f32>(x_287.y, x_287.z, x_287.w, x_287.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_294 : vec4<f32> = u_xlat9;
  let x_295 : vec4<f32> = u_xlat9;
  u_xlat0.x = dot(x_294, x_295);
  let x_299 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_299);
  let x_303 : vec3<f32> = u_xlat0;
  let x_305 : vec4<f32> = u_xlat9;
  u_xlat33 = (vec3<f32>(x_303.x, x_303.x, x_303.x) * vec3<f32>(x_305.x, x_305.y, x_305.z));
  let x_310 : f32 = vs_INTERP6.y;
  u_xlat0.x = (x_310 * 200.0f);
  let x_315 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_315, 1.0f);
  let x_318 : vec3<f32> = u_xlat0;
  let x_320 : vec4<f32> = u_xlat6;
  let x_322 : vec3<f32> = (vec3<f32>(x_318.x, x_318.x, x_318.x) * vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_323 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_325 : vec4<f32> = u_xlat3;
  let x_327 : vec3<f32> = u_xlat33;
  let x_329 : vec3<f32> = (vec3<f32>(x_325.x, x_325.y, x_325.z) * vec3<f32>(x_327.y, x_327.y, x_327.y));
  let x_330 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
  let x_332 : vec3<f32> = u_xlat33;
  let x_334 : vec3<f32> = u_xlat2;
  let x_336 : vec4<f32> = u_xlat3;
  u_xlat2 = ((vec3<f32>(x_332.x, x_332.x, x_332.x) * x_334) + vec3<f32>(x_336.x, x_336.y, x_336.z));
  let x_339 : vec3<f32> = u_xlat33;
  let x_341 : vec3<f32> = u_xlat1;
  let x_343 : vec3<f32> = u_xlat2;
  u_xlat1 = ((vec3<f32>(x_339.z, x_339.z, x_339.z) * x_341) + x_343);
  let x_345 : vec3<f32> = u_xlat1;
  let x_346 : vec3<f32> = u_xlat1;
  u_xlat0.x = dot(x_345, x_346);
  let x_350 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_350, 1.17549435e-38f);
  let x_355 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_355);
  let x_358 : vec3<f32> = u_xlat0;
  let x_360 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_358.x, x_358.x, x_358.x) * x_360);
  let x_362 : vec3<f32> = vs_INTERP8;
  let x_373 : vec4<f32> = x_371.x_MainLightWorldToShadow[0i][1i];
  u_xlat2 = (vec3<f32>(x_362.y, x_362.y, x_362.y) * vec3<f32>(x_373.x, x_373.y, x_373.z));
  let x_377 : vec4<f32> = x_371.x_MainLightWorldToShadow[0i][0i];
  let x_379 : vec3<f32> = vs_INTERP8;
  let x_382 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_377.x, x_377.y, x_377.z) * vec3<f32>(x_379.x, x_379.x, x_379.x)) + x_382);
  let x_385 : vec4<f32> = x_371.x_MainLightWorldToShadow[0i][2i];
  let x_387 : vec3<f32> = vs_INTERP8;
  let x_390 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_385.x, x_385.y, x_385.z) * vec3<f32>(x_387.z, x_387.z, x_387.z)) + x_390);
  let x_392 : vec3<f32> = u_xlat2;
  let x_394 : vec4<f32> = x_371.x_MainLightWorldToShadow[0i][3i];
  u_xlat2 = (x_392 + vec3<f32>(x_394.x, x_394.y, x_394.z));
  let x_398 : f32 = x_371.x_MainLightShadowParams.y;
  u_xlatb0 = (0.0f < x_398);
  let x_400 : bool = u_xlatb0;
  if (x_400) {
    let x_405 : f32 = x_371.x_MainLightShadowParams.y;
    u_xlatb76 = (x_405 == 1.0f);
    let x_407 : bool = u_xlatb76;
    if (x_407) {
      let x_410 : vec3<f32> = u_xlat2;
      let x_414 : vec4<f32> = x_371.x_MainLightShadowOffset0;
      u_xlat3 = (vec4<f32>(x_410.x, x_410.y, x_410.x, x_410.y) + x_414);
      let x_418 : vec4<f32> = u_xlat3;
      let x_419 : vec2<f32> = vec2<f32>(x_418.x, x_418.y);
      let x_421 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_419.x, x_419.y, x_421);
      let x_433 : vec3<f32> = txVec0;
      let x_435 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_433.xy, x_433.z);
      u_xlat9.x = x_435;
      let x_438 : vec4<f32> = u_xlat3;
      let x_439 : vec2<f32> = vec2<f32>(x_438.z, x_438.w);
      let x_441 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_439.x, x_439.y, x_441);
      let x_448 : vec3<f32> = txVec1;
      let x_450 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_448.xy, x_448.z);
      u_xlat9.y = x_450;
      let x_452 : vec3<f32> = u_xlat2;
      let x_455 : vec4<f32> = x_371.x_MainLightShadowOffset1;
      u_xlat3 = (vec4<f32>(x_452.x, x_452.y, x_452.x, x_452.y) + x_455);
      let x_458 : vec4<f32> = u_xlat3;
      let x_459 : vec2<f32> = vec2<f32>(x_458.x, x_458.y);
      let x_461 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_459.x, x_459.y, x_461);
      let x_468 : vec3<f32> = txVec2;
      let x_470 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_468.xy, x_468.z);
      u_xlat9.z = x_470;
      let x_473 : vec4<f32> = u_xlat3;
      let x_474 : vec2<f32> = vec2<f32>(x_473.z, x_473.w);
      let x_476 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_474.x, x_474.y, x_476);
      let x_483 : vec3<f32> = txVec3;
      let x_485 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_483.xy, x_483.z);
      u_xlat9.w = x_485;
      let x_487 : vec4<f32> = u_xlat9;
      u_xlat76 = dot(x_487, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_494 : f32 = x_371.x_MainLightShadowParams.y;
      u_xlatb77 = (x_494 == 2.0f);
      let x_496 : bool = u_xlatb77;
      if (x_496) {
        let x_499 : vec3<f32> = u_xlat2;
        let x_503 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_508 : vec2<f32> = ((vec2<f32>(x_499.x, x_499.y) * vec2<f32>(x_503.z, x_503.w)) + vec2<f32>(0.5f, 0.5f));
        let x_509 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_508.x, x_508.y, x_509.z, x_509.w);
        let x_511 : vec4<f32> = u_xlat3;
        let x_513 : vec2<f32> = floor(vec2<f32>(x_511.x, x_511.y));
        let x_514 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_513.x, x_513.y, x_514.z, x_514.w);
        let x_518 : vec3<f32> = u_xlat2;
        let x_521 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_524 : vec4<f32> = u_xlat3;
        u_xlat53 = ((vec2<f32>(x_518.x, x_518.y) * vec2<f32>(x_521.z, x_521.w)) + -(vec2<f32>(x_524.x, x_524.y)));
        let x_528 : vec2<f32> = u_xlat53;
        u_xlat9 = (vec4<f32>(x_528.x, x_528.x, x_528.y, x_528.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_533 : vec4<f32> = u_xlat9;
        let x_535 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_533.x, x_533.x, x_533.z, x_533.z) * vec4<f32>(x_535.x, x_535.x, x_535.z, x_535.z));
        let x_538 : vec4<f32> = u_xlat10;
        let x_542 : vec2<f32> = (vec2<f32>(x_538.y, x_538.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_543 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_542.x, x_543.y, x_542.y, x_543.w);
        let x_545 : vec4<f32> = u_xlat10;
        let x_548 : vec2<f32> = u_xlat53;
        let x_550 : vec2<f32> = ((vec2<f32>(x_545.x, x_545.z) * vec2<f32>(0.5f, 0.5f)) + -(x_548));
        let x_551 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_550.x, x_550.y, x_551.z, x_551.w);
        let x_554 : vec2<f32> = u_xlat53;
        u_xlat60 = (-(x_554) + vec2<f32>(1.0f, 1.0f));
        let x_559 : vec2<f32> = u_xlat53;
        let x_561 : vec2<f32> = min(x_559, vec2<f32>(0.0f, 0.0f));
        let x_562 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_561.x, x_561.y, x_562.z, x_562.w);
        let x_564 : vec4<f32> = u_xlat11;
        let x_567 : vec4<f32> = u_xlat11;
        let x_570 : vec2<f32> = u_xlat60;
        let x_571 : vec2<f32> = ((-(vec2<f32>(x_564.x, x_564.y)) * vec2<f32>(x_567.x, x_567.y)) + x_570);
        let x_572 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_571.x, x_571.y, x_572.z, x_572.w);
        let x_574 : vec2<f32> = u_xlat53;
        u_xlat53 = max(x_574, vec2<f32>(0.0f, 0.0f));
        let x_576 : vec2<f32> = u_xlat53;
        let x_578 : vec2<f32> = u_xlat53;
        let x_580 : vec4<f32> = u_xlat9;
        u_xlat53 = ((-(x_576) * x_578) + vec2<f32>(x_580.y, x_580.w));
        let x_583 : vec4<f32> = u_xlat11;
        let x_585 : vec2<f32> = (vec2<f32>(x_583.x, x_583.y) + vec2<f32>(1.0f, 1.0f));
        let x_586 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_585.x, x_585.y, x_586.z, x_586.w);
        let x_588 : vec2<f32> = u_xlat53;
        u_xlat53 = (x_588 + vec2<f32>(1.0f, 1.0f));
        let x_591 : vec4<f32> = u_xlat10;
        let x_595 : vec2<f32> = (vec2<f32>(x_591.x, x_591.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_596 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_595.x, x_595.y, x_596.z, x_596.w);
        let x_598 : vec2<f32> = u_xlat60;
        let x_599 : vec2<f32> = (x_598 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_600 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_599.x, x_599.y, x_600.z, x_600.w);
        let x_602 : vec4<f32> = u_xlat11;
        let x_604 : vec2<f32> = (vec2<f32>(x_602.x, x_602.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_605 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_604.x, x_604.y, x_605.z, x_605.w);
        let x_608 : vec2<f32> = u_xlat53;
        let x_609 : vec2<f32> = (x_608 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_610 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_609.x, x_609.y, x_610.z, x_610.w);
        let x_612 : vec4<f32> = u_xlat9;
        u_xlat53 = (vec2<f32>(x_612.y, x_612.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_616 : f32 = u_xlat11.x;
        u_xlat12.z = x_616;
        let x_619 : f32 = u_xlat53.x;
        u_xlat12.w = x_619;
        let x_622 : f32 = u_xlat13.x;
        u_xlat10.z = x_622;
        let x_625 : f32 = u_xlat9.x;
        u_xlat10.w = x_625;
        let x_628 : vec4<f32> = u_xlat10;
        let x_630 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_628.z, x_628.w, x_628.x, x_628.z) + vec4<f32>(x_630.z, x_630.w, x_630.x, x_630.z));
        let x_634 : f32 = u_xlat12.y;
        u_xlat11.z = x_634;
        let x_637 : f32 = u_xlat53.y;
        u_xlat11.w = x_637;
        let x_640 : f32 = u_xlat10.y;
        u_xlat13.z = x_640;
        let x_643 : f32 = u_xlat9.z;
        u_xlat13.w = x_643;
        let x_645 : vec4<f32> = u_xlat11;
        let x_647 : vec4<f32> = u_xlat13;
        let x_649 : vec3<f32> = (vec3<f32>(x_645.z, x_645.y, x_645.w) + vec3<f32>(x_647.z, x_647.y, x_647.w));
        let x_650 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_649.x, x_649.y, x_649.z, x_650.w);
        let x_652 : vec4<f32> = u_xlat10;
        let x_654 : vec4<f32> = u_xlat14;
        let x_656 : vec3<f32> = (vec3<f32>(x_652.x, x_652.z, x_652.w) / vec3<f32>(x_654.z, x_654.w, x_654.y));
        let x_657 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_656.x, x_656.y, x_656.z, x_657.w);
        let x_659 : vec4<f32> = u_xlat10;
        let x_665 : vec3<f32> = (vec3<f32>(x_659.x, x_659.y, x_659.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_666 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_665.x, x_665.y, x_665.z, x_666.w);
        let x_668 : vec4<f32> = u_xlat13;
        let x_670 : vec4<f32> = u_xlat9;
        let x_672 : vec3<f32> = (vec3<f32>(x_668.z, x_668.y, x_668.w) / vec3<f32>(x_670.x, x_670.y, x_670.z));
        let x_673 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_672.x, x_672.y, x_672.z, x_673.w);
        let x_675 : vec4<f32> = u_xlat11;
        let x_677 : vec3<f32> = (vec3<f32>(x_675.x, x_675.y, x_675.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_678 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_677.x, x_677.y, x_677.z, x_678.w);
        let x_680 : vec4<f32> = u_xlat10;
        let x_683 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_685 : vec3<f32> = (vec3<f32>(x_680.y, x_680.x, x_680.z) * vec3<f32>(x_683.x, x_683.x, x_683.x));
        let x_686 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_685.x, x_685.y, x_685.z, x_686.w);
        let x_688 : vec4<f32> = u_xlat11;
        let x_691 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_693 : vec3<f32> = (vec3<f32>(x_688.x, x_688.y, x_688.z) * vec3<f32>(x_691.y, x_691.y, x_691.y));
        let x_694 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_693.x, x_693.y, x_693.z, x_694.w);
        let x_697 : f32 = u_xlat11.x;
        u_xlat10.w = x_697;
        let x_699 : vec4<f32> = u_xlat3;
        let x_702 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_705 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_699.x, x_699.y, x_699.x, x_699.y) * vec4<f32>(x_702.x, x_702.y, x_702.x, x_702.y)) + vec4<f32>(x_705.y, x_705.w, x_705.x, x_705.w));
        let x_708 : vec4<f32> = u_xlat3;
        let x_711 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_714 : vec4<f32> = u_xlat10;
        u_xlat53 = ((vec2<f32>(x_708.x, x_708.y) * vec2<f32>(x_711.x, x_711.y)) + vec2<f32>(x_714.z, x_714.w));
        let x_718 : f32 = u_xlat10.y;
        u_xlat11.w = x_718;
        let x_720 : vec4<f32> = u_xlat11;
        let x_721 : vec2<f32> = vec2<f32>(x_720.y, x_720.z);
        let x_722 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_722.x, x_721.x, x_722.z, x_721.y);
        let x_724 : vec4<f32> = u_xlat3;
        let x_727 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_730 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_724.x, x_724.y, x_724.x, x_724.y) * vec4<f32>(x_727.x, x_727.y, x_727.x, x_727.y)) + vec4<f32>(x_730.x, x_730.y, x_730.z, x_730.y));
        let x_733 : vec4<f32> = u_xlat3;
        let x_736 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_739 : vec4<f32> = u_xlat11;
        u_xlat11 = ((vec4<f32>(x_733.x, x_733.y, x_733.x, x_733.y) * vec4<f32>(x_736.x, x_736.y, x_736.x, x_736.y)) + vec4<f32>(x_739.w, x_739.y, x_739.w, x_739.z));
        let x_742 : vec4<f32> = u_xlat3;
        let x_745 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_748 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_742.x, x_742.y, x_742.x, x_742.y) * vec4<f32>(x_745.x, x_745.y, x_745.x, x_745.y)) + vec4<f32>(x_748.x, x_748.w, x_748.z, x_748.w));
        let x_752 : vec4<f32> = u_xlat9;
        let x_754 : vec4<f32> = u_xlat14;
        u_xlat15 = (vec4<f32>(x_752.x, x_752.x, x_752.x, x_752.y) * vec4<f32>(x_754.z, x_754.w, x_754.y, x_754.z));
        let x_758 : vec4<f32> = u_xlat9;
        let x_760 : vec4<f32> = u_xlat14;
        u_xlat16 = (vec4<f32>(x_758.y, x_758.y, x_758.z, x_758.z) * x_760);
        let x_764 : f32 = u_xlat9.z;
        let x_766 : f32 = u_xlat14.y;
        u_xlat77 = (x_764 * x_766);
        let x_769 : vec4<f32> = u_xlat12;
        let x_770 : vec2<f32> = vec2<f32>(x_769.x, x_769.y);
        let x_772 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_770.x, x_770.y, x_772);
        let x_779 : vec3<f32> = txVec4;
        let x_781 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_779.xy, x_779.z);
        u_xlat3.x = x_781;
        let x_784 : vec4<f32> = u_xlat12;
        let x_785 : vec2<f32> = vec2<f32>(x_784.z, x_784.w);
        let x_787 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_785.x, x_785.y, x_787);
        let x_795 : vec3<f32> = txVec5;
        let x_797 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_795.xy, x_795.z);
        u_xlat28 = x_797;
        let x_798 : f32 = u_xlat28;
        let x_800 : f32 = u_xlat15.y;
        u_xlat28 = (x_798 * x_800);
        let x_803 : f32 = u_xlat15.x;
        let x_805 : f32 = u_xlat3.x;
        let x_807 : f32 = u_xlat28;
        u_xlat3.x = ((x_803 * x_805) + x_807);
        let x_811 : vec2<f32> = u_xlat53;
        let x_813 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_811.x, x_811.y, x_813);
        let x_820 : vec3<f32> = txVec6;
        let x_822 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_820.xy, x_820.z);
        u_xlat28 = x_822;
        let x_824 : f32 = u_xlat15.z;
        let x_825 : f32 = u_xlat28;
        let x_828 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_824 * x_825) + x_828);
        let x_832 : vec4<f32> = u_xlat11;
        let x_833 : vec2<f32> = vec2<f32>(x_832.x, x_832.y);
        let x_835 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_833.x, x_833.y, x_835);
        let x_842 : vec3<f32> = txVec7;
        let x_844 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_842.xy, x_842.z);
        u_xlat28 = x_844;
        let x_846 : f32 = u_xlat15.w;
        let x_847 : f32 = u_xlat28;
        let x_850 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_846 * x_847) + x_850);
        let x_854 : vec4<f32> = u_xlat13;
        let x_855 : vec2<f32> = vec2<f32>(x_854.x, x_854.y);
        let x_857 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_855.x, x_855.y, x_857);
        let x_864 : vec3<f32> = txVec8;
        let x_866 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_864.xy, x_864.z);
        u_xlat28 = x_866;
        let x_868 : f32 = u_xlat16.x;
        let x_869 : f32 = u_xlat28;
        let x_872 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_868 * x_869) + x_872);
        let x_876 : vec4<f32> = u_xlat13;
        let x_877 : vec2<f32> = vec2<f32>(x_876.z, x_876.w);
        let x_879 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_877.x, x_877.y, x_879);
        let x_886 : vec3<f32> = txVec9;
        let x_888 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_886.xy, x_886.z);
        u_xlat28 = x_888;
        let x_890 : f32 = u_xlat16.y;
        let x_891 : f32 = u_xlat28;
        let x_894 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_890 * x_891) + x_894);
        let x_898 : vec4<f32> = u_xlat11;
        let x_899 : vec2<f32> = vec2<f32>(x_898.z, x_898.w);
        let x_901 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_899.x, x_899.y, x_901);
        let x_908 : vec3<f32> = txVec10;
        let x_910 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_908.xy, x_908.z);
        u_xlat28 = x_910;
        let x_912 : f32 = u_xlat16.z;
        let x_913 : f32 = u_xlat28;
        let x_916 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_912 * x_913) + x_916);
        let x_920 : vec4<f32> = u_xlat10;
        let x_921 : vec2<f32> = vec2<f32>(x_920.x, x_920.y);
        let x_923 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_921.x, x_921.y, x_923);
        let x_930 : vec3<f32> = txVec11;
        let x_932 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_930.xy, x_930.z);
        u_xlat28 = x_932;
        let x_934 : f32 = u_xlat16.w;
        let x_935 : f32 = u_xlat28;
        let x_938 : f32 = u_xlat3.x;
        u_xlat3.x = ((x_934 * x_935) + x_938);
        let x_942 : vec4<f32> = u_xlat10;
        let x_943 : vec2<f32> = vec2<f32>(x_942.z, x_942.w);
        let x_945 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_943.x, x_943.y, x_945);
        let x_952 : vec3<f32> = txVec12;
        let x_954 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_952.xy, x_952.z);
        u_xlat28 = x_954;
        let x_955 : f32 = u_xlat77;
        let x_956 : f32 = u_xlat28;
        let x_959 : f32 = u_xlat3.x;
        u_xlat76 = ((x_955 * x_956) + x_959);
      } else {
        let x_962 : vec3<f32> = u_xlat2;
        let x_965 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_968 : vec2<f32> = ((vec2<f32>(x_962.x, x_962.y) * vec2<f32>(x_965.z, x_965.w)) + vec2<f32>(0.5f, 0.5f));
        let x_969 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_968.x, x_968.y, x_969.z, x_969.w);
        let x_971 : vec4<f32> = u_xlat3;
        let x_973 : vec2<f32> = floor(vec2<f32>(x_971.x, x_971.y));
        let x_974 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_973.x, x_973.y, x_974.z, x_974.w);
        let x_976 : vec3<f32> = u_xlat2;
        let x_979 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_982 : vec4<f32> = u_xlat3;
        u_xlat53 = ((vec2<f32>(x_976.x, x_976.y) * vec2<f32>(x_979.z, x_979.w)) + -(vec2<f32>(x_982.x, x_982.y)));
        let x_986 : vec2<f32> = u_xlat53;
        u_xlat9 = (vec4<f32>(x_986.x, x_986.x, x_986.y, x_986.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_989 : vec4<f32> = u_xlat9;
        let x_991 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_989.x, x_989.x, x_989.z, x_989.z) * vec4<f32>(x_991.x, x_991.x, x_991.z, x_991.z));
        let x_994 : vec4<f32> = u_xlat10;
        let x_998 : vec2<f32> = (vec2<f32>(x_994.y, x_994.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_999 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_999.x, x_998.x, x_999.z, x_998.y);
        let x_1001 : vec4<f32> = u_xlat10;
        let x_1004 : vec2<f32> = u_xlat53;
        let x_1006 : vec2<f32> = ((vec2<f32>(x_1001.x, x_1001.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1004));
        let x_1007 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1006.x, x_1007.y, x_1006.y, x_1007.w);
        let x_1009 : vec2<f32> = u_xlat53;
        let x_1011 : vec2<f32> = (-(x_1009) + vec2<f32>(1.0f, 1.0f));
        let x_1012 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1011.x, x_1011.y, x_1012.z, x_1012.w);
        let x_1014 : vec2<f32> = u_xlat53;
        u_xlat60 = min(x_1014, vec2<f32>(0.0f, 0.0f));
        let x_1016 : vec2<f32> = u_xlat60;
        let x_1018 : vec2<f32> = u_xlat60;
        let x_1020 : vec4<f32> = u_xlat10;
        let x_1022 : vec2<f32> = ((-(x_1016) * x_1018) + vec2<f32>(x_1020.x, x_1020.y));
        let x_1023 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1022.x, x_1022.y, x_1023.z, x_1023.w);
        let x_1025 : vec2<f32> = u_xlat53;
        u_xlat60 = max(x_1025, vec2<f32>(0.0f, 0.0f));
        let x_1028 : vec2<f32> = u_xlat60;
        let x_1030 : vec2<f32> = u_xlat60;
        let x_1032 : vec4<f32> = u_xlat9;
        let x_1034 : vec2<f32> = ((-(x_1028) * x_1030) + vec2<f32>(x_1032.y, x_1032.w));
        let x_1035 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_1034.x, x_1035.y, x_1034.y);
        let x_1037 : vec4<f32> = u_xlat10;
        let x_1040 : vec2<f32> = (vec2<f32>(x_1037.x, x_1037.y) + vec2<f32>(2.0f, 2.0f));
        let x_1041 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1040.x, x_1040.y, x_1041.z, x_1041.w);
        let x_1043 : vec3<f32> = u_xlat34;
        let x_1045 : vec2<f32> = (vec2<f32>(x_1043.x, x_1043.z) + vec2<f32>(2.0f, 2.0f));
        let x_1046 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1046.x, x_1045.x, x_1046.z, x_1045.y);
        let x_1049 : f32 = u_xlat9.y;
        u_xlat12.z = (x_1049 * 0.08163200318813323975f);
        let x_1053 : vec4<f32> = u_xlat9;
        let x_1056 : vec3<f32> = (vec3<f32>(x_1053.z, x_1053.x, x_1053.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1057 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1056.x, x_1056.y, x_1056.z, x_1057.w);
        let x_1059 : vec4<f32> = u_xlat10;
        let x_1062 : vec2<f32> = (vec2<f32>(x_1059.x, x_1059.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1063 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1062.x, x_1062.y, x_1063.z, x_1063.w);
        let x_1066 : f32 = u_xlat13.y;
        u_xlat12.x = x_1066;
        let x_1068 : vec2<f32> = u_xlat53;
        let x_1075 : vec2<f32> = ((vec2<f32>(x_1068.x, x_1068.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1076 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1076.x, x_1075.x, x_1076.z, x_1075.y);
        let x_1078 : vec2<f32> = u_xlat53;
        let x_1082 : vec2<f32> = ((vec2<f32>(x_1078.x, x_1078.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1083 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1082.x, x_1083.y, x_1082.y, x_1083.w);
        let x_1086 : f32 = u_xlat9.x;
        u_xlat10.y = x_1086;
        let x_1089 : f32 = u_xlat11.y;
        u_xlat10.w = x_1089;
        let x_1091 : vec4<f32> = u_xlat10;
        let x_1092 : vec4<f32> = u_xlat12;
        u_xlat12 = (x_1091 + x_1092);
        let x_1094 : vec2<f32> = u_xlat53;
        let x_1097 : vec2<f32> = ((vec2<f32>(x_1094.y, x_1094.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1098 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1098.x, x_1097.x, x_1098.z, x_1097.y);
        let x_1100 : vec2<f32> = u_xlat53;
        let x_1103 : vec2<f32> = ((vec2<f32>(x_1100.y, x_1100.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1104 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1103.x, x_1104.y, x_1103.y, x_1104.w);
        let x_1107 : f32 = u_xlat9.y;
        u_xlat11.y = x_1107;
        let x_1109 : vec4<f32> = u_xlat11;
        let x_1110 : vec4<f32> = u_xlat13;
        u_xlat9 = (x_1109 + x_1110);
        let x_1112 : vec4<f32> = u_xlat10;
        let x_1113 : vec4<f32> = u_xlat12;
        u_xlat10 = (x_1112 / x_1113);
        let x_1115 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1115 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1121 : vec4<f32> = u_xlat11;
        let x_1122 : vec4<f32> = u_xlat9;
        u_xlat11 = (x_1121 / x_1122);
        let x_1124 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1124 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1126 : vec4<f32> = u_xlat10;
        let x_1129 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1126.w, x_1126.x, x_1126.y, x_1126.z) * vec4<f32>(x_1129.x, x_1129.x, x_1129.x, x_1129.x));
        let x_1132 : vec4<f32> = u_xlat11;
        let x_1135 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        u_xlat11 = (vec4<f32>(x_1132.x, x_1132.w, x_1132.y, x_1132.z) * vec4<f32>(x_1135.y, x_1135.y, x_1135.y, x_1135.y));
        let x_1138 : vec4<f32> = u_xlat10;
        let x_1139 : vec3<f32> = vec3<f32>(x_1138.y, x_1138.z, x_1138.w);
        let x_1140 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1139.x, x_1140.y, x_1139.y, x_1139.z);
        let x_1143 : f32 = u_xlat11.x;
        u_xlat13.y = x_1143;
        let x_1145 : vec4<f32> = u_xlat3;
        let x_1148 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_1151 : vec4<f32> = u_xlat13;
        u_xlat14 = ((vec4<f32>(x_1145.x, x_1145.y, x_1145.x, x_1145.y) * vec4<f32>(x_1148.x, x_1148.y, x_1148.x, x_1148.y)) + vec4<f32>(x_1151.x, x_1151.y, x_1151.z, x_1151.y));
        let x_1154 : vec4<f32> = u_xlat3;
        let x_1157 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_1160 : vec4<f32> = u_xlat13;
        u_xlat53 = ((vec2<f32>(x_1154.x, x_1154.y) * vec2<f32>(x_1157.x, x_1157.y)) + vec2<f32>(x_1160.w, x_1160.y));
        let x_1164 : f32 = u_xlat13.y;
        u_xlat10.y = x_1164;
        let x_1167 : f32 = u_xlat11.z;
        u_xlat13.y = x_1167;
        let x_1169 : vec4<f32> = u_xlat3;
        let x_1172 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_1175 : vec4<f32> = u_xlat13;
        u_xlat15 = ((vec4<f32>(x_1169.x, x_1169.y, x_1169.x, x_1169.y) * vec4<f32>(x_1172.x, x_1172.y, x_1172.x, x_1172.y)) + vec4<f32>(x_1175.x, x_1175.y, x_1175.z, x_1175.y));
        let x_1178 : vec4<f32> = u_xlat3;
        let x_1181 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_1184 : vec4<f32> = u_xlat13;
        let x_1186 : vec2<f32> = ((vec2<f32>(x_1178.x, x_1178.y) * vec2<f32>(x_1181.x, x_1181.y)) + vec2<f32>(x_1184.w, x_1184.y));
        let x_1187 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1186.x, x_1186.y, x_1187.z, x_1187.w);
        let x_1190 : f32 = u_xlat13.y;
        u_xlat10.z = x_1190;
        let x_1193 : vec4<f32> = u_xlat3;
        let x_1196 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_1199 : vec4<f32> = u_xlat10;
        u_xlat17 = ((vec4<f32>(x_1193.x, x_1193.y, x_1193.x, x_1193.y) * vec4<f32>(x_1196.x, x_1196.y, x_1196.x, x_1196.y)) + vec4<f32>(x_1199.x, x_1199.y, x_1199.x, x_1199.z));
        let x_1203 : f32 = u_xlat11.w;
        u_xlat13.y = x_1203;
        let x_1206 : vec4<f32> = u_xlat3;
        let x_1209 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_1212 : vec4<f32> = u_xlat13;
        u_xlat18 = ((vec4<f32>(x_1206.x, x_1206.y, x_1206.x, x_1206.y) * vec4<f32>(x_1209.x, x_1209.y, x_1209.x, x_1209.y)) + vec4<f32>(x_1212.x, x_1212.y, x_1212.z, x_1212.y));
        let x_1216 : vec4<f32> = u_xlat3;
        let x_1219 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_1222 : vec4<f32> = u_xlat13;
        let x_1224 : vec2<f32> = ((vec2<f32>(x_1216.x, x_1216.y) * vec2<f32>(x_1219.x, x_1219.y)) + vec2<f32>(x_1222.w, x_1222.y));
        let x_1225 : vec3<f32> = u_xlat35;
        u_xlat35 = vec3<f32>(x_1224.x, x_1224.y, x_1225.z);
        let x_1228 : f32 = u_xlat13.y;
        u_xlat10.w = x_1228;
        let x_1231 : vec4<f32> = u_xlat3;
        let x_1234 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_1237 : vec4<f32> = u_xlat10;
        u_xlat66 = ((vec2<f32>(x_1231.x, x_1231.y) * vec2<f32>(x_1234.x, x_1234.y)) + vec2<f32>(x_1237.x, x_1237.w));
        let x_1240 : vec4<f32> = u_xlat13;
        let x_1241 : vec3<f32> = vec3<f32>(x_1240.x, x_1240.z, x_1240.w);
        let x_1242 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1241.x, x_1242.y, x_1241.y, x_1241.z);
        let x_1244 : vec4<f32> = u_xlat3;
        let x_1247 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_1250 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1244.x, x_1244.y, x_1244.x, x_1244.y) * vec4<f32>(x_1247.x, x_1247.y, x_1247.x, x_1247.y)) + vec4<f32>(x_1250.x, x_1250.y, x_1250.z, x_1250.y));
        let x_1254 : vec4<f32> = u_xlat3;
        let x_1257 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_1260 : vec4<f32> = u_xlat11;
        u_xlat61 = ((vec2<f32>(x_1254.x, x_1254.y) * vec2<f32>(x_1257.x, x_1257.y)) + vec2<f32>(x_1260.w, x_1260.y));
        let x_1264 : f32 = u_xlat10.x;
        u_xlat11.x = x_1264;
        let x_1266 : vec4<f32> = u_xlat3;
        let x_1269 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_1272 : vec4<f32> = u_xlat11;
        let x_1274 : vec2<f32> = ((vec2<f32>(x_1266.x, x_1266.y) * vec2<f32>(x_1269.x, x_1269.y)) + vec2<f32>(x_1272.x, x_1272.y));
        let x_1275 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_1274.x, x_1274.y, x_1275.z, x_1275.w);
        let x_1278 : vec4<f32> = u_xlat9;
        let x_1280 : vec4<f32> = u_xlat12;
        u_xlat19 = (vec4<f32>(x_1278.x, x_1278.x, x_1278.x, x_1278.x) * x_1280);
        let x_1283 : vec4<f32> = u_xlat9;
        let x_1285 : vec4<f32> = u_xlat12;
        u_xlat20 = (vec4<f32>(x_1283.y, x_1283.y, x_1283.y, x_1283.y) * x_1285);
        let x_1288 : vec4<f32> = u_xlat9;
        let x_1290 : vec4<f32> = u_xlat12;
        u_xlat21 = (vec4<f32>(x_1288.z, x_1288.z, x_1288.z, x_1288.z) * x_1290);
        let x_1292 : vec4<f32> = u_xlat9;
        let x_1294 : vec4<f32> = u_xlat12;
        u_xlat9 = (vec4<f32>(x_1292.w, x_1292.w, x_1292.w, x_1292.w) * x_1294);
        let x_1297 : vec4<f32> = u_xlat14;
        let x_1298 : vec2<f32> = vec2<f32>(x_1297.x, x_1297.y);
        let x_1300 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_1298.x, x_1298.y, x_1300);
        let x_1307 : vec3<f32> = txVec13;
        let x_1309 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1307.xy, x_1307.z);
        u_xlat77 = x_1309;
        let x_1311 : vec4<f32> = u_xlat14;
        let x_1312 : vec2<f32> = vec2<f32>(x_1311.z, x_1311.w);
        let x_1314 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_1312.x, x_1312.y, x_1314);
        let x_1322 : vec3<f32> = txVec14;
        let x_1324 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1322.xy, x_1322.z);
        u_xlat79 = x_1324;
        let x_1325 : f32 = u_xlat79;
        let x_1327 : f32 = u_xlat19.y;
        u_xlat79 = (x_1325 * x_1327);
        let x_1330 : f32 = u_xlat19.x;
        let x_1331 : f32 = u_xlat77;
        let x_1333 : f32 = u_xlat79;
        u_xlat77 = ((x_1330 * x_1331) + x_1333);
        let x_1336 : vec2<f32> = u_xlat53;
        let x_1338 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_1336.x, x_1336.y, x_1338);
        let x_1345 : vec3<f32> = txVec15;
        let x_1347 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1345.xy, x_1345.z);
        u_xlat53.x = x_1347;
        let x_1350 : f32 = u_xlat19.z;
        let x_1352 : f32 = u_xlat53.x;
        let x_1354 : f32 = u_xlat77;
        u_xlat77 = ((x_1350 * x_1352) + x_1354);
        let x_1357 : vec4<f32> = u_xlat17;
        let x_1358 : vec2<f32> = vec2<f32>(x_1357.x, x_1357.y);
        let x_1360 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_1358.x, x_1358.y, x_1360);
        let x_1367 : vec3<f32> = txVec16;
        let x_1369 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1367.xy, x_1367.z);
        u_xlat53.x = x_1369;
        let x_1372 : f32 = u_xlat19.w;
        let x_1374 : f32 = u_xlat53.x;
        let x_1376 : f32 = u_xlat77;
        u_xlat77 = ((x_1372 * x_1374) + x_1376);
        let x_1379 : vec4<f32> = u_xlat15;
        let x_1380 : vec2<f32> = vec2<f32>(x_1379.x, x_1379.y);
        let x_1382 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_1380.x, x_1380.y, x_1382);
        let x_1389 : vec3<f32> = txVec17;
        let x_1391 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1389.xy, x_1389.z);
        u_xlat53.x = x_1391;
        let x_1394 : f32 = u_xlat20.x;
        let x_1396 : f32 = u_xlat53.x;
        let x_1398 : f32 = u_xlat77;
        u_xlat77 = ((x_1394 * x_1396) + x_1398);
        let x_1401 : vec4<f32> = u_xlat15;
        let x_1402 : vec2<f32> = vec2<f32>(x_1401.z, x_1401.w);
        let x_1404 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_1402.x, x_1402.y, x_1404);
        let x_1411 : vec3<f32> = txVec18;
        let x_1413 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1411.xy, x_1411.z);
        u_xlat53.x = x_1413;
        let x_1416 : f32 = u_xlat20.y;
        let x_1418 : f32 = u_xlat53.x;
        let x_1420 : f32 = u_xlat77;
        u_xlat77 = ((x_1416 * x_1418) + x_1420);
        let x_1423 : vec4<f32> = u_xlat16;
        let x_1424 : vec2<f32> = vec2<f32>(x_1423.x, x_1423.y);
        let x_1426 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_1424.x, x_1424.y, x_1426);
        let x_1433 : vec3<f32> = txVec19;
        let x_1435 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1433.xy, x_1433.z);
        u_xlat53.x = x_1435;
        let x_1438 : f32 = u_xlat20.z;
        let x_1440 : f32 = u_xlat53.x;
        let x_1442 : f32 = u_xlat77;
        u_xlat77 = ((x_1438 * x_1440) + x_1442);
        let x_1445 : vec4<f32> = u_xlat17;
        let x_1446 : vec2<f32> = vec2<f32>(x_1445.z, x_1445.w);
        let x_1448 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_1446.x, x_1446.y, x_1448);
        let x_1455 : vec3<f32> = txVec20;
        let x_1457 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1455.xy, x_1455.z);
        u_xlat53.x = x_1457;
        let x_1460 : f32 = u_xlat20.w;
        let x_1462 : f32 = u_xlat53.x;
        let x_1464 : f32 = u_xlat77;
        u_xlat77 = ((x_1460 * x_1462) + x_1464);
        let x_1467 : vec4<f32> = u_xlat18;
        let x_1468 : vec2<f32> = vec2<f32>(x_1467.x, x_1467.y);
        let x_1470 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_1468.x, x_1468.y, x_1470);
        let x_1477 : vec3<f32> = txVec21;
        let x_1479 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1477.xy, x_1477.z);
        u_xlat53.x = x_1479;
        let x_1482 : f32 = u_xlat21.x;
        let x_1484 : f32 = u_xlat53.x;
        let x_1486 : f32 = u_xlat77;
        u_xlat77 = ((x_1482 * x_1484) + x_1486);
        let x_1489 : vec4<f32> = u_xlat18;
        let x_1490 : vec2<f32> = vec2<f32>(x_1489.z, x_1489.w);
        let x_1492 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_1490.x, x_1490.y, x_1492);
        let x_1499 : vec3<f32> = txVec22;
        let x_1501 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1499.xy, x_1499.z);
        u_xlat53.x = x_1501;
        let x_1504 : f32 = u_xlat21.y;
        let x_1506 : f32 = u_xlat53.x;
        let x_1508 : f32 = u_xlat77;
        u_xlat77 = ((x_1504 * x_1506) + x_1508);
        let x_1511 : vec3<f32> = u_xlat35;
        let x_1512 : vec2<f32> = vec2<f32>(x_1511.x, x_1511.y);
        let x_1514 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_1512.x, x_1512.y, x_1514);
        let x_1521 : vec3<f32> = txVec23;
        let x_1523 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1521.xy, x_1521.z);
        u_xlat53.x = x_1523;
        let x_1526 : f32 = u_xlat21.z;
        let x_1528 : f32 = u_xlat53.x;
        let x_1530 : f32 = u_xlat77;
        u_xlat77 = ((x_1526 * x_1528) + x_1530);
        let x_1533 : vec2<f32> = u_xlat66;
        let x_1535 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_1533.x, x_1533.y, x_1535);
        let x_1542 : vec3<f32> = txVec24;
        let x_1544 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1542.xy, x_1542.z);
        u_xlat53.x = x_1544;
        let x_1547 : f32 = u_xlat21.w;
        let x_1549 : f32 = u_xlat53.x;
        let x_1551 : f32 = u_xlat77;
        u_xlat77 = ((x_1547 * x_1549) + x_1551);
        let x_1554 : vec4<f32> = u_xlat13;
        let x_1555 : vec2<f32> = vec2<f32>(x_1554.x, x_1554.y);
        let x_1557 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_1555.x, x_1555.y, x_1557);
        let x_1564 : vec3<f32> = txVec25;
        let x_1566 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1564.xy, x_1564.z);
        u_xlat53.x = x_1566;
        let x_1569 : f32 = u_xlat9.x;
        let x_1571 : f32 = u_xlat53.x;
        let x_1573 : f32 = u_xlat77;
        u_xlat77 = ((x_1569 * x_1571) + x_1573);
        let x_1576 : vec4<f32> = u_xlat13;
        let x_1577 : vec2<f32> = vec2<f32>(x_1576.z, x_1576.w);
        let x_1579 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_1577.x, x_1577.y, x_1579);
        let x_1586 : vec3<f32> = txVec26;
        let x_1588 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1586.xy, x_1586.z);
        u_xlat53.x = x_1588;
        let x_1591 : f32 = u_xlat9.y;
        let x_1593 : f32 = u_xlat53.x;
        let x_1595 : f32 = u_xlat77;
        u_xlat77 = ((x_1591 * x_1593) + x_1595);
        let x_1598 : vec2<f32> = u_xlat61;
        let x_1600 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_1598.x, x_1598.y, x_1600);
        let x_1607 : vec3<f32> = txVec27;
        let x_1609 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1607.xy, x_1607.z);
        u_xlat53.x = x_1609;
        let x_1612 : f32 = u_xlat9.z;
        let x_1614 : f32 = u_xlat53.x;
        let x_1616 : f32 = u_xlat77;
        u_xlat77 = ((x_1612 * x_1614) + x_1616);
        let x_1619 : vec4<f32> = u_xlat3;
        let x_1620 : vec2<f32> = vec2<f32>(x_1619.x, x_1619.y);
        let x_1622 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_1620.x, x_1620.y, x_1622);
        let x_1629 : vec3<f32> = txVec28;
        let x_1631 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1629.xy, x_1629.z);
        u_xlat3.x = x_1631;
        let x_1634 : f32 = u_xlat9.w;
        let x_1636 : f32 = u_xlat3.x;
        let x_1638 : f32 = u_xlat77;
        u_xlat76 = ((x_1634 * x_1636) + x_1638);
      }
    }
  } else {
    let x_1642 : vec3<f32> = u_xlat2;
    let x_1643 : vec2<f32> = vec2<f32>(x_1642.x, x_1642.y);
    let x_1645 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_1643.x, x_1643.y, x_1645);
    let x_1652 : vec3<f32> = txVec29;
    let x_1654 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1652.xy, x_1652.z);
    u_xlat76 = x_1654;
  }
  let x_1656 : f32 = x_371.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_1656) + 1.0f);
  let x_1660 : f32 = u_xlat76;
  let x_1662 : f32 = x_371.x_MainLightShadowParams.x;
  let x_1665 : f32 = u_xlat2.x;
  u_xlat76 = ((x_1660 * x_1662) + x_1665);
  let x_1669 : f32 = u_xlat2.z;
  u_xlatb27 = (0.0f >= x_1669);
  let x_1673 : f32 = u_xlat2.z;
  u_xlatb52 = (x_1673 >= 1.0f);
  let x_1675 : bool = u_xlatb52;
  let x_1676 : bool = u_xlatb27;
  u_xlatb27 = (x_1675 | x_1676);
  let x_1678 : bool = u_xlatb27;
  let x_1679 : f32 = u_xlat76;
  u_xlat76 = select(x_1679, 1.0f, x_1678);
  let x_1681 : vec3<f32> = u_xlat1;
  let x_1683 : vec4<f32> = x_147.x_MainLightPosition;
  u_xlat1.x = dot(x_1681, -(vec3<f32>(x_1683.x, x_1683.y, x_1683.z)));
  let x_1689 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1689, 0.0f, 1.0f);
  let x_1693 : f32 = u_xlat76;
  let x_1696 : vec4<f32> = x_147.x_MainLightColor;
  u_xlat26 = (vec3<f32>(x_1693, x_1693, x_1693) * vec3<f32>(x_1696.x, x_1696.y, x_1696.z));
  let x_1699 : vec3<f32> = u_xlat26;
  let x_1700 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_1699 * vec3<f32>(x_1700.x, x_1700.x, x_1700.x));
  let x_1703 : vec3<f32> = u_xlat1;
  let x_1704 : vec4<f32> = u_xlat6;
  u_xlat1 = (x_1703 * vec3<f32>(x_1704.x, x_1704.y, x_1704.z));
  let x_1708 : f32 = x_83.unity_LODFade.x;
  u_xlatb76 = (x_1708 < 0.0f);
  let x_1712 : f32 = x_83.unity_LODFade.x;
  u_xlat27 = (x_1712 + 1.0f);
  let x_1714 : bool = u_xlatb76;
  if (x_1714) {
    let x_1718 : f32 = u_xlat27;
    x_1715 = x_1718;
  } else {
    let x_1721 : f32 = x_83.unity_LODFade.x;
    x_1715 = x_1721;
  }
  let x_1722 : f32 = x_1715;
  u_xlat76 = x_1722;
  let x_1723 : f32 = u_xlat76;
  u_xlatb27 = (0.5f >= x_1723);
  let x_1725 : vec3<f32> = u_xlat4;
  let x_1728 : vec4<f32> = x_147.x_ScreenParams;
  let x_1730 : vec3<f32> = (abs(x_1725) * vec3<f32>(x_1728.x, x_1728.y, x_1728.x));
  let x_1731 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1730.x, x_1730.y, x_1730.z, x_1731.w);
  let x_1736 : vec4<f32> = u_xlat3;
  u_xlatu3 = vec3<u32>(vec3<f32>(x_1736.x, x_1736.y, x_1736.z));
  let x_1742 : u32 = u_xlatu3.z;
  u_xlatu52 = (x_1742 * 1025u);
  let x_1746 : u32 = u_xlatu52;
  u_xlatu77 = (x_1746 >> 6u);
  let x_1751 : u32 = u_xlatu77;
  let x_1752 : u32 = u_xlatu52;
  u_xlati52 = bitcast<i32>((x_1751 ^ x_1752));
  let x_1755 : i32 = u_xlati52;
  u_xlatu52 = (bitcast<u32>(x_1755) * 9u);
  let x_1759 : u32 = u_xlatu52;
  u_xlatu77 = (x_1759 >> 11u);
  let x_1762 : u32 = u_xlatu77;
  let x_1763 : u32 = u_xlatu52;
  u_xlati52 = bitcast<i32>((x_1762 ^ x_1763));
  let x_1766 : i32 = u_xlati52;
  u_xlati52 = (x_1766 * 32769i);
  let x_1769 : i32 = u_xlati52;
  let x_1772 : u32 = u_xlatu3.y;
  u_xlati52 = bitcast<i32>((bitcast<u32>(x_1769) ^ x_1772));
  let x_1775 : i32 = u_xlati52;
  u_xlatu52 = (bitcast<u32>(x_1775) * 1025u);
  let x_1778 : u32 = u_xlatu52;
  u_xlatu77 = (x_1778 >> 6u);
  let x_1780 : u32 = u_xlatu77;
  let x_1781 : u32 = u_xlatu52;
  u_xlati52 = bitcast<i32>((x_1780 ^ x_1781));
  let x_1784 : i32 = u_xlati52;
  u_xlatu52 = (bitcast<u32>(x_1784) * 9u);
  let x_1787 : u32 = u_xlatu52;
  u_xlatu77 = (x_1787 >> 11u);
  let x_1789 : u32 = u_xlatu77;
  let x_1790 : u32 = u_xlatu52;
  u_xlati52 = bitcast<i32>((x_1789 ^ x_1790));
  let x_1793 : i32 = u_xlati52;
  u_xlati52 = (x_1793 * 32769i);
  let x_1795 : i32 = u_xlati52;
  let x_1798 : u32 = u_xlatu3.x;
  u_xlati52 = bitcast<i32>((bitcast<u32>(x_1795) ^ x_1798));
  let x_1801 : i32 = u_xlati52;
  u_xlatu52 = (bitcast<u32>(x_1801) * 1025u);
  let x_1804 : u32 = u_xlatu52;
  u_xlatu77 = (x_1804 >> 6u);
  let x_1806 : u32 = u_xlatu77;
  let x_1807 : u32 = u_xlatu52;
  u_xlati52 = bitcast<i32>((x_1806 ^ x_1807));
  let x_1810 : i32 = u_xlati52;
  u_xlatu52 = (bitcast<u32>(x_1810) * 9u);
  let x_1813 : u32 = u_xlatu52;
  u_xlatu77 = (x_1813 >> 11u);
  let x_1815 : u32 = u_xlatu77;
  let x_1816 : u32 = u_xlatu52;
  u_xlati52 = bitcast<i32>((x_1815 ^ x_1816));
  let x_1819 : i32 = u_xlati52;
  u_xlati52 = (x_1819 * 32769i);
  param = 1065353216i;
  let x_1826 : i32 = u_xlati52;
  param_1 = x_1826;
  param_2 = 0i;
  param_3 = 23i;
  let x_1829 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat52.x = bitcast<f32>(x_1829);
  let x_1833 : f32 = u_xlat52.x;
  u_xlat52.x = (x_1833 + -1.0f);
  let x_1837 : f32 = u_xlat52.x;
  u_xlat77 = (-(x_1837) + 1.0f);
  let x_1840 : bool = u_xlatb27;
  if (x_1840) {
    let x_1845 : f32 = u_xlat52.x;
    x_1841 = x_1845;
  } else {
    let x_1847 : f32 = u_xlat77;
    x_1841 = x_1847;
  }
  let x_1848 : f32 = x_1841;
  u_xlat27 = x_1848;
  let x_1849 : f32 = u_xlat76;
  let x_1851 : f32 = u_xlat27;
  u_xlat76 = ((x_1849 * 2.0f) + -(x_1851));
  let x_1854 : f32 = u_xlat76;
  let x_1856 : f32 = u_xlat6.w;
  u_xlat27 = (x_1854 * x_1856);
  let x_1858 : f32 = u_xlat27;
  u_xlatb52 = (x_1858 >= 0.40000000596046447754f);
  let x_1861 : bool = u_xlatb52;
  let x_1862 : f32 = u_xlat27;
  u_xlat52.x = select(0.0f, x_1862, x_1861);
  let x_1866 : f32 = u_xlat6.w;
  let x_1867 : f32 = u_xlat76;
  u_xlat76 = ((x_1866 * x_1867) + -0.40000000596046447754f);
  let x_1871 : f32 = u_xlat27;
  u_xlat77 = dpdxCoarse(x_1871);
  let x_1873 : f32 = u_xlat27;
  u_xlat27 = dpdyCoarse(x_1873);
  let x_1875 : f32 = u_xlat27;
  let x_1877 : f32 = u_xlat77;
  u_xlat27 = (abs(x_1875) + abs(x_1877));
  let x_1880 : f32 = u_xlat27;
  u_xlat27 = max(x_1880, 0.00009999999747378752f);
  let x_1883 : f32 = u_xlat76;
  let x_1884 : f32 = u_xlat27;
  u_xlat76 = (x_1883 / x_1884);
  let x_1886 : f32 = u_xlat76;
  u_xlat76 = (x_1886 + 0.5f);
  let x_1888 : f32 = u_xlat76;
  u_xlat76 = clamp(x_1888, 0.0f, 1.0f);
  let x_1891 : f32 = x_147.x_AlphaToMaskAvailable;
  u_xlatb27 = !((x_1891 == 0.0f));
  let x_1893 : bool = u_xlatb27;
  if (x_1893) {
    let x_1897 : f32 = u_xlat76;
    x_1894 = x_1897;
  } else {
    let x_1900 : f32 = u_xlat52.x;
    x_1894 = x_1900;
  }
  let x_1901 : f32 = x_1894;
  u_xlat76 = x_1901;
  let x_1902 : f32 = u_xlat76;
  u_xlat52.x = (x_1902 + -0.00009999999747378752f);
  let x_1907 : f32 = u_xlat52.x;
  u_xlatb52 = (x_1907 < 0.0f);
  let x_1909 : bool = u_xlatb52;
  if (((select(0i, 1i, x_1909) * -1i) != 0i)) {
    discard;
  }
  let x_1917 : vec3<f32> = u_xlat25;
  let x_1918 : vec3<f32> = u_xlat33;
  u_xlat25 = (x_1917 * vec3<f32>(x_1918.y, x_1918.y, x_1918.y));
  let x_1921 : vec3<f32> = u_xlat33;
  let x_1923 : vec4<f32> = vs_INTERP4;
  let x_1926 : vec3<f32> = u_xlat25;
  u_xlat25 = ((vec3<f32>(x_1921.x, x_1921.x, x_1921.x) * vec3<f32>(x_1923.x, x_1923.y, x_1923.z)) + x_1926);
  let x_1928 : vec3<f32> = u_xlat33;
  let x_1930 : vec3<f32> = vs_INTERP9;
  let x_1932 : vec3<f32> = u_xlat25;
  u_xlat25 = ((vec3<f32>(x_1928.z, x_1928.z, x_1928.z) * x_1930) + x_1932);
  let x_1934 : vec3<f32> = u_xlat25;
  let x_1935 : vec3<f32> = u_xlat25;
  u_xlat52.x = dot(x_1934, x_1935);
  let x_1939 : f32 = u_xlat52.x;
  u_xlat52.x = inverseSqrt(x_1939);
  let x_1942 : vec3<f32> = u_xlat25;
  let x_1943 : vec2<f32> = u_xlat52;
  let x_1945 : vec3<f32> = (x_1942 * vec3<f32>(x_1943.x, x_1943.x, x_1943.x));
  let x_1946 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1945.x, x_1945.y, x_1945.z, x_1946.w);
  u_xlat3.w = 1.0f;
  let x_1951 : vec4<f32> = x_83.unity_SHAr;
  let x_1952 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_1951, x_1952);
  let x_1957 : vec4<f32> = x_83.unity_SHAg;
  let x_1958 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_1957, x_1958);
  let x_1963 : vec4<f32> = x_83.unity_SHAb;
  let x_1964 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_1963, x_1964);
  let x_1967 : vec4<f32> = u_xlat3;
  let x_1969 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec4<f32>(x_1967.y, x_1967.z, x_1967.z, x_1967.x) * vec4<f32>(x_1969.x, x_1969.y, x_1969.z, x_1969.z));
  let x_1974 : vec4<f32> = x_83.unity_SHBr;
  let x_1975 : vec4<f32> = u_xlat6;
  u_xlat9.x = dot(x_1974, x_1975);
  let x_1980 : vec4<f32> = x_83.unity_SHBg;
  let x_1981 : vec4<f32> = u_xlat6;
  u_xlat9.y = dot(x_1980, x_1981);
  let x_1985 : vec4<f32> = x_83.unity_SHBb;
  let x_1986 : vec4<f32> = u_xlat6;
  u_xlat9.z = dot(x_1985, x_1986);
  let x_1990 : f32 = u_xlat3.y;
  let x_1992 : f32 = u_xlat3.y;
  u_xlat25.x = (x_1990 * x_1992);
  let x_1996 : f32 = u_xlat3.x;
  let x_1998 : f32 = u_xlat3.x;
  let x_2001 : f32 = u_xlat25.x;
  u_xlat25.x = ((x_1996 * x_1998) + -(x_2001));
  let x_2007 : vec4<f32> = x_83.unity_SHC;
  let x_2009 : vec3<f32> = u_xlat25;
  let x_2012 : vec4<f32> = u_xlat9;
  u_xlat25 = ((vec3<f32>(x_2007.x, x_2007.y, x_2007.z) * vec3<f32>(x_2009.x, x_2009.x, x_2009.x)) + vec3<f32>(x_2012.x, x_2012.y, x_2012.z));
  let x_2015 : vec3<f32> = u_xlat25;
  let x_2016 : vec3<f32> = u_xlat4;
  u_xlat25 = (x_2015 + x_2016);
  let x_2018 : vec3<f32> = u_xlat25;
  u_xlat25 = max(x_2018, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_2022 : f32 = u_xlat8.x;
  u_xlat8.x = x_2022;
  let x_2025 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_2025, 0.0f, 1.0f);
  let x_2028 : f32 = u_xlat76;
  u_xlat76 = x_2028;
  let x_2029 : f32 = u_xlat76;
  u_xlat76 = clamp(x_2029, 0.0f, 1.0f);
  let x_2031 : vec4<f32> = u_xlat7;
  u_xlat4 = (vec3<f32>(x_2031.x, x_2031.y, x_2031.z) * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_2037 : f32 = u_xlat8.x;
  u_xlat52.x = (-(x_2037) + 1.0f);
  let x_2042 : f32 = u_xlat52.x;
  let x_2044 : f32 = u_xlat52.x;
  u_xlat77 = (x_2042 * x_2044);
  let x_2046 : f32 = u_xlat77;
  u_xlat77 = max(x_2046, 0.0078125f);
  let x_2050 : f32 = u_xlat77;
  let x_2051 : f32 = u_xlat77;
  u_xlat78 = (x_2050 * x_2051);
  let x_2054 : f32 = u_xlat8.x;
  u_xlat79 = (x_2054 + 0.04000002145767211914f);
  let x_2057 : f32 = u_xlat79;
  u_xlat79 = min(x_2057, 1.0f);
  let x_2060 : f32 = u_xlat77;
  u_xlat80 = ((x_2060 * 4.0f) + 2.0f);
  let x_2065 : f32 = vs_INTERP6.w;
  u_xlat6.x = min(x_2065, 1.0f);
  let x_2068 : bool = u_xlatb0;
  if (x_2068) {
    let x_2072 : f32 = x_371.x_MainLightShadowParams.y;
    u_xlatb0 = (x_2072 == 1.0f);
    let x_2074 : bool = u_xlatb0;
    if (x_2074) {
      let x_2078 : vec4<f32> = vs_INTERP3;
      let x_2081 : vec4<f32> = x_371.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_2078.x, x_2078.y, x_2078.x, x_2078.y) + x_2081);
      let x_2084 : vec4<f32> = u_xlat7;
      let x_2085 : vec2<f32> = vec2<f32>(x_2084.x, x_2084.y);
      let x_2087 : f32 = vs_INTERP3.z;
      txVec30 = vec3<f32>(x_2085.x, x_2085.y, x_2087);
      let x_2094 : vec3<f32> = txVec30;
      let x_2096 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2094.xy, x_2094.z);
      u_xlat8.x = x_2096;
      let x_2099 : vec4<f32> = u_xlat7;
      let x_2100 : vec2<f32> = vec2<f32>(x_2099.z, x_2099.w);
      let x_2102 : f32 = vs_INTERP3.z;
      txVec31 = vec3<f32>(x_2100.x, x_2100.y, x_2102);
      let x_2109 : vec3<f32> = txVec31;
      let x_2111 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2109.xy, x_2109.z);
      u_xlat8.y = x_2111;
      let x_2113 : vec4<f32> = vs_INTERP3;
      let x_2116 : vec4<f32> = x_371.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_2113.x, x_2113.y, x_2113.x, x_2113.y) + x_2116);
      let x_2119 : vec4<f32> = u_xlat7;
      let x_2120 : vec2<f32> = vec2<f32>(x_2119.x, x_2119.y);
      let x_2122 : f32 = vs_INTERP3.z;
      txVec32 = vec3<f32>(x_2120.x, x_2120.y, x_2122);
      let x_2129 : vec3<f32> = txVec32;
      let x_2131 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2129.xy, x_2129.z);
      u_xlat8.z = x_2131;
      let x_2134 : vec4<f32> = u_xlat7;
      let x_2135 : vec2<f32> = vec2<f32>(x_2134.z, x_2134.w);
      let x_2137 : f32 = vs_INTERP3.z;
      txVec33 = vec3<f32>(x_2135.x, x_2135.y, x_2137);
      let x_2144 : vec3<f32> = txVec33;
      let x_2146 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2144.xy, x_2144.z);
      u_xlat8.w = x_2146;
      let x_2148 : vec4<f32> = u_xlat8;
      u_xlat0.x = dot(x_2148, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_2154 : f32 = x_371.x_MainLightShadowParams.y;
      u_xlatb31 = (x_2154 == 2.0f);
      let x_2156 : bool = u_xlatb31;
      if (x_2156) {
        let x_2160 : vec4<f32> = vs_INTERP3;
        let x_2163 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2166 : vec2<f32> = ((vec2<f32>(x_2160.x, x_2160.y) * vec2<f32>(x_2163.z, x_2163.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2167 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2166.x, x_2166.y, x_2167.z);
        let x_2169 : vec3<f32> = u_xlat31;
        let x_2171 : vec2<f32> = floor(vec2<f32>(x_2169.x, x_2169.y));
        let x_2172 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2171.x, x_2171.y, x_2172.z);
        let x_2174 : vec4<f32> = vs_INTERP3;
        let x_2177 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2180 : vec3<f32> = u_xlat31;
        let x_2183 : vec2<f32> = ((vec2<f32>(x_2174.x, x_2174.y) * vec2<f32>(x_2177.z, x_2177.w)) + -(vec2<f32>(x_2180.x, x_2180.y)));
        let x_2184 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2183.x, x_2183.y, x_2184.z, x_2184.w);
        let x_2186 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_2186.x, x_2186.x, x_2186.y, x_2186.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2189 : vec4<f32> = u_xlat8;
        let x_2191 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2189.x, x_2189.x, x_2189.z, x_2189.z) * vec4<f32>(x_2191.x, x_2191.x, x_2191.z, x_2191.z));
        let x_2195 : vec4<f32> = u_xlat9;
        u_xlat57 = (vec2<f32>(x_2195.y, x_2195.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_2198 : vec4<f32> = u_xlat9;
        let x_2201 : vec4<f32> = u_xlat7;
        let x_2204 : vec2<f32> = ((vec2<f32>(x_2198.x, x_2198.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2201.x, x_2201.y)));
        let x_2205 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2204.x, x_2205.y, x_2204.y, x_2205.w);
        let x_2207 : vec4<f32> = u_xlat7;
        let x_2210 : vec2<f32> = (-(vec2<f32>(x_2207.x, x_2207.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2211 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2210.x, x_2210.y, x_2211.z, x_2211.w);
        let x_2214 : vec4<f32> = u_xlat7;
        u_xlat59 = min(vec2<f32>(x_2214.x, x_2214.y), vec2<f32>(0.0f, 0.0f));
        let x_2217 : vec2<f32> = u_xlat59;
        let x_2219 : vec2<f32> = u_xlat59;
        let x_2221 : vec4<f32> = u_xlat9;
        u_xlat59 = ((-(x_2217) * x_2219) + vec2<f32>(x_2221.x, x_2221.y));
        let x_2224 : vec4<f32> = u_xlat7;
        let x_2226 : vec2<f32> = max(vec2<f32>(x_2224.x, x_2224.y), vec2<f32>(0.0f, 0.0f));
        let x_2227 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2226.x, x_2226.y, x_2227.z, x_2227.w);
        let x_2229 : vec4<f32> = u_xlat7;
        let x_2232 : vec4<f32> = u_xlat7;
        let x_2235 : vec4<f32> = u_xlat8;
        let x_2237 : vec2<f32> = ((-(vec2<f32>(x_2229.x, x_2229.y)) * vec2<f32>(x_2232.x, x_2232.y)) + vec2<f32>(x_2235.y, x_2235.w));
        let x_2238 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2237.x, x_2237.y, x_2238.z, x_2238.w);
        let x_2240 : vec2<f32> = u_xlat59;
        u_xlat59 = (x_2240 + vec2<f32>(1.0f, 1.0f));
        let x_2242 : vec4<f32> = u_xlat7;
        let x_2244 : vec2<f32> = (vec2<f32>(x_2242.x, x_2242.y) + vec2<f32>(1.0f, 1.0f));
        let x_2245 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2244.x, x_2244.y, x_2245.z, x_2245.w);
        let x_2247 : vec4<f32> = u_xlat8;
        let x_2249 : vec2<f32> = (vec2<f32>(x_2247.x, x_2247.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2250 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2249.x, x_2249.y, x_2250.z, x_2250.w);
        let x_2252 : vec4<f32> = u_xlat9;
        let x_2254 : vec2<f32> = (vec2<f32>(x_2252.x, x_2252.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2255 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2254.x, x_2254.y, x_2255.z, x_2255.w);
        let x_2257 : vec2<f32> = u_xlat59;
        let x_2258 : vec2<f32> = (x_2257 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2259 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2258.x, x_2258.y, x_2259.z, x_2259.w);
        let x_2261 : vec4<f32> = u_xlat7;
        let x_2263 : vec2<f32> = (vec2<f32>(x_2261.x, x_2261.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2264 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2263.x, x_2263.y, x_2264.z, x_2264.w);
        let x_2266 : vec4<f32> = u_xlat8;
        let x_2268 : vec2<f32> = (vec2<f32>(x_2266.y, x_2266.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2269 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2268.x, x_2268.y, x_2269.z, x_2269.w);
        let x_2272 : f32 = u_xlat9.x;
        u_xlat10.z = x_2272;
        let x_2275 : f32 = u_xlat7.x;
        u_xlat10.w = x_2275;
        let x_2278 : f32 = u_xlat12.x;
        u_xlat11.z = x_2278;
        let x_2281 : f32 = u_xlat57.x;
        u_xlat11.w = x_2281;
        let x_2283 : vec4<f32> = u_xlat10;
        let x_2285 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_2283.z, x_2283.w, x_2283.x, x_2283.z) + vec4<f32>(x_2285.z, x_2285.w, x_2285.x, x_2285.z));
        let x_2289 : f32 = u_xlat10.y;
        u_xlat9.z = x_2289;
        let x_2292 : f32 = u_xlat7.y;
        u_xlat9.w = x_2292;
        let x_2295 : f32 = u_xlat11.y;
        u_xlat12.z = x_2295;
        let x_2298 : f32 = u_xlat57.y;
        u_xlat12.w = x_2298;
        let x_2300 : vec4<f32> = u_xlat9;
        let x_2302 : vec4<f32> = u_xlat12;
        let x_2304 : vec3<f32> = (vec3<f32>(x_2300.z, x_2300.y, x_2300.w) + vec3<f32>(x_2302.z, x_2302.y, x_2302.w));
        let x_2305 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2304.x, x_2304.y, x_2304.z, x_2305.w);
        let x_2307 : vec4<f32> = u_xlat11;
        let x_2309 : vec4<f32> = u_xlat8;
        let x_2311 : vec3<f32> = (vec3<f32>(x_2307.x, x_2307.z, x_2307.w) / vec3<f32>(x_2309.z, x_2309.w, x_2309.y));
        let x_2312 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2311.x, x_2311.y, x_2311.z, x_2312.w);
        let x_2314 : vec4<f32> = u_xlat9;
        let x_2316 : vec3<f32> = (vec3<f32>(x_2314.x, x_2314.y, x_2314.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2317 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2316.x, x_2316.y, x_2316.z, x_2317.w);
        let x_2319 : vec4<f32> = u_xlat12;
        let x_2321 : vec4<f32> = u_xlat7;
        let x_2323 : vec3<f32> = (vec3<f32>(x_2319.z, x_2319.y, x_2319.w) / vec3<f32>(x_2321.x, x_2321.y, x_2321.z));
        let x_2324 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2323.x, x_2323.y, x_2323.z, x_2324.w);
        let x_2326 : vec4<f32> = u_xlat10;
        let x_2328 : vec3<f32> = (vec3<f32>(x_2326.x, x_2326.y, x_2326.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2329 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2328.x, x_2328.y, x_2328.z, x_2329.w);
        let x_2331 : vec4<f32> = u_xlat9;
        let x_2334 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2336 : vec3<f32> = (vec3<f32>(x_2331.y, x_2331.x, x_2331.z) * vec3<f32>(x_2334.x, x_2334.x, x_2334.x));
        let x_2337 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2336.x, x_2336.y, x_2336.z, x_2337.w);
        let x_2339 : vec4<f32> = u_xlat10;
        let x_2342 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2344 : vec3<f32> = (vec3<f32>(x_2339.x, x_2339.y, x_2339.z) * vec3<f32>(x_2342.y, x_2342.y, x_2342.y));
        let x_2345 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2344.x, x_2344.y, x_2344.z, x_2345.w);
        let x_2348 : f32 = u_xlat10.x;
        u_xlat9.w = x_2348;
        let x_2350 : vec3<f32> = u_xlat31;
        let x_2353 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2356 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_2350.x, x_2350.y, x_2350.x, x_2350.y) * vec4<f32>(x_2353.x, x_2353.y, x_2353.x, x_2353.y)) + vec4<f32>(x_2356.y, x_2356.w, x_2356.x, x_2356.w));
        let x_2359 : vec3<f32> = u_xlat31;
        let x_2362 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2365 : vec4<f32> = u_xlat9;
        let x_2367 : vec2<f32> = ((vec2<f32>(x_2359.x, x_2359.y) * vec2<f32>(x_2362.x, x_2362.y)) + vec2<f32>(x_2365.z, x_2365.w));
        let x_2368 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2367.x, x_2367.y, x_2368.z, x_2368.w);
        let x_2371 : f32 = u_xlat9.y;
        u_xlat10.w = x_2371;
        let x_2373 : vec4<f32> = u_xlat10;
        let x_2374 : vec2<f32> = vec2<f32>(x_2373.y, x_2373.z);
        let x_2375 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2375.x, x_2374.x, x_2375.z, x_2374.y);
        let x_2377 : vec3<f32> = u_xlat31;
        let x_2380 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2383 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_2377.x, x_2377.y, x_2377.x, x_2377.y) * vec4<f32>(x_2380.x, x_2380.y, x_2380.x, x_2380.y)) + vec4<f32>(x_2383.x, x_2383.y, x_2383.z, x_2383.y));
        let x_2386 : vec3<f32> = u_xlat31;
        let x_2389 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2392 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_2386.x, x_2386.y, x_2386.x, x_2386.y) * vec4<f32>(x_2389.x, x_2389.y, x_2389.x, x_2389.y)) + vec4<f32>(x_2392.w, x_2392.y, x_2392.w, x_2392.z));
        let x_2395 : vec3<f32> = u_xlat31;
        let x_2398 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2401 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_2395.x, x_2395.y, x_2395.x, x_2395.y) * vec4<f32>(x_2398.x, x_2398.y, x_2398.x, x_2398.y)) + vec4<f32>(x_2401.x, x_2401.w, x_2401.z, x_2401.w));
        let x_2404 : vec4<f32> = u_xlat7;
        let x_2406 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_2404.x, x_2404.x, x_2404.x, x_2404.y) * vec4<f32>(x_2406.z, x_2406.w, x_2406.y, x_2406.z));
        let x_2409 : vec4<f32> = u_xlat7;
        let x_2411 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_2409.y, x_2409.y, x_2409.z, x_2409.z) * x_2411);
        let x_2414 : f32 = u_xlat7.z;
        let x_2416 : f32 = u_xlat8.y;
        u_xlat31.x = (x_2414 * x_2416);
        let x_2420 : vec4<f32> = u_xlat11;
        let x_2421 : vec2<f32> = vec2<f32>(x_2420.x, x_2420.y);
        let x_2423 : f32 = vs_INTERP3.z;
        txVec34 = vec3<f32>(x_2421.x, x_2421.y, x_2423);
        let x_2431 : vec3<f32> = txVec34;
        let x_2433 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2431.xy, x_2431.z);
        u_xlat56 = x_2433;
        let x_2435 : vec4<f32> = u_xlat11;
        let x_2436 : vec2<f32> = vec2<f32>(x_2435.z, x_2435.w);
        let x_2438 : f32 = vs_INTERP3.z;
        txVec35 = vec3<f32>(x_2436.x, x_2436.y, x_2438);
        let x_2446 : vec3<f32> = txVec35;
        let x_2448 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2446.xy, x_2446.z);
        u_xlat81 = x_2448;
        let x_2449 : f32 = u_xlat81;
        let x_2451 : f32 = u_xlat14.y;
        u_xlat81 = (x_2449 * x_2451);
        let x_2454 : f32 = u_xlat14.x;
        let x_2455 : f32 = u_xlat56;
        let x_2457 : f32 = u_xlat81;
        u_xlat56 = ((x_2454 * x_2455) + x_2457);
        let x_2460 : vec4<f32> = u_xlat12;
        let x_2461 : vec2<f32> = vec2<f32>(x_2460.x, x_2460.y);
        let x_2463 : f32 = vs_INTERP3.z;
        txVec36 = vec3<f32>(x_2461.x, x_2461.y, x_2463);
        let x_2470 : vec3<f32> = txVec36;
        let x_2472 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2470.xy, x_2470.z);
        u_xlat81 = x_2472;
        let x_2474 : f32 = u_xlat14.z;
        let x_2475 : f32 = u_xlat81;
        let x_2477 : f32 = u_xlat56;
        u_xlat56 = ((x_2474 * x_2475) + x_2477);
        let x_2480 : vec4<f32> = u_xlat10;
        let x_2481 : vec2<f32> = vec2<f32>(x_2480.x, x_2480.y);
        let x_2483 : f32 = vs_INTERP3.z;
        txVec37 = vec3<f32>(x_2481.x, x_2481.y, x_2483);
        let x_2490 : vec3<f32> = txVec37;
        let x_2492 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2490.xy, x_2490.z);
        u_xlat81 = x_2492;
        let x_2494 : f32 = u_xlat14.w;
        let x_2495 : f32 = u_xlat81;
        let x_2497 : f32 = u_xlat56;
        u_xlat56 = ((x_2494 * x_2495) + x_2497);
        let x_2500 : vec4<f32> = u_xlat13;
        let x_2501 : vec2<f32> = vec2<f32>(x_2500.x, x_2500.y);
        let x_2503 : f32 = vs_INTERP3.z;
        txVec38 = vec3<f32>(x_2501.x, x_2501.y, x_2503);
        let x_2510 : vec3<f32> = txVec38;
        let x_2512 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2510.xy, x_2510.z);
        u_xlat81 = x_2512;
        let x_2514 : f32 = u_xlat15.x;
        let x_2515 : f32 = u_xlat81;
        let x_2517 : f32 = u_xlat56;
        u_xlat56 = ((x_2514 * x_2515) + x_2517);
        let x_2520 : vec4<f32> = u_xlat13;
        let x_2521 : vec2<f32> = vec2<f32>(x_2520.z, x_2520.w);
        let x_2523 : f32 = vs_INTERP3.z;
        txVec39 = vec3<f32>(x_2521.x, x_2521.y, x_2523);
        let x_2530 : vec3<f32> = txVec39;
        let x_2532 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2530.xy, x_2530.z);
        u_xlat81 = x_2532;
        let x_2534 : f32 = u_xlat15.y;
        let x_2535 : f32 = u_xlat81;
        let x_2537 : f32 = u_xlat56;
        u_xlat56 = ((x_2534 * x_2535) + x_2537);
        let x_2540 : vec4<f32> = u_xlat10;
        let x_2541 : vec2<f32> = vec2<f32>(x_2540.z, x_2540.w);
        let x_2543 : f32 = vs_INTERP3.z;
        txVec40 = vec3<f32>(x_2541.x, x_2541.y, x_2543);
        let x_2550 : vec3<f32> = txVec40;
        let x_2552 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2550.xy, x_2550.z);
        u_xlat81 = x_2552;
        let x_2554 : f32 = u_xlat15.z;
        let x_2555 : f32 = u_xlat81;
        let x_2557 : f32 = u_xlat56;
        u_xlat56 = ((x_2554 * x_2555) + x_2557);
        let x_2560 : vec4<f32> = u_xlat9;
        let x_2561 : vec2<f32> = vec2<f32>(x_2560.x, x_2560.y);
        let x_2563 : f32 = vs_INTERP3.z;
        txVec41 = vec3<f32>(x_2561.x, x_2561.y, x_2563);
        let x_2570 : vec3<f32> = txVec41;
        let x_2572 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2570.xy, x_2570.z);
        u_xlat81 = x_2572;
        let x_2574 : f32 = u_xlat15.w;
        let x_2575 : f32 = u_xlat81;
        let x_2577 : f32 = u_xlat56;
        u_xlat56 = ((x_2574 * x_2575) + x_2577);
        let x_2580 : vec4<f32> = u_xlat9;
        let x_2581 : vec2<f32> = vec2<f32>(x_2580.z, x_2580.w);
        let x_2583 : f32 = vs_INTERP3.z;
        txVec42 = vec3<f32>(x_2581.x, x_2581.y, x_2583);
        let x_2590 : vec3<f32> = txVec42;
        let x_2592 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2590.xy, x_2590.z);
        u_xlat81 = x_2592;
        let x_2594 : f32 = u_xlat31.x;
        let x_2595 : f32 = u_xlat81;
        let x_2597 : f32 = u_xlat56;
        u_xlat0.x = ((x_2594 * x_2595) + x_2597);
      } else {
        let x_2601 : vec4<f32> = vs_INTERP3;
        let x_2604 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2607 : vec2<f32> = ((vec2<f32>(x_2601.x, x_2601.y) * vec2<f32>(x_2604.z, x_2604.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2608 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2607.x, x_2607.y, x_2608.z);
        let x_2610 : vec3<f32> = u_xlat31;
        let x_2612 : vec2<f32> = floor(vec2<f32>(x_2610.x, x_2610.y));
        let x_2613 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2612.x, x_2612.y, x_2613.z);
        let x_2615 : vec4<f32> = vs_INTERP3;
        let x_2618 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2621 : vec3<f32> = u_xlat31;
        let x_2624 : vec2<f32> = ((vec2<f32>(x_2615.x, x_2615.y) * vec2<f32>(x_2618.z, x_2618.w)) + -(vec2<f32>(x_2621.x, x_2621.y)));
        let x_2625 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2624.x, x_2624.y, x_2625.z, x_2625.w);
        let x_2627 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_2627.x, x_2627.x, x_2627.y, x_2627.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2630 : vec4<f32> = u_xlat8;
        let x_2632 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2630.x, x_2630.x, x_2630.z, x_2630.z) * vec4<f32>(x_2632.x, x_2632.x, x_2632.z, x_2632.z));
        let x_2635 : vec4<f32> = u_xlat9;
        let x_2637 : vec2<f32> = (vec2<f32>(x_2635.y, x_2635.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_2638 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2638.x, x_2637.x, x_2638.z, x_2637.y);
        let x_2640 : vec4<f32> = u_xlat9;
        let x_2643 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_2640.x, x_2640.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2643.x, x_2643.y)));
        let x_2647 : vec4<f32> = u_xlat7;
        let x_2650 : vec2<f32> = (-(vec2<f32>(x_2647.x, x_2647.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2651 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2650.x, x_2651.y, x_2650.y, x_2651.w);
        let x_2653 : vec4<f32> = u_xlat7;
        let x_2655 : vec2<f32> = min(vec2<f32>(x_2653.x, x_2653.y), vec2<f32>(0.0f, 0.0f));
        let x_2656 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2655.x, x_2655.y, x_2656.z, x_2656.w);
        let x_2658 : vec4<f32> = u_xlat9;
        let x_2661 : vec4<f32> = u_xlat9;
        let x_2664 : vec4<f32> = u_xlat8;
        let x_2666 : vec2<f32> = ((-(vec2<f32>(x_2658.x, x_2658.y)) * vec2<f32>(x_2661.x, x_2661.y)) + vec2<f32>(x_2664.x, x_2664.z));
        let x_2667 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2666.x, x_2667.y, x_2666.y, x_2667.w);
        let x_2669 : vec4<f32> = u_xlat7;
        let x_2671 : vec2<f32> = max(vec2<f32>(x_2669.x, x_2669.y), vec2<f32>(0.0f, 0.0f));
        let x_2672 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2671.x, x_2671.y, x_2672.z, x_2672.w);
        let x_2674 : vec4<f32> = u_xlat9;
        let x_2677 : vec4<f32> = u_xlat9;
        let x_2680 : vec4<f32> = u_xlat8;
        let x_2682 : vec2<f32> = ((-(vec2<f32>(x_2674.x, x_2674.y)) * vec2<f32>(x_2677.x, x_2677.y)) + vec2<f32>(x_2680.y, x_2680.w));
        let x_2683 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2683.x, x_2682.x, x_2683.z, x_2682.y);
        let x_2685 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_2685 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_2688 : f32 = u_xlat8.y;
        u_xlat9.z = (x_2688 * 0.08163200318813323975f);
        let x_2691 : vec2<f32> = u_xlat57;
        let x_2693 : vec2<f32> = (vec2<f32>(x_2691.y, x_2691.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2694 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2693.x, x_2693.y, x_2694.z, x_2694.w);
        let x_2696 : vec4<f32> = u_xlat8;
        u_xlat57 = (vec2<f32>(x_2696.x, x_2696.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2700 : f32 = u_xlat8.w;
        u_xlat11.z = (x_2700 * 0.08163200318813323975f);
        let x_2704 : f32 = u_xlat11.y;
        u_xlat9.x = x_2704;
        let x_2706 : vec4<f32> = u_xlat7;
        let x_2709 : vec2<f32> = ((vec2<f32>(x_2706.x, x_2706.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2710 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2710.x, x_2709.x, x_2710.z, x_2709.y);
        let x_2712 : vec4<f32> = u_xlat7;
        let x_2715 : vec2<f32> = ((vec2<f32>(x_2712.x, x_2712.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2716 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2715.x, x_2716.y, x_2715.y, x_2716.w);
        let x_2719 : f32 = u_xlat57.x;
        u_xlat8.y = x_2719;
        let x_2722 : f32 = u_xlat10.y;
        u_xlat8.w = x_2722;
        let x_2724 : vec4<f32> = u_xlat8;
        let x_2725 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2724 + x_2725);
        let x_2727 : vec4<f32> = u_xlat7;
        let x_2730 : vec2<f32> = ((vec2<f32>(x_2727.y, x_2727.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2731 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2731.x, x_2730.x, x_2731.z, x_2730.y);
        let x_2733 : vec4<f32> = u_xlat7;
        let x_2736 : vec2<f32> = ((vec2<f32>(x_2733.y, x_2733.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2737 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2736.x, x_2737.y, x_2736.y, x_2737.w);
        let x_2740 : f32 = u_xlat57.y;
        u_xlat10.y = x_2740;
        let x_2742 : vec4<f32> = u_xlat10;
        let x_2743 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_2742 + x_2743);
        let x_2745 : vec4<f32> = u_xlat8;
        let x_2746 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_2745 / x_2746);
        let x_2748 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_2748 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2750 : vec4<f32> = u_xlat10;
        let x_2751 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_2750 / x_2751);
        let x_2753 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_2753 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2755 : vec4<f32> = u_xlat8;
        let x_2758 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_2755.w, x_2755.x, x_2755.y, x_2755.z) * vec4<f32>(x_2758.x, x_2758.x, x_2758.x, x_2758.x));
        let x_2761 : vec4<f32> = u_xlat10;
        let x_2764 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_2761.x, x_2761.w, x_2761.y, x_2761.z) * vec4<f32>(x_2764.y, x_2764.y, x_2764.y, x_2764.y));
        let x_2767 : vec4<f32> = u_xlat8;
        let x_2768 : vec3<f32> = vec3<f32>(x_2767.y, x_2767.z, x_2767.w);
        let x_2769 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2768.x, x_2769.y, x_2768.y, x_2768.z);
        let x_2772 : f32 = u_xlat10.x;
        u_xlat11.y = x_2772;
        let x_2774 : vec3<f32> = u_xlat31;
        let x_2777 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2780 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_2774.x, x_2774.y, x_2774.x, x_2774.y) * vec4<f32>(x_2777.x, x_2777.y, x_2777.x, x_2777.y)) + vec4<f32>(x_2780.x, x_2780.y, x_2780.z, x_2780.y));
        let x_2783 : vec3<f32> = u_xlat31;
        let x_2786 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2789 : vec4<f32> = u_xlat11;
        let x_2791 : vec2<f32> = ((vec2<f32>(x_2783.x, x_2783.y) * vec2<f32>(x_2786.x, x_2786.y)) + vec2<f32>(x_2789.w, x_2789.y));
        let x_2792 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2791.x, x_2791.y, x_2792.z, x_2792.w);
        let x_2795 : f32 = u_xlat11.y;
        u_xlat8.y = x_2795;
        let x_2798 : f32 = u_xlat10.z;
        u_xlat11.y = x_2798;
        let x_2800 : vec3<f32> = u_xlat31;
        let x_2803 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2806 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_2800.x, x_2800.y, x_2800.x, x_2800.y) * vec4<f32>(x_2803.x, x_2803.y, x_2803.x, x_2803.y)) + vec4<f32>(x_2806.x, x_2806.y, x_2806.z, x_2806.y));
        let x_2810 : vec3<f32> = u_xlat31;
        let x_2813 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2816 : vec4<f32> = u_xlat11;
        u_xlat63 = ((vec2<f32>(x_2810.x, x_2810.y) * vec2<f32>(x_2813.x, x_2813.y)) + vec2<f32>(x_2816.w, x_2816.y));
        let x_2820 : f32 = u_xlat11.y;
        u_xlat8.z = x_2820;
        let x_2822 : vec3<f32> = u_xlat31;
        let x_2825 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2828 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_2822.x, x_2822.y, x_2822.x, x_2822.y) * vec4<f32>(x_2825.x, x_2825.y, x_2825.x, x_2825.y)) + vec4<f32>(x_2828.x, x_2828.y, x_2828.x, x_2828.z));
        let x_2832 : f32 = u_xlat10.w;
        u_xlat11.y = x_2832;
        let x_2834 : vec3<f32> = u_xlat31;
        let x_2837 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2840 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_2834.x, x_2834.y, x_2834.x, x_2834.y) * vec4<f32>(x_2837.x, x_2837.y, x_2837.x, x_2837.y)) + vec4<f32>(x_2840.x, x_2840.y, x_2840.z, x_2840.y));
        let x_2843 : vec3<f32> = u_xlat31;
        let x_2846 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2849 : vec4<f32> = u_xlat11;
        let x_2851 : vec2<f32> = ((vec2<f32>(x_2843.x, x_2843.y) * vec2<f32>(x_2846.x, x_2846.y)) + vec2<f32>(x_2849.w, x_2849.y));
        let x_2852 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2851.x, x_2851.y, x_2852.z);
        let x_2855 : f32 = u_xlat11.y;
        u_xlat8.w = x_2855;
        let x_2857 : vec3<f32> = u_xlat31;
        let x_2860 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2863 : vec4<f32> = u_xlat8;
        let x_2865 : vec2<f32> = ((vec2<f32>(x_2857.x, x_2857.y) * vec2<f32>(x_2860.x, x_2860.y)) + vec2<f32>(x_2863.x, x_2863.w));
        let x_2866 : vec4<f32> = u_xlat17;
        u_xlat17 = vec4<f32>(x_2865.x, x_2865.y, x_2866.z, x_2866.w);
        let x_2868 : vec4<f32> = u_xlat11;
        let x_2869 : vec3<f32> = vec3<f32>(x_2868.x, x_2868.z, x_2868.w);
        let x_2870 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2869.x, x_2870.y, x_2869.y, x_2869.z);
        let x_2872 : vec3<f32> = u_xlat31;
        let x_2875 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2878 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_2872.x, x_2872.y, x_2872.x, x_2872.y) * vec4<f32>(x_2875.x, x_2875.y, x_2875.x, x_2875.y)) + vec4<f32>(x_2878.x, x_2878.y, x_2878.z, x_2878.y));
        let x_2881 : vec3<f32> = u_xlat31;
        let x_2884 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2887 : vec4<f32> = u_xlat10;
        u_xlat60 = ((vec2<f32>(x_2881.x, x_2881.y) * vec2<f32>(x_2884.x, x_2884.y)) + vec2<f32>(x_2887.w, x_2887.y));
        let x_2891 : f32 = u_xlat8.x;
        u_xlat10.x = x_2891;
        let x_2893 : vec3<f32> = u_xlat31;
        let x_2896 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2899 : vec4<f32> = u_xlat10;
        let x_2901 : vec2<f32> = ((vec2<f32>(x_2893.x, x_2893.y) * vec2<f32>(x_2896.x, x_2896.y)) + vec2<f32>(x_2899.x, x_2899.y));
        let x_2902 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2901.x, x_2901.y, x_2902.z);
        let x_2904 : vec4<f32> = u_xlat7;
        let x_2906 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_2904.x, x_2904.x, x_2904.x, x_2904.x) * x_2906);
        let x_2908 : vec4<f32> = u_xlat7;
        let x_2910 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_2908.y, x_2908.y, x_2908.y, x_2908.y) * x_2910);
        let x_2912 : vec4<f32> = u_xlat7;
        let x_2914 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_2912.z, x_2912.z, x_2912.z, x_2912.z) * x_2914);
        let x_2916 : vec4<f32> = u_xlat7;
        let x_2918 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_2916.w, x_2916.w, x_2916.w, x_2916.w) * x_2918);
        let x_2921 : vec4<f32> = u_xlat12;
        let x_2922 : vec2<f32> = vec2<f32>(x_2921.x, x_2921.y);
        let x_2924 : f32 = vs_INTERP3.z;
        txVec43 = vec3<f32>(x_2922.x, x_2922.y, x_2924);
        let x_2931 : vec3<f32> = txVec43;
        let x_2933 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2931.xy, x_2931.z);
        u_xlat81 = x_2933;
        let x_2935 : vec4<f32> = u_xlat12;
        let x_2936 : vec2<f32> = vec2<f32>(x_2935.z, x_2935.w);
        let x_2938 : f32 = vs_INTERP3.z;
        txVec44 = vec3<f32>(x_2936.x, x_2936.y, x_2938);
        let x_2945 : vec3<f32> = txVec44;
        let x_2947 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2945.xy, x_2945.z);
        u_xlat8.x = x_2947;
        let x_2950 : f32 = u_xlat8.x;
        let x_2952 : f32 = u_xlat18.y;
        u_xlat8.x = (x_2950 * x_2952);
        let x_2956 : f32 = u_xlat18.x;
        let x_2957 : f32 = u_xlat81;
        let x_2960 : f32 = u_xlat8.x;
        u_xlat81 = ((x_2956 * x_2957) + x_2960);
        let x_2963 : vec4<f32> = u_xlat13;
        let x_2964 : vec2<f32> = vec2<f32>(x_2963.x, x_2963.y);
        let x_2966 : f32 = vs_INTERP3.z;
        txVec45 = vec3<f32>(x_2964.x, x_2964.y, x_2966);
        let x_2973 : vec3<f32> = txVec45;
        let x_2975 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2973.xy, x_2973.z);
        u_xlat8.x = x_2975;
        let x_2978 : f32 = u_xlat18.z;
        let x_2980 : f32 = u_xlat8.x;
        let x_2982 : f32 = u_xlat81;
        u_xlat81 = ((x_2978 * x_2980) + x_2982);
        let x_2985 : vec4<f32> = u_xlat15;
        let x_2986 : vec2<f32> = vec2<f32>(x_2985.x, x_2985.y);
        let x_2988 : f32 = vs_INTERP3.z;
        txVec46 = vec3<f32>(x_2986.x, x_2986.y, x_2988);
        let x_2995 : vec3<f32> = txVec46;
        let x_2997 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2995.xy, x_2995.z);
        u_xlat8.x = x_2997;
        let x_3000 : f32 = u_xlat18.w;
        let x_3002 : f32 = u_xlat8.x;
        let x_3004 : f32 = u_xlat81;
        u_xlat81 = ((x_3000 * x_3002) + x_3004);
        let x_3007 : vec4<f32> = u_xlat14;
        let x_3008 : vec2<f32> = vec2<f32>(x_3007.x, x_3007.y);
        let x_3010 : f32 = vs_INTERP3.z;
        txVec47 = vec3<f32>(x_3008.x, x_3008.y, x_3010);
        let x_3017 : vec3<f32> = txVec47;
        let x_3019 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3017.xy, x_3017.z);
        u_xlat8.x = x_3019;
        let x_3022 : f32 = u_xlat19.x;
        let x_3024 : f32 = u_xlat8.x;
        let x_3026 : f32 = u_xlat81;
        u_xlat81 = ((x_3022 * x_3024) + x_3026);
        let x_3029 : vec4<f32> = u_xlat14;
        let x_3030 : vec2<f32> = vec2<f32>(x_3029.z, x_3029.w);
        let x_3032 : f32 = vs_INTERP3.z;
        txVec48 = vec3<f32>(x_3030.x, x_3030.y, x_3032);
        let x_3039 : vec3<f32> = txVec48;
        let x_3041 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3039.xy, x_3039.z);
        u_xlat8.x = x_3041;
        let x_3044 : f32 = u_xlat19.y;
        let x_3046 : f32 = u_xlat8.x;
        let x_3048 : f32 = u_xlat81;
        u_xlat81 = ((x_3044 * x_3046) + x_3048);
        let x_3051 : vec2<f32> = u_xlat63;
        let x_3053 : f32 = vs_INTERP3.z;
        txVec49 = vec3<f32>(x_3051.x, x_3051.y, x_3053);
        let x_3060 : vec3<f32> = txVec49;
        let x_3062 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3060.xy, x_3060.z);
        u_xlat8.x = x_3062;
        let x_3065 : f32 = u_xlat19.z;
        let x_3067 : f32 = u_xlat8.x;
        let x_3069 : f32 = u_xlat81;
        u_xlat81 = ((x_3065 * x_3067) + x_3069);
        let x_3072 : vec4<f32> = u_xlat15;
        let x_3073 : vec2<f32> = vec2<f32>(x_3072.z, x_3072.w);
        let x_3075 : f32 = vs_INTERP3.z;
        txVec50 = vec3<f32>(x_3073.x, x_3073.y, x_3075);
        let x_3082 : vec3<f32> = txVec50;
        let x_3084 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3082.xy, x_3082.z);
        u_xlat8.x = x_3084;
        let x_3087 : f32 = u_xlat19.w;
        let x_3089 : f32 = u_xlat8.x;
        let x_3091 : f32 = u_xlat81;
        u_xlat81 = ((x_3087 * x_3089) + x_3091);
        let x_3094 : vec4<f32> = u_xlat16;
        let x_3095 : vec2<f32> = vec2<f32>(x_3094.x, x_3094.y);
        let x_3097 : f32 = vs_INTERP3.z;
        txVec51 = vec3<f32>(x_3095.x, x_3095.y, x_3097);
        let x_3104 : vec3<f32> = txVec51;
        let x_3106 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3104.xy, x_3104.z);
        u_xlat8.x = x_3106;
        let x_3109 : f32 = u_xlat20.x;
        let x_3111 : f32 = u_xlat8.x;
        let x_3113 : f32 = u_xlat81;
        u_xlat81 = ((x_3109 * x_3111) + x_3113);
        let x_3116 : vec4<f32> = u_xlat16;
        let x_3117 : vec2<f32> = vec2<f32>(x_3116.z, x_3116.w);
        let x_3119 : f32 = vs_INTERP3.z;
        txVec52 = vec3<f32>(x_3117.x, x_3117.y, x_3119);
        let x_3126 : vec3<f32> = txVec52;
        let x_3128 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3126.xy, x_3126.z);
        u_xlat8.x = x_3128;
        let x_3131 : f32 = u_xlat20.y;
        let x_3133 : f32 = u_xlat8.x;
        let x_3135 : f32 = u_xlat81;
        u_xlat81 = ((x_3131 * x_3133) + x_3135);
        let x_3138 : vec3<f32> = u_xlat33;
        let x_3139 : vec2<f32> = vec2<f32>(x_3138.x, x_3138.y);
        let x_3141 : f32 = vs_INTERP3.z;
        txVec53 = vec3<f32>(x_3139.x, x_3139.y, x_3141);
        let x_3148 : vec3<f32> = txVec53;
        let x_3150 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3148.xy, x_3148.z);
        u_xlat8.x = x_3150;
        let x_3153 : f32 = u_xlat20.z;
        let x_3155 : f32 = u_xlat8.x;
        let x_3157 : f32 = u_xlat81;
        u_xlat81 = ((x_3153 * x_3155) + x_3157);
        let x_3160 : vec4<f32> = u_xlat17;
        let x_3161 : vec2<f32> = vec2<f32>(x_3160.x, x_3160.y);
        let x_3163 : f32 = vs_INTERP3.z;
        txVec54 = vec3<f32>(x_3161.x, x_3161.y, x_3163);
        let x_3170 : vec3<f32> = txVec54;
        let x_3172 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3170.xy, x_3170.z);
        u_xlat8.x = x_3172;
        let x_3175 : f32 = u_xlat20.w;
        let x_3177 : f32 = u_xlat8.x;
        let x_3179 : f32 = u_xlat81;
        u_xlat81 = ((x_3175 * x_3177) + x_3179);
        let x_3182 : vec4<f32> = u_xlat11;
        let x_3183 : vec2<f32> = vec2<f32>(x_3182.x, x_3182.y);
        let x_3185 : f32 = vs_INTERP3.z;
        txVec55 = vec3<f32>(x_3183.x, x_3183.y, x_3185);
        let x_3192 : vec3<f32> = txVec55;
        let x_3194 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3192.xy, x_3192.z);
        u_xlat8.x = x_3194;
        let x_3197 : f32 = u_xlat7.x;
        let x_3199 : f32 = u_xlat8.x;
        let x_3201 : f32 = u_xlat81;
        u_xlat81 = ((x_3197 * x_3199) + x_3201);
        let x_3204 : vec4<f32> = u_xlat11;
        let x_3205 : vec2<f32> = vec2<f32>(x_3204.z, x_3204.w);
        let x_3207 : f32 = vs_INTERP3.z;
        txVec56 = vec3<f32>(x_3205.x, x_3205.y, x_3207);
        let x_3214 : vec3<f32> = txVec56;
        let x_3216 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3214.xy, x_3214.z);
        u_xlat7.x = x_3216;
        let x_3219 : f32 = u_xlat7.y;
        let x_3221 : f32 = u_xlat7.x;
        let x_3223 : f32 = u_xlat81;
        u_xlat81 = ((x_3219 * x_3221) + x_3223);
        let x_3226 : vec2<f32> = u_xlat60;
        let x_3228 : f32 = vs_INTERP3.z;
        txVec57 = vec3<f32>(x_3226.x, x_3226.y, x_3228);
        let x_3235 : vec3<f32> = txVec57;
        let x_3237 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3235.xy, x_3235.z);
        u_xlat7.x = x_3237;
        let x_3240 : f32 = u_xlat7.z;
        let x_3242 : f32 = u_xlat7.x;
        let x_3244 : f32 = u_xlat81;
        u_xlat81 = ((x_3240 * x_3242) + x_3244);
        let x_3247 : vec3<f32> = u_xlat31;
        let x_3248 : vec2<f32> = vec2<f32>(x_3247.x, x_3247.y);
        let x_3250 : f32 = vs_INTERP3.z;
        txVec58 = vec3<f32>(x_3248.x, x_3248.y, x_3250);
        let x_3257 : vec3<f32> = txVec58;
        let x_3259 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3257.xy, x_3257.z);
        u_xlat31.x = x_3259;
        let x_3262 : f32 = u_xlat7.w;
        let x_3264 : f32 = u_xlat31.x;
        let x_3266 : f32 = u_xlat81;
        u_xlat0.x = ((x_3262 * x_3264) + x_3266);
      }
    }
  } else {
    let x_3271 : vec4<f32> = vs_INTERP3;
    let x_3272 : vec2<f32> = vec2<f32>(x_3271.x, x_3271.y);
    let x_3274 : f32 = vs_INTERP3.z;
    txVec59 = vec3<f32>(x_3272.x, x_3272.y, x_3274);
    let x_3281 : vec3<f32> = txVec59;
    let x_3283 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3281.xy, x_3281.z);
    u_xlat0.x = x_3283;
  }
  let x_3286 : f32 = u_xlat0.x;
  let x_3288 : f32 = x_371.x_MainLightShadowParams.x;
  let x_3291 : f32 = u_xlat2.x;
  u_xlat0.x = ((x_3286 * x_3288) + x_3291);
  let x_3296 : f32 = vs_INTERP3.z;
  u_xlatb2 = (0.0f >= x_3296);
  let x_3299 : f32 = vs_INTERP3.z;
  u_xlatb31 = (x_3299 >= 1.0f);
  let x_3301 : bool = u_xlatb2;
  let x_3302 : bool = u_xlatb31;
  u_xlatb2 = (x_3301 | x_3302);
  let x_3304 : bool = u_xlatb2;
  if (x_3304) {
    x_3305 = 1.0f;
  } else {
    let x_3310 : f32 = u_xlat0.x;
    x_3305 = x_3310;
  }
  let x_3311 : f32 = x_3305;
  u_xlat0.x = x_3311;
  let x_3313 : vec3<f32> = vs_INTERP8;
  let x_3315 : vec3<f32> = x_147.x_WorldSpaceCameraPos;
  u_xlat31 = (x_3313 + -(x_3315));
  let x_3318 : vec3<f32> = u_xlat31;
  let x_3319 : vec3<f32> = u_xlat31;
  u_xlat2.x = dot(x_3318, x_3319);
  let x_3323 : f32 = u_xlat2.x;
  let x_3325 : f32 = x_371.x_MainLightShadowParams.z;
  let x_3328 : f32 = x_371.x_MainLightShadowParams.w;
  u_xlat31.x = ((x_3323 * x_3325) + x_3328);
  let x_3332 : f32 = u_xlat31.x;
  u_xlat31.x = clamp(x_3332, 0.0f, 1.0f);
  let x_3336 : f32 = u_xlat0.x;
  u_xlat56 = (-(x_3336) + 1.0f);
  let x_3340 : f32 = u_xlat31.x;
  let x_3341 : f32 = u_xlat56;
  let x_3344 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_3340 * x_3341) + x_3344);
  let x_3347 : vec3<f32> = u_xlat5;
  let x_3349 : vec4<f32> = u_xlat3;
  u_xlat31.x = dot(-(x_3347), vec3<f32>(x_3349.x, x_3349.y, x_3349.z));
  let x_3354 : f32 = u_xlat31.x;
  let x_3356 : f32 = u_xlat31.x;
  u_xlat31.x = (x_3354 + x_3356);
  let x_3359 : vec4<f32> = u_xlat3;
  let x_3361 : vec3<f32> = u_xlat31;
  let x_3365 : vec3<f32> = u_xlat5;
  u_xlat31 = ((vec3<f32>(x_3359.x, x_3359.y, x_3359.z) * -(vec3<f32>(x_3361.x, x_3361.x, x_3361.x))) + -(x_3365));
  let x_3368 : vec4<f32> = u_xlat3;
  let x_3370 : vec3<f32> = u_xlat5;
  u_xlat7.x = dot(vec3<f32>(x_3368.x, x_3368.y, x_3368.z), x_3370);
  let x_3374 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_3374, 0.0f, 1.0f);
  let x_3378 : f32 = u_xlat7.x;
  u_xlat7.x = (-(x_3378) + 1.0f);
  let x_3383 : f32 = u_xlat7.x;
  let x_3385 : f32 = u_xlat7.x;
  u_xlat7.x = (x_3383 * x_3385);
  let x_3389 : f32 = u_xlat7.x;
  let x_3391 : f32 = u_xlat7.x;
  u_xlat7.x = (x_3389 * x_3391);
  let x_3396 : f32 = u_xlat52.x;
  u_xlat32 = ((-(x_3396) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_3403 : f32 = u_xlat52.x;
  let x_3404 : f32 = u_xlat32;
  u_xlat52.x = (x_3403 * x_3404);
  let x_3408 : f32 = u_xlat52.x;
  u_xlat52.x = (x_3408 * 6.0f);
  let x_3420 : vec3<f32> = u_xlat31;
  let x_3422 : f32 = u_xlat52.x;
  let x_3423 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_3420, x_3422);
  u_xlat8 = x_3423;
  let x_3425 : f32 = u_xlat8.w;
  u_xlat52.x = (x_3425 + -1.0f);
  let x_3429 : f32 = x_83.unity_SpecCube0_HDR.w;
  let x_3431 : f32 = u_xlat52.x;
  u_xlat52.x = ((x_3429 * x_3431) + 1.0f);
  let x_3436 : f32 = u_xlat52.x;
  u_xlat52.x = max(x_3436, 0.0f);
  let x_3440 : f32 = u_xlat52.x;
  u_xlat52.x = log2(x_3440);
  let x_3444 : f32 = u_xlat52.x;
  let x_3446 : f32 = x_83.unity_SpecCube0_HDR.y;
  u_xlat52.x = (x_3444 * x_3446);
  let x_3450 : f32 = u_xlat52.x;
  u_xlat52.x = exp2(x_3450);
  let x_3454 : f32 = u_xlat52.x;
  let x_3456 : f32 = x_83.unity_SpecCube0_HDR.x;
  u_xlat52.x = (x_3454 * x_3456);
  let x_3459 : vec4<f32> = u_xlat8;
  let x_3461 : vec2<f32> = u_xlat52;
  u_xlat31 = (vec3<f32>(x_3459.x, x_3459.y, x_3459.z) * vec3<f32>(x_3461.x, x_3461.x, x_3461.x));
  let x_3464 : f32 = u_xlat77;
  let x_3466 : f32 = u_xlat77;
  u_xlat52 = ((vec2<f32>(x_3464, x_3464) * vec2<f32>(x_3466, x_3466)) + vec2<f32>(-1.0f, 1.0f));
  let x_3472 : f32 = u_xlat52.y;
  u_xlat77 = (1.0f / x_3472);
  let x_3474 : f32 = u_xlat79;
  u_xlat79 = (x_3474 + -0.03999999910593032837f);
  let x_3478 : f32 = u_xlat7.x;
  let x_3479 : f32 = u_xlat79;
  u_xlat79 = ((x_3478 * x_3479) + 0.03999999910593032837f);
  let x_3483 : f32 = u_xlat77;
  let x_3484 : f32 = u_xlat79;
  u_xlat77 = (x_3483 * x_3484);
  let x_3486 : f32 = u_xlat77;
  let x_3488 : vec3<f32> = u_xlat31;
  u_xlat31 = (vec3<f32>(x_3486, x_3486, x_3486) * x_3488);
  let x_3490 : vec3<f32> = u_xlat25;
  let x_3491 : vec3<f32> = u_xlat4;
  let x_3493 : vec3<f32> = u_xlat31;
  u_xlat25 = ((x_3490 * x_3491) + x_3493);
  let x_3496 : f32 = u_xlat0.x;
  let x_3498 : f32 = x_83.unity_LightData.z;
  u_xlat0.x = (x_3496 * x_3498);
  let x_3501 : vec4<f32> = u_xlat3;
  let x_3504 : vec4<f32> = x_147.x_MainLightPosition;
  u_xlat77 = dot(vec3<f32>(x_3501.x, x_3501.y, x_3501.z), vec3<f32>(x_3504.x, x_3504.y, x_3504.z));
  let x_3507 : f32 = u_xlat77;
  u_xlat77 = clamp(x_3507, 0.0f, 1.0f);
  let x_3510 : f32 = u_xlat0.x;
  let x_3511 : f32 = u_xlat77;
  u_xlat0.x = (x_3510 * x_3511);
  let x_3514 : vec3<f32> = u_xlat0;
  let x_3517 : vec4<f32> = x_147.x_MainLightColor;
  u_xlat31 = (vec3<f32>(x_3514.x, x_3514.x, x_3514.x) * vec3<f32>(x_3517.x, x_3517.y, x_3517.z));
  let x_3520 : vec3<f32> = u_xlat5;
  let x_3522 : vec4<f32> = x_147.x_MainLightPosition;
  let x_3524 : vec3<f32> = (x_3520 + vec3<f32>(x_3522.x, x_3522.y, x_3522.z));
  let x_3525 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3524.x, x_3524.y, x_3524.z, x_3525.w);
  let x_3527 : vec4<f32> = u_xlat7;
  let x_3529 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_3527.x, x_3527.y, x_3527.z), vec3<f32>(x_3529.x, x_3529.y, x_3529.z));
  let x_3534 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_3534, 1.17549435e-38f);
  let x_3538 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_3538);
  let x_3541 : vec3<f32> = u_xlat0;
  let x_3543 : vec4<f32> = u_xlat7;
  let x_3545 : vec3<f32> = (vec3<f32>(x_3541.x, x_3541.x, x_3541.x) * vec3<f32>(x_3543.x, x_3543.y, x_3543.z));
  let x_3546 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3545.x, x_3545.y, x_3545.z, x_3546.w);
  let x_3548 : vec4<f32> = u_xlat3;
  let x_3550 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_3548.x, x_3548.y, x_3548.z), vec3<f32>(x_3550.x, x_3550.y, x_3550.z));
  let x_3555 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_3555, 0.0f, 1.0f);
  let x_3559 : vec4<f32> = x_147.x_MainLightPosition;
  let x_3561 : vec4<f32> = u_xlat7;
  u_xlat77 = dot(vec3<f32>(x_3559.x, x_3559.y, x_3559.z), vec3<f32>(x_3561.x, x_3561.y, x_3561.z));
  let x_3564 : f32 = u_xlat77;
  u_xlat77 = clamp(x_3564, 0.0f, 1.0f);
  let x_3567 : f32 = u_xlat0.x;
  let x_3569 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3567 * x_3569);
  let x_3573 : f32 = u_xlat0.x;
  let x_3575 : f32 = u_xlat52.x;
  u_xlat0.x = ((x_3573 * x_3575) + 1.00001001358032226562f);
  let x_3580 : f32 = u_xlat77;
  let x_3581 : f32 = u_xlat77;
  u_xlat77 = (x_3580 * x_3581);
  let x_3584 : f32 = u_xlat0.x;
  let x_3586 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3584 * x_3586);
  let x_3589 : f32 = u_xlat77;
  u_xlat77 = max(x_3589, 0.10000000149011611938f);
  let x_3593 : f32 = u_xlat0.x;
  let x_3594 : f32 = u_xlat77;
  u_xlat0.x = (x_3593 * x_3594);
  let x_3597 : f32 = u_xlat80;
  let x_3599 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3597 * x_3599);
  let x_3602 : f32 = u_xlat78;
  let x_3604 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3602 / x_3604);
  let x_3607 : vec3<f32> = u_xlat0;
  let x_3611 : vec3<f32> = u_xlat4;
  let x_3612 : vec3<f32> = ((vec3<f32>(x_3607.x, x_3607.x, x_3607.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_3611);
  let x_3613 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3612.x, x_3612.y, x_3612.z, x_3613.w);
  let x_3615 : vec3<f32> = u_xlat31;
  let x_3616 : vec4<f32> = u_xlat7;
  u_xlat31 = (x_3615 * vec3<f32>(x_3616.x, x_3616.y, x_3616.z));
  let x_3621 : f32 = x_147.x_AdditionalLightsCount.x;
  let x_3623 : f32 = x_83.unity_LightData.y;
  u_xlat0.x = min(x_3621, x_3623);
  let x_3628 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_3628));
  let x_3632 : f32 = u_xlat2.x;
  let x_3635 : f32 = x_371.x_AdditionalShadowFadeParams.x;
  let x_3638 : f32 = x_371.x_AdditionalShadowFadeParams.y;
  u_xlat2.x = ((x_3632 * x_3635) + x_3638);
  let x_3642 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_3642, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_3654 : u32 = u_xlatu_loop_1;
    let x_3655 : u32 = u_xlatu0;
    if ((x_3654 < x_3655)) {
    } else {
      break;
    }
    let x_3658 : u32 = u_xlatu_loop_1;
    u_xlatu79 = (x_3658 >> 2u);
    let x_3661 : u32 = u_xlatu_loop_1;
    u_xlati82 = bitcast<i32>((x_3661 & 3u));
    let x_3664 : u32 = u_xlatu79;
    let x_3667 : vec4<f32> = x_83.unity_LightIndices[bitcast<i32>(x_3664)];
    let x_3677 : i32 = u_xlati82;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_3682 : vec4<u32> = indexable[x_3677];
    u_xlat79 = dot(x_3667, bitcast<vec4<f32>>(x_3682));
    let x_3686 : f32 = u_xlat79;
    u_xlati79 = i32(x_3686);
    let x_3688 : vec3<f32> = vs_INTERP8;
    let x_3699 : i32 = u_xlati79;
    let x_3701 : vec4<f32> = x_3698.x_AdditionalLightsPosition[x_3699];
    let x_3704 : i32 = u_xlati79;
    let x_3706 : vec4<f32> = x_3698.x_AdditionalLightsPosition[x_3704];
    let x_3708 : vec3<f32> = ((-(x_3688) * vec3<f32>(x_3701.w, x_3701.w, x_3701.w)) + vec3<f32>(x_3706.x, x_3706.y, x_3706.z));
    let x_3709 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3708.x, x_3708.y, x_3708.z, x_3709.w);
    let x_3712 : vec4<f32> = u_xlat8;
    let x_3714 : vec4<f32> = u_xlat8;
    u_xlat82 = dot(vec3<f32>(x_3712.x, x_3712.y, x_3712.z), vec3<f32>(x_3714.x, x_3714.y, x_3714.z));
    let x_3717 : f32 = u_xlat82;
    u_xlat82 = max(x_3717, 0.00006103515625f);
    let x_3721 : f32 = u_xlat82;
    u_xlat83 = inverseSqrt(x_3721);
    let x_3723 : f32 = u_xlat83;
    let x_3725 : vec4<f32> = u_xlat8;
    let x_3727 : vec3<f32> = (vec3<f32>(x_3723, x_3723, x_3723) * vec3<f32>(x_3725.x, x_3725.y, x_3725.z));
    let x_3728 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3727.x, x_3727.y, x_3727.z, x_3728.w);
    let x_3731 : f32 = u_xlat82;
    u_xlat84 = (1.0f / x_3731);
    let x_3733 : f32 = u_xlat82;
    let x_3734 : i32 = u_xlati79;
    let x_3736 : f32 = x_3698.x_AdditionalLightsAttenuation[x_3734].x;
    u_xlat82 = (x_3733 * x_3736);
    let x_3738 : f32 = u_xlat82;
    let x_3740 : f32 = u_xlat82;
    u_xlat82 = ((-(x_3738) * x_3740) + 1.0f);
    let x_3743 : f32 = u_xlat82;
    u_xlat82 = max(x_3743, 0.0f);
    let x_3745 : f32 = u_xlat82;
    let x_3746 : f32 = u_xlat82;
    u_xlat82 = (x_3745 * x_3746);
    let x_3748 : f32 = u_xlat82;
    let x_3749 : f32 = u_xlat84;
    u_xlat82 = (x_3748 * x_3749);
    let x_3751 : i32 = u_xlati79;
    let x_3753 : vec4<f32> = x_3698.x_AdditionalLightsSpotDir[x_3751];
    let x_3755 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_3753.x, x_3753.y, x_3753.z), vec3<f32>(x_3755.x, x_3755.y, x_3755.z));
    let x_3758 : f32 = u_xlat84;
    let x_3759 : i32 = u_xlati79;
    let x_3761 : f32 = x_3698.x_AdditionalLightsAttenuation[x_3759].z;
    let x_3763 : i32 = u_xlati79;
    let x_3765 : f32 = x_3698.x_AdditionalLightsAttenuation[x_3763].w;
    u_xlat84 = ((x_3758 * x_3761) + x_3765);
    let x_3767 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3767, 0.0f, 1.0f);
    let x_3769 : f32 = u_xlat84;
    let x_3770 : f32 = u_xlat84;
    u_xlat84 = (x_3769 * x_3770);
    let x_3772 : f32 = u_xlat82;
    let x_3773 : f32 = u_xlat84;
    u_xlat82 = (x_3772 * x_3773);
    let x_3777 : i32 = u_xlati79;
    let x_3779 : f32 = x_371.x_AdditionalShadowParams[x_3777].w;
    u_xlati84 = i32(x_3779);
    let x_3784 : i32 = u_xlati84;
    u_xlatb10.x = (x_3784 >= 0i);
    let x_3788 : bool = u_xlatb10.x;
    if (x_3788) {
      let x_3792 : i32 = u_xlati79;
      let x_3794 : f32 = x_371.x_AdditionalShadowParams[x_3792].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_3794, x_3794, x_3794, x_3794))));
      let x_3801 : bool = u_xlatb10.x;
      if (x_3801) {
        let x_3804 : vec4<f32> = u_xlat9;
        let x_3807 : vec4<f32> = u_xlat9;
        let x_3810 : vec4<bool> = (abs(vec4<f32>(x_3804.z, x_3804.z, x_3804.y, x_3804.z)) >= abs(vec4<f32>(x_3807.x, x_3807.y, x_3807.x, x_3807.x)));
        u_xlatb10 = vec3<bool>(x_3810.x, x_3810.y, x_3810.z);
        let x_3813 : bool = u_xlatb10.y;
        let x_3815 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_3813 & x_3815);
        let x_3819 : vec4<f32> = u_xlat9;
        let x_3822 : vec4<bool> = (-(vec4<f32>(x_3819.z, x_3819.y, x_3819.x, x_3819.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_3822.x, x_3822.y, x_3822.z);
        let x_3825 : bool = u_xlatb11.x;
        u_xlat35.x = select(4.0f, 5.0f, x_3825);
        let x_3830 : bool = u_xlatb11.y;
        u_xlat35.z = select(2.0f, 3.0f, x_3830);
        let x_3835 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_3835);
        let x_3839 : bool = u_xlatb10.z;
        if (x_3839) {
          let x_3844 : f32 = u_xlat35.z;
          x_3840 = x_3844;
        } else {
          let x_3847 : f32 = u_xlat11.x;
          x_3840 = x_3847;
        }
        let x_3848 : f32 = x_3840;
        u_xlat60.x = x_3848;
        let x_3851 : bool = u_xlatb10.x;
        if (x_3851) {
          let x_3856 : f32 = u_xlat35.x;
          x_3852 = x_3856;
        } else {
          let x_3859 : f32 = u_xlat60.x;
          x_3852 = x_3859;
        }
        let x_3860 : f32 = x_3852;
        u_xlat10.x = x_3860;
        let x_3862 : i32 = u_xlati79;
        let x_3864 : f32 = x_371.x_AdditionalShadowParams[x_3862].w;
        u_xlat35.x = trunc(x_3864);
        let x_3868 : f32 = u_xlat10.x;
        let x_3870 : f32 = u_xlat35.x;
        u_xlat10.x = (x_3868 + x_3870);
        let x_3874 : f32 = u_xlat10.x;
        u_xlati84 = i32(x_3874);
      }
      let x_3876 : i32 = u_xlati84;
      u_xlati84 = (x_3876 << bitcast<u32>(2i));
      let x_3878 : vec3<f32> = vs_INTERP8;
      let x_3881 : i32 = u_xlati84;
      let x_3884 : i32 = u_xlati84;
      let x_3888 : vec4<f32> = x_371.x_AdditionalLightsWorldToShadow[((x_3881 + 1i) / 4i)][((x_3884 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_3878.y, x_3878.y, x_3878.y, x_3878.y) * x_3888);
      let x_3890 : i32 = u_xlati84;
      let x_3892 : i32 = u_xlati84;
      let x_3895 : vec4<f32> = x_371.x_AdditionalLightsWorldToShadow[(x_3890 / 4i)][(x_3892 % 4i)];
      let x_3896 : vec3<f32> = vs_INTERP8;
      let x_3899 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_3895 * vec4<f32>(x_3896.x, x_3896.x, x_3896.x, x_3896.x)) + x_3899);
      let x_3901 : i32 = u_xlati84;
      let x_3904 : i32 = u_xlati84;
      let x_3908 : vec4<f32> = x_371.x_AdditionalLightsWorldToShadow[((x_3901 + 2i) / 4i)][((x_3904 + 2i) % 4i)];
      let x_3909 : vec3<f32> = vs_INTERP8;
      let x_3912 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_3908 * vec4<f32>(x_3909.z, x_3909.z, x_3909.z, x_3909.z)) + x_3912);
      let x_3914 : vec4<f32> = u_xlat10;
      let x_3915 : i32 = u_xlati84;
      let x_3918 : i32 = u_xlati84;
      let x_3922 : vec4<f32> = x_371.x_AdditionalLightsWorldToShadow[((x_3915 + 3i) / 4i)][((x_3918 + 3i) % 4i)];
      u_xlat10 = (x_3914 + x_3922);
      let x_3924 : vec4<f32> = u_xlat10;
      let x_3926 : vec4<f32> = u_xlat10;
      let x_3928 : vec3<f32> = (vec3<f32>(x_3924.x, x_3924.y, x_3924.z) / vec3<f32>(x_3926.w, x_3926.w, x_3926.w));
      let x_3929 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_3928.x, x_3928.y, x_3928.z, x_3929.w);
      let x_3932 : i32 = u_xlati79;
      let x_3934 : f32 = x_371.x_AdditionalShadowParams[x_3932].y;
      u_xlatb84 = (0.0f < x_3934);
      let x_3936 : bool = u_xlatb84;
      if (x_3936) {
        let x_3939 : i32 = u_xlati79;
        let x_3941 : f32 = x_371.x_AdditionalShadowParams[x_3939].y;
        u_xlatb84 = (1.0f == x_3941);
        let x_3943 : bool = u_xlatb84;
        if (x_3943) {
          let x_3946 : vec4<f32> = u_xlat10;
          let x_3950 : vec4<f32> = x_371.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_3946.x, x_3946.y, x_3946.x, x_3946.y) + x_3950);
          let x_3953 : vec4<f32> = u_xlat11;
          let x_3954 : vec2<f32> = vec2<f32>(x_3953.x, x_3953.y);
          let x_3956 : f32 = u_xlat10.z;
          txVec60 = vec3<f32>(x_3954.x, x_3954.y, x_3956);
          let x_3964 : vec3<f32> = txVec60;
          let x_3966 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3964.xy, x_3964.z);
          u_xlat12.x = x_3966;
          let x_3969 : vec4<f32> = u_xlat11;
          let x_3970 : vec2<f32> = vec2<f32>(x_3969.z, x_3969.w);
          let x_3972 : f32 = u_xlat10.z;
          txVec61 = vec3<f32>(x_3970.x, x_3970.y, x_3972);
          let x_3979 : vec3<f32> = txVec61;
          let x_3981 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3979.xy, x_3979.z);
          u_xlat12.y = x_3981;
          let x_3983 : vec4<f32> = u_xlat10;
          let x_3987 : vec4<f32> = x_371.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_3983.x, x_3983.y, x_3983.x, x_3983.y) + x_3987);
          let x_3990 : vec4<f32> = u_xlat11;
          let x_3991 : vec2<f32> = vec2<f32>(x_3990.x, x_3990.y);
          let x_3993 : f32 = u_xlat10.z;
          txVec62 = vec3<f32>(x_3991.x, x_3991.y, x_3993);
          let x_4000 : vec3<f32> = txVec62;
          let x_4002 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4000.xy, x_4000.z);
          u_xlat12.z = x_4002;
          let x_4005 : vec4<f32> = u_xlat11;
          let x_4006 : vec2<f32> = vec2<f32>(x_4005.z, x_4005.w);
          let x_4008 : f32 = u_xlat10.z;
          txVec63 = vec3<f32>(x_4006.x, x_4006.y, x_4008);
          let x_4015 : vec3<f32> = txVec63;
          let x_4017 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4015.xy, x_4015.z);
          u_xlat12.w = x_4017;
          let x_4019 : vec4<f32> = u_xlat12;
          u_xlat84 = dot(x_4019, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_4023 : i32 = u_xlati79;
          let x_4025 : f32 = x_371.x_AdditionalShadowParams[x_4023].y;
          u_xlatb85 = (2.0f == x_4025);
          let x_4027 : bool = u_xlatb85;
          if (x_4027) {
            let x_4030 : vec4<f32> = u_xlat10;
            let x_4034 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4037 : vec2<f32> = ((vec2<f32>(x_4030.x, x_4030.y) * vec2<f32>(x_4034.z, x_4034.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4038 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_4037.x, x_4037.y, x_4038.z, x_4038.w);
            let x_4040 : vec4<f32> = u_xlat11;
            let x_4042 : vec2<f32> = floor(vec2<f32>(x_4040.x, x_4040.y));
            let x_4043 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_4042.x, x_4042.y, x_4043.z, x_4043.w);
            let x_4045 : vec4<f32> = u_xlat10;
            let x_4048 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4051 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_4045.x, x_4045.y) * vec2<f32>(x_4048.z, x_4048.w)) + -(vec2<f32>(x_4051.x, x_4051.y)));
            let x_4055 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_4055.x, x_4055.x, x_4055.y, x_4055.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4058 : vec4<f32> = u_xlat12;
            let x_4060 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_4058.x, x_4058.x, x_4058.z, x_4058.z) * vec4<f32>(x_4060.x, x_4060.x, x_4060.z, x_4060.z));
            let x_4063 : vec4<f32> = u_xlat13;
            let x_4065 : vec2<f32> = (vec2<f32>(x_4063.y, x_4063.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_4066 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4065.x, x_4066.y, x_4065.y, x_4066.w);
            let x_4068 : vec4<f32> = u_xlat13;
            let x_4071 : vec2<f32> = u_xlat61;
            let x_4073 : vec2<f32> = ((vec2<f32>(x_4068.x, x_4068.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4071));
            let x_4074 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4073.x, x_4073.y, x_4074.z, x_4074.w);
            let x_4076 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_4076) + vec2<f32>(1.0f, 1.0f));
            let x_4079 : vec2<f32> = u_xlat61;
            let x_4080 : vec2<f32> = min(x_4079, vec2<f32>(0.0f, 0.0f));
            let x_4081 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4080.x, x_4080.y, x_4081.z, x_4081.w);
            let x_4083 : vec4<f32> = u_xlat14;
            let x_4086 : vec4<f32> = u_xlat14;
            let x_4089 : vec2<f32> = u_xlat63;
            let x_4090 : vec2<f32> = ((-(vec2<f32>(x_4083.x, x_4083.y)) * vec2<f32>(x_4086.x, x_4086.y)) + x_4089);
            let x_4091 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4090.x, x_4090.y, x_4091.z, x_4091.w);
            let x_4093 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_4093, vec2<f32>(0.0f, 0.0f));
            let x_4095 : vec2<f32> = u_xlat61;
            let x_4097 : vec2<f32> = u_xlat61;
            let x_4099 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_4095) * x_4097) + vec2<f32>(x_4099.y, x_4099.w));
            let x_4102 : vec4<f32> = u_xlat14;
            let x_4104 : vec2<f32> = (vec2<f32>(x_4102.x, x_4102.y) + vec2<f32>(1.0f, 1.0f));
            let x_4105 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4104.x, x_4104.y, x_4105.z, x_4105.w);
            let x_4107 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_4107 + vec2<f32>(1.0f, 1.0f));
            let x_4109 : vec4<f32> = u_xlat13;
            let x_4111 : vec2<f32> = (vec2<f32>(x_4109.x, x_4109.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4112 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4111.x, x_4111.y, x_4112.z, x_4112.w);
            let x_4114 : vec2<f32> = u_xlat63;
            let x_4115 : vec2<f32> = (x_4114 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4116 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4115.x, x_4115.y, x_4116.z, x_4116.w);
            let x_4118 : vec4<f32> = u_xlat14;
            let x_4120 : vec2<f32> = (vec2<f32>(x_4118.x, x_4118.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4121 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4120.x, x_4120.y, x_4121.z, x_4121.w);
            let x_4123 : vec2<f32> = u_xlat61;
            let x_4124 : vec2<f32> = (x_4123 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4125 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4124.x, x_4124.y, x_4125.z, x_4125.w);
            let x_4127 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_4127.y, x_4127.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4131 : f32 = u_xlat14.x;
            u_xlat15.z = x_4131;
            let x_4134 : f32 = u_xlat61.x;
            u_xlat15.w = x_4134;
            let x_4137 : f32 = u_xlat16.x;
            u_xlat13.z = x_4137;
            let x_4140 : f32 = u_xlat12.x;
            u_xlat13.w = x_4140;
            let x_4142 : vec4<f32> = u_xlat13;
            let x_4144 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_4142.z, x_4142.w, x_4142.x, x_4142.z) + vec4<f32>(x_4144.z, x_4144.w, x_4144.x, x_4144.z));
            let x_4148 : f32 = u_xlat15.y;
            u_xlat14.z = x_4148;
            let x_4151 : f32 = u_xlat61.y;
            u_xlat14.w = x_4151;
            let x_4154 : f32 = u_xlat13.y;
            u_xlat16.z = x_4154;
            let x_4157 : f32 = u_xlat12.z;
            u_xlat16.w = x_4157;
            let x_4159 : vec4<f32> = u_xlat14;
            let x_4161 : vec4<f32> = u_xlat16;
            let x_4163 : vec3<f32> = (vec3<f32>(x_4159.z, x_4159.y, x_4159.w) + vec3<f32>(x_4161.z, x_4161.y, x_4161.w));
            let x_4164 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4163.x, x_4163.y, x_4163.z, x_4164.w);
            let x_4166 : vec4<f32> = u_xlat13;
            let x_4168 : vec4<f32> = u_xlat17;
            let x_4170 : vec3<f32> = (vec3<f32>(x_4166.x, x_4166.z, x_4166.w) / vec3<f32>(x_4168.z, x_4168.w, x_4168.y));
            let x_4171 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4170.x, x_4170.y, x_4170.z, x_4171.w);
            let x_4173 : vec4<f32> = u_xlat13;
            let x_4175 : vec3<f32> = (vec3<f32>(x_4173.x, x_4173.y, x_4173.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4176 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4175.x, x_4175.y, x_4175.z, x_4176.w);
            let x_4178 : vec4<f32> = u_xlat16;
            let x_4180 : vec4<f32> = u_xlat12;
            let x_4182 : vec3<f32> = (vec3<f32>(x_4178.z, x_4178.y, x_4178.w) / vec3<f32>(x_4180.x, x_4180.y, x_4180.z));
            let x_4183 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4182.x, x_4182.y, x_4182.z, x_4183.w);
            let x_4185 : vec4<f32> = u_xlat14;
            let x_4187 : vec3<f32> = (vec3<f32>(x_4185.x, x_4185.y, x_4185.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4188 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4187.x, x_4187.y, x_4187.z, x_4188.w);
            let x_4190 : vec4<f32> = u_xlat13;
            let x_4193 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4195 : vec3<f32> = (vec3<f32>(x_4190.y, x_4190.x, x_4190.z) * vec3<f32>(x_4193.x, x_4193.x, x_4193.x));
            let x_4196 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4195.x, x_4195.y, x_4195.z, x_4196.w);
            let x_4198 : vec4<f32> = u_xlat14;
            let x_4201 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4203 : vec3<f32> = (vec3<f32>(x_4198.x, x_4198.y, x_4198.z) * vec3<f32>(x_4201.y, x_4201.y, x_4201.y));
            let x_4204 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4203.x, x_4203.y, x_4203.z, x_4204.w);
            let x_4207 : f32 = u_xlat14.x;
            u_xlat13.w = x_4207;
            let x_4209 : vec4<f32> = u_xlat11;
            let x_4212 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4215 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_4209.x, x_4209.y, x_4209.x, x_4209.y) * vec4<f32>(x_4212.x, x_4212.y, x_4212.x, x_4212.y)) + vec4<f32>(x_4215.y, x_4215.w, x_4215.x, x_4215.w));
            let x_4218 : vec4<f32> = u_xlat11;
            let x_4221 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4224 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_4218.x, x_4218.y) * vec2<f32>(x_4221.x, x_4221.y)) + vec2<f32>(x_4224.z, x_4224.w));
            let x_4228 : f32 = u_xlat13.y;
            u_xlat14.w = x_4228;
            let x_4230 : vec4<f32> = u_xlat14;
            let x_4231 : vec2<f32> = vec2<f32>(x_4230.y, x_4230.z);
            let x_4232 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4232.x, x_4231.x, x_4232.z, x_4231.y);
            let x_4234 : vec4<f32> = u_xlat11;
            let x_4237 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4240 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_4234.x, x_4234.y, x_4234.x, x_4234.y) * vec4<f32>(x_4237.x, x_4237.y, x_4237.x, x_4237.y)) + vec4<f32>(x_4240.x, x_4240.y, x_4240.z, x_4240.y));
            let x_4243 : vec4<f32> = u_xlat11;
            let x_4246 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4249 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_4243.x, x_4243.y, x_4243.x, x_4243.y) * vec4<f32>(x_4246.x, x_4246.y, x_4246.x, x_4246.y)) + vec4<f32>(x_4249.w, x_4249.y, x_4249.w, x_4249.z));
            let x_4252 : vec4<f32> = u_xlat11;
            let x_4255 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4258 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_4252.x, x_4252.y, x_4252.x, x_4252.y) * vec4<f32>(x_4255.x, x_4255.y, x_4255.x, x_4255.y)) + vec4<f32>(x_4258.x, x_4258.w, x_4258.z, x_4258.w));
            let x_4261 : vec4<f32> = u_xlat12;
            let x_4263 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_4261.x, x_4261.x, x_4261.x, x_4261.y) * vec4<f32>(x_4263.z, x_4263.w, x_4263.y, x_4263.z));
            let x_4266 : vec4<f32> = u_xlat12;
            let x_4268 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_4266.y, x_4266.y, x_4266.z, x_4266.z) * x_4268);
            let x_4272 : f32 = u_xlat12.z;
            let x_4274 : f32 = u_xlat17.y;
            u_xlat85 = (x_4272 * x_4274);
            let x_4277 : vec4<f32> = u_xlat15;
            let x_4278 : vec2<f32> = vec2<f32>(x_4277.x, x_4277.y);
            let x_4280 : f32 = u_xlat10.z;
            txVec64 = vec3<f32>(x_4278.x, x_4278.y, x_4280);
            let x_4287 : vec3<f32> = txVec64;
            let x_4289 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4287.xy, x_4287.z);
            u_xlat11.x = x_4289;
            let x_4292 : vec4<f32> = u_xlat15;
            let x_4293 : vec2<f32> = vec2<f32>(x_4292.z, x_4292.w);
            let x_4295 : f32 = u_xlat10.z;
            txVec65 = vec3<f32>(x_4293.x, x_4293.y, x_4295);
            let x_4303 : vec3<f32> = txVec65;
            let x_4305 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4303.xy, x_4303.z);
            u_xlat36 = x_4305;
            let x_4306 : f32 = u_xlat36;
            let x_4308 : f32 = u_xlat18.y;
            u_xlat36 = (x_4306 * x_4308);
            let x_4311 : f32 = u_xlat18.x;
            let x_4313 : f32 = u_xlat11.x;
            let x_4315 : f32 = u_xlat36;
            u_xlat11.x = ((x_4311 * x_4313) + x_4315);
            let x_4319 : vec2<f32> = u_xlat61;
            let x_4321 : f32 = u_xlat10.z;
            txVec66 = vec3<f32>(x_4319.x, x_4319.y, x_4321);
            let x_4328 : vec3<f32> = txVec66;
            let x_4330 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4328.xy, x_4328.z);
            u_xlat36 = x_4330;
            let x_4332 : f32 = u_xlat18.z;
            let x_4333 : f32 = u_xlat36;
            let x_4336 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_4332 * x_4333) + x_4336);
            let x_4340 : vec4<f32> = u_xlat14;
            let x_4341 : vec2<f32> = vec2<f32>(x_4340.x, x_4340.y);
            let x_4343 : f32 = u_xlat10.z;
            txVec67 = vec3<f32>(x_4341.x, x_4341.y, x_4343);
            let x_4350 : vec3<f32> = txVec67;
            let x_4352 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4350.xy, x_4350.z);
            u_xlat36 = x_4352;
            let x_4354 : f32 = u_xlat18.w;
            let x_4355 : f32 = u_xlat36;
            let x_4358 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_4354 * x_4355) + x_4358);
            let x_4362 : vec4<f32> = u_xlat16;
            let x_4363 : vec2<f32> = vec2<f32>(x_4362.x, x_4362.y);
            let x_4365 : f32 = u_xlat10.z;
            txVec68 = vec3<f32>(x_4363.x, x_4363.y, x_4365);
            let x_4372 : vec3<f32> = txVec68;
            let x_4374 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4372.xy, x_4372.z);
            u_xlat36 = x_4374;
            let x_4376 : f32 = u_xlat19.x;
            let x_4377 : f32 = u_xlat36;
            let x_4380 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_4376 * x_4377) + x_4380);
            let x_4384 : vec4<f32> = u_xlat16;
            let x_4385 : vec2<f32> = vec2<f32>(x_4384.z, x_4384.w);
            let x_4387 : f32 = u_xlat10.z;
            txVec69 = vec3<f32>(x_4385.x, x_4385.y, x_4387);
            let x_4394 : vec3<f32> = txVec69;
            let x_4396 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4394.xy, x_4394.z);
            u_xlat36 = x_4396;
            let x_4398 : f32 = u_xlat19.y;
            let x_4399 : f32 = u_xlat36;
            let x_4402 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_4398 * x_4399) + x_4402);
            let x_4406 : vec4<f32> = u_xlat14;
            let x_4407 : vec2<f32> = vec2<f32>(x_4406.z, x_4406.w);
            let x_4409 : f32 = u_xlat10.z;
            txVec70 = vec3<f32>(x_4407.x, x_4407.y, x_4409);
            let x_4416 : vec3<f32> = txVec70;
            let x_4418 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4416.xy, x_4416.z);
            u_xlat36 = x_4418;
            let x_4420 : f32 = u_xlat19.z;
            let x_4421 : f32 = u_xlat36;
            let x_4424 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_4420 * x_4421) + x_4424);
            let x_4428 : vec4<f32> = u_xlat13;
            let x_4429 : vec2<f32> = vec2<f32>(x_4428.x, x_4428.y);
            let x_4431 : f32 = u_xlat10.z;
            txVec71 = vec3<f32>(x_4429.x, x_4429.y, x_4431);
            let x_4438 : vec3<f32> = txVec71;
            let x_4440 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4438.xy, x_4438.z);
            u_xlat36 = x_4440;
            let x_4442 : f32 = u_xlat19.w;
            let x_4443 : f32 = u_xlat36;
            let x_4446 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_4442 * x_4443) + x_4446);
            let x_4450 : vec4<f32> = u_xlat13;
            let x_4451 : vec2<f32> = vec2<f32>(x_4450.z, x_4450.w);
            let x_4453 : f32 = u_xlat10.z;
            txVec72 = vec3<f32>(x_4451.x, x_4451.y, x_4453);
            let x_4460 : vec3<f32> = txVec72;
            let x_4462 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4460.xy, x_4460.z);
            u_xlat36 = x_4462;
            let x_4463 : f32 = u_xlat85;
            let x_4464 : f32 = u_xlat36;
            let x_4467 : f32 = u_xlat11.x;
            u_xlat84 = ((x_4463 * x_4464) + x_4467);
          } else {
            let x_4470 : vec4<f32> = u_xlat10;
            let x_4473 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4476 : vec2<f32> = ((vec2<f32>(x_4470.x, x_4470.y) * vec2<f32>(x_4473.z, x_4473.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4477 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_4476.x, x_4476.y, x_4477.z, x_4477.w);
            let x_4479 : vec4<f32> = u_xlat11;
            let x_4481 : vec2<f32> = floor(vec2<f32>(x_4479.x, x_4479.y));
            let x_4482 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_4481.x, x_4481.y, x_4482.z, x_4482.w);
            let x_4484 : vec4<f32> = u_xlat10;
            let x_4487 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4490 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_4484.x, x_4484.y) * vec2<f32>(x_4487.z, x_4487.w)) + -(vec2<f32>(x_4490.x, x_4490.y)));
            let x_4494 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_4494.x, x_4494.x, x_4494.y, x_4494.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4497 : vec4<f32> = u_xlat12;
            let x_4499 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_4497.x, x_4497.x, x_4497.z, x_4497.z) * vec4<f32>(x_4499.x, x_4499.x, x_4499.z, x_4499.z));
            let x_4502 : vec4<f32> = u_xlat13;
            let x_4504 : vec2<f32> = (vec2<f32>(x_4502.y, x_4502.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_4505 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4505.x, x_4504.x, x_4505.z, x_4504.y);
            let x_4507 : vec4<f32> = u_xlat13;
            let x_4510 : vec2<f32> = u_xlat61;
            let x_4512 : vec2<f32> = ((vec2<f32>(x_4507.x, x_4507.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4510));
            let x_4513 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4512.x, x_4513.y, x_4512.y, x_4513.w);
            let x_4515 : vec2<f32> = u_xlat61;
            let x_4517 : vec2<f32> = (-(x_4515) + vec2<f32>(1.0f, 1.0f));
            let x_4518 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4517.x, x_4517.y, x_4518.z, x_4518.w);
            let x_4520 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_4520, vec2<f32>(0.0f, 0.0f));
            let x_4522 : vec2<f32> = u_xlat63;
            let x_4524 : vec2<f32> = u_xlat63;
            let x_4526 : vec4<f32> = u_xlat13;
            let x_4528 : vec2<f32> = ((-(x_4522) * x_4524) + vec2<f32>(x_4526.x, x_4526.y));
            let x_4529 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4528.x, x_4528.y, x_4529.z, x_4529.w);
            let x_4531 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_4531, vec2<f32>(0.0f, 0.0f));
            let x_4534 : vec2<f32> = u_xlat63;
            let x_4536 : vec2<f32> = u_xlat63;
            let x_4538 : vec4<f32> = u_xlat12;
            let x_4540 : vec2<f32> = ((-(x_4534) * x_4536) + vec2<f32>(x_4538.y, x_4538.w));
            let x_4541 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_4540.x, x_4541.y, x_4540.y);
            let x_4543 : vec4<f32> = u_xlat13;
            let x_4545 : vec2<f32> = (vec2<f32>(x_4543.x, x_4543.y) + vec2<f32>(2.0f, 2.0f));
            let x_4546 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4545.x, x_4545.y, x_4546.z, x_4546.w);
            let x_4548 : vec3<f32> = u_xlat37;
            let x_4550 : vec2<f32> = (vec2<f32>(x_4548.x, x_4548.z) + vec2<f32>(2.0f, 2.0f));
            let x_4551 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4551.x, x_4550.x, x_4551.z, x_4550.y);
            let x_4554 : f32 = u_xlat12.y;
            u_xlat15.z = (x_4554 * 0.08163200318813323975f);
            let x_4557 : vec4<f32> = u_xlat12;
            let x_4559 : vec3<f32> = (vec3<f32>(x_4557.z, x_4557.x, x_4557.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_4560 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4559.x, x_4559.y, x_4559.z, x_4560.w);
            let x_4562 : vec4<f32> = u_xlat13;
            let x_4564 : vec2<f32> = (vec2<f32>(x_4562.x, x_4562.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_4565 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4564.x, x_4564.y, x_4565.z, x_4565.w);
            let x_4568 : f32 = u_xlat16.y;
            u_xlat15.x = x_4568;
            let x_4570 : vec2<f32> = u_xlat61;
            let x_4573 : vec2<f32> = ((vec2<f32>(x_4570.x, x_4570.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4574 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4574.x, x_4573.x, x_4574.z, x_4573.y);
            let x_4576 : vec2<f32> = u_xlat61;
            let x_4579 : vec2<f32> = ((vec2<f32>(x_4576.x, x_4576.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4580 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4579.x, x_4580.y, x_4579.y, x_4580.w);
            let x_4583 : f32 = u_xlat12.x;
            u_xlat13.y = x_4583;
            let x_4586 : f32 = u_xlat14.y;
            u_xlat13.w = x_4586;
            let x_4588 : vec4<f32> = u_xlat13;
            let x_4589 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_4588 + x_4589);
            let x_4591 : vec2<f32> = u_xlat61;
            let x_4594 : vec2<f32> = ((vec2<f32>(x_4591.y, x_4591.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4595 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4595.x, x_4594.x, x_4595.z, x_4594.y);
            let x_4597 : vec2<f32> = u_xlat61;
            let x_4600 : vec2<f32> = ((vec2<f32>(x_4597.y, x_4597.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4601 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4600.x, x_4601.y, x_4600.y, x_4601.w);
            let x_4604 : f32 = u_xlat12.y;
            u_xlat14.y = x_4604;
            let x_4606 : vec4<f32> = u_xlat14;
            let x_4607 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_4606 + x_4607);
            let x_4609 : vec4<f32> = u_xlat13;
            let x_4610 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_4609 / x_4610);
            let x_4612 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_4612 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4614 : vec4<f32> = u_xlat14;
            let x_4615 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_4614 / x_4615);
            let x_4617 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_4617 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4619 : vec4<f32> = u_xlat13;
            let x_4622 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_4619.w, x_4619.x, x_4619.y, x_4619.z) * vec4<f32>(x_4622.x, x_4622.x, x_4622.x, x_4622.x));
            let x_4625 : vec4<f32> = u_xlat14;
            let x_4628 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_4625.x, x_4625.w, x_4625.y, x_4625.z) * vec4<f32>(x_4628.y, x_4628.y, x_4628.y, x_4628.y));
            let x_4631 : vec4<f32> = u_xlat13;
            let x_4632 : vec3<f32> = vec3<f32>(x_4631.y, x_4631.z, x_4631.w);
            let x_4633 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4632.x, x_4633.y, x_4632.y, x_4632.z);
            let x_4636 : f32 = u_xlat14.x;
            u_xlat16.y = x_4636;
            let x_4638 : vec4<f32> = u_xlat11;
            let x_4641 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4644 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_4638.x, x_4638.y, x_4638.x, x_4638.y) * vec4<f32>(x_4641.x, x_4641.y, x_4641.x, x_4641.y)) + vec4<f32>(x_4644.x, x_4644.y, x_4644.z, x_4644.y));
            let x_4647 : vec4<f32> = u_xlat11;
            let x_4650 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4653 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_4647.x, x_4647.y) * vec2<f32>(x_4650.x, x_4650.y)) + vec2<f32>(x_4653.w, x_4653.y));
            let x_4657 : f32 = u_xlat16.y;
            u_xlat13.y = x_4657;
            let x_4660 : f32 = u_xlat14.z;
            u_xlat16.y = x_4660;
            let x_4662 : vec4<f32> = u_xlat11;
            let x_4665 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4668 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_4662.x, x_4662.y, x_4662.x, x_4662.y) * vec4<f32>(x_4665.x, x_4665.y, x_4665.x, x_4665.y)) + vec4<f32>(x_4668.x, x_4668.y, x_4668.z, x_4668.y));
            let x_4671 : vec4<f32> = u_xlat11;
            let x_4674 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4677 : vec4<f32> = u_xlat16;
            let x_4679 : vec2<f32> = ((vec2<f32>(x_4671.x, x_4671.y) * vec2<f32>(x_4674.x, x_4674.y)) + vec2<f32>(x_4677.w, x_4677.y));
            let x_4680 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_4679.x, x_4679.y, x_4680.z, x_4680.w);
            let x_4683 : f32 = u_xlat16.y;
            u_xlat13.z = x_4683;
            let x_4685 : vec4<f32> = u_xlat11;
            let x_4688 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4691 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_4685.x, x_4685.y, x_4685.x, x_4685.y) * vec4<f32>(x_4688.x, x_4688.y, x_4688.x, x_4688.y)) + vec4<f32>(x_4691.x, x_4691.y, x_4691.x, x_4691.z));
            let x_4695 : f32 = u_xlat14.w;
            u_xlat16.y = x_4695;
            let x_4697 : vec4<f32> = u_xlat11;
            let x_4700 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4703 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_4697.x, x_4697.y, x_4697.x, x_4697.y) * vec4<f32>(x_4700.x, x_4700.y, x_4700.x, x_4700.y)) + vec4<f32>(x_4703.x, x_4703.y, x_4703.z, x_4703.y));
            let x_4707 : vec4<f32> = u_xlat11;
            let x_4710 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4713 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_4707.x, x_4707.y) * vec2<f32>(x_4710.x, x_4710.y)) + vec2<f32>(x_4713.w, x_4713.y));
            let x_4717 : f32 = u_xlat16.y;
            u_xlat13.w = x_4717;
            let x_4720 : vec4<f32> = u_xlat11;
            let x_4723 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4726 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_4720.x, x_4720.y) * vec2<f32>(x_4723.x, x_4723.y)) + vec2<f32>(x_4726.x, x_4726.w));
            let x_4729 : vec4<f32> = u_xlat16;
            let x_4730 : vec3<f32> = vec3<f32>(x_4729.x, x_4729.z, x_4729.w);
            let x_4731 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4730.x, x_4731.y, x_4730.y, x_4730.z);
            let x_4733 : vec4<f32> = u_xlat11;
            let x_4736 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4739 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_4733.x, x_4733.y, x_4733.x, x_4733.y) * vec4<f32>(x_4736.x, x_4736.y, x_4736.x, x_4736.y)) + vec4<f32>(x_4739.x, x_4739.y, x_4739.z, x_4739.y));
            let x_4743 : vec4<f32> = u_xlat11;
            let x_4746 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4749 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_4743.x, x_4743.y) * vec2<f32>(x_4746.x, x_4746.y)) + vec2<f32>(x_4749.w, x_4749.y));
            let x_4753 : f32 = u_xlat13.x;
            u_xlat14.x = x_4753;
            let x_4755 : vec4<f32> = u_xlat11;
            let x_4758 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4761 : vec4<f32> = u_xlat14;
            let x_4763 : vec2<f32> = ((vec2<f32>(x_4755.x, x_4755.y) * vec2<f32>(x_4758.x, x_4758.y)) + vec2<f32>(x_4761.x, x_4761.y));
            let x_4764 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_4763.x, x_4763.y, x_4764.z, x_4764.w);
            let x_4767 : vec4<f32> = u_xlat12;
            let x_4769 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_4767.x, x_4767.x, x_4767.x, x_4767.x) * x_4769);
            let x_4772 : vec4<f32> = u_xlat12;
            let x_4774 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_4772.y, x_4772.y, x_4772.y, x_4772.y) * x_4774);
            let x_4777 : vec4<f32> = u_xlat12;
            let x_4779 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_4777.z, x_4777.z, x_4777.z, x_4777.z) * x_4779);
            let x_4781 : vec4<f32> = u_xlat12;
            let x_4783 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_4781.w, x_4781.w, x_4781.w, x_4781.w) * x_4783);
            let x_4786 : vec4<f32> = u_xlat17;
            let x_4787 : vec2<f32> = vec2<f32>(x_4786.x, x_4786.y);
            let x_4789 : f32 = u_xlat10.z;
            txVec73 = vec3<f32>(x_4787.x, x_4787.y, x_4789);
            let x_4796 : vec3<f32> = txVec73;
            let x_4798 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4796.xy, x_4796.z);
            u_xlat85 = x_4798;
            let x_4800 : vec4<f32> = u_xlat17;
            let x_4801 : vec2<f32> = vec2<f32>(x_4800.z, x_4800.w);
            let x_4803 : f32 = u_xlat10.z;
            txVec74 = vec3<f32>(x_4801.x, x_4801.y, x_4803);
            let x_4810 : vec3<f32> = txVec74;
            let x_4812 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4810.xy, x_4810.z);
            u_xlat13.x = x_4812;
            let x_4815 : f32 = u_xlat13.x;
            let x_4817 : f32 = u_xlat22.y;
            u_xlat13.x = (x_4815 * x_4817);
            let x_4821 : f32 = u_xlat22.x;
            let x_4822 : f32 = u_xlat85;
            let x_4825 : f32 = u_xlat13.x;
            u_xlat85 = ((x_4821 * x_4822) + x_4825);
            let x_4828 : vec2<f32> = u_xlat61;
            let x_4830 : f32 = u_xlat10.z;
            txVec75 = vec3<f32>(x_4828.x, x_4828.y, x_4830);
            let x_4837 : vec3<f32> = txVec75;
            let x_4839 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4837.xy, x_4837.z);
            u_xlat61.x = x_4839;
            let x_4842 : f32 = u_xlat22.z;
            let x_4844 : f32 = u_xlat61.x;
            let x_4846 : f32 = u_xlat85;
            u_xlat85 = ((x_4842 * x_4844) + x_4846);
            let x_4849 : vec4<f32> = u_xlat20;
            let x_4850 : vec2<f32> = vec2<f32>(x_4849.x, x_4849.y);
            let x_4852 : f32 = u_xlat10.z;
            txVec76 = vec3<f32>(x_4850.x, x_4850.y, x_4852);
            let x_4859 : vec3<f32> = txVec76;
            let x_4861 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4859.xy, x_4859.z);
            u_xlat61.x = x_4861;
            let x_4864 : f32 = u_xlat22.w;
            let x_4866 : f32 = u_xlat61.x;
            let x_4868 : f32 = u_xlat85;
            u_xlat85 = ((x_4864 * x_4866) + x_4868);
            let x_4871 : vec4<f32> = u_xlat18;
            let x_4872 : vec2<f32> = vec2<f32>(x_4871.x, x_4871.y);
            let x_4874 : f32 = u_xlat10.z;
            txVec77 = vec3<f32>(x_4872.x, x_4872.y, x_4874);
            let x_4881 : vec3<f32> = txVec77;
            let x_4883 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4881.xy, x_4881.z);
            u_xlat61.x = x_4883;
            let x_4886 : f32 = u_xlat23.x;
            let x_4888 : f32 = u_xlat61.x;
            let x_4890 : f32 = u_xlat85;
            u_xlat85 = ((x_4886 * x_4888) + x_4890);
            let x_4893 : vec4<f32> = u_xlat18;
            let x_4894 : vec2<f32> = vec2<f32>(x_4893.z, x_4893.w);
            let x_4896 : f32 = u_xlat10.z;
            txVec78 = vec3<f32>(x_4894.x, x_4894.y, x_4896);
            let x_4903 : vec3<f32> = txVec78;
            let x_4905 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4903.xy, x_4903.z);
            u_xlat61.x = x_4905;
            let x_4908 : f32 = u_xlat23.y;
            let x_4910 : f32 = u_xlat61.x;
            let x_4912 : f32 = u_xlat85;
            u_xlat85 = ((x_4908 * x_4910) + x_4912);
            let x_4915 : vec4<f32> = u_xlat19;
            let x_4916 : vec2<f32> = vec2<f32>(x_4915.x, x_4915.y);
            let x_4918 : f32 = u_xlat10.z;
            txVec79 = vec3<f32>(x_4916.x, x_4916.y, x_4918);
            let x_4925 : vec3<f32> = txVec79;
            let x_4927 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4925.xy, x_4925.z);
            u_xlat61.x = x_4927;
            let x_4930 : f32 = u_xlat23.z;
            let x_4932 : f32 = u_xlat61.x;
            let x_4934 : f32 = u_xlat85;
            u_xlat85 = ((x_4930 * x_4932) + x_4934);
            let x_4937 : vec4<f32> = u_xlat20;
            let x_4938 : vec2<f32> = vec2<f32>(x_4937.z, x_4937.w);
            let x_4940 : f32 = u_xlat10.z;
            txVec80 = vec3<f32>(x_4938.x, x_4938.y, x_4940);
            let x_4947 : vec3<f32> = txVec80;
            let x_4949 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4947.xy, x_4947.z);
            u_xlat61.x = x_4949;
            let x_4952 : f32 = u_xlat23.w;
            let x_4954 : f32 = u_xlat61.x;
            let x_4956 : f32 = u_xlat85;
            u_xlat85 = ((x_4952 * x_4954) + x_4956);
            let x_4959 : vec4<f32> = u_xlat21;
            let x_4960 : vec2<f32> = vec2<f32>(x_4959.x, x_4959.y);
            let x_4962 : f32 = u_xlat10.z;
            txVec81 = vec3<f32>(x_4960.x, x_4960.y, x_4962);
            let x_4969 : vec3<f32> = txVec81;
            let x_4971 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4969.xy, x_4969.z);
            u_xlat61.x = x_4971;
            let x_4974 : f32 = u_xlat24.x;
            let x_4976 : f32 = u_xlat61.x;
            let x_4978 : f32 = u_xlat85;
            u_xlat85 = ((x_4974 * x_4976) + x_4978);
            let x_4981 : vec4<f32> = u_xlat21;
            let x_4982 : vec2<f32> = vec2<f32>(x_4981.z, x_4981.w);
            let x_4984 : f32 = u_xlat10.z;
            txVec82 = vec3<f32>(x_4982.x, x_4982.y, x_4984);
            let x_4991 : vec3<f32> = txVec82;
            let x_4993 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4991.xy, x_4991.z);
            u_xlat61.x = x_4993;
            let x_4996 : f32 = u_xlat24.y;
            let x_4998 : f32 = u_xlat61.x;
            let x_5000 : f32 = u_xlat85;
            u_xlat85 = ((x_4996 * x_4998) + x_5000);
            let x_5003 : vec2<f32> = u_xlat38;
            let x_5005 : f32 = u_xlat10.z;
            txVec83 = vec3<f32>(x_5003.x, x_5003.y, x_5005);
            let x_5012 : vec3<f32> = txVec83;
            let x_5014 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5012.xy, x_5012.z);
            u_xlat61.x = x_5014;
            let x_5017 : f32 = u_xlat24.z;
            let x_5019 : f32 = u_xlat61.x;
            let x_5021 : f32 = u_xlat85;
            u_xlat85 = ((x_5017 * x_5019) + x_5021);
            let x_5024 : vec2<f32> = u_xlat69;
            let x_5026 : f32 = u_xlat10.z;
            txVec84 = vec3<f32>(x_5024.x, x_5024.y, x_5026);
            let x_5033 : vec3<f32> = txVec84;
            let x_5035 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5033.xy, x_5033.z);
            u_xlat61.x = x_5035;
            let x_5038 : f32 = u_xlat24.w;
            let x_5040 : f32 = u_xlat61.x;
            let x_5042 : f32 = u_xlat85;
            u_xlat85 = ((x_5038 * x_5040) + x_5042);
            let x_5045 : vec4<f32> = u_xlat16;
            let x_5046 : vec2<f32> = vec2<f32>(x_5045.x, x_5045.y);
            let x_5048 : f32 = u_xlat10.z;
            txVec85 = vec3<f32>(x_5046.x, x_5046.y, x_5048);
            let x_5055 : vec3<f32> = txVec85;
            let x_5057 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5055.xy, x_5055.z);
            u_xlat61.x = x_5057;
            let x_5060 : f32 = u_xlat12.x;
            let x_5062 : f32 = u_xlat61.x;
            let x_5064 : f32 = u_xlat85;
            u_xlat85 = ((x_5060 * x_5062) + x_5064);
            let x_5067 : vec4<f32> = u_xlat16;
            let x_5068 : vec2<f32> = vec2<f32>(x_5067.z, x_5067.w);
            let x_5070 : f32 = u_xlat10.z;
            txVec86 = vec3<f32>(x_5068.x, x_5068.y, x_5070);
            let x_5077 : vec3<f32> = txVec86;
            let x_5079 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5077.xy, x_5077.z);
            u_xlat61.x = x_5079;
            let x_5082 : f32 = u_xlat12.y;
            let x_5084 : f32 = u_xlat61.x;
            let x_5086 : f32 = u_xlat85;
            u_xlat85 = ((x_5082 * x_5084) + x_5086);
            let x_5089 : vec2<f32> = u_xlat64;
            let x_5091 : f32 = u_xlat10.z;
            txVec87 = vec3<f32>(x_5089.x, x_5089.y, x_5091);
            let x_5098 : vec3<f32> = txVec87;
            let x_5100 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5098.xy, x_5098.z);
            u_xlat61.x = x_5100;
            let x_5103 : f32 = u_xlat12.z;
            let x_5105 : f32 = u_xlat61.x;
            let x_5107 : f32 = u_xlat85;
            u_xlat85 = ((x_5103 * x_5105) + x_5107);
            let x_5110 : vec4<f32> = u_xlat11;
            let x_5111 : vec2<f32> = vec2<f32>(x_5110.x, x_5110.y);
            let x_5113 : f32 = u_xlat10.z;
            txVec88 = vec3<f32>(x_5111.x, x_5111.y, x_5113);
            let x_5120 : vec3<f32> = txVec88;
            let x_5122 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5120.xy, x_5120.z);
            u_xlat11.x = x_5122;
            let x_5125 : f32 = u_xlat12.w;
            let x_5127 : f32 = u_xlat11.x;
            let x_5129 : f32 = u_xlat85;
            u_xlat84 = ((x_5125 * x_5127) + x_5129);
          }
        }
      } else {
        let x_5133 : vec4<f32> = u_xlat10;
        let x_5134 : vec2<f32> = vec2<f32>(x_5133.x, x_5133.y);
        let x_5136 : f32 = u_xlat10.z;
        txVec89 = vec3<f32>(x_5134.x, x_5134.y, x_5136);
        let x_5143 : vec3<f32> = txVec89;
        let x_5145 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5143.xy, x_5143.z);
        u_xlat84 = x_5145;
      }
      let x_5146 : i32 = u_xlati79;
      let x_5148 : f32 = x_371.x_AdditionalShadowParams[x_5146].x;
      u_xlat10.x = (1.0f + -(x_5148));
      let x_5152 : f32 = u_xlat84;
      let x_5153 : i32 = u_xlati79;
      let x_5155 : f32 = x_371.x_AdditionalShadowParams[x_5153].x;
      let x_5158 : f32 = u_xlat10.x;
      u_xlat84 = ((x_5152 * x_5155) + x_5158);
      let x_5161 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_5161);
      let x_5166 : f32 = u_xlat10.z;
      u_xlatb35 = (x_5166 >= 1.0f);
      let x_5168 : bool = u_xlatb35;
      let x_5170 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_5168 | x_5170);
      let x_5174 : bool = u_xlatb10.x;
      let x_5175 : f32 = u_xlat84;
      u_xlat84 = select(x_5175, 1.0f, x_5174);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_5178 : f32 = u_xlat84;
    u_xlat10.x = (-(x_5178) + 1.0f);
    let x_5183 : f32 = u_xlat2.x;
    let x_5185 : f32 = u_xlat10.x;
    let x_5187 : f32 = u_xlat84;
    u_xlat84 = ((x_5183 * x_5185) + x_5187);
    let x_5189 : f32 = u_xlat82;
    let x_5190 : f32 = u_xlat84;
    u_xlat82 = (x_5189 * x_5190);
    let x_5192 : vec4<f32> = u_xlat3;
    let x_5194 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_5192.x, x_5192.y, x_5192.z), vec3<f32>(x_5194.x, x_5194.y, x_5194.z));
    let x_5197 : f32 = u_xlat84;
    u_xlat84 = clamp(x_5197, 0.0f, 1.0f);
    let x_5199 : f32 = u_xlat82;
    let x_5200 : f32 = u_xlat84;
    u_xlat82 = (x_5199 * x_5200);
    let x_5202 : f32 = u_xlat82;
    let x_5204 : i32 = u_xlati79;
    let x_5206 : vec4<f32> = x_3698.x_AdditionalLightsColor[x_5204];
    let x_5208 : vec3<f32> = (vec3<f32>(x_5202, x_5202, x_5202) * vec3<f32>(x_5206.x, x_5206.y, x_5206.z));
    let x_5209 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_5208.x, x_5208.y, x_5208.z, x_5209.w);
    let x_5211 : vec4<f32> = u_xlat8;
    let x_5213 : f32 = u_xlat83;
    let x_5216 : vec3<f32> = u_xlat5;
    let x_5217 : vec3<f32> = ((vec3<f32>(x_5211.x, x_5211.y, x_5211.z) * vec3<f32>(x_5213, x_5213, x_5213)) + x_5216);
    let x_5218 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_5217.x, x_5217.y, x_5217.z, x_5218.w);
    let x_5220 : vec4<f32> = u_xlat8;
    let x_5222 : vec4<f32> = u_xlat8;
    u_xlat79 = dot(vec3<f32>(x_5220.x, x_5220.y, x_5220.z), vec3<f32>(x_5222.x, x_5222.y, x_5222.z));
    let x_5225 : f32 = u_xlat79;
    u_xlat79 = max(x_5225, 1.17549435e-38f);
    let x_5227 : f32 = u_xlat79;
    u_xlat79 = inverseSqrt(x_5227);
    let x_5229 : f32 = u_xlat79;
    let x_5231 : vec4<f32> = u_xlat8;
    let x_5233 : vec3<f32> = (vec3<f32>(x_5229, x_5229, x_5229) * vec3<f32>(x_5231.x, x_5231.y, x_5231.z));
    let x_5234 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_5233.x, x_5233.y, x_5233.z, x_5234.w);
    let x_5236 : vec4<f32> = u_xlat3;
    let x_5238 : vec4<f32> = u_xlat8;
    u_xlat79 = dot(vec3<f32>(x_5236.x, x_5236.y, x_5236.z), vec3<f32>(x_5238.x, x_5238.y, x_5238.z));
    let x_5241 : f32 = u_xlat79;
    u_xlat79 = clamp(x_5241, 0.0f, 1.0f);
    let x_5243 : vec4<f32> = u_xlat9;
    let x_5245 : vec4<f32> = u_xlat8;
    u_xlat82 = dot(vec3<f32>(x_5243.x, x_5243.y, x_5243.z), vec3<f32>(x_5245.x, x_5245.y, x_5245.z));
    let x_5248 : f32 = u_xlat82;
    u_xlat82 = clamp(x_5248, 0.0f, 1.0f);
    let x_5250 : f32 = u_xlat79;
    let x_5251 : f32 = u_xlat79;
    u_xlat79 = (x_5250 * x_5251);
    let x_5253 : f32 = u_xlat79;
    let x_5255 : f32 = u_xlat52.x;
    u_xlat79 = ((x_5253 * x_5255) + 1.00001001358032226562f);
    let x_5258 : f32 = u_xlat82;
    let x_5259 : f32 = u_xlat82;
    u_xlat82 = (x_5258 * x_5259);
    let x_5261 : f32 = u_xlat79;
    let x_5262 : f32 = u_xlat79;
    u_xlat79 = (x_5261 * x_5262);
    let x_5264 : f32 = u_xlat82;
    u_xlat82 = max(x_5264, 0.10000000149011611938f);
    let x_5266 : f32 = u_xlat79;
    let x_5267 : f32 = u_xlat82;
    u_xlat79 = (x_5266 * x_5267);
    let x_5269 : f32 = u_xlat80;
    let x_5270 : f32 = u_xlat79;
    u_xlat79 = (x_5269 * x_5270);
    let x_5272 : f32 = u_xlat78;
    let x_5273 : f32 = u_xlat79;
    u_xlat79 = (x_5272 / x_5273);
    let x_5275 : f32 = u_xlat79;
    let x_5278 : vec3<f32> = u_xlat4;
    let x_5279 : vec3<f32> = ((vec3<f32>(x_5275, x_5275, x_5275) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_5278);
    let x_5280 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_5279.x, x_5279.y, x_5279.z, x_5280.w);
    let x_5282 : vec4<f32> = u_xlat8;
    let x_5284 : vec4<f32> = u_xlat10;
    let x_5287 : vec4<f32> = u_xlat7;
    let x_5289 : vec3<f32> = ((vec3<f32>(x_5282.x, x_5282.y, x_5282.z) * vec3<f32>(x_5284.x, x_5284.y, x_5284.z)) + vec3<f32>(x_5287.x, x_5287.y, x_5287.z));
    let x_5290 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_5289.x, x_5289.y, x_5289.z, x_5290.w);

    continuing {
      let x_5292 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_5292 + bitcast<u32>(1i));
    }
  }
  let x_5294 : vec3<f32> = u_xlat25;
  let x_5295 : vec4<f32> = u_xlat6;
  let x_5298 : vec3<f32> = u_xlat31;
  u_xlat0 = ((x_5294 * vec3<f32>(x_5295.x, x_5295.x, x_5295.x)) + x_5298);
  let x_5300 : vec4<f32> = u_xlat7;
  let x_5302 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_5300.x, x_5300.y, x_5300.z) + x_5302);
  let x_5306 : vec4<f32> = vs_INTERP6;
  let x_5308 : vec3<f32> = u_xlat1;
  let x_5310 : vec3<f32> = u_xlat0;
  let x_5311 : vec3<f32> = ((vec3<f32>(x_5306.w, x_5306.w, x_5306.w) * x_5308) + x_5310);
  let x_5312 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_5311.x, x_5311.y, x_5311.z, x_5312.w);
  let x_5314 : bool = u_xlatb27;
  let x_5315 : f32 = u_xlat76;
  SV_Target0.w = select(1.0f, x_5315, x_5314);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(5) vs_INTERP9_param : vec3<f32>, @location(1) vs_INTERP4_param : vec4<f32>, @location(4) vs_INTERP8_param : vec3<f32>, @location(2) vs_INTERP5_param : vec4<f32>, @location(3) vs_INTERP6_param : vec4<f32>, @location(0) vs_INTERP3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP9 = vs_INTERP9_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP6 = vs_INTERP6_param;
  vs_INTERP3 = vs_INTERP3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


