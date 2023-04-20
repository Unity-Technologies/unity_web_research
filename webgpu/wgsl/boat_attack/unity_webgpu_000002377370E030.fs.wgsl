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

var<private> u_xlat75 : f32;

var<private> u_xlat28 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

var<private> vs_INTERP8 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_131 : LightShadows;

var<private> u_xlatb75 : bool;

var<private> u_xlatb77 : bool;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat77 : f32;

var<private> u_xlatb79 : bool;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat79 : f32;

var<private> u_xlat30 : f32;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat32 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlatb29 : bool;

var<private> u_xlatb54 : bool;

var<private> u_xlat29 : vec3<f32>;

var<private> u_xlatb1 : bool;

var<private> u_xlat26 : vec3<f32>;

var<private> u_xlat51 : f32;

var<private> u_xlat76 : f32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb26 : vec3<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_1585 : UnityPerDraw;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat80 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlatb31 : bool;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat56 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlatb4 : bool;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu75 : u32;

var<private> u_xlatu4 : u32;

var<private> u_xlati82 : i32;

var<private> u_xlati4 : i32;

@group(1) @binding(1) var<uniform> x_3397 : AdditionalLights;

var<private> u_xlat82 : f32;

var<private> u_xlat83 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlati84 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat35 : vec3<f32>;

var<private> u_xlatb84 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb85 : bool;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat85 : f32;

var<private> u_xlat36 : f32;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat38 : vec2<f32>;

