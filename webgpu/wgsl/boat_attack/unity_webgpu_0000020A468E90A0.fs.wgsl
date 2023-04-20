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

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(10) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_267 : UnityPerMaterial;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat33 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_371 : LightShadows;

var<private> u_xlatb76 : bool;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

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

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

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

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu0 : u32;

var<private> u_xlatu79 : u32;

var<private> u_xlati82 : i32;

var<private> u_xlati79 : i32;

@group(1) @binding(1) var<uniform> x_3673 : AdditionalLights;

var<private> u_xlat82 : f32;

var<private> u_xlat83 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlati84 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlatb84 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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
  var x_3282 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_3815 : f32;
  var x_3827 : f32;
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
  u_xlat25 = (x_1942 * vec3<f32>(x_1943.x, x_1943.x, x_1943.x));
  let x_1953 : vec2<f32> = vs_INTERP0;
  let x_1955 : f32 = x_147.x_GlobalMipBias.x;
  let x_1956 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_1953, x_1955);
  u_xlat3 = x_1956;
  let x_1961 : vec2<f32> = vs_INTERP0;
  let x_1963 : f32 = x_147.x_GlobalMipBias.x;
  let x_1964 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_1961, x_1963);
  u_xlat4 = vec3<f32>(x_1964.x, x_1964.y, x_1964.z);
  let x_1966 : vec4<f32> = u_xlat3;
  let x_1969 : vec3<f32> = (vec3<f32>(x_1966.x, x_1966.y, x_1966.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_1970 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1969.x, x_1969.y, x_1969.z, x_1970.w);
  let x_1972 : vec3<f32> = u_xlat25;
  let x_1973 : vec4<f32> = u_xlat3;
  u_xlat52.x = dot(x_1972, vec3<f32>(x_1973.x, x_1973.y, x_1973.z));
  let x_1978 : f32 = u_xlat52.x;
  u_xlat52.x = (x_1978 + 0.5f);
  let x_1981 : vec2<f32> = u_xlat52;
  let x_1983 : vec3<f32> = u_xlat4;
  let x_1984 : vec3<f32> = (vec3<f32>(x_1981.x, x_1981.x, x_1981.x) * x_1983);
  let x_1985 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1984.x, x_1984.y, x_1984.z, x_1985.w);
  let x_1988 : f32 = u_xlat3.w;
  u_xlat52.x = max(x_1988, 0.00009999999747378752f);
  let x_1991 : vec4<f32> = u_xlat3;
  let x_1993 : vec2<f32> = u_xlat52;
  let x_1995 : vec3<f32> = (vec3<f32>(x_1991.x, x_1991.y, x_1991.z) / vec3<f32>(x_1993.x, x_1993.x, x_1993.x));
  let x_1996 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1995.x, x_1995.y, x_1995.z, x_1996.w);
  let x_1999 : f32 = u_xlat8.x;
  u_xlat8.x = x_1999;
  let x_2002 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_2002, 0.0f, 1.0f);
  let x_2005 : f32 = u_xlat76;
  u_xlat76 = x_2005;
  let x_2006 : f32 = u_xlat76;
  u_xlat76 = clamp(x_2006, 0.0f, 1.0f);
  let x_2008 : vec4<f32> = u_xlat7;
  u_xlat4 = (vec3<f32>(x_2008.x, x_2008.y, x_2008.z) * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_2014 : f32 = u_xlat8.x;
  u_xlat52.x = (-(x_2014) + 1.0f);
  let x_2019 : f32 = u_xlat52.x;
  let x_2021 : f32 = u_xlat52.x;
  u_xlat77 = (x_2019 * x_2021);
  let x_2023 : f32 = u_xlat77;
  u_xlat77 = max(x_2023, 0.0078125f);
  let x_2027 : f32 = u_xlat77;
  let x_2028 : f32 = u_xlat77;
  u_xlat78 = (x_2027 * x_2028);
  let x_2031 : f32 = u_xlat8.x;
  u_xlat79 = (x_2031 + 0.04000002145767211914f);
  let x_2034 : f32 = u_xlat79;
  u_xlat79 = min(x_2034, 1.0f);
  let x_2037 : f32 = u_xlat77;
  u_xlat80 = ((x_2037 * 4.0f) + 2.0f);
  let x_2042 : f32 = vs_INTERP6.w;
  u_xlat6.x = min(x_2042, 1.0f);
  let x_2045 : bool = u_xlatb0;
  if (x_2045) {
    let x_2049 : f32 = x_371.x_MainLightShadowParams.y;
    u_xlatb0 = (x_2049 == 1.0f);
    let x_2051 : bool = u_xlatb0;
    if (x_2051) {
      let x_2055 : vec4<f32> = vs_INTERP3;
      let x_2058 : vec4<f32> = x_371.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_2055.x, x_2055.y, x_2055.x, x_2055.y) + x_2058);
      let x_2061 : vec4<f32> = u_xlat7;
      let x_2062 : vec2<f32> = vec2<f32>(x_2061.x, x_2061.y);
      let x_2064 : f32 = vs_INTERP3.z;
      txVec30 = vec3<f32>(x_2062.x, x_2062.y, x_2064);
      let x_2071 : vec3<f32> = txVec30;
      let x_2073 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2071.xy, x_2071.z);
      u_xlat8.x = x_2073;
      let x_2076 : vec4<f32> = u_xlat7;
      let x_2077 : vec2<f32> = vec2<f32>(x_2076.z, x_2076.w);
      let x_2079 : f32 = vs_INTERP3.z;
      txVec31 = vec3<f32>(x_2077.x, x_2077.y, x_2079);
      let x_2086 : vec3<f32> = txVec31;
      let x_2088 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2086.xy, x_2086.z);
      u_xlat8.y = x_2088;
      let x_2090 : vec4<f32> = vs_INTERP3;
      let x_2093 : vec4<f32> = x_371.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_2090.x, x_2090.y, x_2090.x, x_2090.y) + x_2093);
      let x_2096 : vec4<f32> = u_xlat7;
      let x_2097 : vec2<f32> = vec2<f32>(x_2096.x, x_2096.y);
      let x_2099 : f32 = vs_INTERP3.z;
      txVec32 = vec3<f32>(x_2097.x, x_2097.y, x_2099);
      let x_2106 : vec3<f32> = txVec32;
      let x_2108 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2106.xy, x_2106.z);
      u_xlat8.z = x_2108;
      let x_2111 : vec4<f32> = u_xlat7;
      let x_2112 : vec2<f32> = vec2<f32>(x_2111.z, x_2111.w);
      let x_2114 : f32 = vs_INTERP3.z;
      txVec33 = vec3<f32>(x_2112.x, x_2112.y, x_2114);
      let x_2121 : vec3<f32> = txVec33;
      let x_2123 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2121.xy, x_2121.z);
      u_xlat8.w = x_2123;
      let x_2125 : vec4<f32> = u_xlat8;
      u_xlat0.x = dot(x_2125, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_2131 : f32 = x_371.x_MainLightShadowParams.y;
      u_xlatb31 = (x_2131 == 2.0f);
      let x_2133 : bool = u_xlatb31;
      if (x_2133) {
        let x_2137 : vec4<f32> = vs_INTERP3;
        let x_2140 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2143 : vec2<f32> = ((vec2<f32>(x_2137.x, x_2137.y) * vec2<f32>(x_2140.z, x_2140.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2144 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2143.x, x_2143.y, x_2144.z);
        let x_2146 : vec3<f32> = u_xlat31;
        let x_2148 : vec2<f32> = floor(vec2<f32>(x_2146.x, x_2146.y));
        let x_2149 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2148.x, x_2148.y, x_2149.z);
        let x_2151 : vec4<f32> = vs_INTERP3;
        let x_2154 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2157 : vec3<f32> = u_xlat31;
        let x_2160 : vec2<f32> = ((vec2<f32>(x_2151.x, x_2151.y) * vec2<f32>(x_2154.z, x_2154.w)) + -(vec2<f32>(x_2157.x, x_2157.y)));
        let x_2161 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2160.x, x_2160.y, x_2161.z, x_2161.w);
        let x_2163 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_2163.x, x_2163.x, x_2163.y, x_2163.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2166 : vec4<f32> = u_xlat8;
        let x_2168 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2166.x, x_2166.x, x_2166.z, x_2166.z) * vec4<f32>(x_2168.x, x_2168.x, x_2168.z, x_2168.z));
        let x_2172 : vec4<f32> = u_xlat9;
        u_xlat57 = (vec2<f32>(x_2172.y, x_2172.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_2175 : vec4<f32> = u_xlat9;
        let x_2178 : vec4<f32> = u_xlat7;
        let x_2181 : vec2<f32> = ((vec2<f32>(x_2175.x, x_2175.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2178.x, x_2178.y)));
        let x_2182 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2181.x, x_2182.y, x_2181.y, x_2182.w);
        let x_2184 : vec4<f32> = u_xlat7;
        let x_2187 : vec2<f32> = (-(vec2<f32>(x_2184.x, x_2184.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2188 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2187.x, x_2187.y, x_2188.z, x_2188.w);
        let x_2191 : vec4<f32> = u_xlat7;
        u_xlat59 = min(vec2<f32>(x_2191.x, x_2191.y), vec2<f32>(0.0f, 0.0f));
        let x_2194 : vec2<f32> = u_xlat59;
        let x_2196 : vec2<f32> = u_xlat59;
        let x_2198 : vec4<f32> = u_xlat9;
        u_xlat59 = ((-(x_2194) * x_2196) + vec2<f32>(x_2198.x, x_2198.y));
        let x_2201 : vec4<f32> = u_xlat7;
        let x_2203 : vec2<f32> = max(vec2<f32>(x_2201.x, x_2201.y), vec2<f32>(0.0f, 0.0f));
        let x_2204 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2203.x, x_2203.y, x_2204.z, x_2204.w);
        let x_2206 : vec4<f32> = u_xlat7;
        let x_2209 : vec4<f32> = u_xlat7;
        let x_2212 : vec4<f32> = u_xlat8;
        let x_2214 : vec2<f32> = ((-(vec2<f32>(x_2206.x, x_2206.y)) * vec2<f32>(x_2209.x, x_2209.y)) + vec2<f32>(x_2212.y, x_2212.w));
        let x_2215 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2214.x, x_2214.y, x_2215.z, x_2215.w);
        let x_2217 : vec2<f32> = u_xlat59;
        u_xlat59 = (x_2217 + vec2<f32>(1.0f, 1.0f));
        let x_2219 : vec4<f32> = u_xlat7;
        let x_2221 : vec2<f32> = (vec2<f32>(x_2219.x, x_2219.y) + vec2<f32>(1.0f, 1.0f));
        let x_2222 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2221.x, x_2221.y, x_2222.z, x_2222.w);
        let x_2224 : vec4<f32> = u_xlat8;
        let x_2226 : vec2<f32> = (vec2<f32>(x_2224.x, x_2224.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2227 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2226.x, x_2226.y, x_2227.z, x_2227.w);
        let x_2229 : vec4<f32> = u_xlat9;
        let x_2231 : vec2<f32> = (vec2<f32>(x_2229.x, x_2229.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2232 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2231.x, x_2231.y, x_2232.z, x_2232.w);
        let x_2234 : vec2<f32> = u_xlat59;
        let x_2235 : vec2<f32> = (x_2234 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2236 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2235.x, x_2235.y, x_2236.z, x_2236.w);
        let x_2238 : vec4<f32> = u_xlat7;
        let x_2240 : vec2<f32> = (vec2<f32>(x_2238.x, x_2238.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2241 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2240.x, x_2240.y, x_2241.z, x_2241.w);
        let x_2243 : vec4<f32> = u_xlat8;
        let x_2245 : vec2<f32> = (vec2<f32>(x_2243.y, x_2243.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2246 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2245.x, x_2245.y, x_2246.z, x_2246.w);
        let x_2249 : f32 = u_xlat9.x;
        u_xlat10.z = x_2249;
        let x_2252 : f32 = u_xlat7.x;
        u_xlat10.w = x_2252;
        let x_2255 : f32 = u_xlat12.x;
        u_xlat11.z = x_2255;
        let x_2258 : f32 = u_xlat57.x;
        u_xlat11.w = x_2258;
        let x_2260 : vec4<f32> = u_xlat10;
        let x_2262 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_2260.z, x_2260.w, x_2260.x, x_2260.z) + vec4<f32>(x_2262.z, x_2262.w, x_2262.x, x_2262.z));
        let x_2266 : f32 = u_xlat10.y;
        u_xlat9.z = x_2266;
        let x_2269 : f32 = u_xlat7.y;
        u_xlat9.w = x_2269;
        let x_2272 : f32 = u_xlat11.y;
        u_xlat12.z = x_2272;
        let x_2275 : f32 = u_xlat57.y;
        u_xlat12.w = x_2275;
        let x_2277 : vec4<f32> = u_xlat9;
        let x_2279 : vec4<f32> = u_xlat12;
        let x_2281 : vec3<f32> = (vec3<f32>(x_2277.z, x_2277.y, x_2277.w) + vec3<f32>(x_2279.z, x_2279.y, x_2279.w));
        let x_2282 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2281.x, x_2281.y, x_2281.z, x_2282.w);
        let x_2284 : vec4<f32> = u_xlat11;
        let x_2286 : vec4<f32> = u_xlat8;
        let x_2288 : vec3<f32> = (vec3<f32>(x_2284.x, x_2284.z, x_2284.w) / vec3<f32>(x_2286.z, x_2286.w, x_2286.y));
        let x_2289 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2288.x, x_2288.y, x_2288.z, x_2289.w);
        let x_2291 : vec4<f32> = u_xlat9;
        let x_2293 : vec3<f32> = (vec3<f32>(x_2291.x, x_2291.y, x_2291.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2294 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2293.x, x_2293.y, x_2293.z, x_2294.w);
        let x_2296 : vec4<f32> = u_xlat12;
        let x_2298 : vec4<f32> = u_xlat7;
        let x_2300 : vec3<f32> = (vec3<f32>(x_2296.z, x_2296.y, x_2296.w) / vec3<f32>(x_2298.x, x_2298.y, x_2298.z));
        let x_2301 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2300.x, x_2300.y, x_2300.z, x_2301.w);
        let x_2303 : vec4<f32> = u_xlat10;
        let x_2305 : vec3<f32> = (vec3<f32>(x_2303.x, x_2303.y, x_2303.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2306 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2305.x, x_2305.y, x_2305.z, x_2306.w);
        let x_2308 : vec4<f32> = u_xlat9;
        let x_2311 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2313 : vec3<f32> = (vec3<f32>(x_2308.y, x_2308.x, x_2308.z) * vec3<f32>(x_2311.x, x_2311.x, x_2311.x));
        let x_2314 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2313.x, x_2313.y, x_2313.z, x_2314.w);
        let x_2316 : vec4<f32> = u_xlat10;
        let x_2319 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2321 : vec3<f32> = (vec3<f32>(x_2316.x, x_2316.y, x_2316.z) * vec3<f32>(x_2319.y, x_2319.y, x_2319.y));
        let x_2322 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2321.x, x_2321.y, x_2321.z, x_2322.w);
        let x_2325 : f32 = u_xlat10.x;
        u_xlat9.w = x_2325;
        let x_2327 : vec3<f32> = u_xlat31;
        let x_2330 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2333 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_2327.x, x_2327.y, x_2327.x, x_2327.y) * vec4<f32>(x_2330.x, x_2330.y, x_2330.x, x_2330.y)) + vec4<f32>(x_2333.y, x_2333.w, x_2333.x, x_2333.w));
        let x_2336 : vec3<f32> = u_xlat31;
        let x_2339 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2342 : vec4<f32> = u_xlat9;
        let x_2344 : vec2<f32> = ((vec2<f32>(x_2336.x, x_2336.y) * vec2<f32>(x_2339.x, x_2339.y)) + vec2<f32>(x_2342.z, x_2342.w));
        let x_2345 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2344.x, x_2344.y, x_2345.z, x_2345.w);
        let x_2348 : f32 = u_xlat9.y;
        u_xlat10.w = x_2348;
        let x_2350 : vec4<f32> = u_xlat10;
        let x_2351 : vec2<f32> = vec2<f32>(x_2350.y, x_2350.z);
        let x_2352 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2352.x, x_2351.x, x_2352.z, x_2351.y);
        let x_2354 : vec3<f32> = u_xlat31;
        let x_2357 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2360 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_2354.x, x_2354.y, x_2354.x, x_2354.y) * vec4<f32>(x_2357.x, x_2357.y, x_2357.x, x_2357.y)) + vec4<f32>(x_2360.x, x_2360.y, x_2360.z, x_2360.y));
        let x_2363 : vec3<f32> = u_xlat31;
        let x_2366 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2369 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_2363.x, x_2363.y, x_2363.x, x_2363.y) * vec4<f32>(x_2366.x, x_2366.y, x_2366.x, x_2366.y)) + vec4<f32>(x_2369.w, x_2369.y, x_2369.w, x_2369.z));
        let x_2372 : vec3<f32> = u_xlat31;
        let x_2375 : vec4<f32> = x_371.x_MainLightShadowmapSize;
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
        u_xlat31.x = (x_2391 * x_2393);
        let x_2397 : vec4<f32> = u_xlat11;
        let x_2398 : vec2<f32> = vec2<f32>(x_2397.x, x_2397.y);
        let x_2400 : f32 = vs_INTERP3.z;
        txVec34 = vec3<f32>(x_2398.x, x_2398.y, x_2400);
        let x_2408 : vec3<f32> = txVec34;
        let x_2410 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2408.xy, x_2408.z);
        u_xlat56 = x_2410;
        let x_2412 : vec4<f32> = u_xlat11;
        let x_2413 : vec2<f32> = vec2<f32>(x_2412.z, x_2412.w);
        let x_2415 : f32 = vs_INTERP3.z;
        txVec35 = vec3<f32>(x_2413.x, x_2413.y, x_2415);
        let x_2423 : vec3<f32> = txVec35;
        let x_2425 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2423.xy, x_2423.z);
        u_xlat81 = x_2425;
        let x_2426 : f32 = u_xlat81;
        let x_2428 : f32 = u_xlat14.y;
        u_xlat81 = (x_2426 * x_2428);
        let x_2431 : f32 = u_xlat14.x;
        let x_2432 : f32 = u_xlat56;
        let x_2434 : f32 = u_xlat81;
        u_xlat56 = ((x_2431 * x_2432) + x_2434);
        let x_2437 : vec4<f32> = u_xlat12;
        let x_2438 : vec2<f32> = vec2<f32>(x_2437.x, x_2437.y);
        let x_2440 : f32 = vs_INTERP3.z;
        txVec36 = vec3<f32>(x_2438.x, x_2438.y, x_2440);
        let x_2447 : vec3<f32> = txVec36;
        let x_2449 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2447.xy, x_2447.z);
        u_xlat81 = x_2449;
        let x_2451 : f32 = u_xlat14.z;
        let x_2452 : f32 = u_xlat81;
        let x_2454 : f32 = u_xlat56;
        u_xlat56 = ((x_2451 * x_2452) + x_2454);
        let x_2457 : vec4<f32> = u_xlat10;
        let x_2458 : vec2<f32> = vec2<f32>(x_2457.x, x_2457.y);
        let x_2460 : f32 = vs_INTERP3.z;
        txVec37 = vec3<f32>(x_2458.x, x_2458.y, x_2460);
        let x_2467 : vec3<f32> = txVec37;
        let x_2469 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2467.xy, x_2467.z);
        u_xlat81 = x_2469;
        let x_2471 : f32 = u_xlat14.w;
        let x_2472 : f32 = u_xlat81;
        let x_2474 : f32 = u_xlat56;
        u_xlat56 = ((x_2471 * x_2472) + x_2474);
        let x_2477 : vec4<f32> = u_xlat13;
        let x_2478 : vec2<f32> = vec2<f32>(x_2477.x, x_2477.y);
        let x_2480 : f32 = vs_INTERP3.z;
        txVec38 = vec3<f32>(x_2478.x, x_2478.y, x_2480);
        let x_2487 : vec3<f32> = txVec38;
        let x_2489 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2487.xy, x_2487.z);
        u_xlat81 = x_2489;
        let x_2491 : f32 = u_xlat15.x;
        let x_2492 : f32 = u_xlat81;
        let x_2494 : f32 = u_xlat56;
        u_xlat56 = ((x_2491 * x_2492) + x_2494);
        let x_2497 : vec4<f32> = u_xlat13;
        let x_2498 : vec2<f32> = vec2<f32>(x_2497.z, x_2497.w);
        let x_2500 : f32 = vs_INTERP3.z;
        txVec39 = vec3<f32>(x_2498.x, x_2498.y, x_2500);
        let x_2507 : vec3<f32> = txVec39;
        let x_2509 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2507.xy, x_2507.z);
        u_xlat81 = x_2509;
        let x_2511 : f32 = u_xlat15.y;
        let x_2512 : f32 = u_xlat81;
        let x_2514 : f32 = u_xlat56;
        u_xlat56 = ((x_2511 * x_2512) + x_2514);
        let x_2517 : vec4<f32> = u_xlat10;
        let x_2518 : vec2<f32> = vec2<f32>(x_2517.z, x_2517.w);
        let x_2520 : f32 = vs_INTERP3.z;
        txVec40 = vec3<f32>(x_2518.x, x_2518.y, x_2520);
        let x_2527 : vec3<f32> = txVec40;
        let x_2529 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2527.xy, x_2527.z);
        u_xlat81 = x_2529;
        let x_2531 : f32 = u_xlat15.z;
        let x_2532 : f32 = u_xlat81;
        let x_2534 : f32 = u_xlat56;
        u_xlat56 = ((x_2531 * x_2532) + x_2534);
        let x_2537 : vec4<f32> = u_xlat9;
        let x_2538 : vec2<f32> = vec2<f32>(x_2537.x, x_2537.y);
        let x_2540 : f32 = vs_INTERP3.z;
        txVec41 = vec3<f32>(x_2538.x, x_2538.y, x_2540);
        let x_2547 : vec3<f32> = txVec41;
        let x_2549 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2547.xy, x_2547.z);
        u_xlat81 = x_2549;
        let x_2551 : f32 = u_xlat15.w;
        let x_2552 : f32 = u_xlat81;
        let x_2554 : f32 = u_xlat56;
        u_xlat56 = ((x_2551 * x_2552) + x_2554);
        let x_2557 : vec4<f32> = u_xlat9;
        let x_2558 : vec2<f32> = vec2<f32>(x_2557.z, x_2557.w);
        let x_2560 : f32 = vs_INTERP3.z;
        txVec42 = vec3<f32>(x_2558.x, x_2558.y, x_2560);
        let x_2567 : vec3<f32> = txVec42;
        let x_2569 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2567.xy, x_2567.z);
        u_xlat81 = x_2569;
        let x_2571 : f32 = u_xlat31.x;
        let x_2572 : f32 = u_xlat81;
        let x_2574 : f32 = u_xlat56;
        u_xlat0.x = ((x_2571 * x_2572) + x_2574);
      } else {
        let x_2578 : vec4<f32> = vs_INTERP3;
        let x_2581 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2584 : vec2<f32> = ((vec2<f32>(x_2578.x, x_2578.y) * vec2<f32>(x_2581.z, x_2581.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2585 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2584.x, x_2584.y, x_2585.z);
        let x_2587 : vec3<f32> = u_xlat31;
        let x_2589 : vec2<f32> = floor(vec2<f32>(x_2587.x, x_2587.y));
        let x_2590 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2589.x, x_2589.y, x_2590.z);
        let x_2592 : vec4<f32> = vs_INTERP3;
        let x_2595 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2598 : vec3<f32> = u_xlat31;
        let x_2601 : vec2<f32> = ((vec2<f32>(x_2592.x, x_2592.y) * vec2<f32>(x_2595.z, x_2595.w)) + -(vec2<f32>(x_2598.x, x_2598.y)));
        let x_2602 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2601.x, x_2601.y, x_2602.z, x_2602.w);
        let x_2604 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_2604.x, x_2604.x, x_2604.y, x_2604.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2607 : vec4<f32> = u_xlat8;
        let x_2609 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2607.x, x_2607.x, x_2607.z, x_2607.z) * vec4<f32>(x_2609.x, x_2609.x, x_2609.z, x_2609.z));
        let x_2612 : vec4<f32> = u_xlat9;
        let x_2614 : vec2<f32> = (vec2<f32>(x_2612.y, x_2612.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_2615 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2615.x, x_2614.x, x_2615.z, x_2614.y);
        let x_2617 : vec4<f32> = u_xlat9;
        let x_2620 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_2617.x, x_2617.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2620.x, x_2620.y)));
        let x_2624 : vec4<f32> = u_xlat7;
        let x_2627 : vec2<f32> = (-(vec2<f32>(x_2624.x, x_2624.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2628 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2627.x, x_2628.y, x_2627.y, x_2628.w);
        let x_2630 : vec4<f32> = u_xlat7;
        let x_2632 : vec2<f32> = min(vec2<f32>(x_2630.x, x_2630.y), vec2<f32>(0.0f, 0.0f));
        let x_2633 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2632.x, x_2632.y, x_2633.z, x_2633.w);
        let x_2635 : vec4<f32> = u_xlat9;
        let x_2638 : vec4<f32> = u_xlat9;
        let x_2641 : vec4<f32> = u_xlat8;
        let x_2643 : vec2<f32> = ((-(vec2<f32>(x_2635.x, x_2635.y)) * vec2<f32>(x_2638.x, x_2638.y)) + vec2<f32>(x_2641.x, x_2641.z));
        let x_2644 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2643.x, x_2644.y, x_2643.y, x_2644.w);
        let x_2646 : vec4<f32> = u_xlat7;
        let x_2648 : vec2<f32> = max(vec2<f32>(x_2646.x, x_2646.y), vec2<f32>(0.0f, 0.0f));
        let x_2649 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2648.x, x_2648.y, x_2649.z, x_2649.w);
        let x_2651 : vec4<f32> = u_xlat9;
        let x_2654 : vec4<f32> = u_xlat9;
        let x_2657 : vec4<f32> = u_xlat8;
        let x_2659 : vec2<f32> = ((-(vec2<f32>(x_2651.x, x_2651.y)) * vec2<f32>(x_2654.x, x_2654.y)) + vec2<f32>(x_2657.y, x_2657.w));
        let x_2660 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2660.x, x_2659.x, x_2660.z, x_2659.y);
        let x_2662 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_2662 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_2665 : f32 = u_xlat8.y;
        u_xlat9.z = (x_2665 * 0.08163200318813323975f);
        let x_2668 : vec2<f32> = u_xlat57;
        let x_2670 : vec2<f32> = (vec2<f32>(x_2668.y, x_2668.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2671 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2670.x, x_2670.y, x_2671.z, x_2671.w);
        let x_2673 : vec4<f32> = u_xlat8;
        u_xlat57 = (vec2<f32>(x_2673.x, x_2673.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2677 : f32 = u_xlat8.w;
        u_xlat11.z = (x_2677 * 0.08163200318813323975f);
        let x_2681 : f32 = u_xlat11.y;
        u_xlat9.x = x_2681;
        let x_2683 : vec4<f32> = u_xlat7;
        let x_2686 : vec2<f32> = ((vec2<f32>(x_2683.x, x_2683.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2687 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2687.x, x_2686.x, x_2687.z, x_2686.y);
        let x_2689 : vec4<f32> = u_xlat7;
        let x_2692 : vec2<f32> = ((vec2<f32>(x_2689.x, x_2689.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2693 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2692.x, x_2693.y, x_2692.y, x_2693.w);
        let x_2696 : f32 = u_xlat57.x;
        u_xlat8.y = x_2696;
        let x_2699 : f32 = u_xlat10.y;
        u_xlat8.w = x_2699;
        let x_2701 : vec4<f32> = u_xlat8;
        let x_2702 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2701 + x_2702);
        let x_2704 : vec4<f32> = u_xlat7;
        let x_2707 : vec2<f32> = ((vec2<f32>(x_2704.y, x_2704.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2708 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2708.x, x_2707.x, x_2708.z, x_2707.y);
        let x_2710 : vec4<f32> = u_xlat7;
        let x_2713 : vec2<f32> = ((vec2<f32>(x_2710.y, x_2710.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2714 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2713.x, x_2714.y, x_2713.y, x_2714.w);
        let x_2717 : f32 = u_xlat57.y;
        u_xlat10.y = x_2717;
        let x_2719 : vec4<f32> = u_xlat10;
        let x_2720 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_2719 + x_2720);
        let x_2722 : vec4<f32> = u_xlat8;
        let x_2723 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_2722 / x_2723);
        let x_2725 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_2725 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2727 : vec4<f32> = u_xlat10;
        let x_2728 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_2727 / x_2728);
        let x_2730 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_2730 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2732 : vec4<f32> = u_xlat8;
        let x_2735 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_2732.w, x_2732.x, x_2732.y, x_2732.z) * vec4<f32>(x_2735.x, x_2735.x, x_2735.x, x_2735.x));
        let x_2738 : vec4<f32> = u_xlat10;
        let x_2741 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_2738.x, x_2738.w, x_2738.y, x_2738.z) * vec4<f32>(x_2741.y, x_2741.y, x_2741.y, x_2741.y));
        let x_2744 : vec4<f32> = u_xlat8;
        let x_2745 : vec3<f32> = vec3<f32>(x_2744.y, x_2744.z, x_2744.w);
        let x_2746 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2745.x, x_2746.y, x_2745.y, x_2745.z);
        let x_2749 : f32 = u_xlat10.x;
        u_xlat11.y = x_2749;
        let x_2751 : vec3<f32> = u_xlat31;
        let x_2754 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2757 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_2751.x, x_2751.y, x_2751.x, x_2751.y) * vec4<f32>(x_2754.x, x_2754.y, x_2754.x, x_2754.y)) + vec4<f32>(x_2757.x, x_2757.y, x_2757.z, x_2757.y));
        let x_2760 : vec3<f32> = u_xlat31;
        let x_2763 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2766 : vec4<f32> = u_xlat11;
        let x_2768 : vec2<f32> = ((vec2<f32>(x_2760.x, x_2760.y) * vec2<f32>(x_2763.x, x_2763.y)) + vec2<f32>(x_2766.w, x_2766.y));
        let x_2769 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2768.x, x_2768.y, x_2769.z, x_2769.w);
        let x_2772 : f32 = u_xlat11.y;
        u_xlat8.y = x_2772;
        let x_2775 : f32 = u_xlat10.z;
        u_xlat11.y = x_2775;
        let x_2777 : vec3<f32> = u_xlat31;
        let x_2780 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2783 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_2777.x, x_2777.y, x_2777.x, x_2777.y) * vec4<f32>(x_2780.x, x_2780.y, x_2780.x, x_2780.y)) + vec4<f32>(x_2783.x, x_2783.y, x_2783.z, x_2783.y));
        let x_2787 : vec3<f32> = u_xlat31;
        let x_2790 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2793 : vec4<f32> = u_xlat11;
        u_xlat63 = ((vec2<f32>(x_2787.x, x_2787.y) * vec2<f32>(x_2790.x, x_2790.y)) + vec2<f32>(x_2793.w, x_2793.y));
        let x_2797 : f32 = u_xlat11.y;
        u_xlat8.z = x_2797;
        let x_2799 : vec3<f32> = u_xlat31;
        let x_2802 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2805 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_2799.x, x_2799.y, x_2799.x, x_2799.y) * vec4<f32>(x_2802.x, x_2802.y, x_2802.x, x_2802.y)) + vec4<f32>(x_2805.x, x_2805.y, x_2805.x, x_2805.z));
        let x_2809 : f32 = u_xlat10.w;
        u_xlat11.y = x_2809;
        let x_2811 : vec3<f32> = u_xlat31;
        let x_2814 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2817 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_2811.x, x_2811.y, x_2811.x, x_2811.y) * vec4<f32>(x_2814.x, x_2814.y, x_2814.x, x_2814.y)) + vec4<f32>(x_2817.x, x_2817.y, x_2817.z, x_2817.y));
        let x_2820 : vec3<f32> = u_xlat31;
        let x_2823 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2826 : vec4<f32> = u_xlat11;
        let x_2828 : vec2<f32> = ((vec2<f32>(x_2820.x, x_2820.y) * vec2<f32>(x_2823.x, x_2823.y)) + vec2<f32>(x_2826.w, x_2826.y));
        let x_2829 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2828.x, x_2828.y, x_2829.z);
        let x_2832 : f32 = u_xlat11.y;
        u_xlat8.w = x_2832;
        let x_2834 : vec3<f32> = u_xlat31;
        let x_2837 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2840 : vec4<f32> = u_xlat8;
        let x_2842 : vec2<f32> = ((vec2<f32>(x_2834.x, x_2834.y) * vec2<f32>(x_2837.x, x_2837.y)) + vec2<f32>(x_2840.x, x_2840.w));
        let x_2843 : vec4<f32> = u_xlat17;
        u_xlat17 = vec4<f32>(x_2842.x, x_2842.y, x_2843.z, x_2843.w);
        let x_2845 : vec4<f32> = u_xlat11;
        let x_2846 : vec3<f32> = vec3<f32>(x_2845.x, x_2845.z, x_2845.w);
        let x_2847 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2846.x, x_2847.y, x_2846.y, x_2846.z);
        let x_2849 : vec3<f32> = u_xlat31;
        let x_2852 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2855 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_2849.x, x_2849.y, x_2849.x, x_2849.y) * vec4<f32>(x_2852.x, x_2852.y, x_2852.x, x_2852.y)) + vec4<f32>(x_2855.x, x_2855.y, x_2855.z, x_2855.y));
        let x_2858 : vec3<f32> = u_xlat31;
        let x_2861 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2864 : vec4<f32> = u_xlat10;
        u_xlat60 = ((vec2<f32>(x_2858.x, x_2858.y) * vec2<f32>(x_2861.x, x_2861.y)) + vec2<f32>(x_2864.w, x_2864.y));
        let x_2868 : f32 = u_xlat8.x;
        u_xlat10.x = x_2868;
        let x_2870 : vec3<f32> = u_xlat31;
        let x_2873 : vec4<f32> = x_371.x_MainLightShadowmapSize;
        let x_2876 : vec4<f32> = u_xlat10;
        let x_2878 : vec2<f32> = ((vec2<f32>(x_2870.x, x_2870.y) * vec2<f32>(x_2873.x, x_2873.y)) + vec2<f32>(x_2876.x, x_2876.y));
        let x_2879 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2878.x, x_2878.y, x_2879.z);
        let x_2881 : vec4<f32> = u_xlat7;
        let x_2883 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_2881.x, x_2881.x, x_2881.x, x_2881.x) * x_2883);
        let x_2885 : vec4<f32> = u_xlat7;
        let x_2887 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_2885.y, x_2885.y, x_2885.y, x_2885.y) * x_2887);
        let x_2889 : vec4<f32> = u_xlat7;
        let x_2891 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_2889.z, x_2889.z, x_2889.z, x_2889.z) * x_2891);
        let x_2893 : vec4<f32> = u_xlat7;
        let x_2895 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_2893.w, x_2893.w, x_2893.w, x_2893.w) * x_2895);
        let x_2898 : vec4<f32> = u_xlat12;
        let x_2899 : vec2<f32> = vec2<f32>(x_2898.x, x_2898.y);
        let x_2901 : f32 = vs_INTERP3.z;
        txVec43 = vec3<f32>(x_2899.x, x_2899.y, x_2901);
        let x_2908 : vec3<f32> = txVec43;
        let x_2910 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2908.xy, x_2908.z);
        u_xlat81 = x_2910;
        let x_2912 : vec4<f32> = u_xlat12;
        let x_2913 : vec2<f32> = vec2<f32>(x_2912.z, x_2912.w);
        let x_2915 : f32 = vs_INTERP3.z;
        txVec44 = vec3<f32>(x_2913.x, x_2913.y, x_2915);
        let x_2922 : vec3<f32> = txVec44;
        let x_2924 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2922.xy, x_2922.z);
        u_xlat8.x = x_2924;
        let x_2927 : f32 = u_xlat8.x;
        let x_2929 : f32 = u_xlat18.y;
        u_xlat8.x = (x_2927 * x_2929);
        let x_2933 : f32 = u_xlat18.x;
        let x_2934 : f32 = u_xlat81;
        let x_2937 : f32 = u_xlat8.x;
        u_xlat81 = ((x_2933 * x_2934) + x_2937);
        let x_2940 : vec4<f32> = u_xlat13;
        let x_2941 : vec2<f32> = vec2<f32>(x_2940.x, x_2940.y);
        let x_2943 : f32 = vs_INTERP3.z;
        txVec45 = vec3<f32>(x_2941.x, x_2941.y, x_2943);
        let x_2950 : vec3<f32> = txVec45;
        let x_2952 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2950.xy, x_2950.z);
        u_xlat8.x = x_2952;
        let x_2955 : f32 = u_xlat18.z;
        let x_2957 : f32 = u_xlat8.x;
        let x_2959 : f32 = u_xlat81;
        u_xlat81 = ((x_2955 * x_2957) + x_2959);
        let x_2962 : vec4<f32> = u_xlat15;
        let x_2963 : vec2<f32> = vec2<f32>(x_2962.x, x_2962.y);
        let x_2965 : f32 = vs_INTERP3.z;
        txVec46 = vec3<f32>(x_2963.x, x_2963.y, x_2965);
        let x_2972 : vec3<f32> = txVec46;
        let x_2974 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2972.xy, x_2972.z);
        u_xlat8.x = x_2974;
        let x_2977 : f32 = u_xlat18.w;
        let x_2979 : f32 = u_xlat8.x;
        let x_2981 : f32 = u_xlat81;
        u_xlat81 = ((x_2977 * x_2979) + x_2981);
        let x_2984 : vec4<f32> = u_xlat14;
        let x_2985 : vec2<f32> = vec2<f32>(x_2984.x, x_2984.y);
        let x_2987 : f32 = vs_INTERP3.z;
        txVec47 = vec3<f32>(x_2985.x, x_2985.y, x_2987);
        let x_2994 : vec3<f32> = txVec47;
        let x_2996 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2994.xy, x_2994.z);
        u_xlat8.x = x_2996;
        let x_2999 : f32 = u_xlat19.x;
        let x_3001 : f32 = u_xlat8.x;
        let x_3003 : f32 = u_xlat81;
        u_xlat81 = ((x_2999 * x_3001) + x_3003);
        let x_3006 : vec4<f32> = u_xlat14;
        let x_3007 : vec2<f32> = vec2<f32>(x_3006.z, x_3006.w);
        let x_3009 : f32 = vs_INTERP3.z;
        txVec48 = vec3<f32>(x_3007.x, x_3007.y, x_3009);
        let x_3016 : vec3<f32> = txVec48;
        let x_3018 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3016.xy, x_3016.z);
        u_xlat8.x = x_3018;
        let x_3021 : f32 = u_xlat19.y;
        let x_3023 : f32 = u_xlat8.x;
        let x_3025 : f32 = u_xlat81;
        u_xlat81 = ((x_3021 * x_3023) + x_3025);
        let x_3028 : vec2<f32> = u_xlat63;
        let x_3030 : f32 = vs_INTERP3.z;
        txVec49 = vec3<f32>(x_3028.x, x_3028.y, x_3030);
        let x_3037 : vec3<f32> = txVec49;
        let x_3039 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3037.xy, x_3037.z);
        u_xlat8.x = x_3039;
        let x_3042 : f32 = u_xlat19.z;
        let x_3044 : f32 = u_xlat8.x;
        let x_3046 : f32 = u_xlat81;
        u_xlat81 = ((x_3042 * x_3044) + x_3046);
        let x_3049 : vec4<f32> = u_xlat15;
        let x_3050 : vec2<f32> = vec2<f32>(x_3049.z, x_3049.w);
        let x_3052 : f32 = vs_INTERP3.z;
        txVec50 = vec3<f32>(x_3050.x, x_3050.y, x_3052);
        let x_3059 : vec3<f32> = txVec50;
        let x_3061 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3059.xy, x_3059.z);
        u_xlat8.x = x_3061;
        let x_3064 : f32 = u_xlat19.w;
        let x_3066 : f32 = u_xlat8.x;
        let x_3068 : f32 = u_xlat81;
        u_xlat81 = ((x_3064 * x_3066) + x_3068);
        let x_3071 : vec4<f32> = u_xlat16;
        let x_3072 : vec2<f32> = vec2<f32>(x_3071.x, x_3071.y);
        let x_3074 : f32 = vs_INTERP3.z;
        txVec51 = vec3<f32>(x_3072.x, x_3072.y, x_3074);
        let x_3081 : vec3<f32> = txVec51;
        let x_3083 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3081.xy, x_3081.z);
        u_xlat8.x = x_3083;
        let x_3086 : f32 = u_xlat20.x;
        let x_3088 : f32 = u_xlat8.x;
        let x_3090 : f32 = u_xlat81;
        u_xlat81 = ((x_3086 * x_3088) + x_3090);
        let x_3093 : vec4<f32> = u_xlat16;
        let x_3094 : vec2<f32> = vec2<f32>(x_3093.z, x_3093.w);
        let x_3096 : f32 = vs_INTERP3.z;
        txVec52 = vec3<f32>(x_3094.x, x_3094.y, x_3096);
        let x_3103 : vec3<f32> = txVec52;
        let x_3105 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3103.xy, x_3103.z);
        u_xlat8.x = x_3105;
        let x_3108 : f32 = u_xlat20.y;
        let x_3110 : f32 = u_xlat8.x;
        let x_3112 : f32 = u_xlat81;
        u_xlat81 = ((x_3108 * x_3110) + x_3112);
        let x_3115 : vec3<f32> = u_xlat33;
        let x_3116 : vec2<f32> = vec2<f32>(x_3115.x, x_3115.y);
        let x_3118 : f32 = vs_INTERP3.z;
        txVec53 = vec3<f32>(x_3116.x, x_3116.y, x_3118);
        let x_3125 : vec3<f32> = txVec53;
        let x_3127 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3125.xy, x_3125.z);
        u_xlat8.x = x_3127;
        let x_3130 : f32 = u_xlat20.z;
        let x_3132 : f32 = u_xlat8.x;
        let x_3134 : f32 = u_xlat81;
        u_xlat81 = ((x_3130 * x_3132) + x_3134);
        let x_3137 : vec4<f32> = u_xlat17;
        let x_3138 : vec2<f32> = vec2<f32>(x_3137.x, x_3137.y);
        let x_3140 : f32 = vs_INTERP3.z;
        txVec54 = vec3<f32>(x_3138.x, x_3138.y, x_3140);
        let x_3147 : vec3<f32> = txVec54;
        let x_3149 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3147.xy, x_3147.z);
        u_xlat8.x = x_3149;
        let x_3152 : f32 = u_xlat20.w;
        let x_3154 : f32 = u_xlat8.x;
        let x_3156 : f32 = u_xlat81;
        u_xlat81 = ((x_3152 * x_3154) + x_3156);
        let x_3159 : vec4<f32> = u_xlat11;
        let x_3160 : vec2<f32> = vec2<f32>(x_3159.x, x_3159.y);
        let x_3162 : f32 = vs_INTERP3.z;
        txVec55 = vec3<f32>(x_3160.x, x_3160.y, x_3162);
        let x_3169 : vec3<f32> = txVec55;
        let x_3171 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3169.xy, x_3169.z);
        u_xlat8.x = x_3171;
        let x_3174 : f32 = u_xlat7.x;
        let x_3176 : f32 = u_xlat8.x;
        let x_3178 : f32 = u_xlat81;
        u_xlat81 = ((x_3174 * x_3176) + x_3178);
        let x_3181 : vec4<f32> = u_xlat11;
        let x_3182 : vec2<f32> = vec2<f32>(x_3181.z, x_3181.w);
        let x_3184 : f32 = vs_INTERP3.z;
        txVec56 = vec3<f32>(x_3182.x, x_3182.y, x_3184);
        let x_3191 : vec3<f32> = txVec56;
        let x_3193 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3191.xy, x_3191.z);
        u_xlat7.x = x_3193;
        let x_3196 : f32 = u_xlat7.y;
        let x_3198 : f32 = u_xlat7.x;
        let x_3200 : f32 = u_xlat81;
        u_xlat81 = ((x_3196 * x_3198) + x_3200);
        let x_3203 : vec2<f32> = u_xlat60;
        let x_3205 : f32 = vs_INTERP3.z;
        txVec57 = vec3<f32>(x_3203.x, x_3203.y, x_3205);
        let x_3212 : vec3<f32> = txVec57;
        let x_3214 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3212.xy, x_3212.z);
        u_xlat7.x = x_3214;
        let x_3217 : f32 = u_xlat7.z;
        let x_3219 : f32 = u_xlat7.x;
        let x_3221 : f32 = u_xlat81;
        u_xlat81 = ((x_3217 * x_3219) + x_3221);
        let x_3224 : vec3<f32> = u_xlat31;
        let x_3225 : vec2<f32> = vec2<f32>(x_3224.x, x_3224.y);
        let x_3227 : f32 = vs_INTERP3.z;
        txVec58 = vec3<f32>(x_3225.x, x_3225.y, x_3227);
        let x_3234 : vec3<f32> = txVec58;
        let x_3236 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3234.xy, x_3234.z);
        u_xlat31.x = x_3236;
        let x_3239 : f32 = u_xlat7.w;
        let x_3241 : f32 = u_xlat31.x;
        let x_3243 : f32 = u_xlat81;
        u_xlat0.x = ((x_3239 * x_3241) + x_3243);
      }
    }
  } else {
    let x_3248 : vec4<f32> = vs_INTERP3;
    let x_3249 : vec2<f32> = vec2<f32>(x_3248.x, x_3248.y);
    let x_3251 : f32 = vs_INTERP3.z;
    txVec59 = vec3<f32>(x_3249.x, x_3249.y, x_3251);
    let x_3258 : vec3<f32> = txVec59;
    let x_3260 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3258.xy, x_3258.z);
    u_xlat0.x = x_3260;
  }
  let x_3263 : f32 = u_xlat0.x;
  let x_3265 : f32 = x_371.x_MainLightShadowParams.x;
  let x_3268 : f32 = u_xlat2.x;
  u_xlat0.x = ((x_3263 * x_3265) + x_3268);
  let x_3273 : f32 = vs_INTERP3.z;
  u_xlatb2 = (0.0f >= x_3273);
  let x_3276 : f32 = vs_INTERP3.z;
  u_xlatb31 = (x_3276 >= 1.0f);
  let x_3278 : bool = u_xlatb2;
  let x_3279 : bool = u_xlatb31;
  u_xlatb2 = (x_3278 | x_3279);
  let x_3281 : bool = u_xlatb2;
  if (x_3281) {
    x_3282 = 1.0f;
  } else {
    let x_3287 : f32 = u_xlat0.x;
    x_3282 = x_3287;
  }
  let x_3288 : f32 = x_3282;
  u_xlat0.x = x_3288;
  let x_3290 : vec3<f32> = vs_INTERP8;
  let x_3292 : vec3<f32> = x_147.x_WorldSpaceCameraPos;
  u_xlat31 = (x_3290 + -(x_3292));
  let x_3295 : vec3<f32> = u_xlat31;
  let x_3296 : vec3<f32> = u_xlat31;
  u_xlat2.x = dot(x_3295, x_3296);
  let x_3300 : f32 = u_xlat2.x;
  let x_3302 : f32 = x_371.x_MainLightShadowParams.z;
  let x_3305 : f32 = x_371.x_MainLightShadowParams.w;
  u_xlat31.x = ((x_3300 * x_3302) + x_3305);
  let x_3309 : f32 = u_xlat31.x;
  u_xlat31.x = clamp(x_3309, 0.0f, 1.0f);
  let x_3313 : f32 = u_xlat0.x;
  u_xlat56 = (-(x_3313) + 1.0f);
  let x_3317 : f32 = u_xlat31.x;
  let x_3318 : f32 = u_xlat56;
  let x_3321 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_3317 * x_3318) + x_3321);
  let x_3324 : vec3<f32> = u_xlat5;
  let x_3326 : vec3<f32> = u_xlat25;
  u_xlat31.x = dot(-(x_3324), x_3326);
  let x_3330 : f32 = u_xlat31.x;
  let x_3332 : f32 = u_xlat31.x;
  u_xlat31.x = (x_3330 + x_3332);
  let x_3335 : vec3<f32> = u_xlat25;
  let x_3336 : vec3<f32> = u_xlat31;
  let x_3340 : vec3<f32> = u_xlat5;
  u_xlat31 = ((x_3335 * -(vec3<f32>(x_3336.x, x_3336.x, x_3336.x))) + -(x_3340));
  let x_3343 : vec3<f32> = u_xlat25;
  let x_3344 : vec3<f32> = u_xlat5;
  u_xlat7.x = dot(x_3343, x_3344);
  let x_3348 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_3348, 0.0f, 1.0f);
  let x_3352 : f32 = u_xlat7.x;
  u_xlat7.x = (-(x_3352) + 1.0f);
  let x_3357 : f32 = u_xlat7.x;
  let x_3359 : f32 = u_xlat7.x;
  u_xlat7.x = (x_3357 * x_3359);
  let x_3363 : f32 = u_xlat7.x;
  let x_3365 : f32 = u_xlat7.x;
  u_xlat7.x = (x_3363 * x_3365);
  let x_3370 : f32 = u_xlat52.x;
  u_xlat32 = ((-(x_3370) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_3377 : f32 = u_xlat52.x;
  let x_3378 : f32 = u_xlat32;
  u_xlat52.x = (x_3377 * x_3378);
  let x_3382 : f32 = u_xlat52.x;
  u_xlat52.x = (x_3382 * 6.0f);
  let x_3394 : vec3<f32> = u_xlat31;
  let x_3396 : f32 = u_xlat52.x;
  let x_3397 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_3394, x_3396);
  u_xlat8 = x_3397;
  let x_3399 : f32 = u_xlat8.w;
  u_xlat52.x = (x_3399 + -1.0f);
  let x_3403 : f32 = x_83.unity_SpecCube0_HDR.w;
  let x_3405 : f32 = u_xlat52.x;
  u_xlat52.x = ((x_3403 * x_3405) + 1.0f);
  let x_3410 : f32 = u_xlat52.x;
  u_xlat52.x = max(x_3410, 0.0f);
  let x_3414 : f32 = u_xlat52.x;
  u_xlat52.x = log2(x_3414);
  let x_3418 : f32 = u_xlat52.x;
  let x_3420 : f32 = x_83.unity_SpecCube0_HDR.y;
  u_xlat52.x = (x_3418 * x_3420);
  let x_3424 : f32 = u_xlat52.x;
  u_xlat52.x = exp2(x_3424);
  let x_3428 : f32 = u_xlat52.x;
  let x_3430 : f32 = x_83.unity_SpecCube0_HDR.x;
  u_xlat52.x = (x_3428 * x_3430);
  let x_3433 : vec4<f32> = u_xlat8;
  let x_3435 : vec2<f32> = u_xlat52;
  u_xlat31 = (vec3<f32>(x_3433.x, x_3433.y, x_3433.z) * vec3<f32>(x_3435.x, x_3435.x, x_3435.x));
  let x_3438 : f32 = u_xlat77;
  let x_3440 : f32 = u_xlat77;
  u_xlat52 = ((vec2<f32>(x_3438, x_3438) * vec2<f32>(x_3440, x_3440)) + vec2<f32>(-1.0f, 1.0f));
  let x_3446 : f32 = u_xlat52.y;
  u_xlat77 = (1.0f / x_3446);
  let x_3448 : f32 = u_xlat79;
  u_xlat79 = (x_3448 + -0.03999999910593032837f);
  let x_3452 : f32 = u_xlat7.x;
  let x_3453 : f32 = u_xlat79;
  u_xlat79 = ((x_3452 * x_3453) + 0.03999999910593032837f);
  let x_3457 : f32 = u_xlat77;
  let x_3458 : f32 = u_xlat79;
  u_xlat77 = (x_3457 * x_3458);
  let x_3460 : f32 = u_xlat77;
  let x_3462 : vec3<f32> = u_xlat31;
  u_xlat31 = (vec3<f32>(x_3460, x_3460, x_3460) * x_3462);
  let x_3464 : vec4<f32> = u_xlat3;
  let x_3466 : vec3<f32> = u_xlat4;
  let x_3468 : vec3<f32> = u_xlat31;
  let x_3469 : vec3<f32> = ((vec3<f32>(x_3464.x, x_3464.y, x_3464.z) * x_3466) + x_3468);
  let x_3470 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_3469.x, x_3469.y, x_3469.z, x_3470.w);
  let x_3473 : f32 = u_xlat0.x;
  let x_3475 : f32 = x_83.unity_LightData.z;
  u_xlat0.x = (x_3473 * x_3475);
  let x_3478 : vec3<f32> = u_xlat25;
  let x_3480 : vec4<f32> = x_147.x_MainLightPosition;
  u_xlat77 = dot(x_3478, vec3<f32>(x_3480.x, x_3480.y, x_3480.z));
  let x_3483 : f32 = u_xlat77;
  u_xlat77 = clamp(x_3483, 0.0f, 1.0f);
  let x_3486 : f32 = u_xlat0.x;
  let x_3487 : f32 = u_xlat77;
  u_xlat0.x = (x_3486 * x_3487);
  let x_3490 : vec3<f32> = u_xlat0;
  let x_3493 : vec4<f32> = x_147.x_MainLightColor;
  u_xlat31 = (vec3<f32>(x_3490.x, x_3490.x, x_3490.x) * vec3<f32>(x_3493.x, x_3493.y, x_3493.z));
  let x_3496 : vec3<f32> = u_xlat5;
  let x_3498 : vec4<f32> = x_147.x_MainLightPosition;
  let x_3500 : vec3<f32> = (x_3496 + vec3<f32>(x_3498.x, x_3498.y, x_3498.z));
  let x_3501 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3500.x, x_3500.y, x_3500.z, x_3501.w);
  let x_3503 : vec4<f32> = u_xlat7;
  let x_3505 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_3503.x, x_3503.y, x_3503.z), vec3<f32>(x_3505.x, x_3505.y, x_3505.z));
  let x_3510 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_3510, 1.17549435e-38f);
  let x_3514 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_3514);
  let x_3517 : vec3<f32> = u_xlat0;
  let x_3519 : vec4<f32> = u_xlat7;
  let x_3521 : vec3<f32> = (vec3<f32>(x_3517.x, x_3517.x, x_3517.x) * vec3<f32>(x_3519.x, x_3519.y, x_3519.z));
  let x_3522 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3521.x, x_3521.y, x_3521.z, x_3522.w);
  let x_3524 : vec3<f32> = u_xlat25;
  let x_3525 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_3524, vec3<f32>(x_3525.x, x_3525.y, x_3525.z));
  let x_3530 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_3530, 0.0f, 1.0f);
  let x_3534 : vec4<f32> = x_147.x_MainLightPosition;
  let x_3536 : vec4<f32> = u_xlat7;
  u_xlat77 = dot(vec3<f32>(x_3534.x, x_3534.y, x_3534.z), vec3<f32>(x_3536.x, x_3536.y, x_3536.z));
  let x_3539 : f32 = u_xlat77;
  u_xlat77 = clamp(x_3539, 0.0f, 1.0f);
  let x_3542 : f32 = u_xlat0.x;
  let x_3544 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3542 * x_3544);
  let x_3548 : f32 = u_xlat0.x;
  let x_3550 : f32 = u_xlat52.x;
  u_xlat0.x = ((x_3548 * x_3550) + 1.00001001358032226562f);
  let x_3555 : f32 = u_xlat77;
  let x_3556 : f32 = u_xlat77;
  u_xlat77 = (x_3555 * x_3556);
  let x_3559 : f32 = u_xlat0.x;
  let x_3561 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3559 * x_3561);
  let x_3564 : f32 = u_xlat77;
  u_xlat77 = max(x_3564, 0.10000000149011611938f);
  let x_3568 : f32 = u_xlat0.x;
  let x_3569 : f32 = u_xlat77;
  u_xlat0.x = (x_3568 * x_3569);
  let x_3572 : f32 = u_xlat80;
  let x_3574 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3572 * x_3574);
  let x_3577 : f32 = u_xlat78;
  let x_3579 : f32 = u_xlat0.x;
  u_xlat0.x = (x_3577 / x_3579);
  let x_3582 : vec3<f32> = u_xlat0;
  let x_3586 : vec3<f32> = u_xlat4;
  let x_3587 : vec3<f32> = ((vec3<f32>(x_3582.x, x_3582.x, x_3582.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_3586);
  let x_3588 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3587.x, x_3587.y, x_3587.z, x_3588.w);
  let x_3590 : vec3<f32> = u_xlat31;
  let x_3591 : vec4<f32> = u_xlat7;
  u_xlat31 = (x_3590 * vec3<f32>(x_3591.x, x_3591.y, x_3591.z));
  let x_3596 : f32 = x_147.x_AdditionalLightsCount.x;
  let x_3598 : f32 = x_83.unity_LightData.y;
  u_xlat0.x = min(x_3596, x_3598);
  let x_3603 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_3603));
  let x_3607 : f32 = u_xlat2.x;
  let x_3610 : f32 = x_371.x_AdditionalShadowFadeParams.x;
  let x_3613 : f32 = x_371.x_AdditionalShadowFadeParams.y;
  u_xlat2.x = ((x_3607 * x_3610) + x_3613);
  let x_3617 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_3617, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_3629 : u32 = u_xlatu_loop_1;
    let x_3630 : u32 = u_xlatu0;
    if ((x_3629 < x_3630)) {
    } else {
      break;
    }
    let x_3633 : u32 = u_xlatu_loop_1;
    u_xlatu79 = (x_3633 >> 2u);
    let x_3636 : u32 = u_xlatu_loop_1;
    u_xlati82 = bitcast<i32>((x_3636 & 3u));
    let x_3639 : u32 = u_xlatu79;
    let x_3642 : vec4<f32> = x_83.unity_LightIndices[bitcast<i32>(x_3639)];
    let x_3652 : i32 = u_xlati82;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_3657 : vec4<u32> = indexable[x_3652];
    u_xlat79 = dot(x_3642, bitcast<vec4<f32>>(x_3657));
    let x_3661 : f32 = u_xlat79;
    u_xlati79 = i32(x_3661);
    let x_3663 : vec3<f32> = vs_INTERP8;
    let x_3674 : i32 = u_xlati79;
    let x_3676 : vec4<f32> = x_3673.x_AdditionalLightsPosition[x_3674];
    let x_3679 : i32 = u_xlati79;
    let x_3681 : vec4<f32> = x_3673.x_AdditionalLightsPosition[x_3679];
    let x_3683 : vec3<f32> = ((-(x_3663) * vec3<f32>(x_3676.w, x_3676.w, x_3676.w)) + vec3<f32>(x_3681.x, x_3681.y, x_3681.z));
    let x_3684 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3683.x, x_3683.y, x_3683.z, x_3684.w);
    let x_3687 : vec4<f32> = u_xlat8;
    let x_3689 : vec4<f32> = u_xlat8;
    u_xlat82 = dot(vec3<f32>(x_3687.x, x_3687.y, x_3687.z), vec3<f32>(x_3689.x, x_3689.y, x_3689.z));
    let x_3692 : f32 = u_xlat82;
    u_xlat82 = max(x_3692, 0.00006103515625f);
    let x_3696 : f32 = u_xlat82;
    u_xlat83 = inverseSqrt(x_3696);
    let x_3698 : f32 = u_xlat83;
    let x_3700 : vec4<f32> = u_xlat8;
    let x_3702 : vec3<f32> = (vec3<f32>(x_3698, x_3698, x_3698) * vec3<f32>(x_3700.x, x_3700.y, x_3700.z));
    let x_3703 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3702.x, x_3702.y, x_3702.z, x_3703.w);
    let x_3706 : f32 = u_xlat82;
    u_xlat84 = (1.0f / x_3706);
    let x_3708 : f32 = u_xlat82;
    let x_3709 : i32 = u_xlati79;
    let x_3711 : f32 = x_3673.x_AdditionalLightsAttenuation[x_3709].x;
    u_xlat82 = (x_3708 * x_3711);
    let x_3713 : f32 = u_xlat82;
    let x_3715 : f32 = u_xlat82;
    u_xlat82 = ((-(x_3713) * x_3715) + 1.0f);
    let x_3718 : f32 = u_xlat82;
    u_xlat82 = max(x_3718, 0.0f);
    let x_3720 : f32 = u_xlat82;
    let x_3721 : f32 = u_xlat82;
    u_xlat82 = (x_3720 * x_3721);
    let x_3723 : f32 = u_xlat82;
    let x_3724 : f32 = u_xlat84;
    u_xlat82 = (x_3723 * x_3724);
    let x_3726 : i32 = u_xlati79;
    let x_3728 : vec4<f32> = x_3673.x_AdditionalLightsSpotDir[x_3726];
    let x_3730 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_3728.x, x_3728.y, x_3728.z), vec3<f32>(x_3730.x, x_3730.y, x_3730.z));
    let x_3733 : f32 = u_xlat84;
    let x_3734 : i32 = u_xlati79;
    let x_3736 : f32 = x_3673.x_AdditionalLightsAttenuation[x_3734].z;
    let x_3738 : i32 = u_xlati79;
    let x_3740 : f32 = x_3673.x_AdditionalLightsAttenuation[x_3738].w;
    u_xlat84 = ((x_3733 * x_3736) + x_3740);
    let x_3742 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3742, 0.0f, 1.0f);
    let x_3744 : f32 = u_xlat84;
    let x_3745 : f32 = u_xlat84;
    u_xlat84 = (x_3744 * x_3745);
    let x_3747 : f32 = u_xlat82;
    let x_3748 : f32 = u_xlat84;
    u_xlat82 = (x_3747 * x_3748);
    let x_3752 : i32 = u_xlati79;
    let x_3754 : f32 = x_371.x_AdditionalShadowParams[x_3752].w;
    u_xlati84 = i32(x_3754);
    let x_3759 : i32 = u_xlati84;
    u_xlatb10.x = (x_3759 >= 0i);
    let x_3763 : bool = u_xlatb10.x;
    if (x_3763) {
      let x_3767 : i32 = u_xlati79;
      let x_3769 : f32 = x_371.x_AdditionalShadowParams[x_3767].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_3769, x_3769, x_3769, x_3769))));
      let x_3776 : bool = u_xlatb10.x;
      if (x_3776) {
        let x_3779 : vec4<f32> = u_xlat9;
        let x_3782 : vec4<f32> = u_xlat9;
        let x_3785 : vec4<bool> = (abs(vec4<f32>(x_3779.z, x_3779.z, x_3779.y, x_3779.z)) >= abs(vec4<f32>(x_3782.x, x_3782.y, x_3782.x, x_3782.x)));
        u_xlatb10 = vec3<bool>(x_3785.x, x_3785.y, x_3785.z);
        let x_3788 : bool = u_xlatb10.y;
        let x_3790 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_3788 & x_3790);
        let x_3794 : vec4<f32> = u_xlat9;
        let x_3797 : vec4<bool> = (-(vec4<f32>(x_3794.z, x_3794.y, x_3794.x, x_3794.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_3797.x, x_3797.y, x_3797.z);
        let x_3800 : bool = u_xlatb11.x;
        u_xlat35.x = select(4.0f, 5.0f, x_3800);
        let x_3805 : bool = u_xlatb11.y;
        u_xlat35.z = select(2.0f, 3.0f, x_3805);
        let x_3810 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_3810);
        let x_3814 : bool = u_xlatb10.z;
        if (x_3814) {
          let x_3819 : f32 = u_xlat35.z;
          x_3815 = x_3819;
        } else {
          let x_3822 : f32 = u_xlat11.x;
          x_3815 = x_3822;
        }
        let x_3823 : f32 = x_3815;
        u_xlat60.x = x_3823;
        let x_3826 : bool = u_xlatb10.x;
        if (x_3826) {
          let x_3831 : f32 = u_xlat35.x;
          x_3827 = x_3831;
        } else {
          let x_3834 : f32 = u_xlat60.x;
          x_3827 = x_3834;
        }
        let x_3835 : f32 = x_3827;
        u_xlat10.x = x_3835;
        let x_3837 : i32 = u_xlati79;
        let x_3839 : f32 = x_371.x_AdditionalShadowParams[x_3837].w;
        u_xlat35.x = trunc(x_3839);
        let x_3843 : f32 = u_xlat10.x;
        let x_3845 : f32 = u_xlat35.x;
        u_xlat10.x = (x_3843 + x_3845);
        let x_3849 : f32 = u_xlat10.x;
        u_xlati84 = i32(x_3849);
      }
      let x_3851 : i32 = u_xlati84;
      u_xlati84 = (x_3851 << bitcast<u32>(2i));
      let x_3853 : vec3<f32> = vs_INTERP8;
      let x_3856 : i32 = u_xlati84;
      let x_3859 : i32 = u_xlati84;
      let x_3863 : vec4<f32> = x_371.x_AdditionalLightsWorldToShadow[((x_3856 + 1i) / 4i)][((x_3859 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_3853.y, x_3853.y, x_3853.y, x_3853.y) * x_3863);
      let x_3865 : i32 = u_xlati84;
      let x_3867 : i32 = u_xlati84;
      let x_3870 : vec4<f32> = x_371.x_AdditionalLightsWorldToShadow[(x_3865 / 4i)][(x_3867 % 4i)];
      let x_3871 : vec3<f32> = vs_INTERP8;
      let x_3874 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_3870 * vec4<f32>(x_3871.x, x_3871.x, x_3871.x, x_3871.x)) + x_3874);
      let x_3876 : i32 = u_xlati84;
      let x_3879 : i32 = u_xlati84;
      let x_3883 : vec4<f32> = x_371.x_AdditionalLightsWorldToShadow[((x_3876 + 2i) / 4i)][((x_3879 + 2i) % 4i)];
      let x_3884 : vec3<f32> = vs_INTERP8;
      let x_3887 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_3883 * vec4<f32>(x_3884.z, x_3884.z, x_3884.z, x_3884.z)) + x_3887);
      let x_3889 : vec4<f32> = u_xlat10;
      let x_3890 : i32 = u_xlati84;
      let x_3893 : i32 = u_xlati84;
      let x_3897 : vec4<f32> = x_371.x_AdditionalLightsWorldToShadow[((x_3890 + 3i) / 4i)][((x_3893 + 3i) % 4i)];
      u_xlat10 = (x_3889 + x_3897);
      let x_3899 : vec4<f32> = u_xlat10;
      let x_3901 : vec4<f32> = u_xlat10;
      let x_3903 : vec3<f32> = (vec3<f32>(x_3899.x, x_3899.y, x_3899.z) / vec3<f32>(x_3901.w, x_3901.w, x_3901.w));
      let x_3904 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_3903.x, x_3903.y, x_3903.z, x_3904.w);
      let x_3907 : i32 = u_xlati79;
      let x_3909 : f32 = x_371.x_AdditionalShadowParams[x_3907].y;
      u_xlatb84 = (0.0f < x_3909);
      let x_3911 : bool = u_xlatb84;
      if (x_3911) {
        let x_3914 : i32 = u_xlati79;
        let x_3916 : f32 = x_371.x_AdditionalShadowParams[x_3914].y;
        u_xlatb84 = (1.0f == x_3916);
        let x_3918 : bool = u_xlatb84;
        if (x_3918) {
          let x_3921 : vec4<f32> = u_xlat10;
          let x_3925 : vec4<f32> = x_371.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_3921.x, x_3921.y, x_3921.x, x_3921.y) + x_3925);
          let x_3928 : vec4<f32> = u_xlat11;
          let x_3929 : vec2<f32> = vec2<f32>(x_3928.x, x_3928.y);
          let x_3931 : f32 = u_xlat10.z;
          txVec60 = vec3<f32>(x_3929.x, x_3929.y, x_3931);
          let x_3939 : vec3<f32> = txVec60;
          let x_3941 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3939.xy, x_3939.z);
          u_xlat12.x = x_3941;
          let x_3944 : vec4<f32> = u_xlat11;
          let x_3945 : vec2<f32> = vec2<f32>(x_3944.z, x_3944.w);
          let x_3947 : f32 = u_xlat10.z;
          txVec61 = vec3<f32>(x_3945.x, x_3945.y, x_3947);
          let x_3954 : vec3<f32> = txVec61;
          let x_3956 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3954.xy, x_3954.z);
          u_xlat12.y = x_3956;
          let x_3958 : vec4<f32> = u_xlat10;
          let x_3962 : vec4<f32> = x_371.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_3958.x, x_3958.y, x_3958.x, x_3958.y) + x_3962);
          let x_3965 : vec4<f32> = u_xlat11;
          let x_3966 : vec2<f32> = vec2<f32>(x_3965.x, x_3965.y);
          let x_3968 : f32 = u_xlat10.z;
          txVec62 = vec3<f32>(x_3966.x, x_3966.y, x_3968);
          let x_3975 : vec3<f32> = txVec62;
          let x_3977 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3975.xy, x_3975.z);
          u_xlat12.z = x_3977;
          let x_3980 : vec4<f32> = u_xlat11;
          let x_3981 : vec2<f32> = vec2<f32>(x_3980.z, x_3980.w);
          let x_3983 : f32 = u_xlat10.z;
          txVec63 = vec3<f32>(x_3981.x, x_3981.y, x_3983);
          let x_3990 : vec3<f32> = txVec63;
          let x_3992 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3990.xy, x_3990.z);
          u_xlat12.w = x_3992;
          let x_3994 : vec4<f32> = u_xlat12;
          u_xlat84 = dot(x_3994, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3998 : i32 = u_xlati79;
          let x_4000 : f32 = x_371.x_AdditionalShadowParams[x_3998].y;
          u_xlatb85 = (2.0f == x_4000);
          let x_4002 : bool = u_xlatb85;
          if (x_4002) {
            let x_4005 : vec4<f32> = u_xlat10;
            let x_4009 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4012 : vec2<f32> = ((vec2<f32>(x_4005.x, x_4005.y) * vec2<f32>(x_4009.z, x_4009.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4013 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_4012.x, x_4012.y, x_4013.z, x_4013.w);
            let x_4015 : vec4<f32> = u_xlat11;
            let x_4017 : vec2<f32> = floor(vec2<f32>(x_4015.x, x_4015.y));
            let x_4018 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_4017.x, x_4017.y, x_4018.z, x_4018.w);
            let x_4020 : vec4<f32> = u_xlat10;
            let x_4023 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4026 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_4020.x, x_4020.y) * vec2<f32>(x_4023.z, x_4023.w)) + -(vec2<f32>(x_4026.x, x_4026.y)));
            let x_4030 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_4030.x, x_4030.x, x_4030.y, x_4030.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4033 : vec4<f32> = u_xlat12;
            let x_4035 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_4033.x, x_4033.x, x_4033.z, x_4033.z) * vec4<f32>(x_4035.x, x_4035.x, x_4035.z, x_4035.z));
            let x_4038 : vec4<f32> = u_xlat13;
            let x_4040 : vec2<f32> = (vec2<f32>(x_4038.y, x_4038.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_4041 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4040.x, x_4041.y, x_4040.y, x_4041.w);
            let x_4043 : vec4<f32> = u_xlat13;
            let x_4046 : vec2<f32> = u_xlat61;
            let x_4048 : vec2<f32> = ((vec2<f32>(x_4043.x, x_4043.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4046));
            let x_4049 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4048.x, x_4048.y, x_4049.z, x_4049.w);
            let x_4051 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_4051) + vec2<f32>(1.0f, 1.0f));
            let x_4054 : vec2<f32> = u_xlat61;
            let x_4055 : vec2<f32> = min(x_4054, vec2<f32>(0.0f, 0.0f));
            let x_4056 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4055.x, x_4055.y, x_4056.z, x_4056.w);
            let x_4058 : vec4<f32> = u_xlat14;
            let x_4061 : vec4<f32> = u_xlat14;
            let x_4064 : vec2<f32> = u_xlat63;
            let x_4065 : vec2<f32> = ((-(vec2<f32>(x_4058.x, x_4058.y)) * vec2<f32>(x_4061.x, x_4061.y)) + x_4064);
            let x_4066 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4065.x, x_4065.y, x_4066.z, x_4066.w);
            let x_4068 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_4068, vec2<f32>(0.0f, 0.0f));
            let x_4070 : vec2<f32> = u_xlat61;
            let x_4072 : vec2<f32> = u_xlat61;
            let x_4074 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_4070) * x_4072) + vec2<f32>(x_4074.y, x_4074.w));
            let x_4077 : vec4<f32> = u_xlat14;
            let x_4079 : vec2<f32> = (vec2<f32>(x_4077.x, x_4077.y) + vec2<f32>(1.0f, 1.0f));
            let x_4080 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4079.x, x_4079.y, x_4080.z, x_4080.w);
            let x_4082 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_4082 + vec2<f32>(1.0f, 1.0f));
            let x_4084 : vec4<f32> = u_xlat13;
            let x_4086 : vec2<f32> = (vec2<f32>(x_4084.x, x_4084.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4087 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4086.x, x_4086.y, x_4087.z, x_4087.w);
            let x_4089 : vec2<f32> = u_xlat63;
            let x_4090 : vec2<f32> = (x_4089 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4091 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4090.x, x_4090.y, x_4091.z, x_4091.w);
            let x_4093 : vec4<f32> = u_xlat14;
            let x_4095 : vec2<f32> = (vec2<f32>(x_4093.x, x_4093.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4096 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4095.x, x_4095.y, x_4096.z, x_4096.w);
            let x_4098 : vec2<f32> = u_xlat61;
            let x_4099 : vec2<f32> = (x_4098 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4100 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4099.x, x_4099.y, x_4100.z, x_4100.w);
            let x_4102 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_4102.y, x_4102.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4106 : f32 = u_xlat14.x;
            u_xlat15.z = x_4106;
            let x_4109 : f32 = u_xlat61.x;
            u_xlat15.w = x_4109;
            let x_4112 : f32 = u_xlat16.x;
            u_xlat13.z = x_4112;
            let x_4115 : f32 = u_xlat12.x;
            u_xlat13.w = x_4115;
            let x_4117 : vec4<f32> = u_xlat13;
            let x_4119 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_4117.z, x_4117.w, x_4117.x, x_4117.z) + vec4<f32>(x_4119.z, x_4119.w, x_4119.x, x_4119.z));
            let x_4123 : f32 = u_xlat15.y;
            u_xlat14.z = x_4123;
            let x_4126 : f32 = u_xlat61.y;
            u_xlat14.w = x_4126;
            let x_4129 : f32 = u_xlat13.y;
            u_xlat16.z = x_4129;
            let x_4132 : f32 = u_xlat12.z;
            u_xlat16.w = x_4132;
            let x_4134 : vec4<f32> = u_xlat14;
            let x_4136 : vec4<f32> = u_xlat16;
            let x_4138 : vec3<f32> = (vec3<f32>(x_4134.z, x_4134.y, x_4134.w) + vec3<f32>(x_4136.z, x_4136.y, x_4136.w));
            let x_4139 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4138.x, x_4138.y, x_4138.z, x_4139.w);
            let x_4141 : vec4<f32> = u_xlat13;
            let x_4143 : vec4<f32> = u_xlat17;
            let x_4145 : vec3<f32> = (vec3<f32>(x_4141.x, x_4141.z, x_4141.w) / vec3<f32>(x_4143.z, x_4143.w, x_4143.y));
            let x_4146 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4145.x, x_4145.y, x_4145.z, x_4146.w);
            let x_4148 : vec4<f32> = u_xlat13;
            let x_4150 : vec3<f32> = (vec3<f32>(x_4148.x, x_4148.y, x_4148.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4151 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4150.x, x_4150.y, x_4150.z, x_4151.w);
            let x_4153 : vec4<f32> = u_xlat16;
            let x_4155 : vec4<f32> = u_xlat12;
            let x_4157 : vec3<f32> = (vec3<f32>(x_4153.z, x_4153.y, x_4153.w) / vec3<f32>(x_4155.x, x_4155.y, x_4155.z));
            let x_4158 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4157.x, x_4157.y, x_4157.z, x_4158.w);
            let x_4160 : vec4<f32> = u_xlat14;
            let x_4162 : vec3<f32> = (vec3<f32>(x_4160.x, x_4160.y, x_4160.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4163 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4162.x, x_4162.y, x_4162.z, x_4163.w);
            let x_4165 : vec4<f32> = u_xlat13;
            let x_4168 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4170 : vec3<f32> = (vec3<f32>(x_4165.y, x_4165.x, x_4165.z) * vec3<f32>(x_4168.x, x_4168.x, x_4168.x));
            let x_4171 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4170.x, x_4170.y, x_4170.z, x_4171.w);
            let x_4173 : vec4<f32> = u_xlat14;
            let x_4176 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4178 : vec3<f32> = (vec3<f32>(x_4173.x, x_4173.y, x_4173.z) * vec3<f32>(x_4176.y, x_4176.y, x_4176.y));
            let x_4179 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4178.x, x_4178.y, x_4178.z, x_4179.w);
            let x_4182 : f32 = u_xlat14.x;
            u_xlat13.w = x_4182;
            let x_4184 : vec4<f32> = u_xlat11;
            let x_4187 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4190 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_4184.x, x_4184.y, x_4184.x, x_4184.y) * vec4<f32>(x_4187.x, x_4187.y, x_4187.x, x_4187.y)) + vec4<f32>(x_4190.y, x_4190.w, x_4190.x, x_4190.w));
            let x_4193 : vec4<f32> = u_xlat11;
            let x_4196 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4199 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_4193.x, x_4193.y) * vec2<f32>(x_4196.x, x_4196.y)) + vec2<f32>(x_4199.z, x_4199.w));
            let x_4203 : f32 = u_xlat13.y;
            u_xlat14.w = x_4203;
            let x_4205 : vec4<f32> = u_xlat14;
            let x_4206 : vec2<f32> = vec2<f32>(x_4205.y, x_4205.z);
            let x_4207 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4207.x, x_4206.x, x_4207.z, x_4206.y);
            let x_4209 : vec4<f32> = u_xlat11;
            let x_4212 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4215 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_4209.x, x_4209.y, x_4209.x, x_4209.y) * vec4<f32>(x_4212.x, x_4212.y, x_4212.x, x_4212.y)) + vec4<f32>(x_4215.x, x_4215.y, x_4215.z, x_4215.y));
            let x_4218 : vec4<f32> = u_xlat11;
            let x_4221 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4224 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_4218.x, x_4218.y, x_4218.x, x_4218.y) * vec4<f32>(x_4221.x, x_4221.y, x_4221.x, x_4221.y)) + vec4<f32>(x_4224.w, x_4224.y, x_4224.w, x_4224.z));
            let x_4227 : vec4<f32> = u_xlat11;
            let x_4230 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4233 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_4227.x, x_4227.y, x_4227.x, x_4227.y) * vec4<f32>(x_4230.x, x_4230.y, x_4230.x, x_4230.y)) + vec4<f32>(x_4233.x, x_4233.w, x_4233.z, x_4233.w));
            let x_4236 : vec4<f32> = u_xlat12;
            let x_4238 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_4236.x, x_4236.x, x_4236.x, x_4236.y) * vec4<f32>(x_4238.z, x_4238.w, x_4238.y, x_4238.z));
            let x_4241 : vec4<f32> = u_xlat12;
            let x_4243 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_4241.y, x_4241.y, x_4241.z, x_4241.z) * x_4243);
            let x_4247 : f32 = u_xlat12.z;
            let x_4249 : f32 = u_xlat17.y;
            u_xlat85 = (x_4247 * x_4249);
            let x_4252 : vec4<f32> = u_xlat15;
            let x_4253 : vec2<f32> = vec2<f32>(x_4252.x, x_4252.y);
            let x_4255 : f32 = u_xlat10.z;
            txVec64 = vec3<f32>(x_4253.x, x_4253.y, x_4255);
            let x_4262 : vec3<f32> = txVec64;
            let x_4264 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4262.xy, x_4262.z);
            u_xlat11.x = x_4264;
            let x_4267 : vec4<f32> = u_xlat15;
            let x_4268 : vec2<f32> = vec2<f32>(x_4267.z, x_4267.w);
            let x_4270 : f32 = u_xlat10.z;
            txVec65 = vec3<f32>(x_4268.x, x_4268.y, x_4270);
            let x_4278 : vec3<f32> = txVec65;
            let x_4280 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4278.xy, x_4278.z);
            u_xlat36 = x_4280;
            let x_4281 : f32 = u_xlat36;
            let x_4283 : f32 = u_xlat18.y;
            u_xlat36 = (x_4281 * x_4283);
            let x_4286 : f32 = u_xlat18.x;
            let x_4288 : f32 = u_xlat11.x;
            let x_4290 : f32 = u_xlat36;
            u_xlat11.x = ((x_4286 * x_4288) + x_4290);
            let x_4294 : vec2<f32> = u_xlat61;
            let x_4296 : f32 = u_xlat10.z;
            txVec66 = vec3<f32>(x_4294.x, x_4294.y, x_4296);
            let x_4303 : vec3<f32> = txVec66;
            let x_4305 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4303.xy, x_4303.z);
            u_xlat36 = x_4305;
            let x_4307 : f32 = u_xlat18.z;
            let x_4308 : f32 = u_xlat36;
            let x_4311 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_4307 * x_4308) + x_4311);
            let x_4315 : vec4<f32> = u_xlat14;
            let x_4316 : vec2<f32> = vec2<f32>(x_4315.x, x_4315.y);
            let x_4318 : f32 = u_xlat10.z;
            txVec67 = vec3<f32>(x_4316.x, x_4316.y, x_4318);
            let x_4325 : vec3<f32> = txVec67;
            let x_4327 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4325.xy, x_4325.z);
            u_xlat36 = x_4327;
            let x_4329 : f32 = u_xlat18.w;
            let x_4330 : f32 = u_xlat36;
            let x_4333 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_4329 * x_4330) + x_4333);
            let x_4337 : vec4<f32> = u_xlat16;
            let x_4338 : vec2<f32> = vec2<f32>(x_4337.x, x_4337.y);
            let x_4340 : f32 = u_xlat10.z;
            txVec68 = vec3<f32>(x_4338.x, x_4338.y, x_4340);
            let x_4347 : vec3<f32> = txVec68;
            let x_4349 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4347.xy, x_4347.z);
            u_xlat36 = x_4349;
            let x_4351 : f32 = u_xlat19.x;
            let x_4352 : f32 = u_xlat36;
            let x_4355 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_4351 * x_4352) + x_4355);
            let x_4359 : vec4<f32> = u_xlat16;
            let x_4360 : vec2<f32> = vec2<f32>(x_4359.z, x_4359.w);
            let x_4362 : f32 = u_xlat10.z;
            txVec69 = vec3<f32>(x_4360.x, x_4360.y, x_4362);
            let x_4369 : vec3<f32> = txVec69;
            let x_4371 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4369.xy, x_4369.z);
            u_xlat36 = x_4371;
            let x_4373 : f32 = u_xlat19.y;
            let x_4374 : f32 = u_xlat36;
            let x_4377 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_4373 * x_4374) + x_4377);
            let x_4381 : vec4<f32> = u_xlat14;
            let x_4382 : vec2<f32> = vec2<f32>(x_4381.z, x_4381.w);
            let x_4384 : f32 = u_xlat10.z;
            txVec70 = vec3<f32>(x_4382.x, x_4382.y, x_4384);
            let x_4391 : vec3<f32> = txVec70;
            let x_4393 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4391.xy, x_4391.z);
            u_xlat36 = x_4393;
            let x_4395 : f32 = u_xlat19.z;
            let x_4396 : f32 = u_xlat36;
            let x_4399 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_4395 * x_4396) + x_4399);
            let x_4403 : vec4<f32> = u_xlat13;
            let x_4404 : vec2<f32> = vec2<f32>(x_4403.x, x_4403.y);
            let x_4406 : f32 = u_xlat10.z;
            txVec71 = vec3<f32>(x_4404.x, x_4404.y, x_4406);
            let x_4413 : vec3<f32> = txVec71;
            let x_4415 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4413.xy, x_4413.z);
            u_xlat36 = x_4415;
            let x_4417 : f32 = u_xlat19.w;
            let x_4418 : f32 = u_xlat36;
            let x_4421 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_4417 * x_4418) + x_4421);
            let x_4425 : vec4<f32> = u_xlat13;
            let x_4426 : vec2<f32> = vec2<f32>(x_4425.z, x_4425.w);
            let x_4428 : f32 = u_xlat10.z;
            txVec72 = vec3<f32>(x_4426.x, x_4426.y, x_4428);
            let x_4435 : vec3<f32> = txVec72;
            let x_4437 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4435.xy, x_4435.z);
            u_xlat36 = x_4437;
            let x_4438 : f32 = u_xlat85;
            let x_4439 : f32 = u_xlat36;
            let x_4442 : f32 = u_xlat11.x;
            u_xlat84 = ((x_4438 * x_4439) + x_4442);
          } else {
            let x_4445 : vec4<f32> = u_xlat10;
            let x_4448 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4451 : vec2<f32> = ((vec2<f32>(x_4445.x, x_4445.y) * vec2<f32>(x_4448.z, x_4448.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4452 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_4451.x, x_4451.y, x_4452.z, x_4452.w);
            let x_4454 : vec4<f32> = u_xlat11;
            let x_4456 : vec2<f32> = floor(vec2<f32>(x_4454.x, x_4454.y));
            let x_4457 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_4456.x, x_4456.y, x_4457.z, x_4457.w);
            let x_4459 : vec4<f32> = u_xlat10;
            let x_4462 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4465 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_4459.x, x_4459.y) * vec2<f32>(x_4462.z, x_4462.w)) + -(vec2<f32>(x_4465.x, x_4465.y)));
            let x_4469 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_4469.x, x_4469.x, x_4469.y, x_4469.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4472 : vec4<f32> = u_xlat12;
            let x_4474 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_4472.x, x_4472.x, x_4472.z, x_4472.z) * vec4<f32>(x_4474.x, x_4474.x, x_4474.z, x_4474.z));
            let x_4477 : vec4<f32> = u_xlat13;
            let x_4479 : vec2<f32> = (vec2<f32>(x_4477.y, x_4477.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_4480 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4480.x, x_4479.x, x_4480.z, x_4479.y);
            let x_4482 : vec4<f32> = u_xlat13;
            let x_4485 : vec2<f32> = u_xlat61;
            let x_4487 : vec2<f32> = ((vec2<f32>(x_4482.x, x_4482.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4485));
            let x_4488 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4487.x, x_4488.y, x_4487.y, x_4488.w);
            let x_4490 : vec2<f32> = u_xlat61;
            let x_4492 : vec2<f32> = (-(x_4490) + vec2<f32>(1.0f, 1.0f));
            let x_4493 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4492.x, x_4492.y, x_4493.z, x_4493.w);
            let x_4495 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_4495, vec2<f32>(0.0f, 0.0f));
            let x_4497 : vec2<f32> = u_xlat63;
            let x_4499 : vec2<f32> = u_xlat63;
            let x_4501 : vec4<f32> = u_xlat13;
            let x_4503 : vec2<f32> = ((-(x_4497) * x_4499) + vec2<f32>(x_4501.x, x_4501.y));
            let x_4504 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4503.x, x_4503.y, x_4504.z, x_4504.w);
            let x_4506 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_4506, vec2<f32>(0.0f, 0.0f));
            let x_4509 : vec2<f32> = u_xlat63;
            let x_4511 : vec2<f32> = u_xlat63;
            let x_4513 : vec4<f32> = u_xlat12;
            let x_4515 : vec2<f32> = ((-(x_4509) * x_4511) + vec2<f32>(x_4513.y, x_4513.w));
            let x_4516 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_4515.x, x_4516.y, x_4515.y);
            let x_4518 : vec4<f32> = u_xlat13;
            let x_4520 : vec2<f32> = (vec2<f32>(x_4518.x, x_4518.y) + vec2<f32>(2.0f, 2.0f));
            let x_4521 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4520.x, x_4520.y, x_4521.z, x_4521.w);
            let x_4523 : vec3<f32> = u_xlat37;
            let x_4525 : vec2<f32> = (vec2<f32>(x_4523.x, x_4523.z) + vec2<f32>(2.0f, 2.0f));
            let x_4526 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4526.x, x_4525.x, x_4526.z, x_4525.y);
            let x_4529 : f32 = u_xlat12.y;
            u_xlat15.z = (x_4529 * 0.08163200318813323975f);
            let x_4532 : vec4<f32> = u_xlat12;
            let x_4534 : vec3<f32> = (vec3<f32>(x_4532.z, x_4532.x, x_4532.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_4535 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4534.x, x_4534.y, x_4534.z, x_4535.w);
            let x_4537 : vec4<f32> = u_xlat13;
            let x_4539 : vec2<f32> = (vec2<f32>(x_4537.x, x_4537.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_4540 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4539.x, x_4539.y, x_4540.z, x_4540.w);
            let x_4543 : f32 = u_xlat16.y;
            u_xlat15.x = x_4543;
            let x_4545 : vec2<f32> = u_xlat61;
            let x_4548 : vec2<f32> = ((vec2<f32>(x_4545.x, x_4545.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4549 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4549.x, x_4548.x, x_4549.z, x_4548.y);
            let x_4551 : vec2<f32> = u_xlat61;
            let x_4554 : vec2<f32> = ((vec2<f32>(x_4551.x, x_4551.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4555 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4554.x, x_4555.y, x_4554.y, x_4555.w);
            let x_4558 : f32 = u_xlat12.x;
            u_xlat13.y = x_4558;
            let x_4561 : f32 = u_xlat14.y;
            u_xlat13.w = x_4561;
            let x_4563 : vec4<f32> = u_xlat13;
            let x_4564 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_4563 + x_4564);
            let x_4566 : vec2<f32> = u_xlat61;
            let x_4569 : vec2<f32> = ((vec2<f32>(x_4566.y, x_4566.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4570 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4570.x, x_4569.x, x_4570.z, x_4569.y);
            let x_4572 : vec2<f32> = u_xlat61;
            let x_4575 : vec2<f32> = ((vec2<f32>(x_4572.y, x_4572.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4576 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4575.x, x_4576.y, x_4575.y, x_4576.w);
            let x_4579 : f32 = u_xlat12.y;
            u_xlat14.y = x_4579;
            let x_4581 : vec4<f32> = u_xlat14;
            let x_4582 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_4581 + x_4582);
            let x_4584 : vec4<f32> = u_xlat13;
            let x_4585 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_4584 / x_4585);
            let x_4587 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_4587 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4589 : vec4<f32> = u_xlat14;
            let x_4590 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_4589 / x_4590);
            let x_4592 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_4592 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4594 : vec4<f32> = u_xlat13;
            let x_4597 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_4594.w, x_4594.x, x_4594.y, x_4594.z) * vec4<f32>(x_4597.x, x_4597.x, x_4597.x, x_4597.x));
            let x_4600 : vec4<f32> = u_xlat14;
            let x_4603 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_4600.x, x_4600.w, x_4600.y, x_4600.z) * vec4<f32>(x_4603.y, x_4603.y, x_4603.y, x_4603.y));
            let x_4606 : vec4<f32> = u_xlat13;
            let x_4607 : vec3<f32> = vec3<f32>(x_4606.y, x_4606.z, x_4606.w);
            let x_4608 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4607.x, x_4608.y, x_4607.y, x_4607.z);
            let x_4611 : f32 = u_xlat14.x;
            u_xlat16.y = x_4611;
            let x_4613 : vec4<f32> = u_xlat11;
            let x_4616 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4619 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_4613.x, x_4613.y, x_4613.x, x_4613.y) * vec4<f32>(x_4616.x, x_4616.y, x_4616.x, x_4616.y)) + vec4<f32>(x_4619.x, x_4619.y, x_4619.z, x_4619.y));
            let x_4622 : vec4<f32> = u_xlat11;
            let x_4625 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4628 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_4622.x, x_4622.y) * vec2<f32>(x_4625.x, x_4625.y)) + vec2<f32>(x_4628.w, x_4628.y));
            let x_4632 : f32 = u_xlat16.y;
            u_xlat13.y = x_4632;
            let x_4635 : f32 = u_xlat14.z;
            u_xlat16.y = x_4635;
            let x_4637 : vec4<f32> = u_xlat11;
            let x_4640 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4643 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_4637.x, x_4637.y, x_4637.x, x_4637.y) * vec4<f32>(x_4640.x, x_4640.y, x_4640.x, x_4640.y)) + vec4<f32>(x_4643.x, x_4643.y, x_4643.z, x_4643.y));
            let x_4646 : vec4<f32> = u_xlat11;
            let x_4649 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4652 : vec4<f32> = u_xlat16;
            let x_4654 : vec2<f32> = ((vec2<f32>(x_4646.x, x_4646.y) * vec2<f32>(x_4649.x, x_4649.y)) + vec2<f32>(x_4652.w, x_4652.y));
            let x_4655 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_4654.x, x_4654.y, x_4655.z, x_4655.w);
            let x_4658 : f32 = u_xlat16.y;
            u_xlat13.z = x_4658;
            let x_4660 : vec4<f32> = u_xlat11;
            let x_4663 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4666 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_4660.x, x_4660.y, x_4660.x, x_4660.y) * vec4<f32>(x_4663.x, x_4663.y, x_4663.x, x_4663.y)) + vec4<f32>(x_4666.x, x_4666.y, x_4666.x, x_4666.z));
            let x_4670 : f32 = u_xlat14.w;
            u_xlat16.y = x_4670;
            let x_4672 : vec4<f32> = u_xlat11;
            let x_4675 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4678 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_4672.x, x_4672.y, x_4672.x, x_4672.y) * vec4<f32>(x_4675.x, x_4675.y, x_4675.x, x_4675.y)) + vec4<f32>(x_4678.x, x_4678.y, x_4678.z, x_4678.y));
            let x_4682 : vec4<f32> = u_xlat11;
            let x_4685 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4688 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_4682.x, x_4682.y) * vec2<f32>(x_4685.x, x_4685.y)) + vec2<f32>(x_4688.w, x_4688.y));
            let x_4692 : f32 = u_xlat16.y;
            u_xlat13.w = x_4692;
            let x_4695 : vec4<f32> = u_xlat11;
            let x_4698 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4701 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_4695.x, x_4695.y) * vec2<f32>(x_4698.x, x_4698.y)) + vec2<f32>(x_4701.x, x_4701.w));
            let x_4704 : vec4<f32> = u_xlat16;
            let x_4705 : vec3<f32> = vec3<f32>(x_4704.x, x_4704.z, x_4704.w);
            let x_4706 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4705.x, x_4706.y, x_4705.y, x_4705.z);
            let x_4708 : vec4<f32> = u_xlat11;
            let x_4711 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4714 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_4708.x, x_4708.y, x_4708.x, x_4708.y) * vec4<f32>(x_4711.x, x_4711.y, x_4711.x, x_4711.y)) + vec4<f32>(x_4714.x, x_4714.y, x_4714.z, x_4714.y));
            let x_4718 : vec4<f32> = u_xlat11;
            let x_4721 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4724 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_4718.x, x_4718.y) * vec2<f32>(x_4721.x, x_4721.y)) + vec2<f32>(x_4724.w, x_4724.y));
            let x_4728 : f32 = u_xlat13.x;
            u_xlat14.x = x_4728;
            let x_4730 : vec4<f32> = u_xlat11;
            let x_4733 : vec4<f32> = x_371.x_AdditionalShadowmapSize;
            let x_4736 : vec4<f32> = u_xlat14;
            let x_4738 : vec2<f32> = ((vec2<f32>(x_4730.x, x_4730.y) * vec2<f32>(x_4733.x, x_4733.y)) + vec2<f32>(x_4736.x, x_4736.y));
            let x_4739 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_4738.x, x_4738.y, x_4739.z, x_4739.w);
            let x_4742 : vec4<f32> = u_xlat12;
            let x_4744 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_4742.x, x_4742.x, x_4742.x, x_4742.x) * x_4744);
            let x_4747 : vec4<f32> = u_xlat12;
            let x_4749 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_4747.y, x_4747.y, x_4747.y, x_4747.y) * x_4749);
            let x_4752 : vec4<f32> = u_xlat12;
            let x_4754 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_4752.z, x_4752.z, x_4752.z, x_4752.z) * x_4754);
            let x_4756 : vec4<f32> = u_xlat12;
            let x_4758 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_4756.w, x_4756.w, x_4756.w, x_4756.w) * x_4758);
            let x_4761 : vec4<f32> = u_xlat17;
            let x_4762 : vec2<f32> = vec2<f32>(x_4761.x, x_4761.y);
            let x_4764 : f32 = u_xlat10.z;
            txVec73 = vec3<f32>(x_4762.x, x_4762.y, x_4764);
            let x_4771 : vec3<f32> = txVec73;
            let x_4773 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4771.xy, x_4771.z);
            u_xlat85 = x_4773;
            let x_4775 : vec4<f32> = u_xlat17;
            let x_4776 : vec2<f32> = vec2<f32>(x_4775.z, x_4775.w);
            let x_4778 : f32 = u_xlat10.z;
            txVec74 = vec3<f32>(x_4776.x, x_4776.y, x_4778);
            let x_4785 : vec3<f32> = txVec74;
            let x_4787 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4785.xy, x_4785.z);
            u_xlat13.x = x_4787;
            let x_4790 : f32 = u_xlat13.x;
            let x_4792 : f32 = u_xlat22.y;
            u_xlat13.x = (x_4790 * x_4792);
            let x_4796 : f32 = u_xlat22.x;
            let x_4797 : f32 = u_xlat85;
            let x_4800 : f32 = u_xlat13.x;
            u_xlat85 = ((x_4796 * x_4797) + x_4800);
            let x_4803 : vec2<f32> = u_xlat61;
            let x_4805 : f32 = u_xlat10.z;
            txVec75 = vec3<f32>(x_4803.x, x_4803.y, x_4805);
            let x_4812 : vec3<f32> = txVec75;
            let x_4814 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4812.xy, x_4812.z);
            u_xlat61.x = x_4814;
            let x_4817 : f32 = u_xlat22.z;
            let x_4819 : f32 = u_xlat61.x;
            let x_4821 : f32 = u_xlat85;
            u_xlat85 = ((x_4817 * x_4819) + x_4821);
            let x_4824 : vec4<f32> = u_xlat20;
            let x_4825 : vec2<f32> = vec2<f32>(x_4824.x, x_4824.y);
            let x_4827 : f32 = u_xlat10.z;
            txVec76 = vec3<f32>(x_4825.x, x_4825.y, x_4827);
            let x_4834 : vec3<f32> = txVec76;
            let x_4836 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4834.xy, x_4834.z);
            u_xlat61.x = x_4836;
            let x_4839 : f32 = u_xlat22.w;
            let x_4841 : f32 = u_xlat61.x;
            let x_4843 : f32 = u_xlat85;
            u_xlat85 = ((x_4839 * x_4841) + x_4843);
            let x_4846 : vec4<f32> = u_xlat18;
            let x_4847 : vec2<f32> = vec2<f32>(x_4846.x, x_4846.y);
            let x_4849 : f32 = u_xlat10.z;
            txVec77 = vec3<f32>(x_4847.x, x_4847.y, x_4849);
            let x_4856 : vec3<f32> = txVec77;
            let x_4858 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4856.xy, x_4856.z);
            u_xlat61.x = x_4858;
            let x_4861 : f32 = u_xlat23.x;
            let x_4863 : f32 = u_xlat61.x;
            let x_4865 : f32 = u_xlat85;
            u_xlat85 = ((x_4861 * x_4863) + x_4865);
            let x_4868 : vec4<f32> = u_xlat18;
            let x_4869 : vec2<f32> = vec2<f32>(x_4868.z, x_4868.w);
            let x_4871 : f32 = u_xlat10.z;
            txVec78 = vec3<f32>(x_4869.x, x_4869.y, x_4871);
            let x_4878 : vec3<f32> = txVec78;
            let x_4880 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4878.xy, x_4878.z);
            u_xlat61.x = x_4880;
            let x_4883 : f32 = u_xlat23.y;
            let x_4885 : f32 = u_xlat61.x;
            let x_4887 : f32 = u_xlat85;
            u_xlat85 = ((x_4883 * x_4885) + x_4887);
            let x_4890 : vec4<f32> = u_xlat19;
            let x_4891 : vec2<f32> = vec2<f32>(x_4890.x, x_4890.y);
            let x_4893 : f32 = u_xlat10.z;
            txVec79 = vec3<f32>(x_4891.x, x_4891.y, x_4893);
            let x_4900 : vec3<f32> = txVec79;
            let x_4902 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4900.xy, x_4900.z);
            u_xlat61.x = x_4902;
            let x_4905 : f32 = u_xlat23.z;
            let x_4907 : f32 = u_xlat61.x;
            let x_4909 : f32 = u_xlat85;
            u_xlat85 = ((x_4905 * x_4907) + x_4909);
            let x_4912 : vec4<f32> = u_xlat20;
            let x_4913 : vec2<f32> = vec2<f32>(x_4912.z, x_4912.w);
            let x_4915 : f32 = u_xlat10.z;
            txVec80 = vec3<f32>(x_4913.x, x_4913.y, x_4915);
            let x_4922 : vec3<f32> = txVec80;
            let x_4924 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4922.xy, x_4922.z);
            u_xlat61.x = x_4924;
            let x_4927 : f32 = u_xlat23.w;
            let x_4929 : f32 = u_xlat61.x;
            let x_4931 : f32 = u_xlat85;
            u_xlat85 = ((x_4927 * x_4929) + x_4931);
            let x_4934 : vec4<f32> = u_xlat21;
            let x_4935 : vec2<f32> = vec2<f32>(x_4934.x, x_4934.y);
            let x_4937 : f32 = u_xlat10.z;
            txVec81 = vec3<f32>(x_4935.x, x_4935.y, x_4937);
            let x_4944 : vec3<f32> = txVec81;
            let x_4946 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4944.xy, x_4944.z);
            u_xlat61.x = x_4946;
            let x_4949 : f32 = u_xlat24.x;
            let x_4951 : f32 = u_xlat61.x;
            let x_4953 : f32 = u_xlat85;
            u_xlat85 = ((x_4949 * x_4951) + x_4953);
            let x_4956 : vec4<f32> = u_xlat21;
            let x_4957 : vec2<f32> = vec2<f32>(x_4956.z, x_4956.w);
            let x_4959 : f32 = u_xlat10.z;
            txVec82 = vec3<f32>(x_4957.x, x_4957.y, x_4959);
            let x_4966 : vec3<f32> = txVec82;
            let x_4968 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4966.xy, x_4966.z);
            u_xlat61.x = x_4968;
            let x_4971 : f32 = u_xlat24.y;
            let x_4973 : f32 = u_xlat61.x;
            let x_4975 : f32 = u_xlat85;
            u_xlat85 = ((x_4971 * x_4973) + x_4975);
            let x_4978 : vec2<f32> = u_xlat38;
            let x_4980 : f32 = u_xlat10.z;
            txVec83 = vec3<f32>(x_4978.x, x_4978.y, x_4980);
            let x_4987 : vec3<f32> = txVec83;
            let x_4989 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4987.xy, x_4987.z);
            u_xlat61.x = x_4989;
            let x_4992 : f32 = u_xlat24.z;
            let x_4994 : f32 = u_xlat61.x;
            let x_4996 : f32 = u_xlat85;
            u_xlat85 = ((x_4992 * x_4994) + x_4996);
            let x_4999 : vec2<f32> = u_xlat69;
            let x_5001 : f32 = u_xlat10.z;
            txVec84 = vec3<f32>(x_4999.x, x_4999.y, x_5001);
            let x_5008 : vec3<f32> = txVec84;
            let x_5010 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5008.xy, x_5008.z);
            u_xlat61.x = x_5010;
            let x_5013 : f32 = u_xlat24.w;
            let x_5015 : f32 = u_xlat61.x;
            let x_5017 : f32 = u_xlat85;
            u_xlat85 = ((x_5013 * x_5015) + x_5017);
            let x_5020 : vec4<f32> = u_xlat16;
            let x_5021 : vec2<f32> = vec2<f32>(x_5020.x, x_5020.y);
            let x_5023 : f32 = u_xlat10.z;
            txVec85 = vec3<f32>(x_5021.x, x_5021.y, x_5023);
            let x_5030 : vec3<f32> = txVec85;
            let x_5032 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5030.xy, x_5030.z);
            u_xlat61.x = x_5032;
            let x_5035 : f32 = u_xlat12.x;
            let x_5037 : f32 = u_xlat61.x;
            let x_5039 : f32 = u_xlat85;
            u_xlat85 = ((x_5035 * x_5037) + x_5039);
            let x_5042 : vec4<f32> = u_xlat16;
            let x_5043 : vec2<f32> = vec2<f32>(x_5042.z, x_5042.w);
            let x_5045 : f32 = u_xlat10.z;
            txVec86 = vec3<f32>(x_5043.x, x_5043.y, x_5045);
            let x_5052 : vec3<f32> = txVec86;
            let x_5054 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5052.xy, x_5052.z);
            u_xlat61.x = x_5054;
            let x_5057 : f32 = u_xlat12.y;
            let x_5059 : f32 = u_xlat61.x;
            let x_5061 : f32 = u_xlat85;
            u_xlat85 = ((x_5057 * x_5059) + x_5061);
            let x_5064 : vec2<f32> = u_xlat64;
            let x_5066 : f32 = u_xlat10.z;
            txVec87 = vec3<f32>(x_5064.x, x_5064.y, x_5066);
            let x_5073 : vec3<f32> = txVec87;
            let x_5075 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5073.xy, x_5073.z);
            u_xlat61.x = x_5075;
            let x_5078 : f32 = u_xlat12.z;
            let x_5080 : f32 = u_xlat61.x;
            let x_5082 : f32 = u_xlat85;
            u_xlat85 = ((x_5078 * x_5080) + x_5082);
            let x_5085 : vec4<f32> = u_xlat11;
            let x_5086 : vec2<f32> = vec2<f32>(x_5085.x, x_5085.y);
            let x_5088 : f32 = u_xlat10.z;
            txVec88 = vec3<f32>(x_5086.x, x_5086.y, x_5088);
            let x_5095 : vec3<f32> = txVec88;
            let x_5097 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5095.xy, x_5095.z);
            u_xlat11.x = x_5097;
            let x_5100 : f32 = u_xlat12.w;
            let x_5102 : f32 = u_xlat11.x;
            let x_5104 : f32 = u_xlat85;
            u_xlat84 = ((x_5100 * x_5102) + x_5104);
          }
        }
      } else {
        let x_5108 : vec4<f32> = u_xlat10;
        let x_5109 : vec2<f32> = vec2<f32>(x_5108.x, x_5108.y);
        let x_5111 : f32 = u_xlat10.z;
        txVec89 = vec3<f32>(x_5109.x, x_5109.y, x_5111);
        let x_5118 : vec3<f32> = txVec89;
        let x_5120 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5118.xy, x_5118.z);
        u_xlat84 = x_5120;
      }
      let x_5121 : i32 = u_xlati79;
      let x_5123 : f32 = x_371.x_AdditionalShadowParams[x_5121].x;
      u_xlat10.x = (1.0f + -(x_5123));
      let x_5127 : f32 = u_xlat84;
      let x_5128 : i32 = u_xlati79;
      let x_5130 : f32 = x_371.x_AdditionalShadowParams[x_5128].x;
      let x_5133 : f32 = u_xlat10.x;
      u_xlat84 = ((x_5127 * x_5130) + x_5133);
      let x_5136 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_5136);
      let x_5141 : f32 = u_xlat10.z;
      u_xlatb35 = (x_5141 >= 1.0f);
      let x_5143 : bool = u_xlatb35;
      let x_5145 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_5143 | x_5145);
      let x_5149 : bool = u_xlatb10.x;
      let x_5150 : f32 = u_xlat84;
      u_xlat84 = select(x_5150, 1.0f, x_5149);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_5153 : f32 = u_xlat84;
    u_xlat10.x = (-(x_5153) + 1.0f);
    let x_5158 : f32 = u_xlat2.x;
    let x_5160 : f32 = u_xlat10.x;
    let x_5162 : f32 = u_xlat84;
    u_xlat84 = ((x_5158 * x_5160) + x_5162);
    let x_5164 : f32 = u_xlat82;
    let x_5165 : f32 = u_xlat84;
    u_xlat82 = (x_5164 * x_5165);
    let x_5167 : vec3<f32> = u_xlat25;
    let x_5168 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(x_5167, vec3<f32>(x_5168.x, x_5168.y, x_5168.z));
    let x_5171 : f32 = u_xlat84;
    u_xlat84 = clamp(x_5171, 0.0f, 1.0f);
    let x_5173 : f32 = u_xlat82;
    let x_5174 : f32 = u_xlat84;
    u_xlat82 = (x_5173 * x_5174);
    let x_5176 : f32 = u_xlat82;
    let x_5178 : i32 = u_xlati79;
    let x_5180 : vec4<f32> = x_3673.x_AdditionalLightsColor[x_5178];
    let x_5182 : vec3<f32> = (vec3<f32>(x_5176, x_5176, x_5176) * vec3<f32>(x_5180.x, x_5180.y, x_5180.z));
    let x_5183 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_5182.x, x_5182.y, x_5182.z, x_5183.w);
    let x_5185 : vec4<f32> = u_xlat8;
    let x_5187 : f32 = u_xlat83;
    let x_5190 : vec3<f32> = u_xlat5;
    let x_5191 : vec3<f32> = ((vec3<f32>(x_5185.x, x_5185.y, x_5185.z) * vec3<f32>(x_5187, x_5187, x_5187)) + x_5190);
    let x_5192 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_5191.x, x_5191.y, x_5191.z, x_5192.w);
    let x_5194 : vec4<f32> = u_xlat8;
    let x_5196 : vec4<f32> = u_xlat8;
    u_xlat79 = dot(vec3<f32>(x_5194.x, x_5194.y, x_5194.z), vec3<f32>(x_5196.x, x_5196.y, x_5196.z));
    let x_5199 : f32 = u_xlat79;
    u_xlat79 = max(x_5199, 1.17549435e-38f);
    let x_5201 : f32 = u_xlat79;
    u_xlat79 = inverseSqrt(x_5201);
    let x_5203 : f32 = u_xlat79;
    let x_5205 : vec4<f32> = u_xlat8;
    let x_5207 : vec3<f32> = (vec3<f32>(x_5203, x_5203, x_5203) * vec3<f32>(x_5205.x, x_5205.y, x_5205.z));
    let x_5208 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_5207.x, x_5207.y, x_5207.z, x_5208.w);
    let x_5210 : vec3<f32> = u_xlat25;
    let x_5211 : vec4<f32> = u_xlat8;
    u_xlat79 = dot(x_5210, vec3<f32>(x_5211.x, x_5211.y, x_5211.z));
    let x_5214 : f32 = u_xlat79;
    u_xlat79 = clamp(x_5214, 0.0f, 1.0f);
    let x_5216 : vec4<f32> = u_xlat9;
    let x_5218 : vec4<f32> = u_xlat8;
    u_xlat82 = dot(vec3<f32>(x_5216.x, x_5216.y, x_5216.z), vec3<f32>(x_5218.x, x_5218.y, x_5218.z));
    let x_5221 : f32 = u_xlat82;
    u_xlat82 = clamp(x_5221, 0.0f, 1.0f);
    let x_5223 : f32 = u_xlat79;
    let x_5224 : f32 = u_xlat79;
    u_xlat79 = (x_5223 * x_5224);
    let x_5226 : f32 = u_xlat79;
    let x_5228 : f32 = u_xlat52.x;
    u_xlat79 = ((x_5226 * x_5228) + 1.00001001358032226562f);
    let x_5231 : f32 = u_xlat82;
    let x_5232 : f32 = u_xlat82;
    u_xlat82 = (x_5231 * x_5232);
    let x_5234 : f32 = u_xlat79;
    let x_5235 : f32 = u_xlat79;
    u_xlat79 = (x_5234 * x_5235);
    let x_5237 : f32 = u_xlat82;
    u_xlat82 = max(x_5237, 0.10000000149011611938f);
    let x_5239 : f32 = u_xlat79;
    let x_5240 : f32 = u_xlat82;
    u_xlat79 = (x_5239 * x_5240);
    let x_5242 : f32 = u_xlat80;
    let x_5243 : f32 = u_xlat79;
    u_xlat79 = (x_5242 * x_5243);
    let x_5245 : f32 = u_xlat78;
    let x_5246 : f32 = u_xlat79;
    u_xlat79 = (x_5245 / x_5246);
    let x_5248 : f32 = u_xlat79;
    let x_5251 : vec3<f32> = u_xlat4;
    let x_5252 : vec3<f32> = ((vec3<f32>(x_5248, x_5248, x_5248) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_5251);
    let x_5253 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_5252.x, x_5252.y, x_5252.z, x_5253.w);
    let x_5255 : vec4<f32> = u_xlat8;
    let x_5257 : vec4<f32> = u_xlat10;
    let x_5260 : vec4<f32> = u_xlat7;
    let x_5262 : vec3<f32> = ((vec3<f32>(x_5255.x, x_5255.y, x_5255.z) * vec3<f32>(x_5257.x, x_5257.y, x_5257.z)) + vec3<f32>(x_5260.x, x_5260.y, x_5260.z));
    let x_5263 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_5262.x, x_5262.y, x_5262.z, x_5263.w);

    continuing {
      let x_5265 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_5265 + bitcast<u32>(1i));
    }
  }
  let x_5267 : vec4<f32> = u_xlat3;
  let x_5269 : vec4<f32> = u_xlat6;
  let x_5272 : vec3<f32> = u_xlat31;
  u_xlat0 = ((vec3<f32>(x_5267.x, x_5267.y, x_5267.z) * vec3<f32>(x_5269.x, x_5269.x, x_5269.x)) + x_5272);
  let x_5274 : vec4<f32> = u_xlat7;
  let x_5276 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_5274.x, x_5274.y, x_5274.z) + x_5276);
  let x_5280 : vec4<f32> = vs_INTERP6;
  let x_5282 : vec3<f32> = u_xlat1;
  let x_5284 : vec3<f32> = u_xlat0;
  let x_5285 : vec3<f32> = ((vec3<f32>(x_5280.w, x_5280.w, x_5280.w) * x_5282) + x_5284);
  let x_5286 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_5285.x, x_5285.y, x_5285.z, x_5286.w);
  let x_5288 : bool = u_xlatb27;
  let x_5289 : f32 = u_xlat76;
  SV_Target0.w = select(1.0f, x_5289, x_5288);
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


