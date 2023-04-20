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
  x_BaseMap_ST : vec4<f32>,
  /* @offset(16) */
  x_DetailAlbedoMap_ST : vec4<f32>,
  /* @offset(32) */
  x_BaseColor : vec4<f32>,
  /* @offset(48) */
  x_SpecColor : vec4<f32>,
  /* @offset(64) */
  x_EmissionColor : vec4<f32>,
  /* @offset(80) */
  x_Cutoff : f32,
  /* @offset(84) */
  x_Smoothness : f32,
  /* @offset(88) */
  x_Metallic : f32,
  /* @offset(92) */
  x_BumpScale : f32,
  /* @offset(96) */
  x_Parallax : f32,
  /* @offset(100) */
  x_OcclusionStrength : f32,
  /* @offset(104) */
  x_ClearCoatMask : f32,
  /* @offset(108) */
  x_ClearCoatSmoothness : f32,
  /* @offset(112) */
  x_DetailAlbedoMapScale : f32,
  /* @offset(116) */
  x_DetailNormalMapScale : f32,
  /* @offset(120) */
  x_Surface : f32,
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

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_42 : UnityPerMaterial;

var<private> u_xlatb78 : bool;

var<private> u_xlat2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat78 : f32;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_126 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu78 : u32;

var<private> u_xlati78 : i32;

@group(1) @binding(2) var<uniform> x_357 : UnityPerDraw;

var<private> u_xlat81 : f32;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat82 : f32;

var<private> u_xlat83 : f32;

var<private> u_xlatb32 : bool;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlatb58 : bool;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat84 : f32;

var<private> u_xlat65 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat86 : f32;

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlatb30 : bool;

var<private> u_xlatb56 : bool;

var<private> u_xlat30 : f32;

var<private> u_xlat56 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(4) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu80 : u32;

var<private> u_xlatu8 : u32;

var<private> u_xlati34 : i32;

var<private> u_xlati8 : i32;

@group(1) @binding(1) var<uniform> x_2141 : AdditionalLights;

var<private> u_xlat35 : f32;

var<private> u_xlati61 : i32;

var<private> u_xlatb87 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat88 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlatb61 : bool;

@group(0) @binding(3) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat89 : f32;

var<private> u_xlat39 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat40 : vec2<f32>;

var<private> u_xlat72 : vec2<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlatb88 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb8 : bool;

var<private> u_xlatu30 : u32;

