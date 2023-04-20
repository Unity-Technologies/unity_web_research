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

@group(0) @binding(3) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_42 : UnityPerMaterial;

var<private> u_xlatb78 : bool;

var<private> u_xlat2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat78 : f32;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_123 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu78 : u32;

var<private> u_xlati78 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat81 : f32;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat82 : f32;

var<private> u_xlat83 : f32;

var<private> u_xlatb32 : bool;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

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

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1871 : UnityPerDraw;

var<private> u_xlatu80 : u32;

var<private> u_xlatu8 : u32;

var<private> u_xlati34 : i32;

var<private> u_xlati8 : i32;

@group(1) @binding(1) var<uniform> x_2098 : AdditionalLights;

var<private> u_xlat35 : f32;

var<private> u_xlati61 : i32;

var<private> u_xlatb87 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat88 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlatb61 : bool;

@group(0) @binding(5) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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
  var x_1771 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2259 : f32;
  var x_2269 : f32;
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
  var x_3541 : f32;
  var x_3742 : f32;
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
    let x_101 : vec3<f32> = u_xlat3;
    x_96 = x_101;
  }
  let x_102 : vec3<f32> = x_96;
  u_xlat2 = x_102;
  let x_105 : vec3<f32> = vs_TEXCOORD2;
  let x_106 : vec3<f32> = vs_TEXCOORD2;
  u_xlat78 = dot(x_105, x_106);
  let x_108 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_108);
  let x_110 : f32 = u_xlat78;
  let x_112 : vec3<f32> = vs_TEXCOORD2;
  u_xlat3 = (vec3<f32>(x_110, x_110, x_110) * x_112);
  let x_115 : vec3<f32> = vs_TEXCOORD1;
  let x_125 : vec4<f32> = x_123.x_CascadeShadowSplitSpheres0;
  let x_128 : vec3<f32> = (x_115 + -(vec3<f32>(x_125.x, x_125.y, x_125.z)));
  let x_129 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_128.x, x_128.y, x_128.z, x_129.w);
  let x_132 : vec3<f32> = vs_TEXCOORD1;
  let x_134 : vec4<f32> = x_123.x_CascadeShadowSplitSpheres1;
  let x_137 : vec3<f32> = (x_132 + -(vec3<f32>(x_134.x, x_134.y, x_134.z)));
  let x_138 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_137.x, x_137.y, x_137.z, x_138.w);
  let x_141 : vec3<f32> = vs_TEXCOORD1;
  let x_144 : vec4<f32> = x_123.x_CascadeShadowSplitSpheres2;
  u_xlat6 = (x_141 + -(vec3<f32>(x_144.x, x_144.y, x_144.z)));
  let x_149 : vec3<f32> = vs_TEXCOORD1;
  let x_151 : vec4<f32> = x_123.x_CascadeShadowSplitSpheres3;
  let x_154 : vec3<f32> = (x_149 + -(vec3<f32>(x_151.x, x_151.y, x_151.z)));
  let x_155 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_154.x, x_154.y, x_154.z, x_155.w);
  let x_157 : vec4<f32> = u_xlat4;
  let x_159 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_157.x, x_157.y, x_157.z), vec3<f32>(x_159.x, x_159.y, x_159.z));
  let x_163 : vec4<f32> = u_xlat5;
  let x_165 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_163.x, x_163.y, x_163.z), vec3<f32>(x_165.x, x_165.y, x_165.z));
  let x_169 : vec3<f32> = u_xlat6;
  let x_170 : vec3<f32> = u_xlat6;
  u_xlat4.z = dot(x_169, x_170);
  let x_173 : vec4<f32> = u_xlat7;
  let x_175 : vec4<f32> = u_xlat7;
  u_xlat4.w = dot(vec3<f32>(x_173.x, x_173.y, x_173.z), vec3<f32>(x_175.x, x_175.y, x_175.z));
  let x_182 : vec4<f32> = u_xlat4;
  let x_185 : vec4<f32> = x_123.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_182 < x_185);
  let x_188 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_188);
  let x_193 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_193);
  let x_197 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_197);
  let x_201 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_201);
  let x_205 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_205);
  let x_211 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_211);
  let x_215 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_215);
  let x_218 : vec4<f32> = u_xlat4;
  let x_220 : vec4<f32> = u_xlat5;
  let x_222 : vec3<f32> = (vec3<f32>(x_218.x, x_218.y, x_218.z) + vec3<f32>(x_220.y, x_220.z, x_220.w));
  let x_223 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_222.x, x_222.y, x_222.z, x_223.w);
  let x_225 : vec4<f32> = u_xlat4;
  let x_228 : vec3<f32> = max(vec3<f32>(x_225.x, x_225.y, x_225.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_229 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_229.x, x_228.x, x_228.y, x_228.z);
  let x_231 : vec4<f32> = u_xlat5;
  u_xlat78 = dot(x_231, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_237 : f32 = u_xlat78;
  u_xlat78 = (-(x_237) + 4.0f);
  let x_242 : f32 = u_xlat78;
  u_xlatu78 = u32(x_242);
  let x_246 : u32 = u_xlatu78;
  u_xlati78 = (bitcast<i32>(x_246) << bitcast<u32>(2i));
  let x_249 : vec3<f32> = vs_TEXCOORD1;
  let x_251 : i32 = u_xlati78;
  let x_254 : i32 = u_xlati78;
  let x_258 : vec4<f32> = x_123.x_MainLightWorldToShadow[((x_251 + 1i) / 4i)][((x_254 + 1i) % 4i)];
  let x_260 : vec3<f32> = (vec3<f32>(x_249.y, x_249.y, x_249.y) * vec3<f32>(x_258.x, x_258.y, x_258.z));
  let x_261 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
  let x_263 : i32 = u_xlati78;
  let x_265 : i32 = u_xlati78;
  let x_268 : vec4<f32> = x_123.x_MainLightWorldToShadow[(x_263 / 4i)][(x_265 % 4i)];
  let x_270 : vec3<f32> = vs_TEXCOORD1;
  let x_273 : vec4<f32> = u_xlat4;
  let x_275 : vec3<f32> = ((vec3<f32>(x_268.x, x_268.y, x_268.z) * vec3<f32>(x_270.x, x_270.x, x_270.x)) + vec3<f32>(x_273.x, x_273.y, x_273.z));
  let x_276 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
  let x_278 : i32 = u_xlati78;
  let x_281 : i32 = u_xlati78;
  let x_285 : vec4<f32> = x_123.x_MainLightWorldToShadow[((x_278 + 2i) / 4i)][((x_281 + 2i) % 4i)];
  let x_287 : vec3<f32> = vs_TEXCOORD1;
  let x_290 : vec4<f32> = u_xlat4;
  let x_292 : vec3<f32> = ((vec3<f32>(x_285.x, x_285.y, x_285.z) * vec3<f32>(x_287.z, x_287.z, x_287.z)) + vec3<f32>(x_290.x, x_290.y, x_290.z));
  let x_293 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_292.x, x_292.y, x_292.z, x_293.w);
  let x_295 : vec4<f32> = u_xlat4;
  let x_297 : i32 = u_xlati78;
  let x_300 : i32 = u_xlati78;
  let x_304 : vec4<f32> = x_123.x_MainLightWorldToShadow[((x_297 + 3i) / 4i)][((x_300 + 3i) % 4i)];
  let x_306 : vec3<f32> = (vec3<f32>(x_295.x, x_295.y, x_295.z) + vec3<f32>(x_304.x, x_304.y, x_304.z));
  let x_307 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_306.x, x_306.y, x_306.z, x_307.w);
  let x_311 : f32 = vs_TEXCOORD1.y;
  let x_313 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat78 = (x_311 * x_313);
  let x_316 : f32 = x_28.unity_MatrixV[0i].z;
  let x_318 : f32 = vs_TEXCOORD1.x;
  let x_320 : f32 = u_xlat78;
  u_xlat78 = ((x_316 * x_318) + x_320);
  let x_323 : f32 = x_28.unity_MatrixV[2i].z;
  let x_325 : f32 = vs_TEXCOORD1.z;
  let x_327 : f32 = u_xlat78;
  u_xlat78 = ((x_323 * x_325) + x_327);
  let x_329 : f32 = u_xlat78;
  let x_331 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat78 = (x_329 + x_331);
  let x_333 : f32 = u_xlat78;
  let x_336 : f32 = x_28.x_ProjectionParams.y;
  u_xlat78 = (-(x_333) + -(x_336));
  let x_339 : f32 = u_xlat78;
  u_xlat78 = max(x_339, 0.0f);
  let x_341 : f32 = u_xlat78;
  let x_344 : f32 = x_28.unity_FogParams.x;
  u_xlat78 = (x_341 * x_344);
  let x_352 : vec2<f32> = vs_TEXCOORD8;
  let x_354 : f32 = x_28.x_GlobalMipBias.x;
  let x_355 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_352, x_354);
  u_xlat5 = x_355;
  let x_360 : vec2<f32> = vs_TEXCOORD8;
  let x_362 : f32 = x_28.x_GlobalMipBias.x;
  let x_363 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_360, x_362);
  u_xlat6 = vec3<f32>(x_363.x, x_363.y, x_363.z);
  let x_365 : vec4<f32> = u_xlat5;
  let x_369 : vec3<f32> = (vec3<f32>(x_365.x, x_365.y, x_365.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_370 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_369.x, x_369.y, x_369.z, x_370.w);
  let x_372 : vec3<f32> = u_xlat3;
  let x_373 : vec4<f32> = u_xlat5;
  u_xlat80 = dot(x_372, vec3<f32>(x_373.x, x_373.y, x_373.z));
  let x_376 : f32 = u_xlat80;
  u_xlat80 = (x_376 + 0.5f);
  let x_379 : f32 = u_xlat80;
  let x_381 : vec3<f32> = u_xlat6;
  let x_382 : vec3<f32> = (vec3<f32>(x_379, x_379, x_379) * x_381);
  let x_383 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_382.x, x_382.y, x_382.z, x_383.w);
  let x_386 : f32 = u_xlat5.w;
  u_xlat80 = max(x_386, 0.00009999999747378752f);
  let x_389 : vec4<f32> = u_xlat5;
  let x_391 : f32 = u_xlat80;
  let x_393 : vec3<f32> = (vec3<f32>(x_389.x, x_389.y, x_389.z) / vec3<f32>(x_391, x_391, x_391));
  let x_394 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_393.x, x_393.y, x_393.z, x_394.w);
  let x_397 : f32 = x_42.x_Metallic;
  u_xlat80 = ((-(x_397) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_403 : f32 = u_xlat80;
  let x_406 : f32 = x_42.x_Smoothness;
  u_xlat81 = (-(x_403) + x_406);
  let x_409 : vec4<f32> = u_xlat1;
  let x_411 : f32 = u_xlat80;
  u_xlat27 = (vec3<f32>(x_409.y, x_409.z, x_409.w) * vec3<f32>(x_411, x_411, x_411));
  let x_414 : vec4<f32> = u_xlat0;
  let x_417 : vec4<f32> = x_42.x_BaseColor;
  let x_422 : vec3<f32> = ((vec3<f32>(x_414.x, x_414.y, x_414.z) * vec3<f32>(x_417.x, x_417.y, x_417.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_423 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_422.x, x_422.y, x_422.z, x_423.w);
  let x_426 : f32 = x_42.x_Metallic;
  let x_428 : f32 = x_42.x_Metallic;
  let x_430 : f32 = x_42.x_Metallic;
  let x_431 : vec3<f32> = vec3<f32>(x_426, x_428, x_430);
  let x_436 : vec4<f32> = u_xlat0;
  let x_441 : vec3<f32> = ((vec3<f32>(x_431.x, x_431.y, x_431.z) * vec3<f32>(x_436.x, x_436.y, x_436.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_442 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
  let x_445 : f32 = x_42.x_Smoothness;
  u_xlat80 = (-(x_445) + 1.0f);
  let x_449 : f32 = u_xlat80;
  let x_450 : f32 = u_xlat80;
  u_xlat82 = (x_449 * x_450);
  let x_452 : f32 = u_xlat82;
  u_xlat82 = max(x_452, 0.0078125f);
  let x_456 : f32 = u_xlat82;
  let x_457 : f32 = u_xlat82;
  u_xlat83 = (x_456 * x_457);
  let x_459 : f32 = u_xlat81;
  u_xlat81 = (x_459 + 1.0f);
  let x_461 : f32 = u_xlat81;
  u_xlat81 = clamp(x_461, 0.0f, 1.0f);
  let x_463 : f32 = u_xlat82;
  u_xlat6.x = ((x_463 * 4.0f) + 2.0f);
  let x_470 : f32 = x_123.x_MainLightShadowParams.y;
  u_xlatb32 = (0.0f < x_470);
  let x_472 : bool = u_xlatb32;
  if (x_472) {
    let x_476 : f32 = x_123.x_MainLightShadowParams.y;
    u_xlatb32 = (x_476 == 1.0f);
    let x_478 : bool = u_xlatb32;
    if (x_478) {
      let x_481 : vec4<f32> = u_xlat4;
      let x_484 : vec4<f32> = x_123.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_481.x, x_481.y, x_481.x, x_481.y) + x_484);
      let x_487 : vec4<f32> = u_xlat7;
      let x_488 : vec2<f32> = vec2<f32>(x_487.x, x_487.y);
      let x_490 : f32 = u_xlat4.z;
      txVec0 = vec3<f32>(x_488.x, x_488.y, x_490);
      let x_503 : vec3<f32> = txVec0;
      let x_505 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_503.xy, x_503.z);
      u_xlat8.x = x_505;
      let x_508 : vec4<f32> = u_xlat7;
      let x_509 : vec2<f32> = vec2<f32>(x_508.z, x_508.w);
      let x_511 : f32 = u_xlat4.z;
      txVec1 = vec3<f32>(x_509.x, x_509.y, x_511);
      let x_518 : vec3<f32> = txVec1;
      let x_520 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_518.xy, x_518.z);
      u_xlat8.y = x_520;
      let x_522 : vec4<f32> = u_xlat4;
      let x_525 : vec4<f32> = x_123.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_522.x, x_522.y, x_522.x, x_522.y) + x_525);
      let x_528 : vec4<f32> = u_xlat7;
      let x_529 : vec2<f32> = vec2<f32>(x_528.x, x_528.y);
      let x_531 : f32 = u_xlat4.z;
      txVec2 = vec3<f32>(x_529.x, x_529.y, x_531);
      let x_538 : vec3<f32> = txVec2;
      let x_540 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_538.xy, x_538.z);
      u_xlat8.z = x_540;
      let x_543 : vec4<f32> = u_xlat7;
      let x_544 : vec2<f32> = vec2<f32>(x_543.z, x_543.w);
      let x_546 : f32 = u_xlat4.z;
      txVec3 = vec3<f32>(x_544.x, x_544.y, x_546);
      let x_553 : vec3<f32> = txVec3;
      let x_555 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_553.xy, x_553.z);
      u_xlat8.w = x_555;
      let x_558 : vec4<f32> = u_xlat8;
      u_xlat32.x = dot(x_558, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_566 : f32 = x_123.x_MainLightShadowParams.y;
      u_xlatb58 = (x_566 == 2.0f);
      let x_568 : bool = u_xlatb58;
      if (x_568) {
        let x_573 : vec4<f32> = u_xlat4;
        let x_576 : vec4<f32> = x_123.x_MainLightShadowmapSize;
        u_xlat58 = ((vec2<f32>(x_573.x, x_573.y) * vec2<f32>(x_576.z, x_576.w)) + vec2<f32>(0.5f, 0.5f));
        let x_581 : vec2<f32> = u_xlat58;
        u_xlat58 = floor(x_581);
        let x_583 : vec4<f32> = u_xlat4;
        let x_586 : vec4<f32> = x_123.x_MainLightShadowmapSize;
        let x_589 : vec2<f32> = u_xlat58;
        let x_591 : vec2<f32> = ((vec2<f32>(x_583.x, x_583.y) * vec2<f32>(x_586.z, x_586.w)) + -(x_589));
        let x_592 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_591.x, x_591.y, x_592.z, x_592.w);
        let x_594 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_594.x, x_594.x, x_594.y, x_594.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_599 : vec4<f32> = u_xlat8;
        let x_601 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_599.x, x_599.x, x_599.z, x_599.z) * vec4<f32>(x_601.x, x_601.x, x_601.z, x_601.z));
        let x_605 : vec4<f32> = u_xlat9;
        u_xlat59 = (vec2<f32>(x_605.y, x_605.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_610 : vec4<f32> = u_xlat9;
        let x_613 : vec4<f32> = u_xlat7;
        let x_616 : vec2<f32> = ((vec2<f32>(x_610.x, x_610.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_613.x, x_613.y)));
        let x_617 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_616.x, x_617.y, x_616.y, x_617.w);
        let x_619 : vec4<f32> = u_xlat7;
        let x_623 : vec2<f32> = (-(vec2<f32>(x_619.x, x_619.y)) + vec2<f32>(1.0f, 1.0f));
        let x_624 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_623.x, x_623.y, x_624.z, x_624.w);
        let x_627 : vec4<f32> = u_xlat7;
        u_xlat61 = min(vec2<f32>(x_627.x, x_627.y), vec2<f32>(0.0f, 0.0f));
        let x_631 : vec2<f32> = u_xlat61;
        let x_633 : vec2<f32> = u_xlat61;
        let x_635 : vec4<f32> = u_xlat9;
        u_xlat61 = ((-(x_631) * x_633) + vec2<f32>(x_635.x, x_635.y));
        let x_638 : vec4<f32> = u_xlat7;
        let x_640 : vec2<f32> = max(vec2<f32>(x_638.x, x_638.y), vec2<f32>(0.0f, 0.0f));
        let x_641 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_640.x, x_640.y, x_641.z, x_641.w);
        let x_643 : vec4<f32> = u_xlat7;
        let x_646 : vec4<f32> = u_xlat7;
        let x_649 : vec4<f32> = u_xlat8;
        let x_651 : vec2<f32> = ((-(vec2<f32>(x_643.x, x_643.y)) * vec2<f32>(x_646.x, x_646.y)) + vec2<f32>(x_649.y, x_649.w));
        let x_652 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_651.x, x_651.y, x_652.z, x_652.w);
        let x_654 : vec2<f32> = u_xlat61;
        u_xlat61 = (x_654 + vec2<f32>(1.0f, 1.0f));
        let x_656 : vec4<f32> = u_xlat7;
        let x_658 : vec2<f32> = (vec2<f32>(x_656.x, x_656.y) + vec2<f32>(1.0f, 1.0f));
        let x_659 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_658.x, x_658.y, x_659.z, x_659.w);
        let x_662 : vec4<f32> = u_xlat8;
        let x_666 : vec2<f32> = (vec2<f32>(x_662.x, x_662.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_667 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_666.x, x_666.y, x_667.z, x_667.w);
        let x_670 : vec4<f32> = u_xlat9;
        let x_672 : vec2<f32> = (vec2<f32>(x_670.x, x_670.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_673 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_672.x, x_672.y, x_673.z, x_673.w);
        let x_675 : vec2<f32> = u_xlat61;
        let x_676 : vec2<f32> = (x_675 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_677 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_676.x, x_676.y, x_677.z, x_677.w);
        let x_680 : vec4<f32> = u_xlat7;
        let x_682 : vec2<f32> = (vec2<f32>(x_680.x, x_680.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_683 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_682.x, x_682.y, x_683.z, x_683.w);
        let x_685 : vec4<f32> = u_xlat8;
        let x_687 : vec2<f32> = (vec2<f32>(x_685.y, x_685.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_688 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_687.x, x_687.y, x_688.z, x_688.w);
        let x_691 : f32 = u_xlat9.x;
        u_xlat10.z = x_691;
        let x_694 : f32 = u_xlat7.x;
        u_xlat10.w = x_694;
        let x_697 : f32 = u_xlat12.x;
        u_xlat11.z = x_697;
        let x_700 : f32 = u_xlat59.x;
        u_xlat11.w = x_700;
        let x_702 : vec4<f32> = u_xlat10;
        let x_704 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_702.z, x_702.w, x_702.x, x_702.z) + vec4<f32>(x_704.z, x_704.w, x_704.x, x_704.z));
        let x_708 : f32 = u_xlat10.y;
        u_xlat9.z = x_708;
        let x_711 : f32 = u_xlat7.y;
        u_xlat9.w = x_711;
        let x_714 : f32 = u_xlat11.y;
        u_xlat12.z = x_714;
        let x_717 : f32 = u_xlat59.y;
        u_xlat12.w = x_717;
        let x_719 : vec4<f32> = u_xlat9;
        let x_721 : vec4<f32> = u_xlat12;
        let x_723 : vec3<f32> = (vec3<f32>(x_719.z, x_719.y, x_719.w) + vec3<f32>(x_721.z, x_721.y, x_721.w));
        let x_724 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_723.x, x_723.y, x_723.z, x_724.w);
        let x_726 : vec4<f32> = u_xlat11;
        let x_728 : vec4<f32> = u_xlat8;
        let x_730 : vec3<f32> = (vec3<f32>(x_726.x, x_726.z, x_726.w) / vec3<f32>(x_728.z, x_728.w, x_728.y));
        let x_731 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_730.x, x_730.y, x_730.z, x_731.w);
        let x_733 : vec4<f32> = u_xlat9;
        let x_738 : vec3<f32> = (vec3<f32>(x_733.x, x_733.y, x_733.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_739 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_738.x, x_738.y, x_738.z, x_739.w);
        let x_741 : vec4<f32> = u_xlat12;
        let x_743 : vec4<f32> = u_xlat7;
        let x_745 : vec3<f32> = (vec3<f32>(x_741.z, x_741.y, x_741.w) / vec3<f32>(x_743.x, x_743.y, x_743.z));
        let x_746 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_745.x, x_745.y, x_745.z, x_746.w);
        let x_748 : vec4<f32> = u_xlat10;
        let x_750 : vec3<f32> = (vec3<f32>(x_748.x, x_748.y, x_748.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_751 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_750.x, x_750.y, x_750.z, x_751.w);
        let x_753 : vec4<f32> = u_xlat9;
        let x_756 : vec4<f32> = x_123.x_MainLightShadowmapSize;
        let x_758 : vec3<f32> = (vec3<f32>(x_753.y, x_753.x, x_753.z) * vec3<f32>(x_756.x, x_756.x, x_756.x));
        let x_759 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_758.x, x_758.y, x_758.z, x_759.w);
        let x_761 : vec4<f32> = u_xlat10;
        let x_764 : vec4<f32> = x_123.x_MainLightShadowmapSize;
        let x_766 : vec3<f32> = (vec3<f32>(x_761.x, x_761.y, x_761.z) * vec3<f32>(x_764.y, x_764.y, x_764.y));
        let x_767 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_766.x, x_766.y, x_766.z, x_767.w);
        let x_770 : f32 = u_xlat10.x;
        u_xlat9.w = x_770;
        let x_772 : vec2<f32> = u_xlat58;
        let x_775 : vec4<f32> = x_123.x_MainLightShadowmapSize;
        let x_778 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_772.x, x_772.y, x_772.x, x_772.y) * vec4<f32>(x_775.x, x_775.y, x_775.x, x_775.y)) + vec4<f32>(x_778.y, x_778.w, x_778.x, x_778.w));
        let x_781 : vec2<f32> = u_xlat58;
        let x_783 : vec4<f32> = x_123.x_MainLightShadowmapSize;
        let x_786 : vec4<f32> = u_xlat9;
        let x_788 : vec2<f32> = ((x_781 * vec2<f32>(x_783.x, x_783.y)) + vec2<f32>(x_786.z, x_786.w));
        let x_789 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_788.x, x_788.y, x_789.z, x_789.w);
        let x_792 : f32 = u_xlat9.y;
        u_xlat10.w = x_792;
        let x_794 : vec4<f32> = u_xlat10;
        let x_795 : vec2<f32> = vec2<f32>(x_794.y, x_794.z);
        let x_796 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_796.x, x_795.x, x_796.z, x_795.y);
        let x_799 : vec2<f32> = u_xlat58;
        let x_802 : vec4<f32> = x_123.x_MainLightShadowmapSize;
        let x_805 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_799.x, x_799.y, x_799.x, x_799.y) * vec4<f32>(x_802.x, x_802.y, x_802.x, x_802.y)) + vec4<f32>(x_805.x, x_805.y, x_805.z, x_805.y));
        let x_808 : vec2<f32> = u_xlat58;
        let x_811 : vec4<f32> = x_123.x_MainLightShadowmapSize;
        let x_814 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_808.x, x_808.y, x_808.x, x_808.y) * vec4<f32>(x_811.x, x_811.y, x_811.x, x_811.y)) + vec4<f32>(x_814.w, x_814.y, x_814.w, x_814.z));
        let x_817 : vec2<f32> = u_xlat58;
        let x_820 : vec4<f32> = x_123.x_MainLightShadowmapSize;
        let x_823 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_817.x, x_817.y, x_817.x, x_817.y) * vec4<f32>(x_820.x, x_820.y, x_820.x, x_820.y)) + vec4<f32>(x_823.x, x_823.w, x_823.z, x_823.w));
        let x_827 : vec4<f32> = u_xlat7;
        let x_829 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_827.x, x_827.x, x_827.x, x_827.y) * vec4<f32>(x_829.z, x_829.w, x_829.y, x_829.z));
        let x_833 : vec4<f32> = u_xlat7;
        let x_835 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_833.y, x_833.y, x_833.z, x_833.z) * x_835);
        let x_838 : f32 = u_xlat7.z;
        let x_840 : f32 = u_xlat8.y;
        u_xlat58.x = (x_838 * x_840);
        let x_844 : vec4<f32> = u_xlat11;
        let x_845 : vec2<f32> = vec2<f32>(x_844.x, x_844.y);
        let x_847 : f32 = u_xlat4.z;
        txVec4 = vec3<f32>(x_845.x, x_845.y, x_847);
        let x_855 : vec3<f32> = txVec4;
        let x_857 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_855.xy, x_855.z);
        u_xlat84 = x_857;
        let x_859 : vec4<f32> = u_xlat11;
        let x_860 : vec2<f32> = vec2<f32>(x_859.z, x_859.w);
        let x_862 : f32 = u_xlat4.z;
        txVec5 = vec3<f32>(x_860.x, x_860.y, x_862);
        let x_869 : vec3<f32> = txVec5;
        let x_871 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_869.xy, x_869.z);
        u_xlat7.x = x_871;
        let x_874 : f32 = u_xlat7.x;
        let x_876 : f32 = u_xlat14.y;
        u_xlat7.x = (x_874 * x_876);
        let x_880 : f32 = u_xlat14.x;
        let x_881 : f32 = u_xlat84;
        let x_884 : f32 = u_xlat7.x;
        u_xlat84 = ((x_880 * x_881) + x_884);
        let x_887 : vec4<f32> = u_xlat12;
        let x_888 : vec2<f32> = vec2<f32>(x_887.x, x_887.y);
        let x_890 : f32 = u_xlat4.z;
        txVec6 = vec3<f32>(x_888.x, x_888.y, x_890);
        let x_897 : vec3<f32> = txVec6;
        let x_899 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_897.xy, x_897.z);
        u_xlat7.x = x_899;
        let x_902 : f32 = u_xlat14.z;
        let x_904 : f32 = u_xlat7.x;
        let x_906 : f32 = u_xlat84;
        u_xlat84 = ((x_902 * x_904) + x_906);
        let x_909 : vec4<f32> = u_xlat10;
        let x_910 : vec2<f32> = vec2<f32>(x_909.x, x_909.y);
        let x_912 : f32 = u_xlat4.z;
        txVec7 = vec3<f32>(x_910.x, x_910.y, x_912);
        let x_919 : vec3<f32> = txVec7;
        let x_921 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_919.xy, x_919.z);
        u_xlat7.x = x_921;
        let x_924 : f32 = u_xlat14.w;
        let x_926 : f32 = u_xlat7.x;
        let x_928 : f32 = u_xlat84;
        u_xlat84 = ((x_924 * x_926) + x_928);
        let x_931 : vec4<f32> = u_xlat13;
        let x_932 : vec2<f32> = vec2<f32>(x_931.x, x_931.y);
        let x_934 : f32 = u_xlat4.z;
        txVec8 = vec3<f32>(x_932.x, x_932.y, x_934);
        let x_941 : vec3<f32> = txVec8;
        let x_943 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_941.xy, x_941.z);
        u_xlat7.x = x_943;
        let x_946 : f32 = u_xlat15.x;
        let x_948 : f32 = u_xlat7.x;
        let x_950 : f32 = u_xlat84;
        u_xlat84 = ((x_946 * x_948) + x_950);
        let x_953 : vec4<f32> = u_xlat13;
        let x_954 : vec2<f32> = vec2<f32>(x_953.z, x_953.w);
        let x_956 : f32 = u_xlat4.z;
        txVec9 = vec3<f32>(x_954.x, x_954.y, x_956);
        let x_963 : vec3<f32> = txVec9;
        let x_965 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_963.xy, x_963.z);
        u_xlat7.x = x_965;
        let x_968 : f32 = u_xlat15.y;
        let x_970 : f32 = u_xlat7.x;
        let x_972 : f32 = u_xlat84;
        u_xlat84 = ((x_968 * x_970) + x_972);
        let x_975 : vec4<f32> = u_xlat10;
        let x_976 : vec2<f32> = vec2<f32>(x_975.z, x_975.w);
        let x_978 : f32 = u_xlat4.z;
        txVec10 = vec3<f32>(x_976.x, x_976.y, x_978);
        let x_985 : vec3<f32> = txVec10;
        let x_987 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_985.xy, x_985.z);
        u_xlat7.x = x_987;
        let x_990 : f32 = u_xlat15.z;
        let x_992 : f32 = u_xlat7.x;
        let x_994 : f32 = u_xlat84;
        u_xlat84 = ((x_990 * x_992) + x_994);
        let x_997 : vec4<f32> = u_xlat9;
        let x_998 : vec2<f32> = vec2<f32>(x_997.x, x_997.y);
        let x_1000 : f32 = u_xlat4.z;
        txVec11 = vec3<f32>(x_998.x, x_998.y, x_1000);
        let x_1007 : vec3<f32> = txVec11;
        let x_1009 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1007.xy, x_1007.z);
        u_xlat7.x = x_1009;
        let x_1012 : f32 = u_xlat15.w;
        let x_1014 : f32 = u_xlat7.x;
        let x_1016 : f32 = u_xlat84;
        u_xlat84 = ((x_1012 * x_1014) + x_1016);
        let x_1019 : vec4<f32> = u_xlat9;
        let x_1020 : vec2<f32> = vec2<f32>(x_1019.z, x_1019.w);
        let x_1022 : f32 = u_xlat4.z;
        txVec12 = vec3<f32>(x_1020.x, x_1020.y, x_1022);
        let x_1029 : vec3<f32> = txVec12;
        let x_1031 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1029.xy, x_1029.z);
        u_xlat7.x = x_1031;
        let x_1034 : f32 = u_xlat58.x;
        let x_1036 : f32 = u_xlat7.x;
        let x_1038 : f32 = u_xlat84;
        u_xlat32.x = ((x_1034 * x_1036) + x_1038);
      } else {
        let x_1042 : vec4<f32> = u_xlat4;
        let x_1045 : vec4<f32> = x_123.x_MainLightShadowmapSize;
        u_xlat58 = ((vec2<f32>(x_1042.x, x_1042.y) * vec2<f32>(x_1045.z, x_1045.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1049 : vec2<f32> = u_xlat58;
        u_xlat58 = floor(x_1049);
        let x_1051 : vec4<f32> = u_xlat4;
        let x_1054 : vec4<f32> = x_123.x_MainLightShadowmapSize;
        let x_1057 : vec2<f32> = u_xlat58;
        let x_1059 : vec2<f32> = ((vec2<f32>(x_1051.x, x_1051.y) * vec2<f32>(x_1054.z, x_1054.w)) + -(x_1057));
        let x_1060 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1059.x, x_1059.y, x_1060.z, x_1060.w);
        let x_1062 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1062.x, x_1062.x, x_1062.y, x_1062.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1065 : vec4<f32> = u_xlat8;
        let x_1067 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1065.x, x_1065.x, x_1065.z, x_1065.z) * vec4<f32>(x_1067.x, x_1067.x, x_1067.z, x_1067.z));
        let x_1070 : vec4<f32> = u_xlat9;
        let x_1074 : vec2<f32> = (vec2<f32>(x_1070.y, x_1070.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1075 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1075.x, x_1074.x, x_1075.z, x_1074.y);
        let x_1077 : vec4<f32> = u_xlat9;
        let x_1080 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1077.x, x_1077.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1080.x, x_1080.y)));
        let x_1084 : vec4<f32> = u_xlat7;
        let x_1087 : vec2<f32> = (-(vec2<f32>(x_1084.x, x_1084.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1088 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1087.x, x_1088.y, x_1087.y, x_1088.w);
        let x_1090 : vec4<f32> = u_xlat7;
        let x_1092 : vec2<f32> = min(vec2<f32>(x_1090.x, x_1090.y), vec2<f32>(0.0f, 0.0f));
        let x_1093 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1092.x, x_1092.y, x_1093.z, x_1093.w);
        let x_1095 : vec4<f32> = u_xlat9;
        let x_1098 : vec4<f32> = u_xlat9;
        let x_1101 : vec4<f32> = u_xlat8;
        let x_1103 : vec2<f32> = ((-(vec2<f32>(x_1095.x, x_1095.y)) * vec2<f32>(x_1098.x, x_1098.y)) + vec2<f32>(x_1101.x, x_1101.z));
        let x_1104 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1103.x, x_1104.y, x_1103.y, x_1104.w);
        let x_1106 : vec4<f32> = u_xlat7;
        let x_1108 : vec2<f32> = max(vec2<f32>(x_1106.x, x_1106.y), vec2<f32>(0.0f, 0.0f));
        let x_1109 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1108.x, x_1108.y, x_1109.z, x_1109.w);
        let x_1111 : vec4<f32> = u_xlat9;
        let x_1114 : vec4<f32> = u_xlat9;
        let x_1117 : vec4<f32> = u_xlat8;
        let x_1119 : vec2<f32> = ((-(vec2<f32>(x_1111.x, x_1111.y)) * vec2<f32>(x_1114.x, x_1114.y)) + vec2<f32>(x_1117.y, x_1117.w));
        let x_1120 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1120.x, x_1119.x, x_1120.z, x_1119.y);
        let x_1122 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1122 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1126 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1126 * 0.08163200318813323975f);
        let x_1130 : vec2<f32> = u_xlat59;
        let x_1133 : vec2<f32> = (vec2<f32>(x_1130.y, x_1130.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1134 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1133.x, x_1133.y, x_1134.z, x_1134.w);
        let x_1136 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_1136.x, x_1136.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1140 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1140 * 0.08163200318813323975f);
        let x_1144 : f32 = u_xlat11.y;
        u_xlat9.x = x_1144;
        let x_1146 : vec4<f32> = u_xlat7;
        let x_1153 : vec2<f32> = ((vec2<f32>(x_1146.x, x_1146.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1154 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1154.x, x_1153.x, x_1154.z, x_1153.y);
        let x_1156 : vec4<f32> = u_xlat7;
        let x_1160 : vec2<f32> = ((vec2<f32>(x_1156.x, x_1156.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1161 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1160.x, x_1161.y, x_1160.y, x_1161.w);
        let x_1164 : f32 = u_xlat59.x;
        u_xlat8.y = x_1164;
        let x_1167 : f32 = u_xlat10.y;
        u_xlat8.w = x_1167;
        let x_1169 : vec4<f32> = u_xlat8;
        let x_1170 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1169 + x_1170);
        let x_1172 : vec4<f32> = u_xlat7;
        let x_1175 : vec2<f32> = ((vec2<f32>(x_1172.y, x_1172.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1176 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1176.x, x_1175.x, x_1176.z, x_1175.y);
        let x_1178 : vec4<f32> = u_xlat7;
        let x_1181 : vec2<f32> = ((vec2<f32>(x_1178.y, x_1178.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1182 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1181.x, x_1182.y, x_1181.y, x_1182.w);
        let x_1185 : f32 = u_xlat59.y;
        u_xlat10.y = x_1185;
        let x_1187 : vec4<f32> = u_xlat10;
        let x_1188 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1187 + x_1188);
        let x_1190 : vec4<f32> = u_xlat8;
        let x_1191 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1190 / x_1191);
        let x_1193 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1193 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1199 : vec4<f32> = u_xlat10;
        let x_1200 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1199 / x_1200);
        let x_1202 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1202 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1204 : vec4<f32> = u_xlat8;
        let x_1207 : vec4<f32> = x_123.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1204.w, x_1204.x, x_1204.y, x_1204.z) * vec4<f32>(x_1207.x, x_1207.x, x_1207.x, x_1207.x));
        let x_1210 : vec4<f32> = u_xlat10;
        let x_1213 : vec4<f32> = x_123.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1210.x, x_1210.w, x_1210.y, x_1210.z) * vec4<f32>(x_1213.y, x_1213.y, x_1213.y, x_1213.y));
        let x_1216 : vec4<f32> = u_xlat8;
        let x_1217 : vec3<f32> = vec3<f32>(x_1216.y, x_1216.z, x_1216.w);
        let x_1218 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1217.x, x_1218.y, x_1217.y, x_1217.z);
        let x_1221 : f32 = u_xlat10.x;
        u_xlat11.y = x_1221;
        let x_1223 : vec2<f32> = u_xlat58;
        let x_1226 : vec4<f32> = x_123.x_MainLightShadowmapSize;
        let x_1229 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1223.x, x_1223.y, x_1223.x, x_1223.y) * vec4<f32>(x_1226.x, x_1226.y, x_1226.x, x_1226.y)) + vec4<f32>(x_1229.x, x_1229.y, x_1229.z, x_1229.y));
        let x_1232 : vec2<f32> = u_xlat58;
        let x_1234 : vec4<f32> = x_123.x_MainLightShadowmapSize;
        let x_1237 : vec4<f32> = u_xlat11;
        let x_1239 : vec2<f32> = ((x_1232 * vec2<f32>(x_1234.x, x_1234.y)) + vec2<f32>(x_1237.w, x_1237.y));
        let x_1240 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1239.x, x_1239.y, x_1240.z, x_1240.w);
        let x_1243 : f32 = u_xlat11.y;
        u_xlat8.y = x_1243;
        let x_1246 : f32 = u_xlat10.z;
        u_xlat11.y = x_1246;
        let x_1248 : vec2<f32> = u_xlat58;
        let x_1251 : vec4<f32> = x_123.x_MainLightShadowmapSize;
        let x_1254 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1248.x, x_1248.y, x_1248.x, x_1248.y) * vec4<f32>(x_1251.x, x_1251.y, x_1251.x, x_1251.y)) + vec4<f32>(x_1254.x, x_1254.y, x_1254.z, x_1254.y));
        let x_1258 : vec2<f32> = u_xlat58;
        let x_1260 : vec4<f32> = x_123.x_MainLightShadowmapSize;
        let x_1263 : vec4<f32> = u_xlat11;
        u_xlat65 = ((x_1258 * vec2<f32>(x_1260.x, x_1260.y)) + vec2<f32>(x_1263.w, x_1263.y));
        let x_1267 : f32 = u_xlat11.y;
        u_xlat8.z = x_1267;
        let x_1269 : vec2<f32> = u_xlat58;
        let x_1272 : vec4<f32> = x_123.x_MainLightShadowmapSize;
        let x_1275 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1269.x, x_1269.y, x_1269.x, x_1269.y) * vec4<f32>(x_1272.x, x_1272.y, x_1272.x, x_1272.y)) + vec4<f32>(x_1275.x, x_1275.y, x_1275.x, x_1275.z));
        let x_1279 : f32 = u_xlat10.w;
        u_xlat11.y = x_1279;
        let x_1282 : vec2<f32> = u_xlat58;
        let x_1285 : vec4<f32> = x_123.x_MainLightShadowmapSize;
        let x_1288 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1282.x, x_1282.y, x_1282.x, x_1282.y) * vec4<f32>(x_1285.x, x_1285.y, x_1285.x, x_1285.y)) + vec4<f32>(x_1288.x, x_1288.y, x_1288.z, x_1288.y));
        let x_1292 : vec2<f32> = u_xlat58;
        let x_1294 : vec4<f32> = x_123.x_MainLightShadowmapSize;
        let x_1297 : vec4<f32> = u_xlat11;
        let x_1299 : vec2<f32> = ((x_1292 * vec2<f32>(x_1294.x, x_1294.y)) + vec2<f32>(x_1297.w, x_1297.y));
        let x_1300 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_1299.x, x_1299.y, x_1300.z);
        let x_1303 : f32 = u_xlat11.y;
        u_xlat8.w = x_1303;
        let x_1306 : vec2<f32> = u_xlat58;
        let x_1308 : vec4<f32> = x_123.x_MainLightShadowmapSize;
        let x_1311 : vec4<f32> = u_xlat8;
        let x_1313 : vec2<f32> = ((x_1306 * vec2<f32>(x_1308.x, x_1308.y)) + vec2<f32>(x_1311.x, x_1311.w));
        let x_1314 : vec4<f32> = u_xlat17;
        u_xlat17 = vec4<f32>(x_1313.x, x_1313.y, x_1314.z, x_1314.w);
        let x_1316 : vec4<f32> = u_xlat11;
        let x_1317 : vec3<f32> = vec3<f32>(x_1316.x, x_1316.z, x_1316.w);
        let x_1318 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1317.x, x_1318.y, x_1317.y, x_1317.z);
        let x_1320 : vec2<f32> = u_xlat58;
        let x_1323 : vec4<f32> = x_123.x_MainLightShadowmapSize;
        let x_1326 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1320.x, x_1320.y, x_1320.x, x_1320.y) * vec4<f32>(x_1323.x, x_1323.y, x_1323.x, x_1323.y)) + vec4<f32>(x_1326.x, x_1326.y, x_1326.z, x_1326.y));
        let x_1330 : vec2<f32> = u_xlat58;
        let x_1332 : vec4<f32> = x_123.x_MainLightShadowmapSize;
        let x_1335 : vec4<f32> = u_xlat10;
        u_xlat62 = ((x_1330 * vec2<f32>(x_1332.x, x_1332.y)) + vec2<f32>(x_1335.w, x_1335.y));
        let x_1339 : f32 = u_xlat8.x;
        u_xlat10.x = x_1339;
        let x_1341 : vec2<f32> = u_xlat58;
        let x_1343 : vec4<f32> = x_123.x_MainLightShadowmapSize;
        let x_1346 : vec4<f32> = u_xlat10;
        u_xlat58 = ((x_1341 * vec2<f32>(x_1343.x, x_1343.y)) + vec2<f32>(x_1346.x, x_1346.y));
        let x_1350 : vec4<f32> = u_xlat7;
        let x_1352 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1350.x, x_1350.x, x_1350.x, x_1350.x) * x_1352);
        let x_1355 : vec4<f32> = u_xlat7;
        let x_1357 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_1355.y, x_1355.y, x_1355.y, x_1355.y) * x_1357);
        let x_1360 : vec4<f32> = u_xlat7;
        let x_1362 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_1360.z, x_1360.z, x_1360.z, x_1360.z) * x_1362);
        let x_1364 : vec4<f32> = u_xlat7;
        let x_1366 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_1364.w, x_1364.w, x_1364.w, x_1364.w) * x_1366);
        let x_1369 : vec4<f32> = u_xlat12;
        let x_1370 : vec2<f32> = vec2<f32>(x_1369.x, x_1369.y);
        let x_1372 : f32 = u_xlat4.z;
        txVec13 = vec3<f32>(x_1370.x, x_1370.y, x_1372);
        let x_1379 : vec3<f32> = txVec13;
        let x_1381 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1379.xy, x_1379.z);
        u_xlat8.x = x_1381;
        let x_1384 : vec4<f32> = u_xlat12;
        let x_1385 : vec2<f32> = vec2<f32>(x_1384.z, x_1384.w);
        let x_1387 : f32 = u_xlat4.z;
        txVec14 = vec3<f32>(x_1385.x, x_1385.y, x_1387);
        let x_1395 : vec3<f32> = txVec14;
        let x_1397 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1395.xy, x_1395.z);
        u_xlat86 = x_1397;
        let x_1398 : f32 = u_xlat86;
        let x_1400 : f32 = u_xlat18.y;
        u_xlat86 = (x_1398 * x_1400);
        let x_1403 : f32 = u_xlat18.x;
        let x_1405 : f32 = u_xlat8.x;
        let x_1407 : f32 = u_xlat86;
        u_xlat8.x = ((x_1403 * x_1405) + x_1407);
        let x_1411 : vec4<f32> = u_xlat13;
        let x_1412 : vec2<f32> = vec2<f32>(x_1411.x, x_1411.y);
        let x_1414 : f32 = u_xlat4.z;
        txVec15 = vec3<f32>(x_1412.x, x_1412.y, x_1414);
        let x_1421 : vec3<f32> = txVec15;
        let x_1423 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1421.xy, x_1421.z);
        u_xlat86 = x_1423;
        let x_1425 : f32 = u_xlat18.z;
        let x_1426 : f32 = u_xlat86;
        let x_1429 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1425 * x_1426) + x_1429);
        let x_1433 : vec4<f32> = u_xlat15;
        let x_1434 : vec2<f32> = vec2<f32>(x_1433.x, x_1433.y);
        let x_1436 : f32 = u_xlat4.z;
        txVec16 = vec3<f32>(x_1434.x, x_1434.y, x_1436);
        let x_1443 : vec3<f32> = txVec16;
        let x_1445 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1443.xy, x_1443.z);
        u_xlat86 = x_1445;
        let x_1447 : f32 = u_xlat18.w;
        let x_1448 : f32 = u_xlat86;
        let x_1451 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1447 * x_1448) + x_1451);
        let x_1455 : vec4<f32> = u_xlat14;
        let x_1456 : vec2<f32> = vec2<f32>(x_1455.x, x_1455.y);
        let x_1458 : f32 = u_xlat4.z;
        txVec17 = vec3<f32>(x_1456.x, x_1456.y, x_1458);
        let x_1465 : vec3<f32> = txVec17;
        let x_1467 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1465.xy, x_1465.z);
        u_xlat86 = x_1467;
        let x_1469 : f32 = u_xlat19.x;
        let x_1470 : f32 = u_xlat86;
        let x_1473 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1469 * x_1470) + x_1473);
        let x_1477 : vec4<f32> = u_xlat14;
        let x_1478 : vec2<f32> = vec2<f32>(x_1477.z, x_1477.w);
        let x_1480 : f32 = u_xlat4.z;
        txVec18 = vec3<f32>(x_1478.x, x_1478.y, x_1480);
        let x_1487 : vec3<f32> = txVec18;
        let x_1489 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1487.xy, x_1487.z);
        u_xlat86 = x_1489;
        let x_1491 : f32 = u_xlat19.y;
        let x_1492 : f32 = u_xlat86;
        let x_1495 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1491 * x_1492) + x_1495);
        let x_1499 : vec2<f32> = u_xlat65;
        let x_1501 : f32 = u_xlat4.z;
        txVec19 = vec3<f32>(x_1499.x, x_1499.y, x_1501);
        let x_1508 : vec3<f32> = txVec19;
        let x_1510 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1508.xy, x_1508.z);
        u_xlat86 = x_1510;
        let x_1512 : f32 = u_xlat19.z;
        let x_1513 : f32 = u_xlat86;
        let x_1516 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1512 * x_1513) + x_1516);
        let x_1520 : vec4<f32> = u_xlat15;
        let x_1521 : vec2<f32> = vec2<f32>(x_1520.z, x_1520.w);
        let x_1523 : f32 = u_xlat4.z;
        txVec20 = vec3<f32>(x_1521.x, x_1521.y, x_1523);
        let x_1530 : vec3<f32> = txVec20;
        let x_1532 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1530.xy, x_1530.z);
        u_xlat86 = x_1532;
        let x_1534 : f32 = u_xlat19.w;
        let x_1535 : f32 = u_xlat86;
        let x_1538 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1534 * x_1535) + x_1538);
        let x_1542 : vec4<f32> = u_xlat16;
        let x_1543 : vec2<f32> = vec2<f32>(x_1542.x, x_1542.y);
        let x_1545 : f32 = u_xlat4.z;
        txVec21 = vec3<f32>(x_1543.x, x_1543.y, x_1545);
        let x_1552 : vec3<f32> = txVec21;
        let x_1554 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1552.xy, x_1552.z);
        u_xlat86 = x_1554;
        let x_1556 : f32 = u_xlat20.x;
        let x_1557 : f32 = u_xlat86;
        let x_1560 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1556 * x_1557) + x_1560);
        let x_1564 : vec4<f32> = u_xlat16;
        let x_1565 : vec2<f32> = vec2<f32>(x_1564.z, x_1564.w);
        let x_1567 : f32 = u_xlat4.z;
        txVec22 = vec3<f32>(x_1565.x, x_1565.y, x_1567);
        let x_1574 : vec3<f32> = txVec22;
        let x_1576 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1574.xy, x_1574.z);
        u_xlat86 = x_1576;
        let x_1578 : f32 = u_xlat20.y;
        let x_1579 : f32 = u_xlat86;
        let x_1582 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1578 * x_1579) + x_1582);
        let x_1586 : vec3<f32> = u_xlat34;
        let x_1587 : vec2<f32> = vec2<f32>(x_1586.x, x_1586.y);
        let x_1589 : f32 = u_xlat4.z;
        txVec23 = vec3<f32>(x_1587.x, x_1587.y, x_1589);
        let x_1596 : vec3<f32> = txVec23;
        let x_1598 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1596.xy, x_1596.z);
        u_xlat34.x = x_1598;
        let x_1601 : f32 = u_xlat20.z;
        let x_1603 : f32 = u_xlat34.x;
        let x_1606 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1601 * x_1603) + x_1606);
        let x_1610 : vec4<f32> = u_xlat17;
        let x_1611 : vec2<f32> = vec2<f32>(x_1610.x, x_1610.y);
        let x_1613 : f32 = u_xlat4.z;
        txVec24 = vec3<f32>(x_1611.x, x_1611.y, x_1613);
        let x_1620 : vec3<f32> = txVec24;
        let x_1622 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1620.xy, x_1620.z);
        u_xlat34.x = x_1622;
        let x_1625 : f32 = u_xlat20.w;
        let x_1627 : f32 = u_xlat34.x;
        let x_1630 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1625 * x_1627) + x_1630);
        let x_1634 : vec4<f32> = u_xlat11;
        let x_1635 : vec2<f32> = vec2<f32>(x_1634.x, x_1634.y);
        let x_1637 : f32 = u_xlat4.z;
        txVec25 = vec3<f32>(x_1635.x, x_1635.y, x_1637);
        let x_1644 : vec3<f32> = txVec25;
        let x_1646 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1644.xy, x_1644.z);
        u_xlat34.x = x_1646;
        let x_1649 : f32 = u_xlat7.x;
        let x_1651 : f32 = u_xlat34.x;
        let x_1654 : f32 = u_xlat8.x;
        u_xlat7.x = ((x_1649 * x_1651) + x_1654);
        let x_1658 : vec4<f32> = u_xlat11;
        let x_1659 : vec2<f32> = vec2<f32>(x_1658.z, x_1658.w);
        let x_1661 : f32 = u_xlat4.z;
        txVec26 = vec3<f32>(x_1659.x, x_1659.y, x_1661);
        let x_1668 : vec3<f32> = txVec26;
        let x_1670 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1668.xy, x_1668.z);
        u_xlat8.x = x_1670;
        let x_1673 : f32 = u_xlat7.y;
        let x_1675 : f32 = u_xlat8.x;
        let x_1678 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1673 * x_1675) + x_1678);
        let x_1682 : vec2<f32> = u_xlat62;
        let x_1684 : f32 = u_xlat4.z;
        txVec27 = vec3<f32>(x_1682.x, x_1682.y, x_1684);
        let x_1692 : vec3<f32> = txVec27;
        let x_1694 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1692.xy, x_1692.z);
        u_xlat33.x = x_1694;
        let x_1697 : f32 = u_xlat7.z;
        let x_1699 : f32 = u_xlat33.x;
        let x_1702 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1697 * x_1699) + x_1702);
        let x_1706 : vec2<f32> = u_xlat58;
        let x_1708 : f32 = u_xlat4.z;
        txVec28 = vec3<f32>(x_1706.x, x_1706.y, x_1708);
        let x_1715 : vec3<f32> = txVec28;
        let x_1717 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1715.xy, x_1715.z);
        u_xlat58.x = x_1717;
        let x_1720 : f32 = u_xlat7.w;
        let x_1722 : f32 = u_xlat58.x;
        let x_1725 : f32 = u_xlat7.x;
        u_xlat32.x = ((x_1720 * x_1722) + x_1725);
      }
    }
  } else {
    let x_1730 : vec4<f32> = u_xlat4;
    let x_1731 : vec2<f32> = vec2<f32>(x_1730.x, x_1730.y);
    let x_1733 : f32 = u_xlat4.z;
    txVec29 = vec3<f32>(x_1731.x, x_1731.y, x_1733);
    let x_1740 : vec3<f32> = txVec29;
    let x_1742 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1740.xy, x_1740.z);
    u_xlat32.x = x_1742;
  }
  let x_1745 : f32 = x_123.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_1745) + 1.0f);
  let x_1750 : f32 = u_xlat32.x;
  let x_1752 : f32 = x_123.x_MainLightShadowParams.x;
  let x_1755 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1750 * x_1752) + x_1755);
  let x_1760 : f32 = u_xlat4.z;
  u_xlatb30 = (0.0f >= x_1760);
  let x_1764 : f32 = u_xlat4.z;
  u_xlatb56 = (x_1764 >= 1.0f);
  let x_1766 : bool = u_xlatb56;
  let x_1767 : bool = u_xlatb30;
  u_xlatb30 = (x_1766 | x_1767);
  let x_1769 : bool = u_xlatb30;
  if (x_1769) {
    x_1771 = 1.0f;
  } else {
    let x_1776 : f32 = u_xlat4.x;
    x_1771 = x_1776;
  }
  let x_1777 : f32 = x_1771;
  u_xlat4.x = x_1777;
  let x_1779 : vec3<f32> = vs_TEXCOORD1;
  let x_1781 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat32 = (x_1779 + -(x_1781));
  let x_1785 : vec3<f32> = u_xlat32;
  let x_1786 : vec3<f32> = u_xlat32;
  u_xlat30 = dot(x_1785, x_1786);
  let x_1789 : f32 = u_xlat30;
  let x_1791 : f32 = x_123.x_MainLightShadowParams.z;
  let x_1794 : f32 = x_123.x_MainLightShadowParams.w;
  u_xlat56 = ((x_1789 * x_1791) + x_1794);
  let x_1796 : f32 = u_xlat56;
  u_xlat56 = clamp(x_1796, 0.0f, 1.0f);
  let x_1799 : f32 = u_xlat4.x;
  u_xlat32.x = (-(x_1799) + 1.0f);
  let x_1803 : f32 = u_xlat56;
  let x_1805 : f32 = u_xlat32.x;
  let x_1808 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1803 * x_1805) + x_1808);
  let x_1811 : vec3<f32> = u_xlat2;
  let x_1813 : vec3<f32> = u_xlat3;
  u_xlat56 = dot(-(x_1811), x_1813);
  let x_1815 : f32 = u_xlat56;
  let x_1816 : f32 = u_xlat56;
  u_xlat56 = (x_1815 + x_1816);
  let x_1818 : vec3<f32> = u_xlat3;
  let x_1819 : f32 = u_xlat56;
  let x_1823 : vec3<f32> = u_xlat2;
  u_xlat32 = ((x_1818 * -(vec3<f32>(x_1819, x_1819, x_1819))) + -(x_1823));
  let x_1826 : vec3<f32> = u_xlat3;
  let x_1827 : vec3<f32> = u_xlat2;
  u_xlat56 = dot(x_1826, x_1827);
  let x_1829 : f32 = u_xlat56;
  u_xlat56 = clamp(x_1829, 0.0f, 1.0f);
  let x_1831 : f32 = u_xlat56;
  u_xlat56 = (-(x_1831) + 1.0f);
  let x_1834 : f32 = u_xlat56;
  let x_1835 : f32 = u_xlat56;
  u_xlat56 = (x_1834 * x_1835);
  let x_1837 : f32 = u_xlat56;
  let x_1838 : f32 = u_xlat56;
  u_xlat56 = (x_1837 * x_1838);
  let x_1840 : f32 = u_xlat80;
  u_xlat7.x = ((-(x_1840) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1847 : f32 = u_xlat80;
  let x_1849 : f32 = u_xlat7.x;
  u_xlat80 = (x_1847 * x_1849);
  let x_1851 : f32 = u_xlat80;
  u_xlat80 = (x_1851 * 6.0f);
  let x_1862 : vec3<f32> = u_xlat32;
  let x_1863 : f32 = u_xlat80;
  let x_1864 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_1862, x_1863);
  u_xlat7 = x_1864;
  let x_1866 : f32 = u_xlat7.w;
  u_xlat80 = (x_1866 + -1.0f);
  let x_1873 : f32 = x_1871.unity_SpecCube0_HDR.w;
  let x_1874 : f32 = u_xlat80;
  u_xlat80 = ((x_1873 * x_1874) + 1.0f);
  let x_1877 : f32 = u_xlat80;
  u_xlat80 = max(x_1877, 0.0f);
  let x_1879 : f32 = u_xlat80;
  u_xlat80 = log2(x_1879);
  let x_1881 : f32 = u_xlat80;
  let x_1883 : f32 = x_1871.unity_SpecCube0_HDR.y;
  u_xlat80 = (x_1881 * x_1883);
  let x_1885 : f32 = u_xlat80;
  u_xlat80 = exp2(x_1885);
  let x_1887 : f32 = u_xlat80;
  let x_1889 : f32 = x_1871.unity_SpecCube0_HDR.x;
  u_xlat80 = (x_1887 * x_1889);
  let x_1891 : vec4<f32> = u_xlat7;
  let x_1893 : f32 = u_xlat80;
  u_xlat32 = (vec3<f32>(x_1891.x, x_1891.y, x_1891.z) * vec3<f32>(x_1893, x_1893, x_1893));
  let x_1896 : f32 = u_xlat82;
  let x_1898 : f32 = u_xlat82;
  let x_1902 : vec2<f32> = ((vec2<f32>(x_1896, x_1896) * vec2<f32>(x_1898, x_1898)) + vec2<f32>(-1.0f, 1.0f));
  let x_1903 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1902.x, x_1902.y, x_1903.z, x_1903.w);
  let x_1906 : f32 = u_xlat7.y;
  u_xlat80 = (1.0f / x_1906);
  let x_1908 : vec4<f32> = u_xlat0;
  let x_1911 : f32 = u_xlat81;
  u_xlat33 = (-(vec3<f32>(x_1908.x, x_1908.y, x_1908.z)) + vec3<f32>(x_1911, x_1911, x_1911));
  let x_1914 : f32 = u_xlat56;
  let x_1916 : vec3<f32> = u_xlat33;
  let x_1918 : vec4<f32> = u_xlat0;
  u_xlat33 = ((vec3<f32>(x_1914, x_1914, x_1914) * x_1916) + vec3<f32>(x_1918.x, x_1918.y, x_1918.z));
  let x_1921 : f32 = u_xlat80;
  let x_1923 : vec3<f32> = u_xlat33;
  u_xlat33 = (vec3<f32>(x_1921, x_1921, x_1921) * x_1923);
  let x_1925 : vec3<f32> = u_xlat32;
  let x_1926 : vec3<f32> = u_xlat33;
  u_xlat32 = (x_1925 * x_1926);
  let x_1928 : vec4<f32> = u_xlat5;
  let x_1930 : vec3<f32> = u_xlat27;
  let x_1932 : vec3<f32> = u_xlat32;
  let x_1933 : vec3<f32> = ((vec3<f32>(x_1928.x, x_1928.y, x_1928.z) * x_1930) + x_1932);
  let x_1934 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1933.x, x_1933.y, x_1933.z, x_1934.w);
  let x_1937 : f32 = u_xlat4.x;
  let x_1939 : f32 = x_1871.unity_LightData.z;
  u_xlat80 = (x_1937 * x_1939);
  let x_1941 : vec3<f32> = u_xlat3;
  let x_1943 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat81 = dot(x_1941, vec3<f32>(x_1943.x, x_1943.y, x_1943.z));
  let x_1946 : f32 = u_xlat81;
  u_xlat81 = clamp(x_1946, 0.0f, 1.0f);
  let x_1948 : f32 = u_xlat80;
  let x_1949 : f32 = u_xlat81;
  u_xlat80 = (x_1948 * x_1949);
  let x_1951 : f32 = u_xlat80;
  let x_1954 : vec4<f32> = x_28.x_MainLightColor;
  let x_1956 : vec3<f32> = (vec3<f32>(x_1951, x_1951, x_1951) * vec3<f32>(x_1954.x, x_1954.y, x_1954.z));
  let x_1957 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1956.x, x_1957.y, x_1956.y, x_1956.z);
  let x_1959 : vec3<f32> = u_xlat2;
  let x_1961 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat32 = (x_1959 + vec3<f32>(x_1961.x, x_1961.y, x_1961.z));
  let x_1964 : vec3<f32> = u_xlat32;
  let x_1965 : vec3<f32> = u_xlat32;
  u_xlat80 = dot(x_1964, x_1965);
  let x_1967 : f32 = u_xlat80;
  u_xlat80 = max(x_1967, 1.17549435e-38f);
  let x_1970 : f32 = u_xlat80;
  u_xlat80 = inverseSqrt(x_1970);
  let x_1972 : f32 = u_xlat80;
  let x_1974 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_1972, x_1972, x_1972) * x_1974);
  let x_1976 : vec3<f32> = u_xlat3;
  let x_1977 : vec3<f32> = u_xlat32;
  u_xlat80 = dot(x_1976, x_1977);
  let x_1979 : f32 = u_xlat80;
  u_xlat80 = clamp(x_1979, 0.0f, 1.0f);
  let x_1982 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1984 : vec3<f32> = u_xlat32;
  u_xlat81 = dot(vec3<f32>(x_1982.x, x_1982.y, x_1982.z), x_1984);
  let x_1986 : f32 = u_xlat81;
  u_xlat81 = clamp(x_1986, 0.0f, 1.0f);
  let x_1988 : f32 = u_xlat80;
  let x_1989 : f32 = u_xlat80;
  u_xlat80 = (x_1988 * x_1989);
  let x_1991 : f32 = u_xlat80;
  let x_1993 : f32 = u_xlat7.x;
  u_xlat80 = ((x_1991 * x_1993) + 1.00001001358032226562f);
  let x_1997 : f32 = u_xlat81;
  let x_1998 : f32 = u_xlat81;
  u_xlat81 = (x_1997 * x_1998);
  let x_2000 : f32 = u_xlat80;
  let x_2001 : f32 = u_xlat80;
  u_xlat80 = (x_2000 * x_2001);
  let x_2003 : f32 = u_xlat81;
  u_xlat81 = max(x_2003, 0.10000000149011611938f);
  let x_2006 : f32 = u_xlat80;
  let x_2007 : f32 = u_xlat81;
  u_xlat80 = (x_2006 * x_2007);
  let x_2010 : f32 = u_xlat6.x;
  let x_2011 : f32 = u_xlat80;
  u_xlat80 = (x_2010 * x_2011);
  let x_2013 : f32 = u_xlat83;
  let x_2014 : f32 = u_xlat80;
  u_xlat80 = (x_2013 / x_2014);
  let x_2016 : vec4<f32> = u_xlat0;
  let x_2018 : f32 = u_xlat80;
  let x_2021 : vec3<f32> = u_xlat27;
  u_xlat32 = ((vec3<f32>(x_2016.x, x_2016.y, x_2016.z) * vec3<f32>(x_2018, x_2018, x_2018)) + x_2021);
  let x_2024 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_2026 : f32 = x_1871.unity_LightData.y;
  u_xlat80 = min(x_2024, x_2026);
  let x_2029 : f32 = u_xlat80;
  u_xlatu80 = bitcast<u32>(i32(x_2029));
  let x_2032 : f32 = u_xlat30;
  let x_2035 : f32 = x_123.x_AdditionalShadowFadeParams.x;
  let x_2038 : f32 = x_123.x_AdditionalShadowFadeParams.y;
  u_xlat81 = ((x_2032 * x_2035) + x_2038);
  let x_2040 : f32 = u_xlat81;
  u_xlat81 = clamp(x_2040, 0.0f, 1.0f);
  u_xlat33.x = 0.0f;
  u_xlat33.y = 0.0f;
  u_xlat33.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2052 : u32 = u_xlatu_loop_1;
    let x_2053 : u32 = u_xlatu80;
    if ((x_2052 < x_2053)) {
    } else {
      break;
    }
    let x_2056 : u32 = u_xlatu_loop_1;
    u_xlatu8 = (x_2056 >> 2u);
    let x_2059 : u32 = u_xlatu_loop_1;
    u_xlati34 = bitcast<i32>((x_2059 & 3u));
    let x_2062 : u32 = u_xlatu8;
    let x_2065 : vec4<f32> = x_1871.unity_LightIndices[bitcast<i32>(x_2062)];
    let x_2075 : i32 = u_xlati34;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2080 : vec4<u32> = indexable[x_2075];
    u_xlat8.x = dot(x_2065, bitcast<vec4<f32>>(x_2080));
    let x_2086 : f32 = u_xlat8.x;
    u_xlati8 = i32(x_2086);
    let x_2088 : vec3<f32> = vs_TEXCOORD1;
    let x_2099 : i32 = u_xlati8;
    let x_2101 : vec4<f32> = x_2098.x_AdditionalLightsPosition[x_2099];
    let x_2104 : i32 = u_xlati8;
    let x_2106 : vec4<f32> = x_2098.x_AdditionalLightsPosition[x_2104];
    u_xlat34 = ((-(x_2088) * vec3<f32>(x_2101.w, x_2101.w, x_2101.w)) + vec3<f32>(x_2106.x, x_2106.y, x_2106.z));
    let x_2109 : vec3<f32> = u_xlat34;
    let x_2110 : vec3<f32> = u_xlat34;
    u_xlat9.x = dot(x_2109, x_2110);
    let x_2114 : f32 = u_xlat9.x;
    u_xlat9.x = max(x_2114, 0.00006103515625f);
    let x_2120 : f32 = u_xlat9.x;
    u_xlat35 = inverseSqrt(x_2120);
    let x_2122 : vec3<f32> = u_xlat34;
    let x_2123 : f32 = u_xlat35;
    let x_2125 : vec3<f32> = (x_2122 * vec3<f32>(x_2123, x_2123, x_2123));
    let x_2126 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2125.x, x_2125.y, x_2125.z, x_2126.w);
    let x_2129 : f32 = u_xlat9.x;
    u_xlat61.x = (1.0f / x_2129);
    let x_2133 : f32 = u_xlat9.x;
    let x_2134 : i32 = u_xlati8;
    let x_2136 : f32 = x_2098.x_AdditionalLightsAttenuation[x_2134].x;
    u_xlat9.x = (x_2133 * x_2136);
    let x_2140 : f32 = u_xlat9.x;
    let x_2143 : f32 = u_xlat9.x;
    u_xlat9.x = ((-(x_2140) * x_2143) + 1.0f);
    let x_2148 : f32 = u_xlat9.x;
    u_xlat9.x = max(x_2148, 0.0f);
    let x_2152 : f32 = u_xlat9.x;
    let x_2154 : f32 = u_xlat9.x;
    u_xlat9.x = (x_2152 * x_2154);
    let x_2158 : f32 = u_xlat9.x;
    let x_2160 : f32 = u_xlat61.x;
    u_xlat9.x = (x_2158 * x_2160);
    let x_2163 : i32 = u_xlati8;
    let x_2165 : vec4<f32> = x_2098.x_AdditionalLightsSpotDir[x_2163];
    let x_2167 : vec4<f32> = u_xlat10;
    u_xlat61.x = dot(vec3<f32>(x_2165.x, x_2165.y, x_2165.z), vec3<f32>(x_2167.x, x_2167.y, x_2167.z));
    let x_2172 : f32 = u_xlat61.x;
    let x_2173 : i32 = u_xlati8;
    let x_2175 : f32 = x_2098.x_AdditionalLightsAttenuation[x_2173].z;
    let x_2177 : i32 = u_xlati8;
    let x_2179 : f32 = x_2098.x_AdditionalLightsAttenuation[x_2177].w;
    u_xlat61.x = ((x_2172 * x_2175) + x_2179);
    let x_2183 : f32 = u_xlat61.x;
    u_xlat61.x = clamp(x_2183, 0.0f, 1.0f);
    let x_2187 : f32 = u_xlat61.x;
    let x_2189 : f32 = u_xlat61.x;
    u_xlat61.x = (x_2187 * x_2189);
    let x_2193 : f32 = u_xlat61.x;
    let x_2195 : f32 = u_xlat9.x;
    u_xlat9.x = (x_2193 * x_2195);
    let x_2200 : i32 = u_xlati8;
    let x_2202 : f32 = x_123.x_AdditionalShadowParams[x_2200].w;
    u_xlati61 = i32(x_2202);
    let x_2205 : i32 = u_xlati61;
    u_xlatb87 = (x_2205 >= 0i);
    let x_2207 : bool = u_xlatb87;
    if (x_2207) {
      let x_2211 : i32 = u_xlati8;
      let x_2213 : f32 = x_123.x_AdditionalShadowParams[x_2211].z;
      u_xlatb87 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2213, x_2213, x_2213, x_2213))));
      let x_2217 : bool = u_xlatb87;
      if (x_2217) {
        let x_2221 : vec4<f32> = u_xlat10;
        let x_2224 : vec4<f32> = u_xlat10;
        let x_2227 : vec4<bool> = (abs(vec4<f32>(x_2221.z, x_2221.z, x_2221.y, x_2221.z)) >= abs(vec4<f32>(x_2224.x, x_2224.y, x_2224.x, x_2224.x)));
        let x_2229 : vec3<bool> = vec3<bool>(x_2227.x, x_2227.y, x_2227.z);
        let x_2230 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2229.x, x_2229.y, x_2229.z, x_2230.w);
        let x_2233 : bool = u_xlatb11.y;
        let x_2235 : bool = u_xlatb11.x;
        u_xlatb87 = (x_2233 & x_2235);
        let x_2237 : vec4<f32> = u_xlat10;
        let x_2240 : vec4<bool> = (-(vec4<f32>(x_2237.z, x_2237.y, x_2237.z, x_2237.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2241 : vec3<bool> = vec3<bool>(x_2240.x, x_2240.y, x_2240.w);
        let x_2242 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2241.x, x_2241.y, x_2242.z, x_2241.z);
        let x_2245 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2245);
        let x_2250 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2250);
        let x_2255 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_2255);
        let x_2258 : bool = u_xlatb11.z;
        if (x_2258) {
          let x_2263 : f32 = u_xlat11.y;
          x_2259 = x_2263;
        } else {
          let x_2265 : f32 = u_xlat88;
          x_2259 = x_2265;
        }
        let x_2266 : f32 = x_2259;
        u_xlat88 = x_2266;
        let x_2268 : bool = u_xlatb87;
        if (x_2268) {
          let x_2273 : f32 = u_xlat11.x;
          x_2269 = x_2273;
        } else {
          let x_2275 : f32 = u_xlat88;
          x_2269 = x_2275;
        }
        let x_2276 : f32 = x_2269;
        u_xlat87 = x_2276;
        let x_2277 : i32 = u_xlati8;
        let x_2279 : f32 = x_123.x_AdditionalShadowParams[x_2277].w;
        u_xlat88 = trunc(x_2279);
        let x_2281 : f32 = u_xlat87;
        let x_2282 : f32 = u_xlat88;
        u_xlat87 = (x_2281 + x_2282);
        let x_2284 : f32 = u_xlat87;
        u_xlati61 = i32(x_2284);
      }
      let x_2286 : i32 = u_xlati61;
      u_xlati61 = (x_2286 << bitcast<u32>(2i));
      let x_2288 : vec3<f32> = vs_TEXCOORD1;
      let x_2291 : i32 = u_xlati61;
      let x_2294 : i32 = u_xlati61;
      let x_2298 : vec4<f32> = x_123.x_AdditionalLightsWorldToShadow[((x_2291 + 1i) / 4i)][((x_2294 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2288.y, x_2288.y, x_2288.y, x_2288.y) * x_2298);
      let x_2300 : i32 = u_xlati61;
      let x_2302 : i32 = u_xlati61;
      let x_2305 : vec4<f32> = x_123.x_AdditionalLightsWorldToShadow[(x_2300 / 4i)][(x_2302 % 4i)];
      let x_2306 : vec3<f32> = vs_TEXCOORD1;
      let x_2309 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2305 * vec4<f32>(x_2306.x, x_2306.x, x_2306.x, x_2306.x)) + x_2309);
      let x_2311 : i32 = u_xlati61;
      let x_2314 : i32 = u_xlati61;
      let x_2318 : vec4<f32> = x_123.x_AdditionalLightsWorldToShadow[((x_2311 + 2i) / 4i)][((x_2314 + 2i) % 4i)];
      let x_2319 : vec3<f32> = vs_TEXCOORD1;
      let x_2322 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2318 * vec4<f32>(x_2319.z, x_2319.z, x_2319.z, x_2319.z)) + x_2322);
      let x_2324 : vec4<f32> = u_xlat11;
      let x_2325 : i32 = u_xlati61;
      let x_2328 : i32 = u_xlati61;
      let x_2332 : vec4<f32> = x_123.x_AdditionalLightsWorldToShadow[((x_2325 + 3i) / 4i)][((x_2328 + 3i) % 4i)];
      u_xlat11 = (x_2324 + x_2332);
      let x_2334 : vec4<f32> = u_xlat11;
      let x_2336 : vec4<f32> = u_xlat11;
      let x_2338 : vec3<f32> = (vec3<f32>(x_2334.x, x_2334.y, x_2334.z) / vec3<f32>(x_2336.w, x_2336.w, x_2336.w));
      let x_2339 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2338.x, x_2338.y, x_2338.z, x_2339.w);
      let x_2342 : i32 = u_xlati8;
      let x_2344 : f32 = x_123.x_AdditionalShadowParams[x_2342].y;
      u_xlatb61 = (0.0f < x_2344);
      let x_2346 : bool = u_xlatb61;
      if (x_2346) {
        let x_2349 : i32 = u_xlati8;
        let x_2351 : f32 = x_123.x_AdditionalShadowParams[x_2349].y;
        u_xlatb61 = (1.0f == x_2351);
        let x_2353 : bool = u_xlatb61;
        if (x_2353) {
          let x_2356 : vec4<f32> = u_xlat11;
          let x_2360 : vec4<f32> = x_123.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2356.x, x_2356.y, x_2356.x, x_2356.y) + x_2360);
          let x_2363 : vec4<f32> = u_xlat12;
          let x_2364 : vec2<f32> = vec2<f32>(x_2363.x, x_2363.y);
          let x_2366 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2364.x, x_2364.y, x_2366);
          let x_2374 : vec3<f32> = txVec30;
          let x_2376 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2374.xy, x_2374.z);
          u_xlat13.x = x_2376;
          let x_2379 : vec4<f32> = u_xlat12;
          let x_2380 : vec2<f32> = vec2<f32>(x_2379.z, x_2379.w);
          let x_2382 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2380.x, x_2380.y, x_2382);
          let x_2389 : vec3<f32> = txVec31;
          let x_2391 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2389.xy, x_2389.z);
          u_xlat13.y = x_2391;
          let x_2393 : vec4<f32> = u_xlat11;
          let x_2397 : vec4<f32> = x_123.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2393.x, x_2393.y, x_2393.x, x_2393.y) + x_2397);
          let x_2400 : vec4<f32> = u_xlat12;
          let x_2401 : vec2<f32> = vec2<f32>(x_2400.x, x_2400.y);
          let x_2403 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2401.x, x_2401.y, x_2403);
          let x_2410 : vec3<f32> = txVec32;
          let x_2412 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2410.xy, x_2410.z);
          u_xlat13.z = x_2412;
          let x_2415 : vec4<f32> = u_xlat12;
          let x_2416 : vec2<f32> = vec2<f32>(x_2415.z, x_2415.w);
          let x_2418 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2416.x, x_2416.y, x_2418);
          let x_2425 : vec3<f32> = txVec33;
          let x_2427 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2425.xy, x_2425.z);
          u_xlat13.w = x_2427;
          let x_2429 : vec4<f32> = u_xlat13;
          u_xlat61.x = dot(x_2429, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2433 : i32 = u_xlati8;
          let x_2435 : f32 = x_123.x_AdditionalShadowParams[x_2433].y;
          u_xlatb87 = (2.0f == x_2435);
          let x_2437 : bool = u_xlatb87;
          if (x_2437) {
            let x_2440 : vec4<f32> = u_xlat11;
            let x_2444 : vec4<f32> = x_123.x_AdditionalShadowmapSize;
            let x_2447 : vec2<f32> = ((vec2<f32>(x_2440.x, x_2440.y) * vec2<f32>(x_2444.z, x_2444.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2448 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2447.x, x_2447.y, x_2448.z, x_2448.w);
            let x_2450 : vec4<f32> = u_xlat12;
            let x_2452 : vec2<f32> = floor(vec2<f32>(x_2450.x, x_2450.y));
            let x_2453 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2452.x, x_2452.y, x_2453.z, x_2453.w);
            let x_2456 : vec4<f32> = u_xlat11;
            let x_2459 : vec4<f32> = x_123.x_AdditionalShadowmapSize;
            let x_2462 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2456.x, x_2456.y) * vec2<f32>(x_2459.z, x_2459.w)) + -(vec2<f32>(x_2462.x, x_2462.y)));
            let x_2466 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2466.x, x_2466.x, x_2466.y, x_2466.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2469 : vec4<f32> = u_xlat13;
            let x_2471 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2469.x, x_2469.x, x_2469.z, x_2469.z) * vec4<f32>(x_2471.x, x_2471.x, x_2471.z, x_2471.z));
            let x_2474 : vec4<f32> = u_xlat14;
            let x_2476 : vec2<f32> = (vec2<f32>(x_2474.y, x_2474.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2477 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2476.x, x_2477.y, x_2476.y, x_2477.w);
            let x_2479 : vec4<f32> = u_xlat14;
            let x_2482 : vec2<f32> = u_xlat64;
            let x_2484 : vec2<f32> = ((vec2<f32>(x_2479.x, x_2479.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2482));
            let x_2485 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2484.x, x_2484.y, x_2485.z, x_2485.w);
            let x_2488 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2488) + vec2<f32>(1.0f, 1.0f));
            let x_2491 : vec2<f32> = u_xlat64;
            let x_2492 : vec2<f32> = min(x_2491, vec2<f32>(0.0f, 0.0f));
            let x_2493 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2492.x, x_2492.y, x_2493.z, x_2493.w);
            let x_2495 : vec4<f32> = u_xlat15;
            let x_2498 : vec4<f32> = u_xlat15;
            let x_2501 : vec2<f32> = u_xlat66;
            let x_2502 : vec2<f32> = ((-(vec2<f32>(x_2495.x, x_2495.y)) * vec2<f32>(x_2498.x, x_2498.y)) + x_2501);
            let x_2503 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2502.x, x_2502.y, x_2503.z, x_2503.w);
            let x_2505 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2505, vec2<f32>(0.0f, 0.0f));
            let x_2507 : vec2<f32> = u_xlat64;
            let x_2509 : vec2<f32> = u_xlat64;
            let x_2511 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2507) * x_2509) + vec2<f32>(x_2511.y, x_2511.w));
            let x_2514 : vec4<f32> = u_xlat15;
            let x_2516 : vec2<f32> = (vec2<f32>(x_2514.x, x_2514.y) + vec2<f32>(1.0f, 1.0f));
            let x_2517 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2516.x, x_2516.y, x_2517.z, x_2517.w);
            let x_2519 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2519 + vec2<f32>(1.0f, 1.0f));
            let x_2521 : vec4<f32> = u_xlat14;
            let x_2523 : vec2<f32> = (vec2<f32>(x_2521.x, x_2521.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2524 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2523.x, x_2523.y, x_2524.z, x_2524.w);
            let x_2526 : vec2<f32> = u_xlat66;
            let x_2527 : vec2<f32> = (x_2526 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2528 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2527.x, x_2527.y, x_2528.z, x_2528.w);
            let x_2530 : vec4<f32> = u_xlat15;
            let x_2532 : vec2<f32> = (vec2<f32>(x_2530.x, x_2530.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2533 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2532.x, x_2532.y, x_2533.z, x_2533.w);
            let x_2535 : vec2<f32> = u_xlat64;
            let x_2536 : vec2<f32> = (x_2535 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2537 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2536.x, x_2536.y, x_2537.z, x_2537.w);
            let x_2539 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2539.y, x_2539.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2543 : f32 = u_xlat15.x;
            u_xlat16.z = x_2543;
            let x_2546 : f32 = u_xlat64.x;
            u_xlat16.w = x_2546;
            let x_2549 : f32 = u_xlat17.x;
            u_xlat14.z = x_2549;
            let x_2552 : f32 = u_xlat13.x;
            u_xlat14.w = x_2552;
            let x_2554 : vec4<f32> = u_xlat14;
            let x_2556 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2554.z, x_2554.w, x_2554.x, x_2554.z) + vec4<f32>(x_2556.z, x_2556.w, x_2556.x, x_2556.z));
            let x_2560 : f32 = u_xlat16.y;
            u_xlat15.z = x_2560;
            let x_2563 : f32 = u_xlat64.y;
            u_xlat15.w = x_2563;
            let x_2566 : f32 = u_xlat14.y;
            u_xlat17.z = x_2566;
            let x_2569 : f32 = u_xlat13.z;
            u_xlat17.w = x_2569;
            let x_2571 : vec4<f32> = u_xlat15;
            let x_2573 : vec4<f32> = u_xlat17;
            let x_2575 : vec3<f32> = (vec3<f32>(x_2571.z, x_2571.y, x_2571.w) + vec3<f32>(x_2573.z, x_2573.y, x_2573.w));
            let x_2576 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2575.x, x_2575.y, x_2575.z, x_2576.w);
            let x_2578 : vec4<f32> = u_xlat14;
            let x_2580 : vec4<f32> = u_xlat18;
            let x_2582 : vec3<f32> = (vec3<f32>(x_2578.x, x_2578.z, x_2578.w) / vec3<f32>(x_2580.z, x_2580.w, x_2580.y));
            let x_2583 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2582.x, x_2582.y, x_2582.z, x_2583.w);
            let x_2585 : vec4<f32> = u_xlat14;
            let x_2587 : vec3<f32> = (vec3<f32>(x_2585.x, x_2585.y, x_2585.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2588 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2587.x, x_2587.y, x_2587.z, x_2588.w);
            let x_2590 : vec4<f32> = u_xlat17;
            let x_2592 : vec4<f32> = u_xlat13;
            let x_2594 : vec3<f32> = (vec3<f32>(x_2590.z, x_2590.y, x_2590.w) / vec3<f32>(x_2592.x, x_2592.y, x_2592.z));
            let x_2595 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2594.x, x_2594.y, x_2594.z, x_2595.w);
            let x_2597 : vec4<f32> = u_xlat15;
            let x_2599 : vec3<f32> = (vec3<f32>(x_2597.x, x_2597.y, x_2597.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2600 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2599.x, x_2599.y, x_2599.z, x_2600.w);
            let x_2602 : vec4<f32> = u_xlat14;
            let x_2605 : vec4<f32> = x_123.x_AdditionalShadowmapSize;
            let x_2607 : vec3<f32> = (vec3<f32>(x_2602.y, x_2602.x, x_2602.z) * vec3<f32>(x_2605.x, x_2605.x, x_2605.x));
            let x_2608 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2607.x, x_2607.y, x_2607.z, x_2608.w);
            let x_2610 : vec4<f32> = u_xlat15;
            let x_2613 : vec4<f32> = x_123.x_AdditionalShadowmapSize;
            let x_2615 : vec3<f32> = (vec3<f32>(x_2610.x, x_2610.y, x_2610.z) * vec3<f32>(x_2613.y, x_2613.y, x_2613.y));
            let x_2616 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2615.x, x_2615.y, x_2615.z, x_2616.w);
            let x_2619 : f32 = u_xlat15.x;
            u_xlat14.w = x_2619;
            let x_2621 : vec4<f32> = u_xlat12;
            let x_2624 : vec4<f32> = x_123.x_AdditionalShadowmapSize;
            let x_2627 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2621.x, x_2621.y, x_2621.x, x_2621.y) * vec4<f32>(x_2624.x, x_2624.y, x_2624.x, x_2624.y)) + vec4<f32>(x_2627.y, x_2627.w, x_2627.x, x_2627.w));
            let x_2630 : vec4<f32> = u_xlat12;
            let x_2633 : vec4<f32> = x_123.x_AdditionalShadowmapSize;
            let x_2636 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2630.x, x_2630.y) * vec2<f32>(x_2633.x, x_2633.y)) + vec2<f32>(x_2636.z, x_2636.w));
            let x_2640 : f32 = u_xlat14.y;
            u_xlat15.w = x_2640;
            let x_2642 : vec4<f32> = u_xlat15;
            let x_2643 : vec2<f32> = vec2<f32>(x_2642.y, x_2642.z);
            let x_2644 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2644.x, x_2643.x, x_2644.z, x_2643.y);
            let x_2646 : vec4<f32> = u_xlat12;
            let x_2649 : vec4<f32> = x_123.x_AdditionalShadowmapSize;
            let x_2652 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2646.x, x_2646.y, x_2646.x, x_2646.y) * vec4<f32>(x_2649.x, x_2649.y, x_2649.x, x_2649.y)) + vec4<f32>(x_2652.x, x_2652.y, x_2652.z, x_2652.y));
            let x_2655 : vec4<f32> = u_xlat12;
            let x_2658 : vec4<f32> = x_123.x_AdditionalShadowmapSize;
            let x_2661 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2655.x, x_2655.y, x_2655.x, x_2655.y) * vec4<f32>(x_2658.x, x_2658.y, x_2658.x, x_2658.y)) + vec4<f32>(x_2661.w, x_2661.y, x_2661.w, x_2661.z));
            let x_2664 : vec4<f32> = u_xlat12;
            let x_2667 : vec4<f32> = x_123.x_AdditionalShadowmapSize;
            let x_2670 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2664.x, x_2664.y, x_2664.x, x_2664.y) * vec4<f32>(x_2667.x, x_2667.y, x_2667.x, x_2667.y)) + vec4<f32>(x_2670.x, x_2670.w, x_2670.z, x_2670.w));
            let x_2673 : vec4<f32> = u_xlat13;
            let x_2675 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2673.x, x_2673.x, x_2673.x, x_2673.y) * vec4<f32>(x_2675.z, x_2675.w, x_2675.y, x_2675.z));
            let x_2678 : vec4<f32> = u_xlat13;
            let x_2680 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2678.y, x_2678.y, x_2678.z, x_2678.z) * x_2680);
            let x_2683 : f32 = u_xlat13.z;
            let x_2685 : f32 = u_xlat18.y;
            u_xlat87 = (x_2683 * x_2685);
            let x_2688 : vec4<f32> = u_xlat16;
            let x_2689 : vec2<f32> = vec2<f32>(x_2688.x, x_2688.y);
            let x_2691 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2689.x, x_2689.y, x_2691);
            let x_2698 : vec3<f32> = txVec34;
            let x_2700 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2698.xy, x_2698.z);
            u_xlat88 = x_2700;
            let x_2702 : vec4<f32> = u_xlat16;
            let x_2703 : vec2<f32> = vec2<f32>(x_2702.z, x_2702.w);
            let x_2705 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2703.x, x_2703.y, x_2705);
            let x_2713 : vec3<f32> = txVec35;
            let x_2715 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2713.xy, x_2713.z);
            u_xlat89 = x_2715;
            let x_2716 : f32 = u_xlat89;
            let x_2718 : f32 = u_xlat19.y;
            u_xlat89 = (x_2716 * x_2718);
            let x_2721 : f32 = u_xlat19.x;
            let x_2722 : f32 = u_xlat88;
            let x_2724 : f32 = u_xlat89;
            u_xlat88 = ((x_2721 * x_2722) + x_2724);
            let x_2727 : vec2<f32> = u_xlat64;
            let x_2729 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_2727.x, x_2727.y, x_2729);
            let x_2736 : vec3<f32> = txVec36;
            let x_2738 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2736.xy, x_2736.z);
            u_xlat89 = x_2738;
            let x_2740 : f32 = u_xlat19.z;
            let x_2741 : f32 = u_xlat89;
            let x_2743 : f32 = u_xlat88;
            u_xlat88 = ((x_2740 * x_2741) + x_2743);
            let x_2746 : vec4<f32> = u_xlat15;
            let x_2747 : vec2<f32> = vec2<f32>(x_2746.x, x_2746.y);
            let x_2749 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_2747.x, x_2747.y, x_2749);
            let x_2756 : vec3<f32> = txVec37;
            let x_2758 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2756.xy, x_2756.z);
            u_xlat89 = x_2758;
            let x_2760 : f32 = u_xlat19.w;
            let x_2761 : f32 = u_xlat89;
            let x_2763 : f32 = u_xlat88;
            u_xlat88 = ((x_2760 * x_2761) + x_2763);
            let x_2766 : vec4<f32> = u_xlat17;
            let x_2767 : vec2<f32> = vec2<f32>(x_2766.x, x_2766.y);
            let x_2769 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_2767.x, x_2767.y, x_2769);
            let x_2776 : vec3<f32> = txVec38;
            let x_2778 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2776.xy, x_2776.z);
            u_xlat89 = x_2778;
            let x_2780 : f32 = u_xlat20.x;
            let x_2781 : f32 = u_xlat89;
            let x_2783 : f32 = u_xlat88;
            u_xlat88 = ((x_2780 * x_2781) + x_2783);
            let x_2786 : vec4<f32> = u_xlat17;
            let x_2787 : vec2<f32> = vec2<f32>(x_2786.z, x_2786.w);
            let x_2789 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_2787.x, x_2787.y, x_2789);
            let x_2796 : vec3<f32> = txVec39;
            let x_2798 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2796.xy, x_2796.z);
            u_xlat89 = x_2798;
            let x_2800 : f32 = u_xlat20.y;
            let x_2801 : f32 = u_xlat89;
            let x_2803 : f32 = u_xlat88;
            u_xlat88 = ((x_2800 * x_2801) + x_2803);
            let x_2806 : vec4<f32> = u_xlat15;
            let x_2807 : vec2<f32> = vec2<f32>(x_2806.z, x_2806.w);
            let x_2809 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_2807.x, x_2807.y, x_2809);
            let x_2816 : vec3<f32> = txVec40;
            let x_2818 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2816.xy, x_2816.z);
            u_xlat89 = x_2818;
            let x_2820 : f32 = u_xlat20.z;
            let x_2821 : f32 = u_xlat89;
            let x_2823 : f32 = u_xlat88;
            u_xlat88 = ((x_2820 * x_2821) + x_2823);
            let x_2826 : vec4<f32> = u_xlat14;
            let x_2827 : vec2<f32> = vec2<f32>(x_2826.x, x_2826.y);
            let x_2829 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_2827.x, x_2827.y, x_2829);
            let x_2836 : vec3<f32> = txVec41;
            let x_2838 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2836.xy, x_2836.z);
            u_xlat89 = x_2838;
            let x_2840 : f32 = u_xlat20.w;
            let x_2841 : f32 = u_xlat89;
            let x_2843 : f32 = u_xlat88;
            u_xlat88 = ((x_2840 * x_2841) + x_2843);
            let x_2846 : vec4<f32> = u_xlat14;
            let x_2847 : vec2<f32> = vec2<f32>(x_2846.z, x_2846.w);
            let x_2849 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_2847.x, x_2847.y, x_2849);
            let x_2856 : vec3<f32> = txVec42;
            let x_2858 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2856.xy, x_2856.z);
            u_xlat89 = x_2858;
            let x_2859 : f32 = u_xlat87;
            let x_2860 : f32 = u_xlat89;
            let x_2862 : f32 = u_xlat88;
            u_xlat61.x = ((x_2859 * x_2860) + x_2862);
          } else {
            let x_2866 : vec4<f32> = u_xlat11;
            let x_2869 : vec4<f32> = x_123.x_AdditionalShadowmapSize;
            let x_2872 : vec2<f32> = ((vec2<f32>(x_2866.x, x_2866.y) * vec2<f32>(x_2869.z, x_2869.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2873 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2872.x, x_2872.y, x_2873.z, x_2873.w);
            let x_2875 : vec4<f32> = u_xlat12;
            let x_2877 : vec2<f32> = floor(vec2<f32>(x_2875.x, x_2875.y));
            let x_2878 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2877.x, x_2877.y, x_2878.z, x_2878.w);
            let x_2880 : vec4<f32> = u_xlat11;
            let x_2883 : vec4<f32> = x_123.x_AdditionalShadowmapSize;
            let x_2886 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2880.x, x_2880.y) * vec2<f32>(x_2883.z, x_2883.w)) + -(vec2<f32>(x_2886.x, x_2886.y)));
            let x_2890 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2890.x, x_2890.x, x_2890.y, x_2890.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2893 : vec4<f32> = u_xlat13;
            let x_2895 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2893.x, x_2893.x, x_2893.z, x_2893.z) * vec4<f32>(x_2895.x, x_2895.x, x_2895.z, x_2895.z));
            let x_2898 : vec4<f32> = u_xlat14;
            let x_2900 : vec2<f32> = (vec2<f32>(x_2898.y, x_2898.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2901 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2901.x, x_2900.x, x_2901.z, x_2900.y);
            let x_2903 : vec4<f32> = u_xlat14;
            let x_2906 : vec2<f32> = u_xlat64;
            let x_2908 : vec2<f32> = ((vec2<f32>(x_2903.x, x_2903.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2906));
            let x_2909 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2908.x, x_2909.y, x_2908.y, x_2909.w);
            let x_2911 : vec2<f32> = u_xlat64;
            let x_2913 : vec2<f32> = (-(x_2911) + vec2<f32>(1.0f, 1.0f));
            let x_2914 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2913.x, x_2913.y, x_2914.z, x_2914.w);
            let x_2916 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_2916, vec2<f32>(0.0f, 0.0f));
            let x_2918 : vec2<f32> = u_xlat66;
            let x_2920 : vec2<f32> = u_xlat66;
            let x_2922 : vec4<f32> = u_xlat14;
            let x_2924 : vec2<f32> = ((-(x_2918) * x_2920) + vec2<f32>(x_2922.x, x_2922.y));
            let x_2925 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2924.x, x_2924.y, x_2925.z, x_2925.w);
            let x_2927 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_2927, vec2<f32>(0.0f, 0.0f));
            let x_2930 : vec2<f32> = u_xlat66;
            let x_2932 : vec2<f32> = u_xlat66;
            let x_2934 : vec4<f32> = u_xlat13;
            let x_2936 : vec2<f32> = ((-(x_2930) * x_2932) + vec2<f32>(x_2934.y, x_2934.w));
            let x_2937 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_2936.x, x_2937.y, x_2936.y);
            let x_2939 : vec4<f32> = u_xlat14;
            let x_2942 : vec2<f32> = (vec2<f32>(x_2939.x, x_2939.y) + vec2<f32>(2.0f, 2.0f));
            let x_2943 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2942.x, x_2942.y, x_2943.z, x_2943.w);
            let x_2945 : vec3<f32> = u_xlat39;
            let x_2947 : vec2<f32> = (vec2<f32>(x_2945.x, x_2945.z) + vec2<f32>(2.0f, 2.0f));
            let x_2948 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2948.x, x_2947.x, x_2948.z, x_2947.y);
            let x_2951 : f32 = u_xlat13.y;
            u_xlat16.z = (x_2951 * 0.08163200318813323975f);
            let x_2954 : vec4<f32> = u_xlat13;
            let x_2957 : vec3<f32> = (vec3<f32>(x_2954.z, x_2954.x, x_2954.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2958 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2957.x, x_2957.y, x_2957.z, x_2958.w);
            let x_2960 : vec4<f32> = u_xlat14;
            let x_2962 : vec2<f32> = (vec2<f32>(x_2960.x, x_2960.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2963 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2962.x, x_2962.y, x_2963.z, x_2963.w);
            let x_2966 : f32 = u_xlat17.y;
            u_xlat16.x = x_2966;
            let x_2968 : vec2<f32> = u_xlat64;
            let x_2971 : vec2<f32> = ((vec2<f32>(x_2968.x, x_2968.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2972 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2972.x, x_2971.x, x_2972.z, x_2971.y);
            let x_2974 : vec2<f32> = u_xlat64;
            let x_2977 : vec2<f32> = ((vec2<f32>(x_2974.x, x_2974.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2978 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2977.x, x_2978.y, x_2977.y, x_2978.w);
            let x_2981 : f32 = u_xlat13.x;
            u_xlat14.y = x_2981;
            let x_2984 : f32 = u_xlat15.y;
            u_xlat14.w = x_2984;
            let x_2986 : vec4<f32> = u_xlat14;
            let x_2987 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_2986 + x_2987);
            let x_2989 : vec2<f32> = u_xlat64;
            let x_2992 : vec2<f32> = ((vec2<f32>(x_2989.y, x_2989.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2993 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2993.x, x_2992.x, x_2993.z, x_2992.y);
            let x_2995 : vec2<f32> = u_xlat64;
            let x_2998 : vec2<f32> = ((vec2<f32>(x_2995.y, x_2995.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2999 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2998.x, x_2999.y, x_2998.y, x_2999.w);
            let x_3002 : f32 = u_xlat13.y;
            u_xlat15.y = x_3002;
            let x_3004 : vec4<f32> = u_xlat15;
            let x_3005 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3004 + x_3005);
            let x_3007 : vec4<f32> = u_xlat14;
            let x_3008 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3007 / x_3008);
            let x_3010 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3010 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3012 : vec4<f32> = u_xlat15;
            let x_3013 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3012 / x_3013);
            let x_3015 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3015 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3017 : vec4<f32> = u_xlat14;
            let x_3020 : vec4<f32> = x_123.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3017.w, x_3017.x, x_3017.y, x_3017.z) * vec4<f32>(x_3020.x, x_3020.x, x_3020.x, x_3020.x));
            let x_3023 : vec4<f32> = u_xlat15;
            let x_3026 : vec4<f32> = x_123.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3023.x, x_3023.w, x_3023.y, x_3023.z) * vec4<f32>(x_3026.y, x_3026.y, x_3026.y, x_3026.y));
            let x_3029 : vec4<f32> = u_xlat14;
            let x_3030 : vec3<f32> = vec3<f32>(x_3029.y, x_3029.z, x_3029.w);
            let x_3031 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3030.x, x_3031.y, x_3030.y, x_3030.z);
            let x_3034 : f32 = u_xlat15.x;
            u_xlat17.y = x_3034;
            let x_3036 : vec4<f32> = u_xlat12;
            let x_3039 : vec4<f32> = x_123.x_AdditionalShadowmapSize;
            let x_3042 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3036.x, x_3036.y, x_3036.x, x_3036.y) * vec4<f32>(x_3039.x, x_3039.y, x_3039.x, x_3039.y)) + vec4<f32>(x_3042.x, x_3042.y, x_3042.z, x_3042.y));
            let x_3045 : vec4<f32> = u_xlat12;
            let x_3048 : vec4<f32> = x_123.x_AdditionalShadowmapSize;
            let x_3051 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3045.x, x_3045.y) * vec2<f32>(x_3048.x, x_3048.y)) + vec2<f32>(x_3051.w, x_3051.y));
            let x_3055 : f32 = u_xlat17.y;
            u_xlat14.y = x_3055;
            let x_3058 : f32 = u_xlat15.z;
            u_xlat17.y = x_3058;
            let x_3060 : vec4<f32> = u_xlat12;
            let x_3063 : vec4<f32> = x_123.x_AdditionalShadowmapSize;
            let x_3066 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3060.x, x_3060.y, x_3060.x, x_3060.y) * vec4<f32>(x_3063.x, x_3063.y, x_3063.x, x_3063.y)) + vec4<f32>(x_3066.x, x_3066.y, x_3066.z, x_3066.y));
            let x_3069 : vec4<f32> = u_xlat12;
            let x_3072 : vec4<f32> = x_123.x_AdditionalShadowmapSize;
            let x_3075 : vec4<f32> = u_xlat17;
            let x_3077 : vec2<f32> = ((vec2<f32>(x_3069.x, x_3069.y) * vec2<f32>(x_3072.x, x_3072.y)) + vec2<f32>(x_3075.w, x_3075.y));
            let x_3078 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3077.x, x_3077.y, x_3078.z, x_3078.w);
            let x_3081 : f32 = u_xlat17.y;
            u_xlat14.z = x_3081;
            let x_3084 : vec4<f32> = u_xlat12;
            let x_3087 : vec4<f32> = x_123.x_AdditionalShadowmapSize;
            let x_3090 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3084.x, x_3084.y, x_3084.x, x_3084.y) * vec4<f32>(x_3087.x, x_3087.y, x_3087.x, x_3087.y)) + vec4<f32>(x_3090.x, x_3090.y, x_3090.x, x_3090.z));
            let x_3094 : f32 = u_xlat15.w;
            u_xlat17.y = x_3094;
            let x_3097 : vec4<f32> = u_xlat12;
            let x_3100 : vec4<f32> = x_123.x_AdditionalShadowmapSize;
            let x_3103 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3097.x, x_3097.y, x_3097.x, x_3097.y) * vec4<f32>(x_3100.x, x_3100.y, x_3100.x, x_3100.y)) + vec4<f32>(x_3103.x, x_3103.y, x_3103.z, x_3103.y));
            let x_3107 : vec4<f32> = u_xlat12;
            let x_3110 : vec4<f32> = x_123.x_AdditionalShadowmapSize;
            let x_3113 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3107.x, x_3107.y) * vec2<f32>(x_3110.x, x_3110.y)) + vec2<f32>(x_3113.w, x_3113.y));
            let x_3117 : f32 = u_xlat17.y;
            u_xlat14.w = x_3117;
            let x_3120 : vec4<f32> = u_xlat12;
            let x_3123 : vec4<f32> = x_123.x_AdditionalShadowmapSize;
            let x_3126 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3120.x, x_3120.y) * vec2<f32>(x_3123.x, x_3123.y)) + vec2<f32>(x_3126.x, x_3126.w));
            let x_3129 : vec4<f32> = u_xlat17;
            let x_3130 : vec3<f32> = vec3<f32>(x_3129.x, x_3129.z, x_3129.w);
            let x_3131 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3130.x, x_3131.y, x_3130.y, x_3130.z);
            let x_3133 : vec4<f32> = u_xlat12;
            let x_3136 : vec4<f32> = x_123.x_AdditionalShadowmapSize;
            let x_3139 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3133.x, x_3133.y, x_3133.x, x_3133.y) * vec4<f32>(x_3136.x, x_3136.y, x_3136.x, x_3136.y)) + vec4<f32>(x_3139.x, x_3139.y, x_3139.z, x_3139.y));
            let x_3143 : vec4<f32> = u_xlat12;
            let x_3146 : vec4<f32> = x_123.x_AdditionalShadowmapSize;
            let x_3149 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3143.x, x_3143.y) * vec2<f32>(x_3146.x, x_3146.y)) + vec2<f32>(x_3149.w, x_3149.y));
            let x_3153 : f32 = u_xlat14.x;
            u_xlat15.x = x_3153;
            let x_3155 : vec4<f32> = u_xlat12;
            let x_3158 : vec4<f32> = x_123.x_AdditionalShadowmapSize;
            let x_3161 : vec4<f32> = u_xlat15;
            let x_3163 : vec2<f32> = ((vec2<f32>(x_3155.x, x_3155.y) * vec2<f32>(x_3158.x, x_3158.y)) + vec2<f32>(x_3161.x, x_3161.y));
            let x_3164 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3163.x, x_3163.y, x_3164.z, x_3164.w);
            let x_3167 : vec4<f32> = u_xlat13;
            let x_3169 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3167.x, x_3167.x, x_3167.x, x_3167.x) * x_3169);
            let x_3172 : vec4<f32> = u_xlat13;
            let x_3174 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3172.y, x_3172.y, x_3172.y, x_3172.y) * x_3174);
            let x_3177 : vec4<f32> = u_xlat13;
            let x_3179 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3177.z, x_3177.z, x_3177.z, x_3177.z) * x_3179);
            let x_3181 : vec4<f32> = u_xlat13;
            let x_3183 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3181.w, x_3181.w, x_3181.w, x_3181.w) * x_3183);
            let x_3186 : vec4<f32> = u_xlat18;
            let x_3187 : vec2<f32> = vec2<f32>(x_3186.x, x_3186.y);
            let x_3189 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3187.x, x_3187.y, x_3189);
            let x_3196 : vec3<f32> = txVec43;
            let x_3198 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3196.xy, x_3196.z);
            u_xlat87 = x_3198;
            let x_3200 : vec4<f32> = u_xlat18;
            let x_3201 : vec2<f32> = vec2<f32>(x_3200.z, x_3200.w);
            let x_3203 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3201.x, x_3201.y, x_3203);
            let x_3210 : vec3<f32> = txVec44;
            let x_3212 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3210.xy, x_3210.z);
            u_xlat88 = x_3212;
            let x_3213 : f32 = u_xlat88;
            let x_3215 : f32 = u_xlat23.y;
            u_xlat88 = (x_3213 * x_3215);
            let x_3218 : f32 = u_xlat23.x;
            let x_3219 : f32 = u_xlat87;
            let x_3221 : f32 = u_xlat88;
            u_xlat87 = ((x_3218 * x_3219) + x_3221);
            let x_3224 : vec2<f32> = u_xlat64;
            let x_3226 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3224.x, x_3224.y, x_3226);
            let x_3233 : vec3<f32> = txVec45;
            let x_3235 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3233.xy, x_3233.z);
            u_xlat88 = x_3235;
            let x_3237 : f32 = u_xlat23.z;
            let x_3238 : f32 = u_xlat88;
            let x_3240 : f32 = u_xlat87;
            u_xlat87 = ((x_3237 * x_3238) + x_3240);
            let x_3243 : vec4<f32> = u_xlat21;
            let x_3244 : vec2<f32> = vec2<f32>(x_3243.x, x_3243.y);
            let x_3246 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3244.x, x_3244.y, x_3246);
            let x_3253 : vec3<f32> = txVec46;
            let x_3255 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3253.xy, x_3253.z);
            u_xlat88 = x_3255;
            let x_3257 : f32 = u_xlat23.w;
            let x_3258 : f32 = u_xlat88;
            let x_3260 : f32 = u_xlat87;
            u_xlat87 = ((x_3257 * x_3258) + x_3260);
            let x_3263 : vec4<f32> = u_xlat19;
            let x_3264 : vec2<f32> = vec2<f32>(x_3263.x, x_3263.y);
            let x_3266 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3264.x, x_3264.y, x_3266);
            let x_3273 : vec3<f32> = txVec47;
            let x_3275 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3273.xy, x_3273.z);
            u_xlat88 = x_3275;
            let x_3277 : f32 = u_xlat24.x;
            let x_3278 : f32 = u_xlat88;
            let x_3280 : f32 = u_xlat87;
            u_xlat87 = ((x_3277 * x_3278) + x_3280);
            let x_3283 : vec4<f32> = u_xlat19;
            let x_3284 : vec2<f32> = vec2<f32>(x_3283.z, x_3283.w);
            let x_3286 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3284.x, x_3284.y, x_3286);
            let x_3293 : vec3<f32> = txVec48;
            let x_3295 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3293.xy, x_3293.z);
            u_xlat88 = x_3295;
            let x_3297 : f32 = u_xlat24.y;
            let x_3298 : f32 = u_xlat88;
            let x_3300 : f32 = u_xlat87;
            u_xlat87 = ((x_3297 * x_3298) + x_3300);
            let x_3303 : vec4<f32> = u_xlat20;
            let x_3304 : vec2<f32> = vec2<f32>(x_3303.x, x_3303.y);
            let x_3306 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3304.x, x_3304.y, x_3306);
            let x_3313 : vec3<f32> = txVec49;
            let x_3315 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3313.xy, x_3313.z);
            u_xlat88 = x_3315;
            let x_3317 : f32 = u_xlat24.z;
            let x_3318 : f32 = u_xlat88;
            let x_3320 : f32 = u_xlat87;
            u_xlat87 = ((x_3317 * x_3318) + x_3320);
            let x_3323 : vec4<f32> = u_xlat21;
            let x_3324 : vec2<f32> = vec2<f32>(x_3323.z, x_3323.w);
            let x_3326 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3324.x, x_3324.y, x_3326);
            let x_3333 : vec3<f32> = txVec50;
            let x_3335 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3333.xy, x_3333.z);
            u_xlat88 = x_3335;
            let x_3337 : f32 = u_xlat24.w;
            let x_3338 : f32 = u_xlat88;
            let x_3340 : f32 = u_xlat87;
            u_xlat87 = ((x_3337 * x_3338) + x_3340);
            let x_3343 : vec4<f32> = u_xlat22;
            let x_3344 : vec2<f32> = vec2<f32>(x_3343.x, x_3343.y);
            let x_3346 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3344.x, x_3344.y, x_3346);
            let x_3353 : vec3<f32> = txVec51;
            let x_3355 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3353.xy, x_3353.z);
            u_xlat88 = x_3355;
            let x_3357 : f32 = u_xlat25.x;
            let x_3358 : f32 = u_xlat88;
            let x_3360 : f32 = u_xlat87;
            u_xlat87 = ((x_3357 * x_3358) + x_3360);
            let x_3363 : vec4<f32> = u_xlat22;
            let x_3364 : vec2<f32> = vec2<f32>(x_3363.z, x_3363.w);
            let x_3366 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3364.x, x_3364.y, x_3366);
            let x_3373 : vec3<f32> = txVec52;
            let x_3375 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3373.xy, x_3373.z);
            u_xlat88 = x_3375;
            let x_3377 : f32 = u_xlat25.y;
            let x_3378 : f32 = u_xlat88;
            let x_3380 : f32 = u_xlat87;
            u_xlat87 = ((x_3377 * x_3378) + x_3380);
            let x_3383 : vec2<f32> = u_xlat40;
            let x_3385 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3383.x, x_3383.y, x_3385);
            let x_3392 : vec3<f32> = txVec53;
            let x_3394 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3392.xy, x_3392.z);
            u_xlat88 = x_3394;
            let x_3396 : f32 = u_xlat25.z;
            let x_3397 : f32 = u_xlat88;
            let x_3399 : f32 = u_xlat87;
            u_xlat87 = ((x_3396 * x_3397) + x_3399);
            let x_3402 : vec2<f32> = u_xlat72;
            let x_3404 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3402.x, x_3402.y, x_3404);
            let x_3411 : vec3<f32> = txVec54;
            let x_3413 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3411.xy, x_3411.z);
            u_xlat88 = x_3413;
            let x_3415 : f32 = u_xlat25.w;
            let x_3416 : f32 = u_xlat88;
            let x_3418 : f32 = u_xlat87;
            u_xlat87 = ((x_3415 * x_3416) + x_3418);
            let x_3421 : vec4<f32> = u_xlat17;
            let x_3422 : vec2<f32> = vec2<f32>(x_3421.x, x_3421.y);
            let x_3424 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3422.x, x_3422.y, x_3424);
            let x_3431 : vec3<f32> = txVec55;
            let x_3433 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3431.xy, x_3431.z);
            u_xlat88 = x_3433;
            let x_3435 : f32 = u_xlat13.x;
            let x_3436 : f32 = u_xlat88;
            let x_3438 : f32 = u_xlat87;
            u_xlat87 = ((x_3435 * x_3436) + x_3438);
            let x_3441 : vec4<f32> = u_xlat17;
            let x_3442 : vec2<f32> = vec2<f32>(x_3441.z, x_3441.w);
            let x_3444 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3442.x, x_3442.y, x_3444);
            let x_3451 : vec3<f32> = txVec56;
            let x_3453 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3451.xy, x_3451.z);
            u_xlat88 = x_3453;
            let x_3455 : f32 = u_xlat13.y;
            let x_3456 : f32 = u_xlat88;
            let x_3458 : f32 = u_xlat87;
            u_xlat87 = ((x_3455 * x_3456) + x_3458);
            let x_3461 : vec2<f32> = u_xlat67;
            let x_3463 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3461.x, x_3461.y, x_3463);
            let x_3470 : vec3<f32> = txVec57;
            let x_3472 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3470.xy, x_3470.z);
            u_xlat88 = x_3472;
            let x_3474 : f32 = u_xlat13.z;
            let x_3475 : f32 = u_xlat88;
            let x_3477 : f32 = u_xlat87;
            u_xlat87 = ((x_3474 * x_3475) + x_3477);
            let x_3480 : vec4<f32> = u_xlat12;
            let x_3481 : vec2<f32> = vec2<f32>(x_3480.x, x_3480.y);
            let x_3483 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3481.x, x_3481.y, x_3483);
            let x_3490 : vec3<f32> = txVec58;
            let x_3492 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3490.xy, x_3490.z);
            u_xlat88 = x_3492;
            let x_3494 : f32 = u_xlat13.w;
            let x_3495 : f32 = u_xlat88;
            let x_3497 : f32 = u_xlat87;
            u_xlat61.x = ((x_3494 * x_3495) + x_3497);
          }
        }
      } else {
        let x_3502 : vec4<f32> = u_xlat11;
        let x_3503 : vec2<f32> = vec2<f32>(x_3502.x, x_3502.y);
        let x_3505 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3503.x, x_3503.y, x_3505);
        let x_3512 : vec3<f32> = txVec59;
        let x_3514 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3512.xy, x_3512.z);
        u_xlat61.x = x_3514;
      }
      let x_3516 : i32 = u_xlati8;
      let x_3518 : f32 = x_123.x_AdditionalShadowParams[x_3516].x;
      u_xlat87 = (1.0f + -(x_3518));
      let x_3522 : f32 = u_xlat61.x;
      let x_3523 : i32 = u_xlati8;
      let x_3525 : f32 = x_123.x_AdditionalShadowParams[x_3523].x;
      let x_3527 : f32 = u_xlat87;
      u_xlat61.x = ((x_3522 * x_3525) + x_3527);
      let x_3531 : f32 = u_xlat11.z;
      u_xlatb87 = (0.0f >= x_3531);
      let x_3535 : f32 = u_xlat11.z;
      u_xlatb88 = (x_3535 >= 1.0f);
      let x_3537 : bool = u_xlatb87;
      let x_3538 : bool = u_xlatb88;
      u_xlatb87 = (x_3537 | x_3538);
      let x_3540 : bool = u_xlatb87;
      if (x_3540) {
        x_3541 = 1.0f;
      } else {
        let x_3546 : f32 = u_xlat61.x;
        x_3541 = x_3546;
      }
      let x_3547 : f32 = x_3541;
      u_xlat61.x = x_3547;
    } else {
      u_xlat61.x = 1.0f;
    }
    let x_3552 : f32 = u_xlat61.x;
    u_xlat87 = (-(x_3552) + 1.0f);
    let x_3555 : f32 = u_xlat81;
    let x_3556 : f32 = u_xlat87;
    let x_3559 : f32 = u_xlat61.x;
    u_xlat61.x = ((x_3555 * x_3556) + x_3559);
    let x_3563 : f32 = u_xlat61.x;
    let x_3565 : f32 = u_xlat9.x;
    u_xlat9.x = (x_3563 * x_3565);
    let x_3568 : vec3<f32> = u_xlat3;
    let x_3569 : vec4<f32> = u_xlat10;
    u_xlat61.x = dot(x_3568, vec3<f32>(x_3569.x, x_3569.y, x_3569.z));
    let x_3574 : f32 = u_xlat61.x;
    u_xlat61.x = clamp(x_3574, 0.0f, 1.0f);
    let x_3578 : f32 = u_xlat61.x;
    let x_3580 : f32 = u_xlat9.x;
    u_xlat9.x = (x_3578 * x_3580);
    let x_3583 : vec4<f32> = u_xlat9;
    let x_3585 : i32 = u_xlati8;
    let x_3587 : vec4<f32> = x_2098.x_AdditionalLightsColor[x_3585];
    let x_3589 : vec3<f32> = (vec3<f32>(x_3583.x, x_3583.x, x_3583.x) * vec3<f32>(x_3587.x, x_3587.y, x_3587.z));
    let x_3590 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3589.x, x_3590.y, x_3589.y, x_3589.z);
    let x_3592 : vec3<f32> = u_xlat34;
    let x_3593 : f32 = u_xlat35;
    let x_3596 : vec3<f32> = u_xlat2;
    let x_3597 : vec3<f32> = ((x_3592 * vec3<f32>(x_3593, x_3593, x_3593)) + x_3596);
    let x_3598 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3597.x, x_3597.y, x_3597.z, x_3598.w);
    let x_3600 : vec4<f32> = u_xlat8;
    let x_3602 : vec4<f32> = u_xlat8;
    u_xlat86 = dot(vec3<f32>(x_3600.x, x_3600.y, x_3600.z), vec3<f32>(x_3602.x, x_3602.y, x_3602.z));
    let x_3605 : f32 = u_xlat86;
    u_xlat86 = max(x_3605, 1.17549435e-38f);
    let x_3607 : f32 = u_xlat86;
    u_xlat86 = inverseSqrt(x_3607);
    let x_3609 : f32 = u_xlat86;
    let x_3611 : vec4<f32> = u_xlat8;
    let x_3613 : vec3<f32> = (vec3<f32>(x_3609, x_3609, x_3609) * vec3<f32>(x_3611.x, x_3611.y, x_3611.z));
    let x_3614 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3613.x, x_3613.y, x_3613.z, x_3614.w);
    let x_3616 : vec3<f32> = u_xlat3;
    let x_3617 : vec4<f32> = u_xlat8;
    u_xlat8.w = dot(x_3616, vec3<f32>(x_3617.x, x_3617.y, x_3617.z));
    let x_3622 : f32 = u_xlat8.w;
    u_xlat8.w = clamp(x_3622, 0.0f, 1.0f);
    let x_3625 : vec4<f32> = u_xlat10;
    let x_3627 : vec4<f32> = u_xlat8;
    u_xlat8.x = dot(vec3<f32>(x_3625.x, x_3625.y, x_3625.z), vec3<f32>(x_3627.x, x_3627.y, x_3627.z));
    let x_3632 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_3632, 0.0f, 1.0f);
    let x_3635 : vec4<f32> = u_xlat8;
    let x_3637 : vec4<f32> = u_xlat8;
    let x_3639 : vec2<f32> = (vec2<f32>(x_3635.x, x_3635.w) * vec2<f32>(x_3637.x, x_3637.w));
    let x_3640 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3639.x, x_3639.y, x_3640.z, x_3640.w);
    let x_3643 : f32 = u_xlat8.y;
    let x_3645 : f32 = u_xlat7.x;
    u_xlat34.x = ((x_3643 * x_3645) + 1.00001001358032226562f);
    let x_3650 : f32 = u_xlat34.x;
    let x_3652 : f32 = u_xlat34.x;
    u_xlat34.x = (x_3650 * x_3652);
    let x_3656 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_3656, 0.10000000149011611938f);
    let x_3660 : f32 = u_xlat8.x;
    let x_3662 : f32 = u_xlat34.x;
    u_xlat8.x = (x_3660 * x_3662);
    let x_3666 : f32 = u_xlat6.x;
    let x_3668 : f32 = u_xlat8.x;
    u_xlat8.x = (x_3666 * x_3668);
    let x_3671 : f32 = u_xlat83;
    let x_3673 : f32 = u_xlat8.x;
    u_xlat8.x = (x_3671 / x_3673);
    let x_3676 : vec4<f32> = u_xlat0;
    let x_3678 : vec4<f32> = u_xlat8;
    let x_3681 : vec3<f32> = u_xlat27;
    let x_3682 : vec3<f32> = ((vec3<f32>(x_3676.x, x_3676.y, x_3676.z) * vec3<f32>(x_3678.x, x_3678.x, x_3678.x)) + x_3681);
    let x_3683 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3682.x, x_3682.y, x_3682.z, x_3683.w);
    let x_3685 : vec4<f32> = u_xlat8;
    let x_3687 : vec4<f32> = u_xlat9;
    let x_3690 : vec3<f32> = u_xlat33;
    u_xlat33 = ((vec3<f32>(x_3685.x, x_3685.y, x_3685.z) * vec3<f32>(x_3687.x, x_3687.z, x_3687.w)) + x_3690);

    continuing {
      let x_3692 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3692 + bitcast<u32>(1i));
    }
  }
  let x_3694 : vec3<f32> = u_xlat32;
  let x_3695 : vec4<f32> = u_xlat4;
  let x_3698 : vec4<f32> = u_xlat5;
  let x_3700 : vec3<f32> = ((x_3694 * vec3<f32>(x_3695.x, x_3695.z, x_3695.w)) + vec3<f32>(x_3698.x, x_3698.y, x_3698.z));
  let x_3701 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3700.x, x_3700.y, x_3700.z, x_3701.w);
  let x_3703 : vec3<f32> = u_xlat33;
  let x_3704 : vec4<f32> = u_xlat0;
  let x_3706 : vec3<f32> = (x_3703 + vec3<f32>(x_3704.x, x_3704.y, x_3704.z));
  let x_3707 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3706.x, x_3706.y, x_3706.z, x_3707.w);
  let x_3709 : f32 = u_xlat78;
  let x_3710 : f32 = u_xlat78;
  u_xlat78 = (x_3709 * -(x_3710));
  let x_3713 : f32 = u_xlat78;
  u_xlat78 = exp2(x_3713);
  let x_3715 : vec4<f32> = u_xlat0;
  let x_3718 : vec4<f32> = x_28.unity_FogColor;
  let x_3721 : vec3<f32> = (vec3<f32>(x_3715.x, x_3715.y, x_3715.z) + -(vec3<f32>(x_3718.x, x_3718.y, x_3718.z)));
  let x_3722 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3721.x, x_3721.y, x_3721.z, x_3722.w);
  let x_3726 : f32 = u_xlat78;
  let x_3728 : vec4<f32> = u_xlat0;
  let x_3732 : vec4<f32> = x_28.unity_FogColor;
  let x_3734 : vec3<f32> = ((vec3<f32>(x_3726, x_3726, x_3726) * vec3<f32>(x_3728.x, x_3728.y, x_3728.z)) + vec3<f32>(x_3732.x, x_3732.y, x_3732.z));
  let x_3735 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3734.x, x_3734.y, x_3734.z, x_3735.w);
  let x_3739 : f32 = x_42.x_Surface;
  u_xlatb0 = (x_3739 == 1.0f);
  let x_3741 : bool = u_xlatb0;
  if (x_3741) {
    let x_3746 : f32 = u_xlat1.x;
    x_3742 = x_3746;
  } else {
    x_3742 = 1.0f;
  }
  let x_3748 : f32 = x_3742;
  SV_Target0.w = x_3748;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD8_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