var<private> u_xlat69 : vec2<f32>;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlatb35 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu3 : u32;

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
  var x_1672 : f32;
  var x_1684 : f32;
  var x_1696 : f32;
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
  var x_3538 : f32;
  var x_3550 : f32;
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
  var x_5035 : f32;
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
  u_xlat75 = dot(x_94, x_95);
  let x_97 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_97);
  let x_100 : f32 = u_xlat75;
  let x_102 : vec4<f32> = u_xlat4;
  u_xlat28 = (vec3<f32>(x_100, x_100, x_100) * vec3<f32>(x_102.x, x_102.y, x_102.z));
  let x_109 : f32 = vs_INTERP6.y;
  u_xlat75 = (x_109 * 200.0f);
  let x_112 : f32 = u_xlat75;
  u_xlat75 = min(x_112, 1.0f);
  let x_114 : f32 = u_xlat75;
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
  u_xlatb75 = (0.0f < x_176);
  let x_178 : bool = u_xlatb75;
  if (x_178) {
    let x_183 : f32 = x_131.x_MainLightShadowParams.y;
    u_xlatb77 = (x_183 == 1.0f);
    let x_185 : bool = u_xlatb77;
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
      u_xlat77 = dot(x_271, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_278 : f32 = x_131.x_MainLightShadowParams.y;
      u_xlatb79 = (x_278 == 2.0f);
      let x_280 : bool = u_xlatb79;
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
        u_xlat55 = ((vec2<f32>(x_302.x, x_302.y) * vec2<f32>(x_305.z, x_305.w)) + -(vec2<f32>(x_308.x, x_308.y)));
        let x_312 : vec2<f32> = u_xlat55;
        u_xlat6 = (vec4<f32>(x_312.x, x_312.x, x_312.y, x_312.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_317 : vec4<f32> = u_xlat6;
        let x_319 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_317.x, x_317.x, x_317.z, x_317.z) * vec4<f32>(x_319.x, x_319.x, x_319.z, x_319.z));
        let x_322 : vec4<f32> = u_xlat7;
        let x_326 : vec2<f32> = (vec2<f32>(x_322.y, x_322.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_327 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_326.x, x_327.y, x_326.y, x_327.w);
        let x_329 : vec4<f32> = u_xlat7;
        let x_332 : vec2<f32> = u_xlat55;
        let x_334 : vec2<f32> = ((vec2<f32>(x_329.x, x_329.z) * vec2<f32>(0.5f, 0.5f)) + -(x_332));
        let x_335 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_334.x, x_334.y, x_335.z, x_335.w);
        let x_338 : vec2<f32> = u_xlat55;
        u_xlat57 = (-(x_338) + vec2<f32>(1.0f, 1.0f));
        let x_343 : vec2<f32> = u_xlat55;
        let x_345 : vec2<f32> = min(x_343, vec2<f32>(0.0f, 0.0f));
        let x_346 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_345.x, x_345.y, x_346.z, x_346.w);
        let x_348 : vec4<f32> = u_xlat8;
        let x_351 : vec4<f32> = u_xlat8;
        let x_354 : vec2<f32> = u_xlat57;
        let x_355 : vec2<f32> = ((-(vec2<f32>(x_348.x, x_348.y)) * vec2<f32>(x_351.x, x_351.y)) + x_354);
        let x_356 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_355.x, x_355.y, x_356.z, x_356.w);
        let x_358 : vec2<f32> = u_xlat55;
        u_xlat55 = max(x_358, vec2<f32>(0.0f, 0.0f));
        let x_360 : vec2<f32> = u_xlat55;
        let x_362 : vec2<f32> = u_xlat55;
        let x_364 : vec4<f32> = u_xlat6;
        u_xlat55 = ((-(x_360) * x_362) + vec2<f32>(x_364.y, x_364.w));
        let x_367 : vec4<f32> = u_xlat8;
        let x_369 : vec2<f32> = (vec2<f32>(x_367.x, x_367.y) + vec2<f32>(1.0f, 1.0f));
        let x_370 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_369.x, x_369.y, x_370.z, x_370.w);
        let x_372 : vec2<f32> = u_xlat55;
        u_xlat55 = (x_372 + vec2<f32>(1.0f, 1.0f));
        let x_375 : vec4<f32> = u_xlat7;
        let x_379 : vec2<f32> = (vec2<f32>(x_375.x, x_375.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_380 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_379.x, x_379.y, x_380.z, x_380.w);
        let x_382 : vec2<f32> = u_xlat57;
        let x_383 : vec2<f32> = (x_382 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_384 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_383.x, x_383.y, x_384.z, x_384.w);
        let x_386 : vec4<f32> = u_xlat8;
        let x_388 : vec2<f32> = (vec2<f32>(x_386.x, x_386.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_389 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_388.x, x_388.y, x_389.z, x_389.w);
        let x_392 : vec2<f32> = u_xlat55;
        let x_393 : vec2<f32> = (x_392 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_394 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_393.x, x_393.y, x_394.z, x_394.w);
        let x_396 : vec4<f32> = u_xlat6;
        u_xlat55 = (vec2<f32>(x_396.y, x_396.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_400 : f32 = u_xlat8.x;
        u_xlat9.z = x_400;
        let x_403 : f32 = u_xlat55.x;
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
        let x_421 : f32 = u_xlat55.y;
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
        u_xlat55 = ((vec2<f32>(x_492.x, x_492.y) * vec2<f32>(x_495.x, x_495.y)) + vec2<f32>(x_498.z, x_498.w));
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
        u_xlat79 = (x_548 * x_550);
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
        u_xlat30 = x_581;
        let x_582 : f32 = u_xlat30;
        let x_584 : f32 = u_xlat12.y;
        u_xlat30 = (x_582 * x_584);
        let x_587 : f32 = u_xlat12.x;
        let x_589 : f32 = u_xlat5.x;
        let x_591 : f32 = u_xlat30;
        u_xlat5.x = ((x_587 * x_589) + x_591);
        let x_595 : vec2<f32> = u_xlat55;
        let x_597 : f32 = u_xlat4.z;
        txVec6 = vec3<f32>(x_595.x, x_595.y, x_597);
        let x_604 : vec3<f32> = txVec6;
        let x_606 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_604.xy, x_604.z);
        u_xlat30 = x_606;
        let x_608 : f32 = u_xlat12.z;
        let x_609 : f32 = u_xlat30;
        let x_612 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_608 * x_609) + x_612);
        let x_616 : vec4<f32> = u_xlat8;
        let x_617 : vec2<f32> = vec2<f32>(x_616.x, x_616.y);
        let x_619 : f32 = u_xlat4.z;
        txVec7 = vec3<f32>(x_617.x, x_617.y, x_619);
        let x_626 : vec3<f32> = txVec7;
        let x_628 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_626.xy, x_626.z);
        u_xlat30 = x_628;
        let x_630 : f32 = u_xlat12.w;
        let x_631 : f32 = u_xlat30;
        let x_634 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_630 * x_631) + x_634);
        let x_638 : vec4<f32> = u_xlat10;
        let x_639 : vec2<f32> = vec2<f32>(x_638.x, x_638.y);
        let x_641 : f32 = u_xlat4.z;
        txVec8 = vec3<f32>(x_639.x, x_639.y, x_641);
        let x_648 : vec3<f32> = txVec8;
        let x_650 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_648.xy, x_648.z);
        u_xlat30 = x_650;
        let x_652 : f32 = u_xlat13.x;
        let x_653 : f32 = u_xlat30;
        let x_656 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_652 * x_653) + x_656);
        let x_660 : vec4<f32> = u_xlat10;
        let x_661 : vec2<f32> = vec2<f32>(x_660.z, x_660.w);
        let x_663 : f32 = u_xlat4.z;
        txVec9 = vec3<f32>(x_661.x, x_661.y, x_663);
        let x_670 : vec3<f32> = txVec9;
        let x_672 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_670.xy, x_670.z);
        u_xlat30 = x_672;
        let x_674 : f32 = u_xlat13.y;
        let x_675 : f32 = u_xlat30;
        let x_678 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_674 * x_675) + x_678);
        let x_682 : vec4<f32> = u_xlat8;
        let x_683 : vec2<f32> = vec2<f32>(x_682.z, x_682.w);
        let x_685 : f32 = u_xlat4.z;
        txVec10 = vec3<f32>(x_683.x, x_683.y, x_685);
        let x_692 : vec3<f32> = txVec10;
        let x_694 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_692.xy, x_692.z);
        u_xlat30 = x_694;
        let x_696 : f32 = u_xlat13.z;
        let x_697 : f32 = u_xlat30;
        let x_700 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_696 * x_697) + x_700);
        let x_704 : vec4<f32> = u_xlat7;
        let x_705 : vec2<f32> = vec2<f32>(x_704.x, x_704.y);
        let x_707 : f32 = u_xlat4.z;
        txVec11 = vec3<f32>(x_705.x, x_705.y, x_707);
        let x_714 : vec3<f32> = txVec11;
        let x_716 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_714.xy, x_714.z);
        u_xlat30 = x_716;
        let x_718 : f32 = u_xlat13.w;
        let x_719 : f32 = u_xlat30;
        let x_722 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_718 * x_719) + x_722);
        let x_726 : vec4<f32> = u_xlat7;
        let x_727 : vec2<f32> = vec2<f32>(x_726.z, x_726.w);
        let x_729 : f32 = u_xlat4.z;
        txVec12 = vec3<f32>(x_727.x, x_727.y, x_729);
        let x_736 : vec3<f32> = txVec12;
        let x_738 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_736.xy, x_736.z);
        u_xlat30 = x_738;
        let x_739 : f32 = u_xlat79;
        let x_740 : f32 = u_xlat30;
        let x_743 : f32 = u_xlat5.x;
        u_xlat77 = ((x_739 * x_740) + x_743);
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
        u_xlat55 = ((vec2<f32>(x_760.x, x_760.y) * vec2<f32>(x_763.z, x_763.w)) + -(vec2<f32>(x_766.x, x_766.y)));
        let x_770 : vec2<f32> = u_xlat55;
        u_xlat6 = (vec4<f32>(x_770.x, x_770.x, x_770.y, x_770.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_773 : vec4<f32> = u_xlat6;
        let x_775 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_773.x, x_773.x, x_773.z, x_773.z) * vec4<f32>(x_775.x, x_775.x, x_775.z, x_775.z));
        let x_778 : vec4<f32> = u_xlat7;
        let x_782 : vec2<f32> = (vec2<f32>(x_778.y, x_778.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_783 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_783.x, x_782.x, x_783.z, x_782.y);
        let x_785 : vec4<f32> = u_xlat7;
        let x_788 : vec2<f32> = u_xlat55;
        let x_790 : vec2<f32> = ((vec2<f32>(x_785.x, x_785.z) * vec2<f32>(0.5f, 0.5f)) + -(x_788));
        let x_791 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_790.x, x_791.y, x_790.y, x_791.w);
        let x_793 : vec2<f32> = u_xlat55;
        let x_795 : vec2<f32> = (-(x_793) + vec2<f32>(1.0f, 1.0f));
        let x_796 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_795.x, x_795.y, x_796.z, x_796.w);
        let x_798 : vec2<f32> = u_xlat55;
        u_xlat57 = min(x_798, vec2<f32>(0.0f, 0.0f));
        let x_800 : vec2<f32> = u_xlat57;
        let x_802 : vec2<f32> = u_xlat57;
        let x_804 : vec4<f32> = u_xlat7;
        let x_806 : vec2<f32> = ((-(x_800) * x_802) + vec2<f32>(x_804.x, x_804.y));
        let x_807 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_806.x, x_806.y, x_807.z, x_807.w);
        let x_809 : vec2<f32> = u_xlat55;
        u_xlat57 = max(x_809, vec2<f32>(0.0f, 0.0f));
        let x_812 : vec2<f32> = u_xlat57;
        let x_814 : vec2<f32> = u_xlat57;
        let x_816 : vec4<f32> = u_xlat6;
        let x_818 : vec2<f32> = ((-(x_812) * x_814) + vec2<f32>(x_816.y, x_816.w));
        let x_819 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_818.x, x_819.y, x_818.y);
        let x_821 : vec4<f32> = u_xlat7;
        let x_824 : vec2<f32> = (vec2<f32>(x_821.x, x_821.y) + vec2<f32>(2.0f, 2.0f));
        let x_825 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_824.x, x_824.y, x_825.z, x_825.w);
        let x_827 : vec3<f32> = u_xlat31;
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
        let x_852 : vec2<f32> = u_xlat55;
        let x_859 : vec2<f32> = ((vec2<f32>(x_852.x, x_852.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_860 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_860.x, x_859.x, x_860.z, x_859.y);
        let x_862 : vec2<f32> = u_xlat55;
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
        let x_878 : vec2<f32> = u_xlat55;
        let x_881 : vec2<f32> = ((vec2<f32>(x_878.y, x_878.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_882 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_882.x, x_881.x, x_882.z, x_881.y);
        let x_884 : vec2<f32> = u_xlat55;
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
        u_xlat55 = ((vec2<f32>(x_938.x, x_938.y) * vec2<f32>(x_941.x, x_941.y)) + vec2<f32>(x_944.w, x_944.y));
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
        u_xlat32 = ((vec2<f32>(x_1000.x, x_1000.y) * vec2<f32>(x_1003.x, x_1003.y)) + vec2<f32>(x_1006.w, x_1006.y));
        let x_1010 : f32 = u_xlat10.y;
        u_xlat7.w = x_1010;
        let x_1013 : vec4<f32> = u_xlat5;
        let x_1016 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_1019 : vec4<f32> = u_xlat7;
        u_xlat63 = ((vec2<f32>(x_1013.x, x_1013.y) * vec2<f32>(x_1016.x, x_1016.y)) + vec2<f32>(x_1019.x, x_1019.w));
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
        u_xlat58 = ((vec2<f32>(x_1036.x, x_1036.y) * vec2<f32>(x_1039.x, x_1039.y)) + vec2<f32>(x_1042.w, x_1042.y));
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
        u_xlat79 = x_1091;
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
        let x_1115 : f32 = u_xlat79;
        let x_1118 : f32 = u_xlat7.x;
        u_xlat79 = ((x_1114 * x_1115) + x_1118);
        let x_1121 : vec2<f32> = u_xlat55;
        let x_1123 : f32 = u_xlat4.z;
        txVec15 = vec3<f32>(x_1121.x, x_1121.y, x_1123);
        let x_1130 : vec3<f32> = txVec15;
        let x_1132 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1130.xy, x_1130.z);
        u_xlat55.x = x_1132;
        let x_1135 : f32 = u_xlat16.z;
        let x_1137 : f32 = u_xlat55.x;
        let x_1139 : f32 = u_xlat79;
        u_xlat79 = ((x_1135 * x_1137) + x_1139);
        let x_1142 : vec4<f32> = u_xlat14;
        let x_1143 : vec2<f32> = vec2<f32>(x_1142.x, x_1142.y);
        let x_1145 : f32 = u_xlat4.z;
        txVec16 = vec3<f32>(x_1143.x, x_1143.y, x_1145);
        let x_1152 : vec3<f32> = txVec16;
        let x_1154 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1152.xy, x_1152.z);
        u_xlat55.x = x_1154;
        let x_1157 : f32 = u_xlat16.w;
        let x_1159 : f32 = u_xlat55.x;
        let x_1161 : f32 = u_xlat79;
        u_xlat79 = ((x_1157 * x_1159) + x_1161);
        let x_1164 : vec4<f32> = u_xlat12;
        let x_1165 : vec2<f32> = vec2<f32>(x_1164.x, x_1164.y);
        let x_1167 : f32 = u_xlat4.z;
        txVec17 = vec3<f32>(x_1165.x, x_1165.y, x_1167);
        let x_1174 : vec3<f32> = txVec17;
        let x_1176 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1174.xy, x_1174.z);
        u_xlat55.x = x_1176;
        let x_1179 : f32 = u_xlat17.x;
        let x_1181 : f32 = u_xlat55.x;
        let x_1183 : f32 = u_xlat79;
        u_xlat79 = ((x_1179 * x_1181) + x_1183);
        let x_1186 : vec4<f32> = u_xlat12;
        let x_1187 : vec2<f32> = vec2<f32>(x_1186.z, x_1186.w);
        let x_1189 : f32 = u_xlat4.z;
        txVec18 = vec3<f32>(x_1187.x, x_1187.y, x_1189);
        let x_1196 : vec3<f32> = txVec18;
        let x_1198 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1196.xy, x_1196.z);
        u_xlat55.x = x_1198;
        let x_1201 : f32 = u_xlat17.y;
        let x_1203 : f32 = u_xlat55.x;
        let x_1205 : f32 = u_xlat79;
        u_xlat79 = ((x_1201 * x_1203) + x_1205);
        let x_1208 : vec4<f32> = u_xlat13;
        let x_1209 : vec2<f32> = vec2<f32>(x_1208.x, x_1208.y);
        let x_1211 : f32 = u_xlat4.z;
        txVec19 = vec3<f32>(x_1209.x, x_1209.y, x_1211);
        let x_1218 : vec3<f32> = txVec19;
        let x_1220 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1218.xy, x_1218.z);
        u_xlat55.x = x_1220;
        let x_1223 : f32 = u_xlat17.z;
        let x_1225 : f32 = u_xlat55.x;
        let x_1227 : f32 = u_xlat79;
        u_xlat79 = ((x_1223 * x_1225) + x_1227);
        let x_1230 : vec4<f32> = u_xlat14;
        let x_1231 : vec2<f32> = vec2<f32>(x_1230.z, x_1230.w);
        let x_1233 : f32 = u_xlat4.z;
        txVec20 = vec3<f32>(x_1231.x, x_1231.y, x_1233);
        let x_1240 : vec3<f32> = txVec20;
        let x_1242 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1240.xy, x_1240.z);
        u_xlat55.x = x_1242;
        let x_1245 : f32 = u_xlat17.w;
        let x_1247 : f32 = u_xlat55.x;
        let x_1249 : f32 = u_xlat79;
        u_xlat79 = ((x_1245 * x_1247) + x_1249);
        let x_1252 : vec4<f32> = u_xlat15;
        let x_1253 : vec2<f32> = vec2<f32>(x_1252.x, x_1252.y);
        let x_1255 : f32 = u_xlat4.z;
        txVec21 = vec3<f32>(x_1253.x, x_1253.y, x_1255);
        let x_1262 : vec3<f32> = txVec21;
        let x_1264 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1262.xy, x_1262.z);
        u_xlat55.x = x_1264;
        let x_1267 : f32 = u_xlat18.x;
        let x_1269 : f32 = u_xlat55.x;
        let x_1271 : f32 = u_xlat79;
        u_xlat79 = ((x_1267 * x_1269) + x_1271);
        let x_1274 : vec4<f32> = u_xlat15;
        let x_1275 : vec2<f32> = vec2<f32>(x_1274.z, x_1274.w);
        let x_1277 : f32 = u_xlat4.z;
        txVec22 = vec3<f32>(x_1275.x, x_1275.y, x_1277);
        let x_1284 : vec3<f32> = txVec22;
        let x_1286 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1284.xy, x_1284.z);
        u_xlat55.x = x_1286;
        let x_1289 : f32 = u_xlat18.y;
        let x_1291 : f32 = u_xlat55.x;
        let x_1293 : f32 = u_xlat79;
        u_xlat79 = ((x_1289 * x_1291) + x_1293);
        let x_1296 : vec2<f32> = u_xlat32;
        let x_1298 : f32 = u_xlat4.z;
        txVec23 = vec3<f32>(x_1296.x, x_1296.y, x_1298);
        let x_1305 : vec3<f32> = txVec23;
        let x_1307 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1305.xy, x_1305.z);
        u_xlat55.x = x_1307;
        let x_1310 : f32 = u_xlat18.z;
        let x_1312 : f32 = u_xlat55.x;
        let x_1314 : f32 = u_xlat79;
        u_xlat79 = ((x_1310 * x_1312) + x_1314);
        let x_1317 : vec2<f32> = u_xlat63;
        let x_1319 : f32 = u_xlat4.z;
        txVec24 = vec3<f32>(x_1317.x, x_1317.y, x_1319);
        let x_1326 : vec3<f32> = txVec24;
        let x_1328 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1326.xy, x_1326.z);
        u_xlat55.x = x_1328;
        let x_1331 : f32 = u_xlat18.w;
        let x_1333 : f32 = u_xlat55.x;
        let x_1335 : f32 = u_xlat79;
        u_xlat79 = ((x_1331 * x_1333) + x_1335);
        let x_1338 : vec4<f32> = u_xlat10;
        let x_1339 : vec2<f32> = vec2<f32>(x_1338.x, x_1338.y);
        let x_1341 : f32 = u_xlat4.z;
        txVec25 = vec3<f32>(x_1339.x, x_1339.y, x_1341);
        let x_1348 : vec3<f32> = txVec25;
        let x_1350 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1348.xy, x_1348.z);
        u_xlat55.x = x_1350;
        let x_1353 : f32 = u_xlat6.x;
        let x_1355 : f32 = u_xlat55.x;
        let x_1357 : f32 = u_xlat79;
        u_xlat79 = ((x_1353 * x_1355) + x_1357);
        let x_1360 : vec4<f32> = u_xlat10;
        let x_1361 : vec2<f32> = vec2<f32>(x_1360.z, x_1360.w);
        let x_1363 : f32 = u_xlat4.z;
        txVec26 = vec3<f32>(x_1361.x, x_1361.y, x_1363);
        let x_1370 : vec3<f32> = txVec26;
        let x_1372 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1370.xy, x_1370.z);
        u_xlat55.x = x_1372;
        let x_1375 : f32 = u_xlat6.y;
        let x_1377 : f32 = u_xlat55.x;
        let x_1379 : f32 = u_xlat79;
        u_xlat79 = ((x_1375 * x_1377) + x_1379);
        let x_1382 : vec2<f32> = u_xlat58;
        let x_1384 : f32 = u_xlat4.z;
        txVec27 = vec3<f32>(x_1382.x, x_1382.y, x_1384);
        let x_1391 : vec3<f32> = txVec27;
        let x_1393 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1391.xy, x_1391.z);
        u_xlat55.x = x_1393;
        let x_1396 : f32 = u_xlat6.z;
        let x_1398 : f32 = u_xlat55.x;
        let x_1400 : f32 = u_xlat79;
        u_xlat79 = ((x_1396 * x_1398) + x_1400);
        let x_1403 : vec4<f32> = u_xlat5;
        let x_1404 : vec2<f32> = vec2<f32>(x_1403.x, x_1403.y);
        let x_1406 : f32 = u_xlat4.z;
        txVec28 = vec3<f32>(x_1404.x, x_1404.y, x_1406);
        let x_1413 : vec3<f32> = txVec28;
        let x_1415 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1413.xy, x_1413.z);
        u_xlat5.x = x_1415;
        let x_1418 : f32 = u_xlat6.w;
        let x_1420 : f32 = u_xlat5.x;
        let x_1422 : f32 = u_xlat79;
        u_xlat77 = ((x_1418 * x_1420) + x_1422);
      }
    }
  } else {
    let x_1426 : vec4<f32> = u_xlat4;
    let x_1427 : vec2<f32> = vec2<f32>(x_1426.x, x_1426.y);
    let x_1429 : f32 = u_xlat4.z;
    txVec29 = vec3<f32>(x_1427.x, x_1427.y, x_1429);
    let x_1436 : vec3<f32> = txVec29;
    let x_1438 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1436.xy, x_1436.z);
    u_xlat77 = x_1438;
  }
  let x_1440 : f32 = x_131.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_1440) + 1.0f);
  let x_1444 : f32 = u_xlat77;
  let x_1446 : f32 = x_131.x_MainLightShadowParams.x;
  let x_1449 : f32 = u_xlat4.x;
  u_xlat77 = ((x_1444 * x_1446) + x_1449);
  let x_1453 : f32 = u_xlat4.z;
  u_xlatb29 = (0.0f >= x_1453);
  let x_1457 : f32 = u_xlat4.z;
  u_xlatb54 = (x_1457 >= 1.0f);
  let x_1459 : bool = u_xlatb54;
  let x_1460 : bool = u_xlatb29;
  u_xlatb29 = (x_1459 | x_1460);
  let x_1462 : bool = u_xlatb29;
  let x_1463 : f32 = u_xlat77;
  u_xlat77 = select(x_1463, 1.0f, x_1462);
  let x_1465 : vec3<f32> = u_xlat0;
  let x_1467 : vec4<f32> = x_53.x_MainLightPosition;
  u_xlat0.x = dot(x_1465, -(vec3<f32>(x_1467.x, x_1467.y, x_1467.z)));
  let x_1473 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1473, 0.0f, 1.0f);
  let x_1477 : f32 = u_xlat77;
  let x_1480 : vec4<f32> = x_53.x_MainLightColor;
  u_xlat29 = (vec3<f32>(x_1477, x_1477, x_1477) * vec3<f32>(x_1480.x, x_1480.y, x_1480.z));
  let x_1483 : vec3<f32> = u_xlat0;
  let x_1485 : vec3<f32> = u_xlat29;
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
  u_xlat26.x = (x_1508 + -0.40000000596046447754f);
  let x_1514 : f32 = u_xlat1.w;
  u_xlat51 = dpdxCoarse(x_1514);
  let x_1518 : f32 = u_xlat1.w;
  u_xlat76 = dpdyCoarse(x_1518);
  let x_1520 : f32 = u_xlat76;
  let x_1522 : f32 = u_xlat51;
  u_xlat51 = (abs(x_1520) + abs(x_1522));
  let x_1525 : f32 = u_xlat51;
  u_xlat51 = max(x_1525, 0.00009999999747378752f);
  let x_1529 : f32 = u_xlat26.x;
  let x_1530 : f32 = u_xlat51;
  u_xlat26.x = (x_1529 / x_1530);
  let x_1534 : f32 = u_xlat26.x;
  u_xlat26.x = (x_1534 + 0.5f);
  let x_1538 : f32 = u_xlat26.x;
  u_xlat26.x = clamp(x_1538, 0.0f, 1.0f);
  let x_1543 : f32 = x_53.x_AlphaToMaskAvailable;
  u_xlatb51 = !((x_1543 == 0.0f));
  let x_1545 : bool = u_xlatb51;
  if (x_1545) {
    let x_1550 : f32 = u_xlat26.x;
    x_1546 = x_1550;
  } else {
    let x_1553 : f32 = u_xlat1.x;
    x_1546 = x_1553;
  }
  let x_1554 : f32 = x_1546;
  u_xlat1.x = x_1554;
  let x_1557 : f32 = u_xlat1.x;
  u_xlat26.x = (x_1557 + -0.00009999999747378752f);
  let x_1565 : f32 = u_xlat26.x;
  u_xlatb26.x = (x_1565 < 0.0f);
  let x_1569 : bool = u_xlatb26.x;
  if (((select(0i, 1i, x_1569) * -1i) != 0i)) {
    discard;
  }
  let x_1579 : f32 = vs_INTERP4.w;
  u_xlatb26.x = (0.0f < x_1579);
  let x_1587 : f32 = x_1585.unity_WorldTransformParams.w;
  u_xlatb26.z = (x_1587 >= 0.0f);
  let x_1591 : bool = u_xlatb26.x;
  u_xlat26.x = select(-1.0f, 1.0f, x_1591);
  let x_1595 : bool = u_xlatb26.z;
  u_xlat26.z = select(-1.0f, 1.0f, x_1595);
  let x_1599 : f32 = u_xlat26.z;
  let x_1601 : f32 = u_xlat26.x;
  u_xlat26.x = (x_1599 * x_1601);
  let x_1604 : vec4<f32> = vs_INTERP4;
  let x_1606 : vec3<f32> = vs_INTERP9;
  u_xlat29 = (vec3<f32>(x_1604.y, x_1604.z, x_1604.x) * vec3<f32>(x_1606.z, x_1606.x, x_1606.y));
  let x_1609 : vec3<f32> = vs_INTERP9;
  let x_1611 : vec4<f32> = vs_INTERP4;
  let x_1614 : vec3<f32> = u_xlat29;
  u_xlat29 = ((vec3<f32>(x_1609.y, x_1609.z, x_1609.x) * vec3<f32>(x_1611.z, x_1611.x, x_1611.y)) + -(x_1614));
  let x_1617 : vec3<f32> = u_xlat26;
  let x_1619 : vec3<f32> = u_xlat29;
  u_xlat29 = (vec3<f32>(x_1617.x, x_1617.x, x_1617.x) * x_1619);
  let x_1621 : vec3<f32> = u_xlat28;
  let x_1623 : vec3<f32> = u_xlat29;
  u_xlat29 = (vec3<f32>(x_1621.y, x_1621.y, x_1621.y) * x_1623);
  let x_1625 : vec3<f32> = u_xlat28;
  let x_1627 : vec4<f32> = vs_INTERP4;
  let x_1630 : vec3<f32> = u_xlat29;
  u_xlat29 = ((vec3<f32>(x_1625.x, x_1625.x, x_1625.x) * vec3<f32>(x_1627.x, x_1627.y, x_1627.z)) + x_1630);
  let x_1632 : vec3<f32> = u_xlat28;
  let x_1634 : vec3<f32> = vs_INTERP9;
  let x_1636 : vec3<f32> = u_xlat29;
  u_xlat28 = ((vec3<f32>(x_1632.z, x_1632.z, x_1632.z) * x_1634) + x_1636);
  let x_1638 : vec3<f32> = u_xlat28;
  let x_1639 : vec3<f32> = u_xlat28;
  u_xlat26.x = dot(x_1638, x_1639);
  let x_1643 : f32 = u_xlat26.x;
  u_xlat26.x = inverseSqrt(x_1643);
  let x_1646 : vec3<f32> = u_xlat26;
  let x_1648 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_1646.x, x_1646.x, x_1646.x) * x_1648);
  let x_1651 : f32 = x_53.unity_OrthoParams.w;
  u_xlatb26.x = (x_1651 == 0.0f);
  let x_1654 : vec3<f32> = vs_INTERP8;
  let x_1659 : vec3<f32> = x_53.x_WorldSpaceCameraPos;
  u_xlat29 = (-(x_1654) + x_1659);
  let x_1661 : vec3<f32> = u_xlat29;
  let x_1662 : vec3<f32> = u_xlat29;
  u_xlat76 = dot(x_1661, x_1662);
  let x_1664 : f32 = u_xlat76;
  u_xlat76 = inverseSqrt(x_1664);
  let x_1666 : f32 = u_xlat76;
  let x_1668 : vec3<f32> = u_xlat29;
  u_xlat29 = (vec3<f32>(x_1666, x_1666, x_1666) * x_1668);
  let x_1671 : bool = u_xlatb26.x;
  if (x_1671) {
    let x_1676 : f32 = u_xlat29.x;
    x_1672 = x_1676;
  } else {
    let x_1679 : f32 = x_53.unity_MatrixV[0i].z;
    x_1672 = x_1679;
  }
  let x_1680 : f32 = x_1672;
  u_xlat5.x = x_1680;
  let x_1683 : bool = u_xlatb26.x;
  if (x_1683) {
    let x_1688 : f32 = u_xlat29.y;
    x_1684 = x_1688;
  } else {
    let x_1691 : f32 = x_53.unity_MatrixV[1i].z;
    x_1684 = x_1691;
  }
  let x_1692 : f32 = x_1684;
  u_xlat5.y = x_1692;
  let x_1695 : bool = u_xlatb26.x;
  if (x_1695) {
    let x_1700 : f32 = u_xlat29.z;
    x_1696 = x_1700;
  } else {
    let x_1703 : f32 = x_53.unity_MatrixV[2i].z;
    x_1696 = x_1703;
  }
  let x_1704 : f32 = x_1696;
  u_xlat5.z = x_1704;
  let x_1713 : vec2<f32> = vs_INTERP0;
  let x_1715 : f32 = x_53.x_GlobalMipBias.x;
  let x_1716 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_1713, x_1715);
  u_xlat6 = x_1716;
  let x_1721 : vec2<f32> = vs_INTERP0;
  let x_1723 : f32 = x_53.x_GlobalMipBias.x;
  let x_1724 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_1721, x_1723);
  u_xlat29 = vec3<f32>(x_1724.x, x_1724.y, x_1724.z);
  let x_1726 : vec4<f32> = u_xlat6;
  let x_1729 : vec3<f32> = (vec3<f32>(x_1726.x, x_1726.y, x_1726.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_1730 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1729.x, x_1729.y, x_1729.z, x_1730.w);
  let x_1732 : vec3<f32> = u_xlat28;
  let x_1733 : vec4<f32> = u_xlat6;
  u_xlat26.x = dot(x_1732, vec3<f32>(x_1733.x, x_1733.y, x_1733.z));
  let x_1738 : f32 = u_xlat26.x;
  u_xlat26.x = (x_1738 + 0.5f);
  let x_1741 : vec3<f32> = u_xlat26;
  let x_1743 : vec3<f32> = u_xlat29;
  u_xlat29 = (vec3<f32>(x_1741.x, x_1741.x, x_1741.x) * x_1743);
  let x_1746 : f32 = u_xlat6.w;
  u_xlat26.x = max(x_1746, 0.00009999999747378752f);
  let x_1749 : vec3<f32> = u_xlat29;
  let x_1750 : vec3<f32> = u_xlat26;
  u_xlat29 = (x_1749 / vec3<f32>(x_1750.x, x_1750.x, x_1750.x));
  let x_1754 : f32 = u_xlat3.x;
  u_xlat3.x = x_1754;
  let x_1757 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1757, 0.0f, 1.0f);
  let x_1761 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_1761, 1.0f);
  let x_1764 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1764 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_1769 : f32 = u_xlat3.x;
  u_xlat26.x = (-(x_1769) + 1.0f);
  let x_1774 : f32 = u_xlat26.x;
  let x_1776 : f32 = u_xlat26.x;
  u_xlat76 = (x_1774 * x_1776);
  let x_1778 : f32 = u_xlat76;
  u_xlat76 = max(x_1778, 0.0078125f);
  let x_1781 : f32 = u_xlat76;
  let x_1782 : f32 = u_xlat76;
  u_xlat77 = (x_1781 * x_1782);
  let x_1785 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1785 + 0.04000002145767211914f);
  let x_1790 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_1790, 1.0f);
  let x_1794 : f32 = u_xlat76;
  u_xlat80 = ((x_1794 * 4.0f) + 2.0f);
  let x_1799 : f32 = vs_INTERP6.w;
  u_xlat6.x = min(x_1799, 1.0f);
  let x_1802 : bool = u_xlatb75;
  if (x_1802) {
    let x_1806 : f32 = x_131.x_MainLightShadowParams.y;
    u_xlatb75 = (x_1806 == 1.0f);
    let x_1808 : bool = u_xlatb75;
    if (x_1808) {
      let x_1812 : vec4<f32> = vs_INTERP3;
      let x_1815 : vec4<f32> = x_131.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_1812.x, x_1812.y, x_1812.x, x_1812.y) + x_1815);
      let x_1818 : vec4<f32> = u_xlat7;
      let x_1819 : vec2<f32> = vec2<f32>(x_1818.x, x_1818.y);
      let x_1821 : f32 = vs_INTERP3.z;
      txVec30 = vec3<f32>(x_1819.x, x_1819.y, x_1821);
      let x_1828 : vec3<f32> = txVec30;
      let x_1830 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1828.xy, x_1828.z);
      u_xlat8.x = x_1830;
      let x_1833 : vec4<f32> = u_xlat7;
      let x_1834 : vec2<f32> = vec2<f32>(x_1833.z, x_1833.w);
      let x_1836 : f32 = vs_INTERP3.z;
      txVec31 = vec3<f32>(x_1834.x, x_1834.y, x_1836);
      let x_1843 : vec3<f32> = txVec31;
      let x_1845 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1843.xy, x_1843.z);
      u_xlat8.y = x_1845;
      let x_1847 : vec4<f32> = vs_INTERP3;
      let x_1850 : vec4<f32> = x_131.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_1847.x, x_1847.y, x_1847.x, x_1847.y) + x_1850);
      let x_1853 : vec4<f32> = u_xlat7;
      let x_1854 : vec2<f32> = vec2<f32>(x_1853.x, x_1853.y);
      let x_1856 : f32 = vs_INTERP3.z;
      txVec32 = vec3<f32>(x_1854.x, x_1854.y, x_1856);
      let x_1863 : vec3<f32> = txVec32;
      let x_1865 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1863.xy, x_1863.z);
      u_xlat8.z = x_1865;
      let x_1868 : vec4<f32> = u_xlat7;
      let x_1869 : vec2<f32> = vec2<f32>(x_1868.z, x_1868.w);
      let x_1871 : f32 = vs_INTERP3.z;
      txVec33 = vec3<f32>(x_1869.x, x_1869.y, x_1871);
      let x_1878 : vec3<f32> = txVec33;
      let x_1880 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1878.xy, x_1878.z);
      u_xlat8.w = x_1880;
      let x_1882 : vec4<f32> = u_xlat8;
      u_xlat75 = dot(x_1882, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1887 : f32 = x_131.x_MainLightShadowParams.y;
      u_xlatb31 = (x_1887 == 2.0f);
      let x_1889 : bool = u_xlatb31;
      if (x_1889) {
        let x_1892 : vec4<f32> = vs_INTERP3;
        let x_1895 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_1898 : vec2<f32> = ((vec2<f32>(x_1892.x, x_1892.y) * vec2<f32>(x_1895.z, x_1895.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1899 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1898.x, x_1898.y, x_1899.z);
        let x_1901 : vec3<f32> = u_xlat31;
        let x_1903 : vec2<f32> = floor(vec2<f32>(x_1901.x, x_1901.y));
        let x_1904 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1903.x, x_1903.y, x_1904.z);
        let x_1906 : vec4<f32> = vs_INTERP3;
        let x_1909 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_1912 : vec3<f32> = u_xlat31;
        let x_1915 : vec2<f32> = ((vec2<f32>(x_1906.x, x_1906.y) * vec2<f32>(x_1909.z, x_1909.w)) + -(vec2<f32>(x_1912.x, x_1912.y)));
        let x_1916 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1915.x, x_1915.y, x_1916.z, x_1916.w);
        let x_1918 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1918.x, x_1918.x, x_1918.y, x_1918.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1921 : vec4<f32> = u_xlat8;
        let x_1923 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1921.x, x_1921.x, x_1921.z, x_1921.z) * vec4<f32>(x_1923.x, x_1923.x, x_1923.z, x_1923.z));
        let x_1926 : vec4<f32> = u_xlat9;
        u_xlat57 = (vec2<f32>(x_1926.y, x_1926.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1929 : vec4<f32> = u_xlat9;
        let x_1932 : vec4<f32> = u_xlat7;
        let x_1935 : vec2<f32> = ((vec2<f32>(x_1929.x, x_1929.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1932.x, x_1932.y)));
        let x_1936 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1935.x, x_1936.y, x_1935.y, x_1936.w);
        let x_1938 : vec4<f32> = u_xlat7;
        let x_1941 : vec2<f32> = (-(vec2<f32>(x_1938.x, x_1938.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1942 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1941.x, x_1941.y, x_1942.z, x_1942.w);
        let x_1945 : vec4<f32> = u_xlat7;
        u_xlat59 = min(vec2<f32>(x_1945.x, x_1945.y), vec2<f32>(0.0f, 0.0f));
        let x_1948 : vec2<f32> = u_xlat59;
        let x_1950 : vec2<f32> = u_xlat59;
        let x_1952 : vec4<f32> = u_xlat9;
        u_xlat59 = ((-(x_1948) * x_1950) + vec2<f32>(x_1952.x, x_1952.y));
        let x_1955 : vec4<f32> = u_xlat7;
        let x_1957 : vec2<f32> = max(vec2<f32>(x_1955.x, x_1955.y), vec2<f32>(0.0f, 0.0f));
        let x_1958 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1957.x, x_1957.y, x_1958.z, x_1958.w);
        let x_1960 : vec4<f32> = u_xlat7;
        let x_1963 : vec4<f32> = u_xlat7;
        let x_1966 : vec4<f32> = u_xlat8;
        let x_1968 : vec2<f32> = ((-(vec2<f32>(x_1960.x, x_1960.y)) * vec2<f32>(x_1963.x, x_1963.y)) + vec2<f32>(x_1966.y, x_1966.w));
        let x_1969 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1968.x, x_1968.y, x_1969.z, x_1969.w);
        let x_1971 : vec2<f32> = u_xlat59;
        u_xlat59 = (x_1971 + vec2<f32>(1.0f, 1.0f));
        let x_1973 : vec4<f32> = u_xlat7;
        let x_1975 : vec2<f32> = (vec2<f32>(x_1973.x, x_1973.y) + vec2<f32>(1.0f, 1.0f));
        let x_1976 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1975.x, x_1975.y, x_1976.z, x_1976.w);
        let x_1978 : vec4<f32> = u_xlat8;
        let x_1980 : vec2<f32> = (vec2<f32>(x_1978.x, x_1978.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1981 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1980.x, x_1980.y, x_1981.z, x_1981.w);
        let x_1983 : vec4<f32> = u_xlat9;
        let x_1985 : vec2<f32> = (vec2<f32>(x_1983.x, x_1983.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1986 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1985.x, x_1985.y, x_1986.z, x_1986.w);
        let x_1988 : vec2<f32> = u_xlat59;
        let x_1989 : vec2<f32> = (x_1988 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1990 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1989.x, x_1989.y, x_1990.z, x_1990.w);
        let x_1992 : vec4<f32> = u_xlat7;
        let x_1994 : vec2<f32> = (vec2<f32>(x_1992.x, x_1992.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1995 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1994.x, x_1994.y, x_1995.z, x_1995.w);
        let x_1997 : vec4<f32> = u_xlat8;
        let x_1999 : vec2<f32> = (vec2<f32>(x_1997.y, x_1997.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2000 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1999.x, x_1999.y, x_2000.z, x_2000.w);
        let x_2003 : f32 = u_xlat9.x;
        u_xlat10.z = x_2003;
        let x_2006 : f32 = u_xlat7.x;
        u_xlat10.w = x_2006;
        let x_2009 : f32 = u_xlat12.x;
        u_xlat11.z = x_2009;
        let x_2012 : f32 = u_xlat57.x;
        u_xlat11.w = x_2012;
        let x_2014 : vec4<f32> = u_xlat10;
        let x_2016 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_2014.z, x_2014.w, x_2014.x, x_2014.z) + vec4<f32>(x_2016.z, x_2016.w, x_2016.x, x_2016.z));
        let x_2020 : f32 = u_xlat10.y;
        u_xlat9.z = x_2020;
        let x_2023 : f32 = u_xlat7.y;
        u_xlat9.w = x_2023;
        let x_2026 : f32 = u_xlat11.y;
        u_xlat12.z = x_2026;
        let x_2029 : f32 = u_xlat57.y;
        u_xlat12.w = x_2029;
        let x_2031 : vec4<f32> = u_xlat9;
        let x_2033 : vec4<f32> = u_xlat12;
        let x_2035 : vec3<f32> = (vec3<f32>(x_2031.z, x_2031.y, x_2031.w) + vec3<f32>(x_2033.z, x_2033.y, x_2033.w));
        let x_2036 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2035.x, x_2035.y, x_2035.z, x_2036.w);
        let x_2038 : vec4<f32> = u_xlat11;
        let x_2040 : vec4<f32> = u_xlat8;
        let x_2042 : vec3<f32> = (vec3<f32>(x_2038.x, x_2038.z, x_2038.w) / vec3<f32>(x_2040.z, x_2040.w, x_2040.y));
        let x_2043 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2042.x, x_2042.y, x_2042.z, x_2043.w);
        let x_2045 : vec4<f32> = u_xlat9;
        let x_2047 : vec3<f32> = (vec3<f32>(x_2045.x, x_2045.y, x_2045.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2048 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2047.x, x_2047.y, x_2047.z, x_2048.w);
        let x_2050 : vec4<f32> = u_xlat12;
        let x_2052 : vec4<f32> = u_xlat7;
        let x_2054 : vec3<f32> = (vec3<f32>(x_2050.z, x_2050.y, x_2050.w) / vec3<f32>(x_2052.x, x_2052.y, x_2052.z));
        let x_2055 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2054.x, x_2054.y, x_2054.z, x_2055.w);
        let x_2057 : vec4<f32> = u_xlat10;
        let x_2059 : vec3<f32> = (vec3<f32>(x_2057.x, x_2057.y, x_2057.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2060 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2059.x, x_2059.y, x_2059.z, x_2060.w);
        let x_2062 : vec4<f32> = u_xlat9;
        let x_2065 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2067 : vec3<f32> = (vec3<f32>(x_2062.y, x_2062.x, x_2062.z) * vec3<f32>(x_2065.x, x_2065.x, x_2065.x));
        let x_2068 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2067.x, x_2067.y, x_2067.z, x_2068.w);
        let x_2070 : vec4<f32> = u_xlat10;
        let x_2073 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2075 : vec3<f32> = (vec3<f32>(x_2070.x, x_2070.y, x_2070.z) * vec3<f32>(x_2073.y, x_2073.y, x_2073.y));
        let x_2076 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2075.x, x_2075.y, x_2075.z, x_2076.w);
        let x_2079 : f32 = u_xlat10.x;
        u_xlat9.w = x_2079;
        let x_2081 : vec3<f32> = u_xlat31;
        let x_2084 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2087 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_2081.x, x_2081.y, x_2081.x, x_2081.y) * vec4<f32>(x_2084.x, x_2084.y, x_2084.x, x_2084.y)) + vec4<f32>(x_2087.y, x_2087.w, x_2087.x, x_2087.w));
        let x_2090 : vec3<f32> = u_xlat31;
        let x_2093 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2096 : vec4<f32> = u_xlat9;
        let x_2098 : vec2<f32> = ((vec2<f32>(x_2090.x, x_2090.y) * vec2<f32>(x_2093.x, x_2093.y)) + vec2<f32>(x_2096.z, x_2096.w));
        let x_2099 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2098.x, x_2098.y, x_2099.z, x_2099.w);
        let x_2102 : f32 = u_xlat9.y;
        u_xlat10.w = x_2102;
        let x_2104 : vec4<f32> = u_xlat10;
        let x_2105 : vec2<f32> = vec2<f32>(x_2104.y, x_2104.z);
        let x_2106 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2106.x, x_2105.x, x_2106.z, x_2105.y);
        let x_2108 : vec3<f32> = u_xlat31;
        let x_2111 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2114 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_2108.x, x_2108.y, x_2108.x, x_2108.y) * vec4<f32>(x_2111.x, x_2111.y, x_2111.x, x_2111.y)) + vec4<f32>(x_2114.x, x_2114.y, x_2114.z, x_2114.y));
        let x_2117 : vec3<f32> = u_xlat31;
        let x_2120 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2123 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_2117.x, x_2117.y, x_2117.x, x_2117.y) * vec4<f32>(x_2120.x, x_2120.y, x_2120.x, x_2120.y)) + vec4<f32>(x_2123.w, x_2123.y, x_2123.w, x_2123.z));
        let x_2126 : vec3<f32> = u_xlat31;
        let x_2129 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2132 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_2126.x, x_2126.y, x_2126.x, x_2126.y) * vec4<f32>(x_2129.x, x_2129.y, x_2129.x, x_2129.y)) + vec4<f32>(x_2132.x, x_2132.w, x_2132.z, x_2132.w));
        let x_2135 : vec4<f32> = u_xlat7;
        let x_2137 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_2135.x, x_2135.x, x_2135.x, x_2135.y) * vec4<f32>(x_2137.z, x_2137.w, x_2137.y, x_2137.z));
        let x_2140 : vec4<f32> = u_xlat7;
        let x_2142 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_2140.y, x_2140.y, x_2140.z, x_2140.z) * x_2142);
        let x_2145 : f32 = u_xlat7.z;
        let x_2147 : f32 = u_xlat8.y;
        u_xlat31.x = (x_2145 * x_2147);
        let x_2151 : vec4<f32> = u_xlat11;
        let x_2152 : vec2<f32> = vec2<f32>(x_2151.x, x_2151.y);
        let x_2154 : f32 = vs_INTERP3.z;
        txVec34 = vec3<f32>(x_2152.x, x_2152.y, x_2154);
        let x_2162 : vec3<f32> = txVec34;
        let x_2164 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2162.xy, x_2162.z);
        u_xlat56 = x_2164;
        let x_2166 : vec4<f32> = u_xlat11;
        let x_2167 : vec2<f32> = vec2<f32>(x_2166.z, x_2166.w);
        let x_2169 : f32 = vs_INTERP3.z;
        txVec35 = vec3<f32>(x_2167.x, x_2167.y, x_2169);
        let x_2177 : vec3<f32> = txVec35;
        let x_2179 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2177.xy, x_2177.z);
        u_xlat81 = x_2179;
        let x_2180 : f32 = u_xlat81;
        let x_2182 : f32 = u_xlat14.y;
        u_xlat81 = (x_2180 * x_2182);
        let x_2185 : f32 = u_xlat14.x;
        let x_2186 : f32 = u_xlat56;
        let x_2188 : f32 = u_xlat81;
        u_xlat56 = ((x_2185 * x_2186) + x_2188);
        let x_2191 : vec4<f32> = u_xlat12;
        let x_2192 : vec2<f32> = vec2<f32>(x_2191.x, x_2191.y);
        let x_2194 : f32 = vs_INTERP3.z;
        txVec36 = vec3<f32>(x_2192.x, x_2192.y, x_2194);
        let x_2201 : vec3<f32> = txVec36;
        let x_2203 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2201.xy, x_2201.z);
        u_xlat81 = x_2203;
        let x_2205 : f32 = u_xlat14.z;
        let x_2206 : f32 = u_xlat81;
        let x_2208 : f32 = u_xlat56;
        u_xlat56 = ((x_2205 * x_2206) + x_2208);
        let x_2211 : vec4<f32> = u_xlat10;
        let x_2212 : vec2<f32> = vec2<f32>(x_2211.x, x_2211.y);
        let x_2214 : f32 = vs_INTERP3.z;
        txVec37 = vec3<f32>(x_2212.x, x_2212.y, x_2214);
        let x_2221 : vec3<f32> = txVec37;
        let x_2223 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2221.xy, x_2221.z);
        u_xlat81 = x_2223;
        let x_2225 : f32 = u_xlat14.w;
        let x_2226 : f32 = u_xlat81;
        let x_2228 : f32 = u_xlat56;
        u_xlat56 = ((x_2225 * x_2226) + x_2228);
        let x_2231 : vec4<f32> = u_xlat13;
        let x_2232 : vec2<f32> = vec2<f32>(x_2231.x, x_2231.y);
        let x_2234 : f32 = vs_INTERP3.z;
        txVec38 = vec3<f32>(x_2232.x, x_2232.y, x_2234);
        let x_2241 : vec3<f32> = txVec38;
        let x_2243 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2241.xy, x_2241.z);
        u_xlat81 = x_2243;
        let x_2245 : f32 = u_xlat15.x;
        let x_2246 : f32 = u_xlat81;
        let x_2248 : f32 = u_xlat56;
        u_xlat56 = ((x_2245 * x_2246) + x_2248);
        let x_2251 : vec4<f32> = u_xlat13;
        let x_2252 : vec2<f32> = vec2<f32>(x_2251.z, x_2251.w);
        let x_2254 : f32 = vs_INTERP3.z;
        txVec39 = vec3<f32>(x_2252.x, x_2252.y, x_2254);
        let x_2261 : vec3<f32> = txVec39;
        let x_2263 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2261.xy, x_2261.z);
        u_xlat81 = x_2263;
        let x_2265 : f32 = u_xlat15.y;
        let x_2266 : f32 = u_xlat81;
        let x_2268 : f32 = u_xlat56;
        u_xlat56 = ((x_2265 * x_2266) + x_2268);
        let x_2271 : vec4<f32> = u_xlat10;
        let x_2272 : vec2<f32> = vec2<f32>(x_2271.z, x_2271.w);
        let x_2274 : f32 = vs_INTERP3.z;
        txVec40 = vec3<f32>(x_2272.x, x_2272.y, x_2274);
        let x_2281 : vec3<f32> = txVec40;
        let x_2283 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2281.xy, x_2281.z);
        u_xlat81 = x_2283;
        let x_2285 : f32 = u_xlat15.z;
        let x_2286 : f32 = u_xlat81;
        let x_2288 : f32 = u_xlat56;
        u_xlat56 = ((x_2285 * x_2286) + x_2288);
        let x_2291 : vec4<f32> = u_xlat9;
        let x_2292 : vec2<f32> = vec2<f32>(x_2291.x, x_2291.y);
        let x_2294 : f32 = vs_INTERP3.z;
        txVec41 = vec3<f32>(x_2292.x, x_2292.y, x_2294);
        let x_2301 : vec3<f32> = txVec41;
        let x_2303 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2301.xy, x_2301.z);
        u_xlat81 = x_2303;
        let x_2305 : f32 = u_xlat15.w;
        let x_2306 : f32 = u_xlat81;
        let x_2308 : f32 = u_xlat56;
        u_xlat56 = ((x_2305 * x_2306) + x_2308);
        let x_2311 : vec4<f32> = u_xlat9;
        let x_2312 : vec2<f32> = vec2<f32>(x_2311.z, x_2311.w);
        let x_2314 : f32 = vs_INTERP3.z;
        txVec42 = vec3<f32>(x_2312.x, x_2312.y, x_2314);
        let x_2321 : vec3<f32> = txVec42;
        let x_2323 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2321.xy, x_2321.z);
        u_xlat81 = x_2323;
        let x_2325 : f32 = u_xlat31.x;
        let x_2326 : f32 = u_xlat81;
        let x_2328 : f32 = u_xlat56;
        u_xlat75 = ((x_2325 * x_2326) + x_2328);
      } else {
        let x_2331 : vec4<f32> = vs_INTERP3;
        let x_2334 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2337 : vec2<f32> = ((vec2<f32>(x_2331.x, x_2331.y) * vec2<f32>(x_2334.z, x_2334.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2338 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2337.x, x_2337.y, x_2338.z);
        let x_2340 : vec3<f32> = u_xlat31;
        let x_2342 : vec2<f32> = floor(vec2<f32>(x_2340.x, x_2340.y));
        let x_2343 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2342.x, x_2342.y, x_2343.z);
        let x_2345 : vec4<f32> = vs_INTERP3;
        let x_2348 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2351 : vec3<f32> = u_xlat31;
        let x_2354 : vec2<f32> = ((vec2<f32>(x_2345.x, x_2345.y) * vec2<f32>(x_2348.z, x_2348.w)) + -(vec2<f32>(x_2351.x, x_2351.y)));
        let x_2355 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2354.x, x_2354.y, x_2355.z, x_2355.w);
        let x_2357 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_2357.x, x_2357.x, x_2357.y, x_2357.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2360 : vec4<f32> = u_xlat8;
        let x_2362 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2360.x, x_2360.x, x_2360.z, x_2360.z) * vec4<f32>(x_2362.x, x_2362.x, x_2362.z, x_2362.z));
        let x_2365 : vec4<f32> = u_xlat9;
        let x_2367 : vec2<f32> = (vec2<f32>(x_2365.y, x_2365.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_2368 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2368.x, x_2367.x, x_2368.z, x_2367.y);
        let x_2370 : vec4<f32> = u_xlat9;
        let x_2373 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_2370.x, x_2370.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2373.x, x_2373.y)));
        let x_2377 : vec4<f32> = u_xlat7;
        let x_2380 : vec2<f32> = (-(vec2<f32>(x_2377.x, x_2377.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2381 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2380.x, x_2381.y, x_2380.y, x_2381.w);
        let x_2383 : vec4<f32> = u_xlat7;
        let x_2385 : vec2<f32> = min(vec2<f32>(x_2383.x, x_2383.y), vec2<f32>(0.0f, 0.0f));
        let x_2386 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2385.x, x_2385.y, x_2386.z, x_2386.w);
        let x_2388 : vec4<f32> = u_xlat9;
        let x_2391 : vec4<f32> = u_xlat9;
        let x_2394 : vec4<f32> = u_xlat8;
        let x_2396 : vec2<f32> = ((-(vec2<f32>(x_2388.x, x_2388.y)) * vec2<f32>(x_2391.x, x_2391.y)) + vec2<f32>(x_2394.x, x_2394.z));
        let x_2397 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2396.x, x_2397.y, x_2396.y, x_2397.w);
        let x_2399 : vec4<f32> = u_xlat7;
        let x_2401 : vec2<f32> = max(vec2<f32>(x_2399.x, x_2399.y), vec2<f32>(0.0f, 0.0f));
        let x_2402 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2401.x, x_2401.y, x_2402.z, x_2402.w);
        let x_2404 : vec4<f32> = u_xlat9;
        let x_2407 : vec4<f32> = u_xlat9;
        let x_2410 : vec4<f32> = u_xlat8;
        let x_2412 : vec2<f32> = ((-(vec2<f32>(x_2404.x, x_2404.y)) * vec2<f32>(x_2407.x, x_2407.y)) + vec2<f32>(x_2410.y, x_2410.w));
        let x_2413 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2413.x, x_2412.x, x_2413.z, x_2412.y);
        let x_2415 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_2415 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_2418 : f32 = u_xlat8.y;
        u_xlat9.z = (x_2418 * 0.08163200318813323975f);
        let x_2421 : vec2<f32> = u_xlat57;
        let x_2423 : vec2<f32> = (vec2<f32>(x_2421.y, x_2421.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2424 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2423.x, x_2423.y, x_2424.z, x_2424.w);
        let x_2426 : vec4<f32> = u_xlat8;
        u_xlat57 = (vec2<f32>(x_2426.x, x_2426.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2430 : f32 = u_xlat8.w;
        u_xlat11.z = (x_2430 * 0.08163200318813323975f);
        let x_2434 : f32 = u_xlat11.y;
        u_xlat9.x = x_2434;
        let x_2436 : vec4<f32> = u_xlat7;
        let x_2439 : vec2<f32> = ((vec2<f32>(x_2436.x, x_2436.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2440 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2440.x, x_2439.x, x_2440.z, x_2439.y);
        let x_2442 : vec4<f32> = u_xlat7;
        let x_2445 : vec2<f32> = ((vec2<f32>(x_2442.x, x_2442.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2446 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2445.x, x_2446.y, x_2445.y, x_2446.w);
        let x_2449 : f32 = u_xlat57.x;
        u_xlat8.y = x_2449;
        let x_2452 : f32 = u_xlat10.y;
        u_xlat8.w = x_2452;
        let x_2454 : vec4<f32> = u_xlat8;
        let x_2455 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2454 + x_2455);
        let x_2457 : vec4<f32> = u_xlat7;
        let x_2460 : vec2<f32> = ((vec2<f32>(x_2457.y, x_2457.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2461 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2461.x, x_2460.x, x_2461.z, x_2460.y);
        let x_2463 : vec4<f32> = u_xlat7;
        let x_2466 : vec2<f32> = ((vec2<f32>(x_2463.y, x_2463.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2467 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2466.x, x_2467.y, x_2466.y, x_2467.w);
        let x_2470 : f32 = u_xlat57.y;
        u_xlat10.y = x_2470;
        let x_2472 : vec4<f32> = u_xlat10;
        let x_2473 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_2472 + x_2473);
        let x_2475 : vec4<f32> = u_xlat8;
        let x_2476 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_2475 / x_2476);
        let x_2478 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_2478 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2480 : vec4<f32> = u_xlat10;
        let x_2481 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_2480 / x_2481);
        let x_2483 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_2483 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2485 : vec4<f32> = u_xlat8;
        let x_2488 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_2485.w, x_2485.x, x_2485.y, x_2485.z) * vec4<f32>(x_2488.x, x_2488.x, x_2488.x, x_2488.x));
        let x_2491 : vec4<f32> = u_xlat10;
        let x_2494 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_2491.x, x_2491.w, x_2491.y, x_2491.z) * vec4<f32>(x_2494.y, x_2494.y, x_2494.y, x_2494.y));
        let x_2497 : vec4<f32> = u_xlat8;
        let x_2498 : vec3<f32> = vec3<f32>(x_2497.y, x_2497.z, x_2497.w);
        let x_2499 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2498.x, x_2499.y, x_2498.y, x_2498.z);
        let x_2502 : f32 = u_xlat10.x;
        u_xlat11.y = x_2502;
        let x_2504 : vec3<f32> = u_xlat31;
        let x_2507 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2510 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_2504.x, x_2504.y, x_2504.x, x_2504.y) * vec4<f32>(x_2507.x, x_2507.y, x_2507.x, x_2507.y)) + vec4<f32>(x_2510.x, x_2510.y, x_2510.z, x_2510.y));
        let x_2513 : vec3<f32> = u_xlat31;
        let x_2516 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2519 : vec4<f32> = u_xlat11;
        let x_2521 : vec2<f32> = ((vec2<f32>(x_2513.x, x_2513.y) * vec2<f32>(x_2516.x, x_2516.y)) + vec2<f32>(x_2519.w, x_2519.y));
        let x_2522 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2521.x, x_2521.y, x_2522.z, x_2522.w);
        let x_2525 : f32 = u_xlat11.y;
        u_xlat8.y = x_2525;
        let x_2528 : f32 = u_xlat10.z;
        u_xlat11.y = x_2528;
        let x_2530 : vec3<f32> = u_xlat31;
        let x_2533 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2536 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_2530.x, x_2530.y, x_2530.x, x_2530.y) * vec4<f32>(x_2533.x, x_2533.y, x_2533.x, x_2533.y)) + vec4<f32>(x_2536.x, x_2536.y, x_2536.z, x_2536.y));
        let x_2539 : vec3<f32> = u_xlat31;
        let x_2542 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2545 : vec4<f32> = u_xlat11;
        u_xlat63 = ((vec2<f32>(x_2539.x, x_2539.y) * vec2<f32>(x_2542.x, x_2542.y)) + vec2<f32>(x_2545.w, x_2545.y));
        let x_2549 : f32 = u_xlat11.y;
        u_xlat8.z = x_2549;
        let x_2551 : vec3<f32> = u_xlat31;
        let x_2554 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2557 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_2551.x, x_2551.y, x_2551.x, x_2551.y) * vec4<f32>(x_2554.x, x_2554.y, x_2554.x, x_2554.y)) + vec4<f32>(x_2557.x, x_2557.y, x_2557.x, x_2557.z));
        let x_2561 : f32 = u_xlat10.w;
        u_xlat11.y = x_2561;
        let x_2563 : vec3<f32> = u_xlat31;
        let x_2566 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2569 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_2563.x, x_2563.y, x_2563.x, x_2563.y) * vec4<f32>(x_2566.x, x_2566.y, x_2566.x, x_2566.y)) + vec4<f32>(x_2569.x, x_2569.y, x_2569.z, x_2569.y));
        let x_2573 : vec3<f32> = u_xlat31;
        let x_2576 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2579 : vec4<f32> = u_xlat11;
        u_xlat33 = ((vec2<f32>(x_2573.x, x_2573.y) * vec2<f32>(x_2576.x, x_2576.y)) + vec2<f32>(x_2579.w, x_2579.y));
        let x_2583 : f32 = u_xlat11.y;
        u_xlat8.w = x_2583;
        let x_2585 : vec3<f32> = u_xlat31;
        let x_2588 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2591 : vec4<f32> = u_xlat8;
        let x_2593 : vec2<f32> = ((vec2<f32>(x_2585.x, x_2585.y) * vec2<f32>(x_2588.x, x_2588.y)) + vec2<f32>(x_2591.x, x_2591.w));
        let x_2594 : vec4<f32> = u_xlat17;
        u_xlat17 = vec4<f32>(x_2593.x, x_2593.y, x_2594.z, x_2594.w);
        let x_2596 : vec4<f32> = u_xlat11;
        let x_2597 : vec3<f32> = vec3<f32>(x_2596.x, x_2596.z, x_2596.w);
        let x_2598 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2597.x, x_2598.y, x_2597.y, x_2597.z);
        let x_2600 : vec3<f32> = u_xlat31;
        let x_2603 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2606 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_2600.x, x_2600.y, x_2600.x, x_2600.y) * vec4<f32>(x_2603.x, x_2603.y, x_2603.x, x_2603.y)) + vec4<f32>(x_2606.x, x_2606.y, x_2606.z, x_2606.y));
        let x_2610 : vec3<f32> = u_xlat31;
        let x_2613 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2616 : vec4<f32> = u_xlat10;
        u_xlat60 = ((vec2<f32>(x_2610.x, x_2610.y) * vec2<f32>(x_2613.x, x_2613.y)) + vec2<f32>(x_2616.w, x_2616.y));
        let x_2620 : f32 = u_xlat8.x;
        u_xlat10.x = x_2620;
        let x_2622 : vec3<f32> = u_xlat31;
        let x_2625 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2628 : vec4<f32> = u_xlat10;
        let x_2630 : vec2<f32> = ((vec2<f32>(x_2622.x, x_2622.y) * vec2<f32>(x_2625.x, x_2625.y)) + vec2<f32>(x_2628.x, x_2628.y));
        let x_2631 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2630.x, x_2630.y, x_2631.z);
        let x_2633 : vec4<f32> = u_xlat7;
        let x_2635 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_2633.x, x_2633.x, x_2633.x, x_2633.x) * x_2635);
        let x_2638 : vec4<f32> = u_xlat7;
        let x_2640 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_2638.y, x_2638.y, x_2638.y, x_2638.y) * x_2640);
        let x_2643 : vec4<f32> = u_xlat7;
        let x_2645 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_2643.z, x_2643.z, x_2643.z, x_2643.z) * x_2645);
        let x_2647 : vec4<f32> = u_xlat7;
        let x_2649 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_2647.w, x_2647.w, x_2647.w, x_2647.w) * x_2649);
        let x_2652 : vec4<f32> = u_xlat12;
        let x_2653 : vec2<f32> = vec2<f32>(x_2652.x, x_2652.y);
        let x_2655 : f32 = vs_INTERP3.z;
        txVec43 = vec3<f32>(x_2653.x, x_2653.y, x_2655);
        let x_2662 : vec3<f32> = txVec43;
        let x_2664 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2662.xy, x_2662.z);
        u_xlat81 = x_2664;
        let x_2666 : vec4<f32> = u_xlat12;
        let x_2667 : vec2<f32> = vec2<f32>(x_2666.z, x_2666.w);
        let x_2669 : f32 = vs_INTERP3.z;
        txVec44 = vec3<f32>(x_2667.x, x_2667.y, x_2669);
        let x_2676 : vec3<f32> = txVec44;
        let x_2678 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2676.xy, x_2676.z);
        u_xlat8.x = x_2678;
        let x_2681 : f32 = u_xlat8.x;
        let x_2683 : f32 = u_xlat18.y;
        u_xlat8.x = (x_2681 * x_2683);
        let x_2687 : f32 = u_xlat18.x;
        let x_2688 : f32 = u_xlat81;
        let x_2691 : f32 = u_xlat8.x;
        u_xlat81 = ((x_2687 * x_2688) + x_2691);
        let x_2694 : vec4<f32> = u_xlat13;
        let x_2695 : vec2<f32> = vec2<f32>(x_2694.x, x_2694.y);
        let x_2697 : f32 = vs_INTERP3.z;
        txVec45 = vec3<f32>(x_2695.x, x_2695.y, x_2697);
        let x_2704 : vec3<f32> = txVec45;
        let x_2706 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2704.xy, x_2704.z);
        u_xlat8.x = x_2706;
        let x_2709 : f32 = u_xlat18.z;
        let x_2711 : f32 = u_xlat8.x;
        let x_2713 : f32 = u_xlat81;
        u_xlat81 = ((x_2709 * x_2711) + x_2713);
        let x_2716 : vec4<f32> = u_xlat15;
        let x_2717 : vec2<f32> = vec2<f32>(x_2716.x, x_2716.y);
        let x_2719 : f32 = vs_INTERP3.z;
        txVec46 = vec3<f32>(x_2717.x, x_2717.y, x_2719);
        let x_2726 : vec3<f32> = txVec46;
        let x_2728 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2726.xy, x_2726.z);
        u_xlat8.x = x_2728;
        let x_2731 : f32 = u_xlat18.w;
        let x_2733 : f32 = u_xlat8.x;
        let x_2735 : f32 = u_xlat81;
        u_xlat81 = ((x_2731 * x_2733) + x_2735);
        let x_2738 : vec4<f32> = u_xlat14;
        let x_2739 : vec2<f32> = vec2<f32>(x_2738.x, x_2738.y);
        let x_2741 : f32 = vs_INTERP3.z;
        txVec47 = vec3<f32>(x_2739.x, x_2739.y, x_2741);
        let x_2748 : vec3<f32> = txVec47;
        let x_2750 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2748.xy, x_2748.z);
        u_xlat8.x = x_2750;
        let x_2753 : f32 = u_xlat19.x;
        let x_2755 : f32 = u_xlat8.x;
        let x_2757 : f32 = u_xlat81;
        u_xlat81 = ((x_2753 * x_2755) + x_2757);
        let x_2760 : vec4<f32> = u_xlat14;
        let x_2761 : vec2<f32> = vec2<f32>(x_2760.z, x_2760.w);
        let x_2763 : f32 = vs_INTERP3.z;
        txVec48 = vec3<f32>(x_2761.x, x_2761.y, x_2763);
        let x_2770 : vec3<f32> = txVec48;
        let x_2772 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2770.xy, x_2770.z);
        u_xlat8.x = x_2772;
        let x_2775 : f32 = u_xlat19.y;
        let x_2777 : f32 = u_xlat8.x;
        let x_2779 : f32 = u_xlat81;
        u_xlat81 = ((x_2775 * x_2777) + x_2779);
        let x_2782 : vec2<f32> = u_xlat63;
        let x_2784 : f32 = vs_INTERP3.z;
        txVec49 = vec3<f32>(x_2782.x, x_2782.y, x_2784);
        let x_2791 : vec3<f32> = txVec49;
        let x_2793 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2791.xy, x_2791.z);
        u_xlat8.x = x_2793;
        let x_2796 : f32 = u_xlat19.z;
        let x_2798 : f32 = u_xlat8.x;
        let x_2800 : f32 = u_xlat81;
        u_xlat81 = ((x_2796 * x_2798) + x_2800);
        let x_2803 : vec4<f32> = u_xlat15;
        let x_2804 : vec2<f32> = vec2<f32>(x_2803.z, x_2803.w);
        let x_2806 : f32 = vs_INTERP3.z;
        txVec50 = vec3<f32>(x_2804.x, x_2804.y, x_2806);
        let x_2813 : vec3<f32> = txVec50;
        let x_2815 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2813.xy, x_2813.z);
        u_xlat8.x = x_2815;
        let x_2818 : f32 = u_xlat19.w;
        let x_2820 : f32 = u_xlat8.x;
        let x_2822 : f32 = u_xlat81;
        u_xlat81 = ((x_2818 * x_2820) + x_2822);
        let x_2825 : vec4<f32> = u_xlat16;
        let x_2826 : vec2<f32> = vec2<f32>(x_2825.x, x_2825.y);
        let x_2828 : f32 = vs_INTERP3.z;
        txVec51 = vec3<f32>(x_2826.x, x_2826.y, x_2828);
        let x_2835 : vec3<f32> = txVec51;
        let x_2837 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2835.xy, x_2835.z);
        u_xlat8.x = x_2837;
        let x_2840 : f32 = u_xlat20.x;
        let x_2842 : f32 = u_xlat8.x;
        let x_2844 : f32 = u_xlat81;
        u_xlat81 = ((x_2840 * x_2842) + x_2844);
        let x_2847 : vec4<f32> = u_xlat16;
        let x_2848 : vec2<f32> = vec2<f32>(x_2847.z, x_2847.w);
        let x_2850 : f32 = vs_INTERP3.z;
        txVec52 = vec3<f32>(x_2848.x, x_2848.y, x_2850);
        let x_2857 : vec3<f32> = txVec52;
        let x_2859 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2857.xy, x_2857.z);
        u_xlat8.x = x_2859;
        let x_2862 : f32 = u_xlat20.y;
        let x_2864 : f32 = u_xlat8.x;
        let x_2866 : f32 = u_xlat81;
        u_xlat81 = ((x_2862 * x_2864) + x_2866);
        let x_2869 : vec2<f32> = u_xlat33;
        let x_2871 : f32 = vs_INTERP3.z;
        txVec53 = vec3<f32>(x_2869.x, x_2869.y, x_2871);
        let x_2878 : vec3<f32> = txVec53;
        let x_2880 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2878.xy, x_2878.z);
        u_xlat8.x = x_2880;
        let x_2883 : f32 = u_xlat20.z;
        let x_2885 : f32 = u_xlat8.x;
        let x_2887 : f32 = u_xlat81;
        u_xlat81 = ((x_2883 * x_2885) + x_2887);
        let x_2890 : vec4<f32> = u_xlat17;
        let x_2891 : vec2<f32> = vec2<f32>(x_2890.x, x_2890.y);
        let x_2893 : f32 = vs_INTERP3.z;
        txVec54 = vec3<f32>(x_2891.x, x_2891.y, x_2893);
        let x_2900 : vec3<f32> = txVec54;
        let x_2902 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2900.xy, x_2900.z);
        u_xlat8.x = x_2902;
        let x_2905 : f32 = u_xlat20.w;
        let x_2907 : f32 = u_xlat8.x;
        let x_2909 : f32 = u_xlat81;
        u_xlat81 = ((x_2905 * x_2907) + x_2909);
        let x_2912 : vec4<f32> = u_xlat11;
        let x_2913 : vec2<f32> = vec2<f32>(x_2912.x, x_2912.y);
        let x_2915 : f32 = vs_INTERP3.z;
        txVec55 = vec3<f32>(x_2913.x, x_2913.y, x_2915);
        let x_2922 : vec3<f32> = txVec55;
        let x_2924 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2922.xy, x_2922.z);
        u_xlat8.x = x_2924;
        let x_2927 : f32 = u_xlat7.x;
        let x_2929 : f32 = u_xlat8.x;
        let x_2931 : f32 = u_xlat81;
        u_xlat81 = ((x_2927 * x_2929) + x_2931);
        let x_2934 : vec4<f32> = u_xlat11;
        let x_2935 : vec2<f32> = vec2<f32>(x_2934.z, x_2934.w);
        let x_2937 : f32 = vs_INTERP3.z;
        txVec56 = vec3<f32>(x_2935.x, x_2935.y, x_2937);
        let x_2944 : vec3<f32> = txVec56;
        let x_2946 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2944.xy, x_2944.z);
        u_xlat7.x = x_2946;
        let x_2949 : f32 = u_xlat7.y;
        let x_2951 : f32 = u_xlat7.x;
        let x_2953 : f32 = u_xlat81;
        u_xlat81 = ((x_2949 * x_2951) + x_2953);
        let x_2956 : vec2<f32> = u_xlat60;
        let x_2958 : f32 = vs_INTERP3.z;
        txVec57 = vec3<f32>(x_2956.x, x_2956.y, x_2958);
        let x_2965 : vec3<f32> = txVec57;
        let x_2967 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2965.xy, x_2965.z);
        u_xlat7.x = x_2967;
        let x_2970 : f32 = u_xlat7.z;
        let x_2972 : f32 = u_xlat7.x;
        let x_2974 : f32 = u_xlat81;
        u_xlat81 = ((x_2970 * x_2972) + x_2974);
        let x_2977 : vec3<f32> = u_xlat31;
        let x_2978 : vec2<f32> = vec2<f32>(x_2977.x, x_2977.y);
        let x_2980 : f32 = vs_INTERP3.z;
        txVec58 = vec3<f32>(x_2978.x, x_2978.y, x_2980);
        let x_2987 : vec3<f32> = txVec58;
        let x_2989 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2987.xy, x_2987.z);
        u_xlat31.x = x_2989;
        let x_2992 : f32 = u_xlat7.w;
        let x_2994 : f32 = u_xlat31.x;
        let x_2996 : f32 = u_xlat81;
        u_xlat75 = ((x_2992 * x_2994) + x_2996);
      }
    }
  } else {
    let x_3000 : vec4<f32> = vs_INTERP3;
    let x_3001 : vec2<f32> = vec2<f32>(x_3000.x, x_3000.y);
    let x_3003 : f32 = vs_INTERP3.z;
    txVec59 = vec3<f32>(x_3001.x, x_3001.y, x_3003);
    let x_3010 : vec3<f32> = txVec59;
    let x_3012 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3010.xy, x_3010.z);
    u_xlat75 = x_3012;
  }
  let x_3013 : f32 = u_xlat75;
  let x_3015 : f32 = x_131.x_MainLightShadowParams.x;
  let x_3018 : f32 = u_xlat4.x;
  u_xlat75 = ((x_3013 * x_3015) + x_3018);
  let x_3022 : f32 = vs_INTERP3.z;
  u_xlatb4 = (0.0f >= x_3022);
  let x_3025 : f32 = vs_INTERP3.z;
  u_xlatb31 = (x_3025 >= 1.0f);
  let x_3027 : bool = u_xlatb4;
  let x_3028 : bool = u_xlatb31;
  u_xlatb4 = (x_3027 | x_3028);
  let x_3030 : bool = u_xlatb4;
  let x_3031 : f32 = u_xlat75;
  u_xlat75 = select(x_3031, 1.0f, x_3030);
  let x_3033 : vec3<f32> = vs_INTERP8;
  let x_3035 : vec3<f32> = x_53.x_WorldSpaceCameraPos;
  u_xlat31 = (x_3033 + -(x_3035));
  let x_3038 : vec3<f32> = u_xlat31;
  let x_3039 : vec3<f32> = u_xlat31;
  u_xlat4.x = dot(x_3038, x_3039);
  let x_3043 : f32 = u_xlat4.x;
  let x_3045 : f32 = x_131.x_MainLightShadowParams.z;
  let x_3048 : f32 = x_131.x_MainLightShadowParams.w;
  u_xlat31.x = ((x_3043 * x_3045) + x_3048);
  let x_3052 : f32 = u_xlat31.x;
  u_xlat31.x = clamp(x_3052, 0.0f, 1.0f);
  let x_3055 : f32 = u_xlat75;
  u_xlat56 = (-(x_3055) + 1.0f);
  let x_3059 : f32 = u_xlat31.x;
  let x_3060 : f32 = u_xlat56;
  let x_3062 : f32 = u_xlat75;
  u_xlat75 = ((x_3059 * x_3060) + x_3062);
  let x_3064 : vec4<f32> = u_xlat5;
  let x_3067 : vec3<f32> = u_xlat28;
  u_xlat31.x = dot(-(vec3<f32>(x_3064.x, x_3064.y, x_3064.z)), x_3067);
  let x_3071 : f32 = u_xlat31.x;
  let x_3073 : f32 = u_xlat31.x;
  u_xlat31.x = (x_3071 + x_3073);
  let x_3076 : vec3<f32> = u_xlat28;
  let x_3077 : vec3<f32> = u_xlat31;
  let x_3081 : vec4<f32> = u_xlat5;
  u_xlat31 = ((x_3076 * -(vec3<f32>(x_3077.x, x_3077.x, x_3077.x))) + -(vec3<f32>(x_3081.x, x_3081.y, x_3081.z)));
  let x_3085 : vec3<f32> = u_xlat28;
  let x_3086 : vec4<f32> = u_xlat5;
  u_xlat7.x = dot(x_3085, vec3<f32>(x_3086.x, x_3086.y, x_3086.z));
  let x_3091 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_3091, 0.0f, 1.0f);
  let x_3095 : f32 = u_xlat7.x;
  u_xlat7.x = (-(x_3095) + 1.0f);
  let x_3100 : f32 = u_xlat7.x;
  let x_3102 : f32 = u_xlat7.x;
  u_xlat7.x = (x_3100 * x_3102);
  let x_3106 : f32 = u_xlat7.x;
  let x_3108 : f32 = u_xlat7.x;
  u_xlat7.x = (x_3106 * x_3108);
  let x_3112 : f32 = u_xlat26.x;
  u_xlat32.x = ((-(x_3112) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_3120 : f32 = u_xlat26.x;
  let x_3122 : f32 = u_xlat32.x;
  u_xlat26.x = (x_3120 * x_3122);
  let x_3126 : f32 = u_xlat26.x;
  u_xlat26.x = (x_3126 * 6.0f);
  let x_3138 : vec3<f32> = u_xlat31;
  let x_3140 : f32 = u_xlat26.x;
  let x_3141 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_3138, x_3140);
  u_xlat8 = x_3141;
  let x_3143 : f32 = u_xlat8.w;
  u_xlat26.x = (x_3143 + -1.0f);
  let x_3147 : f32 = x_1585.unity_SpecCube0_HDR.w;
  let x_3149 : f32 = u_xlat26.x;
  u_xlat26.x = ((x_3147 * x_3149) + 1.0f);
  let x_3154 : f32 = u_xlat26.x;
  u_xlat26.x = max(x_3154, 0.0f);
  let x_3158 : f32 = u_xlat26.x;
  u_xlat26.x = log2(x_3158);
  let x_3162 : f32 = u_xlat26.x;
  let x_3164 : f32 = x_1585.unity_SpecCube0_HDR.y;
  u_xlat26.x = (x_3162 * x_3164);
  let x_3168 : f32 = u_xlat26.x;
  u_xlat26.x = exp2(x_3168);
  let x_3172 : f32 = u_xlat26.x;
  let x_3174 : f32 = x_1585.unity_SpecCube0_HDR.x;
  u_xlat26.x = (x_3172 * x_3174);
  let x_3177 : vec4<f32> = u_xlat8;
  let x_3179 : vec3<f32> = u_xlat26;
  u_xlat31 = (vec3<f32>(x_3177.x, x_3177.y, x_3177.z) * vec3<f32>(x_3179.x, x_3179.x, x_3179.x));
  let x_3182 : f32 = u_xlat76;
  let x_3184 : f32 = u_xlat76;
  let x_3188 : vec2<f32> = ((vec2<f32>(x_3182, x_3182) * vec2<f32>(x_3184, x_3184)) + vec2<f32>(-1.0f, 1.0f));
  let x_3189 : vec3<f32> = u_xlat26;
  u_xlat26 = vec3<f32>(x_3188.x, x_3189.y, x_3188.y);
  let x_3192 : f32 = u_xlat26.z;
  u_xlat76 = (1.0f / x_3192);
  let x_3195 : f32 = u_xlat3.x;
  u_xlat3.x = (x_3195 + -0.03999999910593032837f);
  let x_3200 : f32 = u_xlat7.x;
  let x_3202 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_3200 * x_3202) + 0.03999999910593032837f);
  let x_3207 : f32 = u_xlat76;
  let x_3209 : f32 = u_xlat3.x;
  u_xlat76 = (x_3207 * x_3209);
  let x_3211 : f32 = u_xlat76;
  let x_3213 : vec3<f32> = u_xlat31;
  u_xlat31 = (vec3<f32>(x_3211, x_3211, x_3211) * x_3213);
  let x_3215 : vec3<f32> = u_xlat29;
  let x_3216 : vec3<f32> = u_xlat2;
  let x_3218 : vec3<f32> = u_xlat31;
  u_xlat29 = ((x_3215 * x_3216) + x_3218);
  let x_3220 : f32 = u_xlat75;
  let x_3222 : f32 = x_1585.unity_LightData.z;
  u_xlat75 = (x_3220 * x_3222);
  let x_3224 : vec3<f32> = u_xlat28;
  let x_3226 : vec4<f32> = x_53.x_MainLightPosition;
  u_xlat76 = dot(x_3224, vec3<f32>(x_3226.x, x_3226.y, x_3226.z));
  let x_3229 : f32 = u_xlat76;
  u_xlat76 = clamp(x_3229, 0.0f, 1.0f);
  let x_3231 : f32 = u_xlat75;
  let x_3232 : f32 = u_xlat76;
  u_xlat75 = (x_3231 * x_3232);
  let x_3234 : f32 = u_xlat75;
  let x_3237 : vec4<f32> = x_53.x_MainLightColor;
  u_xlat31 = (vec3<f32>(x_3234, x_3234, x_3234) * vec3<f32>(x_3237.x, x_3237.y, x_3237.z));
  let x_3240 : vec4<f32> = u_xlat5;
  let x_3243 : vec4<f32> = x_53.x_MainLightPosition;
  let x_3245 : vec3<f32> = (vec3<f32>(x_3240.x, x_3240.y, x_3240.z) + vec3<f32>(x_3243.x, x_3243.y, x_3243.z));
  let x_3246 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3245.x, x_3245.y, x_3245.z, x_3246.w);
  let x_3248 : vec4<f32> = u_xlat7;
  let x_3250 : vec4<f32> = u_xlat7;
  u_xlat75 = dot(vec3<f32>(x_3248.x, x_3248.y, x_3248.z), vec3<f32>(x_3250.x, x_3250.y, x_3250.z));
  let x_3253 : f32 = u_xlat75;
  u_xlat75 = max(x_3253, 1.17549435e-38f);
  let x_3256 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_3256);
  let x_3258 : f32 = u_xlat75;
  let x_3260 : vec4<f32> = u_xlat7;
  let x_3262 : vec3<f32> = (vec3<f32>(x_3258, x_3258, x_3258) * vec3<f32>(x_3260.x, x_3260.y, x_3260.z));
  let x_3263 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3262.x, x_3262.y, x_3262.z, x_3263.w);
  let x_3265 : vec3<f32> = u_xlat28;
  let x_3266 : vec4<f32> = u_xlat7;
  u_xlat75 = dot(x_3265, vec3<f32>(x_3266.x, x_3266.y, x_3266.z));
  let x_3269 : f32 = u_xlat75;
  u_xlat75 = clamp(x_3269, 0.0f, 1.0f);
  let x_3272 : vec4<f32> = x_53.x_MainLightPosition;
  let x_3274 : vec4<f32> = u_xlat7;
  u_xlat76 = dot(vec3<f32>(x_3272.x, x_3272.y, x_3272.z), vec3<f32>(x_3274.x, x_3274.y, x_3274.z));
  let x_3277 : f32 = u_xlat76;
  u_xlat76 = clamp(x_3277, 0.0f, 1.0f);
  let x_3279 : f32 = u_xlat75;
  let x_3280 : f32 = u_xlat75;
  u_xlat75 = (x_3279 * x_3280);
  let x_3282 : f32 = u_xlat75;
  let x_3284 : f32 = u_xlat26.x;
  u_xlat75 = ((x_3282 * x_3284) + 1.00001001358032226562f);
  let x_3288 : f32 = u_xlat76;
  let x_3289 : f32 = u_xlat76;
  u_xlat76 = (x_3288 * x_3289);
  let x_3291 : f32 = u_xlat75;
  let x_3292 : f32 = u_xlat75;
  u_xlat75 = (x_3291 * x_3292);
  let x_3294 : f32 = u_xlat76;
  u_xlat76 = max(x_3294, 0.10000000149011611938f);
  let x_3297 : f32 = u_xlat75;
  let x_3298 : f32 = u_xlat76;
  u_xlat75 = (x_3297 * x_3298);
  let x_3300 : f32 = u_xlat80;
  let x_3301 : f32 = u_xlat75;
  u_xlat75 = (x_3300 * x_3301);
  let x_3303 : f32 = u_xlat77;
  let x_3304 : f32 = u_xlat75;
  u_xlat75 = (x_3303 / x_3304);
  let x_3306 : f32 = u_xlat75;
  let x_3310 : vec3<f32> = u_xlat2;
  let x_3311 : vec3<f32> = ((vec3<f32>(x_3306, x_3306, x_3306) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_3310);
  let x_3312 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3311.x, x_3311.y, x_3311.z, x_3312.w);
  let x_3314 : vec3<f32> = u_xlat31;
  let x_3315 : vec4<f32> = u_xlat7;
  u_xlat31 = (x_3314 * vec3<f32>(x_3315.x, x_3315.y, x_3315.z));
  let x_3320 : f32 = x_53.x_AdditionalLightsCount.x;
  let x_3322 : f32 = x_1585.unity_LightData.y;
  u_xlat75 = min(x_3320, x_3322);
  let x_3326 : f32 = u_xlat75;
  u_xlatu75 = bitcast<u32>(i32(x_3326));
  let x_3330 : f32 = u_xlat4.x;
  let x_3333 : f32 = x_131.x_AdditionalShadowFadeParams.x;
  let x_3336 : f32 = x_131.x_AdditionalShadowFadeParams.y;
  u_xlat76 = ((x_3330 * x_3333) + x_3336);
  let x_3338 : f32 = u_xlat76;
  u_xlat76 = clamp(x_3338, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_3350 : u32 = u_xlatu_loop_1;
    let x_3351 : u32 = u_xlatu75;
    if ((x_3350 < x_3351)) {
    } else {
      break;
    }
    let x_3354 : u32 = u_xlatu_loop_1;
    u_xlatu4 = (x_3354 >> 2u);
    let x_3358 : u32 = u_xlatu_loop_1;
    u_xlati82 = bitcast<i32>((x_3358 & 3u));
    let x_3361 : u32 = u_xlatu4;
    let x_3364 : vec4<f32> = x_1585.unity_LightIndices[bitcast<i32>(x_3361)];
    let x_3374 : i32 = u_xlati82;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_3379 : vec4<u32> = indexable[x_3374];
    u_xlat4.x = dot(x_3364, bitcast<vec4<f32>>(x_3379));
    let x_3385 : f32 = u_xlat4.x;
    u_xlati4 = i32(x_3385);
    let x_3387 : vec3<f32> = vs_INTERP8;
    let x_3398 : i32 = u_xlati4;
    let x_3400 : vec4<f32> = x_3397.x_AdditionalLightsPosition[x_3398];
    let x_3403 : i32 = u_xlati4;
    let x_3405 : vec4<f32> = x_3397.x_AdditionalLightsPosition[x_3403];
    let x_3407 : vec3<f32> = ((-(x_3387) * vec3<f32>(x_3400.w, x_3400.w, x_3400.w)) + vec3<f32>(x_3405.x, x_3405.y, x_3405.z));
    let x_3408 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3407.x, x_3407.y, x_3407.z, x_3408.w);
    let x_3411 : vec4<f32> = u_xlat8;
    let x_3413 : vec4<f32> = u_xlat8;
    u_xlat82 = dot(vec3<f32>(x_3411.x, x_3411.y, x_3411.z), vec3<f32>(x_3413.x, x_3413.y, x_3413.z));
    let x_3416 : f32 = u_xlat82;
    u_xlat82 = max(x_3416, 0.00006103515625f);
    let x_3420 : f32 = u_xlat82;
    u_xlat83 = inverseSqrt(x_3420);
    let x_3422 : f32 = u_xlat83;
    let x_3424 : vec4<f32> = u_xlat8;
    let x_3426 : vec3<f32> = (vec3<f32>(x_3422, x_3422, x_3422) * vec3<f32>(x_3424.x, x_3424.y, x_3424.z));
    let x_3427 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3426.x, x_3426.y, x_3426.z, x_3427.w);
    let x_3430 : f32 = u_xlat82;
    u_xlat84 = (1.0f / x_3430);
    let x_3432 : f32 = u_xlat82;
    let x_3433 : i32 = u_xlati4;
    let x_3435 : f32 = x_3397.x_AdditionalLightsAttenuation[x_3433].x;
    u_xlat82 = (x_3432 * x_3435);
    let x_3437 : f32 = u_xlat82;
    let x_3439 : f32 = u_xlat82;
    u_xlat82 = ((-(x_3437) * x_3439) + 1.0f);
    let x_3442 : f32 = u_xlat82;
    u_xlat82 = max(x_3442, 0.0f);
    let x_3444 : f32 = u_xlat82;
    let x_3445 : f32 = u_xlat82;
    u_xlat82 = (x_3444 * x_3445);
    let x_3447 : f32 = u_xlat82;
    let x_3448 : f32 = u_xlat84;
    u_xlat82 = (x_3447 * x_3448);
    let x_3450 : i32 = u_xlati4;
    let x_3452 : vec4<f32> = x_3397.x_AdditionalLightsSpotDir[x_3450];
    let x_3454 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_3452.x, x_3452.y, x_3452.z), vec3<f32>(x_3454.x, x_3454.y, x_3454.z));
    let x_3457 : f32 = u_xlat84;
    let x_3458 : i32 = u_xlati4;
    let x_3460 : f32 = x_3397.x_AdditionalLightsAttenuation[x_3458].z;
    let x_3462 : i32 = u_xlati4;
    let x_3464 : f32 = x_3397.x_AdditionalLightsAttenuation[x_3462].w;
    u_xlat84 = ((x_3457 * x_3460) + x_3464);
    let x_3466 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3466, 0.0f, 1.0f);
    let x_3468 : f32 = u_xlat84;
    let x_3469 : f32 = u_xlat84;
    u_xlat84 = (x_3468 * x_3469);
    let x_3471 : f32 = u_xlat82;
    let x_3472 : f32 = u_xlat84;
    u_xlat82 = (x_3471 * x_3472);
    let x_3476 : i32 = u_xlati4;
    let x_3478 : f32 = x_131.x_AdditionalShadowParams[x_3476].w;
    u_xlati84 = i32(x_3478);
    let x_3481 : i32 = u_xlati84;
    u_xlatb10.x = (x_3481 >= 0i);
    let x_3485 : bool = u_xlatb10.x;
    if (x_3485) {
      let x_3489 : i32 = u_xlati4;
      let x_3491 : f32 = x_131.x_AdditionalShadowParams[x_3489].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_3491, x_3491, x_3491, x_3491))));
      let x_3498 : bool = u_xlatb10.x;
      if (x_3498) {
        let x_3501 : vec4<f32> = u_xlat9;
        let x_3504 : vec4<f32> = u_xlat9;
        let x_3507 : vec4<bool> = (abs(vec4<f32>(x_3501.z, x_3501.z, x_3501.y, x_3501.z)) >= abs(vec4<f32>(x_3504.x, x_3504.y, x_3504.x, x_3504.x)));
        u_xlatb10 = vec3<bool>(x_3507.x, x_3507.y, x_3507.z);
        let x_3510 : bool = u_xlatb10.y;
        let x_3512 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_3510 & x_3512);
        let x_3516 : vec4<f32> = u_xlat9;
        let x_3519 : vec4<bool> = (-(vec4<f32>(x_3516.z, x_3516.y, x_3516.x, x_3516.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_3519.x, x_3519.y, x_3519.z);
        let x_3523 : bool = u_xlatb11.x;
        u_xlat35.x = select(4.0f, 5.0f, x_3523);
        let x_3528 : bool = u_xlatb11.y;
        u_xlat35.z = select(2.0f, 3.0f, x_3528);
        let x_3533 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_3533);
        let x_3537 : bool = u_xlatb10.z;
        if (x_3537) {
          let x_3542 : f32 = u_xlat35.z;
          x_3538 = x_3542;
        } else {
          let x_3545 : f32 = u_xlat11.x;
          x_3538 = x_3545;
        }
        let x_3546 : f32 = x_3538;
        u_xlat60.x = x_3546;
        let x_3549 : bool = u_xlatb10.x;
        if (x_3549) {
          let x_3554 : f32 = u_xlat35.x;
          x_3550 = x_3554;
        } else {
          let x_3557 : f32 = u_xlat60.x;
          x_3550 = x_3557;
        }
        let x_3558 : f32 = x_3550;
        u_xlat10.x = x_3558;
        let x_3560 : i32 = u_xlati4;
        let x_3562 : f32 = x_131.x_AdditionalShadowParams[x_3560].w;
        u_xlat35.x = trunc(x_3562);
        let x_3566 : f32 = u_xlat10.x;
        let x_3568 : f32 = u_xlat35.x;
        u_xlat10.x = (x_3566 + x_3568);
        let x_3572 : f32 = u_xlat10.x;
        u_xlati84 = i32(x_3572);
      }
      let x_3574 : i32 = u_xlati84;
      u_xlati84 = (x_3574 << bitcast<u32>(2i));
      let x_3576 : vec3<f32> = vs_INTERP8;
      let x_3579 : i32 = u_xlati84;
      let x_3582 : i32 = u_xlati84;
      let x_3586 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[((x_3579 + 1i) / 4i)][((x_3582 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_3576.y, x_3576.y, x_3576.y, x_3576.y) * x_3586);
      let x_3588 : i32 = u_xlati84;
      let x_3590 : i32 = u_xlati84;
      let x_3593 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[(x_3588 / 4i)][(x_3590 % 4i)];
      let x_3594 : vec3<f32> = vs_INTERP8;
      let x_3597 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_3593 * vec4<f32>(x_3594.x, x_3594.x, x_3594.x, x_3594.x)) + x_3597);
      let x_3599 : i32 = u_xlati84;
      let x_3602 : i32 = u_xlati84;
      let x_3606 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[((x_3599 + 2i) / 4i)][((x_3602 + 2i) % 4i)];
      let x_3607 : vec3<f32> = vs_INTERP8;
      let x_3610 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_3606 * vec4<f32>(x_3607.z, x_3607.z, x_3607.z, x_3607.z)) + x_3610);
      let x_3612 : vec4<f32> = u_xlat10;
      let x_3613 : i32 = u_xlati84;
      let x_3616 : i32 = u_xlati84;
      let x_3620 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[((x_3613 + 3i) / 4i)][((x_3616 + 3i) % 4i)];
      u_xlat10 = (x_3612 + x_3620);
      let x_3622 : vec4<f32> = u_xlat10;
      let x_3624 : vec4<f32> = u_xlat10;
      let x_3626 : vec3<f32> = (vec3<f32>(x_3622.x, x_3622.y, x_3622.z) / vec3<f32>(x_3624.w, x_3624.w, x_3624.w));
      let x_3627 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_3626.x, x_3626.y, x_3626.z, x_3627.w);
      let x_3630 : i32 = u_xlati4;
      let x_3632 : f32 = x_131.x_AdditionalShadowParams[x_3630].y;
      u_xlatb84 = (0.0f < x_3632);
      let x_3634 : bool = u_xlatb84;
      if (x_3634) {
        let x_3637 : i32 = u_xlati4;
        let x_3639 : f32 = x_131.x_AdditionalShadowParams[x_3637].y;
        u_xlatb84 = (1.0f == x_3639);
        let x_3641 : bool = u_xlatb84;
        if (x_3641) {
          let x_3644 : vec4<f32> = u_xlat10;
          let x_3648 : vec4<f32> = x_131.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_3644.x, x_3644.y, x_3644.x, x_3644.y) + x_3648);
          let x_3651 : vec4<f32> = u_xlat11;
          let x_3652 : vec2<f32> = vec2<f32>(x_3651.x, x_3651.y);
          let x_3654 : f32 = u_xlat10.z;
          txVec60 = vec3<f32>(x_3652.x, x_3652.y, x_3654);
          let x_3662 : vec3<f32> = txVec60;
          let x_3664 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3662.xy, x_3662.z);
          u_xlat12.x = x_3664;
          let x_3667 : vec4<f32> = u_xlat11;
          let x_3668 : vec2<f32> = vec2<f32>(x_3667.z, x_3667.w);
          let x_3670 : f32 = u_xlat10.z;
          txVec61 = vec3<f32>(x_3668.x, x_3668.y, x_3670);
          let x_3677 : vec3<f32> = txVec61;
          let x_3679 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3677.xy, x_3677.z);
          u_xlat12.y = x_3679;
          let x_3681 : vec4<f32> = u_xlat10;
          let x_3685 : vec4<f32> = x_131.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_3681.x, x_3681.y, x_3681.x, x_3681.y) + x_3685);
          let x_3688 : vec4<f32> = u_xlat11;
          let x_3689 : vec2<f32> = vec2<f32>(x_3688.x, x_3688.y);
          let x_3691 : f32 = u_xlat10.z;
          txVec62 = vec3<f32>(x_3689.x, x_3689.y, x_3691);
          let x_3698 : vec3<f32> = txVec62;
          let x_3700 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3698.xy, x_3698.z);
          u_xlat12.z = x_3700;
          let x_3703 : vec4<f32> = u_xlat11;
          let x_3704 : vec2<f32> = vec2<f32>(x_3703.z, x_3703.w);
          let x_3706 : f32 = u_xlat10.z;
          txVec63 = vec3<f32>(x_3704.x, x_3704.y, x_3706);
          let x_3713 : vec3<f32> = txVec63;
          let x_3715 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3713.xy, x_3713.z);
          u_xlat12.w = x_3715;
          let x_3717 : vec4<f32> = u_xlat12;
          u_xlat84 = dot(x_3717, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3721 : i32 = u_xlati4;
          let x_3723 : f32 = x_131.x_AdditionalShadowParams[x_3721].y;
          u_xlatb85 = (2.0f == x_3723);
          let x_3725 : bool = u_xlatb85;
          if (x_3725) {
            let x_3728 : vec4<f32> = u_xlat10;
            let x_3732 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_3735 : vec2<f32> = ((vec2<f32>(x_3728.x, x_3728.y) * vec2<f32>(x_3732.z, x_3732.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3736 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3735.x, x_3735.y, x_3736.z, x_3736.w);
            let x_3738 : vec4<f32> = u_xlat11;
            let x_3740 : vec2<f32> = floor(vec2<f32>(x_3738.x, x_3738.y));
            let x_3741 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3740.x, x_3740.y, x_3741.z, x_3741.w);
            let x_3744 : vec4<f32> = u_xlat10;
            let x_3747 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_3750 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3744.x, x_3744.y) * vec2<f32>(x_3747.z, x_3747.w)) + -(vec2<f32>(x_3750.x, x_3750.y)));
            let x_3754 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3754.x, x_3754.x, x_3754.y, x_3754.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3757 : vec4<f32> = u_xlat12;
            let x_3759 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3757.x, x_3757.x, x_3757.z, x_3757.z) * vec4<f32>(x_3759.x, x_3759.x, x_3759.z, x_3759.z));
            let x_3762 : vec4<f32> = u_xlat13;
            let x_3764 : vec2<f32> = (vec2<f32>(x_3762.y, x_3762.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3765 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3764.x, x_3765.y, x_3764.y, x_3765.w);
            let x_3767 : vec4<f32> = u_xlat13;
            let x_3770 : vec2<f32> = u_xlat61;
            let x_3772 : vec2<f32> = ((vec2<f32>(x_3767.x, x_3767.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3770));
            let x_3773 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3772.x, x_3772.y, x_3773.z, x_3773.w);
            let x_3775 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_3775) + vec2<f32>(1.0f, 1.0f));
            let x_3778 : vec2<f32> = u_xlat61;
            let x_3779 : vec2<f32> = min(x_3778, vec2<f32>(0.0f, 0.0f));
            let x_3780 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3779.x, x_3779.y, x_3780.z, x_3780.w);
            let x_3782 : vec4<f32> = u_xlat14;
            let x_3785 : vec4<f32> = u_xlat14;
            let x_3788 : vec2<f32> = u_xlat63;
            let x_3789 : vec2<f32> = ((-(vec2<f32>(x_3782.x, x_3782.y)) * vec2<f32>(x_3785.x, x_3785.y)) + x_3788);
            let x_3790 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3789.x, x_3789.y, x_3790.z, x_3790.w);
            let x_3792 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_3792, vec2<f32>(0.0f, 0.0f));
            let x_3794 : vec2<f32> = u_xlat61;
            let x_3796 : vec2<f32> = u_xlat61;
            let x_3798 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_3794) * x_3796) + vec2<f32>(x_3798.y, x_3798.w));
            let x_3801 : vec4<f32> = u_xlat14;
            let x_3803 : vec2<f32> = (vec2<f32>(x_3801.x, x_3801.y) + vec2<f32>(1.0f, 1.0f));
            let x_3804 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3803.x, x_3803.y, x_3804.z, x_3804.w);
            let x_3806 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_3806 + vec2<f32>(1.0f, 1.0f));
            let x_3808 : vec4<f32> = u_xlat13;
            let x_3810 : vec2<f32> = (vec2<f32>(x_3808.x, x_3808.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3811 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3810.x, x_3810.y, x_3811.z, x_3811.w);
            let x_3813 : vec2<f32> = u_xlat63;
            let x_3814 : vec2<f32> = (x_3813 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3815 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3814.x, x_3814.y, x_3815.z, x_3815.w);
            let x_3817 : vec4<f32> = u_xlat14;
            let x_3819 : vec2<f32> = (vec2<f32>(x_3817.x, x_3817.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3820 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3819.x, x_3819.y, x_3820.z, x_3820.w);
            let x_3822 : vec2<f32> = u_xlat61;
            let x_3823 : vec2<f32> = (x_3822 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3824 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3823.x, x_3823.y, x_3824.z, x_3824.w);
            let x_3826 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_3826.y, x_3826.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3830 : f32 = u_xlat14.x;
            u_xlat15.z = x_3830;
            let x_3833 : f32 = u_xlat61.x;
            u_xlat15.w = x_3833;
            let x_3836 : f32 = u_xlat16.x;
            u_xlat13.z = x_3836;
            let x_3839 : f32 = u_xlat12.x;
            u_xlat13.w = x_3839;
            let x_3841 : vec4<f32> = u_xlat13;
            let x_3843 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_3841.z, x_3841.w, x_3841.x, x_3841.z) + vec4<f32>(x_3843.z, x_3843.w, x_3843.x, x_3843.z));
            let x_3847 : f32 = u_xlat15.y;
            u_xlat14.z = x_3847;
            let x_3850 : f32 = u_xlat61.y;
            u_xlat14.w = x_3850;
            let x_3853 : f32 = u_xlat13.y;
            u_xlat16.z = x_3853;
            let x_3856 : f32 = u_xlat12.z;
            u_xlat16.w = x_3856;
            let x_3858 : vec4<f32> = u_xlat14;
            let x_3860 : vec4<f32> = u_xlat16;
            let x_3862 : vec3<f32> = (vec3<f32>(x_3858.z, x_3858.y, x_3858.w) + vec3<f32>(x_3860.z, x_3860.y, x_3860.w));
            let x_3863 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3862.x, x_3862.y, x_3862.z, x_3863.w);
            let x_3865 : vec4<f32> = u_xlat13;
            let x_3867 : vec4<f32> = u_xlat17;
            let x_3869 : vec3<f32> = (vec3<f32>(x_3865.x, x_3865.z, x_3865.w) / vec3<f32>(x_3867.z, x_3867.w, x_3867.y));
            let x_3870 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3869.x, x_3869.y, x_3869.z, x_3870.w);
            let x_3872 : vec4<f32> = u_xlat13;
            let x_3874 : vec3<f32> = (vec3<f32>(x_3872.x, x_3872.y, x_3872.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3875 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3874.x, x_3874.y, x_3874.z, x_3875.w);
            let x_3877 : vec4<f32> = u_xlat16;
            let x_3879 : vec4<f32> = u_xlat12;
            let x_3881 : vec3<f32> = (vec3<f32>(x_3877.z, x_3877.y, x_3877.w) / vec3<f32>(x_3879.x, x_3879.y, x_3879.z));
            let x_3882 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3881.x, x_3881.y, x_3881.z, x_3882.w);
            let x_3884 : vec4<f32> = u_xlat14;
            let x_3886 : vec3<f32> = (vec3<f32>(x_3884.x, x_3884.y, x_3884.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3887 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3886.x, x_3886.y, x_3886.z, x_3887.w);
            let x_3889 : vec4<f32> = u_xlat13;
            let x_3892 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_3894 : vec3<f32> = (vec3<f32>(x_3889.y, x_3889.x, x_3889.z) * vec3<f32>(x_3892.x, x_3892.x, x_3892.x));
            let x_3895 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3894.x, x_3894.y, x_3894.z, x_3895.w);
            let x_3897 : vec4<f32> = u_xlat14;
            let x_3900 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_3902 : vec3<f32> = (vec3<f32>(x_3897.x, x_3897.y, x_3897.z) * vec3<f32>(x_3900.y, x_3900.y, x_3900.y));
            let x_3903 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3902.x, x_3902.y, x_3902.z, x_3903.w);
            let x_3906 : f32 = u_xlat14.x;
            u_xlat13.w = x_3906;
            let x_3908 : vec4<f32> = u_xlat11;
            let x_3911 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_3914 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_3908.x, x_3908.y, x_3908.x, x_3908.y) * vec4<f32>(x_3911.x, x_3911.y, x_3911.x, x_3911.y)) + vec4<f32>(x_3914.y, x_3914.w, x_3914.x, x_3914.w));
            let x_3917 : vec4<f32> = u_xlat11;
            let x_3920 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_3923 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_3917.x, x_3917.y) * vec2<f32>(x_3920.x, x_3920.y)) + vec2<f32>(x_3923.z, x_3923.w));
            let x_3927 : f32 = u_xlat13.y;
            u_xlat14.w = x_3927;
            let x_3929 : vec4<f32> = u_xlat14;
            let x_3930 : vec2<f32> = vec2<f32>(x_3929.y, x_3929.z);
            let x_3931 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3931.x, x_3930.x, x_3931.z, x_3930.y);
            let x_3933 : vec4<f32> = u_xlat11;
            let x_3936 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_3939 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_3933.x, x_3933.y, x_3933.x, x_3933.y) * vec4<f32>(x_3936.x, x_3936.y, x_3936.x, x_3936.y)) + vec4<f32>(x_3939.x, x_3939.y, x_3939.z, x_3939.y));
            let x_3942 : vec4<f32> = u_xlat11;
            let x_3945 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_3948 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3942.x, x_3942.y, x_3942.x, x_3942.y) * vec4<f32>(x_3945.x, x_3945.y, x_3945.x, x_3945.y)) + vec4<f32>(x_3948.w, x_3948.y, x_3948.w, x_3948.z));
            let x_3951 : vec4<f32> = u_xlat11;
            let x_3954 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_3957 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_3951.x, x_3951.y, x_3951.x, x_3951.y) * vec4<f32>(x_3954.x, x_3954.y, x_3954.x, x_3954.y)) + vec4<f32>(x_3957.x, x_3957.w, x_3957.z, x_3957.w));
            let x_3960 : vec4<f32> = u_xlat12;
            let x_3962 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_3960.x, x_3960.x, x_3960.x, x_3960.y) * vec4<f32>(x_3962.z, x_3962.w, x_3962.y, x_3962.z));
            let x_3965 : vec4<f32> = u_xlat12;
            let x_3967 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_3965.y, x_3965.y, x_3965.z, x_3965.z) * x_3967);
            let x_3971 : f32 = u_xlat12.z;
            let x_3973 : f32 = u_xlat17.y;
            u_xlat85 = (x_3971 * x_3973);
            let x_3976 : vec4<f32> = u_xlat15;
            let x_3977 : vec2<f32> = vec2<f32>(x_3976.x, x_3976.y);
            let x_3979 : f32 = u_xlat10.z;
            txVec64 = vec3<f32>(x_3977.x, x_3977.y, x_3979);
            let x_3986 : vec3<f32> = txVec64;
            let x_3988 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3986.xy, x_3986.z);
            u_xlat11.x = x_3988;
            let x_3991 : vec4<f32> = u_xlat15;
            let x_3992 : vec2<f32> = vec2<f32>(x_3991.z, x_3991.w);
            let x_3994 : f32 = u_xlat10.z;
            txVec65 = vec3<f32>(x_3992.x, x_3992.y, x_3994);
            let x_4002 : vec3<f32> = txVec65;
            let x_4004 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4002.xy, x_4002.z);
            u_xlat36 = x_4004;
            let x_4005 : f32 = u_xlat36;
            let x_4007 : f32 = u_xlat18.y;
            u_xlat36 = (x_4005 * x_4007);
            let x_4010 : f32 = u_xlat18.x;
            let x_4012 : f32 = u_xlat11.x;
            let x_4014 : f32 = u_xlat36;
            u_xlat11.x = ((x_4010 * x_4012) + x_4014);
            let x_4018 : vec2<f32> = u_xlat61;
            let x_4020 : f32 = u_xlat10.z;
            txVec66 = vec3<f32>(x_4018.x, x_4018.y, x_4020);
            let x_4027 : vec3<f32> = txVec66;
            let x_4029 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4027.xy, x_4027.z);
            u_xlat36 = x_4029;
            let x_4031 : f32 = u_xlat18.z;
            let x_4032 : f32 = u_xlat36;
            let x_4035 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_4031 * x_4032) + x_4035);
            let x_4039 : vec4<f32> = u_xlat14;
            let x_4040 : vec2<f32> = vec2<f32>(x_4039.x, x_4039.y);
            let x_4042 : f32 = u_xlat10.z;
            txVec67 = vec3<f32>(x_4040.x, x_4040.y, x_4042);
            let x_4049 : vec3<f32> = txVec67;
            let x_4051 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4049.xy, x_4049.z);
            u_xlat36 = x_4051;
            let x_4053 : f32 = u_xlat18.w;
            let x_4054 : f32 = u_xlat36;
            let x_4057 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_4053 * x_4054) + x_4057);
            let x_4061 : vec4<f32> = u_xlat16;
            let x_4062 : vec2<f32> = vec2<f32>(x_4061.x, x_4061.y);
            let x_4064 : f32 = u_xlat10.z;
            txVec68 = vec3<f32>(x_4062.x, x_4062.y, x_4064);
            let x_4071 : vec3<f32> = txVec68;
            let x_4073 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4071.xy, x_4071.z);
            u_xlat36 = x_4073;
            let x_4075 : f32 = u_xlat19.x;
            let x_4076 : f32 = u_xlat36;
            let x_4079 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_4075 * x_4076) + x_4079);
            let x_4083 : vec4<f32> = u_xlat16;
            let x_4084 : vec2<f32> = vec2<f32>(x_4083.z, x_4083.w);
            let x_4086 : f32 = u_xlat10.z;
            txVec69 = vec3<f32>(x_4084.x, x_4084.y, x_4086);
            let x_4093 : vec3<f32> = txVec69;
            let x_4095 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4093.xy, x_4093.z);
            u_xlat36 = x_4095;
            let x_4097 : f32 = u_xlat19.y;
            let x_4098 : f32 = u_xlat36;
            let x_4101 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_4097 * x_4098) + x_4101);
            let x_4105 : vec4<f32> = u_xlat14;
            let x_4106 : vec2<f32> = vec2<f32>(x_4105.z, x_4105.w);
            let x_4108 : f32 = u_xlat10.z;
            txVec70 = vec3<f32>(x_4106.x, x_4106.y, x_4108);
            let x_4115 : vec3<f32> = txVec70;
            let x_4117 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4115.xy, x_4115.z);
            u_xlat36 = x_4117;
            let x_4119 : f32 = u_xlat19.z;
            let x_4120 : f32 = u_xlat36;
            let x_4123 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_4119 * x_4120) + x_4123);
            let x_4127 : vec4<f32> = u_xlat13;
            let x_4128 : vec2<f32> = vec2<f32>(x_4127.x, x_4127.y);
            let x_4130 : f32 = u_xlat10.z;
            txVec71 = vec3<f32>(x_4128.x, x_4128.y, x_4130);
            let x_4137 : vec3<f32> = txVec71;
            let x_4139 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4137.xy, x_4137.z);
            u_xlat36 = x_4139;
            let x_4141 : f32 = u_xlat19.w;
            let x_4142 : f32 = u_xlat36;
            let x_4145 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_4141 * x_4142) + x_4145);
            let x_4149 : vec4<f32> = u_xlat13;
            let x_4150 : vec2<f32> = vec2<f32>(x_4149.z, x_4149.w);
            let x_4152 : f32 = u_xlat10.z;
            txVec72 = vec3<f32>(x_4150.x, x_4150.y, x_4152);
            let x_4159 : vec3<f32> = txVec72;
            let x_4161 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4159.xy, x_4159.z);
            u_xlat36 = x_4161;
            let x_4162 : f32 = u_xlat85;
            let x_4163 : f32 = u_xlat36;
            let x_4166 : f32 = u_xlat11.x;
            u_xlat84 = ((x_4162 * x_4163) + x_4166);
          } else {
            let x_4169 : vec4<f32> = u_xlat10;
            let x_4172 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4175 : vec2<f32> = ((vec2<f32>(x_4169.x, x_4169.y) * vec2<f32>(x_4172.z, x_4172.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4176 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_4175.x, x_4175.y, x_4176.z, x_4176.w);
            let x_4178 : vec4<f32> = u_xlat11;
            let x_4180 : vec2<f32> = floor(vec2<f32>(x_4178.x, x_4178.y));
            let x_4181 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_4180.x, x_4180.y, x_4181.z, x_4181.w);
            let x_4183 : vec4<f32> = u_xlat10;
            let x_4186 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4189 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_4183.x, x_4183.y) * vec2<f32>(x_4186.z, x_4186.w)) + -(vec2<f32>(x_4189.x, x_4189.y)));
            let x_4193 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_4193.x, x_4193.x, x_4193.y, x_4193.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4196 : vec4<f32> = u_xlat12;
            let x_4198 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_4196.x, x_4196.x, x_4196.z, x_4196.z) * vec4<f32>(x_4198.x, x_4198.x, x_4198.z, x_4198.z));
            let x_4201 : vec4<f32> = u_xlat13;
            let x_4203 : vec2<f32> = (vec2<f32>(x_4201.y, x_4201.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_4204 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4204.x, x_4203.x, x_4204.z, x_4203.y);
            let x_4206 : vec4<f32> = u_xlat13;
            let x_4209 : vec2<f32> = u_xlat61;
            let x_4211 : vec2<f32> = ((vec2<f32>(x_4206.x, x_4206.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4209));
            let x_4212 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4211.x, x_4212.y, x_4211.y, x_4212.w);
            let x_4214 : vec2<f32> = u_xlat61;
            let x_4216 : vec2<f32> = (-(x_4214) + vec2<f32>(1.0f, 1.0f));
            let x_4217 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4216.x, x_4216.y, x_4217.z, x_4217.w);
            let x_4219 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_4219, vec2<f32>(0.0f, 0.0f));
            let x_4221 : vec2<f32> = u_xlat63;
            let x_4223 : vec2<f32> = u_xlat63;
            let x_4225 : vec4<f32> = u_xlat13;
            let x_4227 : vec2<f32> = ((-(x_4221) * x_4223) + vec2<f32>(x_4225.x, x_4225.y));
            let x_4228 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4227.x, x_4227.y, x_4228.z, x_4228.w);
            let x_4230 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_4230, vec2<f32>(0.0f, 0.0f));
            let x_4233 : vec2<f32> = u_xlat63;
            let x_4235 : vec2<f32> = u_xlat63;
            let x_4237 : vec4<f32> = u_xlat12;
            let x_4239 : vec2<f32> = ((-(x_4233) * x_4235) + vec2<f32>(x_4237.y, x_4237.w));
            let x_4240 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_4239.x, x_4240.y, x_4239.y);
            let x_4242 : vec4<f32> = u_xlat13;
            let x_4244 : vec2<f32> = (vec2<f32>(x_4242.x, x_4242.y) + vec2<f32>(2.0f, 2.0f));
            let x_4245 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4244.x, x_4244.y, x_4245.z, x_4245.w);
            let x_4247 : vec3<f32> = u_xlat37;
            let x_4249 : vec2<f32> = (vec2<f32>(x_4247.x, x_4247.z) + vec2<f32>(2.0f, 2.0f));
            let x_4250 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4250.x, x_4249.x, x_4250.z, x_4249.y);
            let x_4253 : f32 = u_xlat12.y;
            u_xlat15.z = (x_4253 * 0.08163200318813323975f);
            let x_4256 : vec4<f32> = u_xlat12;
            let x_4258 : vec3<f32> = (vec3<f32>(x_4256.z, x_4256.x, x_4256.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_4259 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4258.x, x_4258.y, x_4258.z, x_4259.w);
            let x_4261 : vec4<f32> = u_xlat13;
            let x_4263 : vec2<f32> = (vec2<f32>(x_4261.x, x_4261.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_4264 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4263.x, x_4263.y, x_4264.z, x_4264.w);
            let x_4267 : f32 = u_xlat16.y;
            u_xlat15.x = x_4267;
            let x_4269 : vec2<f32> = u_xlat61;
            let x_4272 : vec2<f32> = ((vec2<f32>(x_4269.x, x_4269.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4273 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4273.x, x_4272.x, x_4273.z, x_4272.y);
            let x_4275 : vec2<f32> = u_xlat61;
            let x_4278 : vec2<f32> = ((vec2<f32>(x_4275.x, x_4275.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4279 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4278.x, x_4279.y, x_4278.y, x_4279.w);
            let x_4282 : f32 = u_xlat12.x;
            u_xlat13.y = x_4282;
            let x_4285 : f32 = u_xlat14.y;
            u_xlat13.w = x_4285;
            let x_4287 : vec4<f32> = u_xlat13;
            let x_4288 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_4287 + x_4288);
            let x_4290 : vec2<f32> = u_xlat61;
            let x_4293 : vec2<f32> = ((vec2<f32>(x_4290.y, x_4290.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4294 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4294.x, x_4293.x, x_4294.z, x_4293.y);
            let x_4296 : vec2<f32> = u_xlat61;
            let x_4299 : vec2<f32> = ((vec2<f32>(x_4296.y, x_4296.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4300 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4299.x, x_4300.y, x_4299.y, x_4300.w);
            let x_4303 : f32 = u_xlat12.y;
            u_xlat14.y = x_4303;
            let x_4305 : vec4<f32> = u_xlat14;
            let x_4306 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_4305 + x_4306);
            let x_4308 : vec4<f32> = u_xlat13;
            let x_4309 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_4308 / x_4309);
            let x_4311 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_4311 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4313 : vec4<f32> = u_xlat14;
            let x_4314 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_4313 / x_4314);
            let x_4316 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_4316 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4318 : vec4<f32> = u_xlat13;
            let x_4321 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_4318.w, x_4318.x, x_4318.y, x_4318.z) * vec4<f32>(x_4321.x, x_4321.x, x_4321.x, x_4321.x));
            let x_4324 : vec4<f32> = u_xlat14;
            let x_4327 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_4324.x, x_4324.w, x_4324.y, x_4324.z) * vec4<f32>(x_4327.y, x_4327.y, x_4327.y, x_4327.y));
            let x_4330 : vec4<f32> = u_xlat13;
            let x_4331 : vec3<f32> = vec3<f32>(x_4330.y, x_4330.z, x_4330.w);
            let x_4332 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4331.x, x_4332.y, x_4331.y, x_4331.z);
            let x_4335 : f32 = u_xlat14.x;
            u_xlat16.y = x_4335;
            let x_4337 : vec4<f32> = u_xlat11;
            let x_4340 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4343 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_4337.x, x_4337.y, x_4337.x, x_4337.y) * vec4<f32>(x_4340.x, x_4340.y, x_4340.x, x_4340.y)) + vec4<f32>(x_4343.x, x_4343.y, x_4343.z, x_4343.y));
            let x_4346 : vec4<f32> = u_xlat11;
            let x_4349 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4352 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_4346.x, x_4346.y) * vec2<f32>(x_4349.x, x_4349.y)) + vec2<f32>(x_4352.w, x_4352.y));
            let x_4356 : f32 = u_xlat16.y;
            u_xlat13.y = x_4356;
            let x_4359 : f32 = u_xlat14.z;
            u_xlat16.y = x_4359;
            let x_4361 : vec4<f32> = u_xlat11;
            let x_4364 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4367 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_4361.x, x_4361.y, x_4361.x, x_4361.y) * vec4<f32>(x_4364.x, x_4364.y, x_4364.x, x_4364.y)) + vec4<f32>(x_4367.x, x_4367.y, x_4367.z, x_4367.y));
            let x_4370 : vec4<f32> = u_xlat11;
            let x_4373 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4376 : vec4<f32> = u_xlat16;
            let x_4378 : vec2<f32> = ((vec2<f32>(x_4370.x, x_4370.y) * vec2<f32>(x_4373.x, x_4373.y)) + vec2<f32>(x_4376.w, x_4376.y));
            let x_4379 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_4378.x, x_4378.y, x_4379.z, x_4379.w);
            let x_4382 : f32 = u_xlat16.y;
            u_xlat13.z = x_4382;
            let x_4384 : vec4<f32> = u_xlat11;
            let x_4387 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4390 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_4384.x, x_4384.y, x_4384.x, x_4384.y) * vec4<f32>(x_4387.x, x_4387.y, x_4387.x, x_4387.y)) + vec4<f32>(x_4390.x, x_4390.y, x_4390.x, x_4390.z));
            let x_4394 : f32 = u_xlat14.w;
            u_xlat16.y = x_4394;
            let x_4397 : vec4<f32> = u_xlat11;
            let x_4400 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4403 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_4397.x, x_4397.y, x_4397.x, x_4397.y) * vec4<f32>(x_4400.x, x_4400.y, x_4400.x, x_4400.y)) + vec4<f32>(x_4403.x, x_4403.y, x_4403.z, x_4403.y));
            let x_4407 : vec4<f32> = u_xlat11;
            let x_4410 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4413 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_4407.x, x_4407.y) * vec2<f32>(x_4410.x, x_4410.y)) + vec2<f32>(x_4413.w, x_4413.y));
            let x_4417 : f32 = u_xlat16.y;
            u_xlat13.w = x_4417;
            let x_4420 : vec4<f32> = u_xlat11;
            let x_4423 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4426 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_4420.x, x_4420.y) * vec2<f32>(x_4423.x, x_4423.y)) + vec2<f32>(x_4426.x, x_4426.w));
            let x_4429 : vec4<f32> = u_xlat16;
            let x_4430 : vec3<f32> = vec3<f32>(x_4429.x, x_4429.z, x_4429.w);
            let x_4431 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4430.x, x_4431.y, x_4430.y, x_4430.z);
            let x_4433 : vec4<f32> = u_xlat11;
            let x_4436 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4439 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_4433.x, x_4433.y, x_4433.x, x_4433.y) * vec4<f32>(x_4436.x, x_4436.y, x_4436.x, x_4436.y)) + vec4<f32>(x_4439.x, x_4439.y, x_4439.z, x_4439.y));
            let x_4443 : vec4<f32> = u_xlat11;
            let x_4446 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4449 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_4443.x, x_4443.y) * vec2<f32>(x_4446.x, x_4446.y)) + vec2<f32>(x_4449.w, x_4449.y));
            let x_4453 : f32 = u_xlat13.x;
            u_xlat14.x = x_4453;
            let x_4455 : vec4<f32> = u_xlat11;
            let x_4458 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4461 : vec4<f32> = u_xlat14;
            let x_4463 : vec2<f32> = ((vec2<f32>(x_4455.x, x_4455.y) * vec2<f32>(x_4458.x, x_4458.y)) + vec2<f32>(x_4461.x, x_4461.y));
            let x_4464 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_4463.x, x_4463.y, x_4464.z, x_4464.w);
            let x_4467 : vec4<f32> = u_xlat12;
            let x_4469 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_4467.x, x_4467.x, x_4467.x, x_4467.x) * x_4469);
            let x_4472 : vec4<f32> = u_xlat12;
            let x_4474 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_4472.y, x_4472.y, x_4472.y, x_4472.y) * x_4474);
            let x_4477 : vec4<f32> = u_xlat12;
            let x_4479 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_4477.z, x_4477.z, x_4477.z, x_4477.z) * x_4479);
            let x_4481 : vec4<f32> = u_xlat12;
            let x_4483 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_4481.w, x_4481.w, x_4481.w, x_4481.w) * x_4483);
            let x_4486 : vec4<f32> = u_xlat17;
            let x_4487 : vec2<f32> = vec2<f32>(x_4486.x, x_4486.y);
            let x_4489 : f32 = u_xlat10.z;
            txVec73 = vec3<f32>(x_4487.x, x_4487.y, x_4489);
            let x_4496 : vec3<f32> = txVec73;
            let x_4498 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4496.xy, x_4496.z);
            u_xlat85 = x_4498;
            let x_4500 : vec4<f32> = u_xlat17;
            let x_4501 : vec2<f32> = vec2<f32>(x_4500.z, x_4500.w);
            let x_4503 : f32 = u_xlat10.z;
            txVec74 = vec3<f32>(x_4501.x, x_4501.y, x_4503);
            let x_4510 : vec3<f32> = txVec74;
            let x_4512 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4510.xy, x_4510.z);
            u_xlat13.x = x_4512;
            let x_4515 : f32 = u_xlat13.x;
            let x_4517 : f32 = u_xlat22.y;
            u_xlat13.x = (x_4515 * x_4517);
            let x_4521 : f32 = u_xlat22.x;
            let x_4522 : f32 = u_xlat85;
            let x_4525 : f32 = u_xlat13.x;
            u_xlat85 = ((x_4521 * x_4522) + x_4525);
            let x_4528 : vec2<f32> = u_xlat61;
            let x_4530 : f32 = u_xlat10.z;
            txVec75 = vec3<f32>(x_4528.x, x_4528.y, x_4530);
            let x_4537 : vec3<f32> = txVec75;
            let x_4539 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4537.xy, x_4537.z);
            u_xlat61.x = x_4539;
            let x_4542 : f32 = u_xlat22.z;
            let x_4544 : f32 = u_xlat61.x;
            let x_4546 : f32 = u_xlat85;
            u_xlat85 = ((x_4542 * x_4544) + x_4546);
            let x_4549 : vec4<f32> = u_xlat20;
            let x_4550 : vec2<f32> = vec2<f32>(x_4549.x, x_4549.y);
            let x_4552 : f32 = u_xlat10.z;
            txVec76 = vec3<f32>(x_4550.x, x_4550.y, x_4552);
            let x_4559 : vec3<f32> = txVec76;
            let x_4561 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4559.xy, x_4559.z);
            u_xlat61.x = x_4561;
            let x_4564 : f32 = u_xlat22.w;
            let x_4566 : f32 = u_xlat61.x;
            let x_4568 : f32 = u_xlat85;
            u_xlat85 = ((x_4564 * x_4566) + x_4568);
            let x_4571 : vec4<f32> = u_xlat18;
            let x_4572 : vec2<f32> = vec2<f32>(x_4571.x, x_4571.y);
            let x_4574 : f32 = u_xlat10.z;
            txVec77 = vec3<f32>(x_4572.x, x_4572.y, x_4574);
            let x_4581 : vec3<f32> = txVec77;
            let x_4583 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4581.xy, x_4581.z);
            u_xlat61.x = x_4583;
            let x_4586 : f32 = u_xlat23.x;
            let x_4588 : f32 = u_xlat61.x;
            let x_4590 : f32 = u_xlat85;
            u_xlat85 = ((x_4586 * x_4588) + x_4590);
            let x_4593 : vec4<f32> = u_xlat18;
            let x_4594 : vec2<f32> = vec2<f32>(x_4593.z, x_4593.w);
            let x_4596 : f32 = u_xlat10.z;
            txVec78 = vec3<f32>(x_4594.x, x_4594.y, x_4596);
            let x_4603 : vec3<f32> = txVec78;
            let x_4605 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4603.xy, x_4603.z);
            u_xlat61.x = x_4605;
            let x_4608 : f32 = u_xlat23.y;
            let x_4610 : f32 = u_xlat61.x;
            let x_4612 : f32 = u_xlat85;
            u_xlat85 = ((x_4608 * x_4610) + x_4612);
            let x_4615 : vec4<f32> = u_xlat19;
            let x_4616 : vec2<f32> = vec2<f32>(x_4615.x, x_4615.y);
            let x_4618 : f32 = u_xlat10.z;
            txVec79 = vec3<f32>(x_4616.x, x_4616.y, x_4618);
            let x_4625 : vec3<f32> = txVec79;
            let x_4627 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4625.xy, x_4625.z);
            u_xlat61.x = x_4627;
            let x_4630 : f32 = u_xlat23.z;
            let x_4632 : f32 = u_xlat61.x;
            let x_4634 : f32 = u_xlat85;
            u_xlat85 = ((x_4630 * x_4632) + x_4634);
            let x_4637 : vec4<f32> = u_xlat20;
            let x_4638 : vec2<f32> = vec2<f32>(x_4637.z, x_4637.w);
            let x_4640 : f32 = u_xlat10.z;
            txVec80 = vec3<f32>(x_4638.x, x_4638.y, x_4640);
            let x_4647 : vec3<f32> = txVec80;
            let x_4649 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4647.xy, x_4647.z);
            u_xlat61.x = x_4649;
            let x_4652 : f32 = u_xlat23.w;
            let x_4654 : f32 = u_xlat61.x;
            let x_4656 : f32 = u_xlat85;
            u_xlat85 = ((x_4652 * x_4654) + x_4656);
            let x_4659 : vec4<f32> = u_xlat21;
            let x_4660 : vec2<f32> = vec2<f32>(x_4659.x, x_4659.y);
            let x_4662 : f32 = u_xlat10.z;
            txVec81 = vec3<f32>(x_4660.x, x_4660.y, x_4662);
            let x_4669 : vec3<f32> = txVec81;
            let x_4671 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4669.xy, x_4669.z);
            u_xlat61.x = x_4671;
            let x_4674 : f32 = u_xlat24.x;
            let x_4676 : f32 = u_xlat61.x;
            let x_4678 : f32 = u_xlat85;
            u_xlat85 = ((x_4674 * x_4676) + x_4678);
            let x_4681 : vec4<f32> = u_xlat21;
            let x_4682 : vec2<f32> = vec2<f32>(x_4681.z, x_4681.w);
            let x_4684 : f32 = u_xlat10.z;
            txVec82 = vec3<f32>(x_4682.x, x_4682.y, x_4684);
            let x_4691 : vec3<f32> = txVec82;
            let x_4693 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4691.xy, x_4691.z);
            u_xlat61.x = x_4693;
            let x_4696 : f32 = u_xlat24.y;
            let x_4698 : f32 = u_xlat61.x;
            let x_4700 : f32 = u_xlat85;
            u_xlat85 = ((x_4696 * x_4698) + x_4700);
            let x_4703 : vec2<f32> = u_xlat38;
            let x_4705 : f32 = u_xlat10.z;
            txVec83 = vec3<f32>(x_4703.x, x_4703.y, x_4705);
            let x_4712 : vec3<f32> = txVec83;
            let x_4714 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4712.xy, x_4712.z);
            u_xlat61.x = x_4714;
            let x_4717 : f32 = u_xlat24.z;
            let x_4719 : f32 = u_xlat61.x;
            let x_4721 : f32 = u_xlat85;
            u_xlat85 = ((x_4717 * x_4719) + x_4721);
            let x_4724 : vec2<f32> = u_xlat69;
            let x_4726 : f32 = u_xlat10.z;
            txVec84 = vec3<f32>(x_4724.x, x_4724.y, x_4726);
            let x_4733 : vec3<f32> = txVec84;
            let x_4735 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4733.xy, x_4733.z);
            u_xlat61.x = x_4735;
            let x_4738 : f32 = u_xlat24.w;
            let x_4740 : f32 = u_xlat61.x;
            let x_4742 : f32 = u_xlat85;
            u_xlat85 = ((x_4738 * x_4740) + x_4742);
            let x_4745 : vec4<f32> = u_xlat16;
            let x_4746 : vec2<f32> = vec2<f32>(x_4745.x, x_4745.y);
            let x_4748 : f32 = u_xlat10.z;
            txVec85 = vec3<f32>(x_4746.x, x_4746.y, x_4748);
            let x_4755 : vec3<f32> = txVec85;
            let x_4757 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4755.xy, x_4755.z);
            u_xlat61.x = x_4757;
            let x_4760 : f32 = u_xlat12.x;
            let x_4762 : f32 = u_xlat61.x;
            let x_4764 : f32 = u_xlat85;
            u_xlat85 = ((x_4760 * x_4762) + x_4764);
            let x_4767 : vec4<f32> = u_xlat16;
            let x_4768 : vec2<f32> = vec2<f32>(x_4767.z, x_4767.w);
            let x_4770 : f32 = u_xlat10.z;
            txVec86 = vec3<f32>(x_4768.x, x_4768.y, x_4770);
            let x_4777 : vec3<f32> = txVec86;
            let x_4779 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4777.xy, x_4777.z);
            u_xlat61.x = x_4779;
            let x_4782 : f32 = u_xlat12.y;
            let x_4784 : f32 = u_xlat61.x;
            let x_4786 : f32 = u_xlat85;
            u_xlat85 = ((x_4782 * x_4784) + x_4786);
            let x_4789 : vec2<f32> = u_xlat64;
            let x_4791 : f32 = u_xlat10.z;
            txVec87 = vec3<f32>(x_4789.x, x_4789.y, x_4791);
            let x_4798 : vec3<f32> = txVec87;
            let x_4800 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4798.xy, x_4798.z);
            u_xlat61.x = x_4800;
            let x_4803 : f32 = u_xlat12.z;
            let x_4805 : f32 = u_xlat61.x;
            let x_4807 : f32 = u_xlat85;
            u_xlat85 = ((x_4803 * x_4805) + x_4807);
            let x_4810 : vec4<f32> = u_xlat11;
            let x_4811 : vec2<f32> = vec2<f32>(x_4810.x, x_4810.y);
            let x_4813 : f32 = u_xlat10.z;
            txVec88 = vec3<f32>(x_4811.x, x_4811.y, x_4813);
            let x_4820 : vec3<f32> = txVec88;
            let x_4822 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4820.xy, x_4820.z);
            u_xlat11.x = x_4822;
            let x_4825 : f32 = u_xlat12.w;
            let x_4827 : f32 = u_xlat11.x;
            let x_4829 : f32 = u_xlat85;
            u_xlat84 = ((x_4825 * x_4827) + x_4829);
          }
        }
      } else {
        let x_4833 : vec4<f32> = u_xlat10;
        let x_4834 : vec2<f32> = vec2<f32>(x_4833.x, x_4833.y);
        let x_4836 : f32 = u_xlat10.z;
        txVec89 = vec3<f32>(x_4834.x, x_4834.y, x_4836);
        let x_4843 : vec3<f32> = txVec89;
        let x_4845 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4843.xy, x_4843.z);
        u_xlat84 = x_4845;
      }
      let x_4846 : i32 = u_xlati4;
      let x_4848 : f32 = x_131.x_AdditionalShadowParams[x_4846].x;
      u_xlat10.x = (1.0f + -(x_4848));
      let x_4852 : f32 = u_xlat84;
      let x_4853 : i32 = u_xlati4;
      let x_4855 : f32 = x_131.x_AdditionalShadowParams[x_4853].x;
      let x_4858 : f32 = u_xlat10.x;
      u_xlat84 = ((x_4852 * x_4855) + x_4858);
      let x_4861 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_4861);
      let x_4866 : f32 = u_xlat10.z;
      u_xlatb35 = (x_4866 >= 1.0f);
      let x_4868 : bool = u_xlatb35;
      let x_4870 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_4868 | x_4870);
      let x_4874 : bool = u_xlatb10.x;
      let x_4875 : f32 = u_xlat84;
      u_xlat84 = select(x_4875, 1.0f, x_4874);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_4878 : f32 = u_xlat84;
    u_xlat10.x = (-(x_4878) + 1.0f);
    let x_4882 : f32 = u_xlat76;
    let x_4884 : f32 = u_xlat10.x;
    let x_4886 : f32 = u_xlat84;
    u_xlat84 = ((x_4882 * x_4884) + x_4886);
    let x_4888 : f32 = u_xlat82;
    let x_4889 : f32 = u_xlat84;
    u_xlat82 = (x_4888 * x_4889);
    let x_4891 : vec3<f32> = u_xlat28;
    let x_4892 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(x_4891, vec3<f32>(x_4892.x, x_4892.y, x_4892.z));
    let x_4895 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4895, 0.0f, 1.0f);
    let x_4897 : f32 = u_xlat82;
    let x_4898 : f32 = u_xlat84;
    u_xlat82 = (x_4897 * x_4898);
    let x_4900 : f32 = u_xlat82;
    let x_4902 : i32 = u_xlati4;
    let x_4904 : vec4<f32> = x_3397.x_AdditionalLightsColor[x_4902];
    let x_4906 : vec3<f32> = (vec3<f32>(x_4900, x_4900, x_4900) * vec3<f32>(x_4904.x, x_4904.y, x_4904.z));
    let x_4907 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_4906.x, x_4906.y, x_4906.z, x_4907.w);
    let x_4909 : vec4<f32> = u_xlat8;
    let x_4911 : f32 = u_xlat83;
    let x_4914 : vec4<f32> = u_xlat5;
    let x_4916 : vec3<f32> = ((vec3<f32>(x_4909.x, x_4909.y, x_4909.z) * vec3<f32>(x_4911, x_4911, x_4911)) + vec3<f32>(x_4914.x, x_4914.y, x_4914.z));
    let x_4917 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4916.x, x_4916.y, x_4916.z, x_4917.w);
    let x_4919 : vec4<f32> = u_xlat8;
    let x_4921 : vec4<f32> = u_xlat8;
    u_xlat4.x = dot(vec3<f32>(x_4919.x, x_4919.y, x_4919.z), vec3<f32>(x_4921.x, x_4921.y, x_4921.z));
    let x_4926 : f32 = u_xlat4.x;
    u_xlat4.x = max(x_4926, 1.17549435e-38f);
    let x_4930 : f32 = u_xlat4.x;
    u_xlat4.x = inverseSqrt(x_4930);
    let x_4933 : vec4<f32> = u_xlat4;
    let x_4935 : vec4<f32> = u_xlat8;
    let x_4937 : vec3<f32> = (vec3<f32>(x_4933.x, x_4933.x, x_4933.x) * vec3<f32>(x_4935.x, x_4935.y, x_4935.z));
    let x_4938 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4937.x, x_4937.y, x_4937.z, x_4938.w);
    let x_4940 : vec3<f32> = u_xlat28;
    let x_4941 : vec4<f32> = u_xlat8;
    u_xlat4.x = dot(x_4940, vec3<f32>(x_4941.x, x_4941.y, x_4941.z));
    let x_4946 : f32 = u_xlat4.x;
    u_xlat4.x = clamp(x_4946, 0.0f, 1.0f);
    let x_4949 : vec4<f32> = u_xlat9;
    let x_4951 : vec4<f32> = u_xlat8;
    u_xlat82 = dot(vec3<f32>(x_4949.x, x_4949.y, x_4949.z), vec3<f32>(x_4951.x, x_4951.y, x_4951.z));
    let x_4954 : f32 = u_xlat82;
    u_xlat82 = clamp(x_4954, 0.0f, 1.0f);
    let x_4957 : f32 = u_xlat4.x;
    let x_4959 : f32 = u_xlat4.x;
    u_xlat4.x = (x_4957 * x_4959);
    let x_4963 : f32 = u_xlat4.x;
    let x_4965 : f32 = u_xlat26.x;
    u_xlat4.x = ((x_4963 * x_4965) + 1.00001001358032226562f);
    let x_4969 : f32 = u_xlat82;
    let x_4970 : f32 = u_xlat82;
    u_xlat82 = (x_4969 * x_4970);
    let x_4973 : f32 = u_xlat4.x;
    let x_4975 : f32 = u_xlat4.x;
    u_xlat4.x = (x_4973 * x_4975);
    let x_4978 : f32 = u_xlat82;
    u_xlat82 = max(x_4978, 0.10000000149011611938f);
    let x_4981 : f32 = u_xlat4.x;
    let x_4982 : f32 = u_xlat82;
    u_xlat4.x = (x_4981 * x_4982);
    let x_4985 : f32 = u_xlat80;
    let x_4987 : f32 = u_xlat4.x;
    u_xlat4.x = (x_4985 * x_4987);
    let x_4990 : f32 = u_xlat77;
    let x_4992 : f32 = u_xlat4.x;
    u_xlat4.x = (x_4990 / x_4992);
    let x_4995 : vec4<f32> = u_xlat4;
    let x_4998 : vec3<f32> = u_xlat2;
    let x_4999 : vec3<f32> = ((vec3<f32>(x_4995.x, x_4995.x, x_4995.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_4998);
    let x_5000 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4999.x, x_4999.y, x_4999.z, x_5000.w);
    let x_5002 : vec4<f32> = u_xlat8;
    let x_5004 : vec4<f32> = u_xlat10;
    let x_5007 : vec4<f32> = u_xlat7;
    let x_5009 : vec3<f32> = ((vec3<f32>(x_5002.x, x_5002.y, x_5002.z) * vec3<f32>(x_5004.x, x_5004.y, x_5004.z)) + vec3<f32>(x_5007.x, x_5007.y, x_5007.z));
    let x_5010 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_5009.x, x_5009.y, x_5009.z, x_5010.w);

    continuing {
      let x_5012 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_5012 + bitcast<u32>(1i));
    }
  }
  let x_5014 : vec3<f32> = u_xlat29;
  let x_5015 : vec4<f32> = u_xlat6;
  let x_5018 : vec3<f32> = u_xlat31;
  u_xlat2 = ((x_5014 * vec3<f32>(x_5015.x, x_5015.x, x_5015.x)) + x_5018);
  let x_5020 : vec4<f32> = u_xlat7;
  let x_5022 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_5020.x, x_5020.y, x_5020.z) + x_5022);
  let x_5026 : vec4<f32> = vs_INTERP6;
  let x_5028 : vec3<f32> = u_xlat0;
  let x_5030 : vec3<f32> = u_xlat2;
  let x_5031 : vec3<f32> = ((vec3<f32>(x_5026.w, x_5026.w, x_5026.w) * x_5028) + x_5030);
  let x_5032 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_5031.x, x_5031.y, x_5031.z, x_5032.w);
  let x_5034 : bool = u_xlatb51;
  if (x_5034) {
    let x_5039 : f32 = u_xlat1.x;
    x_5035 = x_5039;
  } else {
    x_5035 = 1.0f;
  }
  let x_5041 : f32 = x_5035;
  SV_Target0.w = x_5041;
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


