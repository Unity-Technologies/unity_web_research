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
  unity_OrthoParams : vec4<f32>,
  /* @offset(96) */
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

alias Arr = array<mat4x4<f32>, 5u>;

alias Arr_1 = array<vec4<f32>, 32u>;

alias Arr_2 = array<mat4x4<f32>, 32u>;

alias Arr_3 = array<vec4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr,
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
  x_AdditionalShadowParams : Arr_3,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_2,
}

alias Arr_4 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_4,
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
  x_AdditionalLightsPosition : Arr_3,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_3,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_3,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_3,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_3,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_INTERP9 : vec3<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(3) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(7) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_53 : PGlobals;

var<private> u_xlat2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_65 : UnityPerMaterial;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(4) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(8) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat78 : f32;

var<private> u_xlat29 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

var<private> vs_INTERP8 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_131 : LightShadows;

var<private> u_xlatb78 : bool;

var<private> u_xlatb80 : bool;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat80 : f32;

var<private> u_xlatb82 : bool;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat82 : f32;

var<private> u_xlat31 : f32;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat65 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlatb30 : bool;

var<private> u_xlatb56 : bool;

var<private> u_xlat30 : vec3<f32>;

var<private> u_xlatb1 : bool;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat53 : f32;

var<private> u_xlat79 : f32;

var<private> u_xlatb53 : bool;

var<private> u_xlatb27 : vec3<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_1585 : UnityPerDraw;

var<private> u_xlat56 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat83 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlat35 : vec2<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlatb4 : bool;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu78 : u32;

var<private> u_xlatu4 : u32;

var<private> u_xlati82 : i32;

var<private> u_xlati4 : i32;