fn main_1() {
  var x_96 : vec3<f32>;
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
  var x_1813 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2302 : f32;
  var x_2312 : f32;
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
  var x_3584 : f32;
  var x_3787 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_35);
  u_xlat0 = x_36;
  let x_38 : vec4<f32> = u_xlat0;
  let x_46 : vec4<f32> = x_42.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_38.w, x_38.x, x_38.y, x_38.z) * vec4<f32>(x_46.w, x_46.x, x_46.y, x_46.z));
  let x_55 : f32 = x_28.unity_OrthoParams.w;
  u_xlatb78 = (x_55 == 0.0f);
  let x_62 : vec3<f32> = vs_TEXCOORD1;
  let x_67 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_62) + x_67);
  let x_71 : vec3<f32> = u_xlat2;
  let x_72 : vec3<f32> = u_xlat2;
  u_xlat80 = dot(x_71, x_72);
  let x_74 : f32 = u_xlat80;
  u_xlat80 = inverseSqrt(x_74);
  let x_76 : f32 = u_xlat80;
  let x_78 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_76, x_76, x_76) * x_78);
  let x_84 : f32 = x_28.unity_MatrixV[0i].z;
  u_xlat3.x = x_84;
  let x_88 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat3.y = x_88;
  let x_92 : f32 = x_28.unity_MatrixV[2i].z;
  u_xlat3.z = x_92;
  let x_94 : bool = u_xlatb78;
  if (x_94) {
    let x_99 : vec3<f32> = u_xlat2;
    x_96 = x_99;
  } else {
    let x_101 : vec4<f32> = u_xlat3;
    x_96 = vec3<f32>(x_101.x, x_101.y, x_101.z);
  }
  let x_103 : vec3<f32> = x_96;
  u_xlat2 = x_103;
  let x_106 : vec3<f32> = vs_TEXCOORD2;
  let x_107 : vec3<f32> = vs_TEXCOORD2;
  u_xlat78 = dot(x_106, x_107);
  let x_109 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_109);
  let x_111 : f32 = u_xlat78;
  let x_113 : vec3<f32> = vs_TEXCOORD2;
  let x_114 : vec3<f32> = (vec3<f32>(x_111, x_111, x_111) * x_113);
  let x_115 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_114.x, x_114.y, x_114.z, x_115.w);
  let x_118 : vec3<f32> = vs_TEXCOORD1;
  let x_128 : vec4<f32> = x_126.x_CascadeShadowSplitSpheres0;
  let x_131 : vec3<f32> = (x_118 + -(vec3<f32>(x_128.x, x_128.y, x_128.z)));
  let x_132 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_131.x, x_131.y, x_131.z, x_132.w);
  let x_135 : vec3<f32> = vs_TEXCOORD1;
  let x_137 : vec4<f32> = x_126.x_CascadeShadowSplitSpheres1;
  let x_140 : vec3<f32> = (x_135 + -(vec3<f32>(x_137.x, x_137.y, x_137.z)));
  let x_141 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_140.x, x_140.y, x_140.z, x_141.w);
  let x_144 : vec3<f32> = vs_TEXCOORD1;
  let x_147 : vec4<f32> = x_126.x_CascadeShadowSplitSpheres2;
  let x_150 : vec3<f32> = (x_144 + -(vec3<f32>(x_147.x, x_147.y, x_147.z)));
  let x_151 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_150.x, x_150.y, x_150.z, x_151.w);
  let x_154 : vec3<f32> = vs_TEXCOORD1;
  let x_156 : vec4<f32> = x_126.x_CascadeShadowSplitSpheres3;
  let x_159 : vec3<f32> = (x_154 + -(vec3<f32>(x_156.x, x_156.y, x_156.z)));
  let x_160 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_159.x, x_159.y, x_159.z, x_160.w);
  let x_162 : vec4<f32> = u_xlat4;
  let x_164 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_162.x, x_162.y, x_162.z), vec3<f32>(x_164.x, x_164.y, x_164.z));
  let x_168 : vec4<f32> = u_xlat5;
  let x_170 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_168.x, x_168.y, x_168.z), vec3<f32>(x_170.x, x_170.y, x_170.z));
  let x_174 : vec4<f32> = u_xlat6;
  let x_176 : vec4<f32> = u_xlat6;
  u_xlat4.z = dot(vec3<f32>(x_174.x, x_174.y, x_174.z), vec3<f32>(x_176.x, x_176.y, x_176.z));
  let x_180 : vec4<f32> = u_xlat7;
  let x_182 : vec4<f32> = u_xlat7;
  u_xlat4.w = dot(vec3<f32>(x_180.x, x_180.y, x_180.z), vec3<f32>(x_182.x, x_182.y, x_182.z));
  let x_189 : vec4<f32> = u_xlat4;
  let x_192 : vec4<f32> = x_126.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_189 < x_192);
  let x_195 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_195);
  let x_200 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_200);
  let x_204 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_204);
  let x_208 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_208);
  let x_212 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_212);
  let x_218 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_218);
  let x_222 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_222);
  let x_225 : vec4<f32> = u_xlat4;
  let x_227 : vec4<f32> = u_xlat5;
  let x_229 : vec3<f32> = (vec3<f32>(x_225.x, x_225.y, x_225.z) + vec3<f32>(x_227.y, x_227.z, x_227.w));
  let x_230 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_229.x, x_229.y, x_229.z, x_230.w);
  let x_232 : vec4<f32> = u_xlat4;
  let x_235 : vec3<f32> = max(vec3<f32>(x_232.x, x_232.y, x_232.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_236 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_236.x, x_235.x, x_235.y, x_235.z);
  let x_238 : vec4<f32> = u_xlat5;
  u_xlat78 = dot(x_238, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_244 : f32 = u_xlat78;
  u_xlat78 = (-(x_244) + 4.0f);
  let x_249 : f32 = u_xlat78;
  u_xlatu78 = u32(x_249);
  let x_253 : u32 = u_xlatu78;
  u_xlati78 = (bitcast<i32>(x_253) << bitcast<u32>(2i));
  let x_256 : vec3<f32> = vs_TEXCOORD1;
  let x_258 : i32 = u_xlati78;
  let x_261 : i32 = u_xlati78;
  let x_265 : vec4<f32> = x_126.x_MainLightWorldToShadow[((x_258 + 1i) / 4i)][((x_261 + 1i) % 4i)];
  let x_267 : vec3<f32> = (vec3<f32>(x_256.y, x_256.y, x_256.y) * vec3<f32>(x_265.x, x_265.y, x_265.z));
  let x_268 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_267.x, x_267.y, x_267.z, x_268.w);
  let x_270 : i32 = u_xlati78;
  let x_272 : i32 = u_xlati78;
  let x_275 : vec4<f32> = x_126.x_MainLightWorldToShadow[(x_270 / 4i)][(x_272 % 4i)];
  let x_277 : vec3<f32> = vs_TEXCOORD1;
  let x_280 : vec4<f32> = u_xlat4;
  let x_282 : vec3<f32> = ((vec3<f32>(x_275.x, x_275.y, x_275.z) * vec3<f32>(x_277.x, x_277.x, x_277.x)) + vec3<f32>(x_280.x, x_280.y, x_280.z));
  let x_283 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_282.x, x_282.y, x_282.z, x_283.w);
  let x_285 : i32 = u_xlati78;
  let x_288 : i32 = u_xlati78;
  let x_292 : vec4<f32> = x_126.x_MainLightWorldToShadow[((x_285 + 2i) / 4i)][((x_288 + 2i) % 4i)];
  let x_294 : vec3<f32> = vs_TEXCOORD1;
  let x_297 : vec4<f32> = u_xlat4;
  let x_299 : vec3<f32> = ((vec3<f32>(x_292.x, x_292.y, x_292.z) * vec3<f32>(x_294.z, x_294.z, x_294.z)) + vec3<f32>(x_297.x, x_297.y, x_297.z));
  let x_300 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
  let x_302 : vec4<f32> = u_xlat4;
  let x_304 : i32 = u_xlati78;
  let x_307 : i32 = u_xlati78;
  let x_311 : vec4<f32> = x_126.x_MainLightWorldToShadow[((x_304 + 3i) / 4i)][((x_307 + 3i) % 4i)];
  let x_313 : vec3<f32> = (vec3<f32>(x_302.x, x_302.y, x_302.z) + vec3<f32>(x_311.x, x_311.y, x_311.z));
  let x_314 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
  let x_318 : f32 = vs_TEXCOORD1.y;
  let x_320 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat78 = (x_318 * x_320);
  let x_323 : f32 = x_28.unity_MatrixV[0i].z;
  let x_325 : f32 = vs_TEXCOORD1.x;
  let x_327 : f32 = u_xlat78;
  u_xlat78 = ((x_323 * x_325) + x_327);
  let x_330 : f32 = x_28.unity_MatrixV[2i].z;
  let x_332 : f32 = vs_TEXCOORD1.z;
  let x_334 : f32 = u_xlat78;
  u_xlat78 = ((x_330 * x_332) + x_334);
  let x_336 : f32 = u_xlat78;
  let x_338 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat78 = (x_336 + x_338);
  let x_340 : f32 = u_xlat78;
  let x_343 : f32 = x_28.x_ProjectionParams.y;
  u_xlat78 = (-(x_340) + -(x_343));
  let x_346 : f32 = u_xlat78;
  u_xlat78 = max(x_346, 0.0f);
  let x_348 : f32 = u_xlat78;
  let x_351 : f32 = x_28.unity_FogParams.x;
  u_xlat78 = (x_348 * x_351);
  u_xlat3.w = 1.0f;
  let x_360 : vec4<f32> = x_357.unity_SHAr;
  let x_361 : vec4<f32> = u_xlat3;
  u_xlat5.x = dot(x_360, x_361);
  let x_366 : vec4<f32> = x_357.unity_SHAg;
  let x_367 : vec4<f32> = u_xlat3;
  u_xlat5.y = dot(x_366, x_367);
  let x_372 : vec4<f32> = x_357.unity_SHAb;
  let x_373 : vec4<f32> = u_xlat3;
  u_xlat5.z = dot(x_372, x_373);
  let x_376 : vec4<f32> = u_xlat3;
  let x_378 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec4<f32>(x_376.y, x_376.z, x_376.z, x_376.x) * vec4<f32>(x_378.x, x_378.y, x_378.z, x_378.z));
  let x_383 : vec4<f32> = x_357.unity_SHBr;
  let x_384 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_383, x_384);
  let x_389 : vec4<f32> = x_357.unity_SHBg;
  let x_390 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_389, x_390);
  let x_395 : vec4<f32> = x_357.unity_SHBb;
  let x_396 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_395, x_396);
  let x_400 : f32 = u_xlat3.y;
  let x_402 : f32 = u_xlat3.y;
  u_xlat80 = (x_400 * x_402);
  let x_405 : f32 = u_xlat3.x;
  let x_407 : f32 = u_xlat3.x;
  let x_409 : f32 = u_xlat80;
  u_xlat80 = ((x_405 * x_407) + -(x_409));
  let x_414 : vec4<f32> = x_357.unity_SHC;
  let x_416 : f32 = u_xlat80;
  let x_419 : vec4<f32> = u_xlat7;
  let x_421 : vec3<f32> = ((vec3<f32>(x_414.x, x_414.y, x_414.z) * vec3<f32>(x_416, x_416, x_416)) + vec3<f32>(x_419.x, x_419.y, x_419.z));
  let x_422 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_421.x, x_421.y, x_421.z, x_422.w);
  let x_424 : vec4<f32> = u_xlat5;
  let x_426 : vec4<f32> = u_xlat6;
  let x_428 : vec3<f32> = (vec3<f32>(x_424.x, x_424.y, x_424.z) + vec3<f32>(x_426.x, x_426.y, x_426.z));
  let x_429 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
  let x_431 : vec4<f32> = u_xlat5;
  let x_433 : vec3<f32> = max(vec3<f32>(x_431.x, x_431.y, x_431.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_434 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_433.x, x_433.y, x_433.z, x_434.w);
  let x_437 : f32 = x_42.x_Metallic;
  u_xlat80 = ((-(x_437) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_443 : f32 = u_xlat80;
  u_xlat81 = (-(x_443) + 1.0f);
  let x_447 : vec4<f32> = u_xlat1;
  let x_449 : f32 = u_xlat80;
  u_xlat27 = (vec3<f32>(x_447.y, x_447.z, x_447.w) * vec3<f32>(x_449, x_449, x_449));
  let x_452 : vec4<f32> = u_xlat0;
  let x_455 : vec4<f32> = x_42.x_BaseColor;
  let x_460 : vec3<f32> = ((vec3<f32>(x_452.x, x_452.y, x_452.z) * vec3<f32>(x_455.x, x_455.y, x_455.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_461 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_460.x, x_460.y, x_460.z, x_461.w);
  let x_464 : f32 = x_42.x_Metallic;
  let x_466 : f32 = x_42.x_Metallic;
  let x_468 : f32 = x_42.x_Metallic;
  let x_469 : vec3<f32> = vec3<f32>(x_464, x_466, x_468);
  let x_474 : vec4<f32> = u_xlat0;
  let x_479 : vec3<f32> = ((vec3<f32>(x_469.x, x_469.y, x_469.z) * vec3<f32>(x_474.x, x_474.y, x_474.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_480 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_479.x, x_479.y, x_479.z, x_480.w);
  let x_483 : f32 = x_42.x_Smoothness;
  u_xlat80 = (-(x_483) + 1.0f);
  let x_487 : f32 = u_xlat80;
  let x_488 : f32 = u_xlat80;
  u_xlat82 = (x_487 * x_488);
  let x_490 : f32 = u_xlat82;
  u_xlat82 = max(x_490, 0.0078125f);
  let x_494 : f32 = u_xlat82;
  let x_495 : f32 = u_xlat82;
  u_xlat83 = (x_494 * x_495);
  let x_497 : f32 = u_xlat81;
  let x_499 : f32 = x_42.x_Smoothness;
  u_xlat81 = (x_497 + x_499);
  let x_501 : f32 = u_xlat81;
  u_xlat81 = clamp(x_501, 0.0f, 1.0f);
  let x_503 : f32 = u_xlat82;
  u_xlat6.x = ((x_503 * 4.0f) + 2.0f);
  let x_510 : f32 = x_126.x_MainLightShadowParams.y;
  u_xlatb32 = (0.0f < x_510);
  let x_512 : bool = u_xlatb32;
  if (x_512) {
    let x_516 : f32 = x_126.x_MainLightShadowParams.y;
    u_xlatb32 = (x_516 == 1.0f);
    let x_518 : bool = u_xlatb32;
    if (x_518) {
      let x_521 : vec4<f32> = u_xlat4;
      let x_524 : vec4<f32> = x_126.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_521.x, x_521.y, x_521.x, x_521.y) + x_524);
      let x_527 : vec4<f32> = u_xlat7;
      let x_528 : vec2<f32> = vec2<f32>(x_527.x, x_527.y);
      let x_530 : f32 = u_xlat4.z;
      txVec0 = vec3<f32>(x_528.x, x_528.y, x_530);
      let x_543 : vec3<f32> = txVec0;
      let x_545 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_543.xy, x_543.z);
      u_xlat8.x = x_545;
      let x_548 : vec4<f32> = u_xlat7;
      let x_549 : vec2<f32> = vec2<f32>(x_548.z, x_548.w);
      let x_551 : f32 = u_xlat4.z;
      txVec1 = vec3<f32>(x_549.x, x_549.y, x_551);
      let x_558 : vec3<f32> = txVec1;
      let x_560 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_558.xy, x_558.z);
      u_xlat8.y = x_560;
      let x_562 : vec4<f32> = u_xlat4;
      let x_565 : vec4<f32> = x_126.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_562.x, x_562.y, x_562.x, x_562.y) + x_565);
      let x_568 : vec4<f32> = u_xlat7;
      let x_569 : vec2<f32> = vec2<f32>(x_568.x, x_568.y);
      let x_571 : f32 = u_xlat4.z;
      txVec2 = vec3<f32>(x_569.x, x_569.y, x_571);
      let x_578 : vec3<f32> = txVec2;
      let x_580 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_578.xy, x_578.z);
      u_xlat8.z = x_580;
      let x_583 : vec4<f32> = u_xlat7;
      let x_584 : vec2<f32> = vec2<f32>(x_583.z, x_583.w);
      let x_586 : f32 = u_xlat4.z;
      txVec3 = vec3<f32>(x_584.x, x_584.y, x_586);
      let x_593 : vec3<f32> = txVec3;
      let x_595 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_593.xy, x_593.z);
      u_xlat8.w = x_595;
      let x_598 : vec4<f32> = u_xlat8;
      u_xlat32.x = dot(x_598, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_606 : f32 = x_126.x_MainLightShadowParams.y;
      u_xlatb58 = (x_606 == 2.0f);
      let x_608 : bool = u_xlatb58;
      if (x_608) {
        let x_613 : vec4<f32> = u_xlat4;
        let x_616 : vec4<f32> = x_126.x_MainLightShadowmapSize;
        u_xlat58 = ((vec2<f32>(x_613.x, x_613.y) * vec2<f32>(x_616.z, x_616.w)) + vec2<f32>(0.5f, 0.5f));
        let x_622 : vec2<f32> = u_xlat58;
        u_xlat58 = floor(x_622);
        let x_624 : vec4<f32> = u_xlat4;
        let x_627 : vec4<f32> = x_126.x_MainLightShadowmapSize;
        let x_630 : vec2<f32> = u_xlat58;
        let x_632 : vec2<f32> = ((vec2<f32>(x_624.x, x_624.y) * vec2<f32>(x_627.z, x_627.w)) + -(x_630));
        let x_633 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_632.x, x_632.y, x_633.z, x_633.w);
        let x_635 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_635.x, x_635.x, x_635.y, x_635.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_640 : vec4<f32> = u_xlat8;
        let x_642 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_640.x, x_640.x, x_640.z, x_640.z) * vec4<f32>(x_642.x, x_642.x, x_642.z, x_642.z));
        let x_646 : vec4<f32> = u_xlat9;
        u_xlat59 = (vec2<f32>(x_646.y, x_646.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_651 : vec4<f32> = u_xlat9;
        let x_654 : vec4<f32> = u_xlat7;
        let x_657 : vec2<f32> = ((vec2<f32>(x_651.x, x_651.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_654.x, x_654.y)));
        let x_658 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_657.x, x_658.y, x_657.y, x_658.w);
        let x_660 : vec4<f32> = u_xlat7;
        let x_664 : vec2<f32> = (-(vec2<f32>(x_660.x, x_660.y)) + vec2<f32>(1.0f, 1.0f));
        let x_665 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_664.x, x_664.y, x_665.z, x_665.w);
        let x_668 : vec4<f32> = u_xlat7;
        u_xlat61 = min(vec2<f32>(x_668.x, x_668.y), vec2<f32>(0.0f, 0.0f));
        let x_672 : vec2<f32> = u_xlat61;
        let x_674 : vec2<f32> = u_xlat61;
        let x_676 : vec4<f32> = u_xlat9;
        u_xlat61 = ((-(x_672) * x_674) + vec2<f32>(x_676.x, x_676.y));
        let x_679 : vec4<f32> = u_xlat7;
        let x_681 : vec2<f32> = max(vec2<f32>(x_679.x, x_679.y), vec2<f32>(0.0f, 0.0f));
        let x_682 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_681.x, x_681.y, x_682.z, x_682.w);
        let x_684 : vec4<f32> = u_xlat7;
        let x_687 : vec4<f32> = u_xlat7;
        let x_690 : vec4<f32> = u_xlat8;
        let x_692 : vec2<f32> = ((-(vec2<f32>(x_684.x, x_684.y)) * vec2<f32>(x_687.x, x_687.y)) + vec2<f32>(x_690.y, x_690.w));
        let x_693 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_692.x, x_692.y, x_693.z, x_693.w);
        let x_695 : vec2<f32> = u_xlat61;
        u_xlat61 = (x_695 + vec2<f32>(1.0f, 1.0f));
        let x_697 : vec4<f32> = u_xlat7;
        let x_699 : vec2<f32> = (vec2<f32>(x_697.x, x_697.y) + vec2<f32>(1.0f, 1.0f));
        let x_700 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_699.x, x_699.y, x_700.z, x_700.w);
        let x_703 : vec4<f32> = u_xlat8;
        let x_707 : vec2<f32> = (vec2<f32>(x_703.x, x_703.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_708 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_707.x, x_707.y, x_708.z, x_708.w);
        let x_711 : vec4<f32> = u_xlat9;
        let x_713 : vec2<f32> = (vec2<f32>(x_711.x, x_711.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_714 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_713.x, x_713.y, x_714.z, x_714.w);
        let x_716 : vec2<f32> = u_xlat61;
        let x_717 : vec2<f32> = (x_716 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_718 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_717.x, x_717.y, x_718.z, x_718.w);
        let x_721 : vec4<f32> = u_xlat7;
        let x_723 : vec2<f32> = (vec2<f32>(x_721.x, x_721.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_724 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_723.x, x_723.y, x_724.z, x_724.w);
        let x_726 : vec4<f32> = u_xlat8;
        let x_728 : vec2<f32> = (vec2<f32>(x_726.y, x_726.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_729 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_728.x, x_728.y, x_729.z, x_729.w);
        let x_732 : f32 = u_xlat9.x;
        u_xlat10.z = x_732;
        let x_735 : f32 = u_xlat7.x;
        u_xlat10.w = x_735;
        let x_738 : f32 = u_xlat12.x;
        u_xlat11.z = x_738;
        let x_741 : f32 = u_xlat59.x;
        u_xlat11.w = x_741;
        let x_743 : vec4<f32> = u_xlat10;
        let x_745 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_743.z, x_743.w, x_743.x, x_743.z) + vec4<f32>(x_745.z, x_745.w, x_745.x, x_745.z));
        let x_749 : f32 = u_xlat10.y;
        u_xlat9.z = x_749;
        let x_752 : f32 = u_xlat7.y;
        u_xlat9.w = x_752;
        let x_755 : f32 = u_xlat11.y;
        u_xlat12.z = x_755;
        let x_758 : f32 = u_xlat59.y;
        u_xlat12.w = x_758;
        let x_760 : vec4<f32> = u_xlat9;
        let x_762 : vec4<f32> = u_xlat12;
        let x_764 : vec3<f32> = (vec3<f32>(x_760.z, x_760.y, x_760.w) + vec3<f32>(x_762.z, x_762.y, x_762.w));
        let x_765 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_764.x, x_764.y, x_764.z, x_765.w);
        let x_767 : vec4<f32> = u_xlat11;
        let x_769 : vec4<f32> = u_xlat8;
        let x_771 : vec3<f32> = (vec3<f32>(x_767.x, x_767.z, x_767.w) / vec3<f32>(x_769.z, x_769.w, x_769.y));
        let x_772 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_771.x, x_771.y, x_771.z, x_772.w);
        let x_774 : vec4<f32> = u_xlat9;
        let x_780 : vec3<f32> = (vec3<f32>(x_774.x, x_774.y, x_774.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_781 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_780.x, x_780.y, x_780.z, x_781.w);
        let x_783 : vec4<f32> = u_xlat12;
        let x_785 : vec4<f32> = u_xlat7;
        let x_787 : vec3<f32> = (vec3<f32>(x_783.z, x_783.y, x_783.w) / vec3<f32>(x_785.x, x_785.y, x_785.z));
        let x_788 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_787.x, x_787.y, x_787.z, x_788.w);
        let x_790 : vec4<f32> = u_xlat10;
        let x_792 : vec3<f32> = (vec3<f32>(x_790.x, x_790.y, x_790.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_793 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_792.x, x_792.y, x_792.z, x_793.w);
        let x_795 : vec4<f32> = u_xlat9;
        let x_798 : vec4<f32> = x_126.x_MainLightShadowmapSize;
        let x_800 : vec3<f32> = (vec3<f32>(x_795.y, x_795.x, x_795.z) * vec3<f32>(x_798.x, x_798.x, x_798.x));
        let x_801 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_800.x, x_800.y, x_800.z, x_801.w);
        let x_803 : vec4<f32> = u_xlat10;
        let x_806 : vec4<f32> = x_126.x_MainLightShadowmapSize;
        let x_808 : vec3<f32> = (vec3<f32>(x_803.x, x_803.y, x_803.z) * vec3<f32>(x_806.y, x_806.y, x_806.y));
        let x_809 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_808.x, x_808.y, x_808.z, x_809.w);
        let x_812 : f32 = u_xlat10.x;
        u_xlat9.w = x_812;
        let x_814 : vec2<f32> = u_xlat58;
        let x_817 : vec4<f32> = x_126.x_MainLightShadowmapSize;
        let x_820 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_814.x, x_814.y, x_814.x, x_814.y) * vec4<f32>(x_817.x, x_817.y, x_817.x, x_817.y)) + vec4<f32>(x_820.y, x_820.w, x_820.x, x_820.w));
        let x_823 : vec2<f32> = u_xlat58;
        let x_825 : vec4<f32> = x_126.x_MainLightShadowmapSize;
        let x_828 : vec4<f32> = u_xlat9;
        let x_830 : vec2<f32> = ((x_823 * vec2<f32>(x_825.x, x_825.y)) + vec2<f32>(x_828.z, x_828.w));
        let x_831 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_830.x, x_830.y, x_831.z, x_831.w);
        let x_834 : f32 = u_xlat9.y;
        u_xlat10.w = x_834;
        let x_836 : vec4<f32> = u_xlat10;
        let x_837 : vec2<f32> = vec2<f32>(x_836.y, x_836.z);
        let x_838 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_838.x, x_837.x, x_838.z, x_837.y);
        let x_841 : vec2<f32> = u_xlat58;
        let x_844 : vec4<f32> = x_126.x_MainLightShadowmapSize;
        let x_847 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_841.x, x_841.y, x_841.x, x_841.y) * vec4<f32>(x_844.x, x_844.y, x_844.x, x_844.y)) + vec4<f32>(x_847.x, x_847.y, x_847.z, x_847.y));
        let x_850 : vec2<f32> = u_xlat58;
        let x_853 : vec4<f32> = x_126.x_MainLightShadowmapSize;
        let x_856 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_850.x, x_850.y, x_850.x, x_850.y) * vec4<f32>(x_853.x, x_853.y, x_853.x, x_853.y)) + vec4<f32>(x_856.w, x_856.y, x_856.w, x_856.z));
        let x_859 : vec2<f32> = u_xlat58;
        let x_862 : vec4<f32> = x_126.x_MainLightShadowmapSize;
        let x_865 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_859.x, x_859.y, x_859.x, x_859.y) * vec4<f32>(x_862.x, x_862.y, x_862.x, x_862.y)) + vec4<f32>(x_865.x, x_865.w, x_865.z, x_865.w));
        let x_869 : vec4<f32> = u_xlat7;
        let x_871 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_869.x, x_869.x, x_869.x, x_869.y) * vec4<f32>(x_871.z, x_871.w, x_871.y, x_871.z));
        let x_875 : vec4<f32> = u_xlat7;
        let x_877 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_875.y, x_875.y, x_875.z, x_875.z) * x_877);
        let x_880 : f32 = u_xlat7.z;
        let x_882 : f32 = u_xlat8.y;
        u_xlat58.x = (x_880 * x_882);
        let x_886 : vec4<f32> = u_xlat11;
        let x_887 : vec2<f32> = vec2<f32>(x_886.x, x_886.y);
        let x_889 : f32 = u_xlat4.z;
        txVec4 = vec3<f32>(x_887.x, x_887.y, x_889);
        let x_897 : vec3<f32> = txVec4;
        let x_899 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_897.xy, x_897.z);
        u_xlat84 = x_899;
        let x_901 : vec4<f32> = u_xlat11;
        let x_902 : vec2<f32> = vec2<f32>(x_901.z, x_901.w);
        let x_904 : f32 = u_xlat4.z;
        txVec5 = vec3<f32>(x_902.x, x_902.y, x_904);
        let x_911 : vec3<f32> = txVec5;
        let x_913 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_911.xy, x_911.z);
        u_xlat7.x = x_913;
        let x_916 : f32 = u_xlat7.x;
        let x_918 : f32 = u_xlat14.y;
        u_xlat7.x = (x_916 * x_918);
        let x_922 : f32 = u_xlat14.x;
        let x_923 : f32 = u_xlat84;
        let x_926 : f32 = u_xlat7.x;
        u_xlat84 = ((x_922 * x_923) + x_926);
        let x_929 : vec4<f32> = u_xlat12;
        let x_930 : vec2<f32> = vec2<f32>(x_929.x, x_929.y);
        let x_932 : f32 = u_xlat4.z;
        txVec6 = vec3<f32>(x_930.x, x_930.y, x_932);
        let x_939 : vec3<f32> = txVec6;
        let x_941 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_939.xy, x_939.z);
        u_xlat7.x = x_941;
        let x_944 : f32 = u_xlat14.z;
        let x_946 : f32 = u_xlat7.x;
        let x_948 : f32 = u_xlat84;
        u_xlat84 = ((x_944 * x_946) + x_948);
        let x_951 : vec4<f32> = u_xlat10;
        let x_952 : vec2<f32> = vec2<f32>(x_951.x, x_951.y);
        let x_954 : f32 = u_xlat4.z;
        txVec7 = vec3<f32>(x_952.x, x_952.y, x_954);
        let x_961 : vec3<f32> = txVec7;
        let x_963 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_961.xy, x_961.z);
        u_xlat7.x = x_963;
        let x_966 : f32 = u_xlat14.w;
        let x_968 : f32 = u_xlat7.x;
        let x_970 : f32 = u_xlat84;
        u_xlat84 = ((x_966 * x_968) + x_970);
        let x_973 : vec4<f32> = u_xlat13;
        let x_974 : vec2<f32> = vec2<f32>(x_973.x, x_973.y);
        let x_976 : f32 = u_xlat4.z;
        txVec8 = vec3<f32>(x_974.x, x_974.y, x_976);
        let x_983 : vec3<f32> = txVec8;
        let x_985 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_983.xy, x_983.z);
        u_xlat7.x = x_985;
        let x_988 : f32 = u_xlat15.x;
        let x_990 : f32 = u_xlat7.x;
        let x_992 : f32 = u_xlat84;
        u_xlat84 = ((x_988 * x_990) + x_992);
        let x_995 : vec4<f32> = u_xlat13;
        let x_996 : vec2<f32> = vec2<f32>(x_995.z, x_995.w);
        let x_998 : f32 = u_xlat4.z;
        txVec9 = vec3<f32>(x_996.x, x_996.y, x_998);
        let x_1005 : vec3<f32> = txVec9;
        let x_1007 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1005.xy, x_1005.z);
        u_xlat7.x = x_1007;
        let x_1010 : f32 = u_xlat15.y;
        let x_1012 : f32 = u_xlat7.x;
        let x_1014 : f32 = u_xlat84;
        u_xlat84 = ((x_1010 * x_1012) + x_1014);
        let x_1017 : vec4<f32> = u_xlat10;
        let x_1018 : vec2<f32> = vec2<f32>(x_1017.z, x_1017.w);
        let x_1020 : f32 = u_xlat4.z;
        txVec10 = vec3<f32>(x_1018.x, x_1018.y, x_1020);
        let x_1027 : vec3<f32> = txVec10;
        let x_1029 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1027.xy, x_1027.z);
        u_xlat7.x = x_1029;
        let x_1032 : f32 = u_xlat15.z;
        let x_1034 : f32 = u_xlat7.x;
        let x_1036 : f32 = u_xlat84;
        u_xlat84 = ((x_1032 * x_1034) + x_1036);
        let x_1039 : vec4<f32> = u_xlat9;
        let x_1040 : vec2<f32> = vec2<f32>(x_1039.x, x_1039.y);
        let x_1042 : f32 = u_xlat4.z;
        txVec11 = vec3<f32>(x_1040.x, x_1040.y, x_1042);
        let x_1049 : vec3<f32> = txVec11;
        let x_1051 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1049.xy, x_1049.z);
        u_xlat7.x = x_1051;
        let x_1054 : f32 = u_xlat15.w;
        let x_1056 : f32 = u_xlat7.x;
        let x_1058 : f32 = u_xlat84;
        u_xlat84 = ((x_1054 * x_1056) + x_1058);
        let x_1061 : vec4<f32> = u_xlat9;
        let x_1062 : vec2<f32> = vec2<f32>(x_1061.z, x_1061.w);
        let x_1064 : f32 = u_xlat4.z;
        txVec12 = vec3<f32>(x_1062.x, x_1062.y, x_1064);
        let x_1071 : vec3<f32> = txVec12;
        let x_1073 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1071.xy, x_1071.z);
        u_xlat7.x = x_1073;
        let x_1076 : f32 = u_xlat58.x;
        let x_1078 : f32 = u_xlat7.x;
        let x_1080 : f32 = u_xlat84;
        u_xlat32.x = ((x_1076 * x_1078) + x_1080);
      } else {
        let x_1084 : vec4<f32> = u_xlat4;
        let x_1087 : vec4<f32> = x_126.x_MainLightShadowmapSize;
        u_xlat58 = ((vec2<f32>(x_1084.x, x_1084.y) * vec2<f32>(x_1087.z, x_1087.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1091 : vec2<f32> = u_xlat58;
        u_xlat58 = floor(x_1091);
        let x_1093 : vec4<f32> = u_xlat4;
        let x_1096 : vec4<f32> = x_126.x_MainLightShadowmapSize;
        let x_1099 : vec2<f32> = u_xlat58;
        let x_1101 : vec2<f32> = ((vec2<f32>(x_1093.x, x_1093.y) * vec2<f32>(x_1096.z, x_1096.w)) + -(x_1099));
        let x_1102 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1101.x, x_1101.y, x_1102.z, x_1102.w);
        let x_1104 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1104.x, x_1104.x, x_1104.y, x_1104.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1107 : vec4<f32> = u_xlat8;
        let x_1109 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1107.x, x_1107.x, x_1107.z, x_1107.z) * vec4<f32>(x_1109.x, x_1109.x, x_1109.z, x_1109.z));
        let x_1112 : vec4<f32> = u_xlat9;
        let x_1116 : vec2<f32> = (vec2<f32>(x_1112.y, x_1112.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1117 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1117.x, x_1116.x, x_1117.z, x_1116.y);
        let x_1119 : vec4<f32> = u_xlat9;
        let x_1122 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1119.x, x_1119.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1122.x, x_1122.y)));
        let x_1126 : vec4<f32> = u_xlat7;
        let x_1129 : vec2<f32> = (-(vec2<f32>(x_1126.x, x_1126.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1130 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1129.x, x_1130.y, x_1129.y, x_1130.w);
        let x_1132 : vec4<f32> = u_xlat7;
        let x_1134 : vec2<f32> = min(vec2<f32>(x_1132.x, x_1132.y), vec2<f32>(0.0f, 0.0f));
        let x_1135 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1134.x, x_1134.y, x_1135.z, x_1135.w);
        let x_1137 : vec4<f32> = u_xlat9;
        let x_1140 : vec4<f32> = u_xlat9;
        let x_1143 : vec4<f32> = u_xlat8;
        let x_1145 : vec2<f32> = ((-(vec2<f32>(x_1137.x, x_1137.y)) * vec2<f32>(x_1140.x, x_1140.y)) + vec2<f32>(x_1143.x, x_1143.z));
        let x_1146 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1145.x, x_1146.y, x_1145.y, x_1146.w);
        let x_1148 : vec4<f32> = u_xlat7;
        let x_1150 : vec2<f32> = max(vec2<f32>(x_1148.x, x_1148.y), vec2<f32>(0.0f, 0.0f));
        let x_1151 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1150.x, x_1150.y, x_1151.z, x_1151.w);
        let x_1153 : vec4<f32> = u_xlat9;
        let x_1156 : vec4<f32> = u_xlat9;
        let x_1159 : vec4<f32> = u_xlat8;
        let x_1161 : vec2<f32> = ((-(vec2<f32>(x_1153.x, x_1153.y)) * vec2<f32>(x_1156.x, x_1156.y)) + vec2<f32>(x_1159.y, x_1159.w));
        let x_1162 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1162.x, x_1161.x, x_1162.z, x_1161.y);
        let x_1164 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1164 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1168 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1168 * 0.08163200318813323975f);
        let x_1172 : vec2<f32> = u_xlat59;
        let x_1175 : vec2<f32> = (vec2<f32>(x_1172.y, x_1172.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1176 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1175.x, x_1175.y, x_1176.z, x_1176.w);
        let x_1178 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_1178.x, x_1178.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1182 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1182 * 0.08163200318813323975f);
        let x_1186 : f32 = u_xlat11.y;
        u_xlat9.x = x_1186;
        let x_1188 : vec4<f32> = u_xlat7;
        let x_1195 : vec2<f32> = ((vec2<f32>(x_1188.x, x_1188.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1196 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1196.x, x_1195.x, x_1196.z, x_1195.y);
        let x_1198 : vec4<f32> = u_xlat7;
        let x_1202 : vec2<f32> = ((vec2<f32>(x_1198.x, x_1198.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1203 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1202.x, x_1203.y, x_1202.y, x_1203.w);
        let x_1206 : f32 = u_xlat59.x;
        u_xlat8.y = x_1206;
        let x_1209 : f32 = u_xlat10.y;
        u_xlat8.w = x_1209;
        let x_1211 : vec4<f32> = u_xlat8;
        let x_1212 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1211 + x_1212);
        let x_1214 : vec4<f32> = u_xlat7;
        let x_1217 : vec2<f32> = ((vec2<f32>(x_1214.y, x_1214.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1218 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1218.x, x_1217.x, x_1218.z, x_1217.y);
        let x_1220 : vec4<f32> = u_xlat7;
        let x_1223 : vec2<f32> = ((vec2<f32>(x_1220.y, x_1220.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1224 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1223.x, x_1224.y, x_1223.y, x_1224.w);
        let x_1227 : f32 = u_xlat59.y;
        u_xlat10.y = x_1227;
        let x_1229 : vec4<f32> = u_xlat10;
        let x_1230 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1229 + x_1230);
        let x_1232 : vec4<f32> = u_xlat8;
        let x_1233 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1232 / x_1233);
        let x_1235 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1235 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1241 : vec4<f32> = u_xlat10;
        let x_1242 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1241 / x_1242);
        let x_1244 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1244 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1246 : vec4<f32> = u_xlat8;
        let x_1249 : vec4<f32> = x_126.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1246.w, x_1246.x, x_1246.y, x_1246.z) * vec4<f32>(x_1249.x, x_1249.x, x_1249.x, x_1249.x));
        let x_1252 : vec4<f32> = u_xlat10;
        let x_1255 : vec4<f32> = x_126.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1252.x, x_1252.w, x_1252.y, x_1252.z) * vec4<f32>(x_1255.y, x_1255.y, x_1255.y, x_1255.y));
        let x_1258 : vec4<f32> = u_xlat8;
        let x_1259 : vec3<f32> = vec3<f32>(x_1258.y, x_1258.z, x_1258.w);
        let x_1260 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1259.x, x_1260.y, x_1259.y, x_1259.z);
        let x_1263 : f32 = u_xlat10.x;
        u_xlat11.y = x_1263;
        let x_1265 : vec2<f32> = u_xlat58;
        let x_1268 : vec4<f32> = x_126.x_MainLightShadowmapSize;
        let x_1271 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1265.x, x_1265.y, x_1265.x, x_1265.y) * vec4<f32>(x_1268.x, x_1268.y, x_1268.x, x_1268.y)) + vec4<f32>(x_1271.x, x_1271.y, x_1271.z, x_1271.y));
        let x_1274 : vec2<f32> = u_xlat58;
        let x_1276 : vec4<f32> = x_126.x_MainLightShadowmapSize;
        let x_1279 : vec4<f32> = u_xlat11;
        let x_1281 : vec2<f32> = ((x_1274 * vec2<f32>(x_1276.x, x_1276.y)) + vec2<f32>(x_1279.w, x_1279.y));
        let x_1282 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1281.x, x_1281.y, x_1282.z, x_1282.w);
        let x_1285 : f32 = u_xlat11.y;
        u_xlat8.y = x_1285;
        let x_1288 : f32 = u_xlat10.z;
        u_xlat11.y = x_1288;
        let x_1290 : vec2<f32> = u_xlat58;
        let x_1293 : vec4<f32> = x_126.x_MainLightShadowmapSize;
        let x_1296 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1290.x, x_1290.y, x_1290.x, x_1290.y) * vec4<f32>(x_1293.x, x_1293.y, x_1293.x, x_1293.y)) + vec4<f32>(x_1296.x, x_1296.y, x_1296.z, x_1296.y));
        let x_1300 : vec2<f32> = u_xlat58;
        let x_1302 : vec4<f32> = x_126.x_MainLightShadowmapSize;
        let x_1305 : vec4<f32> = u_xlat11;
        u_xlat65 = ((x_1300 * vec2<f32>(x_1302.x, x_1302.y)) + vec2<f32>(x_1305.w, x_1305.y));
        let x_1309 : f32 = u_xlat11.y;
        u_xlat8.z = x_1309;
        let x_1311 : vec2<f32> = u_xlat58;
        let x_1314 : vec4<f32> = x_126.x_MainLightShadowmapSize;
        let x_1317 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1311.x, x_1311.y, x_1311.x, x_1311.y) * vec4<f32>(x_1314.x, x_1314.y, x_1314.x, x_1314.y)) + vec4<f32>(x_1317.x, x_1317.y, x_1317.x, x_1317.z));
        let x_1321 : f32 = u_xlat10.w;
        u_xlat11.y = x_1321;
        let x_1324 : vec2<f32> = u_xlat58;
        let x_1327 : vec4<f32> = x_126.x_MainLightShadowmapSize;
        let x_1330 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1324.x, x_1324.y, x_1324.x, x_1324.y) * vec4<f32>(x_1327.x, x_1327.y, x_1327.x, x_1327.y)) + vec4<f32>(x_1330.x, x_1330.y, x_1330.z, x_1330.y));
        let x_1334 : vec2<f32> = u_xlat58;
        let x_1336 : vec4<f32> = x_126.x_MainLightShadowmapSize;
        let x_1339 : vec4<f32> = u_xlat11;
        let x_1341 : vec2<f32> = ((x_1334 * vec2<f32>(x_1336.x, x_1336.y)) + vec2<f32>(x_1339.w, x_1339.y));
        let x_1342 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_1341.x, x_1341.y, x_1342.z);
        let x_1345 : f32 = u_xlat11.y;
        u_xlat8.w = x_1345;
        let x_1348 : vec2<f32> = u_xlat58;
        let x_1350 : vec4<f32> = x_126.x_MainLightShadowmapSize;
        let x_1353 : vec4<f32> = u_xlat8;
        let x_1355 : vec2<f32> = ((x_1348 * vec2<f32>(x_1350.x, x_1350.y)) + vec2<f32>(x_1353.x, x_1353.w));
        let x_1356 : vec4<f32> = u_xlat17;
        u_xlat17 = vec4<f32>(x_1355.x, x_1355.y, x_1356.z, x_1356.w);
        let x_1358 : vec4<f32> = u_xlat11;
        let x_1359 : vec3<f32> = vec3<f32>(x_1358.x, x_1358.z, x_1358.w);
        let x_1360 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1359.x, x_1360.y, x_1359.y, x_1359.z);
        let x_1362 : vec2<f32> = u_xlat58;
        let x_1365 : vec4<f32> = x_126.x_MainLightShadowmapSize;
        let x_1368 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1362.x, x_1362.y, x_1362.x, x_1362.y) * vec4<f32>(x_1365.x, x_1365.y, x_1365.x, x_1365.y)) + vec4<f32>(x_1368.x, x_1368.y, x_1368.z, x_1368.y));
        let x_1372 : vec2<f32> = u_xlat58;
        let x_1374 : vec4<f32> = x_126.x_MainLightShadowmapSize;
        let x_1377 : vec4<f32> = u_xlat10;
        u_xlat62 = ((x_1372 * vec2<f32>(x_1374.x, x_1374.y)) + vec2<f32>(x_1377.w, x_1377.y));
        let x_1381 : f32 = u_xlat8.x;
        u_xlat10.x = x_1381;
        let x_1383 : vec2<f32> = u_xlat58;
        let x_1385 : vec4<f32> = x_126.x_MainLightShadowmapSize;
        let x_1388 : vec4<f32> = u_xlat10;
        u_xlat58 = ((x_1383 * vec2<f32>(x_1385.x, x_1385.y)) + vec2<f32>(x_1388.x, x_1388.y));
        let x_1392 : vec4<f32> = u_xlat7;
        let x_1394 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1392.x, x_1392.x, x_1392.x, x_1392.x) * x_1394);
        let x_1397 : vec4<f32> = u_xlat7;
        let x_1399 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_1397.y, x_1397.y, x_1397.y, x_1397.y) * x_1399);
        let x_1402 : vec4<f32> = u_xlat7;
        let x_1404 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_1402.z, x_1402.z, x_1402.z, x_1402.z) * x_1404);
        let x_1406 : vec4<f32> = u_xlat7;
        let x_1408 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_1406.w, x_1406.w, x_1406.w, x_1406.w) * x_1408);
        let x_1411 : vec4<f32> = u_xlat12;
        let x_1412 : vec2<f32> = vec2<f32>(x_1411.x, x_1411.y);
        let x_1414 : f32 = u_xlat4.z;
        txVec13 = vec3<f32>(x_1412.x, x_1412.y, x_1414);
        let x_1421 : vec3<f32> = txVec13;
        let x_1423 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1421.xy, x_1421.z);
        u_xlat8.x = x_1423;
        let x_1426 : vec4<f32> = u_xlat12;
        let x_1427 : vec2<f32> = vec2<f32>(x_1426.z, x_1426.w);
        let x_1429 : f32 = u_xlat4.z;
        txVec14 = vec3<f32>(x_1427.x, x_1427.y, x_1429);
        let x_1437 : vec3<f32> = txVec14;
        let x_1439 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1437.xy, x_1437.z);
        u_xlat86 = x_1439;
        let x_1440 : f32 = u_xlat86;
        let x_1442 : f32 = u_xlat18.y;
        u_xlat86 = (x_1440 * x_1442);
        let x_1445 : f32 = u_xlat18.x;
        let x_1447 : f32 = u_xlat8.x;
        let x_1449 : f32 = u_xlat86;
        u_xlat8.x = ((x_1445 * x_1447) + x_1449);
        let x_1453 : vec4<f32> = u_xlat13;
        let x_1454 : vec2<f32> = vec2<f32>(x_1453.x, x_1453.y);
        let x_1456 : f32 = u_xlat4.z;
        txVec15 = vec3<f32>(x_1454.x, x_1454.y, x_1456);
        let x_1463 : vec3<f32> = txVec15;
        let x_1465 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1463.xy, x_1463.z);
        u_xlat86 = x_1465;
        let x_1467 : f32 = u_xlat18.z;
        let x_1468 : f32 = u_xlat86;
        let x_1471 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1467 * x_1468) + x_1471);
        let x_1475 : vec4<f32> = u_xlat15;
        let x_1476 : vec2<f32> = vec2<f32>(x_1475.x, x_1475.y);
        let x_1478 : f32 = u_xlat4.z;
        txVec16 = vec3<f32>(x_1476.x, x_1476.y, x_1478);
        let x_1485 : vec3<f32> = txVec16;
        let x_1487 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1485.xy, x_1485.z);
        u_xlat86 = x_1487;
        let x_1489 : f32 = u_xlat18.w;
        let x_1490 : f32 = u_xlat86;
        let x_1493 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1489 * x_1490) + x_1493);
        let x_1497 : vec4<f32> = u_xlat14;
        let x_1498 : vec2<f32> = vec2<f32>(x_1497.x, x_1497.y);
        let x_1500 : f32 = u_xlat4.z;
        txVec17 = vec3<f32>(x_1498.x, x_1498.y, x_1500);
        let x_1507 : vec3<f32> = txVec17;
        let x_1509 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1507.xy, x_1507.z);
        u_xlat86 = x_1509;
        let x_1511 : f32 = u_xlat19.x;
        let x_1512 : f32 = u_xlat86;
        let x_1515 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1511 * x_1512) + x_1515);
        let x_1519 : vec4<f32> = u_xlat14;
        let x_1520 : vec2<f32> = vec2<f32>(x_1519.z, x_1519.w);
        let x_1522 : f32 = u_xlat4.z;
        txVec18 = vec3<f32>(x_1520.x, x_1520.y, x_1522);
        let x_1529 : vec3<f32> = txVec18;
        let x_1531 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1529.xy, x_1529.z);
        u_xlat86 = x_1531;
        let x_1533 : f32 = u_xlat19.y;
        let x_1534 : f32 = u_xlat86;
        let x_1537 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1533 * x_1534) + x_1537);
        let x_1541 : vec2<f32> = u_xlat65;
        let x_1543 : f32 = u_xlat4.z;
        txVec19 = vec3<f32>(x_1541.x, x_1541.y, x_1543);
        let x_1550 : vec3<f32> = txVec19;
        let x_1552 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1550.xy, x_1550.z);
        u_xlat86 = x_1552;
        let x_1554 : f32 = u_xlat19.z;
        let x_1555 : f32 = u_xlat86;
        let x_1558 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1554 * x_1555) + x_1558);
        let x_1562 : vec4<f32> = u_xlat15;
        let x_1563 : vec2<f32> = vec2<f32>(x_1562.z, x_1562.w);
        let x_1565 : f32 = u_xlat4.z;
        txVec20 = vec3<f32>(x_1563.x, x_1563.y, x_1565);
        let x_1572 : vec3<f32> = txVec20;
        let x_1574 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1572.xy, x_1572.z);
        u_xlat86 = x_1574;
        let x_1576 : f32 = u_xlat19.w;
        let x_1577 : f32 = u_xlat86;
        let x_1580 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1576 * x_1577) + x_1580);
        let x_1584 : vec4<f32> = u_xlat16;
        let x_1585 : vec2<f32> = vec2<f32>(x_1584.x, x_1584.y);
        let x_1587 : f32 = u_xlat4.z;
        txVec21 = vec3<f32>(x_1585.x, x_1585.y, x_1587);
        let x_1594 : vec3<f32> = txVec21;
        let x_1596 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1594.xy, x_1594.z);
        u_xlat86 = x_1596;
        let x_1598 : f32 = u_xlat20.x;
        let x_1599 : f32 = u_xlat86;
        let x_1602 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1598 * x_1599) + x_1602);
        let x_1606 : vec4<f32> = u_xlat16;
        let x_1607 : vec2<f32> = vec2<f32>(x_1606.z, x_1606.w);
        let x_1609 : f32 = u_xlat4.z;
        txVec22 = vec3<f32>(x_1607.x, x_1607.y, x_1609);
        let x_1616 : vec3<f32> = txVec22;
        let x_1618 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1616.xy, x_1616.z);
        u_xlat86 = x_1618;
        let x_1620 : f32 = u_xlat20.y;
        let x_1621 : f32 = u_xlat86;
        let x_1624 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1620 * x_1621) + x_1624);
        let x_1628 : vec3<f32> = u_xlat34;
        let x_1629 : vec2<f32> = vec2<f32>(x_1628.x, x_1628.y);
        let x_1631 : f32 = u_xlat4.z;
        txVec23 = vec3<f32>(x_1629.x, x_1629.y, x_1631);
        let x_1638 : vec3<f32> = txVec23;
        let x_1640 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1638.xy, x_1638.z);
        u_xlat34.x = x_1640;
        let x_1643 : f32 = u_xlat20.z;
        let x_1645 : f32 = u_xlat34.x;
        let x_1648 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1643 * x_1645) + x_1648);
        let x_1652 : vec4<f32> = u_xlat17;
        let x_1653 : vec2<f32> = vec2<f32>(x_1652.x, x_1652.y);
        let x_1655 : f32 = u_xlat4.z;
        txVec24 = vec3<f32>(x_1653.x, x_1653.y, x_1655);
        let x_1662 : vec3<f32> = txVec24;
        let x_1664 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1662.xy, x_1662.z);
        u_xlat34.x = x_1664;
        let x_1667 : f32 = u_xlat20.w;
        let x_1669 : f32 = u_xlat34.x;
        let x_1672 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1667 * x_1669) + x_1672);
        let x_1676 : vec4<f32> = u_xlat11;
        let x_1677 : vec2<f32> = vec2<f32>(x_1676.x, x_1676.y);
        let x_1679 : f32 = u_xlat4.z;
        txVec25 = vec3<f32>(x_1677.x, x_1677.y, x_1679);
        let x_1686 : vec3<f32> = txVec25;
        let x_1688 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1686.xy, x_1686.z);
        u_xlat34.x = x_1688;
        let x_1691 : f32 = u_xlat7.x;
        let x_1693 : f32 = u_xlat34.x;
        let x_1696 : f32 = u_xlat8.x;
        u_xlat7.x = ((x_1691 * x_1693) + x_1696);
        let x_1700 : vec4<f32> = u_xlat11;
        let x_1701 : vec2<f32> = vec2<f32>(x_1700.z, x_1700.w);
        let x_1703 : f32 = u_xlat4.z;
        txVec26 = vec3<f32>(x_1701.x, x_1701.y, x_1703);
        let x_1710 : vec3<f32> = txVec26;
        let x_1712 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1710.xy, x_1710.z);
        u_xlat8.x = x_1712;
        let x_1715 : f32 = u_xlat7.y;
        let x_1717 : f32 = u_xlat8.x;
        let x_1720 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1715 * x_1717) + x_1720);
        let x_1724 : vec2<f32> = u_xlat62;
        let x_1726 : f32 = u_xlat4.z;
        txVec27 = vec3<f32>(x_1724.x, x_1724.y, x_1726);
        let x_1734 : vec3<f32> = txVec27;
        let x_1736 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1734.xy, x_1734.z);
        u_xlat33.x = x_1736;
        let x_1739 : f32 = u_xlat7.z;
        let x_1741 : f32 = u_xlat33.x;
        let x_1744 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1739 * x_1741) + x_1744);
        let x_1748 : vec2<f32> = u_xlat58;
        let x_1750 : f32 = u_xlat4.z;
        txVec28 = vec3<f32>(x_1748.x, x_1748.y, x_1750);
        let x_1757 : vec3<f32> = txVec28;
        let x_1759 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1757.xy, x_1757.z);
        u_xlat58.x = x_1759;
        let x_1762 : f32 = u_xlat7.w;
        let x_1764 : f32 = u_xlat58.x;
        let x_1767 : f32 = u_xlat7.x;
        u_xlat32.x = ((x_1762 * x_1764) + x_1767);
      }
    }
  } else {
    let x_1772 : vec4<f32> = u_xlat4;
    let x_1773 : vec2<f32> = vec2<f32>(x_1772.x, x_1772.y);
    let x_1775 : f32 = u_xlat4.z;
    txVec29 = vec3<f32>(x_1773.x, x_1773.y, x_1775);
    let x_1782 : vec3<f32> = txVec29;
    let x_1784 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1782.xy, x_1782.z);
    u_xlat32.x = x_1784;
  }
  let x_1787 : f32 = x_126.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_1787) + 1.0f);
  let x_1792 : f32 = u_xlat32.x;
  let x_1794 : f32 = x_126.x_MainLightShadowParams.x;
  let x_1797 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1792 * x_1794) + x_1797);
  let x_1802 : f32 = u_xlat4.z;
  u_xlatb30 = (0.0f >= x_1802);
  let x_1806 : f32 = u_xlat4.z;
  u_xlatb56 = (x_1806 >= 1.0f);
  let x_1808 : bool = u_xlatb56;
  let x_1809 : bool = u_xlatb30;
  u_xlatb30 = (x_1808 | x_1809);
  let x_1811 : bool = u_xlatb30;
  if (x_1811) {
    x_1813 = 1.0f;
  } else {
    let x_1818 : f32 = u_xlat4.x;
    x_1813 = x_1818;
  }
  let x_1819 : f32 = x_1813;
  u_xlat4.x = x_1819;
  let x_1821 : vec3<f32> = vs_TEXCOORD1;
  let x_1823 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat32 = (x_1821 + -(x_1823));
  let x_1827 : vec3<f32> = u_xlat32;
  let x_1828 : vec3<f32> = u_xlat32;
  u_xlat30 = dot(x_1827, x_1828);
  let x_1831 : f32 = u_xlat30;
  let x_1833 : f32 = x_126.x_MainLightShadowParams.z;
  let x_1836 : f32 = x_126.x_MainLightShadowParams.w;
  u_xlat56 = ((x_1831 * x_1833) + x_1836);
  let x_1838 : f32 = u_xlat56;
  u_xlat56 = clamp(x_1838, 0.0f, 1.0f);
  let x_1841 : f32 = u_xlat4.x;
  u_xlat32.x = (-(x_1841) + 1.0f);
  let x_1845 : f32 = u_xlat56;
  let x_1847 : f32 = u_xlat32.x;
  let x_1850 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1845 * x_1847) + x_1850);
  let x_1853 : vec3<f32> = u_xlat2;
  let x_1855 : vec4<f32> = u_xlat3;
  u_xlat56 = dot(-(x_1853), vec3<f32>(x_1855.x, x_1855.y, x_1855.z));
  let x_1858 : f32 = u_xlat56;
  let x_1859 : f32 = u_xlat56;
  u_xlat56 = (x_1858 + x_1859);
  let x_1861 : vec4<f32> = u_xlat3;
  let x_1863 : f32 = u_xlat56;
  let x_1867 : vec3<f32> = u_xlat2;
  u_xlat32 = ((vec3<f32>(x_1861.x, x_1861.y, x_1861.z) * -(vec3<f32>(x_1863, x_1863, x_1863))) + -(x_1867));
  let x_1870 : vec4<f32> = u_xlat3;
  let x_1872 : vec3<f32> = u_xlat2;
  u_xlat56 = dot(vec3<f32>(x_1870.x, x_1870.y, x_1870.z), x_1872);
  let x_1874 : f32 = u_xlat56;
  u_xlat56 = clamp(x_1874, 0.0f, 1.0f);
  let x_1876 : f32 = u_xlat56;
  u_xlat56 = (-(x_1876) + 1.0f);
  let x_1879 : f32 = u_xlat56;
  let x_1880 : f32 = u_xlat56;
  u_xlat56 = (x_1879 * x_1880);
  let x_1882 : f32 = u_xlat56;
  let x_1883 : f32 = u_xlat56;
  u_xlat56 = (x_1882 * x_1883);
  let x_1885 : f32 = u_xlat80;
  u_xlat7.x = ((-(x_1885) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1892 : f32 = u_xlat80;
  let x_1894 : f32 = u_xlat7.x;
  u_xlat80 = (x_1892 * x_1894);
  let x_1896 : f32 = u_xlat80;
  u_xlat80 = (x_1896 * 6.0f);
  let x_1907 : vec3<f32> = u_xlat32;
  let x_1908 : f32 = u_xlat80;
  let x_1909 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_1907, x_1908);
  u_xlat7 = x_1909;
  let x_1911 : f32 = u_xlat7.w;
  u_xlat80 = (x_1911 + -1.0f);
  let x_1914 : f32 = x_357.unity_SpecCube0_HDR.w;
  let x_1915 : f32 = u_xlat80;
  u_xlat80 = ((x_1914 * x_1915) + 1.0f);
  let x_1918 : f32 = u_xlat80;
  u_xlat80 = max(x_1918, 0.0f);
  let x_1920 : f32 = u_xlat80;
  u_xlat80 = log2(x_1920);
  let x_1922 : f32 = u_xlat80;
  let x_1924 : f32 = x_357.unity_SpecCube0_HDR.y;
  u_xlat80 = (x_1922 * x_1924);
  let x_1926 : f32 = u_xlat80;
  u_xlat80 = exp2(x_1926);
  let x_1928 : f32 = u_xlat80;
  let x_1930 : f32 = x_357.unity_SpecCube0_HDR.x;
  u_xlat80 = (x_1928 * x_1930);
  let x_1932 : vec4<f32> = u_xlat7;
  let x_1934 : f32 = u_xlat80;
  u_xlat32 = (vec3<f32>(x_1932.x, x_1932.y, x_1932.z) * vec3<f32>(x_1934, x_1934, x_1934));
  let x_1937 : f32 = u_xlat82;
  let x_1939 : f32 = u_xlat82;
  let x_1943 : vec2<f32> = ((vec2<f32>(x_1937, x_1937) * vec2<f32>(x_1939, x_1939)) + vec2<f32>(-1.0f, 1.0f));
  let x_1944 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1943.x, x_1943.y, x_1944.z, x_1944.w);
  let x_1947 : f32 = u_xlat7.y;
  u_xlat80 = (1.0f / x_1947);
  let x_1949 : vec4<f32> = u_xlat0;
  let x_1952 : f32 = u_xlat81;
  u_xlat33 = (-(vec3<f32>(x_1949.x, x_1949.y, x_1949.z)) + vec3<f32>(x_1952, x_1952, x_1952));
  let x_1955 : f32 = u_xlat56;
  let x_1957 : vec3<f32> = u_xlat33;
  let x_1959 : vec4<f32> = u_xlat0;
  u_xlat33 = ((vec3<f32>(x_1955, x_1955, x_1955) * x_1957) + vec3<f32>(x_1959.x, x_1959.y, x_1959.z));
  let x_1962 : f32 = u_xlat80;
  let x_1964 : vec3<f32> = u_xlat33;
  u_xlat33 = (vec3<f32>(x_1962, x_1962, x_1962) * x_1964);
  let x_1966 : vec3<f32> = u_xlat32;
  let x_1967 : vec3<f32> = u_xlat33;
  u_xlat32 = (x_1966 * x_1967);
  let x_1969 : vec4<f32> = u_xlat5;
  let x_1971 : vec3<f32> = u_xlat27;
  let x_1973 : vec3<f32> = u_xlat32;
  let x_1974 : vec3<f32> = ((vec3<f32>(x_1969.x, x_1969.y, x_1969.z) * x_1971) + x_1973);
  let x_1975 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1974.x, x_1974.y, x_1974.z, x_1975.w);
  let x_1978 : f32 = u_xlat4.x;
  let x_1980 : f32 = x_357.unity_LightData.z;
  u_xlat80 = (x_1978 * x_1980);
  let x_1982 : vec4<f32> = u_xlat3;
  let x_1985 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat81 = dot(vec3<f32>(x_1982.x, x_1982.y, x_1982.z), vec3<f32>(x_1985.x, x_1985.y, x_1985.z));
  let x_1988 : f32 = u_xlat81;
  u_xlat81 = clamp(x_1988, 0.0f, 1.0f);
  let x_1990 : f32 = u_xlat80;
  let x_1991 : f32 = u_xlat81;
  u_xlat80 = (x_1990 * x_1991);
  let x_1993 : f32 = u_xlat80;
  let x_1996 : vec4<f32> = x_28.x_MainLightColor;
  let x_1998 : vec3<f32> = (vec3<f32>(x_1993, x_1993, x_1993) * vec3<f32>(x_1996.x, x_1996.y, x_1996.z));
  let x_1999 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1998.x, x_1999.y, x_1998.y, x_1998.z);
  let x_2001 : vec3<f32> = u_xlat2;
  let x_2003 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat32 = (x_2001 + vec3<f32>(x_2003.x, x_2003.y, x_2003.z));
  let x_2006 : vec3<f32> = u_xlat32;
  let x_2007 : vec3<f32> = u_xlat32;
  u_xlat80 = dot(x_2006, x_2007);
  let x_2009 : f32 = u_xlat80;
  u_xlat80 = max(x_2009, 1.17549435e-38f);
  let x_2012 : f32 = u_xlat80;
  u_xlat80 = inverseSqrt(x_2012);
  let x_2014 : f32 = u_xlat80;
  let x_2016 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_2014, x_2014, x_2014) * x_2016);
  let x_2018 : vec4<f32> = u_xlat3;
  let x_2020 : vec3<f32> = u_xlat32;
  u_xlat80 = dot(vec3<f32>(x_2018.x, x_2018.y, x_2018.z), x_2020);
  let x_2022 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2022, 0.0f, 1.0f);
  let x_2025 : vec4<f32> = x_28.x_MainLightPosition;
  let x_2027 : vec3<f32> = u_xlat32;
  u_xlat81 = dot(vec3<f32>(x_2025.x, x_2025.y, x_2025.z), x_2027);
  let x_2029 : f32 = u_xlat81;
  u_xlat81 = clamp(x_2029, 0.0f, 1.0f);
  let x_2031 : f32 = u_xlat80;
  let x_2032 : f32 = u_xlat80;
  u_xlat80 = (x_2031 * x_2032);
  let x_2034 : f32 = u_xlat80;
  let x_2036 : f32 = u_xlat7.x;
  u_xlat80 = ((x_2034 * x_2036) + 1.00001001358032226562f);
  let x_2040 : f32 = u_xlat81;
  let x_2041 : f32 = u_xlat81;
  u_xlat81 = (x_2040 * x_2041);
  let x_2043 : f32 = u_xlat80;
  let x_2044 : f32 = u_xlat80;
  u_xlat80 = (x_2043 * x_2044);
  let x_2046 : f32 = u_xlat81;
  u_xlat81 = max(x_2046, 0.10000000149011611938f);
  let x_2049 : f32 = u_xlat80;
  let x_2050 : f32 = u_xlat81;
  u_xlat80 = (x_2049 * x_2050);
  let x_2053 : f32 = u_xlat6.x;
  let x_2054 : f32 = u_xlat80;
  u_xlat80 = (x_2053 * x_2054);
  let x_2056 : f32 = u_xlat83;
  let x_2057 : f32 = u_xlat80;
  u_xlat80 = (x_2056 / x_2057);
  let x_2059 : vec4<f32> = u_xlat0;
  let x_2061 : f32 = u_xlat80;
  let x_2064 : vec3<f32> = u_xlat27;
  u_xlat32 = ((vec3<f32>(x_2059.x, x_2059.y, x_2059.z) * vec3<f32>(x_2061, x_2061, x_2061)) + x_2064);
  let x_2067 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_2069 : f32 = x_357.unity_LightData.y;
  u_xlat80 = min(x_2067, x_2069);
  let x_2072 : f32 = u_xlat80;
  u_xlatu80 = bitcast<u32>(i32(x_2072));
  let x_2075 : f32 = u_xlat30;
  let x_2078 : f32 = x_126.x_AdditionalShadowFadeParams.x;
  let x_2081 : f32 = x_126.x_AdditionalShadowFadeParams.y;
  u_xlat81 = ((x_2075 * x_2078) + x_2081);
  let x_2083 : f32 = u_xlat81;
  u_xlat81 = clamp(x_2083, 0.0f, 1.0f);
  u_xlat33.x = 0.0f;
  u_xlat33.y = 0.0f;
  u_xlat33.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2095 : u32 = u_xlatu_loop_1;
    let x_2096 : u32 = u_xlatu80;
    if ((x_2095 < x_2096)) {
    } else {
      break;
    }
    let x_2099 : u32 = u_xlatu_loop_1;
    u_xlatu8 = (x_2099 >> 2u);
    let x_2102 : u32 = u_xlatu_loop_1;
    u_xlati34 = bitcast<i32>((x_2102 & 3u));
    let x_2105 : u32 = u_xlatu8;
    let x_2108 : vec4<f32> = x_357.unity_LightIndices[bitcast<i32>(x_2105)];
    let x_2118 : i32 = u_xlati34;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2123 : vec4<u32> = indexable[x_2118];
    u_xlat8.x = dot(x_2108, bitcast<vec4<f32>>(x_2123));
    let x_2129 : f32 = u_xlat8.x;
    u_xlati8 = i32(x_2129);
    let x_2131 : vec3<f32> = vs_TEXCOORD1;
    let x_2142 : i32 = u_xlati8;
    let x_2144 : vec4<f32> = x_2141.x_AdditionalLightsPosition[x_2142];
    let x_2147 : i32 = u_xlati8;
    let x_2149 : vec4<f32> = x_2141.x_AdditionalLightsPosition[x_2147];
    u_xlat34 = ((-(x_2131) * vec3<f32>(x_2144.w, x_2144.w, x_2144.w)) + vec3<f32>(x_2149.x, x_2149.y, x_2149.z));
    let x_2152 : vec3<f32> = u_xlat34;
    let x_2153 : vec3<f32> = u_xlat34;
    u_xlat9.x = dot(x_2152, x_2153);
    let x_2157 : f32 = u_xlat9.x;
    u_xlat9.x = max(x_2157, 0.00006103515625f);
    let x_2163 : f32 = u_xlat9.x;
    u_xlat35 = inverseSqrt(x_2163);
    let x_2165 : vec3<f32> = u_xlat34;
    let x_2166 : f32 = u_xlat35;
    let x_2168 : vec3<f32> = (x_2165 * vec3<f32>(x_2166, x_2166, x_2166));
    let x_2169 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2168.x, x_2168.y, x_2168.z, x_2169.w);
    let x_2172 : f32 = u_xlat9.x;
    u_xlat61.x = (1.0f / x_2172);
    let x_2176 : f32 = u_xlat9.x;
    let x_2177 : i32 = u_xlati8;
    let x_2179 : f32 = x_2141.x_AdditionalLightsAttenuation[x_2177].x;
    u_xlat9.x = (x_2176 * x_2179);
    let x_2183 : f32 = u_xlat9.x;
    let x_2186 : f32 = u_xlat9.x;
    u_xlat9.x = ((-(x_2183) * x_2186) + 1.0f);
    let x_2191 : f32 = u_xlat9.x;
    u_xlat9.x = max(x_2191, 0.0f);
    let x_2195 : f32 = u_xlat9.x;
    let x_2197 : f32 = u_xlat9.x;
    u_xlat9.x = (x_2195 * x_2197);
    let x_2201 : f32 = u_xlat9.x;
    let x_2203 : f32 = u_xlat61.x;
    u_xlat9.x = (x_2201 * x_2203);
    let x_2206 : i32 = u_xlati8;
    let x_2208 : vec4<f32> = x_2141.x_AdditionalLightsSpotDir[x_2206];
    let x_2210 : vec4<f32> = u_xlat10;
    u_xlat61.x = dot(vec3<f32>(x_2208.x, x_2208.y, x_2208.z), vec3<f32>(x_2210.x, x_2210.y, x_2210.z));
    let x_2215 : f32 = u_xlat61.x;
    let x_2216 : i32 = u_xlati8;
    let x_2218 : f32 = x_2141.x_AdditionalLightsAttenuation[x_2216].z;
    let x_2220 : i32 = u_xlati8;
    let x_2222 : f32 = x_2141.x_AdditionalLightsAttenuation[x_2220].w;
    u_xlat61.x = ((x_2215 * x_2218) + x_2222);
    let x_2226 : f32 = u_xlat61.x;
    u_xlat61.x = clamp(x_2226, 0.0f, 1.0f);
    let x_2230 : f32 = u_xlat61.x;
    let x_2232 : f32 = u_xlat61.x;
    u_xlat61.x = (x_2230 * x_2232);
    let x_2236 : f32 = u_xlat61.x;
    let x_2238 : f32 = u_xlat9.x;
    u_xlat9.x = (x_2236 * x_2238);
    let x_2243 : i32 = u_xlati8;
    let x_2245 : f32 = x_126.x_AdditionalShadowParams[x_2243].w;
    u_xlati61 = i32(x_2245);
    let x_2248 : i32 = u_xlati61;
    u_xlatb87 = (x_2248 >= 0i);
    let x_2250 : bool = u_xlatb87;
    if (x_2250) {
      let x_2254 : i32 = u_xlati8;
      let x_2256 : f32 = x_126.x_AdditionalShadowParams[x_2254].z;
      u_xlatb87 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2256, x_2256, x_2256, x_2256))));
      let x_2260 : bool = u_xlatb87;
      if (x_2260) {
        let x_2264 : vec4<f32> = u_xlat10;
        let x_2267 : vec4<f32> = u_xlat10;
        let x_2270 : vec4<bool> = (abs(vec4<f32>(x_2264.z, x_2264.z, x_2264.y, x_2264.z)) >= abs(vec4<f32>(x_2267.x, x_2267.y, x_2267.x, x_2267.x)));
        let x_2272 : vec3<bool> = vec3<bool>(x_2270.x, x_2270.y, x_2270.z);
        let x_2273 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2272.x, x_2272.y, x_2272.z, x_2273.w);
        let x_2276 : bool = u_xlatb11.y;
        let x_2278 : bool = u_xlatb11.x;
        u_xlatb87 = (x_2276 & x_2278);
        let x_2280 : vec4<f32> = u_xlat10;
        let x_2283 : vec4<bool> = (-(vec4<f32>(x_2280.z, x_2280.y, x_2280.z, x_2280.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2284 : vec3<bool> = vec3<bool>(x_2283.x, x_2283.y, x_2283.w);
        let x_2285 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2284.x, x_2284.y, x_2285.z, x_2284.z);
        let x_2288 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2288);
        let x_2293 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2293);
        let x_2298 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_2298);
        let x_2301 : bool = u_xlatb11.z;
        if (x_2301) {
          let x_2306 : f32 = u_xlat11.y;
          x_2302 = x_2306;
        } else {
          let x_2308 : f32 = u_xlat88;
          x_2302 = x_2308;
        }
        let x_2309 : f32 = x_2302;
        u_xlat88 = x_2309;
        let x_2311 : bool = u_xlatb87;
        if (x_2311) {
          let x_2316 : f32 = u_xlat11.x;
          x_2312 = x_2316;
        } else {
          let x_2318 : f32 = u_xlat88;
          x_2312 = x_2318;
        }
        let x_2319 : f32 = x_2312;
        u_xlat87 = x_2319;
        let x_2320 : i32 = u_xlati8;
        let x_2322 : f32 = x_126.x_AdditionalShadowParams[x_2320].w;
        u_xlat88 = trunc(x_2322);
        let x_2324 : f32 = u_xlat87;
        let x_2325 : f32 = u_xlat88;
        u_xlat87 = (x_2324 + x_2325);
        let x_2327 : f32 = u_xlat87;
        u_xlati61 = i32(x_2327);
      }
      let x_2329 : i32 = u_xlati61;
      u_xlati61 = (x_2329 << bitcast<u32>(2i));
      let x_2331 : vec3<f32> = vs_TEXCOORD1;
      let x_2334 : i32 = u_xlati61;
      let x_2337 : i32 = u_xlati61;
      let x_2341 : vec4<f32> = x_126.x_AdditionalLightsWorldToShadow[((x_2334 + 1i) / 4i)][((x_2337 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2331.y, x_2331.y, x_2331.y, x_2331.y) * x_2341);
      let x_2343 : i32 = u_xlati61;
      let x_2345 : i32 = u_xlati61;
      let x_2348 : vec4<f32> = x_126.x_AdditionalLightsWorldToShadow[(x_2343 / 4i)][(x_2345 % 4i)];
      let x_2349 : vec3<f32> = vs_TEXCOORD1;
      let x_2352 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2348 * vec4<f32>(x_2349.x, x_2349.x, x_2349.x, x_2349.x)) + x_2352);
      let x_2354 : i32 = u_xlati61;
      let x_2357 : i32 = u_xlati61;
      let x_2361 : vec4<f32> = x_126.x_AdditionalLightsWorldToShadow[((x_2354 + 2i) / 4i)][((x_2357 + 2i) % 4i)];
      let x_2362 : vec3<f32> = vs_TEXCOORD1;
      let x_2365 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2361 * vec4<f32>(x_2362.z, x_2362.z, x_2362.z, x_2362.z)) + x_2365);
      let x_2367 : vec4<f32> = u_xlat11;
      let x_2368 : i32 = u_xlati61;
      let x_2371 : i32 = u_xlati61;
      let x_2375 : vec4<f32> = x_126.x_AdditionalLightsWorldToShadow[((x_2368 + 3i) / 4i)][((x_2371 + 3i) % 4i)];
      u_xlat11 = (x_2367 + x_2375);
      let x_2377 : vec4<f32> = u_xlat11;
      let x_2379 : vec4<f32> = u_xlat11;
      let x_2381 : vec3<f32> = (vec3<f32>(x_2377.x, x_2377.y, x_2377.z) / vec3<f32>(x_2379.w, x_2379.w, x_2379.w));
      let x_2382 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2381.x, x_2381.y, x_2381.z, x_2382.w);
      let x_2385 : i32 = u_xlati8;
      let x_2387 : f32 = x_126.x_AdditionalShadowParams[x_2385].y;
      u_xlatb61 = (0.0f < x_2387);
      let x_2389 : bool = u_xlatb61;
      if (x_2389) {
        let x_2392 : i32 = u_xlati8;
        let x_2394 : f32 = x_126.x_AdditionalShadowParams[x_2392].y;
        u_xlatb61 = (1.0f == x_2394);
        let x_2396 : bool = u_xlatb61;
        if (x_2396) {
          let x_2399 : vec4<f32> = u_xlat11;
          let x_2403 : vec4<f32> = x_126.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2399.x, x_2399.y, x_2399.x, x_2399.y) + x_2403);
          let x_2406 : vec4<f32> = u_xlat12;
          let x_2407 : vec2<f32> = vec2<f32>(x_2406.x, x_2406.y);
          let x_2409 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2407.x, x_2407.y, x_2409);
          let x_2417 : vec3<f32> = txVec30;
          let x_2419 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2417.xy, x_2417.z);
          u_xlat13.x = x_2419;
          let x_2422 : vec4<f32> = u_xlat12;
          let x_2423 : vec2<f32> = vec2<f32>(x_2422.z, x_2422.w);
          let x_2425 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2423.x, x_2423.y, x_2425);
          let x_2432 : vec3<f32> = txVec31;
          let x_2434 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2432.xy, x_2432.z);
          u_xlat13.y = x_2434;
          let x_2436 : vec4<f32> = u_xlat11;
          let x_2440 : vec4<f32> = x_126.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2436.x, x_2436.y, x_2436.x, x_2436.y) + x_2440);
          let x_2443 : vec4<f32> = u_xlat12;
          let x_2444 : vec2<f32> = vec2<f32>(x_2443.x, x_2443.y);
          let x_2446 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2444.x, x_2444.y, x_2446);
          let x_2453 : vec3<f32> = txVec32;
          let x_2455 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2453.xy, x_2453.z);
          u_xlat13.z = x_2455;
          let x_2458 : vec4<f32> = u_xlat12;
          let x_2459 : vec2<f32> = vec2<f32>(x_2458.z, x_2458.w);
          let x_2461 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2459.x, x_2459.y, x_2461);
          let x_2468 : vec3<f32> = txVec33;
          let x_2470 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2468.xy, x_2468.z);
          u_xlat13.w = x_2470;
          let x_2472 : vec4<f32> = u_xlat13;
          u_xlat61.x = dot(x_2472, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2476 : i32 = u_xlati8;
          let x_2478 : f32 = x_126.x_AdditionalShadowParams[x_2476].y;
          u_xlatb87 = (2.0f == x_2478);
          let x_2480 : bool = u_xlatb87;
          if (x_2480) {
            let x_2483 : vec4<f32> = u_xlat11;
            let x_2487 : vec4<f32> = x_126.x_AdditionalShadowmapSize;
            let x_2490 : vec2<f32> = ((vec2<f32>(x_2483.x, x_2483.y) * vec2<f32>(x_2487.z, x_2487.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2491 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2490.x, x_2490.y, x_2491.z, x_2491.w);
            let x_2493 : vec4<f32> = u_xlat12;
            let x_2495 : vec2<f32> = floor(vec2<f32>(x_2493.x, x_2493.y));
            let x_2496 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2495.x, x_2495.y, x_2496.z, x_2496.w);
            let x_2499 : vec4<f32> = u_xlat11;
            let x_2502 : vec4<f32> = x_126.x_AdditionalShadowmapSize;
            let x_2505 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2499.x, x_2499.y) * vec2<f32>(x_2502.z, x_2502.w)) + -(vec2<f32>(x_2505.x, x_2505.y)));
            let x_2509 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2509.x, x_2509.x, x_2509.y, x_2509.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2512 : vec4<f32> = u_xlat13;
            let x_2514 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2512.x, x_2512.x, x_2512.z, x_2512.z) * vec4<f32>(x_2514.x, x_2514.x, x_2514.z, x_2514.z));
            let x_2517 : vec4<f32> = u_xlat14;
            let x_2519 : vec2<f32> = (vec2<f32>(x_2517.y, x_2517.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2520 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2519.x, x_2520.y, x_2519.y, x_2520.w);
            let x_2522 : vec4<f32> = u_xlat14;
            let x_2525 : vec2<f32> = u_xlat64;
            let x_2527 : vec2<f32> = ((vec2<f32>(x_2522.x, x_2522.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2525));
            let x_2528 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2527.x, x_2527.y, x_2528.z, x_2528.w);
            let x_2531 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2531) + vec2<f32>(1.0f, 1.0f));
            let x_2534 : vec2<f32> = u_xlat64;
            let x_2535 : vec2<f32> = min(x_2534, vec2<f32>(0.0f, 0.0f));
            let x_2536 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2535.x, x_2535.y, x_2536.z, x_2536.w);
            let x_2538 : vec4<f32> = u_xlat15;
            let x_2541 : vec4<f32> = u_xlat15;
            let x_2544 : vec2<f32> = u_xlat66;
            let x_2545 : vec2<f32> = ((-(vec2<f32>(x_2538.x, x_2538.y)) * vec2<f32>(x_2541.x, x_2541.y)) + x_2544);
            let x_2546 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2545.x, x_2545.y, x_2546.z, x_2546.w);
            let x_2548 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2548, vec2<f32>(0.0f, 0.0f));
            let x_2550 : vec2<f32> = u_xlat64;
            let x_2552 : vec2<f32> = u_xlat64;
            let x_2554 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2550) * x_2552) + vec2<f32>(x_2554.y, x_2554.w));
            let x_2557 : vec4<f32> = u_xlat15;
            let x_2559 : vec2<f32> = (vec2<f32>(x_2557.x, x_2557.y) + vec2<f32>(1.0f, 1.0f));
            let x_2560 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2559.x, x_2559.y, x_2560.z, x_2560.w);
            let x_2562 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2562 + vec2<f32>(1.0f, 1.0f));
            let x_2564 : vec4<f32> = u_xlat14;
            let x_2566 : vec2<f32> = (vec2<f32>(x_2564.x, x_2564.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2567 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2566.x, x_2566.y, x_2567.z, x_2567.w);
            let x_2569 : vec2<f32> = u_xlat66;
            let x_2570 : vec2<f32> = (x_2569 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2571 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2570.x, x_2570.y, x_2571.z, x_2571.w);
            let x_2573 : vec4<f32> = u_xlat15;
            let x_2575 : vec2<f32> = (vec2<f32>(x_2573.x, x_2573.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2576 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2575.x, x_2575.y, x_2576.z, x_2576.w);
            let x_2578 : vec2<f32> = u_xlat64;
            let x_2579 : vec2<f32> = (x_2578 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2580 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2579.x, x_2579.y, x_2580.z, x_2580.w);
            let x_2582 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2582.y, x_2582.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2586 : f32 = u_xlat15.x;
            u_xlat16.z = x_2586;
            let x_2589 : f32 = u_xlat64.x;
            u_xlat16.w = x_2589;
            let x_2592 : f32 = u_xlat17.x;
            u_xlat14.z = x_2592;
            let x_2595 : f32 = u_xlat13.x;
            u_xlat14.w = x_2595;
            let x_2597 : vec4<f32> = u_xlat14;
            let x_2599 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2597.z, x_2597.w, x_2597.x, x_2597.z) + vec4<f32>(x_2599.z, x_2599.w, x_2599.x, x_2599.z));
            let x_2603 : f32 = u_xlat16.y;
            u_xlat15.z = x_2603;
            let x_2606 : f32 = u_xlat64.y;
            u_xlat15.w = x_2606;
            let x_2609 : f32 = u_xlat14.y;
            u_xlat17.z = x_2609;
            let x_2612 : f32 = u_xlat13.z;
            u_xlat17.w = x_2612;
            let x_2614 : vec4<f32> = u_xlat15;
            let x_2616 : vec4<f32> = u_xlat17;
            let x_2618 : vec3<f32> = (vec3<f32>(x_2614.z, x_2614.y, x_2614.w) + vec3<f32>(x_2616.z, x_2616.y, x_2616.w));
            let x_2619 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2618.x, x_2618.y, x_2618.z, x_2619.w);
            let x_2621 : vec4<f32> = u_xlat14;
            let x_2623 : vec4<f32> = u_xlat18;
            let x_2625 : vec3<f32> = (vec3<f32>(x_2621.x, x_2621.z, x_2621.w) / vec3<f32>(x_2623.z, x_2623.w, x_2623.y));
            let x_2626 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2625.x, x_2625.y, x_2625.z, x_2626.w);
            let x_2628 : vec4<f32> = u_xlat14;
            let x_2630 : vec3<f32> = (vec3<f32>(x_2628.x, x_2628.y, x_2628.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2631 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2630.x, x_2630.y, x_2630.z, x_2631.w);
            let x_2633 : vec4<f32> = u_xlat17;
            let x_2635 : vec4<f32> = u_xlat13;
            let x_2637 : vec3<f32> = (vec3<f32>(x_2633.z, x_2633.y, x_2633.w) / vec3<f32>(x_2635.x, x_2635.y, x_2635.z));
            let x_2638 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2637.x, x_2637.y, x_2637.z, x_2638.w);
            let x_2640 : vec4<f32> = u_xlat15;
            let x_2642 : vec3<f32> = (vec3<f32>(x_2640.x, x_2640.y, x_2640.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2643 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2642.x, x_2642.y, x_2642.z, x_2643.w);
            let x_2645 : vec4<f32> = u_xlat14;
            let x_2648 : vec4<f32> = x_126.x_AdditionalShadowmapSize;
            let x_2650 : vec3<f32> = (vec3<f32>(x_2645.y, x_2645.x, x_2645.z) * vec3<f32>(x_2648.x, x_2648.x, x_2648.x));
            let x_2651 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2650.x, x_2650.y, x_2650.z, x_2651.w);
            let x_2653 : vec4<f32> = u_xlat15;
            let x_2656 : vec4<f32> = x_126.x_AdditionalShadowmapSize;
            let x_2658 : vec3<f32> = (vec3<f32>(x_2653.x, x_2653.y, x_2653.z) * vec3<f32>(x_2656.y, x_2656.y, x_2656.y));
            let x_2659 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2658.x, x_2658.y, x_2658.z, x_2659.w);
            let x_2662 : f32 = u_xlat15.x;
            u_xlat14.w = x_2662;
            let x_2664 : vec4<f32> = u_xlat12;
            let x_2667 : vec4<f32> = x_126.x_AdditionalShadowmapSize;
            let x_2670 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2664.x, x_2664.y, x_2664.x, x_2664.y) * vec4<f32>(x_2667.x, x_2667.y, x_2667.x, x_2667.y)) + vec4<f32>(x_2670.y, x_2670.w, x_2670.x, x_2670.w));
            let x_2673 : vec4<f32> = u_xlat12;
            let x_2676 : vec4<f32> = x_126.x_AdditionalShadowmapSize;
            let x_2679 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2673.x, x_2673.y) * vec2<f32>(x_2676.x, x_2676.y)) + vec2<f32>(x_2679.z, x_2679.w));
            let x_2683 : f32 = u_xlat14.y;
            u_xlat15.w = x_2683;
            let x_2685 : vec4<f32> = u_xlat15;
            let x_2686 : vec2<f32> = vec2<f32>(x_2685.y, x_2685.z);
            let x_2687 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2687.x, x_2686.x, x_2687.z, x_2686.y);
            let x_2689 : vec4<f32> = u_xlat12;
            let x_2692 : vec4<f32> = x_126.x_AdditionalShadowmapSize;
            let x_2695 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2689.x, x_2689.y, x_2689.x, x_2689.y) * vec4<f32>(x_2692.x, x_2692.y, x_2692.x, x_2692.y)) + vec4<f32>(x_2695.x, x_2695.y, x_2695.z, x_2695.y));
            let x_2698 : vec4<f32> = u_xlat12;
            let x_2701 : vec4<f32> = x_126.x_AdditionalShadowmapSize;
            let x_2704 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2698.x, x_2698.y, x_2698.x, x_2698.y) * vec4<f32>(x_2701.x, x_2701.y, x_2701.x, x_2701.y)) + vec4<f32>(x_2704.w, x_2704.y, x_2704.w, x_2704.z));
            let x_2707 : vec4<f32> = u_xlat12;
            let x_2710 : vec4<f32> = x_126.x_AdditionalShadowmapSize;
            let x_2713 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2707.x, x_2707.y, x_2707.x, x_2707.y) * vec4<f32>(x_2710.x, x_2710.y, x_2710.x, x_2710.y)) + vec4<f32>(x_2713.x, x_2713.w, x_2713.z, x_2713.w));
            let x_2716 : vec4<f32> = u_xlat13;
            let x_2718 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2716.x, x_2716.x, x_2716.x, x_2716.y) * vec4<f32>(x_2718.z, x_2718.w, x_2718.y, x_2718.z));
            let x_2721 : vec4<f32> = u_xlat13;
            let x_2723 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2721.y, x_2721.y, x_2721.z, x_2721.z) * x_2723);
            let x_2726 : f32 = u_xlat13.z;
            let x_2728 : f32 = u_xlat18.y;
            u_xlat87 = (x_2726 * x_2728);
            let x_2731 : vec4<f32> = u_xlat16;
            let x_2732 : vec2<f32> = vec2<f32>(x_2731.x, x_2731.y);
            let x_2734 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2732.x, x_2732.y, x_2734);
            let x_2741 : vec3<f32> = txVec34;
            let x_2743 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2741.xy, x_2741.z);
            u_xlat88 = x_2743;
            let x_2745 : vec4<f32> = u_xlat16;
            let x_2746 : vec2<f32> = vec2<f32>(x_2745.z, x_2745.w);
            let x_2748 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2746.x, x_2746.y, x_2748);
            let x_2756 : vec3<f32> = txVec35;
            let x_2758 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2756.xy, x_2756.z);
            u_xlat89 = x_2758;
            let x_2759 : f32 = u_xlat89;
            let x_2761 : f32 = u_xlat19.y;
            u_xlat89 = (x_2759 * x_2761);
            let x_2764 : f32 = u_xlat19.x;
            let x_2765 : f32 = u_xlat88;
            let x_2767 : f32 = u_xlat89;
            u_xlat88 = ((x_2764 * x_2765) + x_2767);
            let x_2770 : vec2<f32> = u_xlat64;
            let x_2772 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_2770.x, x_2770.y, x_2772);
            let x_2779 : vec3<f32> = txVec36;
            let x_2781 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2779.xy, x_2779.z);
            u_xlat89 = x_2781;
            let x_2783 : f32 = u_xlat19.z;
            let x_2784 : f32 = u_xlat89;
            let x_2786 : f32 = u_xlat88;
            u_xlat88 = ((x_2783 * x_2784) + x_2786);
            let x_2789 : vec4<f32> = u_xlat15;
            let x_2790 : vec2<f32> = vec2<f32>(x_2789.x, x_2789.y);
            let x_2792 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_2790.x, x_2790.y, x_2792);
            let x_2799 : vec3<f32> = txVec37;
            let x_2801 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2799.xy, x_2799.z);
            u_xlat89 = x_2801;
            let x_2803 : f32 = u_xlat19.w;
            let x_2804 : f32 = u_xlat89;
            let x_2806 : f32 = u_xlat88;
            u_xlat88 = ((x_2803 * x_2804) + x_2806);
            let x_2809 : vec4<f32> = u_xlat17;
            let x_2810 : vec2<f32> = vec2<f32>(x_2809.x, x_2809.y);
            let x_2812 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_2810.x, x_2810.y, x_2812);
            let x_2819 : vec3<f32> = txVec38;
            let x_2821 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2819.xy, x_2819.z);
            u_xlat89 = x_2821;
            let x_2823 : f32 = u_xlat20.x;
            let x_2824 : f32 = u_xlat89;
            let x_2826 : f32 = u_xlat88;
            u_xlat88 = ((x_2823 * x_2824) + x_2826);
            let x_2829 : vec4<f32> = u_xlat17;
            let x_2830 : vec2<f32> = vec2<f32>(x_2829.z, x_2829.w);
            let x_2832 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_2830.x, x_2830.y, x_2832);
            let x_2839 : vec3<f32> = txVec39;
            let x_2841 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2839.xy, x_2839.z);
            u_xlat89 = x_2841;
            let x_2843 : f32 = u_xlat20.y;
            let x_2844 : f32 = u_xlat89;
            let x_2846 : f32 = u_xlat88;
            u_xlat88 = ((x_2843 * x_2844) + x_2846);
            let x_2849 : vec4<f32> = u_xlat15;
            let x_2850 : vec2<f32> = vec2<f32>(x_2849.z, x_2849.w);
            let x_2852 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_2850.x, x_2850.y, x_2852);
            let x_2859 : vec3<f32> = txVec40;
            let x_2861 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2859.xy, x_2859.z);
            u_xlat89 = x_2861;
            let x_2863 : f32 = u_xlat20.z;
            let x_2864 : f32 = u_xlat89;
            let x_2866 : f32 = u_xlat88;
            u_xlat88 = ((x_2863 * x_2864) + x_2866);
            let x_2869 : vec4<f32> = u_xlat14;
            let x_2870 : vec2<f32> = vec2<f32>(x_2869.x, x_2869.y);
            let x_2872 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_2870.x, x_2870.y, x_2872);
            let x_2879 : vec3<f32> = txVec41;
            let x_2881 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2879.xy, x_2879.z);
            u_xlat89 = x_2881;
            let x_2883 : f32 = u_xlat20.w;
            let x_2884 : f32 = u_xlat89;
            let x_2886 : f32 = u_xlat88;
            u_xlat88 = ((x_2883 * x_2884) + x_2886);
            let x_2889 : vec4<f32> = u_xlat14;
            let x_2890 : vec2<f32> = vec2<f32>(x_2889.z, x_2889.w);
            let x_2892 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_2890.x, x_2890.y, x_2892);
            let x_2899 : vec3<f32> = txVec42;
            let x_2901 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2899.xy, x_2899.z);
            u_xlat89 = x_2901;
            let x_2902 : f32 = u_xlat87;
            let x_2903 : f32 = u_xlat89;
            let x_2905 : f32 = u_xlat88;
            u_xlat61.x = ((x_2902 * x_2903) + x_2905);
          } else {
            let x_2909 : vec4<f32> = u_xlat11;
            let x_2912 : vec4<f32> = x_126.x_AdditionalShadowmapSize;
            let x_2915 : vec2<f32> = ((vec2<f32>(x_2909.x, x_2909.y) * vec2<f32>(x_2912.z, x_2912.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2916 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2915.x, x_2915.y, x_2916.z, x_2916.w);
            let x_2918 : vec4<f32> = u_xlat12;
            let x_2920 : vec2<f32> = floor(vec2<f32>(x_2918.x, x_2918.y));
            let x_2921 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2920.x, x_2920.y, x_2921.z, x_2921.w);
            let x_2923 : vec4<f32> = u_xlat11;
            let x_2926 : vec4<f32> = x_126.x_AdditionalShadowmapSize;
            let x_2929 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2923.x, x_2923.y) * vec2<f32>(x_2926.z, x_2926.w)) + -(vec2<f32>(x_2929.x, x_2929.y)));
            let x_2933 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2933.x, x_2933.x, x_2933.y, x_2933.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2936 : vec4<f32> = u_xlat13;
            let x_2938 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2936.x, x_2936.x, x_2936.z, x_2936.z) * vec4<f32>(x_2938.x, x_2938.x, x_2938.z, x_2938.z));
            let x_2941 : vec4<f32> = u_xlat14;
            let x_2943 : vec2<f32> = (vec2<f32>(x_2941.y, x_2941.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2944 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2944.x, x_2943.x, x_2944.z, x_2943.y);
            let x_2946 : vec4<f32> = u_xlat14;
            let x_2949 : vec2<f32> = u_xlat64;
            let x_2951 : vec2<f32> = ((vec2<f32>(x_2946.x, x_2946.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2949));
            let x_2952 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2951.x, x_2952.y, x_2951.y, x_2952.w);
            let x_2954 : vec2<f32> = u_xlat64;
            let x_2956 : vec2<f32> = (-(x_2954) + vec2<f32>(1.0f, 1.0f));
            let x_2957 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2956.x, x_2956.y, x_2957.z, x_2957.w);
            let x_2959 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_2959, vec2<f32>(0.0f, 0.0f));
            let x_2961 : vec2<f32> = u_xlat66;
            let x_2963 : vec2<f32> = u_xlat66;
            let x_2965 : vec4<f32> = u_xlat14;
            let x_2967 : vec2<f32> = ((-(x_2961) * x_2963) + vec2<f32>(x_2965.x, x_2965.y));
            let x_2968 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2967.x, x_2967.y, x_2968.z, x_2968.w);
            let x_2970 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_2970, vec2<f32>(0.0f, 0.0f));
            let x_2973 : vec2<f32> = u_xlat66;
            let x_2975 : vec2<f32> = u_xlat66;
            let x_2977 : vec4<f32> = u_xlat13;
            let x_2979 : vec2<f32> = ((-(x_2973) * x_2975) + vec2<f32>(x_2977.y, x_2977.w));
            let x_2980 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_2979.x, x_2980.y, x_2979.y);
            let x_2982 : vec4<f32> = u_xlat14;
            let x_2985 : vec2<f32> = (vec2<f32>(x_2982.x, x_2982.y) + vec2<f32>(2.0f, 2.0f));
            let x_2986 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2985.x, x_2985.y, x_2986.z, x_2986.w);
            let x_2988 : vec3<f32> = u_xlat39;
            let x_2990 : vec2<f32> = (vec2<f32>(x_2988.x, x_2988.z) + vec2<f32>(2.0f, 2.0f));
            let x_2991 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2991.x, x_2990.x, x_2991.z, x_2990.y);
            let x_2994 : f32 = u_xlat13.y;
            u_xlat16.z = (x_2994 * 0.08163200318813323975f);
            let x_2997 : vec4<f32> = u_xlat13;
            let x_3000 : vec3<f32> = (vec3<f32>(x_2997.z, x_2997.x, x_2997.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3001 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3000.x, x_3000.y, x_3000.z, x_3001.w);
            let x_3003 : vec4<f32> = u_xlat14;
            let x_3005 : vec2<f32> = (vec2<f32>(x_3003.x, x_3003.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3006 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3005.x, x_3005.y, x_3006.z, x_3006.w);
            let x_3009 : f32 = u_xlat17.y;
            u_xlat16.x = x_3009;
            let x_3011 : vec2<f32> = u_xlat64;
            let x_3014 : vec2<f32> = ((vec2<f32>(x_3011.x, x_3011.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3015 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3015.x, x_3014.x, x_3015.z, x_3014.y);
            let x_3017 : vec2<f32> = u_xlat64;
            let x_3020 : vec2<f32> = ((vec2<f32>(x_3017.x, x_3017.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3021 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3020.x, x_3021.y, x_3020.y, x_3021.w);
            let x_3024 : f32 = u_xlat13.x;
            u_xlat14.y = x_3024;
            let x_3027 : f32 = u_xlat15.y;
            u_xlat14.w = x_3027;
            let x_3029 : vec4<f32> = u_xlat14;
            let x_3030 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3029 + x_3030);
            let x_3032 : vec2<f32> = u_xlat64;
            let x_3035 : vec2<f32> = ((vec2<f32>(x_3032.y, x_3032.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3036 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3036.x, x_3035.x, x_3036.z, x_3035.y);
            let x_3038 : vec2<f32> = u_xlat64;
            let x_3041 : vec2<f32> = ((vec2<f32>(x_3038.y, x_3038.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3042 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3041.x, x_3042.y, x_3041.y, x_3042.w);
            let x_3045 : f32 = u_xlat13.y;
            u_xlat15.y = x_3045;
            let x_3047 : vec4<f32> = u_xlat15;
            let x_3048 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3047 + x_3048);
            let x_3050 : vec4<f32> = u_xlat14;
            let x_3051 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3050 / x_3051);
            let x_3053 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3053 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3055 : vec4<f32> = u_xlat15;
            let x_3056 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3055 / x_3056);
            let x_3058 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3058 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3060 : vec4<f32> = u_xlat14;
            let x_3063 : vec4<f32> = x_126.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3060.w, x_3060.x, x_3060.y, x_3060.z) * vec4<f32>(x_3063.x, x_3063.x, x_3063.x, x_3063.x));
            let x_3066 : vec4<f32> = u_xlat15;
            let x_3069 : vec4<f32> = x_126.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3066.x, x_3066.w, x_3066.y, x_3066.z) * vec4<f32>(x_3069.y, x_3069.y, x_3069.y, x_3069.y));
            let x_3072 : vec4<f32> = u_xlat14;
            let x_3073 : vec3<f32> = vec3<f32>(x_3072.y, x_3072.z, x_3072.w);
            let x_3074 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3073.x, x_3074.y, x_3073.y, x_3073.z);
            let x_3077 : f32 = u_xlat15.x;
            u_xlat17.y = x_3077;
            let x_3079 : vec4<f32> = u_xlat12;
            let x_3082 : vec4<f32> = x_126.x_AdditionalShadowmapSize;
            let x_3085 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3079.x, x_3079.y, x_3079.x, x_3079.y) * vec4<f32>(x_3082.x, x_3082.y, x_3082.x, x_3082.y)) + vec4<f32>(x_3085.x, x_3085.y, x_3085.z, x_3085.y));
            let x_3088 : vec4<f32> = u_xlat12;
            let x_3091 : vec4<f32> = x_126.x_AdditionalShadowmapSize;
            let x_3094 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3088.x, x_3088.y) * vec2<f32>(x_3091.x, x_3091.y)) + vec2<f32>(x_3094.w, x_3094.y));
            let x_3098 : f32 = u_xlat17.y;
            u_xlat14.y = x_3098;
            let x_3101 : f32 = u_xlat15.z;
            u_xlat17.y = x_3101;
            let x_3103 : vec4<f32> = u_xlat12;
            let x_3106 : vec4<f32> = x_126.x_AdditionalShadowmapSize;
            let x_3109 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3103.x, x_3103.y, x_3103.x, x_3103.y) * vec4<f32>(x_3106.x, x_3106.y, x_3106.x, x_3106.y)) + vec4<f32>(x_3109.x, x_3109.y, x_3109.z, x_3109.y));
            let x_3112 : vec4<f32> = u_xlat12;
            let x_3115 : vec4<f32> = x_126.x_AdditionalShadowmapSize;
            let x_3118 : vec4<f32> = u_xlat17;
            let x_3120 : vec2<f32> = ((vec2<f32>(x_3112.x, x_3112.y) * vec2<f32>(x_3115.x, x_3115.y)) + vec2<f32>(x_3118.w, x_3118.y));
            let x_3121 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3120.x, x_3120.y, x_3121.z, x_3121.w);
            let x_3124 : f32 = u_xlat17.y;
            u_xlat14.z = x_3124;
            let x_3127 : vec4<f32> = u_xlat12;
            let x_3130 : vec4<f32> = x_126.x_AdditionalShadowmapSize;
            let x_3133 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3127.x, x_3127.y, x_3127.x, x_3127.y) * vec4<f32>(x_3130.x, x_3130.y, x_3130.x, x_3130.y)) + vec4<f32>(x_3133.x, x_3133.y, x_3133.x, x_3133.z));
            let x_3137 : f32 = u_xlat15.w;
            u_xlat17.y = x_3137;
            let x_3140 : vec4<f32> = u_xlat12;
            let x_3143 : vec4<f32> = x_126.x_AdditionalShadowmapSize;
            let x_3146 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3140.x, x_3140.y, x_3140.x, x_3140.y) * vec4<f32>(x_3143.x, x_3143.y, x_3143.x, x_3143.y)) + vec4<f32>(x_3146.x, x_3146.y, x_3146.z, x_3146.y));
            let x_3150 : vec4<f32> = u_xlat12;
            let x_3153 : vec4<f32> = x_126.x_AdditionalShadowmapSize;
            let x_3156 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3150.x, x_3150.y) * vec2<f32>(x_3153.x, x_3153.y)) + vec2<f32>(x_3156.w, x_3156.y));
            let x_3160 : f32 = u_xlat17.y;
            u_xlat14.w = x_3160;
            let x_3163 : vec4<f32> = u_xlat12;
            let x_3166 : vec4<f32> = x_126.x_AdditionalShadowmapSize;
            let x_3169 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3163.x, x_3163.y) * vec2<f32>(x_3166.x, x_3166.y)) + vec2<f32>(x_3169.x, x_3169.w));
            let x_3172 : vec4<f32> = u_xlat17;
            let x_3173 : vec3<f32> = vec3<f32>(x_3172.x, x_3172.z, x_3172.w);
            let x_3174 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3173.x, x_3174.y, x_3173.y, x_3173.z);
            let x_3176 : vec4<f32> = u_xlat12;
            let x_3179 : vec4<f32> = x_126.x_AdditionalShadowmapSize;
            let x_3182 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3176.x, x_3176.y, x_3176.x, x_3176.y) * vec4<f32>(x_3179.x, x_3179.y, x_3179.x, x_3179.y)) + vec4<f32>(x_3182.x, x_3182.y, x_3182.z, x_3182.y));
            let x_3186 : vec4<f32> = u_xlat12;
            let x_3189 : vec4<f32> = x_126.x_AdditionalShadowmapSize;
            let x_3192 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3186.x, x_3186.y) * vec2<f32>(x_3189.x, x_3189.y)) + vec2<f32>(x_3192.w, x_3192.y));
            let x_3196 : f32 = u_xlat14.x;
            u_xlat15.x = x_3196;
            let x_3198 : vec4<f32> = u_xlat12;
            let x_3201 : vec4<f32> = x_126.x_AdditionalShadowmapSize;
            let x_3204 : vec4<f32> = u_xlat15;
            let x_3206 : vec2<f32> = ((vec2<f32>(x_3198.x, x_3198.y) * vec2<f32>(x_3201.x, x_3201.y)) + vec2<f32>(x_3204.x, x_3204.y));
            let x_3207 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3206.x, x_3206.y, x_3207.z, x_3207.w);
            let x_3210 : vec4<f32> = u_xlat13;
            let x_3212 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3210.x, x_3210.x, x_3210.x, x_3210.x) * x_3212);
            let x_3215 : vec4<f32> = u_xlat13;
            let x_3217 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3215.y, x_3215.y, x_3215.y, x_3215.y) * x_3217);
            let x_3220 : vec4<f32> = u_xlat13;
            let x_3222 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3220.z, x_3220.z, x_3220.z, x_3220.z) * x_3222);
            let x_3224 : vec4<f32> = u_xlat13;
            let x_3226 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3224.w, x_3224.w, x_3224.w, x_3224.w) * x_3226);
            let x_3229 : vec4<f32> = u_xlat18;
            let x_3230 : vec2<f32> = vec2<f32>(x_3229.x, x_3229.y);
            let x_3232 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3230.x, x_3230.y, x_3232);
            let x_3239 : vec3<f32> = txVec43;
            let x_3241 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3239.xy, x_3239.z);
            u_xlat87 = x_3241;
            let x_3243 : vec4<f32> = u_xlat18;
            let x_3244 : vec2<f32> = vec2<f32>(x_3243.z, x_3243.w);
            let x_3246 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3244.x, x_3244.y, x_3246);
            let x_3253 : vec3<f32> = txVec44;
            let x_3255 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3253.xy, x_3253.z);
            u_xlat88 = x_3255;
            let x_3256 : f32 = u_xlat88;
            let x_3258 : f32 = u_xlat23.y;
            u_xlat88 = (x_3256 * x_3258);
            let x_3261 : f32 = u_xlat23.x;
            let x_3262 : f32 = u_xlat87;
            let x_3264 : f32 = u_xlat88;
            u_xlat87 = ((x_3261 * x_3262) + x_3264);
            let x_3267 : vec2<f32> = u_xlat64;
            let x_3269 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3267.x, x_3267.y, x_3269);
            let x_3276 : vec3<f32> = txVec45;
            let x_3278 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3276.xy, x_3276.z);
            u_xlat88 = x_3278;
            let x_3280 : f32 = u_xlat23.z;
            let x_3281 : f32 = u_xlat88;
            let x_3283 : f32 = u_xlat87;
            u_xlat87 = ((x_3280 * x_3281) + x_3283);
            let x_3286 : vec4<f32> = u_xlat21;
            let x_3287 : vec2<f32> = vec2<f32>(x_3286.x, x_3286.y);
            let x_3289 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3287.x, x_3287.y, x_3289);
            let x_3296 : vec3<f32> = txVec46;
            let x_3298 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3296.xy, x_3296.z);
            u_xlat88 = x_3298;
            let x_3300 : f32 = u_xlat23.w;
            let x_3301 : f32 = u_xlat88;
            let x_3303 : f32 = u_xlat87;
            u_xlat87 = ((x_3300 * x_3301) + x_3303);
            let x_3306 : vec4<f32> = u_xlat19;
            let x_3307 : vec2<f32> = vec2<f32>(x_3306.x, x_3306.y);
            let x_3309 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3307.x, x_3307.y, x_3309);
            let x_3316 : vec3<f32> = txVec47;
            let x_3318 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3316.xy, x_3316.z);
            u_xlat88 = x_3318;
            let x_3320 : f32 = u_xlat24.x;
            let x_3321 : f32 = u_xlat88;
            let x_3323 : f32 = u_xlat87;
            u_xlat87 = ((x_3320 * x_3321) + x_3323);
            let x_3326 : vec4<f32> = u_xlat19;
            let x_3327 : vec2<f32> = vec2<f32>(x_3326.z, x_3326.w);
            let x_3329 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3327.x, x_3327.y, x_3329);
            let x_3336 : vec3<f32> = txVec48;
            let x_3338 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3336.xy, x_3336.z);
            u_xlat88 = x_3338;
            let x_3340 : f32 = u_xlat24.y;
            let x_3341 : f32 = u_xlat88;
            let x_3343 : f32 = u_xlat87;
            u_xlat87 = ((x_3340 * x_3341) + x_3343);
            let x_3346 : vec4<f32> = u_xlat20;
            let x_3347 : vec2<f32> = vec2<f32>(x_3346.x, x_3346.y);
            let x_3349 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3347.x, x_3347.y, x_3349);
            let x_3356 : vec3<f32> = txVec49;
            let x_3358 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3356.xy, x_3356.z);
            u_xlat88 = x_3358;
            let x_3360 : f32 = u_xlat24.z;
            let x_3361 : f32 = u_xlat88;
            let x_3363 : f32 = u_xlat87;
            u_xlat87 = ((x_3360 * x_3361) + x_3363);
            let x_3366 : vec4<f32> = u_xlat21;
            let x_3367 : vec2<f32> = vec2<f32>(x_3366.z, x_3366.w);
            let x_3369 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3367.x, x_3367.y, x_3369);
            let x_3376 : vec3<f32> = txVec50;
            let x_3378 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3376.xy, x_3376.z);
            u_xlat88 = x_3378;
            let x_3380 : f32 = u_xlat24.w;
            let x_3381 : f32 = u_xlat88;
            let x_3383 : f32 = u_xlat87;
            u_xlat87 = ((x_3380 * x_3381) + x_3383);
            let x_3386 : vec4<f32> = u_xlat22;
            let x_3387 : vec2<f32> = vec2<f32>(x_3386.x, x_3386.y);
            let x_3389 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3387.x, x_3387.y, x_3389);
            let x_3396 : vec3<f32> = txVec51;
            let x_3398 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3396.xy, x_3396.z);
            u_xlat88 = x_3398;
            let x_3400 : f32 = u_xlat25.x;
            let x_3401 : f32 = u_xlat88;
            let x_3403 : f32 = u_xlat87;
            u_xlat87 = ((x_3400 * x_3401) + x_3403);
            let x_3406 : vec4<f32> = u_xlat22;
            let x_3407 : vec2<f32> = vec2<f32>(x_3406.z, x_3406.w);
            let x_3409 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3407.x, x_3407.y, x_3409);
            let x_3416 : vec3<f32> = txVec52;
            let x_3418 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3416.xy, x_3416.z);
            u_xlat88 = x_3418;
            let x_3420 : f32 = u_xlat25.y;
            let x_3421 : f32 = u_xlat88;
            let x_3423 : f32 = u_xlat87;
            u_xlat87 = ((x_3420 * x_3421) + x_3423);
            let x_3426 : vec2<f32> = u_xlat40;
            let x_3428 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3426.x, x_3426.y, x_3428);
            let x_3435 : vec3<f32> = txVec53;
            let x_3437 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3435.xy, x_3435.z);
            u_xlat88 = x_3437;
            let x_3439 : f32 = u_xlat25.z;
            let x_3440 : f32 = u_xlat88;
            let x_3442 : f32 = u_xlat87;
            u_xlat87 = ((x_3439 * x_3440) + x_3442);
            let x_3445 : vec2<f32> = u_xlat72;
            let x_3447 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3445.x, x_3445.y, x_3447);
            let x_3454 : vec3<f32> = txVec54;
            let x_3456 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3454.xy, x_3454.z);
            u_xlat88 = x_3456;
            let x_3458 : f32 = u_xlat25.w;
            let x_3459 : f32 = u_xlat88;
            let x_3461 : f32 = u_xlat87;
            u_xlat87 = ((x_3458 * x_3459) + x_3461);
            let x_3464 : vec4<f32> = u_xlat17;
            let x_3465 : vec2<f32> = vec2<f32>(x_3464.x, x_3464.y);
            let x_3467 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3465.x, x_3465.y, x_3467);
            let x_3474 : vec3<f32> = txVec55;
            let x_3476 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3474.xy, x_3474.z);
            u_xlat88 = x_3476;
            let x_3478 : f32 = u_xlat13.x;
            let x_3479 : f32 = u_xlat88;
            let x_3481 : f32 = u_xlat87;
            u_xlat87 = ((x_3478 * x_3479) + x_3481);
            let x_3484 : vec4<f32> = u_xlat17;
            let x_3485 : vec2<f32> = vec2<f32>(x_3484.z, x_3484.w);
            let x_3487 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3485.x, x_3485.y, x_3487);
            let x_3494 : vec3<f32> = txVec56;
            let x_3496 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3494.xy, x_3494.z);
            u_xlat88 = x_3496;
            let x_3498 : f32 = u_xlat13.y;
            let x_3499 : f32 = u_xlat88;
            let x_3501 : f32 = u_xlat87;
            u_xlat87 = ((x_3498 * x_3499) + x_3501);
            let x_3504 : vec2<f32> = u_xlat67;
            let x_3506 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3504.x, x_3504.y, x_3506);
            let x_3513 : vec3<f32> = txVec57;
            let x_3515 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3513.xy, x_3513.z);
            u_xlat88 = x_3515;
            let x_3517 : f32 = u_xlat13.z;
            let x_3518 : f32 = u_xlat88;
            let x_3520 : f32 = u_xlat87;
            u_xlat87 = ((x_3517 * x_3518) + x_3520);
            let x_3523 : vec4<f32> = u_xlat12;
            let x_3524 : vec2<f32> = vec2<f32>(x_3523.x, x_3523.y);
            let x_3526 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3524.x, x_3524.y, x_3526);
            let x_3533 : vec3<f32> = txVec58;
            let x_3535 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3533.xy, x_3533.z);
            u_xlat88 = x_3535;
            let x_3537 : f32 = u_xlat13.w;
            let x_3538 : f32 = u_xlat88;
            let x_3540 : f32 = u_xlat87;
            u_xlat61.x = ((x_3537 * x_3538) + x_3540);
          }
        }
      } else {
        let x_3545 : vec4<f32> = u_xlat11;
        let x_3546 : vec2<f32> = vec2<f32>(x_3545.x, x_3545.y);
        let x_3548 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3546.x, x_3546.y, x_3548);
        let x_3555 : vec3<f32> = txVec59;
        let x_3557 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3555.xy, x_3555.z);
        u_xlat61.x = x_3557;
      }
      let x_3559 : i32 = u_xlati8;
      let x_3561 : f32 = x_126.x_AdditionalShadowParams[x_3559].x;
      u_xlat87 = (1.0f + -(x_3561));
      let x_3565 : f32 = u_xlat61.x;
      let x_3566 : i32 = u_xlati8;
      let x_3568 : f32 = x_126.x_AdditionalShadowParams[x_3566].x;
      let x_3570 : f32 = u_xlat87;
      u_xlat61.x = ((x_3565 * x_3568) + x_3570);
      let x_3574 : f32 = u_xlat11.z;
      u_xlatb87 = (0.0f >= x_3574);
      let x_3578 : f32 = u_xlat11.z;
      u_xlatb88 = (x_3578 >= 1.0f);
      let x_3580 : bool = u_xlatb87;
      let x_3581 : bool = u_xlatb88;
      u_xlatb87 = (x_3580 | x_3581);
      let x_3583 : bool = u_xlatb87;
      if (x_3583) {
        x_3584 = 1.0f;
      } else {
        let x_3589 : f32 = u_xlat61.x;
        x_3584 = x_3589;
      }
      let x_3590 : f32 = x_3584;
      u_xlat61.x = x_3590;
    } else {
      u_xlat61.x = 1.0f;
    }
    let x_3595 : f32 = u_xlat61.x;
    u_xlat87 = (-(x_3595) + 1.0f);
    let x_3598 : f32 = u_xlat81;
    let x_3599 : f32 = u_xlat87;
    let x_3602 : f32 = u_xlat61.x;
    u_xlat61.x = ((x_3598 * x_3599) + x_3602);
    let x_3606 : f32 = u_xlat61.x;
    let x_3608 : f32 = u_xlat9.x;
    u_xlat9.x = (x_3606 * x_3608);
    let x_3611 : vec4<f32> = u_xlat3;
    let x_3613 : vec4<f32> = u_xlat10;
    u_xlat61.x = dot(vec3<f32>(x_3611.x, x_3611.y, x_3611.z), vec3<f32>(x_3613.x, x_3613.y, x_3613.z));
    let x_3618 : f32 = u_xlat61.x;
    u_xlat61.x = clamp(x_3618, 0.0f, 1.0f);
    let x_3622 : f32 = u_xlat61.x;
    let x_3624 : f32 = u_xlat9.x;
    u_xlat9.x = (x_3622 * x_3624);
    let x_3627 : vec4<f32> = u_xlat9;
    let x_3629 : i32 = u_xlati8;
    let x_3631 : vec4<f32> = x_2141.x_AdditionalLightsColor[x_3629];
    let x_3633 : vec3<f32> = (vec3<f32>(x_3627.x, x_3627.x, x_3627.x) * vec3<f32>(x_3631.x, x_3631.y, x_3631.z));
    let x_3634 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3633.x, x_3634.y, x_3633.y, x_3633.z);
    let x_3636 : vec3<f32> = u_xlat34;
    let x_3637 : f32 = u_xlat35;
    let x_3640 : vec3<f32> = u_xlat2;
    let x_3641 : vec3<f32> = ((x_3636 * vec3<f32>(x_3637, x_3637, x_3637)) + x_3640);
    let x_3642 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3641.x, x_3641.y, x_3641.z, x_3642.w);
    let x_3644 : vec4<f32> = u_xlat8;
    let x_3646 : vec4<f32> = u_xlat8;
    u_xlat86 = dot(vec3<f32>(x_3644.x, x_3644.y, x_3644.z), vec3<f32>(x_3646.x, x_3646.y, x_3646.z));
    let x_3649 : f32 = u_xlat86;
    u_xlat86 = max(x_3649, 1.17549435e-38f);
    let x_3651 : f32 = u_xlat86;
    u_xlat86 = inverseSqrt(x_3651);
    let x_3653 : f32 = u_xlat86;
    let x_3655 : vec4<f32> = u_xlat8;
    let x_3657 : vec3<f32> = (vec3<f32>(x_3653, x_3653, x_3653) * vec3<f32>(x_3655.x, x_3655.y, x_3655.z));
    let x_3658 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3657.x, x_3657.y, x_3657.z, x_3658.w);
    let x_3660 : vec4<f32> = u_xlat3;
    let x_3662 : vec4<f32> = u_xlat8;
    u_xlat8.w = dot(vec3<f32>(x_3660.x, x_3660.y, x_3660.z), vec3<f32>(x_3662.x, x_3662.y, x_3662.z));
    let x_3667 : f32 = u_xlat8.w;
    u_xlat8.w = clamp(x_3667, 0.0f, 1.0f);
    let x_3670 : vec4<f32> = u_xlat10;
    let x_3672 : vec4<f32> = u_xlat8;
    u_xlat8.x = dot(vec3<f32>(x_3670.x, x_3670.y, x_3670.z), vec3<f32>(x_3672.x, x_3672.y, x_3672.z));
    let x_3677 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_3677, 0.0f, 1.0f);
    let x_3680 : vec4<f32> = u_xlat8;
    let x_3682 : vec4<f32> = u_xlat8;
    let x_3684 : vec2<f32> = (vec2<f32>(x_3680.x, x_3680.w) * vec2<f32>(x_3682.x, x_3682.w));
    let x_3685 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3684.x, x_3684.y, x_3685.z, x_3685.w);
    let x_3688 : f32 = u_xlat8.y;
    let x_3690 : f32 = u_xlat7.x;
    u_xlat34.x = ((x_3688 * x_3690) + 1.00001001358032226562f);
    let x_3695 : f32 = u_xlat34.x;
    let x_3697 : f32 = u_xlat34.x;
    u_xlat34.x = (x_3695 * x_3697);
    let x_3701 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_3701, 0.10000000149011611938f);
    let x_3705 : f32 = u_xlat8.x;
    let x_3707 : f32 = u_xlat34.x;
    u_xlat8.x = (x_3705 * x_3707);
    let x_3711 : f32 = u_xlat6.x;
    let x_3713 : f32 = u_xlat8.x;
    u_xlat8.x = (x_3711 * x_3713);
    let x_3716 : f32 = u_xlat83;
    let x_3718 : f32 = u_xlat8.x;
    u_xlat8.x = (x_3716 / x_3718);
    let x_3721 : vec4<f32> = u_xlat0;
    let x_3723 : vec4<f32> = u_xlat8;
    let x_3726 : vec3<f32> = u_xlat27;
    let x_3727 : vec3<f32> = ((vec3<f32>(x_3721.x, x_3721.y, x_3721.z) * vec3<f32>(x_3723.x, x_3723.x, x_3723.x)) + x_3726);
    let x_3728 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3727.x, x_3727.y, x_3727.z, x_3728.w);
    let x_3730 : vec4<f32> = u_xlat8;
    let x_3732 : vec4<f32> = u_xlat9;
    let x_3735 : vec3<f32> = u_xlat33;
    u_xlat33 = ((vec3<f32>(x_3730.x, x_3730.y, x_3730.z) * vec3<f32>(x_3732.x, x_3732.z, x_3732.w)) + x_3735);

    continuing {
      let x_3737 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3737 + bitcast<u32>(1i));
    }
  }
  let x_3739 : vec3<f32> = u_xlat32;
  let x_3740 : vec4<f32> = u_xlat4;
  let x_3743 : vec4<f32> = u_xlat5;
  let x_3745 : vec3<f32> = ((x_3739 * vec3<f32>(x_3740.x, x_3740.z, x_3740.w)) + vec3<f32>(x_3743.x, x_3743.y, x_3743.z));
  let x_3746 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3745.x, x_3745.y, x_3745.z, x_3746.w);
  let x_3748 : vec3<f32> = u_xlat33;
  let x_3749 : vec4<f32> = u_xlat0;
  let x_3751 : vec3<f32> = (x_3748 + vec3<f32>(x_3749.x, x_3749.y, x_3749.z));
  let x_3752 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3751.x, x_3751.y, x_3751.z, x_3752.w);
  let x_3754 : f32 = u_xlat78;
  let x_3755 : f32 = u_xlat78;
  u_xlat78 = (x_3754 * -(x_3755));
  let x_3758 : f32 = u_xlat78;
  u_xlat78 = exp2(x_3758);
  let x_3760 : vec4<f32> = u_xlat0;
  let x_3763 : vec4<f32> = x_28.unity_FogColor;
  let x_3766 : vec3<f32> = (vec3<f32>(x_3760.x, x_3760.y, x_3760.z) + -(vec3<f32>(x_3763.x, x_3763.y, x_3763.z)));
  let x_3767 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3766.x, x_3766.y, x_3766.z, x_3767.w);
  let x_3771 : f32 = u_xlat78;
  let x_3773 : vec4<f32> = u_xlat0;
  let x_3777 : vec4<f32> = x_28.unity_FogColor;
  let x_3779 : vec3<f32> = ((vec3<f32>(x_3771, x_3771, x_3771) * vec3<f32>(x_3773.x, x_3773.y, x_3773.z)) + vec3<f32>(x_3777.x, x_3777.y, x_3777.z));
  let x_3780 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3779.x, x_3779.y, x_3779.z, x_3780.w);
  let x_3784 : f32 = x_42.x_Surface;
  u_xlatb0 = (x_3784 == 1.0f);
  let x_3786 : bool = u_xlatb0;
  if (x_3786) {
    let x_3791 : f32 = u_xlat1.x;
    x_3787 = x_3791;
  } else {
    x_3787 = 1.0f;
  }
  let x_3793 : f32 = x_3787;
  SV_Target0.w = x_3793;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


