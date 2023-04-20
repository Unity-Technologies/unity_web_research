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
  unity_OrthoParams : vec4<f32>,
  /* @offset(112) */
  unity_FogParams : vec4<f32>,
  /* @offset(128) */
  unity_FogColor : vec4<f32>,
  /* @offset(144) */
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

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(10) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_53 : PGlobals;

var<private> u_xlat2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_65 : UnityPerMaterial;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_D9BFD5F1 : sampler;

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

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

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

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat83 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlatb58 : bool;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat84 : f32;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat86 : f32;

var<private> u_xlatb4 : bool;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu78 : u32;

var<private> u_xlatu3 : u32;

var<private> u_xlati4 : i32;

var<private> u_xlati3 : i32;

@group(1) @binding(1) var<uniform> x_3422 : AdditionalLights;

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

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlatb87 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb3 : bool;

var<private> u_xlatu80 : u32;

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
  var x_1682 : vec3<f32>;
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
  var x_3579 : f32;
  var x_3589 : f32;
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
  var x_5043 : f32;
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
  u_xlat29 = (vec3<f32>(x_1646.x, x_1646.x, x_1646.x) * x_1648);
  let x_1651 : f32 = x_53.unity_OrthoParams.w;
  u_xlatb27.x = (x_1651 == 0.0f);
  let x_1654 : vec3<f32> = vs_INTERP8;
  let x_1659 : vec3<f32> = x_53.x_WorldSpaceCameraPos;
  u_xlat30 = (-(x_1654) + x_1659);
  let x_1661 : vec3<f32> = u_xlat30;
  let x_1662 : vec3<f32> = u_xlat30;
  u_xlat79 = dot(x_1661, x_1662);
  let x_1664 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_1664);
  let x_1666 : f32 = u_xlat79;
  let x_1668 : vec3<f32> = u_xlat30;
  u_xlat30 = (vec3<f32>(x_1666, x_1666, x_1666) * x_1668);
  let x_1672 : f32 = x_53.unity_MatrixV[0i].z;
  u_xlat5.x = x_1672;
  let x_1675 : f32 = x_53.unity_MatrixV[1i].z;
  u_xlat5.y = x_1675;
  let x_1678 : f32 = x_53.unity_MatrixV[2i].z;
  u_xlat5.z = x_1678;
  let x_1681 : bool = u_xlatb27.x;
  if (x_1681) {
    let x_1685 : vec3<f32> = u_xlat30;
    x_1682 = x_1685;
  } else {
    let x_1687 : vec4<f32> = u_xlat5;
    x_1682 = vec3<f32>(x_1687.x, x_1687.y, x_1687.z);
  }
  let x_1689 : vec3<f32> = x_1682;
  u_xlat30 = x_1689;
  let x_1691 : f32 = vs_INTERP8.y;
  let x_1693 : f32 = x_53.unity_MatrixV[1i].z;
  u_xlat27.x = (x_1691 * x_1693);
  let x_1697 : f32 = x_53.unity_MatrixV[0i].z;
  let x_1699 : f32 = vs_INTERP8.x;
  let x_1702 : f32 = u_xlat27.x;
  u_xlat27.x = ((x_1697 * x_1699) + x_1702);
  let x_1706 : f32 = x_53.unity_MatrixV[2i].z;
  let x_1708 : f32 = vs_INTERP8.z;
  let x_1711 : f32 = u_xlat27.x;
  u_xlat27.x = ((x_1706 * x_1708) + x_1711);
  let x_1715 : f32 = u_xlat27.x;
  let x_1717 : f32 = x_53.unity_MatrixV[3i].z;
  u_xlat27.x = (x_1715 + x_1717);
  let x_1721 : f32 = u_xlat27.x;
  let x_1724 : f32 = x_53.x_ProjectionParams.y;
  u_xlat27.x = (-(x_1721) + -(x_1724));
  let x_1729 : f32 = u_xlat27.x;
  u_xlat27.x = max(x_1729, 0.0f);
  let x_1733 : f32 = u_xlat27.x;
  let x_1735 : f32 = x_53.unity_FogParams.x;
  u_xlat27.x = (x_1733 * x_1735);
  let x_1745 : vec2<f32> = vs_INTERP0;
  let x_1747 : f32 = x_53.x_GlobalMipBias.x;
  let x_1748 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_1745, x_1747);
  u_xlat5 = x_1748;
  let x_1753 : vec2<f32> = vs_INTERP0;
  let x_1755 : f32 = x_53.x_GlobalMipBias.x;
  let x_1756 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_1753, x_1755);
  let x_1757 : vec3<f32> = vec3<f32>(x_1756.x, x_1756.y, x_1756.z);
  let x_1758 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1757.x, x_1757.y, x_1757.z, x_1758.w);
  let x_1760 : vec4<f32> = u_xlat5;
  let x_1763 : vec3<f32> = (vec3<f32>(x_1760.x, x_1760.y, x_1760.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_1764 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1763.x, x_1763.y, x_1763.z, x_1764.w);
  let x_1766 : vec3<f32> = u_xlat29;
  let x_1767 : vec4<f32> = u_xlat5;
  u_xlat79 = dot(x_1766, vec3<f32>(x_1767.x, x_1767.y, x_1767.z));
  let x_1770 : f32 = u_xlat79;
  u_xlat79 = (x_1770 + 0.5f);
  let x_1772 : f32 = u_xlat79;
  let x_1774 : vec4<f32> = u_xlat6;
  let x_1776 : vec3<f32> = (vec3<f32>(x_1772, x_1772, x_1772) * vec3<f32>(x_1774.x, x_1774.y, x_1774.z));
  let x_1777 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1776.x, x_1776.y, x_1776.z, x_1777.w);
  let x_1780 : f32 = u_xlat5.w;
  u_xlat79 = max(x_1780, 0.00009999999747378752f);
  let x_1782 : vec4<f32> = u_xlat5;
  let x_1784 : f32 = u_xlat79;
  let x_1786 : vec3<f32> = (vec3<f32>(x_1782.x, x_1782.y, x_1782.z) / vec3<f32>(x_1784, x_1784, x_1784));
  let x_1787 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1786.x, x_1786.y, x_1786.z, x_1787.w);
  let x_1790 : f32 = u_xlat3.x;
  u_xlat3.x = x_1790;
  let x_1793 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1793, 0.0f, 1.0f);
  let x_1797 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_1797, 1.0f);
  let x_1800 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1800 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_1805 : f32 = u_xlat3.x;
  u_xlat79 = (-(x_1805) + 1.0f);
  let x_1808 : f32 = u_xlat79;
  let x_1809 : f32 = u_xlat79;
  u_xlat80 = (x_1808 * x_1809);
  let x_1811 : f32 = u_xlat80;
  u_xlat80 = max(x_1811, 0.0078125f);
  let x_1815 : f32 = u_xlat80;
  let x_1816 : f32 = u_xlat80;
  u_xlat83 = (x_1815 * x_1816);
  let x_1819 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1819 + 0.04000002145767211914f);
  let x_1824 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_1824, 1.0f);
  let x_1827 : f32 = u_xlat80;
  u_xlat6.x = ((x_1827 * 4.0f) + 2.0f);
  let x_1833 : f32 = vs_INTERP6.w;
  u_xlat32.x = min(x_1833, 1.0f);
  let x_1836 : bool = u_xlatb78;
  if (x_1836) {
    let x_1840 : f32 = x_131.x_MainLightShadowParams.y;
    u_xlatb78 = (x_1840 == 1.0f);
    let x_1842 : bool = u_xlatb78;
    if (x_1842) {
      let x_1846 : vec4<f32> = vs_INTERP3;
      let x_1849 : vec4<f32> = x_131.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_1846.x, x_1846.y, x_1846.x, x_1846.y) + x_1849);
      let x_1852 : vec4<f32> = u_xlat7;
      let x_1853 : vec2<f32> = vec2<f32>(x_1852.x, x_1852.y);
      let x_1855 : f32 = vs_INTERP3.z;
      txVec30 = vec3<f32>(x_1853.x, x_1853.y, x_1855);
      let x_1862 : vec3<f32> = txVec30;
      let x_1864 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1862.xy, x_1862.z);
      u_xlat8.x = x_1864;
      let x_1867 : vec4<f32> = u_xlat7;
      let x_1868 : vec2<f32> = vec2<f32>(x_1867.z, x_1867.w);
      let x_1870 : f32 = vs_INTERP3.z;
      txVec31 = vec3<f32>(x_1868.x, x_1868.y, x_1870);
      let x_1877 : vec3<f32> = txVec31;
      let x_1879 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1877.xy, x_1877.z);
      u_xlat8.y = x_1879;
      let x_1881 : vec4<f32> = vs_INTERP3;
      let x_1884 : vec4<f32> = x_131.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_1881.x, x_1881.y, x_1881.x, x_1881.y) + x_1884);
      let x_1887 : vec4<f32> = u_xlat7;
      let x_1888 : vec2<f32> = vec2<f32>(x_1887.x, x_1887.y);
      let x_1890 : f32 = vs_INTERP3.z;
      txVec32 = vec3<f32>(x_1888.x, x_1888.y, x_1890);
      let x_1897 : vec3<f32> = txVec32;
      let x_1899 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1897.xy, x_1897.z);
      u_xlat8.z = x_1899;
      let x_1902 : vec4<f32> = u_xlat7;
      let x_1903 : vec2<f32> = vec2<f32>(x_1902.z, x_1902.w);
      let x_1905 : f32 = vs_INTERP3.z;
      txVec33 = vec3<f32>(x_1903.x, x_1903.y, x_1905);
      let x_1912 : vec3<f32> = txVec33;
      let x_1914 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1912.xy, x_1912.z);
      u_xlat8.w = x_1914;
      let x_1916 : vec4<f32> = u_xlat8;
      u_xlat78 = dot(x_1916, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1921 : f32 = x_131.x_MainLightShadowParams.y;
      u_xlatb58 = (x_1921 == 2.0f);
      let x_1923 : bool = u_xlatb58;
      if (x_1923) {
        let x_1927 : vec4<f32> = vs_INTERP3;
        let x_1930 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        u_xlat58 = ((vec2<f32>(x_1927.x, x_1927.y) * vec2<f32>(x_1930.z, x_1930.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1934 : vec2<f32> = u_xlat58;
        u_xlat58 = floor(x_1934);
        let x_1936 : vec4<f32> = vs_INTERP3;
        let x_1939 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_1942 : vec2<f32> = u_xlat58;
        let x_1944 : vec2<f32> = ((vec2<f32>(x_1936.x, x_1936.y) * vec2<f32>(x_1939.z, x_1939.w)) + -(x_1942));
        let x_1945 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1944.x, x_1944.y, x_1945.z, x_1945.w);
        let x_1947 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1947.x, x_1947.x, x_1947.y, x_1947.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1950 : vec4<f32> = u_xlat8;
        let x_1952 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1950.x, x_1950.x, x_1950.z, x_1950.z) * vec4<f32>(x_1952.x, x_1952.x, x_1952.z, x_1952.z));
        let x_1955 : vec4<f32> = u_xlat9;
        u_xlat59 = (vec2<f32>(x_1955.y, x_1955.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1958 : vec4<f32> = u_xlat9;
        let x_1961 : vec4<f32> = u_xlat7;
        let x_1964 : vec2<f32> = ((vec2<f32>(x_1958.x, x_1958.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1961.x, x_1961.y)));
        let x_1965 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1964.x, x_1965.y, x_1964.y, x_1965.w);
        let x_1967 : vec4<f32> = u_xlat7;
        let x_1970 : vec2<f32> = (-(vec2<f32>(x_1967.x, x_1967.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1971 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1970.x, x_1970.y, x_1971.z, x_1971.w);
        let x_1974 : vec4<f32> = u_xlat7;
        u_xlat61 = min(vec2<f32>(x_1974.x, x_1974.y), vec2<f32>(0.0f, 0.0f));
        let x_1977 : vec2<f32> = u_xlat61;
        let x_1979 : vec2<f32> = u_xlat61;
        let x_1981 : vec4<f32> = u_xlat9;
        u_xlat61 = ((-(x_1977) * x_1979) + vec2<f32>(x_1981.x, x_1981.y));
        let x_1984 : vec4<f32> = u_xlat7;
        let x_1986 : vec2<f32> = max(vec2<f32>(x_1984.x, x_1984.y), vec2<f32>(0.0f, 0.0f));
        let x_1987 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1986.x, x_1986.y, x_1987.z, x_1987.w);
        let x_1989 : vec4<f32> = u_xlat7;
        let x_1992 : vec4<f32> = u_xlat7;
        let x_1995 : vec4<f32> = u_xlat8;
        let x_1997 : vec2<f32> = ((-(vec2<f32>(x_1989.x, x_1989.y)) * vec2<f32>(x_1992.x, x_1992.y)) + vec2<f32>(x_1995.y, x_1995.w));
        let x_1998 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1997.x, x_1997.y, x_1998.z, x_1998.w);
        let x_2000 : vec2<f32> = u_xlat61;
        u_xlat61 = (x_2000 + vec2<f32>(1.0f, 1.0f));
        let x_2002 : vec4<f32> = u_xlat7;
        let x_2004 : vec2<f32> = (vec2<f32>(x_2002.x, x_2002.y) + vec2<f32>(1.0f, 1.0f));
        let x_2005 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2004.x, x_2004.y, x_2005.z, x_2005.w);
        let x_2007 : vec4<f32> = u_xlat8;
        let x_2009 : vec2<f32> = (vec2<f32>(x_2007.x, x_2007.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2010 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2009.x, x_2009.y, x_2010.z, x_2010.w);
        let x_2012 : vec4<f32> = u_xlat9;
        let x_2014 : vec2<f32> = (vec2<f32>(x_2012.x, x_2012.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2015 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2014.x, x_2014.y, x_2015.z, x_2015.w);
        let x_2017 : vec2<f32> = u_xlat61;
        let x_2018 : vec2<f32> = (x_2017 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2019 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2018.x, x_2018.y, x_2019.z, x_2019.w);
        let x_2021 : vec4<f32> = u_xlat7;
        let x_2023 : vec2<f32> = (vec2<f32>(x_2021.x, x_2021.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2024 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2023.x, x_2023.y, x_2024.z, x_2024.w);
        let x_2026 : vec4<f32> = u_xlat8;
        let x_2028 : vec2<f32> = (vec2<f32>(x_2026.y, x_2026.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2029 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2028.x, x_2028.y, x_2029.z, x_2029.w);
        let x_2032 : f32 = u_xlat9.x;
        u_xlat10.z = x_2032;
        let x_2035 : f32 = u_xlat7.x;
        u_xlat10.w = x_2035;
        let x_2038 : f32 = u_xlat12.x;
        u_xlat11.z = x_2038;
        let x_2041 : f32 = u_xlat59.x;
        u_xlat11.w = x_2041;
        let x_2043 : vec4<f32> = u_xlat10;
        let x_2045 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_2043.z, x_2043.w, x_2043.x, x_2043.z) + vec4<f32>(x_2045.z, x_2045.w, x_2045.x, x_2045.z));
        let x_2049 : f32 = u_xlat10.y;
        u_xlat9.z = x_2049;
        let x_2052 : f32 = u_xlat7.y;
        u_xlat9.w = x_2052;
        let x_2055 : f32 = u_xlat11.y;
        u_xlat12.z = x_2055;
        let x_2058 : f32 = u_xlat59.y;
        u_xlat12.w = x_2058;
        let x_2060 : vec4<f32> = u_xlat9;
        let x_2062 : vec4<f32> = u_xlat12;
        let x_2064 : vec3<f32> = (vec3<f32>(x_2060.z, x_2060.y, x_2060.w) + vec3<f32>(x_2062.z, x_2062.y, x_2062.w));
        let x_2065 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2064.x, x_2064.y, x_2064.z, x_2065.w);
        let x_2067 : vec4<f32> = u_xlat11;
        let x_2069 : vec4<f32> = u_xlat8;
        let x_2071 : vec3<f32> = (vec3<f32>(x_2067.x, x_2067.z, x_2067.w) / vec3<f32>(x_2069.z, x_2069.w, x_2069.y));
        let x_2072 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2071.x, x_2071.y, x_2071.z, x_2072.w);
        let x_2074 : vec4<f32> = u_xlat9;
        let x_2076 : vec3<f32> = (vec3<f32>(x_2074.x, x_2074.y, x_2074.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2077 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2076.x, x_2076.y, x_2076.z, x_2077.w);
        let x_2079 : vec4<f32> = u_xlat12;
        let x_2081 : vec4<f32> = u_xlat7;
        let x_2083 : vec3<f32> = (vec3<f32>(x_2079.z, x_2079.y, x_2079.w) / vec3<f32>(x_2081.x, x_2081.y, x_2081.z));
        let x_2084 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2083.x, x_2083.y, x_2083.z, x_2084.w);
        let x_2086 : vec4<f32> = u_xlat10;
        let x_2088 : vec3<f32> = (vec3<f32>(x_2086.x, x_2086.y, x_2086.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2089 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2088.x, x_2088.y, x_2088.z, x_2089.w);
        let x_2091 : vec4<f32> = u_xlat9;
        let x_2094 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2096 : vec3<f32> = (vec3<f32>(x_2091.y, x_2091.x, x_2091.z) * vec3<f32>(x_2094.x, x_2094.x, x_2094.x));
        let x_2097 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2096.x, x_2096.y, x_2096.z, x_2097.w);
        let x_2099 : vec4<f32> = u_xlat10;
        let x_2102 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2104 : vec3<f32> = (vec3<f32>(x_2099.x, x_2099.y, x_2099.z) * vec3<f32>(x_2102.y, x_2102.y, x_2102.y));
        let x_2105 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2104.x, x_2104.y, x_2104.z, x_2105.w);
        let x_2108 : f32 = u_xlat10.x;
        u_xlat9.w = x_2108;
        let x_2110 : vec2<f32> = u_xlat58;
        let x_2113 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2116 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_2110.x, x_2110.y, x_2110.x, x_2110.y) * vec4<f32>(x_2113.x, x_2113.y, x_2113.x, x_2113.y)) + vec4<f32>(x_2116.y, x_2116.w, x_2116.x, x_2116.w));
        let x_2119 : vec2<f32> = u_xlat58;
        let x_2121 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2124 : vec4<f32> = u_xlat9;
        let x_2126 : vec2<f32> = ((x_2119 * vec2<f32>(x_2121.x, x_2121.y)) + vec2<f32>(x_2124.z, x_2124.w));
        let x_2127 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2126.x, x_2126.y, x_2127.z, x_2127.w);
        let x_2130 : f32 = u_xlat9.y;
        u_xlat10.w = x_2130;
        let x_2132 : vec4<f32> = u_xlat10;
        let x_2133 : vec2<f32> = vec2<f32>(x_2132.y, x_2132.z);
        let x_2134 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2134.x, x_2133.x, x_2134.z, x_2133.y);
        let x_2136 : vec2<f32> = u_xlat58;
        let x_2139 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2142 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_2136.x, x_2136.y, x_2136.x, x_2136.y) * vec4<f32>(x_2139.x, x_2139.y, x_2139.x, x_2139.y)) + vec4<f32>(x_2142.x, x_2142.y, x_2142.z, x_2142.y));
        let x_2145 : vec2<f32> = u_xlat58;
        let x_2148 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2151 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_2145.x, x_2145.y, x_2145.x, x_2145.y) * vec4<f32>(x_2148.x, x_2148.y, x_2148.x, x_2148.y)) + vec4<f32>(x_2151.w, x_2151.y, x_2151.w, x_2151.z));
        let x_2154 : vec2<f32> = u_xlat58;
        let x_2157 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2160 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_2154.x, x_2154.y, x_2154.x, x_2154.y) * vec4<f32>(x_2157.x, x_2157.y, x_2157.x, x_2157.y)) + vec4<f32>(x_2160.x, x_2160.w, x_2160.z, x_2160.w));
        let x_2163 : vec4<f32> = u_xlat7;
        let x_2165 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_2163.x, x_2163.x, x_2163.x, x_2163.y) * vec4<f32>(x_2165.z, x_2165.w, x_2165.y, x_2165.z));
        let x_2168 : vec4<f32> = u_xlat7;
        let x_2170 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_2168.y, x_2168.y, x_2168.z, x_2168.z) * x_2170);
        let x_2173 : f32 = u_xlat7.z;
        let x_2175 : f32 = u_xlat8.y;
        u_xlat58.x = (x_2173 * x_2175);
        let x_2179 : vec4<f32> = u_xlat11;
        let x_2180 : vec2<f32> = vec2<f32>(x_2179.x, x_2179.y);
        let x_2182 : f32 = vs_INTERP3.z;
        txVec34 = vec3<f32>(x_2180.x, x_2180.y, x_2182);
        let x_2190 : vec3<f32> = txVec34;
        let x_2192 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2190.xy, x_2190.z);
        u_xlat84 = x_2192;
        let x_2194 : vec4<f32> = u_xlat11;
        let x_2195 : vec2<f32> = vec2<f32>(x_2194.z, x_2194.w);
        let x_2197 : f32 = vs_INTERP3.z;
        txVec35 = vec3<f32>(x_2195.x, x_2195.y, x_2197);
        let x_2204 : vec3<f32> = txVec35;
        let x_2206 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2204.xy, x_2204.z);
        u_xlat7.x = x_2206;
        let x_2209 : f32 = u_xlat7.x;
        let x_2211 : f32 = u_xlat14.y;
        u_xlat7.x = (x_2209 * x_2211);
        let x_2215 : f32 = u_xlat14.x;
        let x_2216 : f32 = u_xlat84;
        let x_2219 : f32 = u_xlat7.x;
        u_xlat84 = ((x_2215 * x_2216) + x_2219);
        let x_2222 : vec4<f32> = u_xlat12;
        let x_2223 : vec2<f32> = vec2<f32>(x_2222.x, x_2222.y);
        let x_2225 : f32 = vs_INTERP3.z;
        txVec36 = vec3<f32>(x_2223.x, x_2223.y, x_2225);
        let x_2232 : vec3<f32> = txVec36;
        let x_2234 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2232.xy, x_2232.z);
        u_xlat7.x = x_2234;
        let x_2237 : f32 = u_xlat14.z;
        let x_2239 : f32 = u_xlat7.x;
        let x_2241 : f32 = u_xlat84;
        u_xlat84 = ((x_2237 * x_2239) + x_2241);
        let x_2244 : vec4<f32> = u_xlat10;
        let x_2245 : vec2<f32> = vec2<f32>(x_2244.x, x_2244.y);
        let x_2247 : f32 = vs_INTERP3.z;
        txVec37 = vec3<f32>(x_2245.x, x_2245.y, x_2247);
        let x_2254 : vec3<f32> = txVec37;
        let x_2256 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2254.xy, x_2254.z);
        u_xlat7.x = x_2256;
        let x_2259 : f32 = u_xlat14.w;
        let x_2261 : f32 = u_xlat7.x;
        let x_2263 : f32 = u_xlat84;
        u_xlat84 = ((x_2259 * x_2261) + x_2263);
        let x_2266 : vec4<f32> = u_xlat13;
        let x_2267 : vec2<f32> = vec2<f32>(x_2266.x, x_2266.y);
        let x_2269 : f32 = vs_INTERP3.z;
        txVec38 = vec3<f32>(x_2267.x, x_2267.y, x_2269);
        let x_2276 : vec3<f32> = txVec38;
        let x_2278 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2276.xy, x_2276.z);
        u_xlat7.x = x_2278;
        let x_2281 : f32 = u_xlat15.x;
        let x_2283 : f32 = u_xlat7.x;
        let x_2285 : f32 = u_xlat84;
        u_xlat84 = ((x_2281 * x_2283) + x_2285);
        let x_2288 : vec4<f32> = u_xlat13;
        let x_2289 : vec2<f32> = vec2<f32>(x_2288.z, x_2288.w);
        let x_2291 : f32 = vs_INTERP3.z;
        txVec39 = vec3<f32>(x_2289.x, x_2289.y, x_2291);
        let x_2298 : vec3<f32> = txVec39;
        let x_2300 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2298.xy, x_2298.z);
        u_xlat7.x = x_2300;
        let x_2303 : f32 = u_xlat15.y;
        let x_2305 : f32 = u_xlat7.x;
        let x_2307 : f32 = u_xlat84;
        u_xlat84 = ((x_2303 * x_2305) + x_2307);
        let x_2310 : vec4<f32> = u_xlat10;
        let x_2311 : vec2<f32> = vec2<f32>(x_2310.z, x_2310.w);
        let x_2313 : f32 = vs_INTERP3.z;
        txVec40 = vec3<f32>(x_2311.x, x_2311.y, x_2313);
        let x_2320 : vec3<f32> = txVec40;
        let x_2322 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2320.xy, x_2320.z);
        u_xlat7.x = x_2322;
        let x_2325 : f32 = u_xlat15.z;
        let x_2327 : f32 = u_xlat7.x;
        let x_2329 : f32 = u_xlat84;
        u_xlat84 = ((x_2325 * x_2327) + x_2329);
        let x_2332 : vec4<f32> = u_xlat9;
        let x_2333 : vec2<f32> = vec2<f32>(x_2332.x, x_2332.y);
        let x_2335 : f32 = vs_INTERP3.z;
        txVec41 = vec3<f32>(x_2333.x, x_2333.y, x_2335);
        let x_2342 : vec3<f32> = txVec41;
        let x_2344 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2342.xy, x_2342.z);
        u_xlat7.x = x_2344;
        let x_2347 : f32 = u_xlat15.w;
        let x_2349 : f32 = u_xlat7.x;
        let x_2351 : f32 = u_xlat84;
        u_xlat84 = ((x_2347 * x_2349) + x_2351);
        let x_2354 : vec4<f32> = u_xlat9;
        let x_2355 : vec2<f32> = vec2<f32>(x_2354.z, x_2354.w);
        let x_2357 : f32 = vs_INTERP3.z;
        txVec42 = vec3<f32>(x_2355.x, x_2355.y, x_2357);
        let x_2364 : vec3<f32> = txVec42;
        let x_2366 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2364.xy, x_2364.z);
        u_xlat7.x = x_2366;
        let x_2369 : f32 = u_xlat58.x;
        let x_2371 : f32 = u_xlat7.x;
        let x_2373 : f32 = u_xlat84;
        u_xlat78 = ((x_2369 * x_2371) + x_2373);
      } else {
        let x_2376 : vec4<f32> = vs_INTERP3;
        let x_2379 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        u_xlat58 = ((vec2<f32>(x_2376.x, x_2376.y) * vec2<f32>(x_2379.z, x_2379.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2383 : vec2<f32> = u_xlat58;
        u_xlat58 = floor(x_2383);
        let x_2385 : vec4<f32> = vs_INTERP3;
        let x_2388 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2391 : vec2<f32> = u_xlat58;
        let x_2393 : vec2<f32> = ((vec2<f32>(x_2385.x, x_2385.y) * vec2<f32>(x_2388.z, x_2388.w)) + -(x_2391));
        let x_2394 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2393.x, x_2393.y, x_2394.z, x_2394.w);
        let x_2396 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_2396.x, x_2396.x, x_2396.y, x_2396.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2399 : vec4<f32> = u_xlat8;
        let x_2401 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2399.x, x_2399.x, x_2399.z, x_2399.z) * vec4<f32>(x_2401.x, x_2401.x, x_2401.z, x_2401.z));
        let x_2404 : vec4<f32> = u_xlat9;
        let x_2406 : vec2<f32> = (vec2<f32>(x_2404.y, x_2404.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_2407 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2407.x, x_2406.x, x_2407.z, x_2406.y);
        let x_2409 : vec4<f32> = u_xlat9;
        let x_2412 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_2409.x, x_2409.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2412.x, x_2412.y)));
        let x_2416 : vec4<f32> = u_xlat7;
        let x_2419 : vec2<f32> = (-(vec2<f32>(x_2416.x, x_2416.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2420 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2419.x, x_2420.y, x_2419.y, x_2420.w);
        let x_2422 : vec4<f32> = u_xlat7;
        let x_2424 : vec2<f32> = min(vec2<f32>(x_2422.x, x_2422.y), vec2<f32>(0.0f, 0.0f));
        let x_2425 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2424.x, x_2424.y, x_2425.z, x_2425.w);
        let x_2427 : vec4<f32> = u_xlat9;
        let x_2430 : vec4<f32> = u_xlat9;
        let x_2433 : vec4<f32> = u_xlat8;
        let x_2435 : vec2<f32> = ((-(vec2<f32>(x_2427.x, x_2427.y)) * vec2<f32>(x_2430.x, x_2430.y)) + vec2<f32>(x_2433.x, x_2433.z));
        let x_2436 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2435.x, x_2436.y, x_2435.y, x_2436.w);
        let x_2438 : vec4<f32> = u_xlat7;
        let x_2440 : vec2<f32> = max(vec2<f32>(x_2438.x, x_2438.y), vec2<f32>(0.0f, 0.0f));
        let x_2441 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2440.x, x_2440.y, x_2441.z, x_2441.w);
        let x_2443 : vec4<f32> = u_xlat9;
        let x_2446 : vec4<f32> = u_xlat9;
        let x_2449 : vec4<f32> = u_xlat8;
        let x_2451 : vec2<f32> = ((-(vec2<f32>(x_2443.x, x_2443.y)) * vec2<f32>(x_2446.x, x_2446.y)) + vec2<f32>(x_2449.y, x_2449.w));
        let x_2452 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2452.x, x_2451.x, x_2452.z, x_2451.y);
        let x_2454 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_2454 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_2457 : f32 = u_xlat8.y;
        u_xlat9.z = (x_2457 * 0.08163200318813323975f);
        let x_2460 : vec2<f32> = u_xlat59;
        let x_2462 : vec2<f32> = (vec2<f32>(x_2460.y, x_2460.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2463 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2462.x, x_2462.y, x_2463.z, x_2463.w);
        let x_2465 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_2465.x, x_2465.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2469 : f32 = u_xlat8.w;
        u_xlat11.z = (x_2469 * 0.08163200318813323975f);
        let x_2473 : f32 = u_xlat11.y;
        u_xlat9.x = x_2473;
        let x_2475 : vec4<f32> = u_xlat7;
        let x_2478 : vec2<f32> = ((vec2<f32>(x_2475.x, x_2475.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2479 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2479.x, x_2478.x, x_2479.z, x_2478.y);
        let x_2481 : vec4<f32> = u_xlat7;
        let x_2484 : vec2<f32> = ((vec2<f32>(x_2481.x, x_2481.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2485 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2484.x, x_2485.y, x_2484.y, x_2485.w);
        let x_2488 : f32 = u_xlat59.x;
        u_xlat8.y = x_2488;
        let x_2491 : f32 = u_xlat10.y;
        u_xlat8.w = x_2491;
        let x_2493 : vec4<f32> = u_xlat8;
        let x_2494 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2493 + x_2494);
        let x_2496 : vec4<f32> = u_xlat7;
        let x_2499 : vec2<f32> = ((vec2<f32>(x_2496.y, x_2496.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2500 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2500.x, x_2499.x, x_2500.z, x_2499.y);
        let x_2502 : vec4<f32> = u_xlat7;
        let x_2505 : vec2<f32> = ((vec2<f32>(x_2502.y, x_2502.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2506 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2505.x, x_2506.y, x_2505.y, x_2506.w);
        let x_2509 : f32 = u_xlat59.y;
        u_xlat10.y = x_2509;
        let x_2511 : vec4<f32> = u_xlat10;
        let x_2512 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_2511 + x_2512);
        let x_2514 : vec4<f32> = u_xlat8;
        let x_2515 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_2514 / x_2515);
        let x_2517 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_2517 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2519 : vec4<f32> = u_xlat10;
        let x_2520 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_2519 / x_2520);
        let x_2522 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_2522 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2524 : vec4<f32> = u_xlat8;
        let x_2527 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_2524.w, x_2524.x, x_2524.y, x_2524.z) * vec4<f32>(x_2527.x, x_2527.x, x_2527.x, x_2527.x));
        let x_2530 : vec4<f32> = u_xlat10;
        let x_2533 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_2530.x, x_2530.w, x_2530.y, x_2530.z) * vec4<f32>(x_2533.y, x_2533.y, x_2533.y, x_2533.y));
        let x_2536 : vec4<f32> = u_xlat8;
        let x_2537 : vec3<f32> = vec3<f32>(x_2536.y, x_2536.z, x_2536.w);
        let x_2538 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2537.x, x_2538.y, x_2537.y, x_2537.z);
        let x_2541 : f32 = u_xlat10.x;
        u_xlat11.y = x_2541;
        let x_2543 : vec2<f32> = u_xlat58;
        let x_2546 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2549 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_2543.x, x_2543.y, x_2543.x, x_2543.y) * vec4<f32>(x_2546.x, x_2546.y, x_2546.x, x_2546.y)) + vec4<f32>(x_2549.x, x_2549.y, x_2549.z, x_2549.y));
        let x_2552 : vec2<f32> = u_xlat58;
        let x_2554 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2557 : vec4<f32> = u_xlat11;
        let x_2559 : vec2<f32> = ((x_2552 * vec2<f32>(x_2554.x, x_2554.y)) + vec2<f32>(x_2557.w, x_2557.y));
        let x_2560 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2559.x, x_2559.y, x_2560.z, x_2560.w);
        let x_2563 : f32 = u_xlat11.y;
        u_xlat8.y = x_2563;
        let x_2566 : f32 = u_xlat10.z;
        u_xlat11.y = x_2566;
        let x_2568 : vec2<f32> = u_xlat58;
        let x_2571 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2574 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_2568.x, x_2568.y, x_2568.x, x_2568.y) * vec4<f32>(x_2571.x, x_2571.y, x_2571.x, x_2571.y)) + vec4<f32>(x_2574.x, x_2574.y, x_2574.z, x_2574.y));
        let x_2577 : vec2<f32> = u_xlat58;
        let x_2579 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2582 : vec4<f32> = u_xlat11;
        u_xlat65 = ((x_2577 * vec2<f32>(x_2579.x, x_2579.y)) + vec2<f32>(x_2582.w, x_2582.y));
        let x_2586 : f32 = u_xlat11.y;
        u_xlat8.z = x_2586;
        let x_2588 : vec2<f32> = u_xlat58;
        let x_2591 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2594 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_2588.x, x_2588.y, x_2588.x, x_2588.y) * vec4<f32>(x_2591.x, x_2591.y, x_2591.x, x_2591.y)) + vec4<f32>(x_2594.x, x_2594.y, x_2594.x, x_2594.z));
        let x_2598 : f32 = u_xlat10.w;
        u_xlat11.y = x_2598;
        let x_2600 : vec2<f32> = u_xlat58;
        let x_2603 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2606 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_2600.x, x_2600.y, x_2600.x, x_2600.y) * vec4<f32>(x_2603.x, x_2603.y, x_2603.x, x_2603.y)) + vec4<f32>(x_2606.x, x_2606.y, x_2606.z, x_2606.y));
        let x_2610 : vec2<f32> = u_xlat58;
        let x_2612 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2615 : vec4<f32> = u_xlat11;
        let x_2617 : vec2<f32> = ((x_2610 * vec2<f32>(x_2612.x, x_2612.y)) + vec2<f32>(x_2615.w, x_2615.y));
        let x_2618 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_2617.x, x_2617.y, x_2618.z);
        let x_2621 : f32 = u_xlat11.y;
        u_xlat8.w = x_2621;
        let x_2623 : vec2<f32> = u_xlat58;
        let x_2625 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2628 : vec4<f32> = u_xlat8;
        let x_2630 : vec2<f32> = ((x_2623 * vec2<f32>(x_2625.x, x_2625.y)) + vec2<f32>(x_2628.x, x_2628.w));
        let x_2631 : vec4<f32> = u_xlat17;
        u_xlat17 = vec4<f32>(x_2630.x, x_2630.y, x_2631.z, x_2631.w);
        let x_2633 : vec4<f32> = u_xlat11;
        let x_2634 : vec3<f32> = vec3<f32>(x_2633.x, x_2633.z, x_2633.w);
        let x_2635 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2634.x, x_2635.y, x_2634.y, x_2634.z);
        let x_2637 : vec2<f32> = u_xlat58;
        let x_2640 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2643 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_2637.x, x_2637.y, x_2637.x, x_2637.y) * vec4<f32>(x_2640.x, x_2640.y, x_2640.x, x_2640.y)) + vec4<f32>(x_2643.x, x_2643.y, x_2643.z, x_2643.y));
        let x_2647 : vec2<f32> = u_xlat58;
        let x_2649 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2652 : vec4<f32> = u_xlat10;
        u_xlat62 = ((x_2647 * vec2<f32>(x_2649.x, x_2649.y)) + vec2<f32>(x_2652.w, x_2652.y));
        let x_2656 : f32 = u_xlat8.x;
        u_xlat10.x = x_2656;
        let x_2658 : vec2<f32> = u_xlat58;
        let x_2660 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2663 : vec4<f32> = u_xlat10;
        u_xlat58 = ((x_2658 * vec2<f32>(x_2660.x, x_2660.y)) + vec2<f32>(x_2663.x, x_2663.y));
        let x_2666 : vec4<f32> = u_xlat7;
        let x_2668 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_2666.x, x_2666.x, x_2666.x, x_2666.x) * x_2668);
        let x_2671 : vec4<f32> = u_xlat7;
        let x_2673 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_2671.y, x_2671.y, x_2671.y, x_2671.y) * x_2673);
        let x_2676 : vec4<f32> = u_xlat7;
        let x_2678 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_2676.z, x_2676.z, x_2676.z, x_2676.z) * x_2678);
        let x_2680 : vec4<f32> = u_xlat7;
        let x_2682 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_2680.w, x_2680.w, x_2680.w, x_2680.w) * x_2682);
        let x_2685 : vec4<f32> = u_xlat12;
        let x_2686 : vec2<f32> = vec2<f32>(x_2685.x, x_2685.y);
        let x_2688 : f32 = vs_INTERP3.z;
        txVec43 = vec3<f32>(x_2686.x, x_2686.y, x_2688);
        let x_2695 : vec3<f32> = txVec43;
        let x_2697 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2695.xy, x_2695.z);
        u_xlat8.x = x_2697;
        let x_2700 : vec4<f32> = u_xlat12;
        let x_2701 : vec2<f32> = vec2<f32>(x_2700.z, x_2700.w);
        let x_2703 : f32 = vs_INTERP3.z;
        txVec44 = vec3<f32>(x_2701.x, x_2701.y, x_2703);
        let x_2711 : vec3<f32> = txVec44;
        let x_2713 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2711.xy, x_2711.z);
        u_xlat86 = x_2713;
        let x_2714 : f32 = u_xlat86;
        let x_2716 : f32 = u_xlat18.y;
        u_xlat86 = (x_2714 * x_2716);
        let x_2719 : f32 = u_xlat18.x;
        let x_2721 : f32 = u_xlat8.x;
        let x_2723 : f32 = u_xlat86;
        u_xlat8.x = ((x_2719 * x_2721) + x_2723);
        let x_2727 : vec4<f32> = u_xlat13;
        let x_2728 : vec2<f32> = vec2<f32>(x_2727.x, x_2727.y);
        let x_2730 : f32 = vs_INTERP3.z;
        txVec45 = vec3<f32>(x_2728.x, x_2728.y, x_2730);
        let x_2737 : vec3<f32> = txVec45;
        let x_2739 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2737.xy, x_2737.z);
        u_xlat86 = x_2739;
        let x_2741 : f32 = u_xlat18.z;
        let x_2742 : f32 = u_xlat86;
        let x_2745 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2741 * x_2742) + x_2745);
        let x_2749 : vec4<f32> = u_xlat15;
        let x_2750 : vec2<f32> = vec2<f32>(x_2749.x, x_2749.y);
        let x_2752 : f32 = vs_INTERP3.z;
        txVec46 = vec3<f32>(x_2750.x, x_2750.y, x_2752);
        let x_2759 : vec3<f32> = txVec46;
        let x_2761 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2759.xy, x_2759.z);
        u_xlat86 = x_2761;
        let x_2763 : f32 = u_xlat18.w;
        let x_2764 : f32 = u_xlat86;
        let x_2767 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2763 * x_2764) + x_2767);
        let x_2771 : vec4<f32> = u_xlat14;
        let x_2772 : vec2<f32> = vec2<f32>(x_2771.x, x_2771.y);
        let x_2774 : f32 = vs_INTERP3.z;
        txVec47 = vec3<f32>(x_2772.x, x_2772.y, x_2774);
        let x_2781 : vec3<f32> = txVec47;
        let x_2783 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2781.xy, x_2781.z);
        u_xlat86 = x_2783;
        let x_2785 : f32 = u_xlat19.x;
        let x_2786 : f32 = u_xlat86;
        let x_2789 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2785 * x_2786) + x_2789);
        let x_2793 : vec4<f32> = u_xlat14;
        let x_2794 : vec2<f32> = vec2<f32>(x_2793.z, x_2793.w);
        let x_2796 : f32 = vs_INTERP3.z;
        txVec48 = vec3<f32>(x_2794.x, x_2794.y, x_2796);
        let x_2803 : vec3<f32> = txVec48;
        let x_2805 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2803.xy, x_2803.z);
        u_xlat86 = x_2805;
        let x_2807 : f32 = u_xlat19.y;
        let x_2808 : f32 = u_xlat86;
        let x_2811 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2807 * x_2808) + x_2811);
        let x_2815 : vec2<f32> = u_xlat65;
        let x_2817 : f32 = vs_INTERP3.z;
        txVec49 = vec3<f32>(x_2815.x, x_2815.y, x_2817);
        let x_2824 : vec3<f32> = txVec49;
        let x_2826 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2824.xy, x_2824.z);
        u_xlat86 = x_2826;
        let x_2828 : f32 = u_xlat19.z;
        let x_2829 : f32 = u_xlat86;
        let x_2832 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2828 * x_2829) + x_2832);
        let x_2836 : vec4<f32> = u_xlat15;
        let x_2837 : vec2<f32> = vec2<f32>(x_2836.z, x_2836.w);
        let x_2839 : f32 = vs_INTERP3.z;
        txVec50 = vec3<f32>(x_2837.x, x_2837.y, x_2839);
        let x_2846 : vec3<f32> = txVec50;
        let x_2848 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2846.xy, x_2846.z);
        u_xlat86 = x_2848;
        let x_2850 : f32 = u_xlat19.w;
        let x_2851 : f32 = u_xlat86;
        let x_2854 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2850 * x_2851) + x_2854);
        let x_2858 : vec4<f32> = u_xlat16;
        let x_2859 : vec2<f32> = vec2<f32>(x_2858.x, x_2858.y);
        let x_2861 : f32 = vs_INTERP3.z;
        txVec51 = vec3<f32>(x_2859.x, x_2859.y, x_2861);
        let x_2868 : vec3<f32> = txVec51;
        let x_2870 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2868.xy, x_2868.z);
        u_xlat86 = x_2870;
        let x_2872 : f32 = u_xlat20.x;
        let x_2873 : f32 = u_xlat86;
        let x_2876 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2872 * x_2873) + x_2876);
        let x_2880 : vec4<f32> = u_xlat16;
        let x_2881 : vec2<f32> = vec2<f32>(x_2880.z, x_2880.w);
        let x_2883 : f32 = vs_INTERP3.z;
        txVec52 = vec3<f32>(x_2881.x, x_2881.y, x_2883);
        let x_2890 : vec3<f32> = txVec52;
        let x_2892 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2890.xy, x_2890.z);
        u_xlat86 = x_2892;
        let x_2894 : f32 = u_xlat20.y;
        let x_2895 : f32 = u_xlat86;
        let x_2898 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2894 * x_2895) + x_2898);
        let x_2902 : vec3<f32> = u_xlat34;
        let x_2903 : vec2<f32> = vec2<f32>(x_2902.x, x_2902.y);
        let x_2905 : f32 = vs_INTERP3.z;
        txVec53 = vec3<f32>(x_2903.x, x_2903.y, x_2905);
        let x_2912 : vec3<f32> = txVec53;
        let x_2914 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2912.xy, x_2912.z);
        u_xlat34.x = x_2914;
        let x_2917 : f32 = u_xlat20.z;
        let x_2919 : f32 = u_xlat34.x;
        let x_2922 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2917 * x_2919) + x_2922);
        let x_2926 : vec4<f32> = u_xlat17;
        let x_2927 : vec2<f32> = vec2<f32>(x_2926.x, x_2926.y);
        let x_2929 : f32 = vs_INTERP3.z;
        txVec54 = vec3<f32>(x_2927.x, x_2927.y, x_2929);
        let x_2936 : vec3<f32> = txVec54;
        let x_2938 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2936.xy, x_2936.z);
        u_xlat34.x = x_2938;
        let x_2941 : f32 = u_xlat20.w;
        let x_2943 : f32 = u_xlat34.x;
        let x_2946 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2941 * x_2943) + x_2946);
        let x_2950 : vec4<f32> = u_xlat11;
        let x_2951 : vec2<f32> = vec2<f32>(x_2950.x, x_2950.y);
        let x_2953 : f32 = vs_INTERP3.z;
        txVec55 = vec3<f32>(x_2951.x, x_2951.y, x_2953);
        let x_2960 : vec3<f32> = txVec55;
        let x_2962 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2960.xy, x_2960.z);
        u_xlat34.x = x_2962;
        let x_2965 : f32 = u_xlat7.x;
        let x_2967 : f32 = u_xlat34.x;
        let x_2970 : f32 = u_xlat8.x;
        u_xlat7.x = ((x_2965 * x_2967) + x_2970);
        let x_2974 : vec4<f32> = u_xlat11;
        let x_2975 : vec2<f32> = vec2<f32>(x_2974.z, x_2974.w);
        let x_2977 : f32 = vs_INTERP3.z;
        txVec56 = vec3<f32>(x_2975.x, x_2975.y, x_2977);
        let x_2984 : vec3<f32> = txVec56;
        let x_2986 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2984.xy, x_2984.z);
        u_xlat8.x = x_2986;
        let x_2989 : f32 = u_xlat7.y;
        let x_2991 : f32 = u_xlat8.x;
        let x_2994 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_2989 * x_2991) + x_2994);
        let x_2998 : vec2<f32> = u_xlat62;
        let x_3000 : f32 = vs_INTERP3.z;
        txVec57 = vec3<f32>(x_2998.x, x_2998.y, x_3000);
        let x_3007 : vec3<f32> = txVec57;
        let x_3009 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3007.xy, x_3007.z);
        u_xlat33.x = x_3009;
        let x_3012 : f32 = u_xlat7.z;
        let x_3014 : f32 = u_xlat33.x;
        let x_3017 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_3012 * x_3014) + x_3017);
        let x_3021 : vec2<f32> = u_xlat58;
        let x_3023 : f32 = vs_INTERP3.z;
        txVec58 = vec3<f32>(x_3021.x, x_3021.y, x_3023);
        let x_3030 : vec3<f32> = txVec58;
        let x_3032 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3030.xy, x_3030.z);
        u_xlat58.x = x_3032;
        let x_3035 : f32 = u_xlat7.w;
        let x_3037 : f32 = u_xlat58.x;
        let x_3040 : f32 = u_xlat7.x;
        u_xlat78 = ((x_3035 * x_3037) + x_3040);
      }
    }
  } else {
    let x_3044 : vec4<f32> = vs_INTERP3;
    let x_3045 : vec2<f32> = vec2<f32>(x_3044.x, x_3044.y);
    let x_3047 : f32 = vs_INTERP3.z;
    txVec59 = vec3<f32>(x_3045.x, x_3045.y, x_3047);
    let x_3054 : vec3<f32> = txVec59;
    let x_3056 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3054.xy, x_3054.z);
    u_xlat78 = x_3056;
  }
  let x_3057 : f32 = u_xlat78;
  let x_3059 : f32 = x_131.x_MainLightShadowParams.x;
  let x_3062 : f32 = u_xlat4.x;
  u_xlat78 = ((x_3057 * x_3059) + x_3062);
  let x_3066 : f32 = vs_INTERP3.z;
  u_xlatb4 = (0.0f >= x_3066);
  let x_3069 : f32 = vs_INTERP3.z;
  u_xlatb58 = (x_3069 >= 1.0f);
  let x_3071 : bool = u_xlatb4;
  let x_3072 : bool = u_xlatb58;
  u_xlatb4 = (x_3071 | x_3072);
  let x_3074 : bool = u_xlatb4;
  let x_3075 : f32 = u_xlat78;
  u_xlat78 = select(x_3075, 1.0f, x_3074);
  let x_3077 : vec3<f32> = vs_INTERP8;
  let x_3079 : vec3<f32> = x_53.x_WorldSpaceCameraPos;
  let x_3081 : vec3<f32> = (x_3077 + -(x_3079));
  let x_3082 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3081.x, x_3081.y, x_3081.z, x_3082.w);
  let x_3084 : vec4<f32> = u_xlat7;
  let x_3086 : vec4<f32> = u_xlat7;
  u_xlat4.x = dot(vec3<f32>(x_3084.x, x_3084.y, x_3084.z), vec3<f32>(x_3086.x, x_3086.y, x_3086.z));
  let x_3091 : f32 = u_xlat4.x;
  let x_3093 : f32 = x_131.x_MainLightShadowParams.z;
  let x_3096 : f32 = x_131.x_MainLightShadowParams.w;
  u_xlat58.x = ((x_3091 * x_3093) + x_3096);
  let x_3100 : f32 = u_xlat58.x;
  u_xlat58.x = clamp(x_3100, 0.0f, 1.0f);
  let x_3103 : f32 = u_xlat78;
  u_xlat84 = (-(x_3103) + 1.0f);
  let x_3107 : f32 = u_xlat58.x;
  let x_3108 : f32 = u_xlat84;
  let x_3110 : f32 = u_xlat78;
  u_xlat78 = ((x_3107 * x_3108) + x_3110);
  let x_3112 : vec3<f32> = u_xlat30;
  let x_3114 : vec3<f32> = u_xlat29;
  u_xlat58.x = dot(-(x_3112), x_3114);
  let x_3118 : f32 = u_xlat58.x;
  let x_3120 : f32 = u_xlat58.x;
  u_xlat58.x = (x_3118 + x_3120);
  let x_3123 : vec3<f32> = u_xlat29;
  let x_3124 : vec2<f32> = u_xlat58;
  let x_3128 : vec3<f32> = u_xlat30;
  let x_3130 : vec3<f32> = ((x_3123 * -(vec3<f32>(x_3124.x, x_3124.x, x_3124.x))) + -(x_3128));
  let x_3131 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3130.x, x_3130.y, x_3130.z, x_3131.w);
  let x_3133 : vec3<f32> = u_xlat29;
  let x_3134 : vec3<f32> = u_xlat30;
  u_xlat58.x = dot(x_3133, x_3134);
  let x_3138 : f32 = u_xlat58.x;
  u_xlat58.x = clamp(x_3138, 0.0f, 1.0f);
  let x_3142 : f32 = u_xlat58.x;
  u_xlat58.x = (-(x_3142) + 1.0f);
  let x_3147 : f32 = u_xlat58.x;
  let x_3149 : f32 = u_xlat58.x;
  u_xlat58.x = (x_3147 * x_3149);
  let x_3153 : f32 = u_xlat58.x;
  let x_3155 : f32 = u_xlat58.x;
  u_xlat58.x = (x_3153 * x_3155);
  let x_3158 : f32 = u_xlat79;
  u_xlat84 = ((-(x_3158) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_3164 : f32 = u_xlat79;
  let x_3165 : f32 = u_xlat84;
  u_xlat79 = (x_3164 * x_3165);
  let x_3167 : f32 = u_xlat79;
  u_xlat79 = (x_3167 * 6.0f);
  let x_3178 : vec4<f32> = u_xlat7;
  let x_3180 : f32 = u_xlat79;
  let x_3181 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_3178.x, x_3178.y, x_3178.z), x_3180);
  u_xlat7 = x_3181;
  let x_3183 : f32 = u_xlat7.w;
  u_xlat79 = (x_3183 + -1.0f);
  let x_3186 : f32 = x_1585.unity_SpecCube0_HDR.w;
  let x_3187 : f32 = u_xlat79;
  u_xlat79 = ((x_3186 * x_3187) + 1.0f);
  let x_3190 : f32 = u_xlat79;
  u_xlat79 = max(x_3190, 0.0f);
  let x_3192 : f32 = u_xlat79;
  u_xlat79 = log2(x_3192);
  let x_3194 : f32 = u_xlat79;
  let x_3196 : f32 = x_1585.unity_SpecCube0_HDR.y;
  u_xlat79 = (x_3194 * x_3196);
  let x_3198 : f32 = u_xlat79;
  u_xlat79 = exp2(x_3198);
  let x_3200 : f32 = u_xlat79;
  let x_3202 : f32 = x_1585.unity_SpecCube0_HDR.x;
  u_xlat79 = (x_3200 * x_3202);
  let x_3204 : vec4<f32> = u_xlat7;
  let x_3206 : f32 = u_xlat79;
  let x_3208 : vec3<f32> = (vec3<f32>(x_3204.x, x_3204.y, x_3204.z) * vec3<f32>(x_3206, x_3206, x_3206));
  let x_3209 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3208.x, x_3208.y, x_3208.z, x_3209.w);
  let x_3211 : f32 = u_xlat80;
  let x_3213 : f32 = u_xlat80;
  let x_3217 : vec2<f32> = ((vec2<f32>(x_3211, x_3211) * vec2<f32>(x_3213, x_3213)) + vec2<f32>(-1.0f, 1.0f));
  let x_3218 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3217.x, x_3217.y, x_3218.z, x_3218.w);
  let x_3221 : f32 = u_xlat8.y;
  u_xlat79 = (1.0f / x_3221);
  let x_3224 : f32 = u_xlat3.x;
  u_xlat80 = (x_3224 + -0.03999999910593032837f);
  let x_3228 : f32 = u_xlat58.x;
  let x_3229 : f32 = u_xlat80;
  u_xlat80 = ((x_3228 * x_3229) + 0.03999999910593032837f);
  let x_3233 : f32 = u_xlat79;
  let x_3234 : f32 = u_xlat80;
  u_xlat79 = (x_3233 * x_3234);
  let x_3236 : f32 = u_xlat79;
  let x_3238 : vec4<f32> = u_xlat7;
  let x_3240 : vec3<f32> = (vec3<f32>(x_3236, x_3236, x_3236) * vec3<f32>(x_3238.x, x_3238.y, x_3238.z));
  let x_3241 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3240.x, x_3240.y, x_3240.z, x_3241.w);
  let x_3243 : vec4<f32> = u_xlat5;
  let x_3245 : vec3<f32> = u_xlat2;
  let x_3247 : vec4<f32> = u_xlat7;
  let x_3249 : vec3<f32> = ((vec3<f32>(x_3243.x, x_3243.y, x_3243.z) * x_3245) + vec3<f32>(x_3247.x, x_3247.y, x_3247.z));
  let x_3250 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_3249.x, x_3249.y, x_3249.z, x_3250.w);
  let x_3252 : f32 = u_xlat78;
  let x_3254 : f32 = x_1585.unity_LightData.z;
  u_xlat78 = (x_3252 * x_3254);
  let x_3256 : vec3<f32> = u_xlat29;
  let x_3258 : vec4<f32> = x_53.x_MainLightPosition;
  u_xlat79 = dot(x_3256, vec3<f32>(x_3258.x, x_3258.y, x_3258.z));
  let x_3261 : f32 = u_xlat79;
  u_xlat79 = clamp(x_3261, 0.0f, 1.0f);
  let x_3263 : f32 = u_xlat78;
  let x_3264 : f32 = u_xlat79;
  u_xlat78 = (x_3263 * x_3264);
  let x_3266 : f32 = u_xlat78;
  let x_3269 : vec4<f32> = x_53.x_MainLightColor;
  let x_3271 : vec3<f32> = (vec3<f32>(x_3266, x_3266, x_3266) * vec3<f32>(x_3269.x, x_3269.y, x_3269.z));
  let x_3272 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3271.x, x_3271.y, x_3271.z, x_3272.w);
  let x_3274 : vec3<f32> = u_xlat30;
  let x_3276 : vec4<f32> = x_53.x_MainLightPosition;
  u_xlat34 = (x_3274 + vec3<f32>(x_3276.x, x_3276.y, x_3276.z));
  let x_3279 : vec3<f32> = u_xlat34;
  let x_3280 : vec3<f32> = u_xlat34;
  u_xlat78 = dot(x_3279, x_3280);
  let x_3282 : f32 = u_xlat78;
  u_xlat78 = max(x_3282, 1.17549435e-38f);
  let x_3285 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_3285);
  let x_3287 : f32 = u_xlat78;
  let x_3289 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_3287, x_3287, x_3287) * x_3289);
  let x_3291 : vec3<f32> = u_xlat29;
  let x_3292 : vec3<f32> = u_xlat34;
  u_xlat78 = dot(x_3291, x_3292);
  let x_3294 : f32 = u_xlat78;
  u_xlat78 = clamp(x_3294, 0.0f, 1.0f);
  let x_3297 : vec4<f32> = x_53.x_MainLightPosition;
  let x_3299 : vec3<f32> = u_xlat34;
  u_xlat79 = dot(vec3<f32>(x_3297.x, x_3297.y, x_3297.z), x_3299);
  let x_3301 : f32 = u_xlat79;
  u_xlat79 = clamp(x_3301, 0.0f, 1.0f);
  let x_3303 : f32 = u_xlat78;
  let x_3304 : f32 = u_xlat78;
  u_xlat78 = (x_3303 * x_3304);
  let x_3306 : f32 = u_xlat78;
  let x_3308 : f32 = u_xlat8.x;
  u_xlat78 = ((x_3306 * x_3308) + 1.00001001358032226562f);
  let x_3312 : f32 = u_xlat79;
  let x_3313 : f32 = u_xlat79;
  u_xlat79 = (x_3312 * x_3313);
  let x_3315 : f32 = u_xlat78;
  let x_3316 : f32 = u_xlat78;
  u_xlat78 = (x_3315 * x_3316);
  let x_3318 : f32 = u_xlat79;
  u_xlat79 = max(x_3318, 0.10000000149011611938f);
  let x_3321 : f32 = u_xlat78;
  let x_3322 : f32 = u_xlat79;
  u_xlat78 = (x_3321 * x_3322);
  let x_3325 : f32 = u_xlat6.x;
  let x_3326 : f32 = u_xlat78;
  u_xlat78 = (x_3325 * x_3326);
  let x_3328 : f32 = u_xlat83;
  let x_3329 : f32 = u_xlat78;
  u_xlat78 = (x_3328 / x_3329);
  let x_3331 : f32 = u_xlat78;
  let x_3335 : vec3<f32> = u_xlat2;
  u_xlat34 = ((vec3<f32>(x_3331, x_3331, x_3331) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_3335);
  let x_3337 : vec4<f32> = u_xlat7;
  let x_3339 : vec3<f32> = u_xlat34;
  let x_3340 : vec3<f32> = (vec3<f32>(x_3337.x, x_3337.y, x_3337.z) * x_3339);
  let x_3341 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3340.x, x_3340.y, x_3340.z, x_3341.w);
  let x_3345 : f32 = x_53.x_AdditionalLightsCount.x;
  let x_3347 : f32 = x_1585.unity_LightData.y;
  u_xlat78 = min(x_3345, x_3347);
  let x_3351 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_3351));
  let x_3355 : f32 = u_xlat4.x;
  let x_3358 : f32 = x_131.x_AdditionalShadowFadeParams.x;
  let x_3361 : f32 = x_131.x_AdditionalShadowFadeParams.y;
  u_xlat79 = ((x_3355 * x_3358) + x_3361);
  let x_3363 : f32 = u_xlat79;
  u_xlat79 = clamp(x_3363, 0.0f, 1.0f);
  u_xlat34.x = 0.0f;
  u_xlat34.y = 0.0f;
  u_xlat34.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_3375 : u32 = u_xlatu_loop_1;
    let x_3376 : u32 = u_xlatu78;
    if ((x_3375 < x_3376)) {
    } else {
      break;
    }
    let x_3379 : u32 = u_xlatu_loop_1;
    u_xlatu3 = (x_3379 >> 2u);
    let x_3383 : u32 = u_xlatu_loop_1;
    u_xlati4 = bitcast<i32>((x_3383 & 3u));
    let x_3386 : u32 = u_xlatu3;
    let x_3389 : vec4<f32> = x_1585.unity_LightIndices[bitcast<i32>(x_3386)];
    let x_3399 : i32 = u_xlati4;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_3404 : vec4<u32> = indexable[x_3399];
    u_xlat3.x = dot(x_3389, bitcast<vec4<f32>>(x_3404));
    let x_3410 : f32 = u_xlat3.x;
    u_xlati3 = i32(x_3410);
    let x_3412 : vec3<f32> = vs_INTERP8;
    let x_3423 : i32 = u_xlati3;
    let x_3425 : vec4<f32> = x_3422.x_AdditionalLightsPosition[x_3423];
    let x_3428 : i32 = u_xlati3;
    let x_3430 : vec4<f32> = x_3422.x_AdditionalLightsPosition[x_3428];
    let x_3432 : vec3<f32> = ((-(x_3412) * vec3<f32>(x_3425.w, x_3425.w, x_3425.w)) + vec3<f32>(x_3430.x, x_3430.y, x_3430.z));
    let x_3433 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3432.x, x_3432.y, x_3432.z, x_3433.w);
    let x_3435 : vec4<f32> = u_xlat9;
    let x_3437 : vec4<f32> = u_xlat9;
    u_xlat4.x = dot(vec3<f32>(x_3435.x, x_3435.y, x_3435.z), vec3<f32>(x_3437.x, x_3437.y, x_3437.z));
    let x_3442 : f32 = u_xlat4.x;
    u_xlat4.x = max(x_3442, 0.00006103515625f);
    let x_3447 : f32 = u_xlat4.x;
    u_xlat58.x = inverseSqrt(x_3447);
    let x_3450 : vec2<f32> = u_xlat58;
    let x_3452 : vec4<f32> = u_xlat9;
    let x_3454 : vec3<f32> = (vec3<f32>(x_3450.x, x_3450.x, x_3450.x) * vec3<f32>(x_3452.x, x_3452.y, x_3452.z));
    let x_3455 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3454.x, x_3454.y, x_3454.z, x_3455.w);
    let x_3458 : f32 = u_xlat4.x;
    u_xlat84 = (1.0f / x_3458);
    let x_3461 : f32 = u_xlat4.x;
    let x_3462 : i32 = u_xlati3;
    let x_3464 : f32 = x_3422.x_AdditionalLightsAttenuation[x_3462].x;
    u_xlat4.x = (x_3461 * x_3464);
    let x_3468 : f32 = u_xlat4.x;
    let x_3471 : f32 = u_xlat4.x;
    u_xlat4.x = ((-(x_3468) * x_3471) + 1.0f);
    let x_3476 : f32 = u_xlat4.x;
    u_xlat4.x = max(x_3476, 0.0f);
    let x_3480 : f32 = u_xlat4.x;
    let x_3482 : f32 = u_xlat4.x;
    u_xlat4.x = (x_3480 * x_3482);
    let x_3486 : f32 = u_xlat4.x;
    let x_3487 : f32 = u_xlat84;
    u_xlat4.x = (x_3486 * x_3487);
    let x_3490 : i32 = u_xlati3;
    let x_3492 : vec4<f32> = x_3422.x_AdditionalLightsSpotDir[x_3490];
    let x_3494 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_3492.x, x_3492.y, x_3492.z), vec3<f32>(x_3494.x, x_3494.y, x_3494.z));
    let x_3497 : f32 = u_xlat84;
    let x_3498 : i32 = u_xlati3;
    let x_3500 : f32 = x_3422.x_AdditionalLightsAttenuation[x_3498].z;
    let x_3502 : i32 = u_xlati3;
    let x_3504 : f32 = x_3422.x_AdditionalLightsAttenuation[x_3502].w;
    u_xlat84 = ((x_3497 * x_3500) + x_3504);
    let x_3506 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3506, 0.0f, 1.0f);
    let x_3508 : f32 = u_xlat84;
    let x_3509 : f32 = u_xlat84;
    u_xlat84 = (x_3508 * x_3509);
    let x_3512 : f32 = u_xlat4.x;
    let x_3513 : f32 = u_xlat84;
    u_xlat4.x = (x_3512 * x_3513);
    let x_3518 : i32 = u_xlati3;
    let x_3520 : f32 = x_131.x_AdditionalShadowParams[x_3518].w;
    u_xlati84 = i32(x_3520);
    let x_3523 : i32 = u_xlati84;
    u_xlatb85 = (x_3523 >= 0i);
    let x_3525 : bool = u_xlatb85;
    if (x_3525) {
      let x_3529 : i32 = u_xlati3;
      let x_3531 : f32 = x_131.x_AdditionalShadowParams[x_3529].z;
      u_xlatb85 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_3531, x_3531, x_3531, x_3531))));
      let x_3536 : bool = u_xlatb85;
      if (x_3536) {
        let x_3541 : vec4<f32> = u_xlat10;
        let x_3544 : vec4<f32> = u_xlat10;
        let x_3547 : vec4<bool> = (abs(vec4<f32>(x_3541.z, x_3541.z, x_3541.y, x_3541.z)) >= abs(vec4<f32>(x_3544.x, x_3544.y, x_3544.x, x_3544.x)));
        let x_3548 : vec3<bool> = vec3<bool>(x_3547.x, x_3547.y, x_3547.z);
        let x_3549 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3548.x, x_3548.y, x_3548.z, x_3549.w);
        let x_3552 : bool = u_xlatb11.y;
        let x_3554 : bool = u_xlatb11.x;
        u_xlatb85 = (x_3552 & x_3554);
        let x_3556 : vec4<f32> = u_xlat10;
        let x_3559 : vec4<bool> = (-(vec4<f32>(x_3556.z, x_3556.y, x_3556.z, x_3556.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_3560 : vec3<bool> = vec3<bool>(x_3559.x, x_3559.y, x_3559.w);
        let x_3561 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3560.x, x_3560.y, x_3561.z, x_3560.z);
        let x_3564 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_3564);
        let x_3569 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_3569);
        let x_3575 : bool = u_xlatb11.w;
        u_xlat87 = select(0.0f, 1.0f, x_3575);
        let x_3578 : bool = u_xlatb11.z;
        if (x_3578) {
          let x_3583 : f32 = u_xlat11.y;
          x_3579 = x_3583;
        } else {
          let x_3585 : f32 = u_xlat87;
          x_3579 = x_3585;
        }
        let x_3586 : f32 = x_3579;
        u_xlat87 = x_3586;
        let x_3588 : bool = u_xlatb85;
        if (x_3588) {
          let x_3593 : f32 = u_xlat11.x;
          x_3589 = x_3593;
        } else {
          let x_3595 : f32 = u_xlat87;
          x_3589 = x_3595;
        }
        let x_3596 : f32 = x_3589;
        u_xlat85 = x_3596;
        let x_3597 : i32 = u_xlati3;
        let x_3599 : f32 = x_131.x_AdditionalShadowParams[x_3597].w;
        u_xlat87 = trunc(x_3599);
        let x_3601 : f32 = u_xlat85;
        let x_3602 : f32 = u_xlat87;
        u_xlat85 = (x_3601 + x_3602);
        let x_3604 : f32 = u_xlat85;
        u_xlati84 = i32(x_3604);
      }
      let x_3606 : i32 = u_xlati84;
      u_xlati84 = (x_3606 << bitcast<u32>(2i));
      let x_3608 : vec3<f32> = vs_INTERP8;
      let x_3611 : i32 = u_xlati84;
      let x_3614 : i32 = u_xlati84;
      let x_3618 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[((x_3611 + 1i) / 4i)][((x_3614 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_3608.y, x_3608.y, x_3608.y, x_3608.y) * x_3618);
      let x_3620 : i32 = u_xlati84;
      let x_3622 : i32 = u_xlati84;
      let x_3625 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[(x_3620 / 4i)][(x_3622 % 4i)];
      let x_3626 : vec3<f32> = vs_INTERP8;
      let x_3629 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3625 * vec4<f32>(x_3626.x, x_3626.x, x_3626.x, x_3626.x)) + x_3629);
      let x_3631 : i32 = u_xlati84;
      let x_3634 : i32 = u_xlati84;
      let x_3638 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[((x_3631 + 2i) / 4i)][((x_3634 + 2i) % 4i)];
      let x_3639 : vec3<f32> = vs_INTERP8;
      let x_3642 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3638 * vec4<f32>(x_3639.z, x_3639.z, x_3639.z, x_3639.z)) + x_3642);
      let x_3644 : vec4<f32> = u_xlat11;
      let x_3645 : i32 = u_xlati84;
      let x_3648 : i32 = u_xlati84;
      let x_3652 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[((x_3645 + 3i) / 4i)][((x_3648 + 3i) % 4i)];
      u_xlat11 = (x_3644 + x_3652);
      let x_3654 : vec4<f32> = u_xlat11;
      let x_3656 : vec4<f32> = u_xlat11;
      let x_3658 : vec3<f32> = (vec3<f32>(x_3654.x, x_3654.y, x_3654.z) / vec3<f32>(x_3656.w, x_3656.w, x_3656.w));
      let x_3659 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3658.x, x_3658.y, x_3658.z, x_3659.w);
      let x_3662 : i32 = u_xlati3;
      let x_3664 : f32 = x_131.x_AdditionalShadowParams[x_3662].y;
      u_xlatb84 = (0.0f < x_3664);
      let x_3666 : bool = u_xlatb84;
      if (x_3666) {
        let x_3669 : i32 = u_xlati3;
        let x_3671 : f32 = x_131.x_AdditionalShadowParams[x_3669].y;
        u_xlatb84 = (1.0f == x_3671);
        let x_3673 : bool = u_xlatb84;
        if (x_3673) {
          let x_3676 : vec4<f32> = u_xlat11;
          let x_3679 : vec4<f32> = x_131.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_3676.x, x_3676.y, x_3676.x, x_3676.y) + x_3679);
          let x_3682 : vec4<f32> = u_xlat12;
          let x_3683 : vec2<f32> = vec2<f32>(x_3682.x, x_3682.y);
          let x_3685 : f32 = u_xlat11.z;
          txVec60 = vec3<f32>(x_3683.x, x_3683.y, x_3685);
          let x_3693 : vec3<f32> = txVec60;
          let x_3695 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3693.xy, x_3693.z);
          u_xlat13.x = x_3695;
          let x_3698 : vec4<f32> = u_xlat12;
          let x_3699 : vec2<f32> = vec2<f32>(x_3698.z, x_3698.w);
          let x_3701 : f32 = u_xlat11.z;
          txVec61 = vec3<f32>(x_3699.x, x_3699.y, x_3701);
          let x_3708 : vec3<f32> = txVec61;
          let x_3710 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3708.xy, x_3708.z);
          u_xlat13.y = x_3710;
          let x_3712 : vec4<f32> = u_xlat11;
          let x_3716 : vec4<f32> = x_131.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_3712.x, x_3712.y, x_3712.x, x_3712.y) + x_3716);
          let x_3719 : vec4<f32> = u_xlat12;
          let x_3720 : vec2<f32> = vec2<f32>(x_3719.x, x_3719.y);
          let x_3722 : f32 = u_xlat11.z;
          txVec62 = vec3<f32>(x_3720.x, x_3720.y, x_3722);
          let x_3729 : vec3<f32> = txVec62;
          let x_3731 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3729.xy, x_3729.z);
          u_xlat13.z = x_3731;
          let x_3734 : vec4<f32> = u_xlat12;
          let x_3735 : vec2<f32> = vec2<f32>(x_3734.z, x_3734.w);
          let x_3737 : f32 = u_xlat11.z;
          txVec63 = vec3<f32>(x_3735.x, x_3735.y, x_3737);
          let x_3744 : vec3<f32> = txVec63;
          let x_3746 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3744.xy, x_3744.z);
          u_xlat13.w = x_3746;
          let x_3748 : vec4<f32> = u_xlat13;
          u_xlat84 = dot(x_3748, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3751 : i32 = u_xlati3;
          let x_3753 : f32 = x_131.x_AdditionalShadowParams[x_3751].y;
          u_xlatb85 = (2.0f == x_3753);
          let x_3755 : bool = u_xlatb85;
          if (x_3755) {
            let x_3758 : vec4<f32> = u_xlat11;
            let x_3762 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_3765 : vec2<f32> = ((vec2<f32>(x_3758.x, x_3758.y) * vec2<f32>(x_3762.z, x_3762.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3766 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3765.x, x_3765.y, x_3766.z, x_3766.w);
            let x_3768 : vec4<f32> = u_xlat12;
            let x_3770 : vec2<f32> = floor(vec2<f32>(x_3768.x, x_3768.y));
            let x_3771 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3770.x, x_3770.y, x_3771.z, x_3771.w);
            let x_3774 : vec4<f32> = u_xlat11;
            let x_3777 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_3780 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3774.x, x_3774.y) * vec2<f32>(x_3777.z, x_3777.w)) + -(vec2<f32>(x_3780.x, x_3780.y)));
            let x_3784 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3784.x, x_3784.x, x_3784.y, x_3784.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3787 : vec4<f32> = u_xlat13;
            let x_3789 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3787.x, x_3787.x, x_3787.z, x_3787.z) * vec4<f32>(x_3789.x, x_3789.x, x_3789.z, x_3789.z));
            let x_3792 : vec4<f32> = u_xlat14;
            let x_3794 : vec2<f32> = (vec2<f32>(x_3792.y, x_3792.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3795 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3794.x, x_3795.y, x_3794.y, x_3795.w);
            let x_3797 : vec4<f32> = u_xlat14;
            let x_3800 : vec2<f32> = u_xlat64;
            let x_3802 : vec2<f32> = ((vec2<f32>(x_3797.x, x_3797.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3800));
            let x_3803 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3802.x, x_3802.y, x_3803.z, x_3803.w);
            let x_3806 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_3806) + vec2<f32>(1.0f, 1.0f));
            let x_3809 : vec2<f32> = u_xlat64;
            let x_3810 : vec2<f32> = min(x_3809, vec2<f32>(0.0f, 0.0f));
            let x_3811 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3810.x, x_3810.y, x_3811.z, x_3811.w);
            let x_3813 : vec4<f32> = u_xlat15;
            let x_3816 : vec4<f32> = u_xlat15;
            let x_3819 : vec2<f32> = u_xlat66;
            let x_3820 : vec2<f32> = ((-(vec2<f32>(x_3813.x, x_3813.y)) * vec2<f32>(x_3816.x, x_3816.y)) + x_3819);
            let x_3821 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3820.x, x_3820.y, x_3821.z, x_3821.w);
            let x_3823 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_3823, vec2<f32>(0.0f, 0.0f));
            let x_3825 : vec2<f32> = u_xlat64;
            let x_3827 : vec2<f32> = u_xlat64;
            let x_3829 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_3825) * x_3827) + vec2<f32>(x_3829.y, x_3829.w));
            let x_3832 : vec4<f32> = u_xlat15;
            let x_3834 : vec2<f32> = (vec2<f32>(x_3832.x, x_3832.y) + vec2<f32>(1.0f, 1.0f));
            let x_3835 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3834.x, x_3834.y, x_3835.z, x_3835.w);
            let x_3837 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_3837 + vec2<f32>(1.0f, 1.0f));
            let x_3839 : vec4<f32> = u_xlat14;
            let x_3841 : vec2<f32> = (vec2<f32>(x_3839.x, x_3839.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3842 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3841.x, x_3841.y, x_3842.z, x_3842.w);
            let x_3844 : vec2<f32> = u_xlat66;
            let x_3845 : vec2<f32> = (x_3844 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3846 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3845.x, x_3845.y, x_3846.z, x_3846.w);
            let x_3848 : vec4<f32> = u_xlat15;
            let x_3850 : vec2<f32> = (vec2<f32>(x_3848.x, x_3848.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3851 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3850.x, x_3850.y, x_3851.z, x_3851.w);
            let x_3853 : vec2<f32> = u_xlat64;
            let x_3854 : vec2<f32> = (x_3853 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3855 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3854.x, x_3854.y, x_3855.z, x_3855.w);
            let x_3857 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_3857.y, x_3857.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3861 : f32 = u_xlat15.x;
            u_xlat16.z = x_3861;
            let x_3864 : f32 = u_xlat64.x;
            u_xlat16.w = x_3864;
            let x_3867 : f32 = u_xlat17.x;
            u_xlat14.z = x_3867;
            let x_3870 : f32 = u_xlat13.x;
            u_xlat14.w = x_3870;
            let x_3872 : vec4<f32> = u_xlat14;
            let x_3874 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_3872.z, x_3872.w, x_3872.x, x_3872.z) + vec4<f32>(x_3874.z, x_3874.w, x_3874.x, x_3874.z));
            let x_3878 : f32 = u_xlat16.y;
            u_xlat15.z = x_3878;
            let x_3881 : f32 = u_xlat64.y;
            u_xlat15.w = x_3881;
            let x_3884 : f32 = u_xlat14.y;
            u_xlat17.z = x_3884;
            let x_3887 : f32 = u_xlat13.z;
            u_xlat17.w = x_3887;
            let x_3889 : vec4<f32> = u_xlat15;
            let x_3891 : vec4<f32> = u_xlat17;
            let x_3893 : vec3<f32> = (vec3<f32>(x_3889.z, x_3889.y, x_3889.w) + vec3<f32>(x_3891.z, x_3891.y, x_3891.w));
            let x_3894 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3893.x, x_3893.y, x_3893.z, x_3894.w);
            let x_3896 : vec4<f32> = u_xlat14;
            let x_3898 : vec4<f32> = u_xlat18;
            let x_3900 : vec3<f32> = (vec3<f32>(x_3896.x, x_3896.z, x_3896.w) / vec3<f32>(x_3898.z, x_3898.w, x_3898.y));
            let x_3901 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3900.x, x_3900.y, x_3900.z, x_3901.w);
            let x_3903 : vec4<f32> = u_xlat14;
            let x_3905 : vec3<f32> = (vec3<f32>(x_3903.x, x_3903.y, x_3903.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3906 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3905.x, x_3905.y, x_3905.z, x_3906.w);
            let x_3908 : vec4<f32> = u_xlat17;
            let x_3910 : vec4<f32> = u_xlat13;
            let x_3912 : vec3<f32> = (vec3<f32>(x_3908.z, x_3908.y, x_3908.w) / vec3<f32>(x_3910.x, x_3910.y, x_3910.z));
            let x_3913 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3912.x, x_3912.y, x_3912.z, x_3913.w);
            let x_3915 : vec4<f32> = u_xlat15;
            let x_3917 : vec3<f32> = (vec3<f32>(x_3915.x, x_3915.y, x_3915.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3918 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3917.x, x_3917.y, x_3917.z, x_3918.w);
            let x_3920 : vec4<f32> = u_xlat14;
            let x_3923 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_3925 : vec3<f32> = (vec3<f32>(x_3920.y, x_3920.x, x_3920.z) * vec3<f32>(x_3923.x, x_3923.x, x_3923.x));
            let x_3926 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3925.x, x_3925.y, x_3925.z, x_3926.w);
            let x_3928 : vec4<f32> = u_xlat15;
            let x_3931 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_3933 : vec3<f32> = (vec3<f32>(x_3928.x, x_3928.y, x_3928.z) * vec3<f32>(x_3931.y, x_3931.y, x_3931.y));
            let x_3934 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3933.x, x_3933.y, x_3933.z, x_3934.w);
            let x_3937 : f32 = u_xlat15.x;
            u_xlat14.w = x_3937;
            let x_3939 : vec4<f32> = u_xlat12;
            let x_3942 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_3945 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3939.x, x_3939.y, x_3939.x, x_3939.y) * vec4<f32>(x_3942.x, x_3942.y, x_3942.x, x_3942.y)) + vec4<f32>(x_3945.y, x_3945.w, x_3945.x, x_3945.w));
            let x_3948 : vec4<f32> = u_xlat12;
            let x_3951 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_3954 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3948.x, x_3948.y) * vec2<f32>(x_3951.x, x_3951.y)) + vec2<f32>(x_3954.z, x_3954.w));
            let x_3958 : f32 = u_xlat14.y;
            u_xlat15.w = x_3958;
            let x_3960 : vec4<f32> = u_xlat15;
            let x_3961 : vec2<f32> = vec2<f32>(x_3960.y, x_3960.z);
            let x_3962 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3962.x, x_3961.x, x_3962.z, x_3961.y);
            let x_3964 : vec4<f32> = u_xlat12;
            let x_3967 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_3970 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_3964.x, x_3964.y, x_3964.x, x_3964.y) * vec4<f32>(x_3967.x, x_3967.y, x_3967.x, x_3967.y)) + vec4<f32>(x_3970.x, x_3970.y, x_3970.z, x_3970.y));
            let x_3973 : vec4<f32> = u_xlat12;
            let x_3976 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_3979 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_3973.x, x_3973.y, x_3973.x, x_3973.y) * vec4<f32>(x_3976.x, x_3976.y, x_3976.x, x_3976.y)) + vec4<f32>(x_3979.w, x_3979.y, x_3979.w, x_3979.z));
            let x_3982 : vec4<f32> = u_xlat12;
            let x_3985 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_3988 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3982.x, x_3982.y, x_3982.x, x_3982.y) * vec4<f32>(x_3985.x, x_3985.y, x_3985.x, x_3985.y)) + vec4<f32>(x_3988.x, x_3988.w, x_3988.z, x_3988.w));
            let x_3991 : vec4<f32> = u_xlat13;
            let x_3993 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_3991.x, x_3991.x, x_3991.x, x_3991.y) * vec4<f32>(x_3993.z, x_3993.w, x_3993.y, x_3993.z));
            let x_3996 : vec4<f32> = u_xlat13;
            let x_3998 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_3996.y, x_3996.y, x_3996.z, x_3996.z) * x_3998);
            let x_4001 : f32 = u_xlat13.z;
            let x_4003 : f32 = u_xlat18.y;
            u_xlat85 = (x_4001 * x_4003);
            let x_4006 : vec4<f32> = u_xlat16;
            let x_4007 : vec2<f32> = vec2<f32>(x_4006.x, x_4006.y);
            let x_4009 : f32 = u_xlat11.z;
            txVec64 = vec3<f32>(x_4007.x, x_4007.y, x_4009);
            let x_4016 : vec3<f32> = txVec64;
            let x_4018 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4016.xy, x_4016.z);
            u_xlat87 = x_4018;
            let x_4020 : vec4<f32> = u_xlat16;
            let x_4021 : vec2<f32> = vec2<f32>(x_4020.z, x_4020.w);
            let x_4023 : f32 = u_xlat11.z;
            txVec65 = vec3<f32>(x_4021.x, x_4021.y, x_4023);
            let x_4031 : vec3<f32> = txVec65;
            let x_4033 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4031.xy, x_4031.z);
            u_xlat88 = x_4033;
            let x_4034 : f32 = u_xlat88;
            let x_4036 : f32 = u_xlat19.y;
            u_xlat88 = (x_4034 * x_4036);
            let x_4039 : f32 = u_xlat19.x;
            let x_4040 : f32 = u_xlat87;
            let x_4042 : f32 = u_xlat88;
            u_xlat87 = ((x_4039 * x_4040) + x_4042);
            let x_4045 : vec2<f32> = u_xlat64;
            let x_4047 : f32 = u_xlat11.z;
            txVec66 = vec3<f32>(x_4045.x, x_4045.y, x_4047);
            let x_4054 : vec3<f32> = txVec66;
            let x_4056 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4054.xy, x_4054.z);
            u_xlat88 = x_4056;
            let x_4058 : f32 = u_xlat19.z;
            let x_4059 : f32 = u_xlat88;
            let x_4061 : f32 = u_xlat87;
            u_xlat87 = ((x_4058 * x_4059) + x_4061);
            let x_4064 : vec4<f32> = u_xlat15;
            let x_4065 : vec2<f32> = vec2<f32>(x_4064.x, x_4064.y);
            let x_4067 : f32 = u_xlat11.z;
            txVec67 = vec3<f32>(x_4065.x, x_4065.y, x_4067);
            let x_4074 : vec3<f32> = txVec67;
            let x_4076 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4074.xy, x_4074.z);
            u_xlat88 = x_4076;
            let x_4078 : f32 = u_xlat19.w;
            let x_4079 : f32 = u_xlat88;
            let x_4081 : f32 = u_xlat87;
            u_xlat87 = ((x_4078 * x_4079) + x_4081);
            let x_4084 : vec4<f32> = u_xlat17;
            let x_4085 : vec2<f32> = vec2<f32>(x_4084.x, x_4084.y);
            let x_4087 : f32 = u_xlat11.z;
            txVec68 = vec3<f32>(x_4085.x, x_4085.y, x_4087);
            let x_4094 : vec3<f32> = txVec68;
            let x_4096 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4094.xy, x_4094.z);
            u_xlat88 = x_4096;
            let x_4098 : f32 = u_xlat20.x;
            let x_4099 : f32 = u_xlat88;
            let x_4101 : f32 = u_xlat87;
            u_xlat87 = ((x_4098 * x_4099) + x_4101);
            let x_4104 : vec4<f32> = u_xlat17;
            let x_4105 : vec2<f32> = vec2<f32>(x_4104.z, x_4104.w);
            let x_4107 : f32 = u_xlat11.z;
            txVec69 = vec3<f32>(x_4105.x, x_4105.y, x_4107);
            let x_4114 : vec3<f32> = txVec69;
            let x_4116 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4114.xy, x_4114.z);
            u_xlat88 = x_4116;
            let x_4118 : f32 = u_xlat20.y;
            let x_4119 : f32 = u_xlat88;
            let x_4121 : f32 = u_xlat87;
            u_xlat87 = ((x_4118 * x_4119) + x_4121);
            let x_4124 : vec4<f32> = u_xlat15;
            let x_4125 : vec2<f32> = vec2<f32>(x_4124.z, x_4124.w);
            let x_4127 : f32 = u_xlat11.z;
            txVec70 = vec3<f32>(x_4125.x, x_4125.y, x_4127);
            let x_4134 : vec3<f32> = txVec70;
            let x_4136 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4134.xy, x_4134.z);
            u_xlat88 = x_4136;
            let x_4138 : f32 = u_xlat20.z;
            let x_4139 : f32 = u_xlat88;
            let x_4141 : f32 = u_xlat87;
            u_xlat87 = ((x_4138 * x_4139) + x_4141);
            let x_4144 : vec4<f32> = u_xlat14;
            let x_4145 : vec2<f32> = vec2<f32>(x_4144.x, x_4144.y);
            let x_4147 : f32 = u_xlat11.z;
            txVec71 = vec3<f32>(x_4145.x, x_4145.y, x_4147);
            let x_4154 : vec3<f32> = txVec71;
            let x_4156 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4154.xy, x_4154.z);
            u_xlat88 = x_4156;
            let x_4158 : f32 = u_xlat20.w;
            let x_4159 : f32 = u_xlat88;
            let x_4161 : f32 = u_xlat87;
            u_xlat87 = ((x_4158 * x_4159) + x_4161);
            let x_4164 : vec4<f32> = u_xlat14;
            let x_4165 : vec2<f32> = vec2<f32>(x_4164.z, x_4164.w);
            let x_4167 : f32 = u_xlat11.z;
            txVec72 = vec3<f32>(x_4165.x, x_4165.y, x_4167);
            let x_4174 : vec3<f32> = txVec72;
            let x_4176 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4174.xy, x_4174.z);
            u_xlat88 = x_4176;
            let x_4177 : f32 = u_xlat85;
            let x_4178 : f32 = u_xlat88;
            let x_4180 : f32 = u_xlat87;
            u_xlat84 = ((x_4177 * x_4178) + x_4180);
          } else {
            let x_4183 : vec4<f32> = u_xlat11;
            let x_4186 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4189 : vec2<f32> = ((vec2<f32>(x_4183.x, x_4183.y) * vec2<f32>(x_4186.z, x_4186.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4190 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4189.x, x_4189.y, x_4190.z, x_4190.w);
            let x_4192 : vec4<f32> = u_xlat12;
            let x_4194 : vec2<f32> = floor(vec2<f32>(x_4192.x, x_4192.y));
            let x_4195 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4194.x, x_4194.y, x_4195.z, x_4195.w);
            let x_4197 : vec4<f32> = u_xlat11;
            let x_4200 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4203 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_4197.x, x_4197.y) * vec2<f32>(x_4200.z, x_4200.w)) + -(vec2<f32>(x_4203.x, x_4203.y)));
            let x_4207 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_4207.x, x_4207.x, x_4207.y, x_4207.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4210 : vec4<f32> = u_xlat13;
            let x_4212 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4210.x, x_4210.x, x_4210.z, x_4210.z) * vec4<f32>(x_4212.x, x_4212.x, x_4212.z, x_4212.z));
            let x_4215 : vec4<f32> = u_xlat14;
            let x_4217 : vec2<f32> = (vec2<f32>(x_4215.y, x_4215.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_4218 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4218.x, x_4217.x, x_4218.z, x_4217.y);
            let x_4220 : vec4<f32> = u_xlat14;
            let x_4223 : vec2<f32> = u_xlat64;
            let x_4225 : vec2<f32> = ((vec2<f32>(x_4220.x, x_4220.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4223));
            let x_4226 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4225.x, x_4226.y, x_4225.y, x_4226.w);
            let x_4228 : vec2<f32> = u_xlat64;
            let x_4230 : vec2<f32> = (-(x_4228) + vec2<f32>(1.0f, 1.0f));
            let x_4231 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4230.x, x_4230.y, x_4231.z, x_4231.w);
            let x_4233 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_4233, vec2<f32>(0.0f, 0.0f));
            let x_4235 : vec2<f32> = u_xlat66;
            let x_4237 : vec2<f32> = u_xlat66;
            let x_4239 : vec4<f32> = u_xlat14;
            let x_4241 : vec2<f32> = ((-(x_4235) * x_4237) + vec2<f32>(x_4239.x, x_4239.y));
            let x_4242 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4241.x, x_4241.y, x_4242.z, x_4242.w);
            let x_4244 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_4244, vec2<f32>(0.0f, 0.0f));
            let x_4247 : vec2<f32> = u_xlat66;
            let x_4249 : vec2<f32> = u_xlat66;
            let x_4251 : vec4<f32> = u_xlat13;
            let x_4253 : vec2<f32> = ((-(x_4247) * x_4249) + vec2<f32>(x_4251.y, x_4251.w));
            let x_4254 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_4253.x, x_4254.y, x_4253.y);
            let x_4256 : vec4<f32> = u_xlat14;
            let x_4258 : vec2<f32> = (vec2<f32>(x_4256.x, x_4256.y) + vec2<f32>(2.0f, 2.0f));
            let x_4259 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4258.x, x_4258.y, x_4259.z, x_4259.w);
            let x_4261 : vec3<f32> = u_xlat39;
            let x_4263 : vec2<f32> = (vec2<f32>(x_4261.x, x_4261.z) + vec2<f32>(2.0f, 2.0f));
            let x_4264 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4264.x, x_4263.x, x_4264.z, x_4263.y);
            let x_4267 : f32 = u_xlat13.y;
            u_xlat16.z = (x_4267 * 0.08163200318813323975f);
            let x_4270 : vec4<f32> = u_xlat13;
            let x_4272 : vec3<f32> = (vec3<f32>(x_4270.z, x_4270.x, x_4270.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_4273 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4272.x, x_4272.y, x_4272.z, x_4273.w);
            let x_4275 : vec4<f32> = u_xlat14;
            let x_4277 : vec2<f32> = (vec2<f32>(x_4275.x, x_4275.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_4278 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4277.x, x_4277.y, x_4278.z, x_4278.w);
            let x_4281 : f32 = u_xlat17.y;
            u_xlat16.x = x_4281;
            let x_4283 : vec2<f32> = u_xlat64;
            let x_4286 : vec2<f32> = ((vec2<f32>(x_4283.x, x_4283.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4287 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4287.x, x_4286.x, x_4287.z, x_4286.y);
            let x_4289 : vec2<f32> = u_xlat64;
            let x_4292 : vec2<f32> = ((vec2<f32>(x_4289.x, x_4289.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4293 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4292.x, x_4293.y, x_4292.y, x_4293.w);
            let x_4296 : f32 = u_xlat13.x;
            u_xlat14.y = x_4296;
            let x_4299 : f32 = u_xlat15.y;
            u_xlat14.w = x_4299;
            let x_4301 : vec4<f32> = u_xlat14;
            let x_4302 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_4301 + x_4302);
            let x_4304 : vec2<f32> = u_xlat64;
            let x_4307 : vec2<f32> = ((vec2<f32>(x_4304.y, x_4304.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4308 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4308.x, x_4307.x, x_4308.z, x_4307.y);
            let x_4310 : vec2<f32> = u_xlat64;
            let x_4313 : vec2<f32> = ((vec2<f32>(x_4310.y, x_4310.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4314 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4313.x, x_4314.y, x_4313.y, x_4314.w);
            let x_4317 : f32 = u_xlat13.y;
            u_xlat15.y = x_4317;
            let x_4319 : vec4<f32> = u_xlat15;
            let x_4320 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_4319 + x_4320);
            let x_4322 : vec4<f32> = u_xlat14;
            let x_4323 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_4322 / x_4323);
            let x_4325 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_4325 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4327 : vec4<f32> = u_xlat15;
            let x_4328 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_4327 / x_4328);
            let x_4330 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_4330 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4332 : vec4<f32> = u_xlat14;
            let x_4335 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_4332.w, x_4332.x, x_4332.y, x_4332.z) * vec4<f32>(x_4335.x, x_4335.x, x_4335.x, x_4335.x));
            let x_4338 : vec4<f32> = u_xlat15;
            let x_4341 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_4338.x, x_4338.w, x_4338.y, x_4338.z) * vec4<f32>(x_4341.y, x_4341.y, x_4341.y, x_4341.y));
            let x_4344 : vec4<f32> = u_xlat14;
            let x_4345 : vec3<f32> = vec3<f32>(x_4344.y, x_4344.z, x_4344.w);
            let x_4346 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4345.x, x_4346.y, x_4345.y, x_4345.z);
            let x_4349 : f32 = u_xlat15.x;
            u_xlat17.y = x_4349;
            let x_4351 : vec4<f32> = u_xlat12;
            let x_4354 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4357 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_4351.x, x_4351.y, x_4351.x, x_4351.y) * vec4<f32>(x_4354.x, x_4354.y, x_4354.x, x_4354.y)) + vec4<f32>(x_4357.x, x_4357.y, x_4357.z, x_4357.y));
            let x_4360 : vec4<f32> = u_xlat12;
            let x_4363 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4366 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_4360.x, x_4360.y) * vec2<f32>(x_4363.x, x_4363.y)) + vec2<f32>(x_4366.w, x_4366.y));
            let x_4370 : f32 = u_xlat17.y;
            u_xlat14.y = x_4370;
            let x_4373 : f32 = u_xlat15.z;
            u_xlat17.y = x_4373;
            let x_4375 : vec4<f32> = u_xlat12;
            let x_4378 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4381 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_4375.x, x_4375.y, x_4375.x, x_4375.y) * vec4<f32>(x_4378.x, x_4378.y, x_4378.x, x_4378.y)) + vec4<f32>(x_4381.x, x_4381.y, x_4381.z, x_4381.y));
            let x_4384 : vec4<f32> = u_xlat12;
            let x_4387 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4390 : vec4<f32> = u_xlat17;
            let x_4392 : vec2<f32> = ((vec2<f32>(x_4384.x, x_4384.y) * vec2<f32>(x_4387.x, x_4387.y)) + vec2<f32>(x_4390.w, x_4390.y));
            let x_4393 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_4392.x, x_4392.y, x_4393.z, x_4393.w);
            let x_4396 : f32 = u_xlat17.y;
            u_xlat14.z = x_4396;
            let x_4399 : vec4<f32> = u_xlat12;
            let x_4402 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4405 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_4399.x, x_4399.y, x_4399.x, x_4399.y) * vec4<f32>(x_4402.x, x_4402.y, x_4402.x, x_4402.y)) + vec4<f32>(x_4405.x, x_4405.y, x_4405.x, x_4405.z));
            let x_4409 : f32 = u_xlat15.w;
            u_xlat17.y = x_4409;
            let x_4412 : vec4<f32> = u_xlat12;
            let x_4415 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4418 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_4412.x, x_4412.y, x_4412.x, x_4412.y) * vec4<f32>(x_4415.x, x_4415.y, x_4415.x, x_4415.y)) + vec4<f32>(x_4418.x, x_4418.y, x_4418.z, x_4418.y));
            let x_4422 : vec4<f32> = u_xlat12;
            let x_4425 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4428 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_4422.x, x_4422.y) * vec2<f32>(x_4425.x, x_4425.y)) + vec2<f32>(x_4428.w, x_4428.y));
            let x_4432 : f32 = u_xlat17.y;
            u_xlat14.w = x_4432;
            let x_4435 : vec4<f32> = u_xlat12;
            let x_4438 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4441 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_4435.x, x_4435.y) * vec2<f32>(x_4438.x, x_4438.y)) + vec2<f32>(x_4441.x, x_4441.w));
            let x_4444 : vec4<f32> = u_xlat17;
            let x_4445 : vec3<f32> = vec3<f32>(x_4444.x, x_4444.z, x_4444.w);
            let x_4446 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4445.x, x_4446.y, x_4445.y, x_4445.z);
            let x_4448 : vec4<f32> = u_xlat12;
            let x_4451 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4454 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_4448.x, x_4448.y, x_4448.x, x_4448.y) * vec4<f32>(x_4451.x, x_4451.y, x_4451.x, x_4451.y)) + vec4<f32>(x_4454.x, x_4454.y, x_4454.z, x_4454.y));
            let x_4458 : vec4<f32> = u_xlat12;
            let x_4461 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4464 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_4458.x, x_4458.y) * vec2<f32>(x_4461.x, x_4461.y)) + vec2<f32>(x_4464.w, x_4464.y));
            let x_4468 : f32 = u_xlat14.x;
            u_xlat15.x = x_4468;
            let x_4470 : vec4<f32> = u_xlat12;
            let x_4473 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4476 : vec4<f32> = u_xlat15;
            let x_4478 : vec2<f32> = ((vec2<f32>(x_4470.x, x_4470.y) * vec2<f32>(x_4473.x, x_4473.y)) + vec2<f32>(x_4476.x, x_4476.y));
            let x_4479 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4478.x, x_4478.y, x_4479.z, x_4479.w);
            let x_4482 : vec4<f32> = u_xlat13;
            let x_4484 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_4482.x, x_4482.x, x_4482.x, x_4482.x) * x_4484);
            let x_4487 : vec4<f32> = u_xlat13;
            let x_4489 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_4487.y, x_4487.y, x_4487.y, x_4487.y) * x_4489);
            let x_4492 : vec4<f32> = u_xlat13;
            let x_4494 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_4492.z, x_4492.z, x_4492.z, x_4492.z) * x_4494);
            let x_4496 : vec4<f32> = u_xlat13;
            let x_4498 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_4496.w, x_4496.w, x_4496.w, x_4496.w) * x_4498);
            let x_4501 : vec4<f32> = u_xlat18;
            let x_4502 : vec2<f32> = vec2<f32>(x_4501.x, x_4501.y);
            let x_4504 : f32 = u_xlat11.z;
            txVec73 = vec3<f32>(x_4502.x, x_4502.y, x_4504);
            let x_4511 : vec3<f32> = txVec73;
            let x_4513 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4511.xy, x_4511.z);
            u_xlat85 = x_4513;
            let x_4515 : vec4<f32> = u_xlat18;
            let x_4516 : vec2<f32> = vec2<f32>(x_4515.z, x_4515.w);
            let x_4518 : f32 = u_xlat11.z;
            txVec74 = vec3<f32>(x_4516.x, x_4516.y, x_4518);
            let x_4525 : vec3<f32> = txVec74;
            let x_4527 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4525.xy, x_4525.z);
            u_xlat87 = x_4527;
            let x_4528 : f32 = u_xlat87;
            let x_4530 : f32 = u_xlat23.y;
            u_xlat87 = (x_4528 * x_4530);
            let x_4533 : f32 = u_xlat23.x;
            let x_4534 : f32 = u_xlat85;
            let x_4536 : f32 = u_xlat87;
            u_xlat85 = ((x_4533 * x_4534) + x_4536);
            let x_4539 : vec2<f32> = u_xlat64;
            let x_4541 : f32 = u_xlat11.z;
            txVec75 = vec3<f32>(x_4539.x, x_4539.y, x_4541);
            let x_4548 : vec3<f32> = txVec75;
            let x_4550 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4548.xy, x_4548.z);
            u_xlat87 = x_4550;
            let x_4552 : f32 = u_xlat23.z;
            let x_4553 : f32 = u_xlat87;
            let x_4555 : f32 = u_xlat85;
            u_xlat85 = ((x_4552 * x_4553) + x_4555);
            let x_4558 : vec4<f32> = u_xlat21;
            let x_4559 : vec2<f32> = vec2<f32>(x_4558.x, x_4558.y);
            let x_4561 : f32 = u_xlat11.z;
            txVec76 = vec3<f32>(x_4559.x, x_4559.y, x_4561);
            let x_4568 : vec3<f32> = txVec76;
            let x_4570 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4568.xy, x_4568.z);
            u_xlat87 = x_4570;
            let x_4572 : f32 = u_xlat23.w;
            let x_4573 : f32 = u_xlat87;
            let x_4575 : f32 = u_xlat85;
            u_xlat85 = ((x_4572 * x_4573) + x_4575);
            let x_4578 : vec4<f32> = u_xlat19;
            let x_4579 : vec2<f32> = vec2<f32>(x_4578.x, x_4578.y);
            let x_4581 : f32 = u_xlat11.z;
            txVec77 = vec3<f32>(x_4579.x, x_4579.y, x_4581);
            let x_4588 : vec3<f32> = txVec77;
            let x_4590 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4588.xy, x_4588.z);
            u_xlat87 = x_4590;
            let x_4592 : f32 = u_xlat24.x;
            let x_4593 : f32 = u_xlat87;
            let x_4595 : f32 = u_xlat85;
            u_xlat85 = ((x_4592 * x_4593) + x_4595);
            let x_4598 : vec4<f32> = u_xlat19;
            let x_4599 : vec2<f32> = vec2<f32>(x_4598.z, x_4598.w);
            let x_4601 : f32 = u_xlat11.z;
            txVec78 = vec3<f32>(x_4599.x, x_4599.y, x_4601);
            let x_4608 : vec3<f32> = txVec78;
            let x_4610 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4608.xy, x_4608.z);
            u_xlat87 = x_4610;
            let x_4612 : f32 = u_xlat24.y;
            let x_4613 : f32 = u_xlat87;
            let x_4615 : f32 = u_xlat85;
            u_xlat85 = ((x_4612 * x_4613) + x_4615);
            let x_4618 : vec4<f32> = u_xlat20;
            let x_4619 : vec2<f32> = vec2<f32>(x_4618.x, x_4618.y);
            let x_4621 : f32 = u_xlat11.z;
            txVec79 = vec3<f32>(x_4619.x, x_4619.y, x_4621);
            let x_4628 : vec3<f32> = txVec79;
            let x_4630 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4628.xy, x_4628.z);
            u_xlat87 = x_4630;
            let x_4632 : f32 = u_xlat24.z;
            let x_4633 : f32 = u_xlat87;
            let x_4635 : f32 = u_xlat85;
            u_xlat85 = ((x_4632 * x_4633) + x_4635);
            let x_4638 : vec4<f32> = u_xlat21;
            let x_4639 : vec2<f32> = vec2<f32>(x_4638.z, x_4638.w);
            let x_4641 : f32 = u_xlat11.z;
            txVec80 = vec3<f32>(x_4639.x, x_4639.y, x_4641);
            let x_4648 : vec3<f32> = txVec80;
            let x_4650 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4648.xy, x_4648.z);
            u_xlat87 = x_4650;
            let x_4652 : f32 = u_xlat24.w;
            let x_4653 : f32 = u_xlat87;
            let x_4655 : f32 = u_xlat85;
            u_xlat85 = ((x_4652 * x_4653) + x_4655);
            let x_4658 : vec4<f32> = u_xlat22;
            let x_4659 : vec2<f32> = vec2<f32>(x_4658.x, x_4658.y);
            let x_4661 : f32 = u_xlat11.z;
            txVec81 = vec3<f32>(x_4659.x, x_4659.y, x_4661);
            let x_4668 : vec3<f32> = txVec81;
            let x_4670 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4668.xy, x_4668.z);
            u_xlat87 = x_4670;
            let x_4672 : f32 = u_xlat25.x;
            let x_4673 : f32 = u_xlat87;
            let x_4675 : f32 = u_xlat85;
            u_xlat85 = ((x_4672 * x_4673) + x_4675);
            let x_4678 : vec4<f32> = u_xlat22;
            let x_4679 : vec2<f32> = vec2<f32>(x_4678.z, x_4678.w);
            let x_4681 : f32 = u_xlat11.z;
            txVec82 = vec3<f32>(x_4679.x, x_4679.y, x_4681);
            let x_4688 : vec3<f32> = txVec82;
            let x_4690 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4688.xy, x_4688.z);
            u_xlat87 = x_4690;
            let x_4692 : f32 = u_xlat25.y;
            let x_4693 : f32 = u_xlat87;
            let x_4695 : f32 = u_xlat85;
            u_xlat85 = ((x_4692 * x_4693) + x_4695);
            let x_4698 : vec2<f32> = u_xlat40;
            let x_4700 : f32 = u_xlat11.z;
            txVec83 = vec3<f32>(x_4698.x, x_4698.y, x_4700);
            let x_4707 : vec3<f32> = txVec83;
            let x_4709 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4707.xy, x_4707.z);
            u_xlat87 = x_4709;
            let x_4711 : f32 = u_xlat25.z;
            let x_4712 : f32 = u_xlat87;
            let x_4714 : f32 = u_xlat85;
            u_xlat85 = ((x_4711 * x_4712) + x_4714);
            let x_4717 : vec2<f32> = u_xlat72;
            let x_4719 : f32 = u_xlat11.z;
            txVec84 = vec3<f32>(x_4717.x, x_4717.y, x_4719);
            let x_4726 : vec3<f32> = txVec84;
            let x_4728 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4726.xy, x_4726.z);
            u_xlat87 = x_4728;
            let x_4730 : f32 = u_xlat25.w;
            let x_4731 : f32 = u_xlat87;
            let x_4733 : f32 = u_xlat85;
            u_xlat85 = ((x_4730 * x_4731) + x_4733);
            let x_4736 : vec4<f32> = u_xlat17;
            let x_4737 : vec2<f32> = vec2<f32>(x_4736.x, x_4736.y);
            let x_4739 : f32 = u_xlat11.z;
            txVec85 = vec3<f32>(x_4737.x, x_4737.y, x_4739);
            let x_4746 : vec3<f32> = txVec85;
            let x_4748 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4746.xy, x_4746.z);
            u_xlat87 = x_4748;
            let x_4750 : f32 = u_xlat13.x;
            let x_4751 : f32 = u_xlat87;
            let x_4753 : f32 = u_xlat85;
            u_xlat85 = ((x_4750 * x_4751) + x_4753);
            let x_4756 : vec4<f32> = u_xlat17;
            let x_4757 : vec2<f32> = vec2<f32>(x_4756.z, x_4756.w);
            let x_4759 : f32 = u_xlat11.z;
            txVec86 = vec3<f32>(x_4757.x, x_4757.y, x_4759);
            let x_4766 : vec3<f32> = txVec86;
            let x_4768 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4766.xy, x_4766.z);
            u_xlat87 = x_4768;
            let x_4770 : f32 = u_xlat13.y;
            let x_4771 : f32 = u_xlat87;
            let x_4773 : f32 = u_xlat85;
            u_xlat85 = ((x_4770 * x_4771) + x_4773);
            let x_4776 : vec2<f32> = u_xlat67;
            let x_4778 : f32 = u_xlat11.z;
            txVec87 = vec3<f32>(x_4776.x, x_4776.y, x_4778);
            let x_4785 : vec3<f32> = txVec87;
            let x_4787 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4785.xy, x_4785.z);
            u_xlat87 = x_4787;
            let x_4789 : f32 = u_xlat13.z;
            let x_4790 : f32 = u_xlat87;
            let x_4792 : f32 = u_xlat85;
            u_xlat85 = ((x_4789 * x_4790) + x_4792);
            let x_4795 : vec4<f32> = u_xlat12;
            let x_4796 : vec2<f32> = vec2<f32>(x_4795.x, x_4795.y);
            let x_4798 : f32 = u_xlat11.z;
            txVec88 = vec3<f32>(x_4796.x, x_4796.y, x_4798);
            let x_4805 : vec3<f32> = txVec88;
            let x_4807 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4805.xy, x_4805.z);
            u_xlat87 = x_4807;
            let x_4809 : f32 = u_xlat13.w;
            let x_4810 : f32 = u_xlat87;
            let x_4812 : f32 = u_xlat85;
            u_xlat84 = ((x_4809 * x_4810) + x_4812);
          }
        }
      } else {
        let x_4816 : vec4<f32> = u_xlat11;
        let x_4817 : vec2<f32> = vec2<f32>(x_4816.x, x_4816.y);
        let x_4819 : f32 = u_xlat11.z;
        txVec89 = vec3<f32>(x_4817.x, x_4817.y, x_4819);
        let x_4826 : vec3<f32> = txVec89;
        let x_4828 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4826.xy, x_4826.z);
        u_xlat84 = x_4828;
      }
      let x_4829 : i32 = u_xlati3;
      let x_4831 : f32 = x_131.x_AdditionalShadowParams[x_4829].x;
      u_xlat85 = (1.0f + -(x_4831));
      let x_4834 : f32 = u_xlat84;
      let x_4835 : i32 = u_xlati3;
      let x_4837 : f32 = x_131.x_AdditionalShadowParams[x_4835].x;
      let x_4839 : f32 = u_xlat85;
      u_xlat84 = ((x_4834 * x_4837) + x_4839);
      let x_4842 : f32 = u_xlat11.z;
      u_xlatb85 = (0.0f >= x_4842);
      let x_4846 : f32 = u_xlat11.z;
      u_xlatb87 = (x_4846 >= 1.0f);
      let x_4848 : bool = u_xlatb85;
      let x_4849 : bool = u_xlatb87;
      u_xlatb85 = (x_4848 | x_4849);
      let x_4851 : bool = u_xlatb85;
      let x_4852 : f32 = u_xlat84;
      u_xlat84 = select(x_4852, 1.0f, x_4851);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_4855 : f32 = u_xlat84;
    u_xlat85 = (-(x_4855) + 1.0f);
    let x_4858 : f32 = u_xlat79;
    let x_4859 : f32 = u_xlat85;
    let x_4861 : f32 = u_xlat84;
    u_xlat84 = ((x_4858 * x_4859) + x_4861);
    let x_4864 : f32 = u_xlat4.x;
    let x_4865 : f32 = u_xlat84;
    u_xlat4.x = (x_4864 * x_4865);
    let x_4868 : vec3<f32> = u_xlat29;
    let x_4869 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(x_4868, vec3<f32>(x_4869.x, x_4869.y, x_4869.z));
    let x_4872 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4872, 0.0f, 1.0f);
    let x_4875 : f32 = u_xlat4.x;
    let x_4876 : f32 = u_xlat84;
    u_xlat4.x = (x_4875 * x_4876);
    let x_4879 : vec4<f32> = u_xlat4;
    let x_4881 : i32 = u_xlati3;
    let x_4883 : vec4<f32> = x_3422.x_AdditionalLightsColor[x_4881];
    let x_4885 : vec3<f32> = (vec3<f32>(x_4879.x, x_4879.x, x_4879.x) * vec3<f32>(x_4883.x, x_4883.y, x_4883.z));
    let x_4886 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4885.x, x_4885.y, x_4885.z, x_4886.w);
    let x_4888 : vec4<f32> = u_xlat9;
    let x_4890 : vec2<f32> = u_xlat58;
    let x_4893 : vec3<f32> = u_xlat30;
    let x_4894 : vec3<f32> = ((vec3<f32>(x_4888.x, x_4888.y, x_4888.z) * vec3<f32>(x_4890.x, x_4890.x, x_4890.x)) + x_4893);
    let x_4895 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4894.x, x_4894.y, x_4894.z, x_4895.w);
    let x_4897 : vec4<f32> = u_xlat9;
    let x_4899 : vec4<f32> = u_xlat9;
    u_xlat3.x = dot(vec3<f32>(x_4897.x, x_4897.y, x_4897.z), vec3<f32>(x_4899.x, x_4899.y, x_4899.z));
    let x_4904 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_4904, 1.17549435e-38f);
    let x_4908 : f32 = u_xlat3.x;
    u_xlat3.x = inverseSqrt(x_4908);
    let x_4911 : vec4<f32> = u_xlat3;
    let x_4913 : vec4<f32> = u_xlat9;
    let x_4915 : vec3<f32> = (vec3<f32>(x_4911.x, x_4911.x, x_4911.x) * vec3<f32>(x_4913.x, x_4913.y, x_4913.z));
    let x_4916 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4915.x, x_4915.y, x_4915.z, x_4916.w);
    let x_4918 : vec3<f32> = u_xlat29;
    let x_4919 : vec4<f32> = u_xlat9;
    u_xlat3.x = dot(x_4918, vec3<f32>(x_4919.x, x_4919.y, x_4919.z));
    let x_4924 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_4924, 0.0f, 1.0f);
    let x_4927 : vec4<f32> = u_xlat10;
    let x_4929 : vec4<f32> = u_xlat9;
    u_xlat4.x = dot(vec3<f32>(x_4927.x, x_4927.y, x_4927.z), vec3<f32>(x_4929.x, x_4929.y, x_4929.z));
    let x_4934 : f32 = u_xlat4.x;
    u_xlat4.x = clamp(x_4934, 0.0f, 1.0f);
    let x_4938 : f32 = u_xlat3.x;
    let x_4940 : f32 = u_xlat3.x;
    u_xlat3.x = (x_4938 * x_4940);
    let x_4944 : f32 = u_xlat3.x;
    let x_4946 : f32 = u_xlat8.x;
    u_xlat3.x = ((x_4944 * x_4946) + 1.00001001358032226562f);
    let x_4951 : f32 = u_xlat4.x;
    let x_4953 : f32 = u_xlat4.x;
    u_xlat4.x = (x_4951 * x_4953);
    let x_4957 : f32 = u_xlat3.x;
    let x_4959 : f32 = u_xlat3.x;
    u_xlat3.x = (x_4957 * x_4959);
    let x_4963 : f32 = u_xlat4.x;
    u_xlat4.x = max(x_4963, 0.10000000149011611938f);
    let x_4967 : f32 = u_xlat3.x;
    let x_4969 : f32 = u_xlat4.x;
    u_xlat3.x = (x_4967 * x_4969);
    let x_4973 : f32 = u_xlat6.x;
    let x_4975 : f32 = u_xlat3.x;
    u_xlat3.x = (x_4973 * x_4975);
    let x_4978 : f32 = u_xlat83;
    let x_4980 : f32 = u_xlat3.x;
    u_xlat3.x = (x_4978 / x_4980);
    let x_4983 : vec4<f32> = u_xlat3;
    let x_4986 : vec3<f32> = u_xlat2;
    let x_4987 : vec3<f32> = ((vec3<f32>(x_4983.x, x_4983.x, x_4983.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_4986);
    let x_4988 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4987.x, x_4987.y, x_4987.z, x_4988.w);
    let x_4990 : vec4<f32> = u_xlat9;
    let x_4992 : vec4<f32> = u_xlat11;
    let x_4995 : vec3<f32> = u_xlat34;
    u_xlat34 = ((vec3<f32>(x_4990.x, x_4990.y, x_4990.z) * vec3<f32>(x_4992.x, x_4992.y, x_4992.z)) + x_4995);

    continuing {
      let x_4997 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4997 + bitcast<u32>(1i));
    }
  }
  let x_4999 : vec4<f32> = u_xlat5;
  let x_5001 : vec3<f32> = u_xlat32;
  let x_5004 : vec4<f32> = u_xlat7;
  u_xlat2 = ((vec3<f32>(x_4999.x, x_4999.y, x_4999.z) * vec3<f32>(x_5001.x, x_5001.x, x_5001.x)) + vec3<f32>(x_5004.x, x_5004.y, x_5004.z));
  let x_5007 : vec3<f32> = u_xlat34;
  let x_5008 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_5007 + x_5008);
  let x_5010 : vec4<f32> = vs_INTERP6;
  let x_5012 : vec3<f32> = u_xlat0;
  let x_5014 : vec3<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_5010.w, x_5010.w, x_5010.w) * x_5012) + x_5014);
  let x_5017 : f32 = u_xlat27.x;
  let x_5019 : f32 = u_xlat27.x;
  u_xlat78 = (x_5017 * -(x_5019));
  let x_5022 : f32 = u_xlat78;
  u_xlat78 = exp2(x_5022);
  let x_5024 : vec3<f32> = u_xlat0;
  let x_5026 : vec4<f32> = x_53.unity_FogColor;
  u_xlat0 = (x_5024 + -(vec3<f32>(x_5026.x, x_5026.y, x_5026.z)));
  let x_5032 : f32 = u_xlat78;
  let x_5034 : vec3<f32> = u_xlat0;
  let x_5037 : vec4<f32> = x_53.unity_FogColor;
  let x_5039 : vec3<f32> = ((vec3<f32>(x_5032, x_5032, x_5032) * x_5034) + vec3<f32>(x_5037.x, x_5037.y, x_5037.z));
  let x_5040 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_5039.x, x_5039.y, x_5039.z, x_5040.w);
  let x_5042 : bool = u_xlatb53;
  if (x_5042) {
    let x_5047 : f32 = u_xlat1.x;
    x_5043 = x_5047;
  } else {
    x_5043 = 1.0f;
  }
  let x_5049 : f32 = x_5043;
  SV_Target0.w = x_5049;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(6) vs_INTERP9_param : vec3<f32>, @location(3) vs_INTERP5_param : vec4<f32>, @location(4) vs_INTERP6_param : vec4<f32>, @location(5) vs_INTERP8_param : vec3<f32>, @location(2) vs_INTERP4_param : vec4<f32>, @location(0) vs_INTERP0_param : vec2<f32>, @location(1) vs_INTERP3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP9 = vs_INTERP9_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP6 = vs_INTERP6_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