@group(1) @binding(1) var<uniform> x_3376 : AdditionalLights;

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

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu81 : u32;

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
  var x_1498 : f32;
  var x_1546 : f32;
  var x_1674 : f32;
  var x_1686 : f32;
  var x_1698 : f32;
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
  var x_3513 : f32;
  var x_3523 : f32;
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
  var x_4951 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_INTERP9;
  let x_13 : vec3<f32> = vs_INTERP9;
  u_xlat0.x = dot(x_12, x_13);
  let x_20 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_20);
  let x_25 : f32 = u_xlat0.x;
  u_xlat0.x = (1.0f / x_25);
  let x_28 : vec3<f32> = u_xlat0;
  let x_30 : vec3<f32> = vs_INTERP9;
  u_xlat0 = (vec3<f32>(x_28.x, x_28.x, x_28.x) * x_30);
  let x_48 : vec4<f32> = vs_INTERP5;
  let x_58 : f32 = x_53.x_GlobalMipBias.x;
  let x_59 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_48.x, x_48.y), x_58);
  u_xlat1 = x_59;
  let x_61 : vec4<f32> = u_xlat1;
  let x_69 : vec4<f32> = x_65.Color_C30C7CA3;
  u_xlat2 = (vec3<f32>(x_61.x, x_61.y, x_61.z) * vec3<f32>(x_69.x, x_69.y, x_69.z));
  let x_78 : vec4<f32> = vs_INTERP5;
  let x_81 : f32 = x_53.x_GlobalMipBias.x;
  let x_82 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_78.x, x_78.y), x_81);
  u_xlat3 = vec4<f32>(x_82.w, x_82.x, x_82.y, x_82.z);
  let x_85 : vec4<f32> = u_xlat3;
  u_xlat4 = ((vec4<f32>(x_85.y, x_85.z, x_85.w, x_85.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_94 : vec4<f32> = u_xlat4;
  let x_95 : vec4<f32> = u_xlat4;
  u_xlat78 = dot(x_94, x_95);
  let x_97 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_97);
  let x_100 : f32 = u_xlat78;
  let x_102 : vec4<f32> = u_xlat4;
  u_xlat29 = (vec3<f32>(x_100, x_100, x_100) * vec3<f32>(x_102.x, x_102.y, x_102.z));
  let x_109 : f32 = vs_INTERP6.y;
  u_xlat78 = (x_109 * 200.0f);
  let x_112 : f32 = u_xlat78;
  u_xlat78 = min(x_112, 1.0f);
  let x_114 : f32 = u_xlat78;
  let x_116 : vec4<f32> = u_xlat1;
  let x_118 : vec3<f32> = (vec3<f32>(x_114, x_114, x_114) * vec3<f32>(x_116.x, x_116.y, x_116.z));
  let x_119 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_118.x, x_118.y, x_118.z, x_119.w);
  let x_122 : vec3<f32> = vs_INTERP8;
  let x_133 : vec4<f32> = x_131.x_MainLightWorldToShadow[0i][1i];
  let x_135 : vec3<f32> = (vec3<f32>(x_122.y, x_122.y, x_122.y) * vec3<f32>(x_133.x, x_133.y, x_133.z));
  let x_136 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_135.x, x_135.y, x_135.z, x_136.w);
  let x_139 : vec4<f32> = x_131.x_MainLightWorldToShadow[0i][0i];
  let x_141 : vec3<f32> = vs_INTERP8;
  let x_144 : vec4<f32> = u_xlat4;
  let x_146 : vec3<f32> = ((vec3<f32>(x_139.x, x_139.y, x_139.z) * vec3<f32>(x_141.x, x_141.x, x_141.x)) + vec3<f32>(x_144.x, x_144.y, x_144.z));
  let x_147 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_146.x, x_146.y, x_146.z, x_147.w);
  let x_151 : vec4<f32> = x_131.x_MainLightWorldToShadow[0i][2i];
  let x_153 : vec3<f32> = vs_INTERP8;
  let x_156 : vec4<f32> = u_xlat4;
  let x_158 : vec3<f32> = ((vec3<f32>(x_151.x, x_151.y, x_151.z) * vec3<f32>(x_153.z, x_153.z, x_153.z)) + vec3<f32>(x_156.x, x_156.y, x_156.z));
  let x_159 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_158.x, x_158.y, x_158.z, x_159.w);
  let x_161 : vec4<f32> = u_xlat4;
  let x_165 : vec4<f32> = x_131.x_MainLightWorldToShadow[0i][3i];
  let x_167 : vec3<f32> = (vec3<f32>(x_161.x, x_161.y, x_161.z) + vec3<f32>(x_165.x, x_165.y, x_165.z));
  let x_168 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_167.x, x_167.y, x_167.z, x_168.w);
  let x_176 : f32 = x_131.x_MainLightShadowParams.y;
  u_xlatb78 = (0.0f < x_176);
  let x_178 : bool = u_xlatb78;
  if (x_178) {
    let x_183 : f32 = x_131.x_MainLightShadowParams.y;
    u_xlatb80 = (x_183 == 1.0f);
    let x_185 : bool = u_xlatb80;
    if (x_185) {
      let x_189 : vec4<f32> = u_xlat4;
      let x_193 : vec4<f32> = x_131.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_189.x, x_189.y, x_189.x, x_189.y) + x_193);
      let x_197 : vec4<f32> = u_xlat5;
      let x_198 : vec2<f32> = vec2<f32>(x_197.x, x_197.y);
      let x_201 : f32 = u_xlat4.z;
      txVec0 = vec3<f32>(x_198.x, x_198.y, x_201);
      let x_214 : vec3<f32> = txVec0;
      let x_216 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_214.xy, x_214.z);
      u_xlat6.x = x_216;
      let x_219 : vec4<f32> = u_xlat5;
      let x_220 : vec2<f32> = vec2<f32>(x_219.z, x_219.w);
      let x_222 : f32 = u_xlat4.z;
      txVec1 = vec3<f32>(x_220.x, x_220.y, x_222);
      let x_229 : vec3<f32> = txVec1;
      let x_231 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_229.xy, x_229.z);
      u_xlat6.y = x_231;
      let x_233 : vec4<f32> = u_xlat4;
      let x_237 : vec4<f32> = x_131.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_233.x, x_233.y, x_233.x, x_233.y) + x_237);
      let x_240 : vec4<f32> = u_xlat5;
      let x_241 : vec2<f32> = vec2<f32>(x_240.x, x_240.y);
      let x_243 : f32 = u_xlat4.z;
      txVec2 = vec3<f32>(x_241.x, x_241.y, x_243);
      let x_250 : vec3<f32> = txVec2;
      let x_252 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_250.xy, x_250.z);
      u_xlat6.z = x_252;
      let x_255 : vec4<f32> = u_xlat5;
      let x_256 : vec2<f32> = vec2<f32>(x_255.z, x_255.w);
      let x_258 : f32 = u_xlat4.z;
      txVec3 = vec3<f32>(x_256.x, x_256.y, x_258);
      let x_265 : vec3<f32> = txVec3;
      let x_267 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_265.xy, x_265.z);
      u_xlat6.w = x_267;
      let x_271 : vec4<f32> = u_xlat6;
      u_xlat80 = dot(x_271, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_278 : f32 = x_131.x_MainLightShadowParams.y;
      u_xlatb82 = (x_278 == 2.0f);
      let x_280 : bool = u_xlatb82;
      if (x_280) {
        let x_283 : vec4<f32> = u_xlat4;
        let x_287 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_292 : vec2<f32> = ((vec2<f32>(x_283.x, x_283.y) * vec2<f32>(x_287.z, x_287.w)) + vec2<f32>(0.5f, 0.5f));
        let x_293 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_292.x, x_292.y, x_293.z, x_293.w);
        let x_295 : vec4<f32> = u_xlat5;
        let x_297 : vec2<f32> = floor(vec2<f32>(x_295.x, x_295.y));
        let x_298 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_297.x, x_297.y, x_298.z, x_298.w);
        let x_302 : vec4<f32> = u_xlat4;
        let x_305 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_308 : vec4<f32> = u_xlat5;
        u_xlat57 = ((vec2<f32>(x_302.x, x_302.y) * vec2<f32>(x_305.z, x_305.w)) + -(vec2<f32>(x_308.x, x_308.y)));
        let x_312 : vec2<f32> = u_xlat57;
        u_xlat6 = (vec4<f32>(x_312.x, x_312.x, x_312.y, x_312.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_317 : vec4<f32> = u_xlat6;
        let x_319 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_317.x, x_317.x, x_317.z, x_317.z) * vec4<f32>(x_319.x, x_319.x, x_319.z, x_319.z));
        let x_322 : vec4<f32> = u_xlat7;
        let x_326 : vec2<f32> = (vec2<f32>(x_322.y, x_322.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_327 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_326.x, x_327.y, x_326.y, x_327.w);
        let x_329 : vec4<f32> = u_xlat7;
        let x_332 : vec2<f32> = u_xlat57;
        let x_334 : vec2<f32> = ((vec2<f32>(x_329.x, x_329.z) * vec2<f32>(0.5f, 0.5f)) + -(x_332));
        let x_335 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_334.x, x_334.y, x_335.z, x_335.w);
        let x_338 : vec2<f32> = u_xlat57;
        u_xlat59 = (-(x_338) + vec2<f32>(1.0f, 1.0f));
        let x_343 : vec2<f32> = u_xlat57;
        let x_345 : vec2<f32> = min(x_343, vec2<f32>(0.0f, 0.0f));
        let x_346 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_345.x, x_345.y, x_346.z, x_346.w);
        let x_348 : vec4<f32> = u_xlat8;
        let x_351 : vec4<f32> = u_xlat8;
        let x_354 : vec2<f32> = u_xlat59;
        let x_355 : vec2<f32> = ((-(vec2<f32>(x_348.x, x_348.y)) * vec2<f32>(x_351.x, x_351.y)) + x_354);
        let x_356 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_355.x, x_355.y, x_356.z, x_356.w);
        let x_358 : vec2<f32> = u_xlat57;
        u_xlat57 = max(x_358, vec2<f32>(0.0f, 0.0f));
        let x_360 : vec2<f32> = u_xlat57;
        let x_362 : vec2<f32> = u_xlat57;
        let x_364 : vec4<f32> = u_xlat6;
        u_xlat57 = ((-(x_360) * x_362) + vec2<f32>(x_364.y, x_364.w));
        let x_367 : vec4<f32> = u_xlat8;
        let x_369 : vec2<f32> = (vec2<f32>(x_367.x, x_367.y) + vec2<f32>(1.0f, 1.0f));
        let x_370 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_369.x, x_369.y, x_370.z, x_370.w);
        let x_372 : vec2<f32> = u_xlat57;
        u_xlat57 = (x_372 + vec2<f32>(1.0f, 1.0f));
        let x_375 : vec4<f32> = u_xlat7;
        let x_379 : vec2<f32> = (vec2<f32>(x_375.x, x_375.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_380 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_379.x, x_379.y, x_380.z, x_380.w);
        let x_382 : vec2<f32> = u_xlat59;
        let x_383 : vec2<f32> = (x_382 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_384 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_383.x, x_383.y, x_384.z, x_384.w);
        let x_386 : vec4<f32> = u_xlat8;
        let x_388 : vec2<f32> = (vec2<f32>(x_386.x, x_386.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_389 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_388.x, x_388.y, x_389.z, x_389.w);
        let x_392 : vec2<f32> = u_xlat57;
        let x_393 : vec2<f32> = (x_392 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_394 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_393.x, x_393.y, x_394.z, x_394.w);
        let x_396 : vec4<f32> = u_xlat6;
        u_xlat57 = (vec2<f32>(x_396.y, x_396.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_400 : f32 = u_xlat8.x;
        u_xlat9.z = x_400;
        let x_403 : f32 = u_xlat57.x;
        u_xlat9.w = x_403;
        let x_406 : f32 = u_xlat10.x;
        u_xlat7.z = x_406;
        let x_409 : f32 = u_xlat6.x;
        u_xlat7.w = x_409;
        let x_412 : vec4<f32> = u_xlat7;
        let x_414 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_412.z, x_412.w, x_412.x, x_412.z) + vec4<f32>(x_414.z, x_414.w, x_414.x, x_414.z));
        let x_418 : f32 = u_xlat9.y;
        u_xlat8.z = x_418;
        let x_421 : f32 = u_xlat57.y;
        u_xlat8.w = x_421;
        let x_424 : f32 = u_xlat7.y;
        u_xlat10.z = x_424;
        let x_427 : f32 = u_xlat6.z;
        u_xlat10.w = x_427;
        let x_429 : vec4<f32> = u_xlat8;
        let x_431 : vec4<f32> = u_xlat10;
        let x_433 : vec3<f32> = (vec3<f32>(x_429.z, x_429.y, x_429.w) + vec3<f32>(x_431.z, x_431.y, x_431.w));
        let x_434 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_433.x, x_433.y, x_433.z, x_434.w);
        let x_436 : vec4<f32> = u_xlat7;
        let x_438 : vec4<f32> = u_xlat11;
        let x_440 : vec3<f32> = (vec3<f32>(x_436.x, x_436.z, x_436.w) / vec3<f32>(x_438.z, x_438.w, x_438.y));
        let x_441 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_440.x, x_440.y, x_440.z, x_441.w);
        let x_443 : vec4<f32> = u_xlat7;
        let x_449 : vec3<f32> = (vec3<f32>(x_443.x, x_443.y, x_443.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_450 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_449.x, x_449.y, x_449.z, x_450.w);
        let x_452 : vec4<f32> = u_xlat10;
        let x_454 : vec4<f32> = u_xlat6;
        let x_456 : vec3<f32> = (vec3<f32>(x_452.z, x_452.y, x_452.w) / vec3<f32>(x_454.x, x_454.y, x_454.z));
        let x_457 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_456.x, x_456.y, x_456.z, x_457.w);
        let x_459 : vec4<f32> = u_xlat8;
        let x_461 : vec3<f32> = (vec3<f32>(x_459.x, x_459.y, x_459.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_462 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_461.x, x_461.y, x_461.z, x_462.w);
        let x_464 : vec4<f32> = u_xlat7;
        let x_467 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_469 : vec3<f32> = (vec3<f32>(x_464.y, x_464.x, x_464.z) * vec3<f32>(x_467.x, x_467.x, x_467.x));
        let x_470 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_469.x, x_469.y, x_469.z, x_470.w);
        let x_472 : vec4<f32> = u_xlat8;
        let x_475 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_477 : vec3<f32> = (vec3<f32>(x_472.x, x_472.y, x_472.z) * vec3<f32>(x_475.y, x_475.y, x_475.y));
        let x_478 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_477.x, x_477.y, x_477.z, x_478.w);
        let x_481 : f32 = u_xlat8.x;
        u_xlat7.w = x_481;
        let x_483 : vec4<f32> = u_xlat5;
        let x_486 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_489 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_483.x, x_483.y, x_483.x, x_483.y) * vec4<f32>(x_486.x, x_486.y, x_486.x, x_486.y)) + vec4<f32>(x_489.y, x_489.w, x_489.x, x_489.w));
        let x_492 : vec4<f32> = u_xlat5;
        let x_495 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_498 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_492.x, x_492.y) * vec2<f32>(x_495.x, x_495.y)) + vec2<f32>(x_498.z, x_498.w));
        let x_502 : f32 = u_xlat7.y;
        u_xlat8.w = x_502;
        let x_504 : vec4<f32> = u_xlat8;
        let x_505 : vec2<f32> = vec2<f32>(x_504.y, x_504.z);
        let x_506 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_506.x, x_505.x, x_506.z, x_505.y);
        let x_508 : vec4<f32> = u_xlat5;
        let x_511 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_514 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_508.x, x_508.y, x_508.x, x_508.y) * vec4<f32>(x_511.x, x_511.y, x_511.x, x_511.y)) + vec4<f32>(x_514.x, x_514.y, x_514.z, x_514.y));
        let x_517 : vec4<f32> = u_xlat5;
        let x_520 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_523 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_517.x, x_517.y, x_517.x, x_517.y) * vec4<f32>(x_520.x, x_520.y, x_520.x, x_520.y)) + vec4<f32>(x_523.w, x_523.y, x_523.w, x_523.z));
        let x_526 : vec4<f32> = u_xlat5;
        let x_529 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_532 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_526.x, x_526.y, x_526.x, x_526.y) * vec4<f32>(x_529.x, x_529.y, x_529.x, x_529.y)) + vec4<f32>(x_532.x, x_532.w, x_532.z, x_532.w));
        let x_536 : vec4<f32> = u_xlat6;
        let x_538 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_536.x, x_536.x, x_536.x, x_536.y) * vec4<f32>(x_538.z, x_538.w, x_538.y, x_538.z));
        let x_542 : vec4<f32> = u_xlat6;
        let x_544 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_542.y, x_542.y, x_542.z, x_542.z) * x_544);
        let x_548 : f32 = u_xlat6.z;
        let x_550 : f32 = u_xlat11.y;
        u_xlat82 = (x_548 * x_550);
        let x_553 : vec4<f32> = u_xlat9;
        let x_554 : vec2<f32> = vec2<f32>(x_553.x, x_553.y);
        let x_556 : f32 = u_xlat4.z;
        txVec4 = vec3<f32>(x_554.x, x_554.y, x_556);
        let x_563 : vec3<f32> = txVec4;
        let x_565 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_563.xy, x_563.z);
        u_xlat5.x = x_565;
        let x_568 : vec4<f32> = u_xlat9;
        let x_569 : vec2<f32> = vec2<f32>(x_568.z, x_568.w);
        let x_571 : f32 = u_xlat4.z;
        txVec5 = vec3<f32>(x_569.x, x_569.y, x_571);
        let x_579 : vec3<f32> = txVec5;
        let x_581 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_579.xy, x_579.z);
        u_xlat31 = x_581;
        let x_582 : f32 = u_xlat31;
        let x_584 : f32 = u_xlat12.y;
        u_xlat31 = (x_582 * x_584);
        let x_587 : f32 = u_xlat12.x;
        let x_589 : f32 = u_xlat5.x;
        let x_591 : f32 = u_xlat31;
        u_xlat5.x = ((x_587 * x_589) + x_591);
        let x_595 : vec2<f32> = u_xlat57;
        let x_597 : f32 = u_xlat4.z;
        txVec6 = vec3<f32>(x_595.x, x_595.y, x_597);
        let x_604 : vec3<f32> = txVec6;
        let x_606 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_604.xy, x_604.z);
        u_xlat31 = x_606;
        let x_608 : f32 = u_xlat12.z;
        let x_609 : f32 = u_xlat31;
        let x_612 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_608 * x_609) + x_612);
        let x_616 : vec4<f32> = u_xlat8;
        let x_617 : vec2<f32> = vec2<f32>(x_616.x, x_616.y);
        let x_619 : f32 = u_xlat4.z;
        txVec7 = vec3<f32>(x_617.x, x_617.y, x_619);
        let x_626 : vec3<f32> = txVec7;
        let x_628 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_626.xy, x_626.z);
        u_xlat31 = x_628;
        let x_630 : f32 = u_xlat12.w;
        let x_631 : f32 = u_xlat31;
        let x_634 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_630 * x_631) + x_634);
        let x_638 : vec4<f32> = u_xlat10;
        let x_639 : vec2<f32> = vec2<f32>(x_638.x, x_638.y);
        let x_641 : f32 = u_xlat4.z;
        txVec8 = vec3<f32>(x_639.x, x_639.y, x_641);
        let x_648 : vec3<f32> = txVec8;
        let x_650 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_648.xy, x_648.z);
        u_xlat31 = x_650;
        let x_652 : f32 = u_xlat13.x;
        let x_653 : f32 = u_xlat31;
        let x_656 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_652 * x_653) + x_656);
        let x_660 : vec4<f32> = u_xlat10;
        let x_661 : vec2<f32> = vec2<f32>(x_660.z, x_660.w);
        let x_663 : f32 = u_xlat4.z;
        txVec9 = vec3<f32>(x_661.x, x_661.y, x_663);
        let x_670 : vec3<f32> = txVec9;
        let x_672 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_670.xy, x_670.z);
        u_xlat31 = x_672;
        let x_674 : f32 = u_xlat13.y;
        let x_675 : f32 = u_xlat31;
        let x_678 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_674 * x_675) + x_678);
        let x_682 : vec4<f32> = u_xlat8;
        let x_683 : vec2<f32> = vec2<f32>(x_682.z, x_682.w);
        let x_685 : f32 = u_xlat4.z;
        txVec10 = vec3<f32>(x_683.x, x_683.y, x_685);
        let x_692 : vec3<f32> = txVec10;
        let x_694 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_692.xy, x_692.z);
        u_xlat31 = x_694;
        let x_696 : f32 = u_xlat13.z;
        let x_697 : f32 = u_xlat31;
        let x_700 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_696 * x_697) + x_700);
        let x_704 : vec4<f32> = u_xlat7;
        let x_705 : vec2<f32> = vec2<f32>(x_704.x, x_704.y);
        let x_707 : f32 = u_xlat4.z;
        txVec11 = vec3<f32>(x_705.x, x_705.y, x_707);
        let x_714 : vec3<f32> = txVec11;
        let x_716 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_714.xy, x_714.z);
        u_xlat31 = x_716;
        let x_718 : f32 = u_xlat13.w;
        let x_719 : f32 = u_xlat31;
        let x_722 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_718 * x_719) + x_722);
        let x_726 : vec4<f32> = u_xlat7;
        let x_727 : vec2<f32> = vec2<f32>(x_726.z, x_726.w);
        let x_729 : f32 = u_xlat4.z;
        txVec12 = vec3<f32>(x_727.x, x_727.y, x_729);
        let x_736 : vec3<f32> = txVec12;
        let x_738 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_736.xy, x_736.z);
        u_xlat31 = x_738;
        let x_739 : f32 = u_xlat82;
        let x_740 : f32 = u_xlat31;
        let x_743 : f32 = u_xlat5.x;
        u_xlat80 = ((x_739 * x_740) + x_743);
      } else {
        let x_746 : vec4<f32> = u_xlat4;
        let x_749 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_752 : vec2<f32> = ((vec2<f32>(x_746.x, x_746.y) * vec2<f32>(x_749.z, x_749.w)) + vec2<f32>(0.5f, 0.5f));
        let x_753 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_752.x, x_752.y, x_753.z, x_753.w);
        let x_755 : vec4<f32> = u_xlat5;
        let x_757 : vec2<f32> = floor(vec2<f32>(x_755.x, x_755.y));
        let x_758 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_757.x, x_757.y, x_758.z, x_758.w);
        let x_760 : vec4<f32> = u_xlat4;
        let x_763 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_766 : vec4<f32> = u_xlat5;
        u_xlat57 = ((vec2<f32>(x_760.x, x_760.y) * vec2<f32>(x_763.z, x_763.w)) + -(vec2<f32>(x_766.x, x_766.y)));
        let x_770 : vec2<f32> = u_xlat57;
        u_xlat6 = (vec4<f32>(x_770.x, x_770.x, x_770.y, x_770.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_773 : vec4<f32> = u_xlat6;
        let x_775 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_773.x, x_773.x, x_773.z, x_773.z) * vec4<f32>(x_775.x, x_775.x, x_775.z, x_775.z));
        let x_778 : vec4<f32> = u_xlat7;
        let x_782 : vec2<f32> = (vec2<f32>(x_778.y, x_778.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_783 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_783.x, x_782.x, x_783.z, x_782.y);
        let x_785 : vec4<f32> = u_xlat7;
        let x_788 : vec2<f32> = u_xlat57;
        let x_790 : vec2<f32> = ((vec2<f32>(x_785.x, x_785.z) * vec2<f32>(0.5f, 0.5f)) + -(x_788));
        let x_791 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_790.x, x_791.y, x_790.y, x_791.w);
        let x_793 : vec2<f32> = u_xlat57;
        let x_795 : vec2<f32> = (-(x_793) + vec2<f32>(1.0f, 1.0f));
        let x_796 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_795.x, x_795.y, x_796.z, x_796.w);
        let x_798 : vec2<f32> = u_xlat57;
        u_xlat59 = min(x_798, vec2<f32>(0.0f, 0.0f));
        let x_800 : vec2<f32> = u_xlat59;
        let x_802 : vec2<f32> = u_xlat59;
        let x_804 : vec4<f32> = u_xlat7;
        let x_806 : vec2<f32> = ((-(x_800) * x_802) + vec2<f32>(x_804.x, x_804.y));
        let x_807 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_806.x, x_806.y, x_807.z, x_807.w);
        let x_809 : vec2<f32> = u_xlat57;
        u_xlat59 = max(x_809, vec2<f32>(0.0f, 0.0f));
        let x_812 : vec2<f32> = u_xlat59;
        let x_814 : vec2<f32> = u_xlat59;
        let x_816 : vec4<f32> = u_xlat6;
        let x_818 : vec2<f32> = ((-(x_812) * x_814) + vec2<f32>(x_816.y, x_816.w));
        let x_819 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_818.x, x_819.y, x_818.y);
        let x_821 : vec4<f32> = u_xlat7;
        let x_824 : vec2<f32> = (vec2<f32>(x_821.x, x_821.y) + vec2<f32>(2.0f, 2.0f));
        let x_825 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_824.x, x_824.y, x_825.z, x_825.w);
        let x_827 : vec3<f32> = u_xlat32;
        let x_829 : vec2<f32> = (vec2<f32>(x_827.x, x_827.z) + vec2<f32>(2.0f, 2.0f));
        let x_830 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_830.x, x_829.x, x_830.z, x_829.y);
        let x_833 : f32 = u_xlat6.y;
        u_xlat9.z = (x_833 * 0.08163200318813323975f);
        let x_837 : vec4<f32> = u_xlat6;
        let x_840 : vec3<f32> = (vec3<f32>(x_837.z, x_837.x, x_837.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_841 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_840.x, x_840.y, x_840.z, x_841.w);
        let x_843 : vec4<f32> = u_xlat7;
        let x_846 : vec2<f32> = (vec2<f32>(x_843.x, x_843.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_847 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_846.x, x_846.y, x_847.z, x_847.w);
        let x_850 : f32 = u_xlat10.y;
        u_xlat9.x = x_850;
        let x_852 : vec2<f32> = u_xlat57;
        let x_859 : vec2<f32> = ((vec2<f32>(x_852.x, x_852.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_860 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_860.x, x_859.x, x_860.z, x_859.y);
        let x_862 : vec2<f32> = u_xlat57;
        let x_866 : vec2<f32> = ((vec2<f32>(x_862.x, x_862.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_867 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_866.x, x_867.y, x_866.y, x_867.w);
        let x_870 : f32 = u_xlat6.x;
        u_xlat7.y = x_870;
        let x_873 : f32 = u_xlat8.y;
        u_xlat7.w = x_873;
        let x_875 : vec4<f32> = u_xlat7;
        let x_876 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_875 + x_876);
        let x_878 : vec2<f32> = u_xlat57;
        let x_881 : vec2<f32> = ((vec2<f32>(x_878.y, x_878.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_882 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_882.x, x_881.x, x_882.z, x_881.y);
        let x_884 : vec2<f32> = u_xlat57;
        let x_887 : vec2<f32> = ((vec2<f32>(x_884.y, x_884.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_888 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_887.x, x_888.y, x_887.y, x_888.w);
        let x_891 : f32 = u_xlat6.y;
        u_xlat8.y = x_891;
        let x_893 : vec4<f32> = u_xlat8;
        let x_894 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_893 + x_894);
        let x_896 : vec4<f32> = u_xlat7;
        let x_897 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_896 / x_897);
        let x_899 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_899 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_905 : vec4<f32> = u_xlat8;
        let x_906 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_905 / x_906);
        let x_908 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_908 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_910 : vec4<f32> = u_xlat7;
        let x_913 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_910.w, x_910.x, x_910.y, x_910.z) * vec4<f32>(x_913.x, x_913.x, x_913.x, x_913.x));
        let x_916 : vec4<f32> = u_xlat8;
        let x_919 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_916.x, x_916.w, x_916.y, x_916.z) * vec4<f32>(x_919.y, x_919.y, x_919.y, x_919.y));
        let x_922 : vec4<f32> = u_xlat7;
        let x_923 : vec3<f32> = vec3<f32>(x_922.y, x_922.z, x_922.w);
        let x_924 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_923.x, x_924.y, x_923.y, x_923.z);
        let x_927 : f32 = u_xlat8.x;
        u_xlat10.y = x_927;
        let x_929 : vec4<f32> = u_xlat5;
        let x_932 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_935 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_929.x, x_929.y, x_929.x, x_929.y) * vec4<f32>(x_932.x, x_932.y, x_932.x, x_932.y)) + vec4<f32>(x_935.x, x_935.y, x_935.z, x_935.y));
        let x_938 : vec4<f32> = u_xlat5;
        let x_941 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_944 : vec4<f32> = u_xlat10;
        u_xlat57 = ((vec2<f32>(x_938.x, x_938.y) * vec2<f32>(x_941.x, x_941.y)) + vec2<f32>(x_944.w, x_944.y));
        let x_948 : f32 = u_xlat10.y;
        u_xlat7.y = x_948;
        let x_951 : f32 = u_xlat8.z;
        u_xlat10.y = x_951;
        let x_953 : vec4<f32> = u_xlat5;
        let x_956 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_959 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_953.x, x_953.y, x_953.x, x_953.y) * vec4<f32>(x_956.x, x_956.y, x_956.x, x_956.y)) + vec4<f32>(x_959.x, x_959.y, x_959.z, x_959.y));
        let x_962 : vec4<f32> = u_xlat5;
        let x_965 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_968 : vec4<f32> = u_xlat10;
        let x_970 : vec2<f32> = ((vec2<f32>(x_962.x, x_962.y) * vec2<f32>(x_965.x, x_965.y)) + vec2<f32>(x_968.w, x_968.y));
        let x_971 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_970.x, x_970.y, x_971.z, x_971.w);
        let x_974 : f32 = u_xlat10.y;
        u_xlat7.z = x_974;
        let x_977 : vec4<f32> = u_xlat5;
        let x_980 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_983 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_977.x, x_977.y, x_977.x, x_977.y) * vec4<f32>(x_980.x, x_980.y, x_980.x, x_980.y)) + vec4<f32>(x_983.x, x_983.y, x_983.x, x_983.z));
        let x_987 : f32 = u_xlat8.w;
        u_xlat10.y = x_987;
        let x_990 : vec4<f32> = u_xlat5;
        let x_993 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_996 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_990.x, x_990.y, x_990.x, x_990.y) * vec4<f32>(x_993.x, x_993.y, x_993.x, x_993.y)) + vec4<f32>(x_996.x, x_996.y, x_996.z, x_996.y));
        let x_1000 : vec4<f32> = u_xlat5;
        let x_1003 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_1006 : vec4<f32> = u_xlat10;
        u_xlat33 = ((vec2<f32>(x_1000.x, x_1000.y) * vec2<f32>(x_1003.x, x_1003.y)) + vec2<f32>(x_1006.w, x_1006.y));
        let x_1010 : f32 = u_xlat10.y;
        u_xlat7.w = x_1010;
        let x_1013 : vec4<f32> = u_xlat5;
        let x_1016 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_1019 : vec4<f32> = u_xlat7;
        u_xlat65 = ((vec2<f32>(x_1013.x, x_1013.y) * vec2<f32>(x_1016.x, x_1016.y)) + vec2<f32>(x_1019.x, x_1019.w));
        let x_1022 : vec4<f32> = u_xlat10;
        let x_1023 : vec3<f32> = vec3<f32>(x_1022.x, x_1022.z, x_1022.w);
        let x_1024 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1023.x, x_1024.y, x_1023.y, x_1023.z);
        let x_1026 : vec4<f32> = u_xlat5;
        let x_1029 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_1032 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1026.x, x_1026.y, x_1026.x, x_1026.y) * vec4<f32>(x_1029.x, x_1029.y, x_1029.x, x_1029.y)) + vec4<f32>(x_1032.x, x_1032.y, x_1032.z, x_1032.y));
        let x_1036 : vec4<f32> = u_xlat5;
        let x_1039 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_1042 : vec4<f32> = u_xlat8;
        u_xlat60 = ((vec2<f32>(x_1036.x, x_1036.y) * vec2<f32>(x_1039.x, x_1039.y)) + vec2<f32>(x_1042.w, x_1042.y));
        let x_1046 : f32 = u_xlat7.x;
        u_xlat8.x = x_1046;
        let x_1048 : vec4<f32> = u_xlat5;
        let x_1051 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_1054 : vec4<f32> = u_xlat8;
        let x_1056 : vec2<f32> = ((vec2<f32>(x_1048.x, x_1048.y) * vec2<f32>(x_1051.x, x_1051.y)) + vec2<f32>(x_1054.x, x_1054.y));
        let x_1057 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1056.x, x_1056.y, x_1057.z, x_1057.w);
        let x_1060 : vec4<f32> = u_xlat6;
        let x_1062 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1060.x, x_1060.x, x_1060.x, x_1060.x) * x_1062);
        let x_1065 : vec4<f32> = u_xlat6;
        let x_1067 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1065.y, x_1065.y, x_1065.y, x_1065.y) * x_1067);
        let x_1070 : vec4<f32> = u_xlat6;
        let x_1072 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1070.z, x_1070.z, x_1070.z, x_1070.z) * x_1072);
        let x_1074 : vec4<f32> = u_xlat6;
        let x_1076 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1074.w, x_1074.w, x_1074.w, x_1074.w) * x_1076);
        let x_1079 : vec4<f32> = u_xlat11;
        let x_1080 : vec2<f32> = vec2<f32>(x_1079.x, x_1079.y);
        let x_1082 : f32 = u_xlat4.z;
        txVec13 = vec3<f32>(x_1080.x, x_1080.y, x_1082);
        let x_1089 : vec3<f32> = txVec13;
        let x_1091 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1089.xy, x_1089.z);
        u_xlat82 = x_1091;
        let x_1093 : vec4<f32> = u_xlat11;
        let x_1094 : vec2<f32> = vec2<f32>(x_1093.z, x_1093.w);
        let x_1096 : f32 = u_xlat4.z;
        txVec14 = vec3<f32>(x_1094.x, x_1094.y, x_1096);
        let x_1103 : vec3<f32> = txVec14;
        let x_1105 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1103.xy, x_1103.z);
        u_xlat7.x = x_1105;
        let x_1108 : f32 = u_xlat7.x;
        let x_1110 : f32 = u_xlat16.y;
        u_xlat7.x = (x_1108 * x_1110);
        let x_1114 : f32 = u_xlat16.x;
        let x_1115 : f32 = u_xlat82;
        let x_1118 : f32 = u_xlat7.x;
        u_xlat82 = ((x_1114 * x_1115) + x_1118);
        let x_1121 : vec2<f32> = u_xlat57;
        let x_1123 : f32 = u_xlat4.z;
        txVec15 = vec3<f32>(x_1121.x, x_1121.y, x_1123);
        let x_1130 : vec3<f32> = txVec15;
        let x_1132 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1130.xy, x_1130.z);
        u_xlat57.x = x_1132;
        let x_1135 : f32 = u_xlat16.z;
        let x_1137 : f32 = u_xlat57.x;
        let x_1139 : f32 = u_xlat82;
        u_xlat82 = ((x_1135 * x_1137) + x_1139);
        let x_1142 : vec4<f32> = u_xlat14;
        let x_1143 : vec2<f32> = vec2<f32>(x_1142.x, x_1142.y);
        let x_1145 : f32 = u_xlat4.z;
        txVec16 = vec3<f32>(x_1143.x, x_1143.y, x_1145);
        let x_1152 : vec3<f32> = txVec16;
        let x_1154 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1152.xy, x_1152.z);
        u_xlat57.x = x_1154;
        let x_1157 : f32 = u_xlat16.w;
        let x_1159 : f32 = u_xlat57.x;
        let x_1161 : f32 = u_xlat82;
        u_xlat82 = ((x_1157 * x_1159) + x_1161);
        let x_1164 : vec4<f32> = u_xlat12;
        let x_1165 : vec2<f32> = vec2<f32>(x_1164.x, x_1164.y);
        let x_1167 : f32 = u_xlat4.z;
        txVec17 = vec3<f32>(x_1165.x, x_1165.y, x_1167);
        let x_1174 : vec3<f32> = txVec17;
        let x_1176 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1174.xy, x_1174.z);
        u_xlat57.x = x_1176;
        let x_1179 : f32 = u_xlat17.x;
        let x_1181 : f32 = u_xlat57.x;
        let x_1183 : f32 = u_xlat82;
        u_xlat82 = ((x_1179 * x_1181) + x_1183);
        let x_1186 : vec4<f32> = u_xlat12;
        let x_1187 : vec2<f32> = vec2<f32>(x_1186.z, x_1186.w);
        let x_1189 : f32 = u_xlat4.z;
        txVec18 = vec3<f32>(x_1187.x, x_1187.y, x_1189);
        let x_1196 : vec3<f32> = txVec18;
        let x_1198 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1196.xy, x_1196.z);
        u_xlat57.x = x_1198;
        let x_1201 : f32 = u_xlat17.y;
        let x_1203 : f32 = u_xlat57.x;
        let x_1205 : f32 = u_xlat82;
        u_xlat82 = ((x_1201 * x_1203) + x_1205);
        let x_1208 : vec4<f32> = u_xlat13;
        let x_1209 : vec2<f32> = vec2<f32>(x_1208.x, x_1208.y);
        let x_1211 : f32 = u_xlat4.z;
        txVec19 = vec3<f32>(x_1209.x, x_1209.y, x_1211);
        let x_1218 : vec3<f32> = txVec19;
        let x_1220 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1218.xy, x_1218.z);
        u_xlat57.x = x_1220;
        let x_1223 : f32 = u_xlat17.z;
        let x_1225 : f32 = u_xlat57.x;
        let x_1227 : f32 = u_xlat82;
        u_xlat82 = ((x_1223 * x_1225) + x_1227);
        let x_1230 : vec4<f32> = u_xlat14;
        let x_1231 : vec2<f32> = vec2<f32>(x_1230.z, x_1230.w);
        let x_1233 : f32 = u_xlat4.z;
        txVec20 = vec3<f32>(x_1231.x, x_1231.y, x_1233);
        let x_1240 : vec3<f32> = txVec20;
        let x_1242 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1240.xy, x_1240.z);
        u_xlat57.x = x_1242;
        let x_1245 : f32 = u_xlat17.w;
        let x_1247 : f32 = u_xlat57.x;
        let x_1249 : f32 = u_xlat82;
        u_xlat82 = ((x_1245 * x_1247) + x_1249);
        let x_1252 : vec4<f32> = u_xlat15;
        let x_1253 : vec2<f32> = vec2<f32>(x_1252.x, x_1252.y);
        let x_1255 : f32 = u_xlat4.z;
        txVec21 = vec3<f32>(x_1253.x, x_1253.y, x_1255);
        let x_1262 : vec3<f32> = txVec21;
        let x_1264 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1262.xy, x_1262.z);
        u_xlat57.x = x_1264;
        let x_1267 : f32 = u_xlat18.x;
        let x_1269 : f32 = u_xlat57.x;
        let x_1271 : f32 = u_xlat82;
        u_xlat82 = ((x_1267 * x_1269) + x_1271);
        let x_1274 : vec4<f32> = u_xlat15;
        let x_1275 : vec2<f32> = vec2<f32>(x_1274.z, x_1274.w);
        let x_1277 : f32 = u_xlat4.z;
        txVec22 = vec3<f32>(x_1275.x, x_1275.y, x_1277);
        let x_1284 : vec3<f32> = txVec22;
        let x_1286 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1284.xy, x_1284.z);
        u_xlat57.x = x_1286;
        let x_1289 : f32 = u_xlat18.y;
        let x_1291 : f32 = u_xlat57.x;
        let x_1293 : f32 = u_xlat82;
        u_xlat82 = ((x_1289 * x_1291) + x_1293);
        let x_1296 : vec2<f32> = u_xlat33;
        let x_1298 : f32 = u_xlat4.z;
        txVec23 = vec3<f32>(x_1296.x, x_1296.y, x_1298);
        let x_1305 : vec3<f32> = txVec23;
        let x_1307 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1305.xy, x_1305.z);
        u_xlat57.x = x_1307;
        let x_1310 : f32 = u_xlat18.z;
        let x_1312 : f32 = u_xlat57.x;
        let x_1314 : f32 = u_xlat82;
        u_xlat82 = ((x_1310 * x_1312) + x_1314);
        let x_1317 : vec2<f32> = u_xlat65;
        let x_1319 : f32 = u_xlat4.z;
        txVec24 = vec3<f32>(x_1317.x, x_1317.y, x_1319);
        let x_1326 : vec3<f32> = txVec24;
        let x_1328 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1326.xy, x_1326.z);
        u_xlat57.x = x_1328;
        let x_1331 : f32 = u_xlat18.w;
        let x_1333 : f32 = u_xlat57.x;
        let x_1335 : f32 = u_xlat82;
        u_xlat82 = ((x_1331 * x_1333) + x_1335);
        let x_1338 : vec4<f32> = u_xlat10;
        let x_1339 : vec2<f32> = vec2<f32>(x_1338.x, x_1338.y);
        let x_1341 : f32 = u_xlat4.z;
        txVec25 = vec3<f32>(x_1339.x, x_1339.y, x_1341);
        let x_1348 : vec3<f32> = txVec25;
        let x_1350 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1348.xy, x_1348.z);
        u_xlat57.x = x_1350;
        let x_1353 : f32 = u_xlat6.x;
        let x_1355 : f32 = u_xlat57.x;
        let x_1357 : f32 = u_xlat82;
        u_xlat82 = ((x_1353 * x_1355) + x_1357);
        let x_1360 : vec4<f32> = u_xlat10;
        let x_1361 : vec2<f32> = vec2<f32>(x_1360.z, x_1360.w);
        let x_1363 : f32 = u_xlat4.z;
        txVec26 = vec3<f32>(x_1361.x, x_1361.y, x_1363);
        let x_1370 : vec3<f32> = txVec26;
        let x_1372 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1370.xy, x_1370.z);
        u_xlat57.x = x_1372;
        let x_1375 : f32 = u_xlat6.y;
        let x_1377 : f32 = u_xlat57.x;
        let x_1379 : f32 = u_xlat82;
        u_xlat82 = ((x_1375 * x_1377) + x_1379);
        let x_1382 : vec2<f32> = u_xlat60;
        let x_1384 : f32 = u_xlat4.z;
        txVec27 = vec3<f32>(x_1382.x, x_1382.y, x_1384);
        let x_1391 : vec3<f32> = txVec27;
        let x_1393 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1391.xy, x_1391.z);
        u_xlat57.x = x_1393;
        let x_1396 : f32 = u_xlat6.z;
        let x_1398 : f32 = u_xlat57.x;
        let x_1400 : f32 = u_xlat82;
        u_xlat82 = ((x_1396 * x_1398) + x_1400);
        let x_1403 : vec4<f32> = u_xlat5;
        let x_1404 : vec2<f32> = vec2<f32>(x_1403.x, x_1403.y);
        let x_1406 : f32 = u_xlat4.z;
        txVec28 = vec3<f32>(x_1404.x, x_1404.y, x_1406);
        let x_1413 : vec3<f32> = txVec28;
        let x_1415 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1413.xy, x_1413.z);
        u_xlat5.x = x_1415;
        let x_1418 : f32 = u_xlat6.w;
        let x_1420 : f32 = u_xlat5.x;
        let x_1422 : f32 = u_xlat82;
        u_xlat80 = ((x_1418 * x_1420) + x_1422);
      }
    }
  } else {
    let x_1426 : vec4<f32> = u_xlat4;
    let x_1427 : vec2<f32> = vec2<f32>(x_1426.x, x_1426.y);
    let x_1429 : f32 = u_xlat4.z;
    txVec29 = vec3<f32>(x_1427.x, x_1427.y, x_1429);
    let x_1436 : vec3<f32> = txVec29;
    let x_1438 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1436.xy, x_1436.z);
    u_xlat80 = x_1438;
  }
  let x_1440 : f32 = x_131.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_1440) + 1.0f);
  let x_1444 : f32 = u_xlat80;
  let x_1446 : f32 = x_131.x_MainLightShadowParams.x;
  let x_1449 : f32 = u_xlat4.x;
  u_xlat80 = ((x_1444 * x_1446) + x_1449);
  let x_1453 : f32 = u_xlat4.z;
  u_xlatb30 = (0.0f >= x_1453);
  let x_1457 : f32 = u_xlat4.z;
  u_xlatb56 = (x_1457 >= 1.0f);
  let x_1459 : bool = u_xlatb56;
  let x_1460 : bool = u_xlatb30;
  u_xlatb30 = (x_1459 | x_1460);
  let x_1462 : bool = u_xlatb30;
  let x_1463 : f32 = u_xlat80;
  u_xlat80 = select(x_1463, 1.0f, x_1462);
  let x_1465 : vec3<f32> = u_xlat0;
  let x_1467 : vec4<f32> = x_53.x_MainLightPosition;
  u_xlat0.x = dot(x_1465, -(vec3<f32>(x_1467.x, x_1467.y, x_1467.z)));
  let x_1473 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1473, 0.0f, 1.0f);
  let x_1477 : f32 = u_xlat80;
  let x_1480 : vec4<f32> = x_53.x_MainLightColor;
  u_xlat30 = (vec3<f32>(x_1477, x_1477, x_1477) * vec3<f32>(x_1480.x, x_1480.y, x_1480.z));
  let x_1483 : vec3<f32> = u_xlat0;
  let x_1485 : vec3<f32> = u_xlat30;
  u_xlat0 = (vec3<f32>(x_1483.x, x_1483.x, x_1483.x) * x_1485);
  let x_1487 : vec3<f32> = u_xlat0;
  let x_1488 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_1487 * vec3<f32>(x_1488.x, x_1488.y, x_1488.z));
  let x_1493 : f32 = u_xlat1.w;
  u_xlatb1 = (x_1493 >= 0.40000000596046447754f);
  let x_1496 : bool = u_xlatb1;
  if (x_1496) {
    let x_1502 : f32 = u_xlat1.w;
    x_1498 = x_1502;
  } else {
    x_1498 = 0.0f;
  }
  let x_1504 : f32 = x_1498;
  u_xlat1.x = x_1504;
  let x_1508 : f32 = u_xlat1.w;
  u_xlat27.x = (x_1508 + -0.40000000596046447754f);
  let x_1514 : f32 = u_xlat1.w;
  u_xlat53 = dpdxCoarse(x_1514);
  let x_1518 : f32 = u_xlat1.w;
  u_xlat79 = dpdyCoarse(x_1518);
  let x_1520 : f32 = u_xlat79;
  let x_1522 : f32 = u_xlat53;
  u_xlat53 = (abs(x_1520) + abs(x_1522));
  let x_1525 : f32 = u_xlat53;
  u_xlat53 = max(x_1525, 0.00009999999747378752f);
  let x_1529 : f32 = u_xlat27.x;
  let x_1530 : f32 = u_xlat53;
  u_xlat27.x = (x_1529 / x_1530);
  let x_1534 : f32 = u_xlat27.x;
  u_xlat27.x = (x_1534 + 0.5f);
  let x_1538 : f32 = u_xlat27.x;
  u_xlat27.x = clamp(x_1538, 0.0f, 1.0f);
  let x_1543 : f32 = x_53.x_AlphaToMaskAvailable;
  u_xlatb53 = !((x_1543 == 0.0f));
  let x_1545 : bool = u_xlatb53;
  if (x_1545) {
    let x_1550 : f32 = u_xlat27.x;
    x_1546 = x_1550;
  } else {
    let x_1553 : f32 = u_xlat1.x;
    x_1546 = x_1553;
  }
  let x_1554 : f32 = x_1546;
  u_xlat1.x = x_1554;
  let x_1557 : f32 = u_xlat1.x;
  u_xlat27.x = (x_1557 + -0.00009999999747378752f);
  let x_1565 : f32 = u_xlat27.x;
  u_xlatb27.x = (x_1565 < 0.0f);
  let x_1569 : bool = u_xlatb27.x;
  if (((select(0i, 1i, x_1569) * -1i) != 0i)) {
    discard;
  }
  let x_1579 : f32 = vs_INTERP4.w;
  u_xlatb27.x = (0.0f < x_1579);
  let x_1587 : f32 = x_1585.unity_WorldTransformParams.w;
  u_xlatb27.z = (x_1587 >= 0.0f);
  let x_1591 : bool = u_xlatb27.x;
  u_xlat27.x = select(-1.0f, 1.0f, x_1591);
  let x_1595 : bool = u_xlatb27.z;
  u_xlat27.z = select(-1.0f, 1.0f, x_1595);
  let x_1599 : f32 = u_xlat27.z;
  let x_1601 : f32 = u_xlat27.x;
  u_xlat27.x = (x_1599 * x_1601);
  let x_1604 : vec4<f32> = vs_INTERP4;
  let x_1606 : vec3<f32> = vs_INTERP9;
  u_xlat30 = (vec3<f32>(x_1604.y, x_1604.z, x_1604.x) * vec3<f32>(x_1606.z, x_1606.x, x_1606.y));
  let x_1609 : vec3<f32> = vs_INTERP9;
  let x_1611 : vec4<f32> = vs_INTERP4;
  let x_1614 : vec3<f32> = u_xlat30;
  u_xlat30 = ((vec3<f32>(x_1609.y, x_1609.z, x_1609.x) * vec3<f32>(x_1611.z, x_1611.x, x_1611.y)) + -(x_1614));
  let x_1617 : vec3<f32> = u_xlat27;
  let x_1619 : vec3<f32> = u_xlat30;
  u_xlat30 = (vec3<f32>(x_1617.x, x_1617.x, x_1617.x) * x_1619);
  let x_1621 : vec3<f32> = u_xlat29;
  let x_1623 : vec3<f32> = u_xlat30;
  u_xlat30 = (vec3<f32>(x_1621.y, x_1621.y, x_1621.y) * x_1623);
  let x_1625 : vec3<f32> = u_xlat29;
  let x_1627 : vec4<f32> = vs_INTERP4;
  let x_1630 : vec3<f32> = u_xlat30;
  u_xlat30 = ((vec3<f32>(x_1625.x, x_1625.x, x_1625.x) * vec3<f32>(x_1627.x, x_1627.y, x_1627.z)) + x_1630);
  let x_1632 : vec3<f32> = u_xlat29;
  let x_1634 : vec3<f32> = vs_INTERP9;
  let x_1636 : vec3<f32> = u_xlat30;
  u_xlat29 = ((vec3<f32>(x_1632.z, x_1632.z, x_1632.z) * x_1634) + x_1636);
  let x_1638 : vec3<f32> = u_xlat29;
  let x_1639 : vec3<f32> = u_xlat29;
  u_xlat27.x = dot(x_1638, x_1639);
  let x_1643 : f32 = u_xlat27.x;
  u_xlat27.x = inverseSqrt(x_1643);
  let x_1646 : vec3<f32> = u_xlat27;
  let x_1648 : vec3<f32> = u_xlat29;
  let x_1649 : vec3<f32> = (vec3<f32>(x_1646.x, x_1646.x, x_1646.x) * x_1648);
  let x_1650 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1649.x, x_1649.y, x_1649.z, x_1650.w);
  let x_1653 : f32 = x_53.unity_OrthoParams.w;
  u_xlatb27.x = (x_1653 == 0.0f);
  let x_1656 : vec3<f32> = vs_INTERP8;
  let x_1661 : vec3<f32> = x_53.x_WorldSpaceCameraPos;
  u_xlat29 = (-(x_1656) + x_1661);
  let x_1663 : vec3<f32> = u_xlat29;
  let x_1664 : vec3<f32> = u_xlat29;
  u_xlat79 = dot(x_1663, x_1664);
  let x_1666 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_1666);
  let x_1668 : f32 = u_xlat79;
  let x_1670 : vec3<f32> = u_xlat29;
  u_xlat29 = (vec3<f32>(x_1668, x_1668, x_1668) * x_1670);
  let x_1673 : bool = u_xlatb27.x;
  if (x_1673) {
    let x_1678 : f32 = u_xlat29.x;
    x_1674 = x_1678;
  } else {
    let x_1681 : f32 = x_53.unity_MatrixV[0i].z;
    x_1674 = x_1681;
  }
  let x_1682 : f32 = x_1674;
  u_xlat6.x = x_1682;
  let x_1685 : bool = u_xlatb27.x;
  if (x_1685) {
    let x_1690 : f32 = u_xlat29.y;
    x_1686 = x_1690;
  } else {
    let x_1693 : f32 = x_53.unity_MatrixV[1i].z;
    x_1686 = x_1693;
  }
  let x_1694 : f32 = x_1686;
  u_xlat6.y = x_1694;
  let x_1697 : bool = u_xlatb27.x;
  if (x_1697) {
    let x_1702 : f32 = u_xlat29.z;
    x_1698 = x_1702;
  } else {
    let x_1705 : f32 = x_53.unity_MatrixV[2i].z;
    x_1698 = x_1705;
  }
  let x_1706 : f32 = x_1698;
  u_xlat6.z = x_1706;
  u_xlat5.w = 1.0f;
  let x_1711 : vec4<f32> = x_1585.unity_SHAr;
  let x_1712 : vec4<f32> = u_xlat5;
  u_xlat7.x = dot(x_1711, x_1712);
  let x_1717 : vec4<f32> = x_1585.unity_SHAg;
  let x_1718 : vec4<f32> = u_xlat5;
  u_xlat7.y = dot(x_1717, x_1718);
  let x_1723 : vec4<f32> = x_1585.unity_SHAb;
  let x_1724 : vec4<f32> = u_xlat5;
  u_xlat7.z = dot(x_1723, x_1724);
  let x_1727 : vec4<f32> = u_xlat5;
  let x_1729 : vec4<f32> = u_xlat5;
  u_xlat8 = (vec4<f32>(x_1727.y, x_1727.z, x_1727.z, x_1727.x) * vec4<f32>(x_1729.x, x_1729.y, x_1729.z, x_1729.z));
  let x_1734 : vec4<f32> = x_1585.unity_SHBr;
  let x_1735 : vec4<f32> = u_xlat8;
  u_xlat9.x = dot(x_1734, x_1735);
  let x_1740 : vec4<f32> = x_1585.unity_SHBg;
  let x_1741 : vec4<f32> = u_xlat8;
  u_xlat9.y = dot(x_1740, x_1741);
  let x_1746 : vec4<f32> = x_1585.unity_SHBb;
  let x_1747 : vec4<f32> = u_xlat8;
  u_xlat9.z = dot(x_1746, x_1747);
  let x_1751 : f32 = u_xlat5.y;
  let x_1753 : f32 = u_xlat5.y;
  u_xlat27.x = (x_1751 * x_1753);
  let x_1757 : f32 = u_xlat5.x;
  let x_1759 : f32 = u_xlat5.x;
  let x_1762 : f32 = u_xlat27.x;
  u_xlat27.x = ((x_1757 * x_1759) + -(x_1762));
  let x_1768 : vec4<f32> = x_1585.unity_SHC;
  let x_1770 : vec3<f32> = u_xlat27;
  let x_1773 : vec4<f32> = u_xlat9;
  u_xlat29 = ((vec3<f32>(x_1768.x, x_1768.y, x_1768.z) * vec3<f32>(x_1770.x, x_1770.x, x_1770.x)) + vec3<f32>(x_1773.x, x_1773.y, x_1773.z));
  let x_1776 : vec3<f32> = u_xlat29;
  let x_1777 : vec4<f32> = u_xlat7;
  u_xlat29 = (x_1776 + vec3<f32>(x_1777.x, x_1777.y, x_1777.z));
  let x_1780 : vec3<f32> = u_xlat29;
  u_xlat29 = max(x_1780, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1784 : f32 = u_xlat3.x;
  u_xlat3.x = x_1784;
  let x_1787 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1787, 0.0f, 1.0f);
  let x_1791 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_1791, 1.0f);
  let x_1794 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1794 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_1799 : f32 = u_xlat3.x;
  u_xlat27.x = (-(x_1799) + 1.0f);
  let x_1804 : f32 = u_xlat27.x;
  let x_1806 : f32 = u_xlat27.x;
  u_xlat79 = (x_1804 * x_1806);
  let x_1808 : f32 = u_xlat79;
  u_xlat79 = max(x_1808, 0.0078125f);
  let x_1811 : f32 = u_xlat79;
  let x_1812 : f32 = u_xlat79;
  u_xlat80 = (x_1811 * x_1812);
  let x_1815 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1815 + 0.04000002145767211914f);
  let x_1820 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_1820, 1.0f);
  let x_1823 : f32 = u_xlat79;
  u_xlat30.x = ((x_1823 * 4.0f) + 2.0f);
  let x_1830 : f32 = vs_INTERP6.w;
  u_xlat56 = min(x_1830, 1.0f);
  let x_1832 : bool = u_xlatb78;
  if (x_1832) {
    let x_1836 : f32 = x_131.x_MainLightShadowParams.y;
    u_xlatb78 = (x_1836 == 1.0f);
    let x_1838 : bool = u_xlatb78;
    if (x_1838) {
      let x_1842 : vec4<f32> = vs_INTERP3;
      let x_1845 : vec4<f32> = x_131.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_1842.x, x_1842.y, x_1842.x, x_1842.y) + x_1845);
      let x_1848 : vec4<f32> = u_xlat7;
      let x_1849 : vec2<f32> = vec2<f32>(x_1848.x, x_1848.y);
      let x_1851 : f32 = vs_INTERP3.z;
      txVec30 = vec3<f32>(x_1849.x, x_1849.y, x_1851);
      let x_1858 : vec3<f32> = txVec30;
      let x_1860 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1858.xy, x_1858.z);
      u_xlat8.x = x_1860;
      let x_1863 : vec4<f32> = u_xlat7;
      let x_1864 : vec2<f32> = vec2<f32>(x_1863.z, x_1863.w);
      let x_1866 : f32 = vs_INTERP3.z;
      txVec31 = vec3<f32>(x_1864.x, x_1864.y, x_1866);
      let x_1873 : vec3<f32> = txVec31;
      let x_1875 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1873.xy, x_1873.z);
      u_xlat8.y = x_1875;
      let x_1877 : vec4<f32> = vs_INTERP3;
      let x_1880 : vec4<f32> = x_131.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_1877.x, x_1877.y, x_1877.x, x_1877.y) + x_1880);
      let x_1883 : vec4<f32> = u_xlat7;
      let x_1884 : vec2<f32> = vec2<f32>(x_1883.x, x_1883.y);
      let x_1886 : f32 = vs_INTERP3.z;
      txVec32 = vec3<f32>(x_1884.x, x_1884.y, x_1886);
      let x_1893 : vec3<f32> = txVec32;
      let x_1895 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1893.xy, x_1893.z);
      u_xlat8.z = x_1895;
      let x_1898 : vec4<f32> = u_xlat7;
      let x_1899 : vec2<f32> = vec2<f32>(x_1898.z, x_1898.w);
      let x_1901 : f32 = vs_INTERP3.z;
      txVec33 = vec3<f32>(x_1899.x, x_1899.y, x_1901);
      let x_1908 : vec3<f32> = txVec33;
      let x_1910 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1908.xy, x_1908.z);
      u_xlat8.w = x_1910;
      let x_1912 : vec4<f32> = u_xlat8;
      u_xlat78 = dot(x_1912, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1916 : f32 = x_131.x_MainLightShadowParams.y;
      u_xlatb82 = (x_1916 == 2.0f);
      let x_1918 : bool = u_xlatb82;
      if (x_1918) {
        let x_1921 : vec4<f32> = vs_INTERP3;
        let x_1924 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_1927 : vec2<f32> = ((vec2<f32>(x_1921.x, x_1921.y) * vec2<f32>(x_1924.z, x_1924.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1928 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1927.x, x_1927.y, x_1928.z, x_1928.w);
        let x_1930 : vec4<f32> = u_xlat7;
        let x_1932 : vec2<f32> = floor(vec2<f32>(x_1930.x, x_1930.y));
        let x_1933 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1932.x, x_1932.y, x_1933.z, x_1933.w);
        let x_1935 : vec4<f32> = vs_INTERP3;
        let x_1938 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_1941 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1935.x, x_1935.y) * vec2<f32>(x_1938.z, x_1938.w)) + -(vec2<f32>(x_1941.x, x_1941.y)));
        let x_1945 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_1945.x, x_1945.x, x_1945.y, x_1945.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1948 : vec4<f32> = u_xlat8;
        let x_1950 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1948.x, x_1948.x, x_1948.z, x_1948.z) * vec4<f32>(x_1950.x, x_1950.x, x_1950.z, x_1950.z));
        let x_1953 : vec4<f32> = u_xlat9;
        let x_1955 : vec2<f32> = (vec2<f32>(x_1953.y, x_1953.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1956 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1955.x, x_1956.y, x_1955.y, x_1956.w);
        let x_1958 : vec4<f32> = u_xlat9;
        let x_1961 : vec2<f32> = u_xlat59;
        let x_1963 : vec2<f32> = ((vec2<f32>(x_1958.x, x_1958.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1961));
        let x_1964 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1963.x, x_1963.y, x_1964.z, x_1964.w);
        let x_1967 : vec2<f32> = u_xlat59;
        u_xlat61 = (-(x_1967) + vec2<f32>(1.0f, 1.0f));
        let x_1970 : vec2<f32> = u_xlat59;
        let x_1971 : vec2<f32> = min(x_1970, vec2<f32>(0.0f, 0.0f));
        let x_1972 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1971.x, x_1971.y, x_1972.z, x_1972.w);
        let x_1974 : vec4<f32> = u_xlat10;
        let x_1977 : vec4<f32> = u_xlat10;
        let x_1980 : vec2<f32> = u_xlat61;
        let x_1981 : vec2<f32> = ((-(vec2<f32>(x_1974.x, x_1974.y)) * vec2<f32>(x_1977.x, x_1977.y)) + x_1980);
        let x_1982 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1981.x, x_1981.y, x_1982.z, x_1982.w);
        let x_1984 : vec2<f32> = u_xlat59;
        u_xlat59 = max(x_1984, vec2<f32>(0.0f, 0.0f));
        let x_1986 : vec2<f32> = u_xlat59;
        let x_1988 : vec2<f32> = u_xlat59;
        let x_1990 : vec4<f32> = u_xlat8;
        u_xlat59 = ((-(x_1986) * x_1988) + vec2<f32>(x_1990.y, x_1990.w));
        let x_1993 : vec4<f32> = u_xlat10;
        let x_1995 : vec2<f32> = (vec2<f32>(x_1993.x, x_1993.y) + vec2<f32>(1.0f, 1.0f));
        let x_1996 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1995.x, x_1995.y, x_1996.z, x_1996.w);
        let x_1998 : vec2<f32> = u_xlat59;
        u_xlat59 = (x_1998 + vec2<f32>(1.0f, 1.0f));
        let x_2000 : vec4<f32> = u_xlat9;
        let x_2002 : vec2<f32> = (vec2<f32>(x_2000.x, x_2000.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2003 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2002.x, x_2002.y, x_2003.z, x_2003.w);
        let x_2005 : vec2<f32> = u_xlat61;
        let x_2006 : vec2<f32> = (x_2005 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2007 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2006.x, x_2006.y, x_2007.z, x_2007.w);
        let x_2009 : vec4<f32> = u_xlat10;
        let x_2011 : vec2<f32> = (vec2<f32>(x_2009.x, x_2009.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2012 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2011.x, x_2011.y, x_2012.z, x_2012.w);
        let x_2014 : vec2<f32> = u_xlat59;
        let x_2015 : vec2<f32> = (x_2014 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2016 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2015.x, x_2015.y, x_2016.z, x_2016.w);
        let x_2018 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_2018.y, x_2018.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2022 : f32 = u_xlat10.x;
        u_xlat11.z = x_2022;
        let x_2025 : f32 = u_xlat59.x;
        u_xlat11.w = x_2025;
        let x_2028 : f32 = u_xlat12.x;
        u_xlat9.z = x_2028;
        let x_2031 : f32 = u_xlat8.x;
        u_xlat9.w = x_2031;
        let x_2033 : vec4<f32> = u_xlat9;
        let x_2035 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_2033.z, x_2033.w, x_2033.x, x_2033.z) + vec4<f32>(x_2035.z, x_2035.w, x_2035.x, x_2035.z));
        let x_2039 : f32 = u_xlat11.y;
        u_xlat10.z = x_2039;
        let x_2042 : f32 = u_xlat59.y;
        u_xlat10.w = x_2042;
        let x_2045 : f32 = u_xlat9.y;
        u_xlat12.z = x_2045;
        let x_2048 : f32 = u_xlat8.z;
        u_xlat12.w = x_2048;
        let x_2050 : vec4<f32> = u_xlat10;
        let x_2052 : vec4<f32> = u_xlat12;
        let x_2054 : vec3<f32> = (vec3<f32>(x_2050.z, x_2050.y, x_2050.w) + vec3<f32>(x_2052.z, x_2052.y, x_2052.w));
        let x_2055 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2054.x, x_2054.y, x_2054.z, x_2055.w);
        let x_2057 : vec4<f32> = u_xlat9;
        let x_2059 : vec4<f32> = u_xlat13;
        let x_2061 : vec3<f32> = (vec3<f32>(x_2057.x, x_2057.z, x_2057.w) / vec3<f32>(x_2059.z, x_2059.w, x_2059.y));
        let x_2062 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2061.x, x_2061.y, x_2061.z, x_2062.w);
        let x_2064 : vec4<f32> = u_xlat9;
        let x_2066 : vec3<f32> = (vec3<f32>(x_2064.x, x_2064.y, x_2064.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2067 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2066.x, x_2066.y, x_2066.z, x_2067.w);
        let x_2069 : vec4<f32> = u_xlat12;
        let x_2071 : vec4<f32> = u_xlat8;
        let x_2073 : vec3<f32> = (vec3<f32>(x_2069.z, x_2069.y, x_2069.w) / vec3<f32>(x_2071.x, x_2071.y, x_2071.z));
        let x_2074 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2073.x, x_2073.y, x_2073.z, x_2074.w);
        let x_2076 : vec4<f32> = u_xlat10;
        let x_2078 : vec3<f32> = (vec3<f32>(x_2076.x, x_2076.y, x_2076.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2079 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2078.x, x_2078.y, x_2078.z, x_2079.w);
        let x_2081 : vec4<f32> = u_xlat9;
        let x_2084 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2086 : vec3<f32> = (vec3<f32>(x_2081.y, x_2081.x, x_2081.z) * vec3<f32>(x_2084.x, x_2084.x, x_2084.x));
        let x_2087 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2086.x, x_2086.y, x_2086.z, x_2087.w);
        let x_2089 : vec4<f32> = u_xlat10;
        let x_2092 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2094 : vec3<f32> = (vec3<f32>(x_2089.x, x_2089.y, x_2089.z) * vec3<f32>(x_2092.y, x_2092.y, x_2092.y));
        let x_2095 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2094.x, x_2094.y, x_2094.z, x_2095.w);
        let x_2098 : f32 = u_xlat10.x;
        u_xlat9.w = x_2098;
        let x_2100 : vec4<f32> = u_xlat7;
        let x_2103 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2106 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_2100.x, x_2100.y, x_2100.x, x_2100.y) * vec4<f32>(x_2103.x, x_2103.y, x_2103.x, x_2103.y)) + vec4<f32>(x_2106.y, x_2106.w, x_2106.x, x_2106.w));
        let x_2109 : vec4<f32> = u_xlat7;
        let x_2112 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2115 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_2109.x, x_2109.y) * vec2<f32>(x_2112.x, x_2112.y)) + vec2<f32>(x_2115.z, x_2115.w));
        let x_2119 : f32 = u_xlat9.y;
        u_xlat10.w = x_2119;
        let x_2121 : vec4<f32> = u_xlat10;
        let x_2122 : vec2<f32> = vec2<f32>(x_2121.y, x_2121.z);
        let x_2123 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2123.x, x_2122.x, x_2123.z, x_2122.y);
        let x_2125 : vec4<f32> = u_xlat7;
        let x_2128 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2131 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_2125.x, x_2125.y, x_2125.x, x_2125.y) * vec4<f32>(x_2128.x, x_2128.y, x_2128.x, x_2128.y)) + vec4<f32>(x_2131.x, x_2131.y, x_2131.z, x_2131.y));
        let x_2134 : vec4<f32> = u_xlat7;
        let x_2137 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2140 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_2134.x, x_2134.y, x_2134.x, x_2134.y) * vec4<f32>(x_2137.x, x_2137.y, x_2137.x, x_2137.y)) + vec4<f32>(x_2140.w, x_2140.y, x_2140.w, x_2140.z));
        let x_2143 : vec4<f32> = u_xlat7;
        let x_2146 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2149 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_2143.x, x_2143.y, x_2143.x, x_2143.y) * vec4<f32>(x_2146.x, x_2146.y, x_2146.x, x_2146.y)) + vec4<f32>(x_2149.x, x_2149.w, x_2149.z, x_2149.w));
        let x_2152 : vec4<f32> = u_xlat8;
        let x_2154 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_2152.x, x_2152.x, x_2152.x, x_2152.y) * vec4<f32>(x_2154.z, x_2154.w, x_2154.y, x_2154.z));
        let x_2157 : vec4<f32> = u_xlat8;
        let x_2159 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_2157.y, x_2157.y, x_2157.z, x_2157.z) * x_2159);
        let x_2162 : f32 = u_xlat8.z;
        let x_2164 : f32 = u_xlat13.y;
        u_xlat82 = (x_2162 * x_2164);
        let x_2167 : vec4<f32> = u_xlat11;
        let x_2168 : vec2<f32> = vec2<f32>(x_2167.x, x_2167.y);
        let x_2170 : f32 = vs_INTERP3.z;
        txVec34 = vec3<f32>(x_2168.x, x_2168.y, x_2170);
        let x_2178 : vec3<f32> = txVec34;
        let x_2180 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2178.xy, x_2178.z);
        u_xlat83 = x_2180;
        let x_2182 : vec4<f32> = u_xlat11;
        let x_2183 : vec2<f32> = vec2<f32>(x_2182.z, x_2182.w);
        let x_2185 : f32 = vs_INTERP3.z;
        txVec35 = vec3<f32>(x_2183.x, x_2183.y, x_2185);
        let x_2193 : vec3<f32> = txVec35;
        let x_2195 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2193.xy, x_2193.z);
        u_xlat84 = x_2195;
        let x_2196 : f32 = u_xlat84;
        let x_2198 : f32 = u_xlat14.y;
        u_xlat84 = (x_2196 * x_2198);
        let x_2201 : f32 = u_xlat14.x;
        let x_2202 : f32 = u_xlat83;
        let x_2204 : f32 = u_xlat84;
        u_xlat83 = ((x_2201 * x_2202) + x_2204);
        let x_2207 : vec2<f32> = u_xlat59;
        let x_2209 : f32 = vs_INTERP3.z;
        txVec36 = vec3<f32>(x_2207.x, x_2207.y, x_2209);
        let x_2216 : vec3<f32> = txVec36;
        let x_2218 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2216.xy, x_2216.z);
        u_xlat84 = x_2218;
        let x_2220 : f32 = u_xlat14.z;
        let x_2221 : f32 = u_xlat84;
        let x_2223 : f32 = u_xlat83;
        u_xlat83 = ((x_2220 * x_2221) + x_2223);
        let x_2226 : vec4<f32> = u_xlat10;
        let x_2227 : vec2<f32> = vec2<f32>(x_2226.x, x_2226.y);
        let x_2229 : f32 = vs_INTERP3.z;
        txVec37 = vec3<f32>(x_2227.x, x_2227.y, x_2229);
        let x_2236 : vec3<f32> = txVec37;
        let x_2238 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2236.xy, x_2236.z);
        u_xlat84 = x_2238;
        let x_2240 : f32 = u_xlat14.w;
        let x_2241 : f32 = u_xlat84;
        let x_2243 : f32 = u_xlat83;
        u_xlat83 = ((x_2240 * x_2241) + x_2243);
        let x_2246 : vec4<f32> = u_xlat12;
        let x_2247 : vec2<f32> = vec2<f32>(x_2246.x, x_2246.y);
        let x_2249 : f32 = vs_INTERP3.z;
        txVec38 = vec3<f32>(x_2247.x, x_2247.y, x_2249);
        let x_2256 : vec3<f32> = txVec38;
        let x_2258 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2256.xy, x_2256.z);
        u_xlat84 = x_2258;
        let x_2260 : f32 = u_xlat15.x;
        let x_2261 : f32 = u_xlat84;
        let x_2263 : f32 = u_xlat83;
        u_xlat83 = ((x_2260 * x_2261) + x_2263);
        let x_2266 : vec4<f32> = u_xlat12;
        let x_2267 : vec2<f32> = vec2<f32>(x_2266.z, x_2266.w);
        let x_2269 : f32 = vs_INTERP3.z;
        txVec39 = vec3<f32>(x_2267.x, x_2267.y, x_2269);
        let x_2276 : vec3<f32> = txVec39;
        let x_2278 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2276.xy, x_2276.z);
        u_xlat84 = x_2278;
        let x_2280 : f32 = u_xlat15.y;
        let x_2281 : f32 = u_xlat84;
        let x_2283 : f32 = u_xlat83;
        u_xlat83 = ((x_2280 * x_2281) + x_2283);
        let x_2286 : vec4<f32> = u_xlat10;
        let x_2287 : vec2<f32> = vec2<f32>(x_2286.z, x_2286.w);
        let x_2289 : f32 = vs_INTERP3.z;
        txVec40 = vec3<f32>(x_2287.x, x_2287.y, x_2289);
        let x_2296 : vec3<f32> = txVec40;
        let x_2298 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2296.xy, x_2296.z);
        u_xlat84 = x_2298;
        let x_2300 : f32 = u_xlat15.z;
        let x_2301 : f32 = u_xlat84;
        let x_2303 : f32 = u_xlat83;
        u_xlat83 = ((x_2300 * x_2301) + x_2303);
        let x_2306 : vec4<f32> = u_xlat9;
        let x_2307 : vec2<f32> = vec2<f32>(x_2306.x, x_2306.y);
        let x_2309 : f32 = vs_INTERP3.z;
        txVec41 = vec3<f32>(x_2307.x, x_2307.y, x_2309);
        let x_2316 : vec3<f32> = txVec41;
        let x_2318 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2316.xy, x_2316.z);
        u_xlat84 = x_2318;
        let x_2320 : f32 = u_xlat15.w;
        let x_2321 : f32 = u_xlat84;
        let x_2323 : f32 = u_xlat83;
        u_xlat83 = ((x_2320 * x_2321) + x_2323);
        let x_2326 : vec4<f32> = u_xlat9;
        let x_2327 : vec2<f32> = vec2<f32>(x_2326.z, x_2326.w);
        let x_2329 : f32 = vs_INTERP3.z;
        txVec42 = vec3<f32>(x_2327.x, x_2327.y, x_2329);
        let x_2336 : vec3<f32> = txVec42;
        let x_2338 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2336.xy, x_2336.z);
        u_xlat84 = x_2338;
        let x_2339 : f32 = u_xlat82;
        let x_2340 : f32 = u_xlat84;
        let x_2342 : f32 = u_xlat83;
        u_xlat78 = ((x_2339 * x_2340) + x_2342);
      } else {
        let x_2345 : vec4<f32> = vs_INTERP3;
        let x_2348 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2351 : vec2<f32> = ((vec2<f32>(x_2345.x, x_2345.y) * vec2<f32>(x_2348.z, x_2348.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2352 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2351.x, x_2351.y, x_2352.z, x_2352.w);
        let x_2354 : vec4<f32> = u_xlat7;
        let x_2356 : vec2<f32> = floor(vec2<f32>(x_2354.x, x_2354.y));
        let x_2357 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2356.x, x_2356.y, x_2357.z, x_2357.w);
        let x_2359 : vec4<f32> = vs_INTERP3;
        let x_2362 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2365 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_2359.x, x_2359.y) * vec2<f32>(x_2362.z, x_2362.w)) + -(vec2<f32>(x_2365.x, x_2365.y)));
        let x_2369 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_2369.x, x_2369.x, x_2369.y, x_2369.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2372 : vec4<f32> = u_xlat8;
        let x_2374 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2372.x, x_2372.x, x_2372.z, x_2372.z) * vec4<f32>(x_2374.x, x_2374.x, x_2374.z, x_2374.z));
        let x_2377 : vec4<f32> = u_xlat9;
        let x_2379 : vec2<f32> = (vec2<f32>(x_2377.y, x_2377.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_2380 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2380.x, x_2379.x, x_2380.z, x_2379.y);
        let x_2382 : vec4<f32> = u_xlat9;
        let x_2385 : vec2<f32> = u_xlat59;
        let x_2387 : vec2<f32> = ((vec2<f32>(x_2382.x, x_2382.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2385));
        let x_2388 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2387.x, x_2388.y, x_2387.y, x_2388.w);
        let x_2390 : vec2<f32> = u_xlat59;
        let x_2392 : vec2<f32> = (-(x_2390) + vec2<f32>(1.0f, 1.0f));
        let x_2393 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2392.x, x_2392.y, x_2393.z, x_2393.w);
        let x_2395 : vec2<f32> = u_xlat59;
        u_xlat61 = min(x_2395, vec2<f32>(0.0f, 0.0f));
        let x_2397 : vec2<f32> = u_xlat61;
        let x_2399 : vec2<f32> = u_xlat61;
        let x_2401 : vec4<f32> = u_xlat9;
        let x_2403 : vec2<f32> = ((-(x_2397) * x_2399) + vec2<f32>(x_2401.x, x_2401.y));
        let x_2404 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2403.x, x_2403.y, x_2404.z, x_2404.w);
        let x_2406 : vec2<f32> = u_xlat59;
        u_xlat61 = max(x_2406, vec2<f32>(0.0f, 0.0f));
        let x_2409 : vec2<f32> = u_xlat61;
        let x_2411 : vec2<f32> = u_xlat61;
        let x_2413 : vec4<f32> = u_xlat8;
        let x_2415 : vec2<f32> = ((-(x_2409) * x_2411) + vec2<f32>(x_2413.y, x_2413.w));
        let x_2416 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_2415.x, x_2416.y, x_2415.y);
        let x_2418 : vec4<f32> = u_xlat9;
        let x_2420 : vec2<f32> = (vec2<f32>(x_2418.x, x_2418.y) + vec2<f32>(2.0f, 2.0f));
        let x_2421 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2420.x, x_2420.y, x_2421.z, x_2421.w);
        let x_2423 : vec3<f32> = u_xlat34;
        let x_2425 : vec2<f32> = (vec2<f32>(x_2423.x, x_2423.z) + vec2<f32>(2.0f, 2.0f));
        let x_2426 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2426.x, x_2425.x, x_2426.z, x_2425.y);
        let x_2429 : f32 = u_xlat8.y;
        u_xlat11.z = (x_2429 * 0.08163200318813323975f);
        let x_2432 : vec4<f32> = u_xlat8;
        let x_2434 : vec3<f32> = (vec3<f32>(x_2432.z, x_2432.x, x_2432.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_2435 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2434.x, x_2434.y, x_2434.z, x_2435.w);
        let x_2437 : vec4<f32> = u_xlat9;
        let x_2439 : vec2<f32> = (vec2<f32>(x_2437.x, x_2437.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2440 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2439.x, x_2439.y, x_2440.z, x_2440.w);
        let x_2443 : f32 = u_xlat12.y;
        u_xlat11.x = x_2443;
        let x_2445 : vec2<f32> = u_xlat59;
        let x_2448 : vec2<f32> = ((vec2<f32>(x_2445.x, x_2445.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2449 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2449.x, x_2448.x, x_2449.z, x_2448.y);
        let x_2451 : vec2<f32> = u_xlat59;
        let x_2454 : vec2<f32> = ((vec2<f32>(x_2451.x, x_2451.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2455 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2454.x, x_2455.y, x_2454.y, x_2455.w);
        let x_2458 : f32 = u_xlat8.x;
        u_xlat9.y = x_2458;
        let x_2461 : f32 = u_xlat10.y;
        u_xlat9.w = x_2461;
        let x_2463 : vec4<f32> = u_xlat9;
        let x_2464 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_2463 + x_2464);
        let x_2466 : vec2<f32> = u_xlat59;
        let x_2469 : vec2<f32> = ((vec2<f32>(x_2466.y, x_2466.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2470 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2470.x, x_2469.x, x_2470.z, x_2469.y);
        let x_2472 : vec2<f32> = u_xlat59;
        let x_2475 : vec2<f32> = ((vec2<f32>(x_2472.y, x_2472.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2476 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2475.x, x_2476.y, x_2475.y, x_2476.w);
        let x_2479 : f32 = u_xlat8.y;
        u_xlat10.y = x_2479;
        let x_2481 : vec4<f32> = u_xlat10;
        let x_2482 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_2481 + x_2482);
        let x_2484 : vec4<f32> = u_xlat9;
        let x_2485 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_2484 / x_2485);
        let x_2487 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2487 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2489 : vec4<f32> = u_xlat10;
        let x_2490 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_2489 / x_2490);
        let x_2492 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_2492 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2494 : vec4<f32> = u_xlat9;
        let x_2497 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_2494.w, x_2494.x, x_2494.y, x_2494.z) * vec4<f32>(x_2497.x, x_2497.x, x_2497.x, x_2497.x));
        let x_2500 : vec4<f32> = u_xlat10;
        let x_2503 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_2500.x, x_2500.w, x_2500.y, x_2500.z) * vec4<f32>(x_2503.y, x_2503.y, x_2503.y, x_2503.y));
        let x_2506 : vec4<f32> = u_xlat9;
        let x_2507 : vec3<f32> = vec3<f32>(x_2506.y, x_2506.z, x_2506.w);
        let x_2508 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2507.x, x_2508.y, x_2507.y, x_2507.z);
        let x_2511 : f32 = u_xlat10.x;
        u_xlat12.y = x_2511;
        let x_2513 : vec4<f32> = u_xlat7;
        let x_2516 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2519 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_2513.x, x_2513.y, x_2513.x, x_2513.y) * vec4<f32>(x_2516.x, x_2516.y, x_2516.x, x_2516.y)) + vec4<f32>(x_2519.x, x_2519.y, x_2519.z, x_2519.y));
        let x_2522 : vec4<f32> = u_xlat7;
        let x_2525 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2528 : vec4<f32> = u_xlat12;
        u_xlat59 = ((vec2<f32>(x_2522.x, x_2522.y) * vec2<f32>(x_2525.x, x_2525.y)) + vec2<f32>(x_2528.w, x_2528.y));
        let x_2532 : f32 = u_xlat12.y;
        u_xlat9.y = x_2532;
        let x_2535 : f32 = u_xlat10.z;
        u_xlat12.y = x_2535;
        let x_2537 : vec4<f32> = u_xlat7;
        let x_2540 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2543 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_2537.x, x_2537.y, x_2537.x, x_2537.y) * vec4<f32>(x_2540.x, x_2540.y, x_2540.x, x_2540.y)) + vec4<f32>(x_2543.x, x_2543.y, x_2543.z, x_2543.y));
        let x_2546 : vec4<f32> = u_xlat7;
        let x_2549 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2552 : vec4<f32> = u_xlat12;
        let x_2554 : vec2<f32> = ((vec2<f32>(x_2546.x, x_2546.y) * vec2<f32>(x_2549.x, x_2549.y)) + vec2<f32>(x_2552.w, x_2552.y));
        let x_2555 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_2554.x, x_2554.y, x_2555.z, x_2555.w);
        let x_2558 : f32 = u_xlat12.y;
        u_xlat9.z = x_2558;
        let x_2560 : vec4<f32> = u_xlat7;
        let x_2563 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2566 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_2560.x, x_2560.y, x_2560.x, x_2560.y) * vec4<f32>(x_2563.x, x_2563.y, x_2563.x, x_2563.y)) + vec4<f32>(x_2566.x, x_2566.y, x_2566.x, x_2566.z));
        let x_2570 : f32 = u_xlat10.w;
        u_xlat12.y = x_2570;
        let x_2572 : vec4<f32> = u_xlat7;
        let x_2575 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2578 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_2572.x, x_2572.y, x_2572.x, x_2572.y) * vec4<f32>(x_2575.x, x_2575.y, x_2575.x, x_2575.y)) + vec4<f32>(x_2578.x, x_2578.y, x_2578.z, x_2578.y));
        let x_2582 : vec4<f32> = u_xlat7;
        let x_2585 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2588 : vec4<f32> = u_xlat12;
        u_xlat35 = ((vec2<f32>(x_2582.x, x_2582.y) * vec2<f32>(x_2585.x, x_2585.y)) + vec2<f32>(x_2588.w, x_2588.y));
        let x_2592 : f32 = u_xlat12.y;
        u_xlat9.w = x_2592;
        let x_2595 : vec4<f32> = u_xlat7;
        let x_2598 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2601 : vec4<f32> = u_xlat9;
        u_xlat67 = ((vec2<f32>(x_2595.x, x_2595.y) * vec2<f32>(x_2598.x, x_2598.y)) + vec2<f32>(x_2601.x, x_2601.w));
        let x_2604 : vec4<f32> = u_xlat12;
        let x_2605 : vec3<f32> = vec3<f32>(x_2604.x, x_2604.z, x_2604.w);
        let x_2606 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2605.x, x_2606.y, x_2605.y, x_2605.z);
        let x_2608 : vec4<f32> = u_xlat7;
        let x_2611 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2614 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_2608.x, x_2608.y, x_2608.x, x_2608.y) * vec4<f32>(x_2611.x, x_2611.y, x_2611.x, x_2611.y)) + vec4<f32>(x_2614.x, x_2614.y, x_2614.z, x_2614.y));
        let x_2618 : vec4<f32> = u_xlat7;
        let x_2621 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2624 : vec4<f32> = u_xlat10;
        u_xlat62 = ((vec2<f32>(x_2618.x, x_2618.y) * vec2<f32>(x_2621.x, x_2621.y)) + vec2<f32>(x_2624.w, x_2624.y));
        let x_2628 : f32 = u_xlat9.x;
        u_xlat10.x = x_2628;
        let x_2630 : vec4<f32> = u_xlat7;
        let x_2633 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2636 : vec4<f32> = u_xlat10;
        let x_2638 : vec2<f32> = ((vec2<f32>(x_2630.x, x_2630.y) * vec2<f32>(x_2633.x, x_2633.y)) + vec2<f32>(x_2636.x, x_2636.y));
        let x_2639 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2638.x, x_2638.y, x_2639.z, x_2639.w);
        let x_2641 : vec4<f32> = u_xlat8;
        let x_2643 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_2641.x, x_2641.x, x_2641.x, x_2641.x) * x_2643);
        let x_2646 : vec4<f32> = u_xlat8;
        let x_2648 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_2646.y, x_2646.y, x_2646.y, x_2646.y) * x_2648);
        let x_2651 : vec4<f32> = u_xlat8;
        let x_2653 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_2651.z, x_2651.z, x_2651.z, x_2651.z) * x_2653);
        let x_2655 : vec4<f32> = u_xlat8;
        let x_2657 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_2655.w, x_2655.w, x_2655.w, x_2655.w) * x_2657);
        let x_2660 : vec4<f32> = u_xlat13;
        let x_2661 : vec2<f32> = vec2<f32>(x_2660.x, x_2660.y);
        let x_2663 : f32 = vs_INTERP3.z;
        txVec43 = vec3<f32>(x_2661.x, x_2661.y, x_2663);
        let x_2670 : vec3<f32> = txVec43;
        let x_2672 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2670.xy, x_2670.z);
        u_xlat82 = x_2672;
        let x_2674 : vec4<f32> = u_xlat13;
        let x_2675 : vec2<f32> = vec2<f32>(x_2674.z, x_2674.w);
        let x_2677 : f32 = vs_INTERP3.z;
        txVec44 = vec3<f32>(x_2675.x, x_2675.y, x_2677);
        let x_2684 : vec3<f32> = txVec44;
        let x_2686 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2684.xy, x_2684.z);
        u_xlat83 = x_2686;
        let x_2687 : f32 = u_xlat83;
        let x_2689 : f32 = u_xlat18.y;
        u_xlat83 = (x_2687 * x_2689);
        let x_2692 : f32 = u_xlat18.x;
        let x_2693 : f32 = u_xlat82;
        let x_2695 : f32 = u_xlat83;
        u_xlat82 = ((x_2692 * x_2693) + x_2695);
        let x_2698 : vec2<f32> = u_xlat59;
        let x_2700 : f32 = vs_INTERP3.z;
        txVec45 = vec3<f32>(x_2698.x, x_2698.y, x_2700);
        let x_2707 : vec3<f32> = txVec45;
        let x_2709 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2707.xy, x_2707.z);
        u_xlat83 = x_2709;
        let x_2711 : f32 = u_xlat18.z;
        let x_2712 : f32 = u_xlat83;
        let x_2714 : f32 = u_xlat82;
        u_xlat82 = ((x_2711 * x_2712) + x_2714);
        let x_2717 : vec4<f32> = u_xlat16;
        let x_2718 : vec2<f32> = vec2<f32>(x_2717.x, x_2717.y);
        let x_2720 : f32 = vs_INTERP3.z;
        txVec46 = vec3<f32>(x_2718.x, x_2718.y, x_2720);
        let x_2727 : vec3<f32> = txVec46;
        let x_2729 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2727.xy, x_2727.z);
        u_xlat83 = x_2729;
        let x_2731 : f32 = u_xlat18.w;
        let x_2732 : f32 = u_xlat83;
        let x_2734 : f32 = u_xlat82;
        u_xlat82 = ((x_2731 * x_2732) + x_2734);
        let x_2737 : vec4<f32> = u_xlat14;
        let x_2738 : vec2<f32> = vec2<f32>(x_2737.x, x_2737.y);
        let x_2740 : f32 = vs_INTERP3.z;
        txVec47 = vec3<f32>(x_2738.x, x_2738.y, x_2740);
        let x_2747 : vec3<f32> = txVec47;
        let x_2749 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2747.xy, x_2747.z);
        u_xlat83 = x_2749;
        let x_2751 : f32 = u_xlat19.x;
        let x_2752 : f32 = u_xlat83;
        let x_2754 : f32 = u_xlat82;
        u_xlat82 = ((x_2751 * x_2752) + x_2754);
        let x_2757 : vec4<f32> = u_xlat14;
        let x_2758 : vec2<f32> = vec2<f32>(x_2757.z, x_2757.w);
        let x_2760 : f32 = vs_INTERP3.z;
        txVec48 = vec3<f32>(x_2758.x, x_2758.y, x_2760);
        let x_2767 : vec3<f32> = txVec48;
        let x_2769 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2767.xy, x_2767.z);
        u_xlat83 = x_2769;
        let x_2771 : f32 = u_xlat19.y;
        let x_2772 : f32 = u_xlat83;
        let x_2774 : f32 = u_xlat82;
        u_xlat82 = ((x_2771 * x_2772) + x_2774);
        let x_2777 : vec4<f32> = u_xlat15;
        let x_2778 : vec2<f32> = vec2<f32>(x_2777.x, x_2777.y);
        let x_2780 : f32 = vs_INTERP3.z;
        txVec49 = vec3<f32>(x_2778.x, x_2778.y, x_2780);
        let x_2787 : vec3<f32> = txVec49;
        let x_2789 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2787.xy, x_2787.z);
        u_xlat83 = x_2789;
        let x_2791 : f32 = u_xlat19.z;
        let x_2792 : f32 = u_xlat83;
        let x_2794 : f32 = u_xlat82;
        u_xlat82 = ((x_2791 * x_2792) + x_2794);
        let x_2797 : vec4<f32> = u_xlat16;
        let x_2798 : vec2<f32> = vec2<f32>(x_2797.z, x_2797.w);
        let x_2800 : f32 = vs_INTERP3.z;
        txVec50 = vec3<f32>(x_2798.x, x_2798.y, x_2800);
        let x_2807 : vec3<f32> = txVec50;
        let x_2809 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2807.xy, x_2807.z);
        u_xlat83 = x_2809;
        let x_2811 : f32 = u_xlat19.w;
        let x_2812 : f32 = u_xlat83;
        let x_2814 : f32 = u_xlat82;
        u_xlat82 = ((x_2811 * x_2812) + x_2814);
        let x_2817 : vec4<f32> = u_xlat17;
        let x_2818 : vec2<f32> = vec2<f32>(x_2817.x, x_2817.y);
        let x_2820 : f32 = vs_INTERP3.z;
        txVec51 = vec3<f32>(x_2818.x, x_2818.y, x_2820);
        let x_2827 : vec3<f32> = txVec51;
        let x_2829 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2827.xy, x_2827.z);
        u_xlat83 = x_2829;
        let x_2831 : f32 = u_xlat20.x;
        let x_2832 : f32 = u_xlat83;
        let x_2834 : f32 = u_xlat82;
        u_xlat82 = ((x_2831 * x_2832) + x_2834);
        let x_2837 : vec4<f32> = u_xlat17;
        let x_2838 : vec2<f32> = vec2<f32>(x_2837.z, x_2837.w);
        let x_2840 : f32 = vs_INTERP3.z;
        txVec52 = vec3<f32>(x_2838.x, x_2838.y, x_2840);
        let x_2847 : vec3<f32> = txVec52;
        let x_2849 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2847.xy, x_2847.z);
        u_xlat83 = x_2849;
        let x_2851 : f32 = u_xlat20.y;
        let x_2852 : f32 = u_xlat83;
        let x_2854 : f32 = u_xlat82;
        u_xlat82 = ((x_2851 * x_2852) + x_2854);
        let x_2857 : vec2<f32> = u_xlat35;
        let x_2859 : f32 = vs_INTERP3.z;
        txVec53 = vec3<f32>(x_2857.x, x_2857.y, x_2859);
        let x_2866 : vec3<f32> = txVec53;
        let x_2868 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2866.xy, x_2866.z);
        u_xlat83 = x_2868;
        let x_2870 : f32 = u_xlat20.z;
        let x_2871 : f32 = u_xlat83;
        let x_2873 : f32 = u_xlat82;
        u_xlat82 = ((x_2870 * x_2871) + x_2873);
        let x_2876 : vec2<f32> = u_xlat67;
        let x_2878 : f32 = vs_INTERP3.z;
        txVec54 = vec3<f32>(x_2876.x, x_2876.y, x_2878);
        let x_2885 : vec3<f32> = txVec54;
        let x_2887 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2885.xy, x_2885.z);
        u_xlat83 = x_2887;
        let x_2889 : f32 = u_xlat20.w;
        let x_2890 : f32 = u_xlat83;
        let x_2892 : f32 = u_xlat82;
        u_xlat82 = ((x_2889 * x_2890) + x_2892);
        let x_2895 : vec4<f32> = u_xlat12;
        let x_2896 : vec2<f32> = vec2<f32>(x_2895.x, x_2895.y);
        let x_2898 : f32 = vs_INTERP3.z;
        txVec55 = vec3<f32>(x_2896.x, x_2896.y, x_2898);
        let x_2905 : vec3<f32> = txVec55;
        let x_2907 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2905.xy, x_2905.z);
        u_xlat83 = x_2907;
        let x_2909 : f32 = u_xlat8.x;
        let x_2910 : f32 = u_xlat83;
        let x_2912 : f32 = u_xlat82;
        u_xlat82 = ((x_2909 * x_2910) + x_2912);
        let x_2915 : vec4<f32> = u_xlat12;
        let x_2916 : vec2<f32> = vec2<f32>(x_2915.z, x_2915.w);
        let x_2918 : f32 = vs_INTERP3.z;
        txVec56 = vec3<f32>(x_2916.x, x_2916.y, x_2918);
        let x_2925 : vec3<f32> = txVec56;
        let x_2927 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2925.xy, x_2925.z);
        u_xlat83 = x_2927;
        let x_2929 : f32 = u_xlat8.y;
        let x_2930 : f32 = u_xlat83;
        let x_2932 : f32 = u_xlat82;
        u_xlat82 = ((x_2929 * x_2930) + x_2932);
        let x_2935 : vec2<f32> = u_xlat62;
        let x_2937 : f32 = vs_INTERP3.z;
        txVec57 = vec3<f32>(x_2935.x, x_2935.y, x_2937);
        let x_2944 : vec3<f32> = txVec57;
        let x_2946 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2944.xy, x_2944.z);
        u_xlat83 = x_2946;
        let x_2948 : f32 = u_xlat8.z;
        let x_2949 : f32 = u_xlat83;
        let x_2951 : f32 = u_xlat82;
        u_xlat82 = ((x_2948 * x_2949) + x_2951);
        let x_2954 : vec4<f32> = u_xlat7;
        let x_2955 : vec2<f32> = vec2<f32>(x_2954.x, x_2954.y);
        let x_2957 : f32 = vs_INTERP3.z;
        txVec58 = vec3<f32>(x_2955.x, x_2955.y, x_2957);
        let x_2964 : vec3<f32> = txVec58;
        let x_2966 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2964.xy, x_2964.z);
        u_xlat83 = x_2966;
        let x_2968 : f32 = u_xlat8.w;
        let x_2969 : f32 = u_xlat83;
        let x_2971 : f32 = u_xlat82;
        u_xlat78 = ((x_2968 * x_2969) + x_2971);
      }
    }
  } else {
    let x_2975 : vec4<f32> = vs_INTERP3;
    let x_2976 : vec2<f32> = vec2<f32>(x_2975.x, x_2975.y);
    let x_2978 : f32 = vs_INTERP3.z;
    txVec59 = vec3<f32>(x_2976.x, x_2976.y, x_2978);
    let x_2985 : vec3<f32> = txVec59;
    let x_2987 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2985.xy, x_2985.z);
    u_xlat78 = x_2987;
  }
  let x_2988 : f32 = u_xlat78;
  let x_2990 : f32 = x_131.x_MainLightShadowParams.x;
  let x_2993 : f32 = u_xlat4.x;
  u_xlat78 = ((x_2988 * x_2990) + x_2993);
  let x_2997 : f32 = vs_INTERP3.z;
  u_xlatb4 = (0.0f >= x_2997);
  let x_3000 : f32 = vs_INTERP3.z;
  u_xlatb82 = (x_3000 >= 1.0f);
  let x_3002 : bool = u_xlatb82;
  let x_3003 : bool = u_xlatb4;
  u_xlatb4 = (x_3002 | x_3003);
  let x_3005 : bool = u_xlatb4;
  let x_3006 : f32 = u_xlat78;
  u_xlat78 = select(x_3006, 1.0f, x_3005);
  let x_3008 : vec3<f32> = vs_INTERP8;
  let x_3010 : vec3<f32> = x_53.x_WorldSpaceCameraPos;
  let x_3012 : vec3<f32> = (x_3008 + -(x_3010));
  let x_3013 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3012.x, x_3012.y, x_3012.z, x_3013.w);
  let x_3015 : vec4<f32> = u_xlat7;
  let x_3017 : vec4<f32> = u_xlat7;
  u_xlat4.x = dot(vec3<f32>(x_3015.x, x_3015.y, x_3015.z), vec3<f32>(x_3017.x, x_3017.y, x_3017.z));
  let x_3022 : f32 = u_xlat4.x;
  let x_3024 : f32 = x_131.x_MainLightShadowParams.z;
  let x_3027 : f32 = x_131.x_MainLightShadowParams.w;
  u_xlat82 = ((x_3022 * x_3024) + x_3027);
  let x_3029 : f32 = u_xlat82;
  u_xlat82 = clamp(x_3029, 0.0f, 1.0f);
  let x_3031 : f32 = u_xlat78;
  u_xlat83 = (-(x_3031) + 1.0f);
  let x_3034 : f32 = u_xlat82;
  let x_3035 : f32 = u_xlat83;
  let x_3037 : f32 = u_xlat78;
  u_xlat78 = ((x_3034 * x_3035) + x_3037);
  let x_3039 : vec4<f32> = u_xlat6;
  let x_3042 : vec4<f32> = u_xlat5;
  u_xlat82 = dot(-(vec3<f32>(x_3039.x, x_3039.y, x_3039.z)), vec3<f32>(x_3042.x, x_3042.y, x_3042.z));
  let x_3045 : f32 = u_xlat82;
  let x_3046 : f32 = u_xlat82;
  u_xlat82 = (x_3045 + x_3046);
  let x_3048 : vec4<f32> = u_xlat5;
  let x_3050 : f32 = u_xlat82;
  let x_3054 : vec4<f32> = u_xlat6;
  let x_3057 : vec3<f32> = ((vec3<f32>(x_3048.x, x_3048.y, x_3048.z) * -(vec3<f32>(x_3050, x_3050, x_3050))) + -(vec3<f32>(x_3054.x, x_3054.y, x_3054.z)));
  let x_3058 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3057.x, x_3057.y, x_3057.z, x_3058.w);
  let x_3060 : vec4<f32> = u_xlat5;
  let x_3062 : vec4<f32> = u_xlat6;
  u_xlat82 = dot(vec3<f32>(x_3060.x, x_3060.y, x_3060.z), vec3<f32>(x_3062.x, x_3062.y, x_3062.z));
  let x_3065 : f32 = u_xlat82;
  u_xlat82 = clamp(x_3065, 0.0f, 1.0f);
  let x_3067 : f32 = u_xlat82;
  u_xlat82 = (-(x_3067) + 1.0f);
  let x_3070 : f32 = u_xlat82;
  let x_3071 : f32 = u_xlat82;
  u_xlat82 = (x_3070 * x_3071);
  let x_3073 : f32 = u_xlat82;
  let x_3074 : f32 = u_xlat82;
  u_xlat82 = (x_3073 * x_3074);
  let x_3077 : f32 = u_xlat27.x;
  u_xlat83 = ((-(x_3077) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_3084 : f32 = u_xlat27.x;
  let x_3085 : f32 = u_xlat83;
  u_xlat27.x = (x_3084 * x_3085);
  let x_3089 : f32 = u_xlat27.x;
  u_xlat27.x = (x_3089 * 6.0f);
  let x_3101 : vec4<f32> = u_xlat7;
  let x_3104 : f32 = u_xlat27.x;
  let x_3105 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_3101.x, x_3101.y, x_3101.z), x_3104);
  u_xlat7 = x_3105;
  let x_3107 : f32 = u_xlat7.w;
  u_xlat27.x = (x_3107 + -1.0f);
  let x_3111 : f32 = x_1585.unity_SpecCube0_HDR.w;
  let x_3113 : f32 = u_xlat27.x;
  u_xlat27.x = ((x_3111 * x_3113) + 1.0f);
  let x_3118 : f32 = u_xlat27.x;
  u_xlat27.x = max(x_3118, 0.0f);
  let x_3122 : f32 = u_xlat27.x;
  u_xlat27.x = log2(x_3122);
  let x_3126 : f32 = u_xlat27.x;
  let x_3128 : f32 = x_1585.unity_SpecCube0_HDR.y;
  u_xlat27.x = (x_3126 * x_3128);
  let x_3132 : f32 = u_xlat27.x;
  u_xlat27.x = exp2(x_3132);
  let x_3136 : f32 = u_xlat27.x;
  let x_3138 : f32 = x_1585.unity_SpecCube0_HDR.x;
  u_xlat27.x = (x_3136 * x_3138);
  let x_3141 : vec4<f32> = u_xlat7;
  let x_3143 : vec3<f32> = u_xlat27;
  let x_3145 : vec3<f32> = (vec3<f32>(x_3141.x, x_3141.y, x_3141.z) * vec3<f32>(x_3143.x, x_3143.x, x_3143.x));
  let x_3146 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3145.x, x_3145.y, x_3145.z, x_3146.w);
  let x_3148 : f32 = u_xlat79;
  let x_3150 : f32 = u_xlat79;
  let x_3154 : vec2<f32> = ((vec2<f32>(x_3148, x_3148) * vec2<f32>(x_3150, x_3150)) + vec2<f32>(-1.0f, 1.0f));
  let x_3155 : vec3<f32> = u_xlat27;
  u_xlat27 = vec3<f32>(x_3154.x, x_3155.y, x_3154.y);
  let x_3158 : f32 = u_xlat27.z;
  u_xlat79 = (1.0f / x_3158);
  let x_3161 : f32 = u_xlat3.x;
  u_xlat3.x = (x_3161 + -0.03999999910593032837f);
  let x_3165 : f32 = u_xlat82;
  let x_3167 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_3165 * x_3167) + 0.03999999910593032837f);
  let x_3172 : f32 = u_xlat79;
  let x_3174 : f32 = u_xlat3.x;
  u_xlat79 = (x_3172 * x_3174);
  let x_3176 : f32 = u_xlat79;
  let x_3178 : vec4<f32> = u_xlat7;
  let x_3180 : vec3<f32> = (vec3<f32>(x_3176, x_3176, x_3176) * vec3<f32>(x_3178.x, x_3178.y, x_3178.z));
  let x_3181 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3180.x, x_3180.y, x_3180.z, x_3181.w);
  let x_3183 : vec3<f32> = u_xlat29;
  let x_3184 : vec3<f32> = u_xlat2;
  let x_3186 : vec4<f32> = u_xlat7;
  let x_3188 : vec3<f32> = ((x_3183 * x_3184) + vec3<f32>(x_3186.x, x_3186.y, x_3186.z));
  let x_3189 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_3188.x, x_3188.y, x_3188.z, x_3189.w);
  let x_3191 : f32 = u_xlat78;
  let x_3193 : f32 = x_1585.unity_LightData.z;
  u_xlat78 = (x_3191 * x_3193);
  let x_3195 : vec4<f32> = u_xlat5;
  let x_3198 : vec4<f32> = x_53.x_MainLightPosition;
  u_xlat79 = dot(vec3<f32>(x_3195.x, x_3195.y, x_3195.z), vec3<f32>(x_3198.x, x_3198.y, x_3198.z));
  let x_3201 : f32 = u_xlat79;
  u_xlat79 = clamp(x_3201, 0.0f, 1.0f);
  let x_3203 : f32 = u_xlat78;
  let x_3204 : f32 = u_xlat79;
  u_xlat78 = (x_3203 * x_3204);
  let x_3206 : f32 = u_xlat78;
  let x_3209 : vec4<f32> = x_53.x_MainLightColor;
  let x_3211 : vec3<f32> = (vec3<f32>(x_3206, x_3206, x_3206) * vec3<f32>(x_3209.x, x_3209.y, x_3209.z));
  let x_3212 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3211.x, x_3211.y, x_3211.z, x_3212.w);
  let x_3214 : vec4<f32> = u_xlat6;
  let x_3217 : vec4<f32> = x_53.x_MainLightPosition;
  let x_3219 : vec3<f32> = (vec3<f32>(x_3214.x, x_3214.y, x_3214.z) + vec3<f32>(x_3217.x, x_3217.y, x_3217.z));
  let x_3220 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3219.x, x_3219.y, x_3219.z, x_3220.w);
  let x_3222 : vec4<f32> = u_xlat8;
  let x_3224 : vec4<f32> = u_xlat8;
  u_xlat78 = dot(vec3<f32>(x_3222.x, x_3222.y, x_3222.z), vec3<f32>(x_3224.x, x_3224.y, x_3224.z));
  let x_3227 : f32 = u_xlat78;
  u_xlat78 = max(x_3227, 1.17549435e-38f);
  let x_3230 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_3230);
  let x_3232 : f32 = u_xlat78;
  let x_3234 : vec4<f32> = u_xlat8;
  let x_3236 : vec3<f32> = (vec3<f32>(x_3232, x_3232, x_3232) * vec3<f32>(x_3234.x, x_3234.y, x_3234.z));
  let x_3237 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3236.x, x_3236.y, x_3236.z, x_3237.w);
  let x_3239 : vec4<f32> = u_xlat5;
  let x_3241 : vec4<f32> = u_xlat8;
  u_xlat78 = dot(vec3<f32>(x_3239.x, x_3239.y, x_3239.z), vec3<f32>(x_3241.x, x_3241.y, x_3241.z));
  let x_3244 : f32 = u_xlat78;
  u_xlat78 = clamp(x_3244, 0.0f, 1.0f);
  let x_3247 : vec4<f32> = x_53.x_MainLightPosition;
  let x_3249 : vec4<f32> = u_xlat8;
  u_xlat79 = dot(vec3<f32>(x_3247.x, x_3247.y, x_3247.z), vec3<f32>(x_3249.x, x_3249.y, x_3249.z));
  let x_3252 : f32 = u_xlat79;
  u_xlat79 = clamp(x_3252, 0.0f, 1.0f);
  let x_3254 : f32 = u_xlat78;
  let x_3255 : f32 = u_xlat78;
  u_xlat78 = (x_3254 * x_3255);
  let x_3257 : f32 = u_xlat78;
  let x_3259 : f32 = u_xlat27.x;
  u_xlat78 = ((x_3257 * x_3259) + 1.00001001358032226562f);
  let x_3263 : f32 = u_xlat79;
  let x_3264 : f32 = u_xlat79;
  u_xlat79 = (x_3263 * x_3264);
  let x_3266 : f32 = u_xlat78;
  let x_3267 : f32 = u_xlat78;
  u_xlat78 = (x_3266 * x_3267);
  let x_3269 : f32 = u_xlat79;
  u_xlat79 = max(x_3269, 0.10000000149011611938f);
  let x_3272 : f32 = u_xlat78;
  let x_3273 : f32 = u_xlat79;
  u_xlat78 = (x_3272 * x_3273);
  let x_3276 : f32 = u_xlat30.x;
  let x_3277 : f32 = u_xlat78;
  u_xlat78 = (x_3276 * x_3277);
  let x_3279 : f32 = u_xlat80;
  let x_3280 : f32 = u_xlat78;
  u_xlat78 = (x_3279 / x_3280);
  let x_3282 : f32 = u_xlat78;
  let x_3286 : vec3<f32> = u_xlat2;
  let x_3287 : vec3<f32> = ((vec3<f32>(x_3282, x_3282, x_3282) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_3286);
  let x_3288 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3287.x, x_3287.y, x_3287.z, x_3288.w);
  let x_3290 : vec4<f32> = u_xlat7;
  let x_3292 : vec4<f32> = u_xlat8;
  let x_3294 : vec3<f32> = (vec3<f32>(x_3290.x, x_3290.y, x_3290.z) * vec3<f32>(x_3292.x, x_3292.y, x_3292.z));
  let x_3295 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3294.x, x_3294.y, x_3294.z, x_3295.w);
  let x_3299 : f32 = x_53.x_AdditionalLightsCount.x;
  let x_3301 : f32 = x_1585.unity_LightData.y;
  u_xlat78 = min(x_3299, x_3301);
  let x_3305 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_3305));
  let x_3309 : f32 = u_xlat4.x;
  let x_3312 : f32 = x_131.x_AdditionalShadowFadeParams.x;
  let x_3315 : f32 = x_131.x_AdditionalShadowFadeParams.y;
  u_xlat79 = ((x_3309 * x_3312) + x_3315);
  let x_3317 : f32 = u_xlat79;
  u_xlat79 = clamp(x_3317, 0.0f, 1.0f);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_3329 : u32 = u_xlatu_loop_1;
    let x_3330 : u32 = u_xlatu78;
    if ((x_3329 < x_3330)) {
    } else {
      break;
    }
    let x_3333 : u32 = u_xlatu_loop_1;
    u_xlatu4 = (x_3333 >> 2u);
    let x_3337 : u32 = u_xlatu_loop_1;
    u_xlati82 = bitcast<i32>((x_3337 & 3u));
    let x_3340 : u32 = u_xlatu4;
    let x_3343 : vec4<f32> = x_1585.unity_LightIndices[bitcast<i32>(x_3340)];
    let x_3353 : i32 = u_xlati82;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_3358 : vec4<u32> = indexable[x_3353];
    u_xlat4.x = dot(x_3343, bitcast<vec4<f32>>(x_3358));
    let x_3364 : f32 = u_xlat4.x;
    u_xlati4 = i32(x_3364);
    let x_3366 : vec3<f32> = vs_INTERP8;
    let x_3377 : i32 = u_xlati4;
    let x_3379 : vec4<f32> = x_3376.x_AdditionalLightsPosition[x_3377];
    let x_3382 : i32 = u_xlati4;
    let x_3384 : vec4<f32> = x_3376.x_AdditionalLightsPosition[x_3382];
    let x_3386 : vec3<f32> = ((-(x_3366) * vec3<f32>(x_3379.w, x_3379.w, x_3379.w)) + vec3<f32>(x_3384.x, x_3384.y, x_3384.z));
    let x_3387 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3386.x, x_3386.y, x_3386.z, x_3387.w);
    let x_3389 : vec4<f32> = u_xlat9;
    let x_3391 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_3389.x, x_3389.y, x_3389.z), vec3<f32>(x_3391.x, x_3391.y, x_3391.z));
    let x_3394 : f32 = u_xlat82;
    u_xlat82 = max(x_3394, 0.00006103515625f);
    let x_3397 : f32 = u_xlat82;
    u_xlat83 = inverseSqrt(x_3397);
    let x_3399 : f32 = u_xlat83;
    let x_3401 : vec4<f32> = u_xlat9;
    let x_3403 : vec3<f32> = (vec3<f32>(x_3399, x_3399, x_3399) * vec3<f32>(x_3401.x, x_3401.y, x_3401.z));
    let x_3404 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3403.x, x_3403.y, x_3403.z, x_3404.w);
    let x_3406 : f32 = u_xlat82;
    u_xlat84 = (1.0f / x_3406);
    let x_3408 : f32 = u_xlat82;
    let x_3409 : i32 = u_xlati4;
    let x_3411 : f32 = x_3376.x_AdditionalLightsAttenuation[x_3409].x;
    u_xlat82 = (x_3408 * x_3411);
    let x_3413 : f32 = u_xlat82;
    let x_3415 : f32 = u_xlat82;
    u_xlat82 = ((-(x_3413) * x_3415) + 1.0f);
    let x_3418 : f32 = u_xlat82;
    u_xlat82 = max(x_3418, 0.0f);
    let x_3420 : f32 = u_xlat82;
    let x_3421 : f32 = u_xlat82;
    u_xlat82 = (x_3420 * x_3421);
    let x_3423 : f32 = u_xlat82;
    let x_3424 : f32 = u_xlat84;
    u_xlat82 = (x_3423 * x_3424);
    let x_3426 : i32 = u_xlati4;
    let x_3428 : vec4<f32> = x_3376.x_AdditionalLightsSpotDir[x_3426];
    let x_3430 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_3428.x, x_3428.y, x_3428.z), vec3<f32>(x_3430.x, x_3430.y, x_3430.z));
    let x_3433 : f32 = u_xlat84;
    let x_3434 : i32 = u_xlati4;
    let x_3436 : f32 = x_3376.x_AdditionalLightsAttenuation[x_3434].z;
    let x_3438 : i32 = u_xlati4;
    let x_3440 : f32 = x_3376.x_AdditionalLightsAttenuation[x_3438].w;
    u_xlat84 = ((x_3433 * x_3436) + x_3440);
    let x_3442 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3442, 0.0f, 1.0f);
    let x_3444 : f32 = u_xlat84;
    let x_3445 : f32 = u_xlat84;
    u_xlat84 = (x_3444 * x_3445);
    let x_3447 : f32 = u_xlat82;
    let x_3448 : f32 = u_xlat84;
    u_xlat82 = (x_3447 * x_3448);
    let x_3452 : i32 = u_xlati4;
    let x_3454 : f32 = x_131.x_AdditionalShadowParams[x_3452].w;
    u_xlati84 = i32(x_3454);
    let x_3457 : i32 = u_xlati84;
    u_xlatb85 = (x_3457 >= 0i);
    let x_3459 : bool = u_xlatb85;
    if (x_3459) {
      let x_3463 : i32 = u_xlati4;
      let x_3465 : f32 = x_131.x_AdditionalShadowParams[x_3463].z;
      u_xlatb85 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_3465, x_3465, x_3465, x_3465))));
      let x_3470 : bool = u_xlatb85;
      if (x_3470) {
        let x_3475 : vec4<f32> = u_xlat10;
        let x_3478 : vec4<f32> = u_xlat10;
        let x_3481 : vec4<bool> = (abs(vec4<f32>(x_3475.z, x_3475.z, x_3475.y, x_3475.z)) >= abs(vec4<f32>(x_3478.x, x_3478.y, x_3478.x, x_3478.x)));
        let x_3482 : vec3<bool> = vec3<bool>(x_3481.x, x_3481.y, x_3481.z);
        let x_3483 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3482.x, x_3482.y, x_3482.z, x_3483.w);
        let x_3486 : bool = u_xlatb11.y;
        let x_3488 : bool = u_xlatb11.x;
        u_xlatb85 = (x_3486 & x_3488);
        let x_3490 : vec4<f32> = u_xlat10;
        let x_3493 : vec4<bool> = (-(vec4<f32>(x_3490.z, x_3490.y, x_3490.z, x_3490.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_3494 : vec3<bool> = vec3<bool>(x_3493.x, x_3493.y, x_3493.w);
        let x_3495 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3494.x, x_3494.y, x_3495.z, x_3494.z);
        let x_3498 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_3498);
        let x_3503 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_3503);
        let x_3509 : bool = u_xlatb11.w;
        u_xlat86 = select(0.0f, 1.0f, x_3509);
        let x_3512 : bool = u_xlatb11.z;
        if (x_3512) {
          let x_3517 : f32 = u_xlat11.y;
          x_3513 = x_3517;
        } else {
          let x_3519 : f32 = u_xlat86;
          x_3513 = x_3519;
        }
        let x_3520 : f32 = x_3513;
        u_xlat86 = x_3520;
        let x_3522 : bool = u_xlatb85;
        if (x_3522) {
          let x_3527 : f32 = u_xlat11.x;
          x_3523 = x_3527;
        } else {
          let x_3529 : f32 = u_xlat86;
          x_3523 = x_3529;
        }
        let x_3530 : f32 = x_3523;
        u_xlat85 = x_3530;
        let x_3531 : i32 = u_xlati4;
        let x_3533 : f32 = x_131.x_AdditionalShadowParams[x_3531].w;
        u_xlat86 = trunc(x_3533);
        let x_3535 : f32 = u_xlat85;
        let x_3536 : f32 = u_xlat86;
        u_xlat85 = (x_3535 + x_3536);
        let x_3538 : f32 = u_xlat85;
        u_xlati84 = i32(x_3538);
      }
      let x_3540 : i32 = u_xlati84;
      u_xlati84 = (x_3540 << bitcast<u32>(2i));
      let x_3542 : vec3<f32> = vs_INTERP8;
      let x_3545 : i32 = u_xlati84;
      let x_3548 : i32 = u_xlati84;
      let x_3552 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[((x_3545 + 1i) / 4i)][((x_3548 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_3542.y, x_3542.y, x_3542.y, x_3542.y) * x_3552);
      let x_3554 : i32 = u_xlati84;
      let x_3556 : i32 = u_xlati84;
      let x_3559 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[(x_3554 / 4i)][(x_3556 % 4i)];
      let x_3560 : vec3<f32> = vs_INTERP8;
      let x_3563 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3559 * vec4<f32>(x_3560.x, x_3560.x, x_3560.x, x_3560.x)) + x_3563);
      let x_3565 : i32 = u_xlati84;
      let x_3568 : i32 = u_xlati84;
      let x_3572 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[((x_3565 + 2i) / 4i)][((x_3568 + 2i) % 4i)];
      let x_3573 : vec3<f32> = vs_INTERP8;
      let x_3576 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3572 * vec4<f32>(x_3573.z, x_3573.z, x_3573.z, x_3573.z)) + x_3576);
      let x_3578 : vec4<f32> = u_xlat11;
      let x_3579 : i32 = u_xlati84;
      let x_3582 : i32 = u_xlati84;
      let x_3586 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[((x_3579 + 3i) / 4i)][((x_3582 + 3i) % 4i)];
      u_xlat11 = (x_3578 + x_3586);
      let x_3588 : vec4<f32> = u_xlat11;
      let x_3590 : vec4<f32> = u_xlat11;
      let x_3592 : vec3<f32> = (vec3<f32>(x_3588.x, x_3588.y, x_3588.z) / vec3<f32>(x_3590.w, x_3590.w, x_3590.w));
      let x_3593 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3592.x, x_3592.y, x_3592.z, x_3593.w);
      let x_3596 : i32 = u_xlati4;
      let x_3598 : f32 = x_131.x_AdditionalShadowParams[x_3596].y;
      u_xlatb84 = (0.0f < x_3598);
      let x_3600 : bool = u_xlatb84;
      if (x_3600) {
        let x_3603 : i32 = u_xlati4;
        let x_3605 : f32 = x_131.x_AdditionalShadowParams[x_3603].y;
        u_xlatb84 = (1.0f == x_3605);
        let x_3607 : bool = u_xlatb84;
        if (x_3607) {
          let x_3610 : vec4<f32> = u_xlat11;
          let x_3614 : vec4<f32> = x_131.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_3610.x, x_3610.y, x_3610.x, x_3610.y) + x_3614);
          let x_3617 : vec4<f32> = u_xlat12;
          let x_3618 : vec2<f32> = vec2<f32>(x_3617.x, x_3617.y);
          let x_3620 : f32 = u_xlat11.z;
          txVec60 = vec3<f32>(x_3618.x, x_3618.y, x_3620);
          let x_3628 : vec3<f32> = txVec60;
          let x_3630 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3628.xy, x_3628.z);
          u_xlat13.x = x_3630;
          let x_3633 : vec4<f32> = u_xlat12;
          let x_3634 : vec2<f32> = vec2<f32>(x_3633.z, x_3633.w);
          let x_3636 : f32 = u_xlat11.z;
          txVec61 = vec3<f32>(x_3634.x, x_3634.y, x_3636);
          let x_3643 : vec3<f32> = txVec61;
          let x_3645 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3643.xy, x_3643.z);
          u_xlat13.y = x_3645;
          let x_3647 : vec4<f32> = u_xlat11;
          let x_3651 : vec4<f32> = x_131.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_3647.x, x_3647.y, x_3647.x, x_3647.y) + x_3651);
          let x_3654 : vec4<f32> = u_xlat12;
          let x_3655 : vec2<f32> = vec2<f32>(x_3654.x, x_3654.y);
          let x_3657 : f32 = u_xlat11.z;
          txVec62 = vec3<f32>(x_3655.x, x_3655.y, x_3657);
          let x_3664 : vec3<f32> = txVec62;
          let x_3666 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3664.xy, x_3664.z);
          u_xlat13.z = x_3666;
          let x_3669 : vec4<f32> = u_xlat12;
          let x_3670 : vec2<f32> = vec2<f32>(x_3669.z, x_3669.w);
          let x_3672 : f32 = u_xlat11.z;
          txVec63 = vec3<f32>(x_3670.x, x_3670.y, x_3672);
          let x_3679 : vec3<f32> = txVec63;
          let x_3681 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3679.xy, x_3679.z);
          u_xlat13.w = x_3681;
          let x_3683 : vec4<f32> = u_xlat13;
          u_xlat84 = dot(x_3683, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3686 : i32 = u_xlati4;
          let x_3688 : f32 = x_131.x_AdditionalShadowParams[x_3686].y;
          u_xlatb85 = (2.0f == x_3688);
          let x_3690 : bool = u_xlatb85;
          if (x_3690) {
            let x_3693 : vec4<f32> = u_xlat11;
            let x_3697 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_3700 : vec2<f32> = ((vec2<f32>(x_3693.x, x_3693.y) * vec2<f32>(x_3697.z, x_3697.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3701 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3700.x, x_3700.y, x_3701.z, x_3701.w);
            let x_3703 : vec4<f32> = u_xlat12;
            let x_3705 : vec2<f32> = floor(vec2<f32>(x_3703.x, x_3703.y));
            let x_3706 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3705.x, x_3705.y, x_3706.z, x_3706.w);
            let x_3709 : vec4<f32> = u_xlat11;
            let x_3712 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_3715 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3709.x, x_3709.y) * vec2<f32>(x_3712.z, x_3712.w)) + -(vec2<f32>(x_3715.x, x_3715.y)));
            let x_3719 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3719.x, x_3719.x, x_3719.y, x_3719.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3722 : vec4<f32> = u_xlat13;
            let x_3724 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3722.x, x_3722.x, x_3722.z, x_3722.z) * vec4<f32>(x_3724.x, x_3724.x, x_3724.z, x_3724.z));
            let x_3727 : vec4<f32> = u_xlat14;
            let x_3729 : vec2<f32> = (vec2<f32>(x_3727.y, x_3727.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3730 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3729.x, x_3730.y, x_3729.y, x_3730.w);
            let x_3732 : vec4<f32> = u_xlat14;
            let x_3735 : vec2<f32> = u_xlat64;
            let x_3737 : vec2<f32> = ((vec2<f32>(x_3732.x, x_3732.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3735));
            let x_3738 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3737.x, x_3737.y, x_3738.z, x_3738.w);
            let x_3741 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_3741) + vec2<f32>(1.0f, 1.0f));
            let x_3744 : vec2<f32> = u_xlat64;
            let x_3745 : vec2<f32> = min(x_3744, vec2<f32>(0.0f, 0.0f));
            let x_3746 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3745.x, x_3745.y, x_3746.z, x_3746.w);
            let x_3748 : vec4<f32> = u_xlat15;
            let x_3751 : vec4<f32> = u_xlat15;
            let x_3754 : vec2<f32> = u_xlat66;
            let x_3755 : vec2<f32> = ((-(vec2<f32>(x_3748.x, x_3748.y)) * vec2<f32>(x_3751.x, x_3751.y)) + x_3754);
            let x_3756 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3755.x, x_3755.y, x_3756.z, x_3756.w);
            let x_3758 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_3758, vec2<f32>(0.0f, 0.0f));
            let x_3760 : vec2<f32> = u_xlat64;
            let x_3762 : vec2<f32> = u_xlat64;
            let x_3764 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_3760) * x_3762) + vec2<f32>(x_3764.y, x_3764.w));
            let x_3767 : vec4<f32> = u_xlat15;
            let x_3769 : vec2<f32> = (vec2<f32>(x_3767.x, x_3767.y) + vec2<f32>(1.0f, 1.0f));
            let x_3770 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3769.x, x_3769.y, x_3770.z, x_3770.w);
            let x_3772 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_3772 + vec2<f32>(1.0f, 1.0f));
            let x_3774 : vec4<f32> = u_xlat14;
            let x_3776 : vec2<f32> = (vec2<f32>(x_3774.x, x_3774.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3777 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3776.x, x_3776.y, x_3777.z, x_3777.w);
            let x_3779 : vec2<f32> = u_xlat66;
            let x_3780 : vec2<f32> = (x_3779 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3781 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3780.x, x_3780.y, x_3781.z, x_3781.w);
            let x_3783 : vec4<f32> = u_xlat15;
            let x_3785 : vec2<f32> = (vec2<f32>(x_3783.x, x_3783.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3786 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3785.x, x_3785.y, x_3786.z, x_3786.w);
            let x_3788 : vec2<f32> = u_xlat64;
            let x_3789 : vec2<f32> = (x_3788 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3790 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3789.x, x_3789.y, x_3790.z, x_3790.w);
            let x_3792 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_3792.y, x_3792.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3796 : f32 = u_xlat15.x;
            u_xlat16.z = x_3796;
            let x_3799 : f32 = u_xlat64.x;
            u_xlat16.w = x_3799;
            let x_3802 : f32 = u_xlat17.x;
            u_xlat14.z = x_3802;
            let x_3805 : f32 = u_xlat13.x;
            u_xlat14.w = x_3805;
            let x_3807 : vec4<f32> = u_xlat14;
            let x_3809 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_3807.z, x_3807.w, x_3807.x, x_3807.z) + vec4<f32>(x_3809.z, x_3809.w, x_3809.x, x_3809.z));
            let x_3813 : f32 = u_xlat16.y;
            u_xlat15.z = x_3813;
            let x_3816 : f32 = u_xlat64.y;
            u_xlat15.w = x_3816;
            let x_3819 : f32 = u_xlat14.y;
            u_xlat17.z = x_3819;
            let x_3822 : f32 = u_xlat13.z;
            u_xlat17.w = x_3822;
            let x_3824 : vec4<f32> = u_xlat15;
            let x_3826 : vec4<f32> = u_xlat17;
            let x_3828 : vec3<f32> = (vec3<f32>(x_3824.z, x_3824.y, x_3824.w) + vec3<f32>(x_3826.z, x_3826.y, x_3826.w));
            let x_3829 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3828.x, x_3828.y, x_3828.z, x_3829.w);
            let x_3831 : vec4<f32> = u_xlat14;
            let x_3833 : vec4<f32> = u_xlat18;
            let x_3835 : vec3<f32> = (vec3<f32>(x_3831.x, x_3831.z, x_3831.w) / vec3<f32>(x_3833.z, x_3833.w, x_3833.y));
            let x_3836 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3835.x, x_3835.y, x_3835.z, x_3836.w);
            let x_3838 : vec4<f32> = u_xlat14;
            let x_3840 : vec3<f32> = (vec3<f32>(x_3838.x, x_3838.y, x_3838.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3841 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3840.x, x_3840.y, x_3840.z, x_3841.w);
            let x_3843 : vec4<f32> = u_xlat17;
            let x_3845 : vec4<f32> = u_xlat13;
            let x_3847 : vec3<f32> = (vec3<f32>(x_3843.z, x_3843.y, x_3843.w) / vec3<f32>(x_3845.x, x_3845.y, x_3845.z));
            let x_3848 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3847.x, x_3847.y, x_3847.z, x_3848.w);
            let x_3850 : vec4<f32> = u_xlat15;
            let x_3852 : vec3<f32> = (vec3<f32>(x_3850.x, x_3850.y, x_3850.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3853 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3852.x, x_3852.y, x_3852.z, x_3853.w);
            let x_3855 : vec4<f32> = u_xlat14;
            let x_3858 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_3860 : vec3<f32> = (vec3<f32>(x_3855.y, x_3855.x, x_3855.z) * vec3<f32>(x_3858.x, x_3858.x, x_3858.x));
            let x_3861 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3860.x, x_3860.y, x_3860.z, x_3861.w);
            let x_3863 : vec4<f32> = u_xlat15;
            let x_3866 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_3868 : vec3<f32> = (vec3<f32>(x_3863.x, x_3863.y, x_3863.z) * vec3<f32>(x_3866.y, x_3866.y, x_3866.y));
            let x_3869 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3868.x, x_3868.y, x_3868.z, x_3869.w);
            let x_3872 : f32 = u_xlat15.x;
            u_xlat14.w = x_3872;
            let x_3874 : vec4<f32> = u_xlat12;
            let x_3877 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_3880 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3874.x, x_3874.y, x_3874.x, x_3874.y) * vec4<f32>(x_3877.x, x_3877.y, x_3877.x, x_3877.y)) + vec4<f32>(x_3880.y, x_3880.w, x_3880.x, x_3880.w));
            let x_3883 : vec4<f32> = u_xlat12;
            let x_3886 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_3889 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3883.x, x_3883.y) * vec2<f32>(x_3886.x, x_3886.y)) + vec2<f32>(x_3889.z, x_3889.w));
            let x_3893 : f32 = u_xlat14.y;
            u_xlat15.w = x_3893;
            let x_3895 : vec4<f32> = u_xlat15;
            let x_3896 : vec2<f32> = vec2<f32>(x_3895.y, x_3895.z);
            let x_3897 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3897.x, x_3896.x, x_3897.z, x_3896.y);
            let x_3899 : vec4<f32> = u_xlat12;
            let x_3902 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_3905 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_3899.x, x_3899.y, x_3899.x, x_3899.y) * vec4<f32>(x_3902.x, x_3902.y, x_3902.x, x_3902.y)) + vec4<f32>(x_3905.x, x_3905.y, x_3905.z, x_3905.y));
            let x_3908 : vec4<f32> = u_xlat12;
            let x_3911 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_3914 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_3908.x, x_3908.y, x_3908.x, x_3908.y) * vec4<f32>(x_3911.x, x_3911.y, x_3911.x, x_3911.y)) + vec4<f32>(x_3914.w, x_3914.y, x_3914.w, x_3914.z));
            let x_3917 : vec4<f32> = u_xlat12;
            let x_3920 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_3923 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3917.x, x_3917.y, x_3917.x, x_3917.y) * vec4<f32>(x_3920.x, x_3920.y, x_3920.x, x_3920.y)) + vec4<f32>(x_3923.x, x_3923.w, x_3923.z, x_3923.w));
            let x_3926 : vec4<f32> = u_xlat13;
            let x_3928 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_3926.x, x_3926.x, x_3926.x, x_3926.y) * vec4<f32>(x_3928.z, x_3928.w, x_3928.y, x_3928.z));
            let x_3931 : vec4<f32> = u_xlat13;
            let x_3933 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_3931.y, x_3931.y, x_3931.z, x_3931.z) * x_3933);
            let x_3936 : f32 = u_xlat13.z;
            let x_3938 : f32 = u_xlat18.y;
            u_xlat85 = (x_3936 * x_3938);
            let x_3941 : vec4<f32> = u_xlat16;
            let x_3942 : vec2<f32> = vec2<f32>(x_3941.x, x_3941.y);
            let x_3944 : f32 = u_xlat11.z;
            txVec64 = vec3<f32>(x_3942.x, x_3942.y, x_3944);
            let x_3951 : vec3<f32> = txVec64;
            let x_3953 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3951.xy, x_3951.z);
            u_xlat86 = x_3953;
            let x_3955 : vec4<f32> = u_xlat16;
            let x_3956 : vec2<f32> = vec2<f32>(x_3955.z, x_3955.w);
            let x_3958 : f32 = u_xlat11.z;
            txVec65 = vec3<f32>(x_3956.x, x_3956.y, x_3958);
            let x_3966 : vec3<f32> = txVec65;
            let x_3968 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3966.xy, x_3966.z);
            u_xlat87 = x_3968;
            let x_3969 : f32 = u_xlat87;
            let x_3971 : f32 = u_xlat19.y;
            u_xlat87 = (x_3969 * x_3971);
            let x_3974 : f32 = u_xlat19.x;
            let x_3975 : f32 = u_xlat86;
            let x_3977 : f32 = u_xlat87;
            u_xlat86 = ((x_3974 * x_3975) + x_3977);
            let x_3980 : vec2<f32> = u_xlat64;
            let x_3982 : f32 = u_xlat11.z;
            txVec66 = vec3<f32>(x_3980.x, x_3980.y, x_3982);
            let x_3989 : vec3<f32> = txVec66;
            let x_3991 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3989.xy, x_3989.z);
            u_xlat87 = x_3991;
            let x_3993 : f32 = u_xlat19.z;
            let x_3994 : f32 = u_xlat87;
            let x_3996 : f32 = u_xlat86;
            u_xlat86 = ((x_3993 * x_3994) + x_3996);
            let x_3999 : vec4<f32> = u_xlat15;
            let x_4000 : vec2<f32> = vec2<f32>(x_3999.x, x_3999.y);
            let x_4002 : f32 = u_xlat11.z;
            txVec67 = vec3<f32>(x_4000.x, x_4000.y, x_4002);
            let x_4009 : vec3<f32> = txVec67;
            let x_4011 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4009.xy, x_4009.z);
            u_xlat87 = x_4011;
            let x_4013 : f32 = u_xlat19.w;
            let x_4014 : f32 = u_xlat87;
            let x_4016 : f32 = u_xlat86;
            u_xlat86 = ((x_4013 * x_4014) + x_4016);
            let x_4019 : vec4<f32> = u_xlat17;
            let x_4020 : vec2<f32> = vec2<f32>(x_4019.x, x_4019.y);
            let x_4022 : f32 = u_xlat11.z;
            txVec68 = vec3<f32>(x_4020.x, x_4020.y, x_4022);
            let x_4029 : vec3<f32> = txVec68;
            let x_4031 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4029.xy, x_4029.z);
            u_xlat87 = x_4031;
            let x_4033 : f32 = u_xlat20.x;
            let x_4034 : f32 = u_xlat87;
            let x_4036 : f32 = u_xlat86;
            u_xlat86 = ((x_4033 * x_4034) + x_4036);
            let x_4039 : vec4<f32> = u_xlat17;
            let x_4040 : vec2<f32> = vec2<f32>(x_4039.z, x_4039.w);
            let x_4042 : f32 = u_xlat11.z;
            txVec69 = vec3<f32>(x_4040.x, x_4040.y, x_4042);
            let x_4049 : vec3<f32> = txVec69;
            let x_4051 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4049.xy, x_4049.z);
            u_xlat87 = x_4051;
            let x_4053 : f32 = u_xlat20.y;
            let x_4054 : f32 = u_xlat87;
            let x_4056 : f32 = u_xlat86;
            u_xlat86 = ((x_4053 * x_4054) + x_4056);
            let x_4059 : vec4<f32> = u_xlat15;
            let x_4060 : vec2<f32> = vec2<f32>(x_4059.z, x_4059.w);
            let x_4062 : f32 = u_xlat11.z;
            txVec70 = vec3<f32>(x_4060.x, x_4060.y, x_4062);
            let x_4069 : vec3<f32> = txVec70;
            let x_4071 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4069.xy, x_4069.z);
            u_xlat87 = x_4071;
            let x_4073 : f32 = u_xlat20.z;
            let x_4074 : f32 = u_xlat87;
            let x_4076 : f32 = u_xlat86;
            u_xlat86 = ((x_4073 * x_4074) + x_4076);
            let x_4079 : vec4<f32> = u_xlat14;
            let x_4080 : vec2<f32> = vec2<f32>(x_4079.x, x_4079.y);
            let x_4082 : f32 = u_xlat11.z;
            txVec71 = vec3<f32>(x_4080.x, x_4080.y, x_4082);
            let x_4089 : vec3<f32> = txVec71;
            let x_4091 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4089.xy, x_4089.z);
            u_xlat87 = x_4091;
            let x_4093 : f32 = u_xlat20.w;
            let x_4094 : f32 = u_xlat87;
            let x_4096 : f32 = u_xlat86;
            u_xlat86 = ((x_4093 * x_4094) + x_4096);
            let x_4099 : vec4<f32> = u_xlat14;
            let x_4100 : vec2<f32> = vec2<f32>(x_4099.z, x_4099.w);
            let x_4102 : f32 = u_xlat11.z;
            txVec72 = vec3<f32>(x_4100.x, x_4100.y, x_4102);
            let x_4109 : vec3<f32> = txVec72;
            let x_4111 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4109.xy, x_4109.z);
            u_xlat87 = x_4111;
            let x_4112 : f32 = u_xlat85;
            let x_4113 : f32 = u_xlat87;
            let x_4115 : f32 = u_xlat86;
            u_xlat84 = ((x_4112 * x_4113) + x_4115);
          } else {
            let x_4118 : vec4<f32> = u_xlat11;
            let x_4121 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4124 : vec2<f32> = ((vec2<f32>(x_4118.x, x_4118.y) * vec2<f32>(x_4121.z, x_4121.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4125 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4124.x, x_4124.y, x_4125.z, x_4125.w);
            let x_4127 : vec4<f32> = u_xlat12;
            let x_4129 : vec2<f32> = floor(vec2<f32>(x_4127.x, x_4127.y));
            let x_4130 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4129.x, x_4129.y, x_4130.z, x_4130.w);
            let x_4132 : vec4<f32> = u_xlat11;
            let x_4135 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4138 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_4132.x, x_4132.y) * vec2<f32>(x_4135.z, x_4135.w)) + -(vec2<f32>(x_4138.x, x_4138.y)));
            let x_4142 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_4142.x, x_4142.x, x_4142.y, x_4142.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4145 : vec4<f32> = u_xlat13;
            let x_4147 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4145.x, x_4145.x, x_4145.z, x_4145.z) * vec4<f32>(x_4147.x, x_4147.x, x_4147.z, x_4147.z));
            let x_4150 : vec4<f32> = u_xlat14;
            let x_4152 : vec2<f32> = (vec2<f32>(x_4150.y, x_4150.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_4153 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4153.x, x_4152.x, x_4153.z, x_4152.y);
            let x_4155 : vec4<f32> = u_xlat14;
            let x_4158 : vec2<f32> = u_xlat64;
            let x_4160 : vec2<f32> = ((vec2<f32>(x_4155.x, x_4155.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4158));
            let x_4161 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4160.x, x_4161.y, x_4160.y, x_4161.w);
            let x_4163 : vec2<f32> = u_xlat64;
            let x_4165 : vec2<f32> = (-(x_4163) + vec2<f32>(1.0f, 1.0f));
            let x_4166 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4165.x, x_4165.y, x_4166.z, x_4166.w);
            let x_4168 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_4168, vec2<f32>(0.0f, 0.0f));
            let x_4170 : vec2<f32> = u_xlat66;
            let x_4172 : vec2<f32> = u_xlat66;
            let x_4174 : vec4<f32> = u_xlat14;
            let x_4176 : vec2<f32> = ((-(x_4170) * x_4172) + vec2<f32>(x_4174.x, x_4174.y));
            let x_4177 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4176.x, x_4176.y, x_4177.z, x_4177.w);
            let x_4179 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_4179, vec2<f32>(0.0f, 0.0f));
            let x_4182 : vec2<f32> = u_xlat66;
            let x_4184 : vec2<f32> = u_xlat66;
            let x_4186 : vec4<f32> = u_xlat13;
            let x_4188 : vec2<f32> = ((-(x_4182) * x_4184) + vec2<f32>(x_4186.y, x_4186.w));
            let x_4189 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_4188.x, x_4189.y, x_4188.y);
            let x_4191 : vec4<f32> = u_xlat14;
            let x_4193 : vec2<f32> = (vec2<f32>(x_4191.x, x_4191.y) + vec2<f32>(2.0f, 2.0f));
            let x_4194 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4193.x, x_4193.y, x_4194.z, x_4194.w);
            let x_4196 : vec3<f32> = u_xlat39;
            let x_4198 : vec2<f32> = (vec2<f32>(x_4196.x, x_4196.z) + vec2<f32>(2.0f, 2.0f));
            let x_4199 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4199.x, x_4198.x, x_4199.z, x_4198.y);
            let x_4202 : f32 = u_xlat13.y;
            u_xlat16.z = (x_4202 * 0.08163200318813323975f);
            let x_4205 : vec4<f32> = u_xlat13;
            let x_4207 : vec3<f32> = (vec3<f32>(x_4205.z, x_4205.x, x_4205.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_4208 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4207.x, x_4207.y, x_4207.z, x_4208.w);
            let x_4210 : vec4<f32> = u_xlat14;
            let x_4212 : vec2<f32> = (vec2<f32>(x_4210.x, x_4210.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_4213 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4212.x, x_4212.y, x_4213.z, x_4213.w);
            let x_4216 : f32 = u_xlat17.y;
            u_xlat16.x = x_4216;
            let x_4218 : vec2<f32> = u_xlat64;
            let x_4221 : vec2<f32> = ((vec2<f32>(x_4218.x, x_4218.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4222 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4222.x, x_4221.x, x_4222.z, x_4221.y);
            let x_4224 : vec2<f32> = u_xlat64;
            let x_4227 : vec2<f32> = ((vec2<f32>(x_4224.x, x_4224.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4228 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4227.x, x_4228.y, x_4227.y, x_4228.w);
            let x_4231 : f32 = u_xlat13.x;
            u_xlat14.y = x_4231;
            let x_4234 : f32 = u_xlat15.y;
            u_xlat14.w = x_4234;
            let x_4236 : vec4<f32> = u_xlat14;
            let x_4237 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_4236 + x_4237);
            let x_4239 : vec2<f32> = u_xlat64;
            let x_4242 : vec2<f32> = ((vec2<f32>(x_4239.y, x_4239.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4243 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4243.x, x_4242.x, x_4243.z, x_4242.y);
            let x_4245 : vec2<f32> = u_xlat64;
            let x_4248 : vec2<f32> = ((vec2<f32>(x_4245.y, x_4245.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4249 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4248.x, x_4249.y, x_4248.y, x_4249.w);
            let x_4252 : f32 = u_xlat13.y;
            u_xlat15.y = x_4252;
            let x_4254 : vec4<f32> = u_xlat15;
            let x_4255 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_4254 + x_4255);
            let x_4257 : vec4<f32> = u_xlat14;
            let x_4258 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_4257 / x_4258);
            let x_4260 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_4260 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4262 : vec4<f32> = u_xlat15;
            let x_4263 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_4262 / x_4263);
            let x_4265 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_4265 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4267 : vec4<f32> = u_xlat14;
            let x_4270 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_4267.w, x_4267.x, x_4267.y, x_4267.z) * vec4<f32>(x_4270.x, x_4270.x, x_4270.x, x_4270.x));
            let x_4273 : vec4<f32> = u_xlat15;
            let x_4276 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_4273.x, x_4273.w, x_4273.y, x_4273.z) * vec4<f32>(x_4276.y, x_4276.y, x_4276.y, x_4276.y));
            let x_4279 : vec4<f32> = u_xlat14;
            let x_4280 : vec3<f32> = vec3<f32>(x_4279.y, x_4279.z, x_4279.w);
            let x_4281 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4280.x, x_4281.y, x_4280.y, x_4280.z);
            let x_4284 : f32 = u_xlat15.x;
            u_xlat17.y = x_4284;
            let x_4286 : vec4<f32> = u_xlat12;
            let x_4289 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4292 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_4286.x, x_4286.y, x_4286.x, x_4286.y) * vec4<f32>(x_4289.x, x_4289.y, x_4289.x, x_4289.y)) + vec4<f32>(x_4292.x, x_4292.y, x_4292.z, x_4292.y));
            let x_4295 : vec4<f32> = u_xlat12;
            let x_4298 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4301 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_4295.x, x_4295.y) * vec2<f32>(x_4298.x, x_4298.y)) + vec2<f32>(x_4301.w, x_4301.y));
            let x_4305 : f32 = u_xlat17.y;
            u_xlat14.y = x_4305;
            let x_4308 : f32 = u_xlat15.z;
            u_xlat17.y = x_4308;
            let x_4310 : vec4<f32> = u_xlat12;
            let x_4313 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4316 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_4310.x, x_4310.y, x_4310.x, x_4310.y) * vec4<f32>(x_4313.x, x_4313.y, x_4313.x, x_4313.y)) + vec4<f32>(x_4316.x, x_4316.y, x_4316.z, x_4316.y));
            let x_4319 : vec4<f32> = u_xlat12;
            let x_4322 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4325 : vec4<f32> = u_xlat17;
            let x_4327 : vec2<f32> = ((vec2<f32>(x_4319.x, x_4319.y) * vec2<f32>(x_4322.x, x_4322.y)) + vec2<f32>(x_4325.w, x_4325.y));
            let x_4328 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_4327.x, x_4327.y, x_4328.z, x_4328.w);
            let x_4331 : f32 = u_xlat17.y;
            u_xlat14.z = x_4331;
            let x_4334 : vec4<f32> = u_xlat12;
            let x_4337 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4340 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_4334.x, x_4334.y, x_4334.x, x_4334.y) * vec4<f32>(x_4337.x, x_4337.y, x_4337.x, x_4337.y)) + vec4<f32>(x_4340.x, x_4340.y, x_4340.x, x_4340.z));
            let x_4344 : f32 = u_xlat15.w;
            u_xlat17.y = x_4344;
            let x_4347 : vec4<f32> = u_xlat12;
            let x_4350 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4353 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_4347.x, x_4347.y, x_4347.x, x_4347.y) * vec4<f32>(x_4350.x, x_4350.y, x_4350.x, x_4350.y)) + vec4<f32>(x_4353.x, x_4353.y, x_4353.z, x_4353.y));
            let x_4357 : vec4<f32> = u_xlat12;
            let x_4360 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4363 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_4357.x, x_4357.y) * vec2<f32>(x_4360.x, x_4360.y)) + vec2<f32>(x_4363.w, x_4363.y));
            let x_4367 : f32 = u_xlat17.y;
            u_xlat14.w = x_4367;
            let x_4370 : vec4<f32> = u_xlat12;
            let x_4373 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4376 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_4370.x, x_4370.y) * vec2<f32>(x_4373.x, x_4373.y)) + vec2<f32>(x_4376.x, x_4376.w));
            let x_4379 : vec4<f32> = u_xlat17;
            let x_4380 : vec3<f32> = vec3<f32>(x_4379.x, x_4379.z, x_4379.w);
            let x_4381 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4380.x, x_4381.y, x_4380.y, x_4380.z);
            let x_4383 : vec4<f32> = u_xlat12;
            let x_4386 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4389 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_4383.x, x_4383.y, x_4383.x, x_4383.y) * vec4<f32>(x_4386.x, x_4386.y, x_4386.x, x_4386.y)) + vec4<f32>(x_4389.x, x_4389.y, x_4389.z, x_4389.y));
            let x_4392 : vec4<f32> = u_xlat12;
            let x_4395 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4398 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_4392.x, x_4392.y) * vec2<f32>(x_4395.x, x_4395.y)) + vec2<f32>(x_4398.w, x_4398.y));
            let x_4402 : f32 = u_xlat14.x;
            u_xlat15.x = x_4402;
            let x_4404 : vec4<f32> = u_xlat12;
            let x_4407 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4410 : vec4<f32> = u_xlat15;
            let x_4412 : vec2<f32> = ((vec2<f32>(x_4404.x, x_4404.y) * vec2<f32>(x_4407.x, x_4407.y)) + vec2<f32>(x_4410.x, x_4410.y));
            let x_4413 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4412.x, x_4412.y, x_4413.z, x_4413.w);
            let x_4416 : vec4<f32> = u_xlat13;
            let x_4418 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_4416.x, x_4416.x, x_4416.x, x_4416.x) * x_4418);
            let x_4421 : vec4<f32> = u_xlat13;
            let x_4423 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_4421.y, x_4421.y, x_4421.y, x_4421.y) * x_4423);
            let x_4426 : vec4<f32> = u_xlat13;
            let x_4428 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_4426.z, x_4426.z, x_4426.z, x_4426.z) * x_4428);
            let x_4430 : vec4<f32> = u_xlat13;
            let x_4432 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_4430.w, x_4430.w, x_4430.w, x_4430.w) * x_4432);
            let x_4435 : vec4<f32> = u_xlat18;
            let x_4436 : vec2<f32> = vec2<f32>(x_4435.x, x_4435.y);
            let x_4438 : f32 = u_xlat11.z;
            txVec73 = vec3<f32>(x_4436.x, x_4436.y, x_4438);
            let x_4445 : vec3<f32> = txVec73;
            let x_4447 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4445.xy, x_4445.z);
            u_xlat85 = x_4447;
            let x_4449 : vec4<f32> = u_xlat18;
            let x_4450 : vec2<f32> = vec2<f32>(x_4449.z, x_4449.w);
            let x_4452 : f32 = u_xlat11.z;
            txVec74 = vec3<f32>(x_4450.x, x_4450.y, x_4452);
            let x_4459 : vec3<f32> = txVec74;
            let x_4461 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4459.xy, x_4459.z);
            u_xlat86 = x_4461;
            let x_4462 : f32 = u_xlat86;
            let x_4464 : f32 = u_xlat23.y;
            u_xlat86 = (x_4462 * x_4464);
            let x_4467 : f32 = u_xlat23.x;
            let x_4468 : f32 = u_xlat85;
            let x_4470 : f32 = u_xlat86;
            u_xlat85 = ((x_4467 * x_4468) + x_4470);
            let x_4473 : vec2<f32> = u_xlat64;
            let x_4475 : f32 = u_xlat11.z;
            txVec75 = vec3<f32>(x_4473.x, x_4473.y, x_4475);
            let x_4482 : vec3<f32> = txVec75;
            let x_4484 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4482.xy, x_4482.z);
            u_xlat86 = x_4484;
            let x_4486 : f32 = u_xlat23.z;
            let x_4487 : f32 = u_xlat86;
            let x_4489 : f32 = u_xlat85;
            u_xlat85 = ((x_4486 * x_4487) + x_4489);
            let x_4492 : vec4<f32> = u_xlat21;
            let x_4493 : vec2<f32> = vec2<f32>(x_4492.x, x_4492.y);
            let x_4495 : f32 = u_xlat11.z;
            txVec76 = vec3<f32>(x_4493.x, x_4493.y, x_4495);
            let x_4502 : vec3<f32> = txVec76;
            let x_4504 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4502.xy, x_4502.z);
            u_xlat86 = x_4504;
            let x_4506 : f32 = u_xlat23.w;
            let x_4507 : f32 = u_xlat86;
            let x_4509 : f32 = u_xlat85;
            u_xlat85 = ((x_4506 * x_4507) + x_4509);
            let x_4512 : vec4<f32> = u_xlat19;
            let x_4513 : vec2<f32> = vec2<f32>(x_4512.x, x_4512.y);
            let x_4515 : f32 = u_xlat11.z;
            txVec77 = vec3<f32>(x_4513.x, x_4513.y, x_4515);
            let x_4522 : vec3<f32> = txVec77;
            let x_4524 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4522.xy, x_4522.z);
            u_xlat86 = x_4524;
            let x_4526 : f32 = u_xlat24.x;
            let x_4527 : f32 = u_xlat86;
            let x_4529 : f32 = u_xlat85;
            u_xlat85 = ((x_4526 * x_4527) + x_4529);
            let x_4532 : vec4<f32> = u_xlat19;
            let x_4533 : vec2<f32> = vec2<f32>(x_4532.z, x_4532.w);
            let x_4535 : f32 = u_xlat11.z;
            txVec78 = vec3<f32>(x_4533.x, x_4533.y, x_4535);
            let x_4542 : vec3<f32> = txVec78;
            let x_4544 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4542.xy, x_4542.z);
            u_xlat86 = x_4544;
            let x_4546 : f32 = u_xlat24.y;
            let x_4547 : f32 = u_xlat86;
            let x_4549 : f32 = u_xlat85;
            u_xlat85 = ((x_4546 * x_4547) + x_4549);
            let x_4552 : vec4<f32> = u_xlat20;
            let x_4553 : vec2<f32> = vec2<f32>(x_4552.x, x_4552.y);
            let x_4555 : f32 = u_xlat11.z;
            txVec79 = vec3<f32>(x_4553.x, x_4553.y, x_4555);
            let x_4562 : vec3<f32> = txVec79;
            let x_4564 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4562.xy, x_4562.z);
            u_xlat86 = x_4564;
            let x_4566 : f32 = u_xlat24.z;
            let x_4567 : f32 = u_xlat86;
            let x_4569 : f32 = u_xlat85;
            u_xlat85 = ((x_4566 * x_4567) + x_4569);
            let x_4572 : vec4<f32> = u_xlat21;
            let x_4573 : vec2<f32> = vec2<f32>(x_4572.z, x_4572.w);
            let x_4575 : f32 = u_xlat11.z;
            txVec80 = vec3<f32>(x_4573.x, x_4573.y, x_4575);
            let x_4582 : vec3<f32> = txVec80;
            let x_4584 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4582.xy, x_4582.z);
            u_xlat86 = x_4584;
            let x_4586 : f32 = u_xlat24.w;
            let x_4587 : f32 = u_xlat86;
            let x_4589 : f32 = u_xlat85;
            u_xlat85 = ((x_4586 * x_4587) + x_4589);
            let x_4592 : vec4<f32> = u_xlat22;
            let x_4593 : vec2<f32> = vec2<f32>(x_4592.x, x_4592.y);
            let x_4595 : f32 = u_xlat11.z;
            txVec81 = vec3<f32>(x_4593.x, x_4593.y, x_4595);
            let x_4602 : vec3<f32> = txVec81;
            let x_4604 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4602.xy, x_4602.z);
            u_xlat86 = x_4604;
            let x_4606 : f32 = u_xlat25.x;
            let x_4607 : f32 = u_xlat86;
            let x_4609 : f32 = u_xlat85;
            u_xlat85 = ((x_4606 * x_4607) + x_4609);
            let x_4612 : vec4<f32> = u_xlat22;
            let x_4613 : vec2<f32> = vec2<f32>(x_4612.z, x_4612.w);
            let x_4615 : f32 = u_xlat11.z;
            txVec82 = vec3<f32>(x_4613.x, x_4613.y, x_4615);
            let x_4622 : vec3<f32> = txVec82;
            let x_4624 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4622.xy, x_4622.z);
            u_xlat86 = x_4624;
            let x_4626 : f32 = u_xlat25.y;
            let x_4627 : f32 = u_xlat86;
            let x_4629 : f32 = u_xlat85;
            u_xlat85 = ((x_4626 * x_4627) + x_4629);
            let x_4632 : vec2<f32> = u_xlat40;
            let x_4634 : f32 = u_xlat11.z;
            txVec83 = vec3<f32>(x_4632.x, x_4632.y, x_4634);
            let x_4641 : vec3<f32> = txVec83;
            let x_4643 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4641.xy, x_4641.z);
            u_xlat86 = x_4643;
            let x_4645 : f32 = u_xlat25.z;
            let x_4646 : f32 = u_xlat86;
            let x_4648 : f32 = u_xlat85;
            u_xlat85 = ((x_4645 * x_4646) + x_4648);
            let x_4651 : vec2<f32> = u_xlat72;
            let x_4653 : f32 = u_xlat11.z;
            txVec84 = vec3<f32>(x_4651.x, x_4651.y, x_4653);
            let x_4660 : vec3<f32> = txVec84;
            let x_4662 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4660.xy, x_4660.z);
            u_xlat86 = x_4662;
            let x_4664 : f32 = u_xlat25.w;
            let x_4665 : f32 = u_xlat86;
            let x_4667 : f32 = u_xlat85;
            u_xlat85 = ((x_4664 * x_4665) + x_4667);
            let x_4670 : vec4<f32> = u_xlat17;
            let x_4671 : vec2<f32> = vec2<f32>(x_4670.x, x_4670.y);
            let x_4673 : f32 = u_xlat11.z;
            txVec85 = vec3<f32>(x_4671.x, x_4671.y, x_4673);
            let x_4680 : vec3<f32> = txVec85;
            let x_4682 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4680.xy, x_4680.z);
            u_xlat86 = x_4682;
            let x_4684 : f32 = u_xlat13.x;
            let x_4685 : f32 = u_xlat86;
            let x_4687 : f32 = u_xlat85;
            u_xlat85 = ((x_4684 * x_4685) + x_4687);
            let x_4690 : vec4<f32> = u_xlat17;
            let x_4691 : vec2<f32> = vec2<f32>(x_4690.z, x_4690.w);
            let x_4693 : f32 = u_xlat11.z;
            txVec86 = vec3<f32>(x_4691.x, x_4691.y, x_4693);
            let x_4700 : vec3<f32> = txVec86;
            let x_4702 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4700.xy, x_4700.z);
            u_xlat86 = x_4702;
            let x_4704 : f32 = u_xlat13.y;
            let x_4705 : f32 = u_xlat86;
            let x_4707 : f32 = u_xlat85;
            u_xlat85 = ((x_4704 * x_4705) + x_4707);
            let x_4710 : vec2<f32> = u_xlat67;
            let x_4712 : f32 = u_xlat11.z;
            txVec87 = vec3<f32>(x_4710.x, x_4710.y, x_4712);
            let x_4719 : vec3<f32> = txVec87;
            let x_4721 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4719.xy, x_4719.z);
            u_xlat86 = x_4721;
            let x_4723 : f32 = u_xlat13.z;
            let x_4724 : f32 = u_xlat86;
            let x_4726 : f32 = u_xlat85;
            u_xlat85 = ((x_4723 * x_4724) + x_4726);
            let x_4729 : vec4<f32> = u_xlat12;
            let x_4730 : vec2<f32> = vec2<f32>(x_4729.x, x_4729.y);
            let x_4732 : f32 = u_xlat11.z;
            txVec88 = vec3<f32>(x_4730.x, x_4730.y, x_4732);
            let x_4739 : vec3<f32> = txVec88;
            let x_4741 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4739.xy, x_4739.z);
            u_xlat86 = x_4741;
            let x_4743 : f32 = u_xlat13.w;
            let x_4744 : f32 = u_xlat86;
            let x_4746 : f32 = u_xlat85;
            u_xlat84 = ((x_4743 * x_4744) + x_4746);
          }
        }
      } else {
        let x_4750 : vec4<f32> = u_xlat11;
        let x_4751 : vec2<f32> = vec2<f32>(x_4750.x, x_4750.y);
        let x_4753 : f32 = u_xlat11.z;
        txVec89 = vec3<f32>(x_4751.x, x_4751.y, x_4753);
        let x_4760 : vec3<f32> = txVec89;
        let x_4762 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4760.xy, x_4760.z);
        u_xlat84 = x_4762;
      }
      let x_4763 : i32 = u_xlati4;
      let x_4765 : f32 = x_131.x_AdditionalShadowParams[x_4763].x;
      u_xlat85 = (1.0f + -(x_4765));
      let x_4768 : f32 = u_xlat84;
      let x_4769 : i32 = u_xlati4;
      let x_4771 : f32 = x_131.x_AdditionalShadowParams[x_4769].x;
      let x_4773 : f32 = u_xlat85;
      u_xlat84 = ((x_4768 * x_4771) + x_4773);
      let x_4776 : f32 = u_xlat11.z;
      u_xlatb85 = (0.0f >= x_4776);
      let x_4780 : f32 = u_xlat11.z;
      u_xlatb86 = (x_4780 >= 1.0f);
      let x_4782 : bool = u_xlatb85;
      let x_4783 : bool = u_xlatb86;
      u_xlatb85 = (x_4782 | x_4783);
      let x_4785 : bool = u_xlatb85;
      let x_4786 : f32 = u_xlat84;
      u_xlat84 = select(x_4786, 1.0f, x_4785);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_4789 : f32 = u_xlat84;
    u_xlat85 = (-(x_4789) + 1.0f);
    let x_4792 : f32 = u_xlat79;
    let x_4793 : f32 = u_xlat85;
    let x_4795 : f32 = u_xlat84;
    u_xlat84 = ((x_4792 * x_4793) + x_4795);
    let x_4797 : f32 = u_xlat82;
    let x_4798 : f32 = u_xlat84;
    u_xlat82 = (x_4797 * x_4798);
    let x_4800 : vec4<f32> = u_xlat5;
    let x_4802 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_4800.x, x_4800.y, x_4800.z), vec3<f32>(x_4802.x, x_4802.y, x_4802.z));
    let x_4805 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4805, 0.0f, 1.0f);
    let x_4807 : f32 = u_xlat82;
    let x_4808 : f32 = u_xlat84;
    u_xlat82 = (x_4807 * x_4808);
    let x_4810 : f32 = u_xlat82;
    let x_4812 : i32 = u_xlati4;
    let x_4814 : vec4<f32> = x_3376.x_AdditionalLightsColor[x_4812];
    let x_4816 : vec3<f32> = (vec3<f32>(x_4810, x_4810, x_4810) * vec3<f32>(x_4814.x, x_4814.y, x_4814.z));
    let x_4817 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4816.x, x_4816.y, x_4816.z, x_4817.w);
    let x_4819 : vec4<f32> = u_xlat9;
    let x_4821 : f32 = u_xlat83;
    let x_4824 : vec4<f32> = u_xlat6;
    let x_4826 : vec3<f32> = ((vec3<f32>(x_4819.x, x_4819.y, x_4819.z) * vec3<f32>(x_4821, x_4821, x_4821)) + vec3<f32>(x_4824.x, x_4824.y, x_4824.z));
    let x_4827 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4826.x, x_4826.y, x_4826.z, x_4827.w);
    let x_4829 : vec4<f32> = u_xlat9;
    let x_4831 : vec4<f32> = u_xlat9;
    u_xlat4.x = dot(vec3<f32>(x_4829.x, x_4829.y, x_4829.z), vec3<f32>(x_4831.x, x_4831.y, x_4831.z));
    let x_4836 : f32 = u_xlat4.x;
    u_xlat4.x = max(x_4836, 1.17549435e-38f);
    let x_4840 : f32 = u_xlat4.x;
    u_xlat4.x = inverseSqrt(x_4840);
    let x_4843 : vec4<f32> = u_xlat4;
    let x_4845 : vec4<f32> = u_xlat9;
    let x_4847 : vec3<f32> = (vec3<f32>(x_4843.x, x_4843.x, x_4843.x) * vec3<f32>(x_4845.x, x_4845.y, x_4845.z));
    let x_4848 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4847.x, x_4847.y, x_4847.z, x_4848.w);
    let x_4850 : vec4<f32> = u_xlat5;
    let x_4852 : vec4<f32> = u_xlat9;
    u_xlat4.x = dot(vec3<f32>(x_4850.x, x_4850.y, x_4850.z), vec3<f32>(x_4852.x, x_4852.y, x_4852.z));
    let x_4857 : f32 = u_xlat4.x;
    u_xlat4.x = clamp(x_4857, 0.0f, 1.0f);
    let x_4860 : vec4<f32> = u_xlat10;
    let x_4862 : vec4<f32> = u_xlat9;
    u_xlat4.w = dot(vec3<f32>(x_4860.x, x_4860.y, x_4860.z), vec3<f32>(x_4862.x, x_4862.y, x_4862.z));
    let x_4867 : f32 = u_xlat4.w;
    u_xlat4.w = clamp(x_4867, 0.0f, 1.0f);
    let x_4870 : vec4<f32> = u_xlat4;
    let x_4872 : vec4<f32> = u_xlat4;
    let x_4874 : vec2<f32> = (vec2<f32>(x_4870.x, x_4870.w) * vec2<f32>(x_4872.x, x_4872.w));
    let x_4875 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_4874.x, x_4875.y, x_4875.z, x_4874.y);
    let x_4878 : f32 = u_xlat4.x;
    let x_4880 : f32 = u_xlat27.x;
    u_xlat4.x = ((x_4878 * x_4880) + 1.00001001358032226562f);
    let x_4885 : f32 = u_xlat4.x;
    let x_4887 : f32 = u_xlat4.x;
    u_xlat4.x = (x_4885 * x_4887);
    let x_4891 : f32 = u_xlat4.w;
    u_xlat82 = max(x_4891, 0.10000000149011611938f);
    let x_4893 : f32 = u_xlat82;
    let x_4895 : f32 = u_xlat4.x;
    u_xlat4.x = (x_4893 * x_4895);
    let x_4899 : f32 = u_xlat30.x;
    let x_4901 : f32 = u_xlat4.x;
    u_xlat4.x = (x_4899 * x_4901);
    let x_4904 : f32 = u_xlat80;
    let x_4906 : f32 = u_xlat4.x;
    u_xlat4.x = (x_4904 / x_4906);
    let x_4909 : vec4<f32> = u_xlat4;
    let x_4912 : vec3<f32> = u_xlat2;
    let x_4913 : vec3<f32> = ((vec3<f32>(x_4909.x, x_4909.x, x_4909.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_4912);
    let x_4914 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4913.x, x_4913.y, x_4913.z, x_4914.w);
    let x_4916 : vec4<f32> = u_xlat9;
    let x_4918 : vec4<f32> = u_xlat11;
    let x_4921 : vec4<f32> = u_xlat8;
    let x_4923 : vec3<f32> = ((vec3<f32>(x_4916.x, x_4916.y, x_4916.z) * vec3<f32>(x_4918.x, x_4918.y, x_4918.z)) + vec3<f32>(x_4921.x, x_4921.y, x_4921.z));
    let x_4924 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4923.x, x_4923.y, x_4923.z, x_4924.w);

    continuing {
      let x_4926 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4926 + bitcast<u32>(1i));
    }
  }
  let x_4928 : vec4<f32> = u_xlat3;
  let x_4930 : f32 = u_xlat56;
  let x_4933 : vec4<f32> = u_xlat7;
  u_xlat2 = ((vec3<f32>(x_4928.x, x_4928.y, x_4928.z) * vec3<f32>(x_4930, x_4930, x_4930)) + vec3<f32>(x_4933.x, x_4933.y, x_4933.z));
  let x_4936 : vec4<f32> = u_xlat8;
  let x_4938 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_4936.x, x_4936.y, x_4936.z) + x_4938);
  let x_4942 : vec4<f32> = vs_INTERP6;
  let x_4944 : vec3<f32> = u_xlat0;
  let x_4946 : vec3<f32> = u_xlat2;
  let x_4947 : vec3<f32> = ((vec3<f32>(x_4942.w, x_4942.w, x_4942.w) * x_4944) + x_4946);
  let x_4948 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4947.x, x_4947.y, x_4947.z, x_4948.w);
  let x_4950 : bool = u_xlatb53;
  if (x_4950) {
    let x_4955 : f32 = u_xlat1.x;
    x_4951 = x_4955;
  } else {
    x_4951 = 1.0f;
  }
  let x_4957 : f32 = x_4951;
  SV_Target0.w = x_4957;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(5) vs_INTERP9_param : vec3<f32>, @location(2) vs_INTERP5_param : vec4<f32>, @location(3) vs_INTERP6_param : vec4<f32>, @location(4) vs_INTERP8_param : vec3<f32>, @location(1) vs_INTERP4_param : vec4<f32>, @location(0) vs_INTERP3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP9 = vs_INTERP9_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP6 = vs_INTERP6_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP3 = vs_INTERP3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


