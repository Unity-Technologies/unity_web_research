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

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu78 : u32;

var<private> u_xlatu3 : u32;

var<private> u_xlati4 : i32;

var<private> u_xlati3 : i32;

@group(1) @binding(1) var<uniform> x_3447 : AdditionalLights;

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
  var x_1684 : vec3<f32>;
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
  var x_3604 : f32;
  var x_3614 : f32;
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
  var x_5069 : f32;
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
  let x_1674 : f32 = x_53.unity_MatrixV[0i].z;
  u_xlat6.x = x_1674;
  let x_1677 : f32 = x_53.unity_MatrixV[1i].z;
  u_xlat6.y = x_1677;
  let x_1680 : f32 = x_53.unity_MatrixV[2i].z;
  u_xlat6.z = x_1680;
  let x_1683 : bool = u_xlatb27.x;
  if (x_1683) {
    let x_1687 : vec3<f32> = u_xlat29;
    x_1684 = x_1687;
  } else {
    let x_1689 : vec4<f32> = u_xlat6;
    x_1684 = vec3<f32>(x_1689.x, x_1689.y, x_1689.z);
  }
  let x_1691 : vec3<f32> = x_1684;
  u_xlat29 = x_1691;
  let x_1693 : f32 = vs_INTERP8.y;
  let x_1695 : f32 = x_53.unity_MatrixV[1i].z;
  u_xlat27.x = (x_1693 * x_1695);
  let x_1699 : f32 = x_53.unity_MatrixV[0i].z;
  let x_1701 : f32 = vs_INTERP8.x;
  let x_1704 : f32 = u_xlat27.x;
  u_xlat27.x = ((x_1699 * x_1701) + x_1704);
  let x_1708 : f32 = x_53.unity_MatrixV[2i].z;
  let x_1710 : f32 = vs_INTERP8.z;
  let x_1713 : f32 = u_xlat27.x;
  u_xlat27.x = ((x_1708 * x_1710) + x_1713);
  let x_1717 : f32 = u_xlat27.x;
  let x_1719 : f32 = x_53.unity_MatrixV[3i].z;
  u_xlat27.x = (x_1717 + x_1719);
  let x_1723 : f32 = u_xlat27.x;
  let x_1726 : f32 = x_53.x_ProjectionParams.y;
  u_xlat27.x = (-(x_1723) + -(x_1726));
  let x_1731 : f32 = u_xlat27.x;
  u_xlat27.x = max(x_1731, 0.0f);
  let x_1735 : f32 = u_xlat27.x;
  let x_1737 : f32 = x_53.unity_FogParams.x;
  u_xlat27.x = (x_1735 * x_1737);
  u_xlat5.w = 1.0f;
  let x_1743 : vec4<f32> = x_1585.unity_SHAr;
  let x_1744 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_1743, x_1744);
  let x_1749 : vec4<f32> = x_1585.unity_SHAg;
  let x_1750 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_1749, x_1750);
  let x_1755 : vec4<f32> = x_1585.unity_SHAb;
  let x_1756 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_1755, x_1756);
  let x_1759 : vec4<f32> = u_xlat5;
  let x_1761 : vec4<f32> = u_xlat5;
  u_xlat7 = (vec4<f32>(x_1759.y, x_1759.z, x_1759.z, x_1759.x) * vec4<f32>(x_1761.x, x_1761.y, x_1761.z, x_1761.z));
  let x_1766 : vec4<f32> = x_1585.unity_SHBr;
  let x_1767 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_1766, x_1767);
  let x_1772 : vec4<f32> = x_1585.unity_SHBg;
  let x_1773 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_1772, x_1773);
  let x_1778 : vec4<f32> = x_1585.unity_SHBb;
  let x_1779 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_1778, x_1779);
  let x_1783 : f32 = u_xlat5.y;
  let x_1785 : f32 = u_xlat5.y;
  u_xlat79 = (x_1783 * x_1785);
  let x_1788 : f32 = u_xlat5.x;
  let x_1790 : f32 = u_xlat5.x;
  let x_1792 : f32 = u_xlat79;
  u_xlat79 = ((x_1788 * x_1790) + -(x_1792));
  let x_1797 : vec4<f32> = x_1585.unity_SHC;
  let x_1799 : f32 = u_xlat79;
  let x_1802 : vec4<f32> = u_xlat8;
  u_xlat30 = ((vec3<f32>(x_1797.x, x_1797.y, x_1797.z) * vec3<f32>(x_1799, x_1799, x_1799)) + vec3<f32>(x_1802.x, x_1802.y, x_1802.z));
  let x_1805 : vec3<f32> = u_xlat30;
  let x_1806 : vec4<f32> = u_xlat6;
  u_xlat30 = (x_1805 + vec3<f32>(x_1806.x, x_1806.y, x_1806.z));
  let x_1809 : vec3<f32> = u_xlat30;
  u_xlat30 = max(x_1809, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1813 : f32 = u_xlat3.x;
  u_xlat3.x = x_1813;
  let x_1816 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1816, 0.0f, 1.0f);
  let x_1820 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_1820, 1.0f);
  let x_1823 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1823 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_1828 : f32 = u_xlat3.x;
  u_xlat79 = (-(x_1828) + 1.0f);
  let x_1831 : f32 = u_xlat79;
  let x_1832 : f32 = u_xlat79;
  u_xlat80 = (x_1831 * x_1832);
  let x_1834 : f32 = u_xlat80;
  u_xlat80 = max(x_1834, 0.0078125f);
  let x_1838 : f32 = u_xlat80;
  let x_1839 : f32 = u_xlat80;
  u_xlat83 = (x_1838 * x_1839);
  let x_1842 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1842 + 0.04000002145767211914f);
  let x_1847 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_1847, 1.0f);
  let x_1850 : f32 = u_xlat80;
  u_xlat6.x = ((x_1850 * 4.0f) + 2.0f);
  let x_1856 : f32 = vs_INTERP6.w;
  u_xlat32.x = min(x_1856, 1.0f);
  let x_1859 : bool = u_xlatb78;
  if (x_1859) {
    let x_1863 : f32 = x_131.x_MainLightShadowParams.y;
    u_xlatb78 = (x_1863 == 1.0f);
    let x_1865 : bool = u_xlatb78;
    if (x_1865) {
      let x_1869 : vec4<f32> = vs_INTERP3;
      let x_1872 : vec4<f32> = x_131.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_1869.x, x_1869.y, x_1869.x, x_1869.y) + x_1872);
      let x_1875 : vec4<f32> = u_xlat7;
      let x_1876 : vec2<f32> = vec2<f32>(x_1875.x, x_1875.y);
      let x_1878 : f32 = vs_INTERP3.z;
      txVec30 = vec3<f32>(x_1876.x, x_1876.y, x_1878);
      let x_1885 : vec3<f32> = txVec30;
      let x_1887 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1885.xy, x_1885.z);
      u_xlat8.x = x_1887;
      let x_1890 : vec4<f32> = u_xlat7;
      let x_1891 : vec2<f32> = vec2<f32>(x_1890.z, x_1890.w);
      let x_1893 : f32 = vs_INTERP3.z;
      txVec31 = vec3<f32>(x_1891.x, x_1891.y, x_1893);
      let x_1900 : vec3<f32> = txVec31;
      let x_1902 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1900.xy, x_1900.z);
      u_xlat8.y = x_1902;
      let x_1904 : vec4<f32> = vs_INTERP3;
      let x_1907 : vec4<f32> = x_131.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_1904.x, x_1904.y, x_1904.x, x_1904.y) + x_1907);
      let x_1910 : vec4<f32> = u_xlat7;
      let x_1911 : vec2<f32> = vec2<f32>(x_1910.x, x_1910.y);
      let x_1913 : f32 = vs_INTERP3.z;
      txVec32 = vec3<f32>(x_1911.x, x_1911.y, x_1913);
      let x_1920 : vec3<f32> = txVec32;
      let x_1922 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1920.xy, x_1920.z);
      u_xlat8.z = x_1922;
      let x_1925 : vec4<f32> = u_xlat7;
      let x_1926 : vec2<f32> = vec2<f32>(x_1925.z, x_1925.w);
      let x_1928 : f32 = vs_INTERP3.z;
      txVec33 = vec3<f32>(x_1926.x, x_1926.y, x_1928);
      let x_1935 : vec3<f32> = txVec33;
      let x_1937 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1935.xy, x_1935.z);
      u_xlat8.w = x_1937;
      let x_1939 : vec4<f32> = u_xlat8;
      u_xlat78 = dot(x_1939, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1944 : f32 = x_131.x_MainLightShadowParams.y;
      u_xlatb58 = (x_1944 == 2.0f);
      let x_1946 : bool = u_xlatb58;
      if (x_1946) {
        let x_1950 : vec4<f32> = vs_INTERP3;
        let x_1953 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        u_xlat58 = ((vec2<f32>(x_1950.x, x_1950.y) * vec2<f32>(x_1953.z, x_1953.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1957 : vec2<f32> = u_xlat58;
        u_xlat58 = floor(x_1957);
        let x_1959 : vec4<f32> = vs_INTERP3;
        let x_1962 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_1965 : vec2<f32> = u_xlat58;
        let x_1967 : vec2<f32> = ((vec2<f32>(x_1959.x, x_1959.y) * vec2<f32>(x_1962.z, x_1962.w)) + -(x_1965));
        let x_1968 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1967.x, x_1967.y, x_1968.z, x_1968.w);
        let x_1970 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1970.x, x_1970.x, x_1970.y, x_1970.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1973 : vec4<f32> = u_xlat8;
        let x_1975 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1973.x, x_1973.x, x_1973.z, x_1973.z) * vec4<f32>(x_1975.x, x_1975.x, x_1975.z, x_1975.z));
        let x_1978 : vec4<f32> = u_xlat9;
        u_xlat59 = (vec2<f32>(x_1978.y, x_1978.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1981 : vec4<f32> = u_xlat9;
        let x_1984 : vec4<f32> = u_xlat7;
        let x_1987 : vec2<f32> = ((vec2<f32>(x_1981.x, x_1981.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1984.x, x_1984.y)));
        let x_1988 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1987.x, x_1988.y, x_1987.y, x_1988.w);
        let x_1990 : vec4<f32> = u_xlat7;
        let x_1993 : vec2<f32> = (-(vec2<f32>(x_1990.x, x_1990.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1994 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1993.x, x_1993.y, x_1994.z, x_1994.w);
        let x_1997 : vec4<f32> = u_xlat7;
        u_xlat61 = min(vec2<f32>(x_1997.x, x_1997.y), vec2<f32>(0.0f, 0.0f));
        let x_2000 : vec2<f32> = u_xlat61;
        let x_2002 : vec2<f32> = u_xlat61;
        let x_2004 : vec4<f32> = u_xlat9;
        u_xlat61 = ((-(x_2000) * x_2002) + vec2<f32>(x_2004.x, x_2004.y));
        let x_2007 : vec4<f32> = u_xlat7;
        let x_2009 : vec2<f32> = max(vec2<f32>(x_2007.x, x_2007.y), vec2<f32>(0.0f, 0.0f));
        let x_2010 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2009.x, x_2009.y, x_2010.z, x_2010.w);
        let x_2012 : vec4<f32> = u_xlat7;
        let x_2015 : vec4<f32> = u_xlat7;
        let x_2018 : vec4<f32> = u_xlat8;
        let x_2020 : vec2<f32> = ((-(vec2<f32>(x_2012.x, x_2012.y)) * vec2<f32>(x_2015.x, x_2015.y)) + vec2<f32>(x_2018.y, x_2018.w));
        let x_2021 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2020.x, x_2020.y, x_2021.z, x_2021.w);
        let x_2023 : vec2<f32> = u_xlat61;
        u_xlat61 = (x_2023 + vec2<f32>(1.0f, 1.0f));
        let x_2025 : vec4<f32> = u_xlat7;
        let x_2027 : vec2<f32> = (vec2<f32>(x_2025.x, x_2025.y) + vec2<f32>(1.0f, 1.0f));
        let x_2028 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2027.x, x_2027.y, x_2028.z, x_2028.w);
        let x_2030 : vec4<f32> = u_xlat8;
        let x_2032 : vec2<f32> = (vec2<f32>(x_2030.x, x_2030.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2033 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2032.x, x_2032.y, x_2033.z, x_2033.w);
        let x_2035 : vec4<f32> = u_xlat9;
        let x_2037 : vec2<f32> = (vec2<f32>(x_2035.x, x_2035.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2038 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2037.x, x_2037.y, x_2038.z, x_2038.w);
        let x_2040 : vec2<f32> = u_xlat61;
        let x_2041 : vec2<f32> = (x_2040 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2042 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2041.x, x_2041.y, x_2042.z, x_2042.w);
        let x_2044 : vec4<f32> = u_xlat7;
        let x_2046 : vec2<f32> = (vec2<f32>(x_2044.x, x_2044.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2047 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2046.x, x_2046.y, x_2047.z, x_2047.w);
        let x_2049 : vec4<f32> = u_xlat8;
        let x_2051 : vec2<f32> = (vec2<f32>(x_2049.y, x_2049.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2052 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2051.x, x_2051.y, x_2052.z, x_2052.w);
        let x_2055 : f32 = u_xlat9.x;
        u_xlat10.z = x_2055;
        let x_2058 : f32 = u_xlat7.x;
        u_xlat10.w = x_2058;
        let x_2061 : f32 = u_xlat12.x;
        u_xlat11.z = x_2061;
        let x_2064 : f32 = u_xlat59.x;
        u_xlat11.w = x_2064;
        let x_2066 : vec4<f32> = u_xlat10;
        let x_2068 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_2066.z, x_2066.w, x_2066.x, x_2066.z) + vec4<f32>(x_2068.z, x_2068.w, x_2068.x, x_2068.z));
        let x_2072 : f32 = u_xlat10.y;
        u_xlat9.z = x_2072;
        let x_2075 : f32 = u_xlat7.y;
        u_xlat9.w = x_2075;
        let x_2078 : f32 = u_xlat11.y;
        u_xlat12.z = x_2078;
        let x_2081 : f32 = u_xlat59.y;
        u_xlat12.w = x_2081;
        let x_2083 : vec4<f32> = u_xlat9;
        let x_2085 : vec4<f32> = u_xlat12;
        let x_2087 : vec3<f32> = (vec3<f32>(x_2083.z, x_2083.y, x_2083.w) + vec3<f32>(x_2085.z, x_2085.y, x_2085.w));
        let x_2088 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2087.x, x_2087.y, x_2087.z, x_2088.w);
        let x_2090 : vec4<f32> = u_xlat11;
        let x_2092 : vec4<f32> = u_xlat8;
        let x_2094 : vec3<f32> = (vec3<f32>(x_2090.x, x_2090.z, x_2090.w) / vec3<f32>(x_2092.z, x_2092.w, x_2092.y));
        let x_2095 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2094.x, x_2094.y, x_2094.z, x_2095.w);
        let x_2097 : vec4<f32> = u_xlat9;
        let x_2099 : vec3<f32> = (vec3<f32>(x_2097.x, x_2097.y, x_2097.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2100 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2099.x, x_2099.y, x_2099.z, x_2100.w);
        let x_2102 : vec4<f32> = u_xlat12;
        let x_2104 : vec4<f32> = u_xlat7;
        let x_2106 : vec3<f32> = (vec3<f32>(x_2102.z, x_2102.y, x_2102.w) / vec3<f32>(x_2104.x, x_2104.y, x_2104.z));
        let x_2107 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2106.x, x_2106.y, x_2106.z, x_2107.w);
        let x_2109 : vec4<f32> = u_xlat10;
        let x_2111 : vec3<f32> = (vec3<f32>(x_2109.x, x_2109.y, x_2109.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2112 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2111.x, x_2111.y, x_2111.z, x_2112.w);
        let x_2114 : vec4<f32> = u_xlat9;
        let x_2117 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2119 : vec3<f32> = (vec3<f32>(x_2114.y, x_2114.x, x_2114.z) * vec3<f32>(x_2117.x, x_2117.x, x_2117.x));
        let x_2120 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2119.x, x_2119.y, x_2119.z, x_2120.w);
        let x_2122 : vec4<f32> = u_xlat10;
        let x_2125 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2127 : vec3<f32> = (vec3<f32>(x_2122.x, x_2122.y, x_2122.z) * vec3<f32>(x_2125.y, x_2125.y, x_2125.y));
        let x_2128 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2127.x, x_2127.y, x_2127.z, x_2128.w);
        let x_2131 : f32 = u_xlat10.x;
        u_xlat9.w = x_2131;
        let x_2133 : vec2<f32> = u_xlat58;
        let x_2136 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2139 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_2133.x, x_2133.y, x_2133.x, x_2133.y) * vec4<f32>(x_2136.x, x_2136.y, x_2136.x, x_2136.y)) + vec4<f32>(x_2139.y, x_2139.w, x_2139.x, x_2139.w));
        let x_2142 : vec2<f32> = u_xlat58;
        let x_2144 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2147 : vec4<f32> = u_xlat9;
        let x_2149 : vec2<f32> = ((x_2142 * vec2<f32>(x_2144.x, x_2144.y)) + vec2<f32>(x_2147.z, x_2147.w));
        let x_2150 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2149.x, x_2149.y, x_2150.z, x_2150.w);
        let x_2153 : f32 = u_xlat9.y;
        u_xlat10.w = x_2153;
        let x_2155 : vec4<f32> = u_xlat10;
        let x_2156 : vec2<f32> = vec2<f32>(x_2155.y, x_2155.z);
        let x_2157 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2157.x, x_2156.x, x_2157.z, x_2156.y);
        let x_2159 : vec2<f32> = u_xlat58;
        let x_2162 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2165 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_2159.x, x_2159.y, x_2159.x, x_2159.y) * vec4<f32>(x_2162.x, x_2162.y, x_2162.x, x_2162.y)) + vec4<f32>(x_2165.x, x_2165.y, x_2165.z, x_2165.y));
        let x_2168 : vec2<f32> = u_xlat58;
        let x_2171 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2174 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_2168.x, x_2168.y, x_2168.x, x_2168.y) * vec4<f32>(x_2171.x, x_2171.y, x_2171.x, x_2171.y)) + vec4<f32>(x_2174.w, x_2174.y, x_2174.w, x_2174.z));
        let x_2177 : vec2<f32> = u_xlat58;
        let x_2180 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2183 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_2177.x, x_2177.y, x_2177.x, x_2177.y) * vec4<f32>(x_2180.x, x_2180.y, x_2180.x, x_2180.y)) + vec4<f32>(x_2183.x, x_2183.w, x_2183.z, x_2183.w));
        let x_2186 : vec4<f32> = u_xlat7;
        let x_2188 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_2186.x, x_2186.x, x_2186.x, x_2186.y) * vec4<f32>(x_2188.z, x_2188.w, x_2188.y, x_2188.z));
        let x_2191 : vec4<f32> = u_xlat7;
        let x_2193 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_2191.y, x_2191.y, x_2191.z, x_2191.z) * x_2193);
        let x_2196 : f32 = u_xlat7.z;
        let x_2198 : f32 = u_xlat8.y;
        u_xlat58.x = (x_2196 * x_2198);
        let x_2202 : vec4<f32> = u_xlat11;
        let x_2203 : vec2<f32> = vec2<f32>(x_2202.x, x_2202.y);
        let x_2205 : f32 = vs_INTERP3.z;
        txVec34 = vec3<f32>(x_2203.x, x_2203.y, x_2205);
        let x_2213 : vec3<f32> = txVec34;
        let x_2215 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2213.xy, x_2213.z);
        u_xlat84 = x_2215;
        let x_2217 : vec4<f32> = u_xlat11;
        let x_2218 : vec2<f32> = vec2<f32>(x_2217.z, x_2217.w);
        let x_2220 : f32 = vs_INTERP3.z;
        txVec35 = vec3<f32>(x_2218.x, x_2218.y, x_2220);
        let x_2227 : vec3<f32> = txVec35;
        let x_2229 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2227.xy, x_2227.z);
        u_xlat7.x = x_2229;
        let x_2232 : f32 = u_xlat7.x;
        let x_2234 : f32 = u_xlat14.y;
        u_xlat7.x = (x_2232 * x_2234);
        let x_2238 : f32 = u_xlat14.x;
        let x_2239 : f32 = u_xlat84;
        let x_2242 : f32 = u_xlat7.x;
        u_xlat84 = ((x_2238 * x_2239) + x_2242);
        let x_2245 : vec4<f32> = u_xlat12;
        let x_2246 : vec2<f32> = vec2<f32>(x_2245.x, x_2245.y);
        let x_2248 : f32 = vs_INTERP3.z;
        txVec36 = vec3<f32>(x_2246.x, x_2246.y, x_2248);
        let x_2255 : vec3<f32> = txVec36;
        let x_2257 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2255.xy, x_2255.z);
        u_xlat7.x = x_2257;
        let x_2260 : f32 = u_xlat14.z;
        let x_2262 : f32 = u_xlat7.x;
        let x_2264 : f32 = u_xlat84;
        u_xlat84 = ((x_2260 * x_2262) + x_2264);
        let x_2267 : vec4<f32> = u_xlat10;
        let x_2268 : vec2<f32> = vec2<f32>(x_2267.x, x_2267.y);
        let x_2270 : f32 = vs_INTERP3.z;
        txVec37 = vec3<f32>(x_2268.x, x_2268.y, x_2270);
        let x_2277 : vec3<f32> = txVec37;
        let x_2279 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2277.xy, x_2277.z);
        u_xlat7.x = x_2279;
        let x_2282 : f32 = u_xlat14.w;
        let x_2284 : f32 = u_xlat7.x;
        let x_2286 : f32 = u_xlat84;
        u_xlat84 = ((x_2282 * x_2284) + x_2286);
        let x_2289 : vec4<f32> = u_xlat13;
        let x_2290 : vec2<f32> = vec2<f32>(x_2289.x, x_2289.y);
        let x_2292 : f32 = vs_INTERP3.z;
        txVec38 = vec3<f32>(x_2290.x, x_2290.y, x_2292);
        let x_2299 : vec3<f32> = txVec38;
        let x_2301 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2299.xy, x_2299.z);
        u_xlat7.x = x_2301;
        let x_2304 : f32 = u_xlat15.x;
        let x_2306 : f32 = u_xlat7.x;
        let x_2308 : f32 = u_xlat84;
        u_xlat84 = ((x_2304 * x_2306) + x_2308);
        let x_2311 : vec4<f32> = u_xlat13;
        let x_2312 : vec2<f32> = vec2<f32>(x_2311.z, x_2311.w);
        let x_2314 : f32 = vs_INTERP3.z;
        txVec39 = vec3<f32>(x_2312.x, x_2312.y, x_2314);
        let x_2321 : vec3<f32> = txVec39;
        let x_2323 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2321.xy, x_2321.z);
        u_xlat7.x = x_2323;
        let x_2326 : f32 = u_xlat15.y;
        let x_2328 : f32 = u_xlat7.x;
        let x_2330 : f32 = u_xlat84;
        u_xlat84 = ((x_2326 * x_2328) + x_2330);
        let x_2333 : vec4<f32> = u_xlat10;
        let x_2334 : vec2<f32> = vec2<f32>(x_2333.z, x_2333.w);
        let x_2336 : f32 = vs_INTERP3.z;
        txVec40 = vec3<f32>(x_2334.x, x_2334.y, x_2336);
        let x_2343 : vec3<f32> = txVec40;
        let x_2345 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2343.xy, x_2343.z);
        u_xlat7.x = x_2345;
        let x_2348 : f32 = u_xlat15.z;
        let x_2350 : f32 = u_xlat7.x;
        let x_2352 : f32 = u_xlat84;
        u_xlat84 = ((x_2348 * x_2350) + x_2352);
        let x_2355 : vec4<f32> = u_xlat9;
        let x_2356 : vec2<f32> = vec2<f32>(x_2355.x, x_2355.y);
        let x_2358 : f32 = vs_INTERP3.z;
        txVec41 = vec3<f32>(x_2356.x, x_2356.y, x_2358);
        let x_2365 : vec3<f32> = txVec41;
        let x_2367 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2365.xy, x_2365.z);
        u_xlat7.x = x_2367;
        let x_2370 : f32 = u_xlat15.w;
        let x_2372 : f32 = u_xlat7.x;
        let x_2374 : f32 = u_xlat84;
        u_xlat84 = ((x_2370 * x_2372) + x_2374);
        let x_2377 : vec4<f32> = u_xlat9;
        let x_2378 : vec2<f32> = vec2<f32>(x_2377.z, x_2377.w);
        let x_2380 : f32 = vs_INTERP3.z;
        txVec42 = vec3<f32>(x_2378.x, x_2378.y, x_2380);
        let x_2387 : vec3<f32> = txVec42;
        let x_2389 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2387.xy, x_2387.z);
        u_xlat7.x = x_2389;
        let x_2392 : f32 = u_xlat58.x;
        let x_2394 : f32 = u_xlat7.x;
        let x_2396 : f32 = u_xlat84;
        u_xlat78 = ((x_2392 * x_2394) + x_2396);
      } else {
        let x_2399 : vec4<f32> = vs_INTERP3;
        let x_2402 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        u_xlat58 = ((vec2<f32>(x_2399.x, x_2399.y) * vec2<f32>(x_2402.z, x_2402.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2406 : vec2<f32> = u_xlat58;
        u_xlat58 = floor(x_2406);
        let x_2408 : vec4<f32> = vs_INTERP3;
        let x_2411 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2414 : vec2<f32> = u_xlat58;
        let x_2416 : vec2<f32> = ((vec2<f32>(x_2408.x, x_2408.y) * vec2<f32>(x_2411.z, x_2411.w)) + -(x_2414));
        let x_2417 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2416.x, x_2416.y, x_2417.z, x_2417.w);
        let x_2419 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_2419.x, x_2419.x, x_2419.y, x_2419.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2422 : vec4<f32> = u_xlat8;
        let x_2424 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2422.x, x_2422.x, x_2422.z, x_2422.z) * vec4<f32>(x_2424.x, x_2424.x, x_2424.z, x_2424.z));
        let x_2427 : vec4<f32> = u_xlat9;
        let x_2429 : vec2<f32> = (vec2<f32>(x_2427.y, x_2427.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_2430 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2430.x, x_2429.x, x_2430.z, x_2429.y);
        let x_2432 : vec4<f32> = u_xlat9;
        let x_2435 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_2432.x, x_2432.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2435.x, x_2435.y)));
        let x_2439 : vec4<f32> = u_xlat7;
        let x_2442 : vec2<f32> = (-(vec2<f32>(x_2439.x, x_2439.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2443 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2442.x, x_2443.y, x_2442.y, x_2443.w);
        let x_2445 : vec4<f32> = u_xlat7;
        let x_2447 : vec2<f32> = min(vec2<f32>(x_2445.x, x_2445.y), vec2<f32>(0.0f, 0.0f));
        let x_2448 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2447.x, x_2447.y, x_2448.z, x_2448.w);
        let x_2450 : vec4<f32> = u_xlat9;
        let x_2453 : vec4<f32> = u_xlat9;
        let x_2456 : vec4<f32> = u_xlat8;
        let x_2458 : vec2<f32> = ((-(vec2<f32>(x_2450.x, x_2450.y)) * vec2<f32>(x_2453.x, x_2453.y)) + vec2<f32>(x_2456.x, x_2456.z));
        let x_2459 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2458.x, x_2459.y, x_2458.y, x_2459.w);
        let x_2461 : vec4<f32> = u_xlat7;
        let x_2463 : vec2<f32> = max(vec2<f32>(x_2461.x, x_2461.y), vec2<f32>(0.0f, 0.0f));
        let x_2464 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2463.x, x_2463.y, x_2464.z, x_2464.w);
        let x_2466 : vec4<f32> = u_xlat9;
        let x_2469 : vec4<f32> = u_xlat9;
        let x_2472 : vec4<f32> = u_xlat8;
        let x_2474 : vec2<f32> = ((-(vec2<f32>(x_2466.x, x_2466.y)) * vec2<f32>(x_2469.x, x_2469.y)) + vec2<f32>(x_2472.y, x_2472.w));
        let x_2475 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2475.x, x_2474.x, x_2475.z, x_2474.y);
        let x_2477 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_2477 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_2480 : f32 = u_xlat8.y;
        u_xlat9.z = (x_2480 * 0.08163200318813323975f);
        let x_2483 : vec2<f32> = u_xlat59;
        let x_2485 : vec2<f32> = (vec2<f32>(x_2483.y, x_2483.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2486 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2485.x, x_2485.y, x_2486.z, x_2486.w);
        let x_2488 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_2488.x, x_2488.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2492 : f32 = u_xlat8.w;
        u_xlat11.z = (x_2492 * 0.08163200318813323975f);
        let x_2496 : f32 = u_xlat11.y;
        u_xlat9.x = x_2496;
        let x_2498 : vec4<f32> = u_xlat7;
        let x_2501 : vec2<f32> = ((vec2<f32>(x_2498.x, x_2498.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2502 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2502.x, x_2501.x, x_2502.z, x_2501.y);
        let x_2504 : vec4<f32> = u_xlat7;
        let x_2507 : vec2<f32> = ((vec2<f32>(x_2504.x, x_2504.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2508 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2507.x, x_2508.y, x_2507.y, x_2508.w);
        let x_2511 : f32 = u_xlat59.x;
        u_xlat8.y = x_2511;
        let x_2514 : f32 = u_xlat10.y;
        u_xlat8.w = x_2514;
        let x_2516 : vec4<f32> = u_xlat8;
        let x_2517 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2516 + x_2517);
        let x_2519 : vec4<f32> = u_xlat7;
        let x_2522 : vec2<f32> = ((vec2<f32>(x_2519.y, x_2519.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2523 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2523.x, x_2522.x, x_2523.z, x_2522.y);
        let x_2525 : vec4<f32> = u_xlat7;
        let x_2528 : vec2<f32> = ((vec2<f32>(x_2525.y, x_2525.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2529 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2528.x, x_2529.y, x_2528.y, x_2529.w);
        let x_2532 : f32 = u_xlat59.y;
        u_xlat10.y = x_2532;
        let x_2534 : vec4<f32> = u_xlat10;
        let x_2535 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_2534 + x_2535);
        let x_2537 : vec4<f32> = u_xlat8;
        let x_2538 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_2537 / x_2538);
        let x_2540 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_2540 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2542 : vec4<f32> = u_xlat10;
        let x_2543 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_2542 / x_2543);
        let x_2545 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_2545 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2547 : vec4<f32> = u_xlat8;
        let x_2550 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_2547.w, x_2547.x, x_2547.y, x_2547.z) * vec4<f32>(x_2550.x, x_2550.x, x_2550.x, x_2550.x));
        let x_2553 : vec4<f32> = u_xlat10;
        let x_2556 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_2553.x, x_2553.w, x_2553.y, x_2553.z) * vec4<f32>(x_2556.y, x_2556.y, x_2556.y, x_2556.y));
        let x_2559 : vec4<f32> = u_xlat8;
        let x_2560 : vec3<f32> = vec3<f32>(x_2559.y, x_2559.z, x_2559.w);
        let x_2561 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2560.x, x_2561.y, x_2560.y, x_2560.z);
        let x_2564 : f32 = u_xlat10.x;
        u_xlat11.y = x_2564;
        let x_2566 : vec2<f32> = u_xlat58;
        let x_2569 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2572 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_2566.x, x_2566.y, x_2566.x, x_2566.y) * vec4<f32>(x_2569.x, x_2569.y, x_2569.x, x_2569.y)) + vec4<f32>(x_2572.x, x_2572.y, x_2572.z, x_2572.y));
        let x_2575 : vec2<f32> = u_xlat58;
        let x_2577 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2580 : vec4<f32> = u_xlat11;
        let x_2582 : vec2<f32> = ((x_2575 * vec2<f32>(x_2577.x, x_2577.y)) + vec2<f32>(x_2580.w, x_2580.y));
        let x_2583 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2582.x, x_2582.y, x_2583.z, x_2583.w);
        let x_2586 : f32 = u_xlat11.y;
        u_xlat8.y = x_2586;
        let x_2589 : f32 = u_xlat10.z;
        u_xlat11.y = x_2589;
        let x_2591 : vec2<f32> = u_xlat58;
        let x_2594 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2597 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_2591.x, x_2591.y, x_2591.x, x_2591.y) * vec4<f32>(x_2594.x, x_2594.y, x_2594.x, x_2594.y)) + vec4<f32>(x_2597.x, x_2597.y, x_2597.z, x_2597.y));
        let x_2600 : vec2<f32> = u_xlat58;
        let x_2602 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2605 : vec4<f32> = u_xlat11;
        u_xlat65 = ((x_2600 * vec2<f32>(x_2602.x, x_2602.y)) + vec2<f32>(x_2605.w, x_2605.y));
        let x_2609 : f32 = u_xlat11.y;
        u_xlat8.z = x_2609;
        let x_2611 : vec2<f32> = u_xlat58;
        let x_2614 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2617 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_2611.x, x_2611.y, x_2611.x, x_2611.y) * vec4<f32>(x_2614.x, x_2614.y, x_2614.x, x_2614.y)) + vec4<f32>(x_2617.x, x_2617.y, x_2617.x, x_2617.z));
        let x_2621 : f32 = u_xlat10.w;
        u_xlat11.y = x_2621;
        let x_2623 : vec2<f32> = u_xlat58;
        let x_2626 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2629 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_2623.x, x_2623.y, x_2623.x, x_2623.y) * vec4<f32>(x_2626.x, x_2626.y, x_2626.x, x_2626.y)) + vec4<f32>(x_2629.x, x_2629.y, x_2629.z, x_2629.y));
        let x_2633 : vec2<f32> = u_xlat58;
        let x_2635 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2638 : vec4<f32> = u_xlat11;
        let x_2640 : vec2<f32> = ((x_2633 * vec2<f32>(x_2635.x, x_2635.y)) + vec2<f32>(x_2638.w, x_2638.y));
        let x_2641 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_2640.x, x_2640.y, x_2641.z);
        let x_2644 : f32 = u_xlat11.y;
        u_xlat8.w = x_2644;
        let x_2646 : vec2<f32> = u_xlat58;
        let x_2648 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2651 : vec4<f32> = u_xlat8;
        let x_2653 : vec2<f32> = ((x_2646 * vec2<f32>(x_2648.x, x_2648.y)) + vec2<f32>(x_2651.x, x_2651.w));
        let x_2654 : vec4<f32> = u_xlat17;
        u_xlat17 = vec4<f32>(x_2653.x, x_2653.y, x_2654.z, x_2654.w);
        let x_2656 : vec4<f32> = u_xlat11;
        let x_2657 : vec3<f32> = vec3<f32>(x_2656.x, x_2656.z, x_2656.w);
        let x_2658 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2657.x, x_2658.y, x_2657.y, x_2657.z);
        let x_2660 : vec2<f32> = u_xlat58;
        let x_2663 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2666 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_2660.x, x_2660.y, x_2660.x, x_2660.y) * vec4<f32>(x_2663.x, x_2663.y, x_2663.x, x_2663.y)) + vec4<f32>(x_2666.x, x_2666.y, x_2666.z, x_2666.y));
        let x_2670 : vec2<f32> = u_xlat58;
        let x_2672 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2675 : vec4<f32> = u_xlat10;
        u_xlat62 = ((x_2670 * vec2<f32>(x_2672.x, x_2672.y)) + vec2<f32>(x_2675.w, x_2675.y));
        let x_2679 : f32 = u_xlat8.x;
        u_xlat10.x = x_2679;
        let x_2681 : vec2<f32> = u_xlat58;
        let x_2683 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2686 : vec4<f32> = u_xlat10;
        u_xlat58 = ((x_2681 * vec2<f32>(x_2683.x, x_2683.y)) + vec2<f32>(x_2686.x, x_2686.y));
        let x_2689 : vec4<f32> = u_xlat7;
        let x_2691 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_2689.x, x_2689.x, x_2689.x, x_2689.x) * x_2691);
        let x_2694 : vec4<f32> = u_xlat7;
        let x_2696 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_2694.y, x_2694.y, x_2694.y, x_2694.y) * x_2696);
        let x_2699 : vec4<f32> = u_xlat7;
        let x_2701 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_2699.z, x_2699.z, x_2699.z, x_2699.z) * x_2701);
        let x_2703 : vec4<f32> = u_xlat7;
        let x_2705 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_2703.w, x_2703.w, x_2703.w, x_2703.w) * x_2705);
        let x_2708 : vec4<f32> = u_xlat12;
        let x_2709 : vec2<f32> = vec2<f32>(x_2708.x, x_2708.y);
        let x_2711 : f32 = vs_INTERP3.z;
        txVec43 = vec3<f32>(x_2709.x, x_2709.y, x_2711);
        let x_2718 : vec3<f32> = txVec43;
        let x_2720 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2718.xy, x_2718.z);
        u_xlat8.x = x_2720;
        let x_2723 : vec4<f32> = u_xlat12;
        let x_2724 : vec2<f32> = vec2<f32>(x_2723.z, x_2723.w);
        let x_2726 : f32 = vs_INTERP3.z;
        txVec44 = vec3<f32>(x_2724.x, x_2724.y, x_2726);
        let x_2734 : vec3<f32> = txVec44;
        let x_2736 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2734.xy, x_2734.z);
        u_xlat86 = x_2736;
        let x_2737 : f32 = u_xlat86;
        let x_2739 : f32 = u_xlat18.y;
        u_xlat86 = (x_2737 * x_2739);
        let x_2742 : f32 = u_xlat18.x;
        let x_2744 : f32 = u_xlat8.x;
        let x_2746 : f32 = u_xlat86;
        u_xlat8.x = ((x_2742 * x_2744) + x_2746);
        let x_2750 : vec4<f32> = u_xlat13;
        let x_2751 : vec2<f32> = vec2<f32>(x_2750.x, x_2750.y);
        let x_2753 : f32 = vs_INTERP3.z;
        txVec45 = vec3<f32>(x_2751.x, x_2751.y, x_2753);
        let x_2760 : vec3<f32> = txVec45;
        let x_2762 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2760.xy, x_2760.z);
        u_xlat86 = x_2762;
        let x_2764 : f32 = u_xlat18.z;
        let x_2765 : f32 = u_xlat86;
        let x_2768 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2764 * x_2765) + x_2768);
        let x_2772 : vec4<f32> = u_xlat15;
        let x_2773 : vec2<f32> = vec2<f32>(x_2772.x, x_2772.y);
        let x_2775 : f32 = vs_INTERP3.z;
        txVec46 = vec3<f32>(x_2773.x, x_2773.y, x_2775);
        let x_2782 : vec3<f32> = txVec46;
        let x_2784 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2782.xy, x_2782.z);
        u_xlat86 = x_2784;
        let x_2786 : f32 = u_xlat18.w;
        let x_2787 : f32 = u_xlat86;
        let x_2790 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2786 * x_2787) + x_2790);
        let x_2794 : vec4<f32> = u_xlat14;
        let x_2795 : vec2<f32> = vec2<f32>(x_2794.x, x_2794.y);
        let x_2797 : f32 = vs_INTERP3.z;
        txVec47 = vec3<f32>(x_2795.x, x_2795.y, x_2797);
        let x_2804 : vec3<f32> = txVec47;
        let x_2806 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2804.xy, x_2804.z);
        u_xlat86 = x_2806;
        let x_2808 : f32 = u_xlat19.x;
        let x_2809 : f32 = u_xlat86;
        let x_2812 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2808 * x_2809) + x_2812);
        let x_2816 : vec4<f32> = u_xlat14;
        let x_2817 : vec2<f32> = vec2<f32>(x_2816.z, x_2816.w);
        let x_2819 : f32 = vs_INTERP3.z;
        txVec48 = vec3<f32>(x_2817.x, x_2817.y, x_2819);
        let x_2826 : vec3<f32> = txVec48;
        let x_2828 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2826.xy, x_2826.z);
        u_xlat86 = x_2828;
        let x_2830 : f32 = u_xlat19.y;
        let x_2831 : f32 = u_xlat86;
        let x_2834 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2830 * x_2831) + x_2834);
        let x_2838 : vec2<f32> = u_xlat65;
        let x_2840 : f32 = vs_INTERP3.z;
        txVec49 = vec3<f32>(x_2838.x, x_2838.y, x_2840);
        let x_2847 : vec3<f32> = txVec49;
        let x_2849 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2847.xy, x_2847.z);
        u_xlat86 = x_2849;
        let x_2851 : f32 = u_xlat19.z;
        let x_2852 : f32 = u_xlat86;
        let x_2855 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2851 * x_2852) + x_2855);
        let x_2859 : vec4<f32> = u_xlat15;
        let x_2860 : vec2<f32> = vec2<f32>(x_2859.z, x_2859.w);
        let x_2862 : f32 = vs_INTERP3.z;
        txVec50 = vec3<f32>(x_2860.x, x_2860.y, x_2862);
        let x_2869 : vec3<f32> = txVec50;
        let x_2871 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2869.xy, x_2869.z);
        u_xlat86 = x_2871;
        let x_2873 : f32 = u_xlat19.w;
        let x_2874 : f32 = u_xlat86;
        let x_2877 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2873 * x_2874) + x_2877);
        let x_2881 : vec4<f32> = u_xlat16;
        let x_2882 : vec2<f32> = vec2<f32>(x_2881.x, x_2881.y);
        let x_2884 : f32 = vs_INTERP3.z;
        txVec51 = vec3<f32>(x_2882.x, x_2882.y, x_2884);
        let x_2891 : vec3<f32> = txVec51;
        let x_2893 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2891.xy, x_2891.z);
        u_xlat86 = x_2893;
        let x_2895 : f32 = u_xlat20.x;
        let x_2896 : f32 = u_xlat86;
        let x_2899 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2895 * x_2896) + x_2899);
        let x_2903 : vec4<f32> = u_xlat16;
        let x_2904 : vec2<f32> = vec2<f32>(x_2903.z, x_2903.w);
        let x_2906 : f32 = vs_INTERP3.z;
        txVec52 = vec3<f32>(x_2904.x, x_2904.y, x_2906);
        let x_2913 : vec3<f32> = txVec52;
        let x_2915 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2913.xy, x_2913.z);
        u_xlat86 = x_2915;
        let x_2917 : f32 = u_xlat20.y;
        let x_2918 : f32 = u_xlat86;
        let x_2921 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2917 * x_2918) + x_2921);
        let x_2925 : vec3<f32> = u_xlat34;
        let x_2926 : vec2<f32> = vec2<f32>(x_2925.x, x_2925.y);
        let x_2928 : f32 = vs_INTERP3.z;
        txVec53 = vec3<f32>(x_2926.x, x_2926.y, x_2928);
        let x_2935 : vec3<f32> = txVec53;
        let x_2937 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2935.xy, x_2935.z);
        u_xlat34.x = x_2937;
        let x_2940 : f32 = u_xlat20.z;
        let x_2942 : f32 = u_xlat34.x;
        let x_2945 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2940 * x_2942) + x_2945);
        let x_2949 : vec4<f32> = u_xlat17;
        let x_2950 : vec2<f32> = vec2<f32>(x_2949.x, x_2949.y);
        let x_2952 : f32 = vs_INTERP3.z;
        txVec54 = vec3<f32>(x_2950.x, x_2950.y, x_2952);
        let x_2959 : vec3<f32> = txVec54;
        let x_2961 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2959.xy, x_2959.z);
        u_xlat34.x = x_2961;
        let x_2964 : f32 = u_xlat20.w;
        let x_2966 : f32 = u_xlat34.x;
        let x_2969 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2964 * x_2966) + x_2969);
        let x_2973 : vec4<f32> = u_xlat11;
        let x_2974 : vec2<f32> = vec2<f32>(x_2973.x, x_2973.y);
        let x_2976 : f32 = vs_INTERP3.z;
        txVec55 = vec3<f32>(x_2974.x, x_2974.y, x_2976);
        let x_2983 : vec3<f32> = txVec55;
        let x_2985 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2983.xy, x_2983.z);
        u_xlat34.x = x_2985;
        let x_2988 : f32 = u_xlat7.x;
        let x_2990 : f32 = u_xlat34.x;
        let x_2993 : f32 = u_xlat8.x;
        u_xlat7.x = ((x_2988 * x_2990) + x_2993);
        let x_2997 : vec4<f32> = u_xlat11;
        let x_2998 : vec2<f32> = vec2<f32>(x_2997.z, x_2997.w);
        let x_3000 : f32 = vs_INTERP3.z;
        txVec56 = vec3<f32>(x_2998.x, x_2998.y, x_3000);
        let x_3007 : vec3<f32> = txVec56;
        let x_3009 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3007.xy, x_3007.z);
        u_xlat8.x = x_3009;
        let x_3012 : f32 = u_xlat7.y;
        let x_3014 : f32 = u_xlat8.x;
        let x_3017 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_3012 * x_3014) + x_3017);
        let x_3021 : vec2<f32> = u_xlat62;
        let x_3023 : f32 = vs_INTERP3.z;
        txVec57 = vec3<f32>(x_3021.x, x_3021.y, x_3023);
        let x_3030 : vec3<f32> = txVec57;
        let x_3032 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3030.xy, x_3030.z);
        u_xlat33.x = x_3032;
        let x_3035 : f32 = u_xlat7.z;
        let x_3037 : f32 = u_xlat33.x;
        let x_3040 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_3035 * x_3037) + x_3040);
        let x_3044 : vec2<f32> = u_xlat58;
        let x_3046 : f32 = vs_INTERP3.z;
        txVec58 = vec3<f32>(x_3044.x, x_3044.y, x_3046);
        let x_3053 : vec3<f32> = txVec58;
        let x_3055 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3053.xy, x_3053.z);
        u_xlat58.x = x_3055;
        let x_3058 : f32 = u_xlat7.w;
        let x_3060 : f32 = u_xlat58.x;
        let x_3063 : f32 = u_xlat7.x;
        u_xlat78 = ((x_3058 * x_3060) + x_3063);
      }
    }
  } else {
    let x_3067 : vec4<f32> = vs_INTERP3;
    let x_3068 : vec2<f32> = vec2<f32>(x_3067.x, x_3067.y);
    let x_3070 : f32 = vs_INTERP3.z;
    txVec59 = vec3<f32>(x_3068.x, x_3068.y, x_3070);
    let x_3077 : vec3<f32> = txVec59;
    let x_3079 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3077.xy, x_3077.z);
    u_xlat78 = x_3079;
  }
  let x_3080 : f32 = u_xlat78;
  let x_3082 : f32 = x_131.x_MainLightShadowParams.x;
  let x_3085 : f32 = u_xlat4.x;
  u_xlat78 = ((x_3080 * x_3082) + x_3085);
  let x_3089 : f32 = vs_INTERP3.z;
  u_xlatb4 = (0.0f >= x_3089);
  let x_3092 : f32 = vs_INTERP3.z;
  u_xlatb58 = (x_3092 >= 1.0f);
  let x_3094 : bool = u_xlatb4;
  let x_3095 : bool = u_xlatb58;
  u_xlatb4 = (x_3094 | x_3095);
  let x_3097 : bool = u_xlatb4;
  let x_3098 : f32 = u_xlat78;
  u_xlat78 = select(x_3098, 1.0f, x_3097);
  let x_3100 : vec3<f32> = vs_INTERP8;
  let x_3102 : vec3<f32> = x_53.x_WorldSpaceCameraPos;
  let x_3104 : vec3<f32> = (x_3100 + -(x_3102));
  let x_3105 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3104.x, x_3104.y, x_3104.z, x_3105.w);
  let x_3107 : vec4<f32> = u_xlat7;
  let x_3109 : vec4<f32> = u_xlat7;
  u_xlat4.x = dot(vec3<f32>(x_3107.x, x_3107.y, x_3107.z), vec3<f32>(x_3109.x, x_3109.y, x_3109.z));
  let x_3114 : f32 = u_xlat4.x;
  let x_3116 : f32 = x_131.x_MainLightShadowParams.z;
  let x_3119 : f32 = x_131.x_MainLightShadowParams.w;
  u_xlat58.x = ((x_3114 * x_3116) + x_3119);
  let x_3123 : f32 = u_xlat58.x;
  u_xlat58.x = clamp(x_3123, 0.0f, 1.0f);
  let x_3126 : f32 = u_xlat78;
  u_xlat84 = (-(x_3126) + 1.0f);
  let x_3130 : f32 = u_xlat58.x;
  let x_3131 : f32 = u_xlat84;
  let x_3133 : f32 = u_xlat78;
  u_xlat78 = ((x_3130 * x_3131) + x_3133);
  let x_3135 : vec3<f32> = u_xlat29;
  let x_3137 : vec4<f32> = u_xlat5;
  u_xlat58.x = dot(-(x_3135), vec3<f32>(x_3137.x, x_3137.y, x_3137.z));
  let x_3142 : f32 = u_xlat58.x;
  let x_3144 : f32 = u_xlat58.x;
  u_xlat58.x = (x_3142 + x_3144);
  let x_3147 : vec4<f32> = u_xlat5;
  let x_3149 : vec2<f32> = u_xlat58;
  let x_3153 : vec3<f32> = u_xlat29;
  let x_3155 : vec3<f32> = ((vec3<f32>(x_3147.x, x_3147.y, x_3147.z) * -(vec3<f32>(x_3149.x, x_3149.x, x_3149.x))) + -(x_3153));
  let x_3156 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3155.x, x_3155.y, x_3155.z, x_3156.w);
  let x_3158 : vec4<f32> = u_xlat5;
  let x_3160 : vec3<f32> = u_xlat29;
  u_xlat58.x = dot(vec3<f32>(x_3158.x, x_3158.y, x_3158.z), x_3160);
  let x_3164 : f32 = u_xlat58.x;
  u_xlat58.x = clamp(x_3164, 0.0f, 1.0f);
  let x_3168 : f32 = u_xlat58.x;
  u_xlat58.x = (-(x_3168) + 1.0f);
  let x_3173 : f32 = u_xlat58.x;
  let x_3175 : f32 = u_xlat58.x;
  u_xlat58.x = (x_3173 * x_3175);
  let x_3179 : f32 = u_xlat58.x;
  let x_3181 : f32 = u_xlat58.x;
  u_xlat58.x = (x_3179 * x_3181);
  let x_3184 : f32 = u_xlat79;
  u_xlat84 = ((-(x_3184) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_3190 : f32 = u_xlat79;
  let x_3191 : f32 = u_xlat84;
  u_xlat79 = (x_3190 * x_3191);
  let x_3193 : f32 = u_xlat79;
  u_xlat79 = (x_3193 * 6.0f);
  let x_3204 : vec4<f32> = u_xlat7;
  let x_3206 : f32 = u_xlat79;
  let x_3207 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_3204.x, x_3204.y, x_3204.z), x_3206);
  u_xlat7 = x_3207;
  let x_3209 : f32 = u_xlat7.w;
  u_xlat79 = (x_3209 + -1.0f);
  let x_3212 : f32 = x_1585.unity_SpecCube0_HDR.w;
  let x_3213 : f32 = u_xlat79;
  u_xlat79 = ((x_3212 * x_3213) + 1.0f);
  let x_3216 : f32 = u_xlat79;
  u_xlat79 = max(x_3216, 0.0f);
  let x_3218 : f32 = u_xlat79;
  u_xlat79 = log2(x_3218);
  let x_3220 : f32 = u_xlat79;
  let x_3222 : f32 = x_1585.unity_SpecCube0_HDR.y;
  u_xlat79 = (x_3220 * x_3222);
  let x_3224 : f32 = u_xlat79;
  u_xlat79 = exp2(x_3224);
  let x_3226 : f32 = u_xlat79;
  let x_3228 : f32 = x_1585.unity_SpecCube0_HDR.x;
  u_xlat79 = (x_3226 * x_3228);
  let x_3230 : vec4<f32> = u_xlat7;
  let x_3232 : f32 = u_xlat79;
  let x_3234 : vec3<f32> = (vec3<f32>(x_3230.x, x_3230.y, x_3230.z) * vec3<f32>(x_3232, x_3232, x_3232));
  let x_3235 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3234.x, x_3234.y, x_3234.z, x_3235.w);
  let x_3237 : f32 = u_xlat80;
  let x_3239 : f32 = u_xlat80;
  let x_3243 : vec2<f32> = ((vec2<f32>(x_3237, x_3237) * vec2<f32>(x_3239, x_3239)) + vec2<f32>(-1.0f, 1.0f));
  let x_3244 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3243.x, x_3243.y, x_3244.z, x_3244.w);
  let x_3247 : f32 = u_xlat8.y;
  u_xlat79 = (1.0f / x_3247);
  let x_3250 : f32 = u_xlat3.x;
  u_xlat80 = (x_3250 + -0.03999999910593032837f);
  let x_3254 : f32 = u_xlat58.x;
  let x_3255 : f32 = u_xlat80;
  u_xlat80 = ((x_3254 * x_3255) + 0.03999999910593032837f);
  let x_3259 : f32 = u_xlat79;
  let x_3260 : f32 = u_xlat80;
  u_xlat79 = (x_3259 * x_3260);
  let x_3262 : f32 = u_xlat79;
  let x_3264 : vec4<f32> = u_xlat7;
  let x_3266 : vec3<f32> = (vec3<f32>(x_3262, x_3262, x_3262) * vec3<f32>(x_3264.x, x_3264.y, x_3264.z));
  let x_3267 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3266.x, x_3266.y, x_3266.z, x_3267.w);
  let x_3269 : vec3<f32> = u_xlat30;
  let x_3270 : vec3<f32> = u_xlat2;
  let x_3272 : vec4<f32> = u_xlat7;
  u_xlat30 = ((x_3269 * x_3270) + vec3<f32>(x_3272.x, x_3272.y, x_3272.z));
  let x_3275 : f32 = u_xlat78;
  let x_3277 : f32 = x_1585.unity_LightData.z;
  u_xlat78 = (x_3275 * x_3277);
  let x_3279 : vec4<f32> = u_xlat5;
  let x_3282 : vec4<f32> = x_53.x_MainLightPosition;
  u_xlat79 = dot(vec3<f32>(x_3279.x, x_3279.y, x_3279.z), vec3<f32>(x_3282.x, x_3282.y, x_3282.z));
  let x_3285 : f32 = u_xlat79;
  u_xlat79 = clamp(x_3285, 0.0f, 1.0f);
  let x_3287 : f32 = u_xlat78;
  let x_3288 : f32 = u_xlat79;
  u_xlat78 = (x_3287 * x_3288);
  let x_3290 : f32 = u_xlat78;
  let x_3293 : vec4<f32> = x_53.x_MainLightColor;
  let x_3295 : vec3<f32> = (vec3<f32>(x_3290, x_3290, x_3290) * vec3<f32>(x_3293.x, x_3293.y, x_3293.z));
  let x_3296 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3295.x, x_3295.y, x_3295.z, x_3296.w);
  let x_3298 : vec3<f32> = u_xlat29;
  let x_3300 : vec4<f32> = x_53.x_MainLightPosition;
  u_xlat34 = (x_3298 + vec3<f32>(x_3300.x, x_3300.y, x_3300.z));
  let x_3303 : vec3<f32> = u_xlat34;
  let x_3304 : vec3<f32> = u_xlat34;
  u_xlat78 = dot(x_3303, x_3304);
  let x_3306 : f32 = u_xlat78;
  u_xlat78 = max(x_3306, 1.17549435e-38f);
  let x_3309 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_3309);
  let x_3311 : f32 = u_xlat78;
  let x_3313 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_3311, x_3311, x_3311) * x_3313);
  let x_3315 : vec4<f32> = u_xlat5;
  let x_3317 : vec3<f32> = u_xlat34;
  u_xlat78 = dot(vec3<f32>(x_3315.x, x_3315.y, x_3315.z), x_3317);
  let x_3319 : f32 = u_xlat78;
  u_xlat78 = clamp(x_3319, 0.0f, 1.0f);
  let x_3322 : vec4<f32> = x_53.x_MainLightPosition;
  let x_3324 : vec3<f32> = u_xlat34;
  u_xlat79 = dot(vec3<f32>(x_3322.x, x_3322.y, x_3322.z), x_3324);
  let x_3326 : f32 = u_xlat79;
  u_xlat79 = clamp(x_3326, 0.0f, 1.0f);
  let x_3328 : f32 = u_xlat78;
  let x_3329 : f32 = u_xlat78;
  u_xlat78 = (x_3328 * x_3329);
  let x_3331 : f32 = u_xlat78;
  let x_3333 : f32 = u_xlat8.x;
  u_xlat78 = ((x_3331 * x_3333) + 1.00001001358032226562f);
  let x_3337 : f32 = u_xlat79;
  let x_3338 : f32 = u_xlat79;
  u_xlat79 = (x_3337 * x_3338);
  let x_3340 : f32 = u_xlat78;
  let x_3341 : f32 = u_xlat78;
  u_xlat78 = (x_3340 * x_3341);
  let x_3343 : f32 = u_xlat79;
  u_xlat79 = max(x_3343, 0.10000000149011611938f);
  let x_3346 : f32 = u_xlat78;
  let x_3347 : f32 = u_xlat79;
  u_xlat78 = (x_3346 * x_3347);
  let x_3350 : f32 = u_xlat6.x;
  let x_3351 : f32 = u_xlat78;
  u_xlat78 = (x_3350 * x_3351);
  let x_3353 : f32 = u_xlat83;
  let x_3354 : f32 = u_xlat78;
  u_xlat78 = (x_3353 / x_3354);
  let x_3356 : f32 = u_xlat78;
  let x_3360 : vec3<f32> = u_xlat2;
  u_xlat34 = ((vec3<f32>(x_3356, x_3356, x_3356) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_3360);
  let x_3362 : vec4<f32> = u_xlat7;
  let x_3364 : vec3<f32> = u_xlat34;
  let x_3365 : vec3<f32> = (vec3<f32>(x_3362.x, x_3362.y, x_3362.z) * x_3364);
  let x_3366 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3365.x, x_3365.y, x_3365.z, x_3366.w);
  let x_3370 : f32 = x_53.x_AdditionalLightsCount.x;
  let x_3372 : f32 = x_1585.unity_LightData.y;
  u_xlat78 = min(x_3370, x_3372);
  let x_3376 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_3376));
  let x_3380 : f32 = u_xlat4.x;
  let x_3383 : f32 = x_131.x_AdditionalShadowFadeParams.x;
  let x_3386 : f32 = x_131.x_AdditionalShadowFadeParams.y;
  u_xlat79 = ((x_3380 * x_3383) + x_3386);
  let x_3388 : f32 = u_xlat79;
  u_xlat79 = clamp(x_3388, 0.0f, 1.0f);
  u_xlat34.x = 0.0f;
  u_xlat34.y = 0.0f;
  u_xlat34.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_3400 : u32 = u_xlatu_loop_1;
    let x_3401 : u32 = u_xlatu78;
    if ((x_3400 < x_3401)) {
    } else {
      break;
    }
    let x_3404 : u32 = u_xlatu_loop_1;
    u_xlatu3 = (x_3404 >> 2u);
    let x_3408 : u32 = u_xlatu_loop_1;
    u_xlati4 = bitcast<i32>((x_3408 & 3u));
    let x_3411 : u32 = u_xlatu3;
    let x_3414 : vec4<f32> = x_1585.unity_LightIndices[bitcast<i32>(x_3411)];
    let x_3424 : i32 = u_xlati4;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_3429 : vec4<u32> = indexable[x_3424];
    u_xlat3.x = dot(x_3414, bitcast<vec4<f32>>(x_3429));
    let x_3435 : f32 = u_xlat3.x;
    u_xlati3 = i32(x_3435);
    let x_3437 : vec3<f32> = vs_INTERP8;
    let x_3448 : i32 = u_xlati3;
    let x_3450 : vec4<f32> = x_3447.x_AdditionalLightsPosition[x_3448];
    let x_3453 : i32 = u_xlati3;
    let x_3455 : vec4<f32> = x_3447.x_AdditionalLightsPosition[x_3453];
    let x_3457 : vec3<f32> = ((-(x_3437) * vec3<f32>(x_3450.w, x_3450.w, x_3450.w)) + vec3<f32>(x_3455.x, x_3455.y, x_3455.z));
    let x_3458 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3457.x, x_3457.y, x_3457.z, x_3458.w);
    let x_3460 : vec4<f32> = u_xlat9;
    let x_3462 : vec4<f32> = u_xlat9;
    u_xlat4.x = dot(vec3<f32>(x_3460.x, x_3460.y, x_3460.z), vec3<f32>(x_3462.x, x_3462.y, x_3462.z));
    let x_3467 : f32 = u_xlat4.x;
    u_xlat4.x = max(x_3467, 0.00006103515625f);
    let x_3472 : f32 = u_xlat4.x;
    u_xlat58.x = inverseSqrt(x_3472);
    let x_3475 : vec2<f32> = u_xlat58;
    let x_3477 : vec4<f32> = u_xlat9;
    let x_3479 : vec3<f32> = (vec3<f32>(x_3475.x, x_3475.x, x_3475.x) * vec3<f32>(x_3477.x, x_3477.y, x_3477.z));
    let x_3480 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3479.x, x_3479.y, x_3479.z, x_3480.w);
    let x_3483 : f32 = u_xlat4.x;
    u_xlat84 = (1.0f / x_3483);
    let x_3486 : f32 = u_xlat4.x;
    let x_3487 : i32 = u_xlati3;
    let x_3489 : f32 = x_3447.x_AdditionalLightsAttenuation[x_3487].x;
    u_xlat4.x = (x_3486 * x_3489);
    let x_3493 : f32 = u_xlat4.x;
    let x_3496 : f32 = u_xlat4.x;
    u_xlat4.x = ((-(x_3493) * x_3496) + 1.0f);
    let x_3501 : f32 = u_xlat4.x;
    u_xlat4.x = max(x_3501, 0.0f);
    let x_3505 : f32 = u_xlat4.x;
    let x_3507 : f32 = u_xlat4.x;
    u_xlat4.x = (x_3505 * x_3507);
    let x_3511 : f32 = u_xlat4.x;
    let x_3512 : f32 = u_xlat84;
    u_xlat4.x = (x_3511 * x_3512);
    let x_3515 : i32 = u_xlati3;
    let x_3517 : vec4<f32> = x_3447.x_AdditionalLightsSpotDir[x_3515];
    let x_3519 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_3517.x, x_3517.y, x_3517.z), vec3<f32>(x_3519.x, x_3519.y, x_3519.z));
    let x_3522 : f32 = u_xlat84;
    let x_3523 : i32 = u_xlati3;
    let x_3525 : f32 = x_3447.x_AdditionalLightsAttenuation[x_3523].z;
    let x_3527 : i32 = u_xlati3;
    let x_3529 : f32 = x_3447.x_AdditionalLightsAttenuation[x_3527].w;
    u_xlat84 = ((x_3522 * x_3525) + x_3529);
    let x_3531 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3531, 0.0f, 1.0f);
    let x_3533 : f32 = u_xlat84;
    let x_3534 : f32 = u_xlat84;
    u_xlat84 = (x_3533 * x_3534);
    let x_3537 : f32 = u_xlat4.x;
    let x_3538 : f32 = u_xlat84;
    u_xlat4.x = (x_3537 * x_3538);
    let x_3543 : i32 = u_xlati3;
    let x_3545 : f32 = x_131.x_AdditionalShadowParams[x_3543].w;
    u_xlati84 = i32(x_3545);
    let x_3548 : i32 = u_xlati84;
    u_xlatb85 = (x_3548 >= 0i);
    let x_3550 : bool = u_xlatb85;
    if (x_3550) {
      let x_3554 : i32 = u_xlati3;
      let x_3556 : f32 = x_131.x_AdditionalShadowParams[x_3554].z;
      u_xlatb85 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_3556, x_3556, x_3556, x_3556))));
      let x_3561 : bool = u_xlatb85;
      if (x_3561) {
        let x_3566 : vec4<f32> = u_xlat10;
        let x_3569 : vec4<f32> = u_xlat10;
        let x_3572 : vec4<bool> = (abs(vec4<f32>(x_3566.z, x_3566.z, x_3566.y, x_3566.z)) >= abs(vec4<f32>(x_3569.x, x_3569.y, x_3569.x, x_3569.x)));
        let x_3573 : vec3<bool> = vec3<bool>(x_3572.x, x_3572.y, x_3572.z);
        let x_3574 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3573.x, x_3573.y, x_3573.z, x_3574.w);
        let x_3577 : bool = u_xlatb11.y;
        let x_3579 : bool = u_xlatb11.x;
        u_xlatb85 = (x_3577 & x_3579);
        let x_3581 : vec4<f32> = u_xlat10;
        let x_3584 : vec4<bool> = (-(vec4<f32>(x_3581.z, x_3581.y, x_3581.z, x_3581.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_3585 : vec3<bool> = vec3<bool>(x_3584.x, x_3584.y, x_3584.w);
        let x_3586 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3585.x, x_3585.y, x_3586.z, x_3585.z);
        let x_3589 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_3589);
        let x_3594 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_3594);
        let x_3600 : bool = u_xlatb11.w;
        u_xlat87 = select(0.0f, 1.0f, x_3600);
        let x_3603 : bool = u_xlatb11.z;
        if (x_3603) {
          let x_3608 : f32 = u_xlat11.y;
          x_3604 = x_3608;
        } else {
          let x_3610 : f32 = u_xlat87;
          x_3604 = x_3610;
        }
        let x_3611 : f32 = x_3604;
        u_xlat87 = x_3611;
        let x_3613 : bool = u_xlatb85;
        if (x_3613) {
          let x_3618 : f32 = u_xlat11.x;
          x_3614 = x_3618;
        } else {
          let x_3620 : f32 = u_xlat87;
          x_3614 = x_3620;
        }
        let x_3621 : f32 = x_3614;
        u_xlat85 = x_3621;
        let x_3622 : i32 = u_xlati3;
        let x_3624 : f32 = x_131.x_AdditionalShadowParams[x_3622].w;
        u_xlat87 = trunc(x_3624);
        let x_3626 : f32 = u_xlat85;
        let x_3627 : f32 = u_xlat87;
        u_xlat85 = (x_3626 + x_3627);
        let x_3629 : f32 = u_xlat85;
        u_xlati84 = i32(x_3629);
      }
      let x_3631 : i32 = u_xlati84;
      u_xlati84 = (x_3631 << bitcast<u32>(2i));
      let x_3633 : vec3<f32> = vs_INTERP8;
      let x_3636 : i32 = u_xlati84;
      let x_3639 : i32 = u_xlati84;
      let x_3643 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[((x_3636 + 1i) / 4i)][((x_3639 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_3633.y, x_3633.y, x_3633.y, x_3633.y) * x_3643);
      let x_3645 : i32 = u_xlati84;
      let x_3647 : i32 = u_xlati84;
      let x_3650 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[(x_3645 / 4i)][(x_3647 % 4i)];
      let x_3651 : vec3<f32> = vs_INTERP8;
      let x_3654 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3650 * vec4<f32>(x_3651.x, x_3651.x, x_3651.x, x_3651.x)) + x_3654);
      let x_3656 : i32 = u_xlati84;
      let x_3659 : i32 = u_xlati84;
      let x_3663 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[((x_3656 + 2i) / 4i)][((x_3659 + 2i) % 4i)];
      let x_3664 : vec3<f32> = vs_INTERP8;
      let x_3667 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3663 * vec4<f32>(x_3664.z, x_3664.z, x_3664.z, x_3664.z)) + x_3667);
      let x_3669 : vec4<f32> = u_xlat11;
      let x_3670 : i32 = u_xlati84;
      let x_3673 : i32 = u_xlati84;
      let x_3677 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[((x_3670 + 3i) / 4i)][((x_3673 + 3i) % 4i)];
      u_xlat11 = (x_3669 + x_3677);
      let x_3679 : vec4<f32> = u_xlat11;
      let x_3681 : vec4<f32> = u_xlat11;
      let x_3683 : vec3<f32> = (vec3<f32>(x_3679.x, x_3679.y, x_3679.z) / vec3<f32>(x_3681.w, x_3681.w, x_3681.w));
      let x_3684 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3683.x, x_3683.y, x_3683.z, x_3684.w);
      let x_3687 : i32 = u_xlati3;
      let x_3689 : f32 = x_131.x_AdditionalShadowParams[x_3687].y;
      u_xlatb84 = (0.0f < x_3689);
      let x_3691 : bool = u_xlatb84;
      if (x_3691) {
        let x_3694 : i32 = u_xlati3;
        let x_3696 : f32 = x_131.x_AdditionalShadowParams[x_3694].y;
        u_xlatb84 = (1.0f == x_3696);
        let x_3698 : bool = u_xlatb84;
        if (x_3698) {
          let x_3701 : vec4<f32> = u_xlat11;
          let x_3704 : vec4<f32> = x_131.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_3701.x, x_3701.y, x_3701.x, x_3701.y) + x_3704);
          let x_3707 : vec4<f32> = u_xlat12;
          let x_3708 : vec2<f32> = vec2<f32>(x_3707.x, x_3707.y);
          let x_3710 : f32 = u_xlat11.z;
          txVec60 = vec3<f32>(x_3708.x, x_3708.y, x_3710);
          let x_3718 : vec3<f32> = txVec60;
          let x_3720 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3718.xy, x_3718.z);
          u_xlat13.x = x_3720;
          let x_3723 : vec4<f32> = u_xlat12;
          let x_3724 : vec2<f32> = vec2<f32>(x_3723.z, x_3723.w);
          let x_3726 : f32 = u_xlat11.z;
          txVec61 = vec3<f32>(x_3724.x, x_3724.y, x_3726);
          let x_3733 : vec3<f32> = txVec61;
          let x_3735 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3733.xy, x_3733.z);
          u_xlat13.y = x_3735;
          let x_3737 : vec4<f32> = u_xlat11;
          let x_3741 : vec4<f32> = x_131.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_3737.x, x_3737.y, x_3737.x, x_3737.y) + x_3741);
          let x_3744 : vec4<f32> = u_xlat12;
          let x_3745 : vec2<f32> = vec2<f32>(x_3744.x, x_3744.y);
          let x_3747 : f32 = u_xlat11.z;
          txVec62 = vec3<f32>(x_3745.x, x_3745.y, x_3747);
          let x_3754 : vec3<f32> = txVec62;
          let x_3756 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3754.xy, x_3754.z);
          u_xlat13.z = x_3756;
          let x_3759 : vec4<f32> = u_xlat12;
          let x_3760 : vec2<f32> = vec2<f32>(x_3759.z, x_3759.w);
          let x_3762 : f32 = u_xlat11.z;
          txVec63 = vec3<f32>(x_3760.x, x_3760.y, x_3762);
          let x_3769 : vec3<f32> = txVec63;
          let x_3771 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3769.xy, x_3769.z);
          u_xlat13.w = x_3771;
          let x_3773 : vec4<f32> = u_xlat13;
          u_xlat84 = dot(x_3773, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3776 : i32 = u_xlati3;
          let x_3778 : f32 = x_131.x_AdditionalShadowParams[x_3776].y;
          u_xlatb85 = (2.0f == x_3778);
          let x_3780 : bool = u_xlatb85;
          if (x_3780) {
            let x_3783 : vec4<f32> = u_xlat11;
            let x_3787 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_3790 : vec2<f32> = ((vec2<f32>(x_3783.x, x_3783.y) * vec2<f32>(x_3787.z, x_3787.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3791 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3790.x, x_3790.y, x_3791.z, x_3791.w);
            let x_3793 : vec4<f32> = u_xlat12;
            let x_3795 : vec2<f32> = floor(vec2<f32>(x_3793.x, x_3793.y));
            let x_3796 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3795.x, x_3795.y, x_3796.z, x_3796.w);
            let x_3799 : vec4<f32> = u_xlat11;
            let x_3802 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_3805 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3799.x, x_3799.y) * vec2<f32>(x_3802.z, x_3802.w)) + -(vec2<f32>(x_3805.x, x_3805.y)));
            let x_3809 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3809.x, x_3809.x, x_3809.y, x_3809.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3812 : vec4<f32> = u_xlat13;
            let x_3814 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3812.x, x_3812.x, x_3812.z, x_3812.z) * vec4<f32>(x_3814.x, x_3814.x, x_3814.z, x_3814.z));
            let x_3817 : vec4<f32> = u_xlat14;
            let x_3819 : vec2<f32> = (vec2<f32>(x_3817.y, x_3817.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3820 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3819.x, x_3820.y, x_3819.y, x_3820.w);
            let x_3822 : vec4<f32> = u_xlat14;
            let x_3825 : vec2<f32> = u_xlat64;
            let x_3827 : vec2<f32> = ((vec2<f32>(x_3822.x, x_3822.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3825));
            let x_3828 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3827.x, x_3827.y, x_3828.z, x_3828.w);
            let x_3831 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_3831) + vec2<f32>(1.0f, 1.0f));
            let x_3834 : vec2<f32> = u_xlat64;
            let x_3835 : vec2<f32> = min(x_3834, vec2<f32>(0.0f, 0.0f));
            let x_3836 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3835.x, x_3835.y, x_3836.z, x_3836.w);
            let x_3838 : vec4<f32> = u_xlat15;
            let x_3841 : vec4<f32> = u_xlat15;
            let x_3844 : vec2<f32> = u_xlat66;
            let x_3845 : vec2<f32> = ((-(vec2<f32>(x_3838.x, x_3838.y)) * vec2<f32>(x_3841.x, x_3841.y)) + x_3844);
            let x_3846 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3845.x, x_3845.y, x_3846.z, x_3846.w);
            let x_3848 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_3848, vec2<f32>(0.0f, 0.0f));
            let x_3850 : vec2<f32> = u_xlat64;
            let x_3852 : vec2<f32> = u_xlat64;
            let x_3854 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_3850) * x_3852) + vec2<f32>(x_3854.y, x_3854.w));
            let x_3857 : vec4<f32> = u_xlat15;
            let x_3859 : vec2<f32> = (vec2<f32>(x_3857.x, x_3857.y) + vec2<f32>(1.0f, 1.0f));
            let x_3860 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3859.x, x_3859.y, x_3860.z, x_3860.w);
            let x_3862 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_3862 + vec2<f32>(1.0f, 1.0f));
            let x_3864 : vec4<f32> = u_xlat14;
            let x_3866 : vec2<f32> = (vec2<f32>(x_3864.x, x_3864.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3867 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3866.x, x_3866.y, x_3867.z, x_3867.w);
            let x_3869 : vec2<f32> = u_xlat66;
            let x_3870 : vec2<f32> = (x_3869 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3871 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3870.x, x_3870.y, x_3871.z, x_3871.w);
            let x_3873 : vec4<f32> = u_xlat15;
            let x_3875 : vec2<f32> = (vec2<f32>(x_3873.x, x_3873.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3876 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3875.x, x_3875.y, x_3876.z, x_3876.w);
            let x_3878 : vec2<f32> = u_xlat64;
            let x_3879 : vec2<f32> = (x_3878 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3880 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3879.x, x_3879.y, x_3880.z, x_3880.w);
            let x_3882 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_3882.y, x_3882.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3886 : f32 = u_xlat15.x;
            u_xlat16.z = x_3886;
            let x_3889 : f32 = u_xlat64.x;
            u_xlat16.w = x_3889;
            let x_3892 : f32 = u_xlat17.x;
            u_xlat14.z = x_3892;
            let x_3895 : f32 = u_xlat13.x;
            u_xlat14.w = x_3895;
            let x_3897 : vec4<f32> = u_xlat14;
            let x_3899 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_3897.z, x_3897.w, x_3897.x, x_3897.z) + vec4<f32>(x_3899.z, x_3899.w, x_3899.x, x_3899.z));
            let x_3903 : f32 = u_xlat16.y;
            u_xlat15.z = x_3903;
            let x_3906 : f32 = u_xlat64.y;
            u_xlat15.w = x_3906;
            let x_3909 : f32 = u_xlat14.y;
            u_xlat17.z = x_3909;
            let x_3912 : f32 = u_xlat13.z;
            u_xlat17.w = x_3912;
            let x_3914 : vec4<f32> = u_xlat15;
            let x_3916 : vec4<f32> = u_xlat17;
            let x_3918 : vec3<f32> = (vec3<f32>(x_3914.z, x_3914.y, x_3914.w) + vec3<f32>(x_3916.z, x_3916.y, x_3916.w));
            let x_3919 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3918.x, x_3918.y, x_3918.z, x_3919.w);
            let x_3921 : vec4<f32> = u_xlat14;
            let x_3923 : vec4<f32> = u_xlat18;
            let x_3925 : vec3<f32> = (vec3<f32>(x_3921.x, x_3921.z, x_3921.w) / vec3<f32>(x_3923.z, x_3923.w, x_3923.y));
            let x_3926 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3925.x, x_3925.y, x_3925.z, x_3926.w);
            let x_3928 : vec4<f32> = u_xlat14;
            let x_3930 : vec3<f32> = (vec3<f32>(x_3928.x, x_3928.y, x_3928.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3931 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3930.x, x_3930.y, x_3930.z, x_3931.w);
            let x_3933 : vec4<f32> = u_xlat17;
            let x_3935 : vec4<f32> = u_xlat13;
            let x_3937 : vec3<f32> = (vec3<f32>(x_3933.z, x_3933.y, x_3933.w) / vec3<f32>(x_3935.x, x_3935.y, x_3935.z));
            let x_3938 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3937.x, x_3937.y, x_3937.z, x_3938.w);
            let x_3940 : vec4<f32> = u_xlat15;
            let x_3942 : vec3<f32> = (vec3<f32>(x_3940.x, x_3940.y, x_3940.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3943 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3942.x, x_3942.y, x_3942.z, x_3943.w);
            let x_3945 : vec4<f32> = u_xlat14;
            let x_3948 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_3950 : vec3<f32> = (vec3<f32>(x_3945.y, x_3945.x, x_3945.z) * vec3<f32>(x_3948.x, x_3948.x, x_3948.x));
            let x_3951 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3950.x, x_3950.y, x_3950.z, x_3951.w);
            let x_3953 : vec4<f32> = u_xlat15;
            let x_3956 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_3958 : vec3<f32> = (vec3<f32>(x_3953.x, x_3953.y, x_3953.z) * vec3<f32>(x_3956.y, x_3956.y, x_3956.y));
            let x_3959 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3958.x, x_3958.y, x_3958.z, x_3959.w);
            let x_3962 : f32 = u_xlat15.x;
            u_xlat14.w = x_3962;
            let x_3964 : vec4<f32> = u_xlat12;
            let x_3967 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_3970 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3964.x, x_3964.y, x_3964.x, x_3964.y) * vec4<f32>(x_3967.x, x_3967.y, x_3967.x, x_3967.y)) + vec4<f32>(x_3970.y, x_3970.w, x_3970.x, x_3970.w));
            let x_3973 : vec4<f32> = u_xlat12;
            let x_3976 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_3979 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3973.x, x_3973.y) * vec2<f32>(x_3976.x, x_3976.y)) + vec2<f32>(x_3979.z, x_3979.w));
            let x_3983 : f32 = u_xlat14.y;
            u_xlat15.w = x_3983;
            let x_3985 : vec4<f32> = u_xlat15;
            let x_3986 : vec2<f32> = vec2<f32>(x_3985.y, x_3985.z);
            let x_3987 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3987.x, x_3986.x, x_3987.z, x_3986.y);
            let x_3989 : vec4<f32> = u_xlat12;
            let x_3992 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_3995 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_3989.x, x_3989.y, x_3989.x, x_3989.y) * vec4<f32>(x_3992.x, x_3992.y, x_3992.x, x_3992.y)) + vec4<f32>(x_3995.x, x_3995.y, x_3995.z, x_3995.y));
            let x_3998 : vec4<f32> = u_xlat12;
            let x_4001 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4004 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_3998.x, x_3998.y, x_3998.x, x_3998.y) * vec4<f32>(x_4001.x, x_4001.y, x_4001.x, x_4001.y)) + vec4<f32>(x_4004.w, x_4004.y, x_4004.w, x_4004.z));
            let x_4007 : vec4<f32> = u_xlat12;
            let x_4010 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4013 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_4007.x, x_4007.y, x_4007.x, x_4007.y) * vec4<f32>(x_4010.x, x_4010.y, x_4010.x, x_4010.y)) + vec4<f32>(x_4013.x, x_4013.w, x_4013.z, x_4013.w));
            let x_4016 : vec4<f32> = u_xlat13;
            let x_4018 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_4016.x, x_4016.x, x_4016.x, x_4016.y) * vec4<f32>(x_4018.z, x_4018.w, x_4018.y, x_4018.z));
            let x_4021 : vec4<f32> = u_xlat13;
            let x_4023 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_4021.y, x_4021.y, x_4021.z, x_4021.z) * x_4023);
            let x_4026 : f32 = u_xlat13.z;
            let x_4028 : f32 = u_xlat18.y;
            u_xlat85 = (x_4026 * x_4028);
            let x_4031 : vec4<f32> = u_xlat16;
            let x_4032 : vec2<f32> = vec2<f32>(x_4031.x, x_4031.y);
            let x_4034 : f32 = u_xlat11.z;
            txVec64 = vec3<f32>(x_4032.x, x_4032.y, x_4034);
            let x_4041 : vec3<f32> = txVec64;
            let x_4043 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4041.xy, x_4041.z);
            u_xlat87 = x_4043;
            let x_4045 : vec4<f32> = u_xlat16;
            let x_4046 : vec2<f32> = vec2<f32>(x_4045.z, x_4045.w);
            let x_4048 : f32 = u_xlat11.z;
            txVec65 = vec3<f32>(x_4046.x, x_4046.y, x_4048);
            let x_4056 : vec3<f32> = txVec65;
            let x_4058 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4056.xy, x_4056.z);
            u_xlat88 = x_4058;
            let x_4059 : f32 = u_xlat88;
            let x_4061 : f32 = u_xlat19.y;
            u_xlat88 = (x_4059 * x_4061);
            let x_4064 : f32 = u_xlat19.x;
            let x_4065 : f32 = u_xlat87;
            let x_4067 : f32 = u_xlat88;
            u_xlat87 = ((x_4064 * x_4065) + x_4067);
            let x_4070 : vec2<f32> = u_xlat64;
            let x_4072 : f32 = u_xlat11.z;
            txVec66 = vec3<f32>(x_4070.x, x_4070.y, x_4072);
            let x_4079 : vec3<f32> = txVec66;
            let x_4081 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4079.xy, x_4079.z);
            u_xlat88 = x_4081;
            let x_4083 : f32 = u_xlat19.z;
            let x_4084 : f32 = u_xlat88;
            let x_4086 : f32 = u_xlat87;
            u_xlat87 = ((x_4083 * x_4084) + x_4086);
            let x_4089 : vec4<f32> = u_xlat15;
            let x_4090 : vec2<f32> = vec2<f32>(x_4089.x, x_4089.y);
            let x_4092 : f32 = u_xlat11.z;
            txVec67 = vec3<f32>(x_4090.x, x_4090.y, x_4092);
            let x_4099 : vec3<f32> = txVec67;
            let x_4101 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4099.xy, x_4099.z);
            u_xlat88 = x_4101;
            let x_4103 : f32 = u_xlat19.w;
            let x_4104 : f32 = u_xlat88;
            let x_4106 : f32 = u_xlat87;
            u_xlat87 = ((x_4103 * x_4104) + x_4106);
            let x_4109 : vec4<f32> = u_xlat17;
            let x_4110 : vec2<f32> = vec2<f32>(x_4109.x, x_4109.y);
            let x_4112 : f32 = u_xlat11.z;
            txVec68 = vec3<f32>(x_4110.x, x_4110.y, x_4112);
            let x_4119 : vec3<f32> = txVec68;
            let x_4121 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4119.xy, x_4119.z);
            u_xlat88 = x_4121;
            let x_4123 : f32 = u_xlat20.x;
            let x_4124 : f32 = u_xlat88;
            let x_4126 : f32 = u_xlat87;
            u_xlat87 = ((x_4123 * x_4124) + x_4126);
            let x_4129 : vec4<f32> = u_xlat17;
            let x_4130 : vec2<f32> = vec2<f32>(x_4129.z, x_4129.w);
            let x_4132 : f32 = u_xlat11.z;
            txVec69 = vec3<f32>(x_4130.x, x_4130.y, x_4132);
            let x_4139 : vec3<f32> = txVec69;
            let x_4141 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4139.xy, x_4139.z);
            u_xlat88 = x_4141;
            let x_4143 : f32 = u_xlat20.y;
            let x_4144 : f32 = u_xlat88;
            let x_4146 : f32 = u_xlat87;
            u_xlat87 = ((x_4143 * x_4144) + x_4146);
            let x_4149 : vec4<f32> = u_xlat15;
            let x_4150 : vec2<f32> = vec2<f32>(x_4149.z, x_4149.w);
            let x_4152 : f32 = u_xlat11.z;
            txVec70 = vec3<f32>(x_4150.x, x_4150.y, x_4152);
            let x_4159 : vec3<f32> = txVec70;
            let x_4161 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4159.xy, x_4159.z);
            u_xlat88 = x_4161;
            let x_4163 : f32 = u_xlat20.z;
            let x_4164 : f32 = u_xlat88;
            let x_4166 : f32 = u_xlat87;
            u_xlat87 = ((x_4163 * x_4164) + x_4166);
            let x_4169 : vec4<f32> = u_xlat14;
            let x_4170 : vec2<f32> = vec2<f32>(x_4169.x, x_4169.y);
            let x_4172 : f32 = u_xlat11.z;
            txVec71 = vec3<f32>(x_4170.x, x_4170.y, x_4172);
            let x_4179 : vec3<f32> = txVec71;
            let x_4181 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4179.xy, x_4179.z);
            u_xlat88 = x_4181;
            let x_4183 : f32 = u_xlat20.w;
            let x_4184 : f32 = u_xlat88;
            let x_4186 : f32 = u_xlat87;
            u_xlat87 = ((x_4183 * x_4184) + x_4186);
            let x_4189 : vec4<f32> = u_xlat14;
            let x_4190 : vec2<f32> = vec2<f32>(x_4189.z, x_4189.w);
            let x_4192 : f32 = u_xlat11.z;
            txVec72 = vec3<f32>(x_4190.x, x_4190.y, x_4192);
            let x_4199 : vec3<f32> = txVec72;
            let x_4201 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4199.xy, x_4199.z);
            u_xlat88 = x_4201;
            let x_4202 : f32 = u_xlat85;
            let x_4203 : f32 = u_xlat88;
            let x_4205 : f32 = u_xlat87;
            u_xlat84 = ((x_4202 * x_4203) + x_4205);
          } else {
            let x_4208 : vec4<f32> = u_xlat11;
            let x_4211 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4214 : vec2<f32> = ((vec2<f32>(x_4208.x, x_4208.y) * vec2<f32>(x_4211.z, x_4211.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4215 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4214.x, x_4214.y, x_4215.z, x_4215.w);
            let x_4217 : vec4<f32> = u_xlat12;
            let x_4219 : vec2<f32> = floor(vec2<f32>(x_4217.x, x_4217.y));
            let x_4220 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4219.x, x_4219.y, x_4220.z, x_4220.w);
            let x_4222 : vec4<f32> = u_xlat11;
            let x_4225 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4228 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_4222.x, x_4222.y) * vec2<f32>(x_4225.z, x_4225.w)) + -(vec2<f32>(x_4228.x, x_4228.y)));
            let x_4232 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_4232.x, x_4232.x, x_4232.y, x_4232.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4235 : vec4<f32> = u_xlat13;
            let x_4237 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4235.x, x_4235.x, x_4235.z, x_4235.z) * vec4<f32>(x_4237.x, x_4237.x, x_4237.z, x_4237.z));
            let x_4240 : vec4<f32> = u_xlat14;
            let x_4242 : vec2<f32> = (vec2<f32>(x_4240.y, x_4240.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_4243 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4243.x, x_4242.x, x_4243.z, x_4242.y);
            let x_4245 : vec4<f32> = u_xlat14;
            let x_4248 : vec2<f32> = u_xlat64;
            let x_4250 : vec2<f32> = ((vec2<f32>(x_4245.x, x_4245.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4248));
            let x_4251 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4250.x, x_4251.y, x_4250.y, x_4251.w);
            let x_4253 : vec2<f32> = u_xlat64;
            let x_4255 : vec2<f32> = (-(x_4253) + vec2<f32>(1.0f, 1.0f));
            let x_4256 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4255.x, x_4255.y, x_4256.z, x_4256.w);
            let x_4258 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_4258, vec2<f32>(0.0f, 0.0f));
            let x_4260 : vec2<f32> = u_xlat66;
            let x_4262 : vec2<f32> = u_xlat66;
            let x_4264 : vec4<f32> = u_xlat14;
            let x_4266 : vec2<f32> = ((-(x_4260) * x_4262) + vec2<f32>(x_4264.x, x_4264.y));
            let x_4267 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4266.x, x_4266.y, x_4267.z, x_4267.w);
            let x_4269 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_4269, vec2<f32>(0.0f, 0.0f));
            let x_4272 : vec2<f32> = u_xlat66;
            let x_4274 : vec2<f32> = u_xlat66;
            let x_4276 : vec4<f32> = u_xlat13;
            let x_4278 : vec2<f32> = ((-(x_4272) * x_4274) + vec2<f32>(x_4276.y, x_4276.w));
            let x_4279 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_4278.x, x_4279.y, x_4278.y);
            let x_4281 : vec4<f32> = u_xlat14;
            let x_4283 : vec2<f32> = (vec2<f32>(x_4281.x, x_4281.y) + vec2<f32>(2.0f, 2.0f));
            let x_4284 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4283.x, x_4283.y, x_4284.z, x_4284.w);
            let x_4286 : vec3<f32> = u_xlat39;
            let x_4288 : vec2<f32> = (vec2<f32>(x_4286.x, x_4286.z) + vec2<f32>(2.0f, 2.0f));
            let x_4289 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4289.x, x_4288.x, x_4289.z, x_4288.y);
            let x_4292 : f32 = u_xlat13.y;
            u_xlat16.z = (x_4292 * 0.08163200318813323975f);
            let x_4295 : vec4<f32> = u_xlat13;
            let x_4297 : vec3<f32> = (vec3<f32>(x_4295.z, x_4295.x, x_4295.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_4298 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4297.x, x_4297.y, x_4297.z, x_4298.w);
            let x_4300 : vec4<f32> = u_xlat14;
            let x_4302 : vec2<f32> = (vec2<f32>(x_4300.x, x_4300.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_4303 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4302.x, x_4302.y, x_4303.z, x_4303.w);
            let x_4306 : f32 = u_xlat17.y;
            u_xlat16.x = x_4306;
            let x_4308 : vec2<f32> = u_xlat64;
            let x_4311 : vec2<f32> = ((vec2<f32>(x_4308.x, x_4308.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4312 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4312.x, x_4311.x, x_4312.z, x_4311.y);
            let x_4314 : vec2<f32> = u_xlat64;
            let x_4317 : vec2<f32> = ((vec2<f32>(x_4314.x, x_4314.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4318 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4317.x, x_4318.y, x_4317.y, x_4318.w);
            let x_4321 : f32 = u_xlat13.x;
            u_xlat14.y = x_4321;
            let x_4324 : f32 = u_xlat15.y;
            u_xlat14.w = x_4324;
            let x_4326 : vec4<f32> = u_xlat14;
            let x_4327 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_4326 + x_4327);
            let x_4329 : vec2<f32> = u_xlat64;
            let x_4332 : vec2<f32> = ((vec2<f32>(x_4329.y, x_4329.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4333 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4333.x, x_4332.x, x_4333.z, x_4332.y);
            let x_4335 : vec2<f32> = u_xlat64;
            let x_4338 : vec2<f32> = ((vec2<f32>(x_4335.y, x_4335.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4339 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4338.x, x_4339.y, x_4338.y, x_4339.w);
            let x_4342 : f32 = u_xlat13.y;
            u_xlat15.y = x_4342;
            let x_4344 : vec4<f32> = u_xlat15;
            let x_4345 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_4344 + x_4345);
            let x_4347 : vec4<f32> = u_xlat14;
            let x_4348 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_4347 / x_4348);
            let x_4350 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_4350 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4352 : vec4<f32> = u_xlat15;
            let x_4353 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_4352 / x_4353);
            let x_4355 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_4355 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4357 : vec4<f32> = u_xlat14;
            let x_4360 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_4357.w, x_4357.x, x_4357.y, x_4357.z) * vec4<f32>(x_4360.x, x_4360.x, x_4360.x, x_4360.x));
            let x_4363 : vec4<f32> = u_xlat15;
            let x_4366 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_4363.x, x_4363.w, x_4363.y, x_4363.z) * vec4<f32>(x_4366.y, x_4366.y, x_4366.y, x_4366.y));
            let x_4369 : vec4<f32> = u_xlat14;
            let x_4370 : vec3<f32> = vec3<f32>(x_4369.y, x_4369.z, x_4369.w);
            let x_4371 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4370.x, x_4371.y, x_4370.y, x_4370.z);
            let x_4374 : f32 = u_xlat15.x;
            u_xlat17.y = x_4374;
            let x_4376 : vec4<f32> = u_xlat12;
            let x_4379 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4382 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_4376.x, x_4376.y, x_4376.x, x_4376.y) * vec4<f32>(x_4379.x, x_4379.y, x_4379.x, x_4379.y)) + vec4<f32>(x_4382.x, x_4382.y, x_4382.z, x_4382.y));
            let x_4385 : vec4<f32> = u_xlat12;
            let x_4388 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4391 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_4385.x, x_4385.y) * vec2<f32>(x_4388.x, x_4388.y)) + vec2<f32>(x_4391.w, x_4391.y));
            let x_4395 : f32 = u_xlat17.y;
            u_xlat14.y = x_4395;
            let x_4398 : f32 = u_xlat15.z;
            u_xlat17.y = x_4398;
            let x_4400 : vec4<f32> = u_xlat12;
            let x_4403 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4406 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_4400.x, x_4400.y, x_4400.x, x_4400.y) * vec4<f32>(x_4403.x, x_4403.y, x_4403.x, x_4403.y)) + vec4<f32>(x_4406.x, x_4406.y, x_4406.z, x_4406.y));
            let x_4409 : vec4<f32> = u_xlat12;
            let x_4412 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4415 : vec4<f32> = u_xlat17;
            let x_4417 : vec2<f32> = ((vec2<f32>(x_4409.x, x_4409.y) * vec2<f32>(x_4412.x, x_4412.y)) + vec2<f32>(x_4415.w, x_4415.y));
            let x_4418 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_4417.x, x_4417.y, x_4418.z, x_4418.w);
            let x_4421 : f32 = u_xlat17.y;
            u_xlat14.z = x_4421;
            let x_4424 : vec4<f32> = u_xlat12;
            let x_4427 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4430 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_4424.x, x_4424.y, x_4424.x, x_4424.y) * vec4<f32>(x_4427.x, x_4427.y, x_4427.x, x_4427.y)) + vec4<f32>(x_4430.x, x_4430.y, x_4430.x, x_4430.z));
            let x_4434 : f32 = u_xlat15.w;
            u_xlat17.y = x_4434;
            let x_4437 : vec4<f32> = u_xlat12;
            let x_4440 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4443 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_4437.x, x_4437.y, x_4437.x, x_4437.y) * vec4<f32>(x_4440.x, x_4440.y, x_4440.x, x_4440.y)) + vec4<f32>(x_4443.x, x_4443.y, x_4443.z, x_4443.y));
            let x_4447 : vec4<f32> = u_xlat12;
            let x_4450 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4453 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_4447.x, x_4447.y) * vec2<f32>(x_4450.x, x_4450.y)) + vec2<f32>(x_4453.w, x_4453.y));
            let x_4457 : f32 = u_xlat17.y;
            u_xlat14.w = x_4457;
            let x_4460 : vec4<f32> = u_xlat12;
            let x_4463 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4466 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_4460.x, x_4460.y) * vec2<f32>(x_4463.x, x_4463.y)) + vec2<f32>(x_4466.x, x_4466.w));
            let x_4469 : vec4<f32> = u_xlat17;
            let x_4470 : vec3<f32> = vec3<f32>(x_4469.x, x_4469.z, x_4469.w);
            let x_4471 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4470.x, x_4471.y, x_4470.y, x_4470.z);
            let x_4473 : vec4<f32> = u_xlat12;
            let x_4476 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4479 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_4473.x, x_4473.y, x_4473.x, x_4473.y) * vec4<f32>(x_4476.x, x_4476.y, x_4476.x, x_4476.y)) + vec4<f32>(x_4479.x, x_4479.y, x_4479.z, x_4479.y));
            let x_4483 : vec4<f32> = u_xlat12;
            let x_4486 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4489 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_4483.x, x_4483.y) * vec2<f32>(x_4486.x, x_4486.y)) + vec2<f32>(x_4489.w, x_4489.y));
            let x_4493 : f32 = u_xlat14.x;
            u_xlat15.x = x_4493;
            let x_4495 : vec4<f32> = u_xlat12;
            let x_4498 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4501 : vec4<f32> = u_xlat15;
            let x_4503 : vec2<f32> = ((vec2<f32>(x_4495.x, x_4495.y) * vec2<f32>(x_4498.x, x_4498.y)) + vec2<f32>(x_4501.x, x_4501.y));
            let x_4504 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4503.x, x_4503.y, x_4504.z, x_4504.w);
            let x_4507 : vec4<f32> = u_xlat13;
            let x_4509 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_4507.x, x_4507.x, x_4507.x, x_4507.x) * x_4509);
            let x_4512 : vec4<f32> = u_xlat13;
            let x_4514 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_4512.y, x_4512.y, x_4512.y, x_4512.y) * x_4514);
            let x_4517 : vec4<f32> = u_xlat13;
            let x_4519 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_4517.z, x_4517.z, x_4517.z, x_4517.z) * x_4519);
            let x_4521 : vec4<f32> = u_xlat13;
            let x_4523 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_4521.w, x_4521.w, x_4521.w, x_4521.w) * x_4523);
            let x_4526 : vec4<f32> = u_xlat18;
            let x_4527 : vec2<f32> = vec2<f32>(x_4526.x, x_4526.y);
            let x_4529 : f32 = u_xlat11.z;
            txVec73 = vec3<f32>(x_4527.x, x_4527.y, x_4529);
            let x_4536 : vec3<f32> = txVec73;
            let x_4538 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4536.xy, x_4536.z);
            u_xlat85 = x_4538;
            let x_4540 : vec4<f32> = u_xlat18;
            let x_4541 : vec2<f32> = vec2<f32>(x_4540.z, x_4540.w);
            let x_4543 : f32 = u_xlat11.z;
            txVec74 = vec3<f32>(x_4541.x, x_4541.y, x_4543);
            let x_4550 : vec3<f32> = txVec74;
            let x_4552 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4550.xy, x_4550.z);
            u_xlat87 = x_4552;
            let x_4553 : f32 = u_xlat87;
            let x_4555 : f32 = u_xlat23.y;
            u_xlat87 = (x_4553 * x_4555);
            let x_4558 : f32 = u_xlat23.x;
            let x_4559 : f32 = u_xlat85;
            let x_4561 : f32 = u_xlat87;
            u_xlat85 = ((x_4558 * x_4559) + x_4561);
            let x_4564 : vec2<f32> = u_xlat64;
            let x_4566 : f32 = u_xlat11.z;
            txVec75 = vec3<f32>(x_4564.x, x_4564.y, x_4566);
            let x_4573 : vec3<f32> = txVec75;
            let x_4575 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4573.xy, x_4573.z);
            u_xlat87 = x_4575;
            let x_4577 : f32 = u_xlat23.z;
            let x_4578 : f32 = u_xlat87;
            let x_4580 : f32 = u_xlat85;
            u_xlat85 = ((x_4577 * x_4578) + x_4580);
            let x_4583 : vec4<f32> = u_xlat21;
            let x_4584 : vec2<f32> = vec2<f32>(x_4583.x, x_4583.y);
            let x_4586 : f32 = u_xlat11.z;
            txVec76 = vec3<f32>(x_4584.x, x_4584.y, x_4586);
            let x_4593 : vec3<f32> = txVec76;
            let x_4595 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4593.xy, x_4593.z);
            u_xlat87 = x_4595;
            let x_4597 : f32 = u_xlat23.w;
            let x_4598 : f32 = u_xlat87;
            let x_4600 : f32 = u_xlat85;
            u_xlat85 = ((x_4597 * x_4598) + x_4600);
            let x_4603 : vec4<f32> = u_xlat19;
            let x_4604 : vec2<f32> = vec2<f32>(x_4603.x, x_4603.y);
            let x_4606 : f32 = u_xlat11.z;
            txVec77 = vec3<f32>(x_4604.x, x_4604.y, x_4606);
            let x_4613 : vec3<f32> = txVec77;
            let x_4615 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4613.xy, x_4613.z);
            u_xlat87 = x_4615;
            let x_4617 : f32 = u_xlat24.x;
            let x_4618 : f32 = u_xlat87;
            let x_4620 : f32 = u_xlat85;
            u_xlat85 = ((x_4617 * x_4618) + x_4620);
            let x_4623 : vec4<f32> = u_xlat19;
            let x_4624 : vec2<f32> = vec2<f32>(x_4623.z, x_4623.w);
            let x_4626 : f32 = u_xlat11.z;
            txVec78 = vec3<f32>(x_4624.x, x_4624.y, x_4626);
            let x_4633 : vec3<f32> = txVec78;
            let x_4635 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4633.xy, x_4633.z);
            u_xlat87 = x_4635;
            let x_4637 : f32 = u_xlat24.y;
            let x_4638 : f32 = u_xlat87;
            let x_4640 : f32 = u_xlat85;
            u_xlat85 = ((x_4637 * x_4638) + x_4640);
            let x_4643 : vec4<f32> = u_xlat20;
            let x_4644 : vec2<f32> = vec2<f32>(x_4643.x, x_4643.y);
            let x_4646 : f32 = u_xlat11.z;
            txVec79 = vec3<f32>(x_4644.x, x_4644.y, x_4646);
            let x_4653 : vec3<f32> = txVec79;
            let x_4655 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4653.xy, x_4653.z);
            u_xlat87 = x_4655;
            let x_4657 : f32 = u_xlat24.z;
            let x_4658 : f32 = u_xlat87;
            let x_4660 : f32 = u_xlat85;
            u_xlat85 = ((x_4657 * x_4658) + x_4660);
            let x_4663 : vec4<f32> = u_xlat21;
            let x_4664 : vec2<f32> = vec2<f32>(x_4663.z, x_4663.w);
            let x_4666 : f32 = u_xlat11.z;
            txVec80 = vec3<f32>(x_4664.x, x_4664.y, x_4666);
            let x_4673 : vec3<f32> = txVec80;
            let x_4675 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4673.xy, x_4673.z);
            u_xlat87 = x_4675;
            let x_4677 : f32 = u_xlat24.w;
            let x_4678 : f32 = u_xlat87;
            let x_4680 : f32 = u_xlat85;
            u_xlat85 = ((x_4677 * x_4678) + x_4680);
            let x_4683 : vec4<f32> = u_xlat22;
            let x_4684 : vec2<f32> = vec2<f32>(x_4683.x, x_4683.y);
            let x_4686 : f32 = u_xlat11.z;
            txVec81 = vec3<f32>(x_4684.x, x_4684.y, x_4686);
            let x_4693 : vec3<f32> = txVec81;
            let x_4695 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4693.xy, x_4693.z);
            u_xlat87 = x_4695;
            let x_4697 : f32 = u_xlat25.x;
            let x_4698 : f32 = u_xlat87;
            let x_4700 : f32 = u_xlat85;
            u_xlat85 = ((x_4697 * x_4698) + x_4700);
            let x_4703 : vec4<f32> = u_xlat22;
            let x_4704 : vec2<f32> = vec2<f32>(x_4703.z, x_4703.w);
            let x_4706 : f32 = u_xlat11.z;
            txVec82 = vec3<f32>(x_4704.x, x_4704.y, x_4706);
            let x_4713 : vec3<f32> = txVec82;
            let x_4715 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4713.xy, x_4713.z);
            u_xlat87 = x_4715;
            let x_4717 : f32 = u_xlat25.y;
            let x_4718 : f32 = u_xlat87;
            let x_4720 : f32 = u_xlat85;
            u_xlat85 = ((x_4717 * x_4718) + x_4720);
            let x_4723 : vec2<f32> = u_xlat40;
            let x_4725 : f32 = u_xlat11.z;
            txVec83 = vec3<f32>(x_4723.x, x_4723.y, x_4725);
            let x_4732 : vec3<f32> = txVec83;
            let x_4734 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4732.xy, x_4732.z);
            u_xlat87 = x_4734;
            let x_4736 : f32 = u_xlat25.z;
            let x_4737 : f32 = u_xlat87;
            let x_4739 : f32 = u_xlat85;
            u_xlat85 = ((x_4736 * x_4737) + x_4739);
            let x_4742 : vec2<f32> = u_xlat72;
            let x_4744 : f32 = u_xlat11.z;
            txVec84 = vec3<f32>(x_4742.x, x_4742.y, x_4744);
            let x_4751 : vec3<f32> = txVec84;
            let x_4753 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4751.xy, x_4751.z);
            u_xlat87 = x_4753;
            let x_4755 : f32 = u_xlat25.w;
            let x_4756 : f32 = u_xlat87;
            let x_4758 : f32 = u_xlat85;
            u_xlat85 = ((x_4755 * x_4756) + x_4758);
            let x_4761 : vec4<f32> = u_xlat17;
            let x_4762 : vec2<f32> = vec2<f32>(x_4761.x, x_4761.y);
            let x_4764 : f32 = u_xlat11.z;
            txVec85 = vec3<f32>(x_4762.x, x_4762.y, x_4764);
            let x_4771 : vec3<f32> = txVec85;
            let x_4773 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4771.xy, x_4771.z);
            u_xlat87 = x_4773;
            let x_4775 : f32 = u_xlat13.x;
            let x_4776 : f32 = u_xlat87;
            let x_4778 : f32 = u_xlat85;
            u_xlat85 = ((x_4775 * x_4776) + x_4778);
            let x_4781 : vec4<f32> = u_xlat17;
            let x_4782 : vec2<f32> = vec2<f32>(x_4781.z, x_4781.w);
            let x_4784 : f32 = u_xlat11.z;
            txVec86 = vec3<f32>(x_4782.x, x_4782.y, x_4784);
            let x_4791 : vec3<f32> = txVec86;
            let x_4793 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4791.xy, x_4791.z);
            u_xlat87 = x_4793;
            let x_4795 : f32 = u_xlat13.y;
            let x_4796 : f32 = u_xlat87;
            let x_4798 : f32 = u_xlat85;
            u_xlat85 = ((x_4795 * x_4796) + x_4798);
            let x_4801 : vec2<f32> = u_xlat67;
            let x_4803 : f32 = u_xlat11.z;
            txVec87 = vec3<f32>(x_4801.x, x_4801.y, x_4803);
            let x_4810 : vec3<f32> = txVec87;
            let x_4812 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4810.xy, x_4810.z);
            u_xlat87 = x_4812;
            let x_4814 : f32 = u_xlat13.z;
            let x_4815 : f32 = u_xlat87;
            let x_4817 : f32 = u_xlat85;
            u_xlat85 = ((x_4814 * x_4815) + x_4817);
            let x_4820 : vec4<f32> = u_xlat12;
            let x_4821 : vec2<f32> = vec2<f32>(x_4820.x, x_4820.y);
            let x_4823 : f32 = u_xlat11.z;
            txVec88 = vec3<f32>(x_4821.x, x_4821.y, x_4823);
            let x_4830 : vec3<f32> = txVec88;
            let x_4832 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4830.xy, x_4830.z);
            u_xlat87 = x_4832;
            let x_4834 : f32 = u_xlat13.w;
            let x_4835 : f32 = u_xlat87;
            let x_4837 : f32 = u_xlat85;
            u_xlat84 = ((x_4834 * x_4835) + x_4837);
          }
        }
      } else {
        let x_4841 : vec4<f32> = u_xlat11;
        let x_4842 : vec2<f32> = vec2<f32>(x_4841.x, x_4841.y);
        let x_4844 : f32 = u_xlat11.z;
        txVec89 = vec3<f32>(x_4842.x, x_4842.y, x_4844);
        let x_4851 : vec3<f32> = txVec89;
        let x_4853 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4851.xy, x_4851.z);
        u_xlat84 = x_4853;
      }
      let x_4854 : i32 = u_xlati3;
      let x_4856 : f32 = x_131.x_AdditionalShadowParams[x_4854].x;
      u_xlat85 = (1.0f + -(x_4856));
      let x_4859 : f32 = u_xlat84;
      let x_4860 : i32 = u_xlati3;
      let x_4862 : f32 = x_131.x_AdditionalShadowParams[x_4860].x;
      let x_4864 : f32 = u_xlat85;
      u_xlat84 = ((x_4859 * x_4862) + x_4864);
      let x_4867 : f32 = u_xlat11.z;
      u_xlatb85 = (0.0f >= x_4867);
      let x_4871 : f32 = u_xlat11.z;
      u_xlatb87 = (x_4871 >= 1.0f);
      let x_4873 : bool = u_xlatb85;
      let x_4874 : bool = u_xlatb87;
      u_xlatb85 = (x_4873 | x_4874);
      let x_4876 : bool = u_xlatb85;
      let x_4877 : f32 = u_xlat84;
      u_xlat84 = select(x_4877, 1.0f, x_4876);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_4880 : f32 = u_xlat84;
    u_xlat85 = (-(x_4880) + 1.0f);
    let x_4883 : f32 = u_xlat79;
    let x_4884 : f32 = u_xlat85;
    let x_4886 : f32 = u_xlat84;
    u_xlat84 = ((x_4883 * x_4884) + x_4886);
    let x_4889 : f32 = u_xlat4.x;
    let x_4890 : f32 = u_xlat84;
    u_xlat4.x = (x_4889 * x_4890);
    let x_4893 : vec4<f32> = u_xlat5;
    let x_4895 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_4893.x, x_4893.y, x_4893.z), vec3<f32>(x_4895.x, x_4895.y, x_4895.z));
    let x_4898 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4898, 0.0f, 1.0f);
    let x_4901 : f32 = u_xlat4.x;
    let x_4902 : f32 = u_xlat84;
    u_xlat4.x = (x_4901 * x_4902);
    let x_4905 : vec4<f32> = u_xlat4;
    let x_4907 : i32 = u_xlati3;
    let x_4909 : vec4<f32> = x_3447.x_AdditionalLightsColor[x_4907];
    let x_4911 : vec3<f32> = (vec3<f32>(x_4905.x, x_4905.x, x_4905.x) * vec3<f32>(x_4909.x, x_4909.y, x_4909.z));
    let x_4912 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4911.x, x_4911.y, x_4911.z, x_4912.w);
    let x_4914 : vec4<f32> = u_xlat9;
    let x_4916 : vec2<f32> = u_xlat58;
    let x_4919 : vec3<f32> = u_xlat29;
    let x_4920 : vec3<f32> = ((vec3<f32>(x_4914.x, x_4914.y, x_4914.z) * vec3<f32>(x_4916.x, x_4916.x, x_4916.x)) + x_4919);
    let x_4921 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4920.x, x_4920.y, x_4920.z, x_4921.w);
    let x_4923 : vec4<f32> = u_xlat9;
    let x_4925 : vec4<f32> = u_xlat9;
    u_xlat3.x = dot(vec3<f32>(x_4923.x, x_4923.y, x_4923.z), vec3<f32>(x_4925.x, x_4925.y, x_4925.z));
    let x_4930 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_4930, 1.17549435e-38f);
    let x_4934 : f32 = u_xlat3.x;
    u_xlat3.x = inverseSqrt(x_4934);
    let x_4937 : vec4<f32> = u_xlat3;
    let x_4939 : vec4<f32> = u_xlat9;
    let x_4941 : vec3<f32> = (vec3<f32>(x_4937.x, x_4937.x, x_4937.x) * vec3<f32>(x_4939.x, x_4939.y, x_4939.z));
    let x_4942 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4941.x, x_4941.y, x_4941.z, x_4942.w);
    let x_4944 : vec4<f32> = u_xlat5;
    let x_4946 : vec4<f32> = u_xlat9;
    u_xlat3.x = dot(vec3<f32>(x_4944.x, x_4944.y, x_4944.z), vec3<f32>(x_4946.x, x_4946.y, x_4946.z));
    let x_4951 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_4951, 0.0f, 1.0f);
    let x_4954 : vec4<f32> = u_xlat10;
    let x_4956 : vec4<f32> = u_xlat9;
    u_xlat4.x = dot(vec3<f32>(x_4954.x, x_4954.y, x_4954.z), vec3<f32>(x_4956.x, x_4956.y, x_4956.z));
    let x_4961 : f32 = u_xlat4.x;
    u_xlat4.x = clamp(x_4961, 0.0f, 1.0f);
    let x_4965 : f32 = u_xlat3.x;
    let x_4967 : f32 = u_xlat3.x;
    u_xlat3.x = (x_4965 * x_4967);
    let x_4971 : f32 = u_xlat3.x;
    let x_4973 : f32 = u_xlat8.x;
    u_xlat3.x = ((x_4971 * x_4973) + 1.00001001358032226562f);
    let x_4978 : f32 = u_xlat4.x;
    let x_4980 : f32 = u_xlat4.x;
    u_xlat4.x = (x_4978 * x_4980);
    let x_4984 : f32 = u_xlat3.x;
    let x_4986 : f32 = u_xlat3.x;
    u_xlat3.x = (x_4984 * x_4986);
    let x_4990 : f32 = u_xlat4.x;
    u_xlat4.x = max(x_4990, 0.10000000149011611938f);
    let x_4994 : f32 = u_xlat3.x;
    let x_4996 : f32 = u_xlat4.x;
    u_xlat3.x = (x_4994 * x_4996);
    let x_5000 : f32 = u_xlat6.x;
    let x_5002 : f32 = u_xlat3.x;
    u_xlat3.x = (x_5000 * x_5002);
    let x_5005 : f32 = u_xlat83;
    let x_5007 : f32 = u_xlat3.x;
    u_xlat3.x = (x_5005 / x_5007);
    let x_5010 : vec4<f32> = u_xlat3;
    let x_5013 : vec3<f32> = u_xlat2;
    let x_5014 : vec3<f32> = ((vec3<f32>(x_5010.x, x_5010.x, x_5010.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_5013);
    let x_5015 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5014.x, x_5014.y, x_5014.z, x_5015.w);
    let x_5017 : vec4<f32> = u_xlat9;
    let x_5019 : vec4<f32> = u_xlat11;
    let x_5022 : vec3<f32> = u_xlat34;
    u_xlat34 = ((vec3<f32>(x_5017.x, x_5017.y, x_5017.z) * vec3<f32>(x_5019.x, x_5019.y, x_5019.z)) + x_5022);

    continuing {
      let x_5024 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_5024 + bitcast<u32>(1i));
    }
  }
  let x_5026 : vec3<f32> = u_xlat30;
  let x_5027 : vec3<f32> = u_xlat32;
  let x_5030 : vec4<f32> = u_xlat7;
  u_xlat2 = ((x_5026 * vec3<f32>(x_5027.x, x_5027.x, x_5027.x)) + vec3<f32>(x_5030.x, x_5030.y, x_5030.z));
  let x_5033 : vec3<f32> = u_xlat34;
  let x_5034 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_5033 + x_5034);
  let x_5036 : vec4<f32> = vs_INTERP6;
  let x_5038 : vec3<f32> = u_xlat0;
  let x_5040 : vec3<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_5036.w, x_5036.w, x_5036.w) * x_5038) + x_5040);
  let x_5043 : f32 = u_xlat27.x;
  let x_5045 : f32 = u_xlat27.x;
  u_xlat78 = (x_5043 * -(x_5045));
  let x_5048 : f32 = u_xlat78;
  u_xlat78 = exp2(x_5048);
  let x_5050 : vec3<f32> = u_xlat0;
  let x_5052 : vec4<f32> = x_53.unity_FogColor;
  u_xlat0 = (x_5050 + -(vec3<f32>(x_5052.x, x_5052.y, x_5052.z)));
  let x_5058 : f32 = u_xlat78;
  let x_5060 : vec3<f32> = u_xlat0;
  let x_5063 : vec4<f32> = x_53.unity_FogColor;
  let x_5065 : vec3<f32> = ((vec3<f32>(x_5058, x_5058, x_5058) * x_5060) + vec3<f32>(x_5063.x, x_5063.y, x_5063.z));
  let x_5066 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_5065.x, x_5065.y, x_5065.z, x_5066.w);
  let x_5068 : bool = u_xlatb53;
  if (x_5068) {
    let x_5073 : f32 = u_xlat1.x;
    x_5069 = x_5073;
  } else {
    x_5069 = 1.0f;
  }
  let x_5075 : f32 = x_5069;
  SV_Target0.w = x_5075;
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


